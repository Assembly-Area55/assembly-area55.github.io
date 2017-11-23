SECTION .data
  mensagem  db  'Olá, Mundo!', 0Ah

SECTION .text

global _start:

_start:

  mov edx, 12
  mov ecx, mensagem
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80
