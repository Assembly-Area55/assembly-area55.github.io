section .text
GLOBAL	CalcSum_
CalcSum_:
	push ebp
	mov ebp,esp	

	mov eax,[ebp+8]
	mov ecx,[ebp+12]
	mov edx,[ebp+16]

	add eax, ecx
	add eax, edx

	pop ebp
	ret
