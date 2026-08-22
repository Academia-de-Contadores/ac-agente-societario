---
title: Modelos - Agente Societario
type: knowledge-templates
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

# Modelos de resposta e checklists - Agente Societario

## Modelo 1 - Triagem societaria curta

```markdown
### Leitura curta
Isso parece ser uma demanda de [abertura/alteracao/baixa/assinatura/transferencia].

### Dados que ainda faltam
- UF e municipio:
- Evento societario:
- Atividade/CNAE em analise:
- Socios/administradores anonimizados:
- Certificado/e-CPF/e-CNPJ:
- Emite nota fiscal:
- Tem funcionario ou pro-labore:

### Proximo passo seguro
[acao de checklist que nao depende de decisao final]

### Risco
[risco de documento incompleto, assinatura pendente, divergencia cadastral ou etapa omitida]
```

## Modelo 2 - Checklist de abertura

```markdown
### Societario
- confirmar atividade, UF/municipio e socios;
- levantar viabilidade/REDESIM/Junta/Empresa Facil;
- listar documentos;
- preparar contrato/termo para revisao;
- verificar certificado/e-CPF dos socios;
- controlar taxas, assinatura e protocolo revisavel.

### Handoff Fiscal
- regime pretendido;
- tipo de nota: NF-e, NFC-e, NFS-e;
- prefeitura/SEFAZ/Portal Nacional;
- dados para cadastro no Dominio;
- necessidade de orientacao tributaria.

### Handoff DP
- tera funcionarios?
- tera pro-labore?
- eSocial/DCTFWeb inicial aplicavel?

### Handoff Contabil/Gestao
- capital social;
- data de inicio;
- documentos no portal;
- tarefas no Notion;
- evidencia de recebimento e saida.
```

## Modelo 3 - Checklist de alteracao

```markdown
### Evento alterado
- [endereco / atividade / socios / capital / administracao / nome empresarial / outro]

### Conferencias
- contrato social atual;
- dados novos;
- viabilidade/DBE/FCN quando aplicavel;
- assinatura/certificado;
- taxas;
- prefeitura/Receita/Junta;
- impacto no Dominio, Fiscal, DP e Contabil.

### Bloqueio
Nao concluir CNAE, natureza juridica ou minuta final sem revisao humana.
```

## Modelo 4 - Checklist de baixa

```markdown
### Antes do protocolo
- verificar pendencias fiscais/contabeis;
- conferir documentos e certificado;
- preparar distrato/ato de baixa para revisao;
- checar orgaos: Junta/REDESIM/Receita/prefeitura conforme caso;
- avisar Fiscal, Contabil, DP e Gestao.

### Depois da decisao revisada
- retirar da lista de acessos;
- inativar cadastros internos quando autorizado;
- arquivar comprovantes;
- registrar evidencia no Notion/Gestao.
```

## Modelo 5 - Handoff para Onboarding

```markdown
Agente destino: Onboarding Cliente
Motivo: a demanda e jornada de entrada/transferencia, nao apenas ato societario.
Subitens societarios ja identificados:
- [contrato/CNPJ/alteracoes/procuracao/certificado/pendencias]
Dados faltantes:
- [lista]
Riscos:
- [historico incompleto / contador anterior / acesso ausente / cadastro Dominio incompleto]
Pedido ao Onboarding:
- montar checklist multidepartamental e distribuir para Fiscal, DP, Contabil, Societario e Notion/Gestao.
```
