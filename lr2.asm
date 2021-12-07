format ELF executable 3
entry start

segment readable writeable

array dw 300,-600,900,-1200,1500,-1800,2100,-2400,2700,-3000,3600,-3900
array_size = 12
;

segment readable executable

start:
mov esi, array ; array pointer
mov ecx, array_size ; array size
xor eax, eax ; for words

xor ebx, ebx ; for positive
xor edx, edx ; for negative

main_loop:
lodsw
cmp ax, 0
jg positive
negative:
add dx, ax
jmp lp
positive:
add bx, ax
lp:

loop main_loop

test ebx, 0x02

mov eax, 1
mov ebx, 0
int 0x80
