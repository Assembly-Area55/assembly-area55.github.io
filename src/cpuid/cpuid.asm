section .bss

section .data
    output:     db  "The processor Vendor ID is '"
    .regEBXvalue:    db      "xxxx"
    .regEDXvalue:    db      "xxxx"
    .regECXvalue:    db      "xxxx"
                     db      "'", 10
    .length:         equ     $-output
    nosupport:  db  "CPUID is not supported", 10
    .length:    equ $-nosupport

section .text
    global _start

_start:

    pushfd
    pop eax
    mov ecx,eax
    xor eax,0x200000
    push eax
    popfd
    pushfd
    pop eax
    xor eax,ecx
    shr eax,21
    and eax,1
    push ecx
    popfd
    jz .notSupported

    xor eax,eax
    cpuid
    mov [output.regEBXvalue], ebx
    mov [output.regEDXvalue], edx
    mov [output.regECXvalue], ecx

    mov edx, output.length
    mov ecx, output
    jmp .write

    mov edx, 1
    mov ecx, 0x0a
    mov ebx, 1
    mov eax, 4
    int 0x80

    .notSupported:
    mov edx, nosupport.length
    mov ecx, nosupport
    
    .write:
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1
    mov ebx, 0
    int 0x80
