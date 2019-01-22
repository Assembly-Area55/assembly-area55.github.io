section .data

filename db "./output.txt", 0
text db "Testando a saida", 0
textlen equ $ - text

section .text

global _start

_start:

    mov eax, 8          ; sys_create
    mov ebx, filename   
    mov ecx, 644q       ; permission octal mode
    int 0x80

    mov ebx, eax
    mov eax, 4          ; sys_write 
    mov ecx, text
    mov edx, textlen
    int 0x80

    mov eax, 1          ; sys_exit
    xor ebx, ebx
    int 0x80

