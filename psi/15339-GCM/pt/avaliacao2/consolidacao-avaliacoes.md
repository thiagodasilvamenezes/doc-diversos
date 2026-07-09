# Consolidação das Avaliações da Produção Temática

**Tema:** Proposta de atuação de um Integrador de Código
**Candidatos avaliados:** 7, 8 e 9
**Fontes consolidadas:** três pareceres independentes localizados em `psi/pt/avaliacao2/`
**Data da consolidação:** 24/06/2026

---

## 1. Pareceres consolidados

| ID | Arquivo | Origem provável | Peso total | Total subcritérios |
|---|---|---|:-:|---|
| **B-CO** | [avaliacao-co.md](../psi/pt/avaliacao2/avaliacao-co.md) | Copilot / Claude | 100 | A=14, B=16, C=18, D=16, E=10, F=12, G=14 |
| **B-G** | [avaliacao-g.md](../psi/pt/avaliacao2/avaliacao-g.md) | ChatGPT (presumido) | 100 | A=12, B=16, C=20, D=16, E=12, F=14, G=10 |
| **B-GG** | [avaliacao-gg.md](../psi/pt/avaliacao2/avaliacao-gg.md) | Gemini | 100 | A=10, B=15, C=20, D=15, E=15, F=10, G=10, Formato=5 |

> As três bancas derivaram réguas de avaliação distintas a partir do mesmo enunciado (que não traz pesos por subitem). As distribuições diferem em ênfase relativa, mas todas somam 100.

---

## 2. Notas finais por banca

| Candidato | B-CO | B-G | B-GG | **Média simples** | **Mediana** |
|---|:-:|:-:|:-:|:-:|:-:|
| **C7** | 83 | 94 | 99 | **92,0** | 94 |
| **C8** | 92 | 88 | 95 | **91,7** | 92 |
| **C9** | 91 | 98 | 98 | **95,7** | 98 |

**Amplitude entre bancas:**

| Candidato | Mínima | Máxima | Spread |
|---|:-:|:-:|:-:|
| C7 | 83 (B-CO) | 99 (B-GG) | **16** |
| C8 | 88 (B-G) | 95 (B-GG) | **7** |
| C9 | 91 (B-CO) | 98 (B-G/B-GG) | **7** |

C7 é o candidato com maior divergência entre bancas: a B-CO penaliza-o por menor profundidade técnica, enquanto a B-GG o premia justamente pela ausência de artefatos formais e por aderência integral ao formato.

---

## 3. Rankings por banca e consenso

| Posição | B-CO | B-G | B-GG | **Consenso (Borda)** |
|:-:|---|---|---|---|
| 1º | C8 (92) | C9 (98) | C7 (99) | **C9** |
| 2º | C9 (91) | C7 (94) | C9 (98) | **C7** |
| 3º | C7 (83) | C8 (88) | C8 (95) | **C8** |

**Borda count** (1 ponto para cada posição mais alta; menor soma = melhor):
- **C9:** 2 + 1 + 2 = **5** → 1º
- **C7:** 3 + 2 + 1 = **6** → 2º
- **C8:** 1 + 3 + 3 = **7** → 3º

**Consenso:** *C9 > C7 > C8* — coincide com a ordem da média simples e da mediana.

---

## 4. Comparativo por critério (notas normalizadas em escala 0–100)

Para permitir comparação direta entre as três réguas, cada nota foi normalizada como `(nota / peso) × 100` por subitem A–G. Quando uma banca não atribuiu nota explícita em algum critério, foi marcado "—".

| Critério | C7 (CO/G/GG) | C8 (CO/G/GG) | C9 (CO/G/GG) | **Média C7** | **Média C8** | **Média C9** |
|---|---|---|---|:-:|:-:|:-:|
| **A** | 85,7 / 100 / 100 | 100 / 91,7 / 100 | 85,7 / 100 / 100 | **95,2** | **97,2** | **95,2** |
| **B** | 87,5 / 93,8 / 100 | 93,8 / 87,5 / 100 | 87,5 / 100 / 100 | **93,8** | **93,8** | **95,8** |
| **C** | 83,3 / 95,0 / 100 | 94,4 / 90,0 / 100 | 94,4 / 100 / 100 | **92,8** | **94,8** | **98,1** |
| **D** | 81,3 / 93,8 / 93,3 | 100 / 87,5 / 100 | 93,8 / 93,8 / 100 | **89,4** | **95,8** | **95,9** |
| **E** | 80,0 / 91,7 / 100 | 90,0 / 83,3 / 100 | 90,0 / 100 / 100 | **90,6** | **91,1** | **96,7** |
| **F** | 83,3 / 92,9 / 100 | 100 / 85,7 / 100 | 91,7 / 100 / 100 | **92,1** | **95,2** | **97,2** |
| **G** | 78,6 / 90,0 / 100 | 92,9 / 90,0 / 100 | 92,9 / 90,0 / 100 | **89,5** | **94,3** | **94,3** |

**Leitura:**
- **C9** lidera em **B (estratégia), C (operacionalização), D (sustentação), E (matricial) e F (governança)** — pontos onde os estágios E1–E5 e o detalhamento de PR/CODEOWNERS pesam.
- **C8** lidera em **A (compreensão)** por densidade técnica e enquadramento regulatório.
- **C7** lidera em **formato/conformidade**, mas perde tração nos critérios técnicos onde sua redação é mais genérica.

---

## 5. Indício de geração por IA (consolidado)

| Candidato | B-CO | B-G | B-GG | **Média** | **Faixa consensual** |
|---|:-:|:-:|:-:|:-:|:-:|
| **C7** | 80% | 35% | 35% | **50,0%** | Baixa a alta (divergência ampla) |
| **C8** | 97% | 75% | 100% | **90,7%** | **Muito alta** (consenso forte) |
| **C9** | 95% | 55% | 85% | **78,3%** | Alta (consenso médio) |

**Evidências objetivas citadas pelas três bancas:**

- **C8 — convergência total:** as três bancas identificaram os marcadores `[cite: N]` deixados no texto como prova material de geração por IA com *grounding* (Gemini Pro / NotebookLM ou similar). Citações textuais de C8 também violam a regra "sem informações confidenciais" (FusionX, ServiceNow SPM, Red Hat Developer Hub, infranprd, classe Normal 10 dias).
- **C9 — convergência parcial:** B-CO e B-GG apontam o cabeçalho técnico padronizado ("Capítulo / Disciplina / Tema / Formato"), parágrafos homogêneos, bullets hierarquizados e síntese rotulada como assinatura de LLM. B-G é mais conservadora (55%).
- **C7 — divergência:** B-G e B-GG consideram a prosa fluida e sem artefatos como sinal de baixo indício (35%); B-CO interpreta a regularidade rítmica e a homogeneidade lexical como sinal de IA bem instruída (80%). A divergência reflete que **detecção qualitativa de IA em português técnico é inerentemente subjetiva**.

> **Ressalva metodológica reiterada pelas três bancas:** os percentuais são qualitativos, não conclusivos. O enunciado da PT **não veda** o uso de IA, portanto a estimativa serve apenas como insumo informativo e **não impacta a nota técnica**.

---

## 6. Cobertura de A–G (consenso)

Mapa consolidado a partir das tabelas das três bancas:

| Item | C7 | C8 | C9 |
|---|:-:|:-:|:-:|
| **A.** Compreensão do problema | ✅ | ✅ | ✅ |
| **B.** Estratégia (GitFlow) | ✅ | ✅ | ✅ |
| **C.** Aplicação prática (PR, hotfix, merge back, ahead/behind) | ✅ ¹ | ✅ | ✅ |
| **D.** Garantir e sustentar | 🟡 ² | ✅ | ✅ |
| **E.** Matricial e maturidade | ✅ | ✅ | ✅ ³ |
| **F.** Qualidade e governança | ✅ | ✅ | ✅ |
| **G.** Evidências e validação | ✅ | ✅ | ✅ |
| Formato (faixa, cenário hipotético, sem confidenciais) | ✅ | ❌ ⁴ | ✅ |

¹ Cobre os mecanismos, mas sem detalhes finos (CODEOWNERS, dismiss stale, monitoramento explícito do ahead/behind).
² Trata D em nível genérico — sem nomear ferramentas/portões/metas quantitativas.
³ Único candidato com **estágios explícitos de maturidade (E1–E5)**.
⁴ Viola "sem informações confidenciais" e apresenta artefatos `[cite: N]` não removidos.

---

## 7. Pontos comuns às três bancas

### Sobre C7
- Redação correta, dentro do formato, **aderência integral à restrição de cenário hipotético**.
- Cobertura completa de A–G **sem profundidade técnica de ponta**.
- Sem nomear ferramentas (SonarQube, CodeQL, JaCoCo, Grafana) e sem metas quantificadas (FTR, drift, cobertura).
- A B-GG o premia justamente pela ausência de artefatos; a B-CO o penaliza pela menor densidade técnica.

### Sobre C8
- **Maior densidade técnica** das três entregas (CodeQL, SonarQube Grade A/B, cobertura 80%, SemVer com SHA-1, MkDocs, commitlint, dismiss stale, runbook com SLA 60 min).
- **Violação direta** da regra de cenário hipotético (FusionX, ServiceNow SPM, Red Hat Developer Hub, infranprd, classe Normal 10 dias).
- **Artefatos `[cite: N]`** não removidos do texto entregue — assinatura inequívoca de geração por IA com *grounding*.
- B-CO e B-G aplicam penalização de formato; B-GG aplica penalização severa (Formato 0/5) e ainda assim o coloca em 1º pela B-GG por ponderação mais leve dos demais critérios.

### Sobre C9
- **Estágios explícitos E1–E5** de maturidade — diferencial mencionado por todas as três bancas.
- Cobertura plena de A–G com aderência integral ao formato.
- Sem violar cenário hipotético (cita apenas ferramentas públicas: SonarQube, JaCoCo, CodeQL, Grafana, *commitlint*).
- Pequenas observações: cabeçalho técnico padronizado (capítulo/disciplina) considerado por B-GG como indício de IA, e introdução de metas numéricas (FTR > 90%) não derivadas diretamente da PT.

---

## 8. Pontos de divergência entre as bancas

| Item | B-CO | B-G | B-GG | Comentário |
|---|---|---|---|---|
| **Vencedor** | C8 | C9 | C7 | Três rankings diferentes em 1º lugar |
| **Pior colocado** | C7 | C8 | C8 | Consenso parcial sobre C8 ser último (2 de 3) |
| **Peso de "Formato"** | Penalização global (−1 a −4) | Penalização leve (−2) | Critério explícito (5 pontos) com C8=0 | B-GG é a única a tratar formato como subitem com peso próprio |
| **Densidade técnica vs. aderência** | Premia densidade técnica de C8 mesmo com penalização | Premia equilíbrio (C9 > C7 > C8) | Premia zelo formal de C7 acima de tudo | Visões filosóficas distintas sobre o papel do Integrador |
| **IA — C7** | 80% (alto) | 35% (baixo) | 35% (baixo) | Maior divergência: leitura estilística é altamente subjetiva |
| **IA — C8** | 97% | 75% | 100% | Consenso forte: artefatos `[cite: N]` são evidência objetiva |

---

## 9. Síntese consolidada da banca

1. **Ranking consensual (Borda count e média simples):** **C9 > C7 > C8**.
2. **C9** é o candidato com cobertura mais equilibrada de A–G, formato aderente, cenário hipotético preservado e diferencial nos estágios explícitos de maturidade (E1–E5).
3. **C7** é a entrega mais segura sob a ótica formal — redação fluida, sem artefatos, aderente ao formato — mas perde em profundidade técnica em relação a C8 e C9.
4. **C8** entrega a maior densidade técnica, mas é o único que **viola explicitamente a regra "sem informações confidenciais"** e o único que **deixa artefatos `[cite: N]` no texto** — fragilidades cuja gravidade as três bancas interpretam de forma diferente, mas que todas reconhecem.
5. **Sobre uso de IA:** consenso forte de que **C8** apresenta evidência objetiva de geração por IA (marcadores `[cite: N]`). Para **C9** o indício é alto mas não inequívoco. Para **C7** o indício é divergente. Em todos os casos, a estimativa é qualitativa e **não impacta a nota técnica** (o enunciado não veda IA).
6. **Decisão administrativa:** a divergência entre as três bancas mostra que **não há vencedor inequívoco**. Recomenda-se que a comissão pondere:
   - se a prioridade é **profundidade técnica** (C8 vence, descontada a penalização);
   - se a prioridade é **cobertura completa com aderência formal** (C9 vence);
   - se a prioridade é **higiene operacional do texto entregue** (C7 vence, conforme B-GG).
