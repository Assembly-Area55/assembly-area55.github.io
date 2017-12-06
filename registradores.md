---
layout: default
title: Registradores
permalink: /registradores
---

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
