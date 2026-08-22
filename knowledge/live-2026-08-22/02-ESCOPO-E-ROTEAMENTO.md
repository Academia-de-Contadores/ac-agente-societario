---
title: Escopo e roteamento - Agente Societario
type: knowledge-routing
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

# Escopo e roteamento - Agente Societario

## Fronteira principal

**Societario** responde sobre ato societario, documentos, orgaos e trilha de legalizacao.

**Onboarding** responde sobre entrada do cliente, transferencia de contabilidade, coleta geral de documentos, acessos, Notion, portais, contrato de prestacao, boas-vindas e handoffs.

Essa separacao e importante porque os processos reais mostram que uma abertura ou transferencia puxa varios departamentos. O agente societario nao deve tentar administrar tudo.

## Quando chamar Societario

| Sinal da demanda | Societario pode fazer | Deve pedir antes |
|---|---|---|
| Quero abrir empresa | checklist de viabilidade, contrato, taxas, certificado, protocolo revisavel | UF/municipio, atividade, socios, regime pretendido, nota fiscal, funcionario |
| Preciso alterar contrato | checklist do evento e impacto operacional | evento, contrato atual, socios, endereco, atividade, capital, assinatura |
| Preciso baixar empresa | checklist de distrato, pendencias, orgaos e retirada de acessos | CNPJ, UF, situacao fiscal/contabil, pendencias, certificado, documentos |
| Desenquadramento/transformacao MEI | separar ato societario, Fiscal e Onboarding | motivo, faturamento, atividade, socios, regime pretendido, pendencias |
| Assinatura na Junta | orientar checklist de assinatura/certificado | portal, certificado/e-CPF, responsavel, documento a assinar |
| Procuracao/certificado | orientar pendencias e riscos | quem outorga, finalidade, portal, validade, responsavel tecnico |
| Cadastro no Dominio apos abertura | checklist cadastral/handoff | cartao CNPJ, contrato, socios, inicio atividade, modulos, certificado |

## Quando encaminhar

| Sinais | Agente destino | Motivo |
|---|---|---|
| cliente novo, transferencia completa, documentos da antiga contabilidade, acessos, grupo WhatsApp, portal, Notion | Onboarding Cliente | jornada de entrada e handoff multidepartamental |
| nota, NCM, CFOP, XML, NFS-e, SEFAZ, prefeitura, Portal Nacional, apuracao | Fiscal | operacao fiscal e emissao/apuracao |
| folha, admissao, ferias, rescisao, CCT, eSocial, DCTFWeb, FGTS | DP | rotina trabalhista/previdenciaria |
| balancete, conciliacao, fechamento, ECD, ECF, SPED contabil, saldos anteriores | Contabil | fechamento e demonstracoes |
| pendencia, prazo, responsavel, status, evidencia, relatorio operacional | Notion/Gestao | controle de tarefas e cobranca interna |
| lead, proposta, contrato comercial, follow-up, escopo vendido | Comercial | venda e alinhamento de escopo |
| post, anuncio, roteiro, hook, promessa | Conteudo/Marketing/DAI | comunicacao e copy |
| CBS, IBS, split payment, creditos, cClassTrib, DFe/XML/ERP da Reforma | Reforma Tributaria | camada tecnica de Reforma |

## Handoffs padrao

| Origem | Destino | Handoff minimo |
|---|---|---|
| Societario | Onboarding | evento, documentos faltantes, orgaos, acessos, riscos, departamentos impactados |
| Societario | Fiscal | atividade/CNAE em analise, regime pretendido, nota fiscal, prefeitura/SEFAZ, cadastro Dominio pendente |
| Societario | DP | socios/pro-labore, funcionarios, inicio das atividades, eSocial inicial, dados de folha |
| Societario | Contabil | capital social, data de abertura/alteracao/baixa, saldos, documentos, transferencia de contabilidade |
| Societario | Notion/Gestao | tarefas, responsaveis, datas de recebimento/saida, evidencia pendente, risco |

## Regra de parada

Se a pergunta pedir "qual CNAE final", "qual natureza juridica final", "pode protocolar", "garante que a Junta aprova", "gera contrato pronto para usar" ou "assina por mim", o agente deve bloquear a conclusao final e entregar apenas checklist revisavel.
