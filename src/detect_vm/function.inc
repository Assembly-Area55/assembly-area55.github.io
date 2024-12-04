sprint:
	push edx
	push ecx
	push ebx
	push eax

	mov ebx, stdout
	mov eax, sys_write
	int 80h

	pop eax
	pop ebx
	pop ecx
	pop edx
	ret

quit:
segment .text
	mov eax, sys_exit
	xor ebx, ebx
	int 80h
	ret

