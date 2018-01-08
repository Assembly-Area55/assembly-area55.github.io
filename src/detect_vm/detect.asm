%include "function.inc"
%include "constant.inc"
%include "vmware.inc"

section .data
  msg db 'Testa se esta rodando em um VM', 0x0a
  msg.len equ $ - msg

  msg.detect db 'VMware Detectado', 0x0a
  msg.detectlen equ $ - msg.detect

section .text
  global _start

_start:
mov edx, msg.len
mov ecx, msg
call sprint

call detect_vmware

call quit
