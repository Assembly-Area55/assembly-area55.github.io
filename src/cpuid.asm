section .bss
    vendor_id resd 12

section .text
    global _start

_start:

    nop
    mov eax, 0
    cpuid
    mov [vendor_id], ebx
    mov [vendor_id+4], edx
    mov [vendor_id+8], ecx

    mov edx, 12
    mov ecx, vendor_id
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 1
    mov ecx, 0x0a
    mov ebx, 1
    mov eax, 4
    int 0x80


    mov eax, 1
    mov ebx, 0
    int 0x80
