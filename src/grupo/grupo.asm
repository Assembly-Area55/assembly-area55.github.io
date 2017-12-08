; Compilação:
; nasm -f elf grupo.asm
;
; ld -m elf_i386 -s -o grupo grupo.o
;

SECTION .data

aborges db `\nOla, Senhores!\n`,0xa
len equ $ - aborges

SECTION .text

global _start

_start:
    mov edx, len
    mov ecx, aborges
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80
