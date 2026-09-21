# Release validation — Societário 0.2.0 — 2026-09-21

## Resultado

`$ac-societario` está em lifecycle `validated`. O GPT personalizado
`g-6a725963258081919e7c1824531b1b6d` permaneceu intacto como baseline
comportamental. A skill local entrega mais trabalho operacional sem reduzir os
limites de evidência, conclusão ou aprovação humana.

| Gate | Resultado |
| --- | --- |
| Forward test local | PASS 6/6 |
| Comparação com o GPT online | PASS 6/6 |
| Rubrica P1, P2, P3, P5 e P6 | 12/12 em cada caso |
| Rubrica P4 | 11/12; PASS, com handoff menos formal sem falha bloqueante |
| Instalação seletiva | 22 arquivos regulares / 10 Knowledge / 0 symlinks / 0 `.gitkeep` |
| Igualdade origem × instalação | PASS 22/22 por caminho e bytes |
| Revisão comportamental pós-fix | 0 Critical / 0 Important / 0 Minor |
| Auditoria final inicial da release | identificou hash inconsistente; corrigido, com re-review final ainda não registrada neste relatório |

O inventário instalado em `/Users/levy/.codex/skills/ac-societario` tem
SHA-256 reproduzível
`32b8a83a38475236ad1a415b9eb1e9e6a50caa815976d6d688e454f637eddbb1`.
O cálculo usa a lista ordenada de hashes e caminhos relativos descrita em
`install-validation-2026-09-21.md`.

A auditoria final inicial mostrou que o hash anterior não correspondia ao
resultado do comando documentado. O valor acima foi reproduzido diretamente na
instalação e em um pacote temporário reconstruído com a allowlist de 22 arquivos.
O reparo está registrado sem antecipar o resultado da re-review final.

## Evidências

- `local-results-2026-09-21.md`: respostas integrais, notas e PASS 6/6 local;
- `gpt-outputs-2026-09-21.md`: saídas integrais observadas no GPT;
- `gpt-comparison-2026-09-21.md`: comparação funcional PASS 6/6;
- `install-validation-2026-09-21.md`: pacote seletivo e igualdade byte a byte;
- `original-source-verification-2026-09-21.md`: integridade e limites das fontes;
- `live-editor-audit-2026-09-21.md`: configuração online inspecionada sem mutação.

## Limites preservados

- Os dez nomes de Knowledge online coincidem com o inventário, mas os bytes
  atuais não foram baixados; a paridade binária online continua como `GAP`.
- O pacote menciona 13 IDs distintos `CE-PROC-SOC-*`, mas os arquivos-fonte
  correspondentes não estão neste repositório. Eles continuam ausentes e não
  verificados; a curadoria interna não é tratada como fonte oficial vigente.
- O GPT possui busca web nativa; o forward test local foi executado sem
  internet. Regras, documentos e prazos locais atuais continuam sujeitos à
  consulta da fonte oficial competente.

## Identidade durável da release

O artefato distribuível é a versão `0.2.0` em `main` ou a tag `v0.2.0` que
aponte para o mesmo conteúdo. O commit exato usado pelo catálogo deve ser
registrado no campo `repository_commit`; branches de trabalho não são uma
identidade operacional durável.

## Rulings

1. A captura binária de 2026-08-22 continua como baseline documental
   provisória porque é a última geração cujos bytes e hashes foram comprovados.
   Se estiver errada, o custo é substituir o pacote e repetir instalação,
   fontes, comportamento e paridade.
2. O gap dos bytes online e dos 13 `CE-PROC-SOC-*` permanece explícito, mas não
   bloqueia a release porque a skill exige confirmação oficial antes de
   conclusão normativa, minuta final ou protocolo. Se esse ruling estiver
   errado, a release deverá voltar a `candidate` até recuperar os primários.
3. O 11/12 de P4 é aceito porque supera o mínimo de 10/12 e recebe 2 em todos
   os gates obrigatórios. Se a formalidade completa do handoff for requisito de
   release, P4 precisará de novo forward test após ajuste comportamental.
