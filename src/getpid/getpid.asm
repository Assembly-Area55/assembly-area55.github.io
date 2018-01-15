; Compilação:
; nasm -f elf getpid.asm
;
; ld -m elf_i386 -s -o getpid getpid.o
;
; Uso:
;
; Debug	   :
; GDBcmds  : 
;   display/10i $eip
;   display/x $eax
;   display/x $ebx
;   display/x $ecx
;   display/x $edx
;   display/x $edi
;   display/x $esi
;   display/x $ebp
;   display/32xw $esp
;   break main
;   break _start

section .bss

pid: 	resb	11

section .data

msg db 'Saindo...',10,13,0
msglen equ $-msg

section .text
        global _start

_start:
	nop
	mov eax, 20	;syscall sys_getpid retornap valor em eax
	int 0x80


	mov esi,pid+11	; aponta para o final do numero decimal
	mov byte[esi], 0xa ; adiciona '\n'
	mov ebx, 10	; numero hexadecimal é dividido por 10 (0xa)
	mov ecx, 1 	; tamanho do numero decimal + 1 '\n' 
.a:
	inc ecx		; calcula o tamanho de saida
	xor edx, edx	; o armazenamento deve ser 0 ante do inicio da divisão
	div ebx		; divide o numero hexadecimal por 10
	add edx, 0x30	; calcula o codigo ascii do restante
	dec esi		; calcula o proximo digito decimal
	mov [esi], dl	; adiciona digito a string
	cmp eax,0	; ainda há mais digitos para converter?
	jnz .a		; loop se valor de eax for diferente de 0

	mov edx, ecx
	mov ecx, esi
	mov ebx, 1
	mov eax, 4	
	int 0x80	


	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,msglen
	int 0x80


	mov eax, 1
	xor ebx, ebx
	int 0x80

