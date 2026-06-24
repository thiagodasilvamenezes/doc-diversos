# Banca Avaliadora — Correção da Produção Temática

**Tema:** Proposta de atuação de um Integrador de Código
**Item avaliativo:** 1 (peso total 100)
**Base normativa:** enunciado em `psi/15339-GCM/producao.txt`
**Data da avaliação:** 24/06/2026

---

## 1. Régua de avaliação derivada do enunciado

O enunciado define 1 item de 100 pontos e detalha em 3.1 os pontos obrigatórios A a G. Como não há pesos explícitos por subitem, adoto a seguinte distribuição (declarada e aplicada de forma uniforme entre todos os candidatos):

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

Lógica: B/C/D são onde o enunciado mais demanda profundidade ("descreva como atuaria", "deve ficar claro como estruturaria"); E é o de menor extensão pedida no texto; A, F e G têm exigência intermediária. Formato (900–1.500 palavras, redação estruturada, cenário hipotético, sem dados confidenciais) é tratado como qualificador (penalização localizada quando ferido).

---

## 2. Observação prévia sobre o conjunto de entregas

Antes de pontuar, registro o que foi efetivamente entregue em cada arquivo:

- **Candidato 1** (`psi/pt/pt-feitas/candidato-1.md`) — texto completo, ~1.200 palavras, sete seções alinhadas a A–G.
- **Candidato 2** (`psi/pt/pt-feitas/candidato-2.md`) — **arquivo vazio**, sem qualquer conteúdo.
- **Candidato 3** (`psi/pt/pt-feitas/candidato-3.md`) — texto **idêntico, palavra por palavra**, ao do Candidato 1.
- **Candidato 4** (`psi/pt/pt-feitas/candidato-4.md`) — texto **idêntico** ao do Candidato 1, com o caractere `opa` colado ao final do último parágrafo (artefato de revisão).
- **Candidato 5** (`psi/pt/pt-feitas/candidato-5.md`) — **não é uma produção temática**. É um documento de orientação/curadoria sobre quais fontes internas usar ("o artefato mais importante é GCM_Objetivos...", "Arquivo Word pronto: Producao_Tematica_Integrador_de_Codigo_CAIXA.docx"), com referências internas (SharePoint). Não responde A–G.
- **Candidato 6** (`psi/pt/pt-feitas/candidato-6.md`) — texto completo, ~1.460 palavras, sete seções alinhadas a A–G.

A coincidência textual entre 1, 3 e 4 é registrada como **evidência objetiva** apenas — sem qualificar plágio nem origem, conforme Regra 6. A pontuação técnica é a mesma para 1, 3 e 4, com microajuste no 4 por artefato de fechamento.

---

## 3. Correção individual

### CANDIDATO 1

**Aderência geral:** ★★★★☆ — Texto técnico denso, sete seções nomeadas (1–7) que cobrem A–G na mesma ordem do enunciado. Linguagem formal, com terminologia precisa (DVCS, SAST, JaCoCo, drift, FTR).

**Por critério:**

- **A (14) — 13/14:** enquadra como governança ("guardião da Single Source of Truth"), menciona "merge hell", auditoria/conformidade e rastreabilidade. Evidência: *"a incapacidade de rastrear deterministicamente qual alteração motivou uma liberação promovida a produção representa um risco de conformidade inaceitável."*
- **B (16) — 15/16:** define GitFlow Híbrido com `main`/`develop`/`feature/<squad>/<ID>`/`release/v<Major>.<Minor>.<Patch>`/`hotfix/<ID>`, justificando segregação. Pequena perda: não discute como sustenta o modelo "ao longo do tempo" de forma explícita aqui (resgatado em outras seções).
- **C (18) — 16/18:** PR obrigatório, hotfix com SLA de 60 min, merge back imediato, *rebase* diário para ahead/behind. Falta destaque a CODEOWNERS e a critérios explícitos de aprovação (quantos revisores em `main` vs `develop`).
- **D (16) — 15/16:** Branch protection, status checks bloqueadores, SonarQube ≥80% via JaCoCo, SAST, *reusable workflows*, rastreabilidade via item de trabalho. Faltou explicitar acompanhamento por indicadores recorrentes (rituais/cadência de revisão).
- **E (10) — 9/10:** Dojos, IDP corporativo, mentoria empática, postura não punitiva. Bom, sem aprofundar progressão de maturidade.
- **F (12) — 11/12:** Conventional Commits com bloqueio de mensagens vagas, Squash and Merge, SemVer, tag imutável atrelada a SHA-1, paridade com RM.
- **G (14) — 12/14:** *drift zero*, lead time, FTR>90%, ausência de "correção da correção", deploys sem rollback. Forte, mas sem ligar essas evidências a um painel/cadência explícita de aferição.
- **Formato:** dentro da faixa, estrutura clara. Pequena observação de conformidade com "cenário hipotético, sem informações confidenciais": cita "FusionX baseada em Red Hat Developer Hub", "RM classe Normal com 10 dias", "SPM" — terminologias institucionais que tangenciam o limite pedido. Penalização leve: −1 global.

**Total Candidato 1: 90/100**

---

### CANDIDATO 2

**Aderência geral:** entrega vazia, sem texto.

| Critério | Nota |
|---|---|
| A–G | 0/0 em todos |

**Total Candidato 2: 0/100**

Justificativa: nenhuma resposta apresentada. Por consequência, nenhum item obrigatório foi abordado.

---

### CANDIDATO 3

**Aderência geral:** conteúdo **textualmente idêntico** ao do Candidato 1. Mesma estrutura, mesmas evidências.

Aplico exatamente a mesma pontuação por critério do Candidato 1.

**Total Candidato 3: 90/100**

Observação objetiva (sem julgamento): a identidade textual entre 1 e 3 está registrada para a comissão tomar a decisão administrativa cabível.

---

### CANDIDATO 4

**Aderência geral:** texto **idêntico** ao do Candidato 1, com o sufixo `opa ` indevidamente colado ao fim do último parágrafo (*"...escalável e de alta confiabilidade.opa "*).

Critérios A–G pontuados como no Candidato 1. Penalização adicional de −1 por artefato de fechamento (Regra 6: estrutura/qualidade do entregue), totalizando 89.

**Total Candidato 4: 89/100**

---

### CANDIDATO 5

**Aderência geral:** ★☆☆☆☆ — **fuga total ao tema**. O arquivo não é uma redação estruturada que responda aos itens A–G; é um documento de **curadoria de fontes** sobre como produzir a PT, com referências a artefatos internos ("GCM_Objetivos", "Matriz de Responsabilidades Versionamento DevOps_v1", "Guia-de-Controle-de-Versão-para-DevOps", "Modelo_Corporativo_de_DevOps_v1.4", "SharePoint", "Producao_Tematica_Integrador_de_Codigo_CAIXA.docx").

Evidências da fuga: *"O artefato mais importante para sustentar a linha argumentativa é GCM_Objetivos."* / *"Gerei um arquivo Word com a produção temática já estruturada..."* / *"Ajustes finais que eu faria antes de você enviar..."*

Há menção a temas pertinentes (branch protection, PR, GitFlow, merge back, tag de produção, evidências observáveis), mas **na forma de recomendações para terceiro**, não como proposta de atuação do candidato. Também há **citação direta a sistemas/artefatos institucionais nomeados** (regra do enunciado: cenário hipotético, sem informações confidenciais).

**Por critério:**

- **A (14) — 2/14:** menciona riscos só em segunda mão.
- **B (16) — 2/16:** apenas indica que se deve "tratar como GitFlow adaptado", sem propor o desenho.
- **C (18) — 3/18:** cita PR, branch protection, merge back como recomendações, sem operacionalizar.
- **D (16) — 2/16:** sem demonstrar mecanismos próprios; aponta materiais a consultar.
- **E (10) — 1/10:** quase ausente; foca em curadoria.
- **F (12) — 1/12:** menciona tag/versionamento como sugestão de enquadramento.
- **G (14) — 2/14:** indica que se "amarre o texto a sinais observáveis" sem listar/descrever esses sinais como entrega.
- **Formato:** estrutura não é a de redação pedida; tom é de orientação. Violação adicional de "sem informações confidenciais" (cita sistemas e artefatos internos pelo nome). Penalização global de −3.

**Total Candidato 5: 10/100**

---

### CANDIDATO 6

**Aderência geral:** ★★★★☆ — Texto completo (~1.460 palavras), redação estruturada em sete seções correspondendo a A–G, vocabulário sóbrio, mantém o "cenário hipotético" sem nomear sistemas internos (cita apenas ferramentas públicas: SonarQube, CodeQL, Grafana, Backstage).

**Por critério:**

- **A (14) — 12/14:** enquadra como "falha de governança", elenca consequências (divergência, histórico irrastreável, perda de previsibilidade, auditoria difícil). Evidência: *"a ausência de um processo formal de versionamento e integração não é um problema operacional isolado: é uma falha de governança."*
- **B (16) — 14/16:** GitFlow adaptado com `main`/`develop` permanentes e `feature/*`/`release/*`/`hotfix/*`, alinhamento das branches de configuração (`config-des`/`config-hmp`) ao mesmo fluxo. Bem articulado.
- **C (18) — 17/18:** PR como único veículo, **template de PR**, **CODEOWNERS**, status checks bloqueadores, aprovações mínimas explícitas (1 em `develop`, 2 em `main`), **dismiss stale reviews**, squash em `develop` e merge commit assinado em `main`, runbook curto de hotfix, **monitoramento ahead/behind** com job agendado e reconciliação programada. Cobertura mais explícita que C1 nos requisitos do enunciado.
- **D (16) — 15/16:** três camadas (automação, pipelines reutilizáveis, métricas), commitlint, geração automática de release notes, dashboard em Grafana, ritual quinzenal com tech leads.
- **E (10) — 9/10:** "influência estruturada", workshops, pareamento com squads-piloto, coaching técnico em revisão de PR, tratamento explícito da pressão por entrega ("acelerar revisões, não suprimir gates").
- **F (12) — 11/12:** quatro frentes (integridade das branches permanentes, clareza do histórico, consistência de versões com sincronização *chart version* ↔ *app version*, aderência institucional).
- **G (14) — 13/14:** lista de sinais observáveis — proximidade `main`↔`develop`, branches efêmeras desaparecendo após merge back, branches "órfãs" → 0, taxa de PR com CI verde no 1º/2º push, tag assinada com release notes legíveis, *lead time* estabilizado, auditoria reconstruível.
- **Formato:** dentro da faixa (1.462 palavras), estrutura clara, mantém cenário hipotético, sem informações confidenciais. Sem penalização.

**Total Candidato 6: 91/100**

---

## 4. Comparativo cruzado

### 4.1 Tabela de cobertura por item obrigatório (A–G)

Legenda: ✅ aborda com profundidade · 🟡 aborda parcialmente · ❌ não aborda · — vazio

| Item | C1 | C2 | C3 | C4 | C5 | C6 |
|---|:-:|:-:|:-:|:-:|:-:|:-:|
| **A.** Compreensão do problema e impactos | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| **B.** Estratégia (GitFlow incluído) | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| **C.** Aplicação prática (PR, hotfix, merge back, ahead/behind) | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| **D.** Garantir e sustentar (automação, controle) | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| **E.** Atuação matricial e maturidade | ✅ | ❌ | ✅ | ✅ | ❌ | ✅ |
| **F.** Qualidade e governança do repositório | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| **G.** Evidências e validação | ✅ | ❌ | ✅ | ✅ | 🟡 | ✅ |
| Formato (900–1.500 pal., redação, cenário hipotético) | ✅ ¹ | ❌ | ✅ ¹ | ✅ ¹ ² | ❌ ³ | ✅ |

¹ Cita terminologias institucionais específicas (FusionX, SPM, RM classe Normal, IDP) que tangenciam "sem informações confidenciais" — penalização leve.
² Possui artefato de fechamento (`opa`).
³ Não é redação no formato pedido; cita artefatos internos nominalmente.

### 4.2 Notas por critério e total

| Critério (peso) | C1 | C2 | C3 | C4 | C5 | C6 |
|---|:-:|:-:|:-:|:-:|:-:|:-:|
| A (14) | 13 | 0 | 13 | 13 | 2 | 12 |
| B (16) | 15 | 0 | 15 | 15 | 2 | 14 |
| C (18) | 16 | 0 | 16 | 16 | 3 | 17 |
| D (16) | 15 | 0 | 15 | 15 | 2 | 15 |
| E (10) | 9 | 0 | 9 | 9 | 1 | 9 |
| F (12) | 11 | 0 | 11 | 11 | 1 | 11 |
| G (14) | 12 | 0 | 12 | 12 | 2 | 13 |
| Ajuste formato | −1 | 0 | −1 | −2 | −3 | 0 |
| **TOTAL (/100)** | **90** | **0** | **90** | **89** | **10** | **91** |

### 4.3 Ranking final

1. **Candidato 6 — 91/100**
2. **Candidato 1 — 90/100** (empatado em conteúdo com C3)
2. **Candidato 3 — 90/100** (texto idêntico ao C1)
4. **Candidato 4 — 89/100** (texto idêntico ao C1, com artefato de fechamento)
5. **Candidato 5 — 10/100**
6. **Candidato 2 — 0/100**

### 4.4 Síntese qualitativa

- **Quem respondeu mais diretamente ao problema:** Candidato 6 — sete seções diretamente mapeadas a A–G, sem opacidade terminológica, e com mais elementos práticos explicitamente nomeados (CODEOWNERS, commitlint, dismiss stale reviews, dashboard de métricas).
- **Quem teve maior consistência técnica:** Candidatos 1/3/4 (mesmo conteúdo) — densidade técnica superior em algumas dimensões (SAST/SHA-1/JaCoCo/SLA hotfix de 60 min/drift zero/FTR>90%). Ligeiramente penalizados por terminologia institucional específica.
- **Quem cobriu melhor os itens exigidos:** Candidato 6 — todos os itens cobertos, sem falhas relevantes, e com sinais de validação (G) mais explicitamente conectados a indicadores monitoráveis.
- **Quem demonstrou domínio do GitFlow + hotfix + merge back:** Empate técnico entre 1/3/4 e 6, com leve vantagem para 6 ao tratar merge back também em `release/*` aberta.
- **Quem ficou abaixo do mínimo aceitável:** Candidato 2 (vazio) e Candidato 5 (entrega fora do formato e fora do tema).

### 4.5 Faltas detectadas (por candidato)

- **C1/C3/C4:** ausência de menção explícita a CODEOWNERS, a critérios numéricos de aprovação por branch e a um plano de **cadência de monitoramento** (painel/ritual). Uso de terminologia institucional excede a recomendação de "cenário hipotético".
- **C2:** todos os itens obrigatórios A–G ausentes.
- **C5:** não entrega uma redação estruturada; trata o tema apenas como recomendações para terceiro; viola "sem informações confidenciais".
- **C6:** poderia aprofundar ainda mais a discussão de **maturidade evolutiva** (E) com estágios definidos; nenhuma falta crítica.

### 4.6 Estimativa de geração por IA

Análise **indicativa, não conclusiva**, baseada em sinais estilísticos e estruturais observáveis no texto. Não há ferramenta de detecção forense aplicada; o número é uma estimativa qualitativa convertida em faixa percentual a partir do conjunto de indícios (regularidade rítmica, densidade lexical uniforme, ausência de marcas idiomáticas/orais, simetria de seções, glossas parentéticas em inglês, listas hiperestruturadas, ausência de hesitações/digressões, vocabulário corporativo padronizado).

| Candidato | Probabilidade de geração por IA | Faixa | Principais indícios |
|---|:-:|---|---|
| **C1** | **~88%** | Alta | Glossas parentéticas sistemáticas em inglês (*Single Source of Truth*, *merge hell*, *peer review*, *First Time Right*, *Quality Gates*); densidade lexical uniforme do começo ao fim; seções rigorosamente paralelas (1 título → 1 parágrafo de abertura → bullets/itens); termos técnicos sempre capitalizados; ausência de marcas idiomáticas, digressões ou erros típicos de redação humana sob pressão. |
| **C2** | **N/A** | — | Arquivo vazio. |
| **C3** | **~88%** | Alta | Texto idêntico ao C1. Mesmos indícios. |
| **C4** | **~88%** | Alta | Texto idêntico ao C1, salvo o sufixo `opa ` (que é, ao contrário, marca tipicamente humana de revisão acidental). A presença do artefato não reduz materialmente os indícios estilísticos do corpo do texto. |
| **C5** | **~95%** | Muito alta | Estrutura de **resposta de assistente** com citações em colchetes (`[Qualidade...Objetivos \| SharePoint]`, `[Matriz de...DevOps_v1 \| PowerPoint]`), padrão de *grounding* típico de Copilot/Bing/Gemini; abertura por meta-comentário ("O que mais ajuda para a sua produção temática"); fechamento prescritivo em segunda pessoa ("Ajustes finais que eu faria antes de você enviar"); menção explícita a "Gerei um arquivo Word"; trata o usuário como destinatário das recomendações, não como autor do texto. |
| **C6** | **~95%** | Muito alta | Estrutura altamente regular e paralela (sete seções alinhadas 1:1 com A–G); parágrafos de tamanho homogêneo; bullets hierarquizados em todas as seções operacionais; ausência de variação de registro; encerramento por síntese rotulada ("Resumo do papel proposto"); uso de negrito em conceitos-chave de forma sistemática; vocabulário técnico equilibrado e sem oscilações. |

**Leituras importantes:**

- A coincidência entre C1, C3 e C4 indica origem comum, e a faixa de IA alta atribuída a esses textos **não distingue** se a geração foi de um único uso de IA por um candidato e posterior replicação, ou se cada candidato gerou de forma independente com prompt similar. A banca não tem como decidir tecnicamente esse ponto.
- C5 é o caso mais nítido de saída de assistente conversacional **não convertida em redação** — os colchetes de citação e o tom de orientação ao usuário permaneceram no entregue.
- C6 apresenta o padrão mais "limpo" de redação assistida por LLM de última geração: aderência completa ao enunciado, vocabulário sóbrio, ausência total de marcas confidenciais — exatamente o perfil que um modelo bem instruído produziria para este enunciado.
- Nenhum dos textos apresenta marcas inequívocas de **escrita humana sem auxílio** (rasuras, expressões coloquiais, hesitações, frases inacabadas, variação de registro entre seções, idiossincrasias lexicais consistentes). Mesmo C1/3/4, com sua densidade técnica, é regular demais para ser típica produção humana sob restrição de tempo.

**Ressalva metodológica:** a probabilidade aqui é qualitativa e **não deve ser usada isoladamente** para fundamentar decisão administrativa. Detectores automáticos de IA são notoriamente imprecisos para textos em português técnico-corporativo; a leitura humana das marcas estilísticas é mais robusta, mas continua probabilística.

---

## 5. Observações de processo

- **Identidade textual entre 1, 3 e 4** registrada como evidência objetiva. Em conformidade com a Regra 6, **não afirmo plágio**; a análise é apenas técnica do conteúdo apresentado. A decisão administrativa cabe à comissão.
- **Conformidade com "cenário hipotético, sem informações confidenciais":** apenas o C6 é integralmente aderente; C1/C3/C4 tangenciam o limite com termos institucionais; C5 viola explicitamente ao nomear artefatos e portais internos.
- **Estimativa de geração por IA (seção 4.6)** registrada para apoiar a comissão. O enunciado **não veda** o uso de IA, portanto a estimativa é informativa e não impacta a nota técnica; serve apenas como insumo para eventual política institucional sobre o tema.
