# Ficha de captura da fonte

## Estado reconfirmado em 2026-09-21

- **source_status:** accessible; inspeção somente leitura no editor autenticado.
- **Auditoria corrente:** [live-editor-audit-2026-09-21.md](live-editor-audit-2026-09-21.md).
- **Instruções:** o campo integral coincide com o corpo canônico de
  `instructions/system.md` após normalização de bordas e quebras de linha
  (4.272 bytes; SHA-256
  `bc4e1a6d10fe54905a8f757dd1a24f8cdedb2891b67fc0c9b533fba0ad31d3f0`).
- **Nome, descrição e starter:** iguais à captura histórica. O sufixo `(copy)`
  continua no nome exibido e existe um único starter preenchido.
- **Modelo recomendado:** o seletor mostra `Thinking 5.6`; o cartão de prévia
  mostra `GPT-5.6 Sol`. Os dois rótulos foram preservados sem inferir um ID
  interno.
- **Capacidades nativas:** busca na web ativada; geração de imagens e
  intérprete de código/análise de dados desativados.
- **Actions:** nenhuma Action configurada aparece; somente `Criar nova ação`.
- **Knowledge:** dez nomes reconfirmados. A tentativa de obter novo download
  não produziu um binário acessível; portanto, a igualdade binária do estado
  online atual permanece não verificada.
- **Última captura binária comprovada:** 2026-08-22, composta por nove arquivos
  em `knowledge/live-2026-08-22/` e pelo índice
  `knowledge/original/00-INDICE-SOCIETARIO.md`.
- **Distribuição:** o cabeçalho mostra `Rascunho` e o botão `Criar`. A
  privacidade não foi reconfirmada por um controle explícito de
  compartilhamento.
- **Mutação online:** nenhuma. Não houve edição, remoção, upload, criação de
  Action nem acionamento de `Criar`.

## Registro histórico — 2026-08-06

- **source_status:** accessible
- **data da captura:** 2026-08-06
- **URL exata do editor/fonte:** https://chatgpt.com/gpts/editor/g-6a725963258081919e7c1824531b1b6d
- **nome no editor:** Agente Societário — Contadora CEO | Oficial (copy)
- **distribuição observada:** rascunho privado
- **responsável:** Academia-de-Contadores
- **método de recuperação:** inspeção somente leitura da configuração no editor autenticado; nenhuma conversa pública foi usada.
- **status de recuperação:** nome, descrição, instruções, starters, metadados do Knowledge, modelo e capacidades acessíveis; conteúdo dos anexos e configuração de autenticação/endpoint não recuperados.

### Campos acessíveis na captura inicial

- **Descrição:** Apoia abertura, alteração e baixa com checklists, documentos, minutas revisáveis, lacunas e revisão humana.
- **Quebra-gelos:** `Preciso de ajuda com o Societário`.
- **Modelo recomendado:** Nenhum modelo recomendado, os usuários usarão qualquer modelo que preferirem. Este valor é histórico e foi substituído pelo estado reconfirmado acima.
- **Busca na web:** ativada.
- **Geração de imagens:** desativada.
- **Intérprete de código/análise de dados:** desativado.
- **Actions:** a interface mostrou somente a opção de criar nova Action; esquema, autenticação e endpoint não ficaram visíveis.
- **Knowledge (somente nomes e tipos visíveis):**
  - `06-GUARDRAILS-E-CLAIMS-BLOQUEADOS.md`
  - `00-INDICE-SOCIETARIO.md`
  - `07-MODELOS-DE-RESPOSTA-E-CHECKLISTS.md`
  - `08-LACUNAS-E-ROADMAP.md`
  - `03-FONTES-CANONICAS.md`
  - `99-FONTES-LACUNAS-E-CONTROLE-DE-VERSAO.md`
  - `01-REGRAS-DE-USO-E-LIMITES.md`
  - `04-SKILLS-E-CENARIOS-DE-USO.md`
  - `02-ESCOPO-E-ROTEAMENTO.md`
  - `05-PERGUNTAS-TESTE-E-RESPOSTAS-ESPERADAS.md`

### Mapeamento canônico na captura inicial

- **Objetivos:** descrição do editor e escopo expresso nas instruções; ver `objectives/`.
- **Identidade:** trecho explícito de identidade capturado; ver `identity/identity.md`.
- **Soul/tom:** source_status: unavailable; o editor não expõe campo Soul separado; ver `identity/soul.md`.
- **Instruções:** campo integral, sem wrapper específico do GPT Builder, em `instructions/system.md`.
- **Guardrails:** índice das seções `Risco e limite`, `Risco e limite`, `Claims e decisoes bloqueadas` em `instructions/guardrails.md`; o texto normativo permanece em `instructions/system.md` para evitar duplicação.
- **Workflows:** índice das seções `Formato obrigatorio de resposta`, `Rota identificada`, `Handoffs aceitos`, `Resposta padrao`, `Rota identificada` em `instructions/workflows/main.md`.
- **Skills:** padrões comportamentais estavam no campo de instruções e em nomes de anexos; os corpos ainda não haviam sido acessados nessa captura inicial.
- **Conectores:** nenhum conector canônico configurado; capacidades de plataforma foram registradas apenas como metadados.
- **Knowledge:** somente metadados de nomes/tipos naquela captura; as recuperações binárias posteriores estão registradas abaixo.

### Dados omitidos na captura inicial

Foram deliberadamente omitidos tokens, credenciais, autenticação, endpoints privados,
conversas de usuários, dados de clientes, logs, arquivos anexos, corpus, índices RAG
e qualquer duplicação específica da plataforma. A linha de instrução destinada ao
campo “Instructions” do GPT Builder e títulos equivalentes foram removidos como
wrapper de plataforma; o comportamento substantivo foi preservado.

## Atualização — recuperação integral do Knowledge (2026-08-07)

- Os 10 anexos exibidos no editor foram baixados diretamente e preservados em `knowledge/original/`.
- `knowledge/MANIFEST.md` registra nome, tamanho e SHA-256 de cada arquivo.
- Esta atualização substitui, para o estado atual do repositório, as observações históricas acima que diziam que os corpos dos anexos não haviam sido recuperados.
- Tokens, credenciais, conversas de usuários, dados de clientes, logs e índices externos continuam fora do repositório.

## Atualização — Knowledge ao vivo (2026-08-22)

- Nove anexos foram baixados novamente e diferiam da captura de 2026-08-07;
  estão preservados em `knowledge/live-2026-08-22/`.
- O índice `00-INDICE-SOCIETARIO.md` permaneceu igual ao original de 2026-08-07.
- O conjunto binário de 2026-08-22 é a última captura histórica comprovada do
  Knowledge ativo; veja `knowledge/live-2026-08-22/MANIFEST.md`.
- A reconfirmação visual de 2026-09-21 não substitui essa data nem comprova que
  os bytes online atuais continuam iguais.
