detect_vmware:
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
