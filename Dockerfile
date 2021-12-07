FROM ubuntu
ADD lr2.asm .
RUN apt-get clean && apt-get update
RUN apt-get install -qy fasm
RUN fasm lr2.asm
RUN chmod +x lr2