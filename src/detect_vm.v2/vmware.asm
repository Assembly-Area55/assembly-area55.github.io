%include "constant.inc"
%include "function.inc"

global detect_vmware:function

detect_vmware:

section .data
msg.detect db 'VMware Detectado', 0x0a
msg.detectlen equ $ - msg.detect

section .text
	pushad

	mov eax, 'VMXh'
	xor ebx, ebx
	mov ecx, 10
	mov edx, 'VX'

	in eax, dx

	cmp ebx, 'VMXh'

	jne notdetect
	jmp final

notdetect:
		mov edx, msg.detectlen
		mov ecx, msg.detect
		call sprint
		call quit

final:

		call quit

		popad
