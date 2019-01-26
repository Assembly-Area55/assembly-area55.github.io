section .text
GLOBAL	CalcSum_
CalcSum_:
; Inicializa o Stack Frame Pointer
	push ebp
	mov ebp,esp	

; Carrega os valores nos argumentos
	mov eax,[ebp+8]		; eax = 'a'
	mov ecx,[ebp+12]	; ecx = 'b'
	mov edx,[ebp+16]	; edx = 'c'

; Calcular a soma
	add eax, ecx		; eax = 'a' + 'b'
	add eax, edx		; eax = 'a' + 'b' + 'c'

; Restaura o Stack Frame Pointer do chamador.
	pop ebp
	ret
