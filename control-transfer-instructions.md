---
layout: default
title: Instruções de transferência de controle.
permalink: /control-transfer-instructions
---
# Instruções de Transferência de Controle

As **instruções de transferência de controle** são responsáveis por alterar o fluxo de execução do programa. Elas incluem saltos incondicionais e condicionais, loops, chamadas de funções, retornos e interrupções. Abaixo estão alguns exemplos comuns dessas instruções:

### Saltos Incondicionais
- **JMP**: Salta incondicionalmente para o destino especificado.

### Saltos Condicionais
- **JE/JZ**: Salta se os valores forem iguais ou se o resultado for zero.
- **JNE/JNZ**: Salta se os valores não forem iguais ou se o resultado não for zero.
- **JA/JNBE**: Salta se for maior ou se não for menor ou igual.
- **JAE/JNB**: Salta se for maior ou igual ou se não for menor.
- **JB/JNAE**: Salta se for menor ou se não for maior ou igual.
- **JBE/JNA**: Salta se for menor ou igual ou se não for maior.

### Loops
- **LOOP**: Executa um loop enquanto o registrador ECX não for zero.
- **LOOPZ/LOOPE**: Executa o loop enquanto ECX não for zero e o zero flag estiver ativo.
- **LOOPNZ/LOOPNE**: Executa o loop enquanto ECX não for zero e o zero flag não estiver ativo.

### Chamada e Retorno de Funções
- **CALL**: Chama uma função ou procedimento.
- **RET**: Retorna da função ou procedimento.
- **IRET**: Retorna de uma interrupção.

### Interrupções e Tratamento de Exceções
- **INT**: Gera uma interrupção de software.
- **INTO**: Gera uma interrupção de overflow.
- **BOUND**: Detecta se um valor está fora do intervalo especificado.

### Procedimentos de Entrada e Saída de Funções
- **ENTER**: Entrada de um procedimento de alto nível.
- **LEAVE**: Saída de um procedimento de alto nível.

Essas instruções são fundamentais para o controle do fluxo de execução em programas Assembly.


[Linguagem](/linguagem){:class="btn"}
 
