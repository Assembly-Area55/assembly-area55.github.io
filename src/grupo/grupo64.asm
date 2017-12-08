; Compilação:
; nasm -f elf64 grupo64.asm
;
; ld -s -o grupo64 grupo64.o
;

SECTION .data
; Definimos algumas constantes.

aborges db `\nOla, Senhores!\n`,0xa
len equ $ - aborges

SECTION .text

global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, aborges
    mov rdx, len
    syscall

		mov rax, 60
		mov rdi, 0
		syscall
