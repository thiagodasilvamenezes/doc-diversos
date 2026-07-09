# Banca Avaliadora — Correção da Produção Temática (Candidatos 7, 8 e 9)

**Tema:** Proposta de atuação de um Integrador de Código
**Item avaliativo:** 1 (peso total 100)
**Base normativa:** enunciado em `psi/15339-GCM/producao.txt`
**Data da avaliação:** 24/06/2026
**Escopo:** Candidatos 7, 8 e 9 (rodada `pt-pos-validacao`)

---

## 1. Régua de avaliação (idêntica à rodada anterior)

| Critério | Descrição (enunciado) | Peso |
|---|---|---|
| A | Compreensão do problema e seus impactos | 14 |
| B | Estratégia de atuação do integrador (GitFlow inclusive) | 16 |
| C | Aplicação prática (PR, hotfix, merge back, ahead/behind) | 18 |
| D | Garantir e sustentar o processo (automação, controle) | 16 |
| E | Atuação matricial e evolução de maturidade | 10 |
| F | Qualidade, governança e confiabilidade do repositório | 12 |
| G | Evidências e validação do processo | 14 |
| **Total** | | **100** |

Formato (900–1.500 palavras, redação estruturada, cenário hipotético, sem informações confidenciais) é qualificador — penalização localizada quando violado.

---

## 2. Correção individual

### CANDIDATO 7

**Aderência geral:** ★★★★☆ — Redação estruturada em sete seções alinhadas a A–G, linguagem corporativa equilibrada, ~1.100 palavras. Mantém o cenário hipotético sem nomear sistemas internos. Estilo conservador: preserva os conceitos centrais (GitFlow, PR, branch protection, hotfix com merge back, ahead/behind, Conventional Commits, SemVer, indicadores), mas não aprofunda em mecanismos finos (não cita CODEOWNERS, `commitlint`, `dismiss stale reviews`, FTR, SLA explícito, dashboards específicos).

**Por critério:**

- **A (14) — 12/14:** enquadra como governança técnica, cita divergência entre branches, perda de rastreabilidade, histórico pouco confiável e dificuldade de comprovar que versão implantada corresponde ao código aprovado. Evidência: *"dificuldade para demonstrar que uma versão implantada corresponde exatamente ao código aprovado e validado."* Falta mencionar explicitamente exposição a auditoria/conformidade regulatória.
- **B (16) — 14/16:** GitFlow adaptado, cinco branches descritas com propósito claro (`main`, `develop`, `feature/*`, `release/*`, `hotfix/*`). Bom, mas sem topologia ou pontos de controle adicionais.
- **C (18) — 15/18:** PR como único veículo, descrição obrigatória com vínculo a item de trabalho, critérios de aprovação, branch protection com proibição de force push/deleção, fluxo de feature/release/hotfix com merge back obrigatório. Cobertura sólida; ausência de CODEOWNERS, `dismiss stale reviews` e operacionalização concreta do ahead/behind (cita acompanhamento sem método específico).
- **D (16) — 13/16:** três frentes (automação, padrões reutilizáveis, indicadores) corretas, mas em nível mais genérico — não nomeia ferramentas (SonarQube/SAST/JaCoCo) nem define faixas/metas para os indicadores.
- **E (10) — 8/10:** documentação objetiva, capacitações, apoio próximo a times de menor maturidade, postura firme sob pressão. Bom, sem estágios explícitos de maturidade.
- **F (12) — 10/12:** Conventional Commits "ou padrão institucional equivalente", tags, release notes, rastreabilidade entre demanda/código/aprovação/versão/implantação. Sem mencionar paridade *chart version* ↔ *app version*.
- **G (14) — 11/14:** sinais legítimos — branches alinhadas, ciclo de vida curto, descrições claras, tags consistentes, redução de conflitos, redução de branches abandonadas, auditoria reconstruível. Faltam métricas quantificadas (FTR, drift, lead time estabilizado).
- **Formato:** dentro da faixa, sem violação de "cenário hipotético". Sem penalização.

**Total Candidato 7: 83/100**

---

### CANDIDATO 8

**Aderência geral:** ★★★★★ em conteúdo técnico, **com penalização relevante de formato/conformidade**. Texto longo (~1.500–1.600 palavras), extremamente denso, sete seções nomeadas, vocabulário técnico-bancário, tratamento avançado de todos os itens A–G com mecanismos explícitos (CodeQL, SonarQube Grade A/B, cobertura 80%, *dismiss stale reviews*, *commitlint*, *Squash and Merge* em `develop` e *Merge Commit* assinado em `main`, SemVer com SHA-1, MkDocs).

**Pontos de atenção sérios:**
- Cita **nominalmente sistemas e portais internos**: *"FusionX"*, *"ServiceNow SPM"*, *"Red Hat Developer Hub"*, *"infranprd"*, *"Normal classe Normal com 10 dias"* — violação direta da regra do enunciado: *"tratar como cenário hipotético, sem uso de informações confidenciais"*.
- O texto contém **marcadores `[cite: N]`** repetidos ao longo de várias seções, que são artefatos de geração assistida por IA com *grounding* (não removidos antes da entrega).

**Por critério:**

- **A (14) — 14/14:** enquadramento excelente — "Single Source of Truth", *merge hell*, "risco de conformidade inaceitável" em organizações sujeitas a regulamentação bancária e auditoria contínua. Evidência: *"a incapacidade de rastrear deterministicamente qual requisito ou defeito motivou uma liberação promovida a produção representa um risco de conformidade inaceitável."*
- **B (16) — 15/16:** GitFlow Híbrido com naming convention rigoroso (`feature/<squad>/<ID-WorkItem>`, `release/v<Major>.<Minor>.<Patch>`, `hotfix/<ID-Incidente>`), topologia mapeada por tipo de repositório (BFFs, APIs, MFE, IaC). Muito completo.
- **C (18) — 17/18:** *direct push* proibido, PR como gatilho formal de governança, hotfix com **SLA de 60 min**, merge back obrigatório em `develop` e em `release/*` aberta, *rebase* diário pelos desenvolvedores e *script* automatizado semanal monitorando ahead/behind. Excepcional.
- **D (16) — 16/16:** *Branch protection* com *dismiss stale*, CodeQL para SAST, SonarQube Grade A/B, cobertura ≥80%, MkDocs para documentação contínua, rastreabilidade obrigatória via Workitem. Camadas completas.
- **E (10) — 9/10:** Dojos, IDP/Portal do Desenvolvedor com *scaffolders* e *self-service*, *code review* como sessões assíncronas de coaching técnico. Forte.
- **F (12) — 12/12:** *Conventional Commits* via *commitlint*, *Squash and Merge* em `develop` e *Merge Commit* assinado em `main`, SemVer rigoroso com tag `vX.Y.Z` atrelada a SHA-1, paridade entre RM e binário implantado, erradicação de `SNAPSHOT`.
- **G (14) — 13/14:** quatro sinais objetivos numerados (paridade topológica com *drift* zero, eficiência de fluxo com *Lead Time* e taxa de aprovação na primeira passagem, ausência de "correção rápida" pós-merge, *rollback* zero por inconsistência de versionamento). Faltou explicitar conexão com painel/cadência.
- **Formato/Conformidade:** **violação direta** de "sem informações confidenciais" (FusionX, ServiceNow SPM, Red Hat Developer Hub, infranprd, classe Normal 10 dias) + **artefatos `[cite: N]`** não removidos do texto entregue. Penalização global: **−4**.

**Total Candidato 8: 92/100**

---

### CANDIDATO 9

**Aderência geral:** ★★★★☆ — Texto completo (~1.450 palavras), redação estruturada em sete seções alinhadas a A–G, vocabulário sóbrio, mantém integralmente o cenário hipotético (cita apenas ferramentas públicas: SonarQube, JaCoCo, CodeQL, Grafana, *commitlint*). Inclui **estágios explícitos de maturidade E1–E5**, o que aprofunda o item E em relação a versões anteriores.

**Por critério:**

- **A (14) — 12/14:** enquadra como falha de governança, elenca consequências (divergência, conflitos, regressões reintroduzidas, histórico irrastreável, perda de previsibilidade, risco operacional e exposição institucional). Evidência: *"a ausência de um processo formal de versionamento e integração de código configura uma falha de governança."*
- **B (16) — 14/16:** GitFlow adaptado com `main`/`develop` permanentes e `feature/*`/`release/*`/`hotfix/*`, mesma topologia aplicada a repositórios de IaC, declarado como **"adaptado, não dogmático"** ao padrão institucional.
- **C (18) — 17/18:** PR único veículo, **template de PR**, **CODEOWNERS**, status checks bloqueadores, aprovações mínimas explícitas (1 em `develop`, 2 em `main`), **`dismiss stale reviews`**, *squash* em `develop` e *merge commit* assinado em `main`, runbook de hotfix com merge back obrigatório, monitoramento ahead/behind com job agendado.
- **D (16) — 15/16:** três camadas (automação/guardrail, pipelines reutilizáveis, indicadores), *commitlint*, geração automática de release notes, FTR > 90%, dashboard em Grafana, ritual quinzenal com tech leads.
- **E (10) — 9/10:** **estágios explícitos E1–E5** mensuráveis, influência estruturada, workshops, pareamento com squads-piloto, coaching em revisão de PR, tratamento explícito de pressão por entrega.
- **F (12) — 11/12:** quatro frentes (integridade, histórico, consistência de versões com *chart version* ↔ *app version*, aderência institucional).
- **G (14) — 13/14:** sete sinais observáveis — *drift* → 0, branches efêmeras desaparecendo após merge back, branches órfãs → 0, FTR > 90%, tag assinada com release notes e paridade RM, lead time estabilizado, auditoria reconstruível.
- **Formato:** dentro da faixa sugerida, estrutura clara, cenário hipotético preservado, sem informações confidenciais. Sem penalização.

**Total Candidato 9: 91/100**

---

## 3. Comparativo cruzado

### 3.1 Tabela de cobertura por item obrigatório (A–G)

Legenda: ✅ aborda com profundidade · 🟡 aborda parcialmente · ❌ não aborda

| Item | C7 | C8 | C9 |
|---|:-:|:-:|:-:|
| **A.** Compreensão do problema e impactos | ✅ | ✅ | ✅ |
| **B.** Estratégia (GitFlow incluído) | ✅ | ✅ | ✅ |
| **C.** Aplicação prática (PR, hotfix, merge back, ahead/behind) | ✅ ¹ | ✅ | ✅ |
| **D.** Garantir e sustentar (automação, controle) | 🟡 ² | ✅ | ✅ |
| **E.** Atuação matricial e maturidade | ✅ | ✅ | ✅ ³ |
| **F.** Qualidade e governança do repositório | ✅ | ✅ | ✅ |
| **G.** Evidências e validação | ✅ | ✅ | ✅ |
| Formato (900–1.500 pal., redação, cenário hipotético) | ✅ | ❌ ⁴ | ✅ |

¹ C7 cobre todos os mecanismos exigidos, mas sem detalhes finos (CODEOWNERS, dismiss stale, monitoramento explícito do ahead/behind).
² C7 trata D em nível genérico — sem nomear ferramentas/portões/métricas com metas.
³ C9 é o único que explicita **estágios de maturidade (E1–E5)**.
⁴ C8 viola "sem informações confidenciais" (FusionX, ServiceNow SPM, Red Hat Developer Hub, infranprd, classe Normal 10 dias) e mantém artefatos `[cite: N]` não removidos do texto.

### 3.2 Faltas detectadas (por candidato)

- **C7:** ausência de CODEOWNERS, `commitlint`, `dismiss stale reviews`, ferramentas e metas quantificadas (FTR, drift, cobertura); não nomeia ferramentas (SonarQube/SAST/JaCoCo/Grafana); não traz estágios de maturidade.
- **C8:** **violação direta** da regra "sem informações confidenciais" com nomes institucionais e portais internos; **artefatos `[cite: N]`** no corpo do texto entregue; provável extrapolação leve do limite superior de 1.500 palavras.
- **C9:** poderia incluir SLA numérico para hotfix (estilo "60 min") e aprofundar o detalhamento de paridade *binário ↔ RM ↔ SHA-1*; nenhuma falta crítica.

### 3.3 Notas por critério e total

| Critério (peso) | C7 | C8 | C9 |
|---|:-:|:-:|:-:|
| A (14) | 12 | 14 | 12 |
| B (16) | 14 | 15 | 14 |
| C (18) | 15 | 17 | 17 |
| D (16) | 13 | 16 | 15 |
| E (10) | 8 | 9 | 9 |
| F (12) | 10 | 12 | 11 |
| G (14) | 11 | 13 | 13 |
| Ajuste formato/conformidade | 0 | −4 | 0 |
| **TOTAL (/100)** | **83** | **92** | **91** |

### 3.4 Ranking

1. **Candidato 8 — 92/100** (maior densidade técnica, mas com penalização por violação de regra de confidencialidade e por artefatos de IA não removidos).
2. **Candidato 9 — 91/100** (cobertura completa, estágios de maturidade explícitos, aderência integral ao formato e à regra de cenário hipotético).
3. **Candidato 7 — 83/100** (redação sólida e bem articulada, cobertura correta, sem violações de formato; perde por menor profundidade técnica e ausência de mecanismos finos).

### 3.5 Síntese qualitativa

- **Quem respondeu mais diretamente ao problema:** **C9** — sete seções diretamente mapeadas a A–G, com estágios de maturidade explícitos que aprofundam o item E sem fugir do escopo.
- **Quem teve maior consistência técnica:** **C8** — densidade técnica superior em todas as dimensões (SAST/CodeQL, SonarQube Grade A/B, cobertura 80%, SemVer com SHA-1, commitlint, MkDocs, dismiss stale, merge commit assinado). Penalizado por questões formais, não por conteúdo técnico.
- **Quem cobriu melhor os itens exigidos sem ferir restrições:** **C9** — cobre todos os itens **e** preserva o cenário hipotético, sem nomear sistemas internos.
- **Quem demonstrou domínio do GitFlow + hotfix + merge back:** empate técnico entre **C8** (com SLA de 60 min, merge back em `develop` e `release/*` aberta) e **C9** (com runbook explícito e dismiss stale).
- **Quem ficou abaixo do esperado:** nenhum candidato desta rodada — o pior caso (C7) ainda é redação correta, completa e aderente ao formato; perde apenas em profundidade técnica.

---

## 4. Estimativa de geração por IA

Análise **indicativa, não conclusiva**, baseada em sinais estilísticos e estruturais observáveis no texto. Sem ferramenta forense; trata-se de leitura qualitativa convertida em faixa percentual.

| Candidato | Probabilidade de geração por IA | Faixa | Principais indícios |
|---|:-:|---|---|
| **C7** | **~80%** | Alta | Estrutura altamente regular (sete seções paralelas), parágrafos de tamanho homogêneo, vocabulário corporativo sem oscilações, ausência de marcas idiomáticas ou variação de registro entre seções, encerramento de cada seção por reformulação sintética. Não apresenta marcas inequívocas de assistente (sem citações, sem glossas em inglês exageradas), o que rebaixa a faixa em relação a C8 e C9, mas o padrão geral permanece compatível com texto bem prompted. |
| **C8** | **~97%** | Muito alta | **Marcadores `[cite: 1]`, `[cite: 2]`, `[cite: 6]`, `[cite: 7]` repetidos ao longo do texto** — assinatura inequívoca de geração assistida por IA com *grounding* (perfil de Gemini Pro/NotebookLM ou similar) cujos artefatos de citação não foram removidos antes da entrega; glossas parentéticas em inglês sistemáticas (*Single Source of Truth*, *merge hell*, *Quality Gates*, *shift-left*, *peer review*, *Release Candidate*); densidade lexical uniforme; seções rigorosamente paralelas com subseções numeradas; vocabulário técnico-corporativo equilibrado. |
| **C9** | **~95%** | Muito alta | Estrutura altamente regular e paralela (sete seções alinhadas 1:1 com A–G), parágrafos homogêneos, bullets hierarquizados em todas as seções operacionais, encerramento por síntese rotulada, uso sistemático de negrito em conceitos-chave, vocabulário técnico equilibrado, ausência total de marcas idiomáticas. Aderência completa ao enunciado e ausência de marcas confidenciais — exatamente o perfil que um modelo bem instruído produziria. |

**Leituras importantes:**

- **C8** é o caso mais claro de geração por IA não revisada: os marcadores `[cite: N]` são fortemente atribuíveis a um assistente conversacional com sources/grounding, e o texto foi entregue sem limpeza desses artefatos.
- **C9** apresenta o padrão "limpo" de redação assistida por LLM de última geração — sem artefatos visíveis, mas com a regularidade estrutural característica.
- **C7** é o caso mais ambíguo: poderia ser texto humano bem organizado por um redator experiente ou LLM com instrução de tom mais conservador. A faixa permanece alta porque a regularidade rítmica e a homogeneidade lexical são típicas de saída assistida, mas não há marcas inequívocas.

**Ressalva metodológica:** a probabilidade aqui é qualitativa e **não deve ser usada isoladamente** para fundamentar decisão administrativa. Detectores automáticos são imprecisos em português técnico-corporativo; a leitura humana de marcas estilísticas é mais robusta, mas continua probabilística.

---

## 5. Observações de processo

- **C8** apresenta a maior densidade técnica desta rodada, mas é o único com **violação direta** da regra "sem informações confidenciais" (FusionX, ServiceNow SPM, Red Hat Developer Hub, infranprd, classe Normal 10 dias) e o único com **artefatos `[cite: N]`** não removidos. A penalização aplicada (−4) é localizada e não invalida a qualidade técnica do conteúdo.
- **C9** é o único candidato desta rodada que entrega cobertura plena de A–G **com aderência integral às restrições de formato** (faixa de palavras, cenário hipotético, sem nomes institucionais) e ainda aprofunda o item E com estágios mensuráveis de maturidade (E1–E5).
- **C7** entrega uma redação correta e bem articulada, dentro do formato, mas com profundidade técnica menor — não nomeia ferramentas, não traz metas quantificadas e não detalha mecanismos finos (CODEOWNERS, dismiss stale, commitlint, runbook de hotfix).
- O enunciado **não veda** o uso de IA — a estimativa da seção 4 é informativa e **não impacta a nota técnica**, servindo apenas como insumo para eventual política institucional sobre o tema.
