# Auditoria do editor — Societário — 2026-09-21

## Escopo e método

- **Editor:** https://chatgpt.com/gpts/editor/g-6a725963258081919e7c1824531b1b6d
- **Método:** inspeção somente leitura pelo navegador interno autenticado, na
  aba `Configurar`, usando a árvore de acessibilidade e os valores dos campos.
- **Limite:** nenhum campo foi editado; não houve remoção, upload, criação de
  Action, publicação nem acionamento do botão `Criar`.

`MATCH` significa que a paridade foi comprovada no nível indicado. `GAP`
significa divergência ou evidência insuficiente. A auditoria separa o estado
visual atual das capturas binárias históricas.

## Comparação do editor com o repositório

| Campo | Online em 2026-09-21 | Repositório | Evidência | Resultado |
| --- | --- | --- | --- | --- |
| Nome | `Agente Societário — Contadora CEO \| Oficial (copy)` | Mesmo nome em `source-capture.md`; `agent.name` preserva o nome canônico sem `(copy)` | Campo Nome e cabeçalho | MATCH — sufixo do editor não virou identidade canônica |
| Descrição | `Apoia abertura, alteração e baixa com checklists, documentos, minutas revisáveis, lacunas e revisão humana.` | Mesmo texto na captura | Campo Descrição integral | MATCH |
| Starter preenchido | `Preciso de ajuda com o Societário` | Mesmo texto na captura | Primeiro campo; segundo campo vazio | MATCH |
| Instruções | 4.272 bytes ASCII normalizados, 134 linhas | Corpo de `instructions/system.md` | SHA-256 idêntico; método abaixo | MATCH |
| Modelo recomendado | seletor: `Thinking 5.6`; prévia: `GPT-5.6 Sol` | captura inicial dizia “nenhum modelo recomendado” | Rótulo selecionado e cartão da prévia; nenhum ID interno inferido | GAP — mudança histórica documentada |
| Busca na web | ativada | ativada na captura | checkbox marcado | MATCH — capacidade nativa |
| Geração de imagens | desativada | desativada na captura | checkbox desmarcado | MATCH — capacidade nativa |
| Intérprete de código/análise de dados | desativado | desativado na captura | checkbox desmarcado | MATCH — capacidade nativa |
| Actions | nenhuma configurada visível; somente `Criar nova ação` | `connectors: []` | seção Ações sem item ou endpoint | MATCH — ausência observável |
| Knowledge: nomes/quantidade | dez anexos listados abaixo | dez nomes preservados | lista do editor | MATCH — somente inventário visual |
| Knowledge: bytes atuais | download atual não obtido | capturas de 2026-08-07 e 2026-08-22 preservadas | tentativa de abertura não forneceu arquivo acessível | GAP — paridade binária atual não comprovada |
| Distribuição: estado | `Rascunho`, botão `Criar` | captura histórica: rascunho | cabeçalho | MATCH — estado de rascunho |
| Distribuição: privacidade | não exibida explicitamente | captura histórica: privado | fluxo de criação/publicação não foi aberto | GAP — privacidade não reconfirmada |

As capacidades nativas são metadados do GPT Builder e não viram conectores da
skill automaticamente. A ausência de Action não autoriza inventar um endpoint.

## Instruções: paridade criptográfica

Normalização aplicada nos dois lados: converter CRLF/CR em LF e remover apenas
espaço em branco nas bordas. Como o corpo é ASCII, caracteres JavaScript e
bytes UTF-8 têm a mesma contagem.

| Objeto | Bytes | Linhas | SHA-256 |
| --- | ---: | ---: | --- |
| Campo online normalizado | 4272 | 134 | `bc4e1a6d10fe54905a8f757dd1a24f8cdedb2891b67fc0c9b533fba0ad31d3f0` |
| Corpo canônico normalizado | 4272 | 134 | `bc4e1a6d10fe54905a8f757dd1a24f8cdedb2891b67fc0c9b533fba0ad31d3f0` |
| `instructions/system.md` completo | 4635 | — | `aa4213af322580474b19320c707f072f0e0f39dbe226c75682d0f9acb154c304` |

O corpo canônico começa no marcador YAML `---\ntitle:`; o cabeçalho de
proveniência do arquivo local não faz parte do campo online.

## Knowledge: inventário atual e capturas preservadas

O editor exibiu, nesta ordem:

1. `06-GUARDRAILS-E-CLAIMS-BLOQUEADOS.md`
2. `00-INDICE-SOCIETARIO.md`
3. `07-MODELOS-DE-RESPOSTA-E-CHECKLISTS.md`
4. `08-LACUNAS-E-ROADMAP.md`
5. `03-FONTES-CANONICAS.md`
6. `99-FONTES-LACUNAS-E-CONTROLE-DE-VERSAO.md`
7. `01-REGRAS-DE-USO-E-LIMITES.md`
8. `04-SKILLS-E-CENARIOS-DE-USO.md`
9. `02-ESCOPO-E-ROTEAMENTO.md`
10. `05-PERGUNTAS-TESTE-E-RESPOSTAS-ESPERADAS.md`

Os mesmos dez nomes existem nas duas gerações preservadas, mas nove arquivos
mudaram de conteúdo entre 2026-08-07 e 2026-08-22. O índice permaneceu igual.

| Arquivo | Captura 2026-08-07 | Última captura binária ativa, 2026-08-22 | Estado online atual |
| --- | --- | --- | --- |
| `00-INDICE-SOCIETARIO.md` | `ef3bef2bbcad09f7719f902a7197370cb2fe5e5305cfe0cc125b65b731ba0ff0` | mesmo arquivo em `original/` | nome MATCH; bytes GAP |
| `01-REGRAS-DE-USO-E-LIMITES.md` | `53f52cc81668c5b0cdfb9a267ce4c694aa6b04661e9e01cf0f4da8381c0bba79` | `e43d266665eb75e0ce70ccb3c81d44522361ac0eab2cafdc7097784b970d0bf2` | nome MATCH; bytes GAP |
| `02-ESCOPO-E-ROTEAMENTO.md` | `50e4f5c43ff8471e27e341ada3c112685c98da3b761d598482655fc217f4a6b7` | `f33fb3d1913b41d883df2bca26cb90031d355fa875e281982b6a5c88912d19cf` | nome MATCH; bytes GAP |
| `03-FONTES-CANONICAS.md` | `02353d1c992659f2cde283ddc3fa72cf9990363dca4b8afbbb5d68fe85d3115a` | `7e950c1273506dd5407a65071ec5c6c2358ba9674135259178c8909fa63db5a6` | nome MATCH; bytes GAP |
| `04-SKILLS-E-CENARIOS-DE-USO.md` | `6913372aada02f901f9402a09647f60d56005b9f600b972e3be7daafcc1bd3af` | `21ebc0850b6c0f55bb1cc161eeff10c2def22e7d3c4910400cbae8c682cc5376` | nome MATCH; bytes GAP |
| `05-PERGUNTAS-TESTE-E-RESPOSTAS-ESPERADAS.md` | `a2b4cf8964be07b0d88dd6d415a122fb3fbca6bf80fb946947e67be454718fa3` | `e4234c4ee9cb1b927cd3aae8e298d653903a19ef6e3dd9c72acd66ab84b88a81` | nome MATCH; bytes GAP |
| `06-GUARDRAILS-E-CLAIMS-BLOQUEADOS.md` | `4772eee8f4e4e276560b6434037bebcbe2f4f85ba59f289106635cf8623902c5` | `85569279cb7095e4b44d295027be3b5bc88f5bd711663f5d276a44b541a9282a` | nome MATCH; bytes GAP |
| `07-MODELOS-DE-RESPOSTA-E-CHECKLISTS.md` | `c5b302e56ecb817b59e5351071b3775bb56f2ce3ec7c2034ee156806feb69aa2` | `039435c61b72f07a56f97d54953553b4922bbc15dc7d6aa46eba499370fcf20a` | nome MATCH; bytes GAP |
| `08-LACUNAS-E-ROADMAP.md` | `20931e6c393e3e6e662d1e1526e672dc029e3476fafaf789f68e4097002287ec` | `1a9d97b3afd2ab51872819f6c5d2887c0fc38d165e884852e09c694302d5b2e3` | nome MATCH; bytes GAP |
| `99-FONTES-LACUNAS-E-CONTROLE-DE-VERSAO.md` | `05374b6ce9247236d4eb62a9c216193b585e6169ec7fe2d94670da8eaf4bc71a` | `77479df98ffd111deea0d50b8711195c91213b3dec69fa3be4c35635b10a40ba` | nome MATCH; bytes GAP |

Os hashes locais das duas gerações foram recalculados em 2026-09-21 e conferem
com seus manifestos históricos. A tabela não afirma qual geração está online
hoje sem um novo download.

## Origem e lacunas dos anexos

- A geração de 2026-08-22 declara `fonte_tipo: curadoria`,
  `origem: agents/knowledge` e `confiabilidade: interna_curada`.
- Ela referencia um manifesto de 36 fontes societárias, uma síntese, um parecer
  e documentos `CE-PROC-SOC-*`, mas esses arquivos-fonte não existem neste
  repositório. A origem é declarada, não revalidada contra os primários.
- A geração de 2026-08-07 contém sinais de contaminação de outra família:
  vários títulos dizem `Agente DP`, e os arquivos `01` e `99` declaram
  `origem: knowledge/dp`. Ela deve permanecer histórica.
- Nenhuma URL oficial específica sustenta integralmente o pack de 2026-08-22;
  ele próprio exige conferir Junta, REDESIM, Receita, prefeitura e sistemas
  vigentes antes de aplicar uma conclusão.

## Decisão para a skill

Usar como baseline documental provisório da release validada a última captura binária comprovada:
os nove arquivos de `knowledge/live-2026-08-22/` mais
`knowledge/original/00-INDICE-SOCIETARIO.md`. Preservar `knowledge/original/`
como histórico e não misturá-lo silenciosamente ao runtime. O GPT online
continua sendo o baseline comportamental; a skill poderá ser mais útil e menos
conservadora, mas não poderá transformar curadoria interna em fonte oficial,
inventar evidência ou fechar natureza jurídica, CNAE, minuta ou protocolo sem
dados e validação adequados.

Esta decisão é reversível se um novo download provar que o Knowledge online
atual corresponde a outra geração.
