# Ficha de captura da fonte

- **source_status:** accessible
- **data da captura:** 2026-08-06
- **URL exata do editor/fonte:** https://chatgpt.com/gpts/editor/g-6a725963258081919e7c1824531b1b6d
- **nome no editor:** Agente Societário — Contadora CEO | Oficial (copy)
- **distribuição observada:** rascunho privado
- **responsável:** Academia-de-Contadores
- **método de recuperação:** inspeção somente leitura da configuração no editor autenticado; nenhuma conversa pública foi usada.
- **status de recuperação:** nome, descrição, instruções, starters, metadados do Knowledge, modelo e capacidades acessíveis; conteúdo dos anexos e configuração de autenticação/endpoint não recuperados.

## Campos acessíveis

- **Descrição:** Apoia abertura, alteração e baixa com checklists, documentos, minutas revisáveis, lacunas e revisão humana.
- **Quebra-gelos:** `Preciso de ajuda com o Societário`.
- **Modelo recomendado:** Nenhum modelo recomendado, os usuários usarão qualquer modelo que preferirem.
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

## Mapeamento canônico

- **Objetivos:** descrição do editor e escopo expresso nas instruções; ver `objectives/`.
- **Identidade:** trecho explícito de identidade capturado; ver `identity/identity.md`.
- **Soul/tom:** source_status: unavailable; o editor não expõe campo Soul separado; ver `identity/soul.md`.
- **Instruções:** campo integral, sem wrapper específico do GPT Builder, em `instructions/system.md`.
- **Guardrails:** índice das seções `Risco e limite`, `Risco e limite`, `Claims e decisoes bloqueadas` em `instructions/guardrails.md`; o texto normativo permanece em `instructions/system.md` para evitar duplicação.
- **Workflows:** índice das seções `Formato obrigatorio de resposta`, `Rota identificada`, `Handoffs aceitos`, `Resposta padrao`, `Rota identificada` em `instructions/workflows/main.md`.
- **Skills:** padrões comportamentais estão no campo de instruções e em nomes de anexos; os corpos dos anexos não foram acessados, portanto nenhuma skill independente foi inventada.
- **Conectores:** nenhum conector canônico configurado; capacidades de plataforma foram registradas apenas como metadados.
- **Knowledge:** somente metadados de nomes/tipos; corpos, corpus, índices e exports não foram copiados.

## Dados omitidos

Foram deliberadamente omitidos tokens, credenciais, autenticação, endpoints privados,
conversas de usuários, dados de clientes, logs, arquivos anexos, corpus, índices RAG
e qualquer duplicação específica da plataforma. A linha de instrução destinada ao
campo “Instructions” do GPT Builder e títulos equivalentes foram removidos como
wrapper de plataforma; o comportamento substantivo foi preservado.
