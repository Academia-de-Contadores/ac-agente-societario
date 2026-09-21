# Validação da instalação seletiva — 2026-09-21

- Base da preparação da release: `1132fa3a257e6301bde5782b82c68ff577f5bba3`.
- Origem: worktree `societario-skill-ready`.
- Destino: `/Users/levy/.codex/skills/ac-societario`.
- Congelamento dos casos: `2026-09-21T06:48:09Z`.
- SHA-256 de `questions.yaml`:
  `8509b43986d6fa56e4bab1e96245a9525d0ccc8354f8f2b8565235c7f39d8532`.

O destino não existia e não era symlink. Foi criado sem remover ou sobrescrever
instalação anterior. A cópia usou somente a allowlist documentada em
`HOW-TO-USE.md`: `SKILL.md`, `agent.yaml`, interface, duas referências, identidade,
objetivos, duas instruções e os dez arquivos de Knowledge declarados. A captura
histórica contaminada `knowledge/original/01..99`, avaliações, scripts, testes,
governança e arquivos de manutenção ficaram fora.

| Verificação | Resultado |
| --- | --- |
| Arquivos regulares | 22 |
| Knowledge | 10/10, na ordem de `skill_runtime.knowledge` |
| Symlinks / `.gitkeep` | 0 / 0 |
| `quick_validate.py` na origem | `Skill is valid!` |
| `quick_validate.py` na instalação | `Skill is valid!` |
| Igualdade de caminhos e bytes | PASS 22/22 |
| Validador específico da skill | PASS |
| Hash do inventário antes de anexar referências de evidência | `a3d92140aad22c114bcde7ce2103bed4c55c2fd9b5fef773c0cbdbca63945f50` |

O hash de inventário é calculado no destino por
`find . -type f -exec shasum -a 256 {} + | LC_ALL=C sort -k 2 | shasum -a 256`.
O manifesto instalado é sincronizado novamente após incluir as evidências; a
verificação final deste relatório registra o hash pós-sincronização.

## Verificação final pós-sincronização

`agent.yaml` com versão `0.2.0` e lifecycle `validated` foi sincronizado para o
destino. Os dois `quick_validate.py`, o validador específico, o validador do
repositório, a suíte de testes, a igualdade byte a byte 22/22 e
`git diff --check` passaram. O inventário final instalado permaneceu com 22
arquivos e passou a ter SHA-256
`32b8a83a38475236ad1a415b9eb1e9e6a50caa815976d6d688e454f637eddbb1`.
Os dez arquivos de Knowledge continuam presentes; symlinks e `.gitkeep`
continuam em zero.

A auditoria final inicial da release identificou que o hash anteriormente
registrado não era reproduzido pelo comando documentado. O valor acima foi
recalculado tanto na instalação quanto em um pacote temporário reconstruído com
a mesma allowlist; ambos produziram exatamente o mesmo SHA-256. Esta correção
não registra nem antecipa o resultado da re-review final da release.
