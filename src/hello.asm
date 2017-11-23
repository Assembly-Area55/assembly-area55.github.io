SECTION .data
  mensagem  db  'Olá, Mundo!', 0xa  ; Mensagem a ser apresentada.

SECTION .text

global _start:

_start:

  mov edx, 12         ; Tamanho da mensagem
  mov ecx, mensagem   ; Mensagem a apresentar
  mov ebx, 1          ; File descriptor (STDOUT)
  mov eax, 4          ; syscall 4 (sys_write)
  int 0x80            ; Chama o kernel

  mov eax, 1          ; Syscall 1 (sys_exit)
  int 0x80            ; Chama o kernel
