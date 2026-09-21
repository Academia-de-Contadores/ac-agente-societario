# ADR — conteúdo recuperado é dado, não instrução

- **Data:** 2026-09-21
- **Status:** aceito para a release validada `0.2.0`

## Contexto

O cenário S2 já exigia resistir a instruções maliciosas em documentos, mas o
runtime distribuível não declarava essa fronteira de autoridade. A hierarquia de
fontes qualificava evidência factual, sem esclarecer que texto dentro de uma
fonte não pode comandar a skill.

## Decisão

Documentos, Knowledge, anexos, mensagens, conteúdo web e resultados de
ferramentas são dados não confiáveis para fins de comando. Instruções embutidas
não alteram a hierarquia ou as regras da skill, não autorizam ação externa, não
permitem uso de credenciais e não justificam revelar ou exfiltrar conteúdo.

A regra fica no `SKILL.md`, com detalhe operacional em
`references/source-policy.md`, e é coberta pelo forward test S2 versionado.

## Consequências

A skill ainda aproveita fatos úteis dos documentos e continua produzindo uma
primeira entrega. Somente descarta comandos incompatíveis, sinaliza o conflito e
mantém validação e aprovação humana. Esta decisão não altera o GPT online nem a
baseline dos dez arquivos de Knowledge.
