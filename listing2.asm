format ELF

section '.text' executable

public _start
_start:
    mov esi, number
    mov ecx, 2
    xor ebx, ebx
    add ebx, esi
    add ebx, ecx
exit:
    mov eax, 1
    int 0x80

section '.data' writeable

number = 1