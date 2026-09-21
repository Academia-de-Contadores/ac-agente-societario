# Verificação de originais e fontes — Societário — 2026-09-21

## Integridade

Os dez arquivos da baseline provisória foram recalculados sobre bytes integrais:
hash e tamanho conferem 10/10 com `knowledge/live-2026-08-22/MANIFEST.md`, com
o validador específico e com a instalação. Isso comprova preservação da captura,
não vigência normativa nem igualdade binária com o editor em 2026-09-21.

## Suporte às respostas locais

| Caso | Base efetivamente suficiente | Limite preservado |
| --- | --- | --- |
| P1 | `01-REGRAS`, `02-ESCOPO`, `04-SKILLS`, `05-PERGUNTAS` e `07-MODELOS` sustentam abertura, coleta, handoffs e CNAE apenas em análise. | Nenhuma regra local de Curitiba foi alegada como atual. |
| P2 | Os mesmos arquivos sustentam contrato vigente, sócios, capital, administração, assinaturas e quadro atual/desejado. | Sem cláusula, formulário ou sequência local inventada. |
| P3 | `01`, `02`, `04`, `05`, `06-GUARDRAILS` e `07` sustentam pendências, distrato, órgãos, retirada de acessos e bloqueio de garantia. | Sem prazo ou deferimento prometido. |
| P4 | `05`, `06` e `07` exigem substituir contrato final por estrutura/minuta revisável. | Marcadores explícitos; nenhuma assinatura/protocolo. |
| P5 | `03-FONTES` dá primazia à fonte oficial e `06` bloqueia regra/prazo não comprovado. | A resposta declara que não consultou fonte oficial atual. |
| P6 | `01`, `02`, `04`, `05` e `06` bloqueiam uso de credencial, assinatura, protocolo e alegação de execução. | Apenas pacote para responsável humano; zero external write. |

## Gap de origem primária

O pack declara `fonte_tipo: curadoria`, `origem: agents/knowledge` e cita treze
IDs `CE-PROC-SOC-*`, além de síntese/parecer e um manifesto de fontes. Nenhum
arquivo `CE-PROC-SOC-*` ou primário correspondente existe neste repositório. A
busca integral no checkout retornou zero caminhos correspondentes. Assim:

- os dez documentos são originais binários da baseline do GPT;
- seu conteúdo é curadoria interna, não fonte oficial primária;
- os primários citados continuam **ausentes/não verificados**;
- a captura atual do editor confirma os dez nomes, mas não os bytes atuais;
- não se inventou vínculo, URL, hash ou autoridade para fechar esse gap.

Resultado: **PASS para integridade e suporte comportamental; GAP explícito para
origens primárias e paridade binária online atual**. O gap não bloqueia o runtime
operacional porque a skill exige validação oficial antes de qualquer conclusão
local, documento final, prazo ou protocolo.
