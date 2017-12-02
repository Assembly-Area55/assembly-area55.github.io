---
layout: default
title: Instruções de transferência de Dados.
permalink: /data-transfer-instructions
---
# Instruções de transferência de DADOS

As instruções de transferência de dados movem dados entre a memória e os registradores de propósito geral, e registradores de segmento.
Eles também executam operações específicas como movimentos condicionais, acesso ao stack e conversão de dados.

| MOV | Mover dados entre registros de uso geral; mover dados entre registros de memória e de uso geral ou segmentos; mover immediates para registros de uso geral. |
| CMOVE/CMOVZ | Conditional move if equal/Conditional move if zero. |
| CMOVNE/CMOVNZ | Conditional move if not equal/Conditional move if not zero. |
| CMOVA/CMOVNBE | Conditional move if above/Conditional move if not below or equal. |
| CMOVAE/CMOVNB | Conditional move if above or equal/Conditional move if not below. |
| CMOVB/CMOVNAE | Conditional move if below/Conditional move if not above or equal. |
| CMOVBE/CMOVNA | Conditional move if below or equal/Conditional move if not above. |
| CMOVG/CMOVNLE | Conditional move if greater/Conditional move if not less or equal. |
| CMOVGE/CMOVNL | Conditional move if greater or equal/Conditional move if not less. |
| CMOVL/CMOVNGE | Conditional move if less/Conditional move if not greater or equal. |
| CMOVLE/CMOVNG | Conditional move if less or equal/Conditional move if not greater. |
| CMOVC | Conditional move if carry. |
| CMOVNC | Conditional move if not carry. |
| CMOVO | Conditional move if overflow. |
| CMOVNO |  Conditional move if not overflow. |
| CMOVS | Conditional move if sign (negative). |
| CMOVNS | Conditional move if not sign (non-negative). |
| CMOVP/CMOVPE | Conditional move if parity/Conditional move if parity even. |
| CMOVNP/CMOVPO | Conditional move if not parity/Conditional move if parity odd. |
| XCHG | Exchange. |
| BSWAP | Byte swap. |
| XADD | Exchange and add. |
| CMPXCHG | Compare and exchange. |
| CMPXCHG8B | Compare and exchange 8 bytes. |
| PUSH | Push onto stack. |
| POP | Pop off of stack. |
| PUSHA/PUSHAD | Push general-purpose registers onto stack. |
| POPA/POPAD | Pop general-purpose registers from stack. |
| CWD/CDQ | Convert word to doubleword/Convert doubleword to quadword. |
| CBW/CWDE | Convert byte to word/Convert word to doubleword in EAX register. |
| MOVSX | Move and sign extend. |
| MOVZX | Move and Zero extend. |
