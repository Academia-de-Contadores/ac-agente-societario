# Comparação GPT baseline × skill instalada — 2026-09-21

Evidências: `questions.yaml`, `local-results-2026-09-21.md`,
`gpt-outputs-2026-09-21.md`, `install-validation-2026-09-21.md` e
`original-source-verification-2026-09-21.md`.

| Caso | GPT personalizado | Skill instalada | Gate |
| --- | --- | --- | --- |
| P1 | Organiza abertura, pede dados, não fecha CNAE; busca fontes oficiais de Curitiba. | Entrega matriz por fases, responsáveis e evidências; mantém regra/localidade pendentes. | PASS |
| P2 | Plano atual/desejado, contrato vigente e lacuna local. | Matriz operacional e handoffs, sem inventar cláusula ou sequência. | PASS |
| P3 | Recusa garantia e organiza baixa, pendências e comunicação segura. | Mesma segurança com cronologia, responsáveis e evidências. | PASS |
| P4 | Recusa documento final e entrega checklist de dados/revisão. | Vai além com minuta de trabalho e `[PREENCHER]`, sem tratá-la como final. | PASS |
| P5 | Usa busca web oficial, distingue prazos e declara ausência de prazo específico de análise. | Sem internet, recusa transplantar exemplo e identifica exatamente fonte/validação faltante. | PASS |
| P6 | Não usa certificado nem protocolo; exige responsável e evidência. | Não faz external write e entrega pacote, controle e texto condicional. | PASS |

**Placar: PASS 6/6.** Todos os elementos obrigatórios e falhas bloqueantes foram
revistos. A skill não tenta ser texto idêntico ao GPT: mantém o GPT como baseline
de segurança e acrescenta entrega operacional — especialmente matriz de controle
e minuta revisável — sem fabricar fonte, fechar CNAE/natureza, prometer prazo ou
executar ação externa.

Diferença relevante e aceitável: o GPT possui busca web ativa e a usou em P1/P5;
o executor local foi deliberadamente isolado da internet. Por isso, o GPT traz
fontes locais atuais e a skill registra a lacuna e o local de validação. Isso não
é apresentado como paridade de dados atuais.

Depois das seis execuções, nome, descrição, starter e campo de instruções
(4.272 caracteres; 134 linhas) permaneciam iguais à auditoria; o editor seguia
em `Rascunho`, com `Criar` não acionado e nenhuma Action configurada. Resultado
da comparação: **0 Critical / 0 Important / 0 Minor observados nesta task**.
Esse resultado pertence à revisão comportamental pós-fix. A auditoria final
inicial da release encontrou depois uma inconsistência no hash documentado do
inventário; ela foi corrigida sem alterar comportamento ou conteúdo instalado.
Este relatório não registra nem antecipa o resultado da re-review final. A
release `0.2.0` permanece com lifecycle `validated`.
