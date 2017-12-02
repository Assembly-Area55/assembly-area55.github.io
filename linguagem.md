---
layout: default
title: Conhecendo a Linguagem Assembly
permalink: /linguagem.html
---

# Linguagem assembly

* Introdução a Linguagem

A linguagem Assembly é conhecida como sendo uma linguagem de baixo nível, ao contrário de outras linguagens como Basic, C, Pascal que já são consideradas de alto nível.

O que determina uma linguagem de baixo nível?

Assembly é uma linguagem de baixo nível devido a ter um conjunto de instruções básicos como exemplo o mov, out, in, pop, push, add.

Isso significa que suas instruções são traduzidas quase que diretamente para o processador, diferente das linguagens de alto nível onde suas instruções são constituídas por multiplas instruções de baixo nível.

Podemos programar escrevendo diretamente em binário, ou em sistema hexadecimal, mas seria algo muito confuso e a possibilidade de haver erros de codificação seriam infinitamente maiores.

Neste ponto entra a linguagem Assembly, onde temos um conjunto de notação ou símbolos (mnemônicos) para facilitar o entendimento de humanos.

* Terminologia e Conceitos

* Tipos de dados

Os tipos de dados fundamentais da arquitetura IA-32 são bytes, words, doublewords, quadwords, e double quadwords. Como mostrado na figura abaixo.

![Data Types - Intel]({{'images/datatypes.png' | absolute_url}})

| Tipo | Bits | Bytes | Range |
| Bit |  1 | | 2 |
| Nibble | 4 | | 16 |
| Byte | 8 | 1 | 256 |
| Word | 16 | 2 | 65.536 |
| Doubleword | 32 bits | 4 | 4.294.967.296 |
| Quadword | 64 bits | 8 | |
| Double Quadword | 128 bits | 16 | |

Um subset de instruções da arquitetura IA-32 opera estes dados fundamentais sem qualquer operando adicional.

O tipo de dado Quadword foi introduzido na arquitetura IA-32 a partir do processador Intel 486;
O tipo de dado Double Quadrword foi introduzido a partir do processador Intel Pentium III com a extensão SSE.

* Sessões

  * Este descrição encontra-se em [Iniciando com o NASM](/nasm)

* Transferência de dados.

  * Este tópico encontra-se em [Data Transfer Instructions](/data-transfer-instructions)

* Operações Aritméticas

* Controle de Fluxo

* [Registradores](#registradores)

Registradores são areas especiais dentro do processador que são mais rápidas que operandos de memória.
Como vamos trabalhar com o processador Intel, existem apenas 8 registradores de uso geral.

EAX, EBX, ECX, EDX, ESI, EDI, ESP, EBP

Os registradores ESP e EBP só devem ser usados preferencialmente para trabalhar com a pilha (Stack).

Nos registradores de uso geral (Exceto ESI e EDI) é permitido usar 3 modos de acesso diferentes, ilustrados pela figura abaixo.


![IMG]({{'images/img13.jpg' | absolute_url}})

* [EAX](#EAX) - Chamado de "ACUMULADOR", geralmente é usado para operações Aritméticas e para guardar resultados.
* [EBX](#EBX) - Chamado de "BASE", geralmente usado para armazenar dados e para endereços de memória.
* [ECX](#ECX) - Chamado de "CONTADOR", como o nome já diz é usado como contador, principalmente para controlar loops.
* [EDX](#EDX) - Chamado de registrador de "DADOS" é usado geralmente para guardar o endereço de uma variável na memória.

* ESI e EDI - Respectivamente "Source Index" e "Destination Index", são menos usados do que os registradores usados anteriormente.
Geralmente usa-se ESI e EDI para movimentação de dados, com ESI guardando o endereço da fonte de uma variável e EDI guardando o endereço de destino. Não podem ser acessados em nível de Byte.

* ESP e EBP - Respectivamente "Stack Pointer" e "Base Pointer", só podem ser usados para manipulação da pilha. O registrador ESP guarda a referência para o topo da pilha, enquanto o registrador EBP é usado para "ANDAR" pela pilha.

Atualmente todos os programas fazem uso da pilha em tempo de execução, porem nas linguagens de alto nível é algo que não necessitamos nos preocupar, em como se comporta a pilha.

Já em Assembly, o programador necessita saber trabalhar com a pilha pois ela é uma ferramenta importante.

A pilha é uma área de dados existente na memória em tempo de execução, no qual seu programa pode armazenar dados temporariamente.

### As principais funcionalidades da pilha são:

* Preservar valores de registradores em funções.
* Preservar dados na memória.
* Transferir dados sem usar registradores.
* Reverter a ordem dos dados.
* Chamar outras funções e depois retornar.
* Passar parâmetros para funções.

![Registradores]({{'/images/registers.png' | absolute_url}})
