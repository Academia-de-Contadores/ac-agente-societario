---
title: Fontes canonicas - Agente Societario
type: knowledge-sources
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

# Fontes canonicas - Agente Societario

## Fontes de controle

| Fonte | Caminho | Uso |
|---|---|---|
| Manifesto Societario lote 01 | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/01_INVENTARIOS/manifesto-extracao-societario-lote-01.csv` | contagem, duplicatas, status RAG, classificacao inicial |
| Sintese Societario lote 01 | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/05_SINTESES_POR_DEPARTAMENTO/sintese-societario-lote-01.md` | visao operacional do lote |
| Parecer Contador Senior | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/06_PARECER_CONTADOR_SENIOR/parecer-contador-senior-societario-lote-01.md` | limites tecnicos e risco |
| Prompt v0 importado | `agents/societario/_curated/03-prompt-v0-extraido.md` | fonte historica do agente antigo |

## Fontes operacionais principais

| ID | Tema | Caminho | Uso no agente |
|---|---|---|---|
| CE-PROC-SOC-0013 | checklist de abertura | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0013-doc1-checklistaberturadeempresa.md` | abertura e handoffs para Fiscal, DP, Contabil, Financeiro/Gestao |
| CE-PROC-SOC-0020 | documentos de abertura | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0020-doc16-checklistdedocumentosnecessriosparaaberturadeempresa.md` | documentos iniciais |
| CE-PROC-SOC-0032 | fluxograma entrada abertura | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0032-pdf3-fluxogramaentradadoclenteaberturamindmeister.md` | sequencia de entrada |
| CE-PROC-SOC-0021 | alteracao contratual | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0021-doc2-checklistalteracaocontratual.md` | checklist de alteracao |
| CE-PROC-SOC-0022 | baixa de empresa | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0022-doc3-checklistbaixadeempresa.md` | checklist de baixa |
| CE-PROC-SOC-0017 | cadastro empresa Dominio | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0017-doc13-popcadastrodeempresadominio.md` | cadastro inicial e handoff de parametrizacao |
| CE-PROC-SOC-0026 | transferencia de contabilidade | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0026-doc7-checklistdetransferenciadecontabilidade.md` | fonte para Onboarding; Societario usa apenas a parte societaria |
| CE-PROC-SOC-0033 | fluxograma transferencia | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0033-pdf4-fluxogramaentradadoclientetransferenciadecontabilidade.md` | fonte para Onboarding/transferencia |
| CE-PROC-SOC-0011 | assinatura certificado | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0011-pdf3-popmanualassinaturadecertificadodigital.md` | assinatura/certificado |
| CE-PROC-SOC-0012 | procuracao | `01_CONTABILIDADE_ESTRUTURADA_PROCESSOS/04_EXTRACOES_MD_LIMPAS/Societario/lote-01/CE-PROC-SOC-0012-pdf4-popprocuracao.md` | procuracao/acessos |

## Duplicatas e cautelas

- O lote tem duplicatas de abertura, assinatura, baixa, termo de aprovacao, acessorias, certificado e procuracao.
- Fontes duplicadas ficam como `reference_only` e nao devem ser usadas para inflar corpus.
- Parte do lote tem `imagem_nao_extraida` ou `texto_extraido_com_imagens_revisar`; o agente deve tratar como apoio operacional, nao como prova final.
- O manifesto classificou algumas fontes de transferencia/distrato como MEI/parcelamento. Esta curadoria corrige a leitura operacional: transferencia e onboarding pertencem ao Agente Onboarding, com apoio societario apenas quando houver ato/documento societario.

## Regra de fonte

Fonte oficial vigente e sistema oficial vencem qualquer material interno quando houver conflito. O Knowledge Pack serve para organizar a rotina, nao para substituir conferencia em Junta, REDESIM, Receita, prefeitura, certificado, gov.br ou Dominio.
