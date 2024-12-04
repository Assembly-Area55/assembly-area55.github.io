---
layout: default
title: Conhecendo a Linguagem Assembly
permalink: /linguagem.html
---

# Linguagem assembly

## Introdução à Linguagem

A linguagem Assembly é classificada como uma linguagem de baixo nível, contrastando com linguagens de alto nível como BASIC, C e Pascal. A principal característica das linguagens de baixo nível é sua proximidade com o hardware, o que permite que os programadores interajam diretamente com a arquitetura do processador.

### O que Define uma Linguagem de Baixo Nível?

Assembly é considerado de baixo nível devido ao seu conjunto de instruções simples, como `mov`, `out`, `in`, `pop`, `push`, e `add`. Estas instruções correspondem a operações diretamente executadas pelo processador, ao contrário das linguagens de alto nível que são compostas por várias instruções de baixo nível.

Embora seja possível programar em binário ou hexadecimal, essas abordagens são extremamente propensas a erros. A linguagem Assembly surge como uma solução, oferecendo mnemônicos e símbolos que tornam a programação mais compreensível para os humanos, sem perder a proximidade com a máquina.

## Terminologia e Conceitos

### Tipos de Dados Fundamentais

Na arquitetura IA-32, os tipos de dados fundamentais incluem **bytes**, **words**, **doublewords**, **quadwords** e **double quadwords**. Estes tipos de dados variam em tamanho e capacidade de armazenamento, conforme mostrado na tabela abaixo:

![Tipos de Dados - Intel]({{'images/datatypes.png' | absolute_url}})

| **Tipo**                | **Tamanho (Bits)** | **Tamanho (Bytes)** | **Faixa de Valores**  |
|-------------------------|--------------------|---------------------|-----------------------|
| **Bit**                 | 1                  |                     | 0 ou 1                |
| **Nibble**              | 4                  |                     | 0 a 15                |
| **Byte**                | 8                  | 1                   | 0 a 255               |
| **Word**                | 16                 | 2                   | -32.768 a 32.767      |
| **Doubleword**          | 32 bits            | 4                   | -2.147.483.648 a 2.147.483.647 |
| **Quadword**            | 64 bits            | 8                   | -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807              |
| **Double Quadword**     | 128 bits           | 16                  |     Faixa maior que Quadword            |

### Registradores na Arquitetura IA-32

Os registradores são a base para operações em Assembly. Eles armazenam valores temporários e permitem acesso rápido durante a execução do programa. Alguns exemplos incluem:

- **AX (16 bits)**:  
  - **AH** (High Byte) contém os 8 bits mais significativos.  
  - **AL** (Low Byte) contém os 8 bits menos significativos.  
  - Exemplo: Se `AH = 0x12` e `AL = 0x34`, então `AX = 0x1234`.

- **EAX (32 bits)**:  
  - Inclui **AX** nos 16 bits inferiores e mais 16 bits superiores.  
  - É amplamente usado como acumulador para operações aritméticas e lógicas.

### Instruções IA-32 e Operações com Dados

Um subconjunto de instruções da arquitetura IA-32 permite manipular os tipos de dados fundamentais diretamente, sem a necessidade de operandos adicionais.

O tipo de dado **Quadword** foi introduzido na arquitetura IA-32 a partir do processador Intel 486. Esse tipo de dado tem 64 bits e é utilizado para operações que exigem maior precisão.

A **Double Quadword** (128 bits) foi introduzida a partir do processador Intel Pentium III, com a extensão SSE, permitindo operações ainda mais complexas e precisas.

## Tópicos Relacionados

- [Iniciando com o NASM](/nasm): Primeiros passos na utilização do NASM (Netwide Assembler) para programação em Assembly.
- [Data Transfer Instructions](/data-transfer-instructions): Instruções fundamentais para transferência de dados entre registradores e memória.
- [Controle de Fluxo](/control-transfer-instructions): Como controlar o fluxo de execução do programa com instruções de salto e comparação.
- [Registradores](/registradores): Detalhamento de todos os registradores usados em IA-32, incluindo seus subcomponentes e funções.