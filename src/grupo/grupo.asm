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
    mov edx, len      ; Tamanho da string.
    mov ecx, aborges  ; Conteúdo da mensagem.
    mov ebx, 1        ; 0 = NADA; 1 = STDOUT (Saída); 2 = STDIN (Entrada)
    mov eax, 4        ; Chamada da syscall sys_write
    int 0x80          ; Executa a função.

    mov eax, 1
    int 0x80
