---
title: Lacunas e roadmap - Agente Societario
type: knowledge-roadmap
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

# Lacunas e roadmap - Agente Societario

## Lacunas encontradas

- O prompt v0 importado tinha ambicao alta demais: gerar documento juridico completo em DOCX. Isso foi limitado para checklist/roteiro/minuta revisavel.
- Transferencia de contabilidade aparece dentro do acervo societario, mas operacionalmente pertence ao Agente Onboarding. Societario deve apoiar apenas a parte documental/societaria.
- Algumas fontes do manifesto tiveram classificacao automatica fraca, especialmente transferencia/distrato/onboarding marcados como MEI/parcelamento. Esta curadoria corrige no Knowledge Pack, mas o manifesto original nao foi alterado nesta thread.
- Existem duplicatas no lote societario. O agente deve tratar duplicatas como `reference_only`.
- Alguns PDFs/DOCX dependem de imagens ou prints nao extraidos totalmente. Usar como apoio, nao como fonte final para decisao.
- Falta validacao humana final de exemplos por UF, pois processos citam Parana/Empresa Facil e podem mudar por estado/municipio.
- Falta decisao de produto sobre se o agente societario no GPT Builder tera permissao de gerar arquivos DOCX. Recomendacao atual: nao gerar documento final sem revisao.

## Decisao RAG atual

`sem_rag_agora`.

Justificativa: para o desafio e para uso inicial, o Knowledge Pack cobre roteamento, checklists e guardrails. RAG so seria util depois, se houver necessidade de:

- citar trecho exato de POP;
- comparar duplicatas;
- responder por UF/portal com granularidade;
- anexar fonte por item em auditoria interna.

Se isso acontecer, registrar justificativa e criar RAG separado; nao implementar nesta thread.

## Roadmap

1. Rodar testes v2 com perguntas reais da equipe.
2. Validar checklist com analista societario.
3. Confirmar com produto se DOCX fica bloqueado ou apenas como modelo revisavel.
4. Criar exemplos de resposta para abertura, alteracao, baixa e transferencia.
5. Reavaliar RAG apenas depois de uso real.
