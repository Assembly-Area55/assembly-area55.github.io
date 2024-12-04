%include "function.inc"
%include "constant.inc"
%include "vmware.inc"

section .data
  msg db 'Testa se esta rodando em uma VM', 0x0a
  msg.len equ $ - msg

  msg.detect db 'VMware Detectado', 0x0a
  msg.detectlen equ $ - msg.detect

  msg.not_detect db 'VMware não detectado', 0x0a
  msg.not_detectlen equ $ - msg.detect

section .text
  global _start

_start:
    mov edx, msg.len
    mov ecx, msg
    call sprint

    call detect_vmware
    cmp eax, 1
    je vmware_detected
    jmp not_vmware_detected

vmware_detected:
  mov edx, msg.detectlen
  mov ecx, msg.detect
  call sprint
  jmp end_program

not_vmware_detected:
  mov edx, msg.not_detectlen
  mov ecx, msg.not_detect
  call sprint
  call quit

end_program:
  call quit