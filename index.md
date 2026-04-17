---
layout: default
title: Início
permalink: /
---

<section class="hero">
  <p class="hero__eyebrow">Assembly Area55</p>
  <h1>global _start para uma base de estudo viva e navegável</h1>
  <p class="hero__lead">
    Este material começou como uma coleção de anotações e exemplos em NASM. Agora a proposta é transformar o site em uma trilha de aprendizado clara, com referência rápida, exemplos reais e espaço para continuar expandindo a produção.
  </p>

  <div class="hero__actions">
    <a class="btn" href="/requisitos">Preparar ambiente</a>
    <a class="btn" href="/linguagem.html">Entrar na linguagem</a>
    <a class="btn btn-github" href="https://github.com/Assembly-Area55/assembly-area55.github.io">Ver código-fonte</a>
  </div>

  <div class="hero__meta">
    <div class="hero__meta-card">
      <strong>Base atual</strong>
      <span>Linux, NASM, ld, Makefile e exemplos pequenos para estudo incremental.</span>
    </div>
    <div class="hero__meta-card">
      <strong>Direção editorial</strong>
      <span>Mais contexto, melhor navegação e uma home que apresente a jornada completa.</span>
    </div>
    <div class="hero__meta-card">
      <strong>Próximo passo</strong>
      <span>Publicar novos módulos sem recomeçar do zero nem quebrar links antigos.</span>
    </div>
  </div>
</section>

## Trilha Principal

<p class="section-tag">Aprenda em sequência</p>

<div class="card-grid">
  <article>
    <h3><a href="/requisitos">1. Ambiente de desenvolvimento</a></h3>
    <p>Instale o conjunto mínimo para montar, ligar, testar e depurar programas Assembly em Linux.</p>
  </article>
  <article>
    <h3><a href="/linguagem.html">2. Fundamentos da linguagem</a></h3>
    <p>Entenda o que aproxima o Assembly do hardware, como pensar em dados e como a arquitetura influencia o código.</p>
  </article>
  <article>
    <h3><a href="/registradores">3. Registradores e pilha</a></h3>
    <p>Revise os registradores de uso geral, papéis clássicos e como a stack aparece no fluxo real do programa.</p>
  </article>
  <article>
    <h3><a href="/control-transfer-instructions">4. Controle de fluxo</a></h3>
    <p>Saltos, loops, chamadas e retorno: os blocos que dão forma ao comportamento do executável.</p>
  </article>
  <article>
    <h3><a href="/nasm">5. NASM na prática</a></h3>
    <p>Estruture arquivos, seções e pontos de entrada com uma visão mais prática do assembler e do link-editor.</p>
  </article>
  <article>
    <h3><a href="/using-makefile">6. Automação com Makefile</a></h3>
    <p>Saia dos comandos manuais e organize o build para manter uma base de exemplos que continue crescendo.</p>
  </article>
</div>

## Biblioteca Técnica

<p class="section-tag">Consulta rápida</p>

<div class="card-grid">
  <article>
    <h3><a href="/data-transfer-instructions">Transferência de dados</a></h3>
    <p>Mapa inicial de instruções para mover, trocar, empilhar e converter valores.</p>
  </article>
  <article>
    <h3><a href="/nasm-output-format">Formatos de saída do NASM</a></h3>
    <p>Resumo do que o NASM consegue gerar e como isso se conecta ao alvo final.</p>
  </article>
  <article>
    <h3><a href="/syscalls">Syscalls Linux</a></h3>
    <p>Tabela rápida para consultas durante os exercícios de I/O e interação com o kernel.</p>
  </article>
  <article>
    <h3><a href="https://github.com/Assembly-Area55/assembly-area55.github.io/tree/master/src">Repositório de exemplos</a></h3>
    <p>Hello, uppercase, getpid, cpuid e outros diretórios que podem virar estudos guiados e laboratórios.</p>
  </article>
</div>

## Produção Contínua

<p class="section-tag">Como este material pode evoluir</p>

<ul class="roadmap">
  <li>
    <strong>Expandir módulos existentes</strong>
    <span>Completar tópicos já iniciados, especialmente bootloaders, fluxo de dados e integração com C.</span>
  </li>
  <li>
    <strong>Transformar exemplos em capítulos</strong>
    <span>Cada pasta em <code>src/</code> pode virar uma página com problema, código, build e análise do binário.</span>
  </li>
  <li>
    <strong>Criar uma linha editorial moderna</strong>
    <span>Introdução, teoria curta, experimento prático e links para o código-fonte, sempre no mesmo formato.</span>
  </li>
</ul>
