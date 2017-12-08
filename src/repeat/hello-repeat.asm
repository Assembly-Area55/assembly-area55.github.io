SECTION .data
  mensagem  db  'Olá, Mundo!', 0xa, 0x0d  ; Mensagem a ser apresentada.
  msg.len equ $ - mensagem

SECTION .text

global _start:

_start:

  mov ecx,0

  inicio:
  push ecx            ; Adiciona o valor de ecx (contador) a pilha
  mov edx, msg.len    ; Tamanho da mensagem, incluindo os valores cr/lf
  mov ecx, mensagem   ; Mensagem a apresentar
  mov ebx, 1          ; File descriptor (STDOUT)
  mov eax, 4          ; syscall 4 (sys_write)
  int 0x80            ; Chama o kernel

  pop ecx             ; Restaura valor de ecx da pilha
  inc ecx             ; incrementa o valor de ecx
  cmp ecx,5           ; compara se ecx=5
  jne inicio          

  mov eax, 1          ; Syscall 1 (sys_exit)
  int 0x80            ; Chama o kernel
