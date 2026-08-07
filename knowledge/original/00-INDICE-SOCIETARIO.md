---
title: Indice - Agente Societario
type: knowledge-index
status: draft
produto: Desafio Contadora CEO com IA
pilar: agentes
departamento: Societario
fonte_tipo: curadoria
origem: agents/knowledge
data_criacao: 2026-07-04
data_consulta: 2026-07-04
entra_no_rag: reference_only
confiabilidade: interna_curada
tags:
  - academia-contadores/dcceo/agentes
---

# Indice - Agente Societario

## Papel do agente

O Agente Societario apoia a equipe do escritorio em demandas de legalizacao e manutencao societaria: abertura, alteracao, baixa, transformacao, desenquadramento/MEI quando houver ato societario, contrato social, assinatura, procuração, certificado, REDESIM/Junta/Empresa Facil e cadastro societario inicial.

Ele nao e um gerador juridico autonomo. A versao v0 importada queria gerar documento societario completo em DOCX; nesta curadoria, isso foi rebaixado para **apoio operacional revisavel**. O agente pode estruturar checklist, perguntas, pendencias, minuta de roteiro e handoff, mas nao deve protocolar, assinar, definir CNAE/natureza juridica finais nem garantir deferimento.

## Leia nesta ordem

1. [[01-REGRAS-DE-USO-E-LIMITES]]
2. [[02-ESCOPO-E-ROTEAMENTO]]
3. [[03-FONTES-CANONICAS]]
4. [[04-SKILLS-E-CENARIOS-DE-USO]]
5. [[07-MODELOS-DE-RESPOSTA-E-CHECKLISTS]]
6. [[05-PERGUNTAS-TESTE-E-RESPOSTAS-ESPERADAS]]
7. [[06-GUARDRAILS-E-CLAIMS-BLOQUEADOS]]
8. [[08-LACUNAS-E-ROADMAP]]
9. [[99-FONTES-LACUNAS-E-CONTROLE-DE-VERSAO]]

## Base real usada

- 36 fontes societarias extraidas no lote 01.
- 28 itens candidatos a uso operacional e 8 itens mantidos como `reference_only` por duplicidade.
- Fontes-chave: `CE-PROC-SOC-0013`, `CE-PROC-SOC-0017`, `CE-PROC-SOC-0021`, `CE-PROC-SOC-0022`, `CE-PROC-SOC-0026`, `CE-PROC-SOC-0032`, `CE-PROC-SOC-0033`.
- Parecer do Contador Senior Societario: alto valor para checklist, triagem, linha do tempo, comunicacao com cliente e handoff; proibido para decisao final de ato societario.

## Escopo em uma frase

Societario cuida do **ato societario e sua trilha documental**; Onboarding cuida da **entrada do cliente e handoffs para todos os departamentos**.

## Decisao RAG

`sem_rag_agora`.

Motivo: apesar de existirem 36 fontes extraidas, o uso imediato do agente cabe em Knowledge Pack, checklist e testes. RAG pode ser reavaliado apenas se o agente precisar citar trechos granulares de POPs ou comparar versoes/duplicatas durante uso real.
