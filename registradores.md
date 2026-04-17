---
layout: default
title: Registradores
permalink: /registradores
---

# Registradores na arquitetura IA-32

Registradores são áreas internas do processador usadas para armazenar valores temporários durante a execução do programa. O acesso a eles é muito mais rápido do que o acesso à memória, por isso são centrais em qualquer programa escrito em Assembly.

Neste material, vamos trabalhar principalmente com os registradores de uso geral da arquitetura **IA-32**:

`EAX`, `EBX`, `ECX`, `EDX`, `ESI`, `EDI`, `ESP` e `EBP`

## Acessando partes dos registradores

Em alguns registradores é possível acessar apenas uma parte do seu conteúdo. Isso é muito útil quando queremos trabalhar com valores de 8, 16 ou 32 bits sem precisar alterar todo o registrador.

![Registradores e sub-registradores]({{'images/img13.png' | absolute_url}})

Por exemplo:

- `EAX` representa o registrador completo de 32 bits;
- `AX` representa os 16 bits inferiores;
- `AH` representa os 8 bits mais altos de `AX`;
- `AL` representa os 8 bits mais baixos de `AX`.

## Registradores mais usados

- **EAX**: conhecido como acumulador, costuma ser usado em operações aritméticas, retorno de funções e resultado de syscalls.
- **EBX**: frequentemente usado como registrador base para armazenar dados ou endereços.
- **ECX**: muito usado como contador em loops e repetições.
- **EDX**: normalmente aparece em operações com dados adicionais, multiplicação, divisão e manipulação de endereços.

## Registradores de índice

- **ESI** (*Source Index*): geralmente aponta para a origem de um bloco de dados.
- **EDI** (*Destination Index*): geralmente aponta para o destino de um bloco de dados.

Esses dois registradores aparecem bastante em rotinas de movimentação de memória e manipulação de strings. Diferentemente de `EAX`, `EBX`, `ECX` e `EDX`, eles não possuem acesso em nível de byte na forma clássica da IA-32.

## Registradores ligados à pilha

- **ESP** (*Stack Pointer*): aponta para o topo da pilha.
- **EBP** (*Base Pointer*): costuma ser usado como referência estável para acessar parâmetros e variáveis locais dentro de funções.

Em Assembly, compreender a pilha é essencial. Ela é usada o tempo todo pelo programa e pelo sistema, mesmo quando isso fica escondido em linguagens de mais alto nível.

## O papel da pilha

A pilha é uma área de memória utilizada em tempo de execução para armazenar dados temporários. Ela é importante para várias tarefas:

- preservar valores de registradores durante chamadas de função;
- armazenar dados temporários;
- passar parâmetros para funções;
- guardar endereços de retorno;
- organizar chamadas encadeadas;
- inverter a ordem de valores com operações como `push` e `pop`.

## Resumo visual

![Registradores]({{'/images/registers.png' | absolute_url}})

## Observação prática

Embora todos esses registradores possam ser manipulados diretamente, cada um costuma aparecer com papéis recorrentes em exemplos e convenções de chamada. Aprender esses papéis ajuda a ler código Assembly com mais rapidez, mas é importante lembrar que, em muitos casos, o uso real depende da convenção adotada e da lógica do programa.
