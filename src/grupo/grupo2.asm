; Compilação:
; nasm -f elf grupo2.asm
;
; ld -m elf_i386 -s -o grupo2 grupo2.o
;

SECTION .data
; Definimos algumas constantes.

sys_write equ 4     ; syscall sys_write
sys_exit equ 1      ; syscall sys_exit
stdout equ 1        ; Grava para stdout (Saída Padrão)


aborges db `\nOla, Senhores!\n`,0xa
len equ $ - aborges

SECTION .text

global _start

; Função usada para substituição do já deprecated int 0x80

_sysenter:
	push edx
	push ecx
	push ebp
	mov ebp, esp
	sysenter

_start:
    mov edx, len
    mov ecx, aborges
    mov ebx, stdout
    mov eax, sys_write
    call _sysenter


    mov eax, sys_exit
    xor ebx, ebx      ; Retorna 0 ao sair
    call _sysenter
