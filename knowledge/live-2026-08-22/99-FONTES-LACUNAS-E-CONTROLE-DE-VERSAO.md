---
title: Controle de versao - Agente Societario
type: knowledge-control
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

# Fontes, lacunas e controle de versao - Agente Societario

## Versao atual

- Versao: `societario-v2-thread-2026-07-04`
- Status: `draft_revisado_por_thread`
- RAG: `sem_rag_agora`
- Escopo editado: `knowledge/societario/` e `agents/societario/_curated/`
- Fonte bruta movida/apagada: nao
- `.git` criado no Vault/DCCEO: nao

## Decisoes tomadas

| Decisao | Motivo |
|---|---|
| Rebaixar geracao de DOCX juridico final | prompt v0 era arriscado para uso sem revisao |
| Separar Societario de Onboarding | processos de abertura/transferencia puxam multiplos departamentos |
| Tratar cadastro Dominio como checklist/handoff | parametrizacao final depende de Fiscal/DP/Contabil |
| Nao criar RAG agora | Knowledge Pack e suficiente para o primeiro uso |
| Manter duplicatas como referencia | evita inflar corpus e respostas repetidas |

## Evidencias consultadas

- `manifesto-extracao-societario-lote-01.csv`: 36 fontes, 11 PDFs, 25 DOCX, duplicatas registradas.
- `sintese-societario-lote-01.md`: 36/36 fontes processadas, 28 candidatas e 8 reference_only.
- `parecer-contador-senior-societario-lote-01.md`: IA segura para checklist, pendencias, comunicacao e handoff; proibida para decisao final.
- `CE-PROC-SOC-0013`: onboarding de abertura com demandas Societario, Fiscal, DP, Contabil, Financeiro e Gestao.
- `CE-PROC-SOC-0021`: alteracao contratual.
- `CE-PROC-SOC-0022`: baixa de empresa.
- `CE-PROC-SOC-0017`: cadastro de empresa no Dominio.
- `CE-PROC-SOC-0026` e `CE-PROC-SOC-0033`: transferencia de contabilidade como fonte para Onboarding.

## Proxima revisao

Revisar apos:

- testes práticos com a equipe;
- decisao sobre permissao de gerar DOCX revisavel;
- primeira rodada de uso junto ao Concierge e Onboarding.
