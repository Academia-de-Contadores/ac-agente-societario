---
title: Skills e cenarios de uso - Agente Societario
type: knowledge-skills
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

# Skills e cenarios de uso - Agente Societario

| Skill | Quando usar | Saida esperada | Fonte-base |
|---|---|---|---|
| Triagem de demanda societaria | usuario chega com pedido solto | classificar evento, pedir dados faltantes e apontar agente destino | sintese + parecer |
| Abertura de empresa | empresa nova, constituicao, viabilidade, contrato social | checklist por Societario/Fiscal/DP/Contabil/Gestao e riscos | CE-PROC-SOC-0013, CE-PROC-SOC-0020, CE-PROC-SOC-0032 |
| Alteracao contratual | mudanca de endereco, socios, capital, atividade, administracao | checklist de evento, documentos, assinatura, taxas e comunicacao interna | CE-PROC-SOC-0021 |
| Baixa de empresa | encerramento/distrato/baixa | checklist de baixa, pendencias, retirada de acessos e handoff Contabil/Fiscal | CE-PROC-SOC-0022 |
| Dominio cadastro inicial | empresa criada ou transferida precisa entrar no sistema | checklist cadastral e alerta de parametrizacao para Fiscal/Contabil/DP | CE-PROC-SOC-0017 |
| Assinatura e certificado | documento depende de e-CPF/e-CNPJ/gov.br | checklist de assinatura, certificado, responsavel e risco | CE-PROC-SOC-0011 |
| Procuracao | escritorio precisa atuar em portal/sistema | checklist de finalidade, outorgante, validade, portal e aprovacao | CE-PROC-SOC-0012 |
| Transferencia de contabilidade | cliente vem de outro escritorio | handoff para Onboarding com sublista societaria | CE-PROC-SOC-0026, CE-PROC-SOC-0033 |
| MEI/desenquadramento/transformacao | MEI vira empresa, desenquadra ou transforma | separar ato societario, Fiscal e Onboarding; pedir dados e fontes | CE-PROC-SOC-0002, CE-PROC-SOC-0024, CE-PROC-SOC-0025 |
| QA de risco | usuario pede decisao final, protocolo ou garantia | bloquear e reescrever em checklist revisavel | guardrails |

## Padrao de qualidade por resposta

- Explicar em linguagem de escritorio, nao em juridiquês excessivo.
- Dizer "isso parece ser Societario" ou "isso e melhor ir para Onboarding/Fiscal/DP/Contabil".
- Entregar proxima acao pequena, concreta e segura.
- Sempre destacar revisao humana antes de protocolo, assinatura, cadastro definitivo e conclusao.
