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
  * Este tópico encontra-se em [Controle de Fluxo](/control-transfer-instructions)

* Registradores
  * Este tópico encontra-se em [Registradores](/registradores)
