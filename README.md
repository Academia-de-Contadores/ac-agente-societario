# Agente Societário Oficial

| Campo | Valor |
| --- | --- |
| ID | `ac.societario` |
| Skill | `$ac-societario` |
| GPT representado | [`g-6a725963258081919e7c1824531b1b6d`](https://chatgpt.com/gpts/editor/g-6a725963258081919e7c1824531b1b6d) |
| Versão | `0.2.0` |
| Lifecycle | `validated` |

## Propósito

Apoia abertura, alteração, baixa, viabilidade, documentos, órgãos, minutas
revisáveis e comunicação com clientes. A skill entrega orientação e material de
trabalho mesmo quando ainda faltam dados, sem transformar hipótese em conclusão
jurídica nem executar ações externas sem aprovação.

Este repositório é a fonte de verdade do agente existente e contém a skill
validada `$ac-societario`. O GPT online permanece como baseline preservado. A
skill é deliberadamente mais acionável: pode produzir checklist, matriz de
responsáveis, mensagem e minuta de trabalho revisável, mas não inventa fonte,
exigência, prazo, protocolo, registro ou decisão final.

## Knowledge distribuível

O runtime usa somente dez arquivos já preservados no repositório: nove da
captura `knowledge/live-2026-08-22/` e
`knowledge/original/00-INDICE-SOCIETARIO.md`. Os outros nove arquivos de
`knowledge/original/` permanecem apenas para auditoria histórica porque exibem
sinais de contaminação de DP. Eles não devem ser copiados para a instalação.

Essa baseline é provisória: os dez nomes foram reconfirmados no editor em
2026-09-21, mas os bytes atuais não puderam ser baixados. A release não afirma
paridade binária com o online atual.

A release `0.2.0` passou nos seis casos locais e nos seis casos do GPT online.
Na rubrica de 12 pontos, P1, P2, P3, P5 e P6 obtiveram 12/12 e P4 obteve
11/12. A instalação seletiva mantém 22 arquivos regulares, dez arquivos de
Knowledge e nenhum symlink ou `.gitkeep`. A revisão comportamental pós-fix
registrou zero achados Critical, Important ou Minor. A auditoria final inicial
da release encontrou um hash de inventário inconsistente; ele foi corrigido sem
antecipar o resultado da re-review final. O relatório durável está em
`evaluations/parity/release-validation-2026-09-21.md`.

## Invocação

Após a instalação seletiva descrita em `HOW-TO-USE.md`, use por exemplo:

```text
Use $ac-societario com /abertura para montar o checklist desta empresa e destacar o que ainda preciso confirmar.
```

Os modos disponíveis são `/triagem`, `/abertura`, `/alteracao`, `/baixa`,
`/viabilidade`, `/minuta`, `/documentos` e `/mensagem-cliente`. A skill não
declara Action, MCP ou conector e não opera portais por conta própria.

## Usar e manter este agente

1. Leia `objectives/`, `identity/` e `instructions/` antes de operar ou alterar o
   agente; esses diretórios definem missão, papel, comportamento e limites.
2. Para instalar somente o pacote distribuível ou adaptar esta versão, siga `HOW-TO-USE.md` e use
   `agent.yaml` como índice dos componentes canônicos.
3. O entrypoint distribuível é o `SKILL.md` na raiz. Registre procedimentos
   internos adicionais em `skills/`, fontes curadas em `knowledge/` e contratos
   externos em `connectors/`; nunca registre credenciais.
4. Adicione avaliações para cada mudança comportamental e execute:

   ```bash
   bash tests/validate-agent-repo.test.sh
   bash scripts/validate-agent-repo.sh
   ```

5. Siga o processo de contribuição antes de abrir um pull request.

## Guias do repositório

- [Como usar e reconstruir o agente](HOW-TO-USE.md)
- [Estrutura e destino de cada arquivo](docs/REPOSITORY-STRUCTURE.md)
- [Como contribuir](governance/CONTRIBUTING.md)
- [Política de dados e segredos](governance/DATA-AND-SECRETS.md)
- [Política de mudanças](governance/CHANGE-POLICY.md)

## Proteções versionadas e verificáveis

O `.gitignore` reduz o risco de adicionar artefatos locais conhecidos, e
`scripts/validate-agent-repo.sh` rejeita arquivos proibidos, artefatos RAG locais
e arquivos maiores que 5 MB. O workflow `validate` executa esse validador em
pull requests e pushes para `main`. O `CODEOWNERS` solicita revisão para áreas
sensíveis. Workflow e `CODEOWNERS`, isoladamente, não provam bloqueio de merge;
branch protection, rulesets, visibilidade e demais controles devem ser
confirmados na configuração remota. Consulte `reports/task-3-report.md` para a
evidência local e seus limites.
