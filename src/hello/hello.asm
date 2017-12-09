SECTION .data
  mensagem  db  'Olá, Mundo!', 0xa, 0x0d  ; Mensagem a ser apresentada.

SECTION .text

global _start:

_start:

  mov edx, 13         ; Tamanho da mensagem, incluindo os valores cr/lf
  mov ecx, mensagem   ; Mensagem a apresentar
  mov ebx, 1          ; File descriptor (STDOUT)
  mov eax, 4          ; syscall 4 (sys_write)
  int 0x80            ; Chama o kernel

  mov eax, 1          ; Syscall 1 (sys_exit)
  int 0x80            ; Chama o kernel
