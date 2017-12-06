---
layout: default
title: Instruções de transferência de controle.
permalink: /control-transfer-instructions
---
# Instruções de transferência de controle

The control transfer instructions provide jump, conditional jump, loop, and call and return operations to control
program flow.

| JMP | Jump. |
| JE/JZ | Jump if equal/Jump if zero. |
| JNE/JNZ | Jump if not equal/Jump if not zero. |
| JA/JNBE | Jump if above/Jump if not below or equal. |
| JAE/JNB | Jump if above or equal/Jump if not below. |
| JB/JNAE | Jump if below/Jump if not above or equal. |
| JBE/JNA | Jump if below or equal/Jump if not above. |
| JG/JNLE | Jump if greater/Jump if not less or equal. |
| JGE/JNL | Jump if greater or equal/Jump if not less. |
| JL/JNGE | Jump if less/Jump if not greater or equal. |
| JLE/JNG | Jump if less or equal/Jump if not greater. |
| JC | Jump if carry. |
| JNC | Jump if not carry. |
| JO | Jump if overflow. |
| JNO | Jump if not overflow. |
| JS | Jump if sign (negative). |
| JNS | Jump if not sign (non-negative). |
| JPO/JNP | Jump if parity odd/Jump if not parity. |
| JPE/JP | Jump if parity even/Jump if parity. |
| JCXZ/JECXZ | Jump register CX zero/Jump register ECX zero. |
| LOOP | Loop with ECX counter. |
| LOOPZ/LOOPE | Loop with ECX and zero/Loop with ECX and equal. |
| LOOPNZ/LOOPNE | Loop with ECX and not zero/Loop with ECX and not equal. |
| CALL | Call procedure. |
| RET | Return. |
| IRET | Return from interrupt. |
| INT | Software interrupt. |
| INTO | Interrupt on overflow. |
| BOUND | Detect value out of range. |
| ENTER | High-level procedure entry. |
| LEAVE | High-level procedure exit. |

[Linguagem](/linguagem){:class="btn"}
 
