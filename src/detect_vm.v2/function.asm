%include "constant.inc"

global sprint:function, quit:function, _sysenter:function

sprint:
	push edx
	push ecx
	push ebx
	push eax
	mov ebx, stdout
	mov eax, sys_write
	call _sysenter

	pop edx
	pop ecx
	pop ebx
	pop eax
	ret

quit:
	mov eax, sys_exit
	xor ebx, ebx
	call _sysenter
	ret

_sysenter:
	push edx
	push ecx
	push ebp
	mov ebp, esp
	sysenter
