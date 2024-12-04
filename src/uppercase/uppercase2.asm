; Compilação:
; nasm -f elf uppercase2.asm
;
; ld -m elf_i386 -s -o uppercase2 uppercase2.o
;
; Uso:
; Crie um arquivo com um texto aleatório, e execute:
; cat arquivo.txt | ./uppercase2 

section .bss
        Buff resb 1

section .data

section .text
        global _start

_start:
        nop


main_loop:
        call read_char          ; Lê um caracter
        cmp eax, 0              ; Se EOF ( eax == 0 ), sai
        je exit

        call to_uppercase       ; Converte para maiúscula, se necessário.
        call write_char         ; Escreve o caractere
        jmp main_loop           ; Volta pra o loop

exit:
        call exit_program       ; Sai do programa

; Função: read_char
; Lê um caractere da entrada padrão e armazena em 'Buff'.
; Retorna em 'eax' o número de bytes lidos.
read_char:
        mov eax, 3              ; syscall: read
        mov ebx, 0              ; Entrada padrão
        mov ecx, Buff           ; Buffer de destino
        mov edx, 1              ; lê 1 byte
        int 80h
        ret

; Função: to_uppercase
; Converte o caractere em 'Buff' para maiúscula, se for minúscula.
to_uppercase:
        cmp byte [Buff], 61h    ; Se menor que 'a', não altera.
        jb .done
        cmp byte [Buff], 7ah    ; Se maior que 'z', não altera.
        ja .done
        sub byte [Buff], 20h    ; Converte para maiúscula.

.done:
        ret


; Função: write_char
; Escreve o caractere em 'Buff' na saída padrão.
write_char:
        mov eax, 4              ; Syscall: write
        mov ebx, 1              ; Saída padrão.
        mov ecx, Buff           ; Buffer de origem
        mov edx, 1              ; Escreve 1 bit
        int 80h
        ret

exit_program:
        mov eax, 1              ; Syscall: exit
        mov ebx, 0              ; Código de saída (error level).
        int 80h         
        ret
