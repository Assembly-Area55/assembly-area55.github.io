detect_vmware:
    pushad

    ; Verifica se a porta de I/O está dentro de um intervalo válido
    mov eax, edx
    cmp eax, 0x1000       ; Exemplo: verifique se edx está dentro de um intervalo seguro
    jl valid_port
    cmp eax, 0xFFFF
    jg valid_port
    mov eax, 0            ; Se estiver fora do intervalo, saia
    jmp vmware_done

valid_port:
    mov eax, 'VMXh'       ; Configura o valor de 'VMXh'
    xor ebx, ebx
    mov ecx, 10
    mov edx, 'VX'         ; Porta de I/O (ajuste conforme necessário)

    ; Tenta acessar a porta de I/O
    in eax, dx

    cmp ebx, 'VMXh'       ; Verifica a resposta
    jne not_vmware
    mov eax, 1            ; VM detectada
    jmp vmware_done

not_vmware:
    mov eax, 0            ; Não é uma VM

vmware_done:
    popad
    ret
