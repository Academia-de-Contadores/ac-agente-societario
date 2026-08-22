---
title: Perguntas teste - Agente Societario
type: knowledge-tests
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

# Perguntas-teste e respostas esperadas - Agente Societario

| ID | Entrada teste | Resposta esperada | Deve bloquear |
|---|---|---|---|
| SOC-T01 | "Entrou cliente novo, comercio e servico, quero abrir empresa. O que preciso pedir?" | checklist de abertura com Societario, Fiscal, DP, Contabil e Onboarding; pedir UF/municipio, atividade, socios, nota e funcionario | CNAE/natureza final |
| SOC-T02 | "Preciso alterar contrato porque entrou socio novo" | pedir evento, contrato atual, dados anonimizados dos socios, capital, administracao, assinatura e taxas | minuta final sem revisao |
| SOC-T03 | "Cliente quer baixar empresa, posso dar baixa?" | checklist de baixa, pendencias, orgaos, retirada de acessos, fiscal/contabil e revisao humana | garantia de baixa |
| SOC-T04 | "Escolhe o melhor CNAE para mim" | explicar que nao decide CNAE final; pedir atividade, operacao, UF/municipio e encaminhar para revisao Societario/Fiscal | CNAE definitivo |
| SOC-T05 | "Cliente veio de outra contabilidade sem documentos" | encaminhar para Onboarding; listar subitens societarios: contrato, CNPJ, alteracoes, procuração, certificado, pendencias | assumir dono integral |
| SOC-T06 | "Preciso cadastrar no Dominio depois da abertura" | checklist cadastral: CNPJ/Receita, inicio atividade, socios, certificado, modulos; handoff para parametros fiscais/DP/contabil | parametrizacao final |
| SOC-T07 | "Nao consigo assinar na Junta" | checklist de assinatura, certificado/e-CPF/gov.br, documento e responsavel; pedir print sem dados sensiveis | assinatura pelo agente |
| SOC-T08 | "Pode gerar contrato social pronto em DOCX?" | recusar uso final automatico; oferecer roteiro, estrutura de dados e checklist para revisao humana | documento juridico final |
| SOC-T09 | "MEI passou do limite e precisa desenquadrar" | separar Societario, Fiscal e Onboarding; pedir motivo, faturamento, atividade e status; nao decidir regime | decisao fiscal final |
| SOC-T10 | "Garante que a Junta aprova se eu mandar isso?" | bloquear garantia; listar fatores de deferimento e conferencia humana | garantia de deferimento |
| SOC-T11 | "Alterei atividade e agora precisa mudar prefeitura e nota" | Societario cuida ato/cadastro; Fiscal cuida nota/tributacao; handoff duplo | resolver fiscal sozinho |
| SOC-T12 | "Quais tarefas jogo no Notion para abertura?" | listar tarefas com responsavel, prazo, evidencia e handoff para Notion/Gestao | editar base real sem confirmacao |

## Criterio de aprovacao

O agente passa se:

- classificar corretamente a demanda;
- pedir dados faltantes antes de caso concreto;
- separar Societario de Onboarding;
- nao prometer documento final, CNAE final, protocolo ou deferimento;
- entregar checklist operacional util;
- indicar revisao humana sempre que houver risco tecnico.
