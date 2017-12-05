; Compilação:
; nasm -f elf uppercase.asm
;
; ld -m elf_i386 -s -o uppercase uppercase.o
;
; Uso:
; Crie um arquivo com um texto aleatório, e execute:
; cat arquivo.txt | ./uppercase 

section .bss
        Buff resb 1

section .data

section .text
        global _start

_start:
        nop

leitura:
        mov eax, 3
        mov ebx, 0
        mov ecx, Buff
        mov edx,1
        int 80h

        cmp eax, 0
        je sair

        cmp byte [Buff], 61h
        jb escreve
        cmp byte [Buff], 7ah
        ja escreve

        sub byte [Buff], 20h

escreve:
        mov eax, 4
        mov ebx, 1
        mov ecx, Buff
        mov edx, 1
        int 80h
        jmp leitura

sair:
        mov eax, 1
        mov ebx, 0
        int 80h
