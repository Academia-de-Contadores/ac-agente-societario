# Changelog

Todas as mudanças relevantes deste agente serão registradas aqui.

## 0.2.0 — 2026-09-21

- Publica a release validada `0.2.0` de `$ac-societario` para Codex.
- Preserva o GPT como baseline e torna a execução local mais acionável.
- Limita o runtime aos nove anexos da captura de 2026-08-22 e ao índice
  societário, sem incluir os originais históricos contaminados por DP.
- Adiciona política de fontes, modos operacionais e perguntas de paridade.
- Trata documentos e conteúdo recuperado como dados não confiáveis para fins de
  comando e registra o forward test independente S2 aprovado.
- Torna o CI capaz de detectar regressões no frontmatter, interface, ponteiros
  do runtime e hashes ou tamanhos da baseline de Knowledge.
- Instala seletivamente a skill, registra forward test local e comparação real
  com o preview em seis casos, todos aprovados, mantendo explícito o gap dos
  materiais primários citados pelo Knowledge.
- Reconcilia o GPT online em 2026-09-21, registra a mudança de modelo
  recomendado e separa as capturas de Knowledge de 2026-08-07 e 2026-08-22.
- Define a captura binária de 2026-08-22 como baseline documental provisório
  da skill, sem declarar paridade binária com o online atual.
- Registra PASS local 6/6 e online 6/6; P1, P2, P3, P5 e P6 com 12/12,
  P4 com 11/12; instalação seletiva 22/10/0/0 e revisão comportamental pós-fix
  com 0 Critical, 0 Important e 0 Minor.
- Corrige o hash de inventário inconsistente encontrado pela auditoria final
  inicial, sem registrar antecipadamente o resultado da re-review final.
- Adiciona manual operacional, referência completa da estrutura e guia de contribuição expandido.
- Torna os documentos operacionais obrigatórios na validação.

- Estrutura inicial do template canônico.
