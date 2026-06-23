# PROPOSTA DE GOVERNANÇA DE VERSIONAMENTO E INTEGRAÇÃO DE CÓDIGO
## Estrutura e Sustentação de Processo de Integração em Escala

---

## SUMÁRIO EXECUTIVO

Este documento apresenta uma proposta estruturada de governança de versionamento e integração de código para o portfólio de repositórios SISPH e SIACI, operado pela Caixa sob regime DevSecOps. 

A iniciativa busca estabelecer um processo controlado, auditável e previsível de evolução de código, eliminando inconsistências na gestão de branches, reduzindo risco operacional e elevando a maturidade técnica dos times através da adoção de práticas institucionais disciplinadas.

---

## 1. COMPREENSÃO DO PROBLEMA E SEUS IMPACTOS

### 1.1 Diagnóstico Atual do Portfólio

#### Estrutura da Configuração Git
O portfólio compreende **33+ repositórios** organizados conforme padrão arquitetural:

- **Repositórios de Aplicação** (BFF, API, MFE): 20+ repos
- **Repositórios de Configuração (Infra/IaC)**: 10+ repos paralelos  
- **Repositórios de Governança/Pipelines**: 4 repos (DevSecOps Templates, Solutions, Workflows)
- **Repositórios de Biblioteca/Componentes**: 2 repos

#### Padrão de Remotes e Branches
Análise das configurações coletadas revela:

```
Origin remotes: https://github.com/caixagithub/<repo>.git (GitHub Enterprise)
Branch pattern observado:
  - main         (produção/referência)
  - develop      (integração de desenvolvimento)
  - config-hmp   (configuração ambiente homolog)
  - config-des   (configuração ambiente desenvolvimento)
  - release/*    (candidatas a release - quando presentes)
  - hotfix/*     (correções emergenciais - quando presentes)
```

**Métricas coletadas:**
- sisph-api-auditoria: 8 branches, 57 commits
- sisph-api-core-config: 9 branches, 81 commits
- sisph-api-auditoria-infranprd: 4 branches, 134 commits

#### Pipeline CI/CD Observado
- **Orquestração**: GitHub Actions com modelo de templates reutilizáveis
- **Eventos disparadores**: push em main/develop, pull_request (QA)
- **Stages**: CI genérico, QA/análise estática (Sonar), security scanning (CodeQL)
- **Padronização**: Workflows parametrizados via DevSecOps-Solutions

---

### 1.2 Riscos Identificados

#### 1.2.1 Governança de Branches
- **Divergência paralela**: Repositórios com múltiplas config-* branches (hmp, des, tqs, tst) sem mecanismo formal de reconciliação
- **Falta de proteção de referência**: Main e develop sem branch protection rules explícitas, permitindo pushes diretos
- **Histórico de integração fraco**: Branches de configuração com histórico desvinculado da main/develop, dificultando auditoria
- **Paralelismo descontrolado**: Estrutura atual não impede divergências acumulativas entre branches

#### 1.2.2 Qualidade e Rastreabilidade
- **Inconsistência de commits**: Ausência de padronização em mensagens de commit (conventional commits, issue linking)
- **Versionamento semântico não-enforcement**: Versões em pom.xml/package.json sem correlação com tags/releases
- **Falta de pull request discipline**: Workflows acionam QA em PR, mas sem critérios formalizados de aprovação
- **Histórico pouco confiável**: Branches parallelas permitem reescrita de histórico com baixo risco de detecção

#### 1.2.3 Integração Contínua
- **Integrações tardias**: Branches de configuração/infra podem divergir significativamente antes da integração
- **Ausência de hotfix formal**: Não há processo estabelecido para correções em produção com reconciliação garantida
- **Falta de monitoramento proativo**: Sem sinais automáticos que alertem sobre "ahead/behind" entre branches
- **Risco de conflito de merge**: Integração tardia de branches paralelas aumenta probabilidade e complexidade de conflitos

#### 1.2.4 Contexto Organizacional
- **Pressão por entrega**: Cenário de alta demanda tende a favorecer bypasses de processo
- **Múltiplos squads**: Comportamento descentralizado sem enforcement centralizado de padrões
- **Heterogeneidade de maturidade**: Times com diferentes níveis de compreensão de Git/GitFlow
- **Falta de autoridade hierárquica do Integrador**: Atuação deve ser por influência, expertise e sustentação do processo

---

### 1.3 Impactos do Estado Atual

| Dimensão | Risco | Impacto |
|----------|-------|--------|
| **Confiabilidade** | Main sem proteção → código instável em produção | Downtime não planejado |
| **Rastreabilidade** | Histórico fraco → impossibilidade de investigar causas raiz | Perda de compliance/auditoria |
| **Previsibilidade** | Integrações tardias → surpresas em produção | Atraso em entregas |
| **Escalabilidade** | Múltiplos padrões → overhead cognitivo | Onboarding lento, erros humanos |
| **Segurança** | Falta de review formal → código inadequado em produção | Vulnerabilidades, vazamento de dados |

---

## 2. ESTRATÉGIA DE ATUAÇÃO DO INTEGRADOR

### 2.1 Definição da Atuação

O **Integrador de Código** é um papel de governança técnica responsável por:

1. **Preservar integridade das branches permanentes** (main, develop)
2. **Garantir que toda evolução percorra fluxo formal** de PR → review → merge
3. **Autorizar versões candidatas** e promovê-las entre ambientes
4. **Evitar divergências não-controladas** entre branches de referência
5. **Auditar conformidade** com práticas institucionais de versionamento

Não é papel do Integrador:
- Escrever o código (ownership dos squads)
- Decidir features (product/arquitetura)
- Gerenciar priorização (product owner)

**É papel do Integrador:**
- Definir e sustentar o processo
- Validar adherência e qualidade
- Comunicar riscos
- Elevar maturidade através de coaching

### 2.2 Modelo de Fluxo Proposto: GitFlow Adaptado para Escala

O modelo GitFlow oferece estrutura ideal para cenário de múltiplas linhas de evolução paralela com demanda de hotfix e versionamento claro. Adapta-se bem ao contexto descrito.

#### 2.2.1 Branches de Referência

```
main
  ↓
  └─ Produção. Tags de release (v1.0.0, v1.0.1, v1.1.0)
  └─ Proteção: Require PR + approvals (2 reviewers)
  └─ Branch protection: No force push, Dismiss stale PR
  └─ Integrador é o guardião oficial

develop
  ↓
  └─ Integração primária. Estado de "próximo release"
  └─ Merge contínuo de feature branches
  └─ Proteção: Require PR + approvals (1 reviewer + CI/CD green)
  └─ Integrador autoriza merge back de hotfix, release
```

#### 2.2.2 Branches de Suporte

```
feature/<squad>/<JIRA-ID>-<descricao>
  ├─ Origem: develop
  ├─ Destino: develop (via PR)
  ├─ Lifecycle: Máx 2 semanas (SLA para integração)
  ├─ Nomeação: standardizada, rastreável
  └─ Proteção: Deletar após merge

release/<versao>
  ├─ Origem: develop
  ├─ Destino: main + merge back em develop
  ├─ Lifecycle: 1 semana (testes + bug fixes finais)
  ├─ Versionamento: semantic versioning (MAJOR.MINOR.PATCH)
  └─ Tagging: v1.0.0 assinado pelo Integrador

hotfix/<JIRA-ID>-<descricao>
  ├─ Origem: main (emergência em produção)
  ├─ Destino: main + merge back em develop
  ├─ Lifecycle: Imediato (within 4 hours SLA)
  ├─ Nomeação: clareza sobre criticalidade
  └─ Tagging: v1.0.1 (patch) via Integrador
```

#### 2.2.3 Branches de Configuração (Infra)

Para repositórios `-infranprd`, propõe-se alinhamento ao padrão principal:

```
main         (produção - configs ativas)
develop      (stage configs)
config-hmp   (candidata homolog)
config-des   (candidata desenvolvimento)

Fluxo:
develop → merge → config-des (CI: deploy DES)
develop → merge → config-hmp (CI: deploy HMP, teste)
config-hmp → PR → main (manual approval pelo Integrador)
```

---

### 2.3 Estratégia de Integração Contínua

#### 2.3.1 Pull Request como Veículo de Integração

Cada mudança, independente da escala, **deve transitar por PR formal**:

```
1. Desenvolvedor cria branch feature/*
2. Abre PR contra develop (template de descrição)
3. Sistema executa CI/CD pipeline:
   ├─ Build
   ├─ Testes unitários
   ├─ Análise estática (SonarQube)
   ├─ Security scanning (CodeQL, Dependabot)
   └─ Relatório de cobertura
4. Integrador + reviewer avaliam:
   ├─ Mudanças aderentes a padrões?
   ├─ Commits com mensagem clara?
   ├─ CI/CD passou?
   ├─ Rastreabilidade (JIRA linkado)?
   └─ Design/arquitetura OK?
5. Merge automático (squash + commit assinado)
6. Deletar branch feature after merge
```

**Critério de Aprovação:**
- ✅ CI/CD pipeline deve estar verde (build + tests + quality gates)
- ✅ Mínimo 1 code review aprovado
- ✅ Zero vulnerabilidades críticas no scanning
- ✅ Cobertura de testes ≥ 80%
- ✅ Commits com mensagem descritiva (conventional commits)

#### 2.3.2 Gestão de Release

**Ciclo de Release:**

```
Sexta (candidatura):
  - Integrador cria branch release/v1.2.0 a partir de develop
  - Deploy automático em HMP
  - Testes de aceitação (squad + QA)
  - Bug fixes commitados em release/v1.2.0

Terça (promoção):
  - Integrador avalia readiness da release/v1.2.0
  - Cria PR release → main
  - Merge e tag v1.2.0 assinada
  - Merge back v1.2.0 em develop (auto-reconciliação)
  - Deploy automático em PROD
```

**Versionamento:**
- `v1.0.0` = MAJOR.MINOR.PATCH (semântico)
- MAJOR: incompatibilidade breaking
- MINOR: feature nova, retrocompatível
- PATCH: bug fix

#### 2.3.3 Gestão de Hotfix

**Cenário:** Bug crítico em produção identificado

```
Detecção:
  - Alert dispara (erro em PROD)
  - Squad avisa Integrador

Resposta (≤ 30 min):
  1. Integrador cria branch hotfix/JIRA-123-bug-critico a partir de main
  2. Desenvolvedor commita correção
  3. PR hotfix → main com 2 approvals
  4. Merge e tag v1.0.1 (patch)
  5. Deploy automático PROD
  6. Integrador faz merge back v1.0.1 em develop
     (⚠️ pode gerar conflito se develop divergiu; integrador resolve)
```

**SLA:**
- Detecção → hotfix branch: ≤ 5 min
- Hotfix branch → PR aberto: ≤ 15 min
- PR → aprovado: ≤ 15 min
- Merge → PROD: ≤ 5 min
- **Total: ≤ 1 hora**

---

### 2.4 Manutenção de Branches Próximas (Ahead/Behind)

Um dos maiores riscos é divergência acumulativa entre branches de configuração e referência.

#### 2.4.1 Monitoramento Proativo

Script mensal executado pelo Integrador:

```bash
#!/bin/bash
# git-health-check.sh

for branch in develop config-hmp config-des release/* hotfix/*; do
  ahead=$(git rev-list $branch..main --count)
  behind=$(git rev-list main..$branch --count)
  
  if [ $ahead -gt 10 ] || [ $behind -gt 10 ]; then
    ALERT="❌ RISCO: $branch está $ahead ahead / $behind behind de main"
    # Notificar squad + Integrador
  fi
done
```

#### 2.4.2 Reconciliação Programada

**Mensalmente** (primeira quinta):
- Integrador executa merge de develop em todas as config-* branches
- Se conflito: squad é notificado, Integrador facilita resolução
- Objetivo: evitar desvios > 2 semanas

**Quarterly** (fim de trimestre):
- Auditoria de divergências
- Relatório de "ahead/behind" para stakeholders
- Identificação de branches obsoletas (deletar)

---

## 3. APLICAÇÃO PRÁTICA E OPERACIONALIZAÇÃO

### 3.1 Estrutura de Governança

#### 3.1.1 Roles e Responsabilidades

| Role | Responsabilidade | Autonomia |
|------|------------------|-----------|
| **Integrador** | Guardiã de main/develop, autoriza merges em release/hotfix | Alto; decisão final sobre integrações |
| **Reviewer (Tech Lead)** | Avalia código, qualidade, design | Moderado; recomenda, Integrador valida |
| **Desenvolvedor (Squad)** | Escreve código, cria PR, resolve conflitos em feature | Alto em feature, zero em main |
| **QA/Security** | Valida cobertura de testes, segurança | Bloqueador em PR (CI/CD) |

#### 3.1.2 Regras de Branch Protection

**Para `main`:**
```
- Require a pull request before merging: ✅
- Require approvals: 2 reviewers
- Dismiss stale pull request approvals when new commits are pushed: ✅
- Require status checks to pass before merging: ✅ (CI/CD green)
- Require branches to be up to date before merging: ✅
- Allow auto-merge: ❌ (Manual via Integrador)
- Allow force pushes: ❌
- Allow deletions: ❌
```

**Para `develop`:**
```
- Require a pull request before merging: ✅
- Require approvals: 1 reviewer
- Dismiss stale pull request approvals: ✅
- Require status checks: ✅ (build + unit tests)
- Require branches to be up to date: ✅
- Allow auto-merge: ✅ (Squash + merge)
- Allow force pushes: ❌
- Allow deletions: ❌
```

#### 3.1.3 Codeowners e Escalation

Arquivo `CODEOWNERS` define responsabilidades:

```
# CODEOWNERS (na raiz do repo)

# Referência geral
*                      @integrador @arquiteto

# Backend (Java)
src/main/java/        @squad-backend
src/test/java/        @squad-backend @qa-team

# Frontend (Angular)
src/app/              @squad-frontend
src/assets/           @squad-frontend

# Infra/DevOps
.github/              @devsecops-team
Dockerfile            @devsecops-team
pom.xml               @squad-backend @devsecops-team

# Configurações
catalog-info.yaml     @integrador @arquiteto
```

---

### 3.2 Processos Operacionais

#### 3.2.1 Fluxo de Feature (Dia a Dia)

**Dia 1 - Planejamento (Seg)**
```
1. Squad pega item do backlog (JIRA-456)
2. Cria branch: feature/squad-backend/JIRA-456-novo-endpoint
3. Abre rascunho de PR em develop
   - Título: [JIRA-456] Novo endpoint de consulta
   - Descrição:
     ## O quê?
     Implementa endpoint GET /api/v1/consulta
     
     ## Por quê?
     Demanda de integração com terceiro
     
     ## Como testes?
     - Testes unitários: 15 casos
     - Cobertura: 92%
     - Teste manual: endpoint respondendo em DES
```

**Dia 2-4 - Desenvolvimento**
```
- Squad desenvolve e faz push contínuo
- CI/CD executa a cada push (build, tests)
- Squad revisa feedback do CI/CD
- Resolve issues de qualidade
```

**Dia 5 - Integração (Sex)**
```
1. Squad marca PR como "ready for review"
2. Integrador + Tech Lead fazem revisão
   ├─ Código segue padrões?
   ├─ Testes OK?
   ├─ Segurança (SAST, dependências)?
   └─ Rastreabilidade (JIRA linkado)?
3. Se aprovado:
   - Squash + merge em develop
   - Branch deletada automaticamente
4. Se reprovado:
   - Comentário com crítica específica
   - Squad faz ajustes (volta a dia 2)
```

**Resultado em develop:**
```
git log develop --oneline
├─ a3f4e5 Merge PR-123: [JIRA-456] Novo endpoint de consulta
├─ 2d1f4a [JIRA-457] Correção de validação de entrada
├─ ...
```

#### 3.2.2 Fluxo de Release (Semana de Release)

**Sexta anterior (candidatura)**
```
1. Integrador cria release/v1.2.0 a partir de develop
   git checkout develop
   git pull origin develop
   git checkout -b release/v1.2.0
   git push origin release/v1.2.0

2. CI/CD dispara automaticamente:
   ├─ Build completo
   ├─ Testes integração
   ├─ Deploy em HMP
   └─ Testes de aceitação

3. Squad testa em HMP (24h)
   - Regressão funcional
   - Casos de borda
   - Performance (10k requisições)

4. Se bug encontrado:
   git checkout release/v1.2.0
   git commit -m "fix: validação de campo X"
   git push origin release/v1.2.0
   (re-runs CI/CD)

5. Se aprovado em HMP:
   Integrador marca "Release Candidate OK"
```

**Terça de release (promoção)**
```
1. Integrador cria PR release/v1.2.0 → main
   Descrição:
   ## Release v1.2.0
   
   ### Período de desenvolvimento
   26/05/2026 - 23/06/2026
   
   ### Features
   - JIRA-450: Novo endpoint X
   - JIRA-460: Refactor de Y
   
   ### Bugs
   - JIRA-465: Correção em Z
   
   ### Tested
   - HMP: 48h (2026-06-21 a 2026-06-22)
   - Cobertura: 89%
   - SonarQube: A
   - Security: 0 críticos, 2 altos

2. Integrador merges em main com 2 approvals
   - Tech Lead verifica testes HMP
   - Arquiteto valida qualidade geral

3. Tag assinada:
   git tag -s v1.2.0 -m "Release v1.2.0"

4. CI/CD dispara:
   ├─ Build final
   ├─ Deploy em PROD
   ├─ Smoke tests em PROD
   ├─ Notifica stakeholders: "v1.2.0 em produção"

5. Integrador faz merge back:
   git checkout develop
   git pull origin develop
   git merge release/v1.2.0 --no-ff
   git push origin develop
   
   (Se conflito: Integrador + Tech Lead resolvem)

6. Delete release/v1.2.0
```

**Status em PROD:**
```
main @ v1.2.0 (tag)
develop @ 1 commit à frente (merge back)
```

#### 3.2.3 Fluxo de Hotfix (Emergência)

**Cenário: Bug crítico em PROD às 14:30**

```
14:30 - Detecção
  Monitoramento alerta: "Taxa de erro 5xx acima de 10%"
  Squad abre Slack: "Problema em /api/v1/pagamento"

14:35 - Investigação
  Integrador verifica logs e reproduz em HMP anterior (v1.1.5)
  Causa: bug regressão em validação de entrada

14:40 - Hotfix branch
  git checkout main
  git pull origin main
  git checkout -b hotfix/JIRA-468-validacao-pagamento

14:50 - Fix commitado
  Squad edita src/main/java/.../PagamentoValidator.java
  git commit -m "fix(JIRA-468): validação de campo obrigatório em pagamento"

14:55 - PR aberto
  hotfix/JIRA-468-validacao-pagamento → main
  Title: [HOTFIX-CRÍTICO] JIRA-468: Validação pagamento
  
  Descrição:
  ## Crítico
  Taxa erro 5xx em /api/v1/pagamento: 10%+
  
  ## Causa
  Validação não checava campo obrigatório
  
  ## Fix
  Adicionado isNotBlank() em validator
  
  ## Teste
  1 teste adicional criado para caso

15:00 - Approvals rápidas
  - Tech Lead: ✅ (revisou código, reproduziu cenário)
  - Integrador: ✅ (validou criticidade, teste OK)

15:05 - Merge em main
  Integrador faz merge (nenhuma espera)
  Tag v1.1.6 assinada

15:10 - Deploy PROD
  CI/CD dispara, build + deploy ≤ 5 min
  Smoke test valida: /api/v1/pagamento respondendo
  Status: Taxa erro reduzida para < 1%

15:15 - Merge back em develop
  git checkout develop
  git pull origin develop
  git merge hotfix/JIRA-468-validacao-pagamento
  
  (Sem conflito, pois fix foi em arquivo específico)
  
  git push origin develop

15:20 - Close hotfix
  git branch -d hotfix/JIRA-468-validacao-pagamento
  PR linkado marcado como resolvido
  Notificação: "Hotfix v1.1.6 em produção"

Resultado:
  main @ v1.1.6 (tag)
  develop @ 1 commit à frente
  PROD: problema resolvido em 50 min
```

---

### 3.3 Padrões de Commit e Mensagens

Adoção de **Conventional Commits** para clareza e rastreabilidade:

```
<type>(<scope>): <subject>

<body>

<footer>

---

Type: feat | fix | docs | refactor | perf | test | chore | ci
Scope: área afetada (auth, payment, ui, infra, etc)
Subject: descrição concisa (imperativo, máx 50 chars)
Body: "por quê" da mudança (max 72 chars/linha)
Footer: JIRA-ID, Breaking changes, etc

Exemplos:

feat(payment): adicionar suporte a PIX
  Implementa novo método de pagamento PIX
  conforme especificação BC.
  
  JIRA-450
  Breaking-Change: campo 'type_code' obrigatório

fix(auth): corrigir validação de token expirado
  Token expirado não era detectado adequadamente,
  causando sessão estendida.
  
  JIRA-468

refactor(core): simplificar lógica de cache
  Reduz complexidade ciclomática de Cache.java
  de 12 para 4. Sem mudança funcional.

docs(readme): atualizar instruções de setup
```

**Commit workflow esperado:**
```
Feature/JIRA-456-novo-endpoint com 7 commits atomizados:
  ├─ feat(api): criar novo endpoint
  ├─ test(api): adicionar testes unitários
  ├─ refactor(api): extrair validação em classe separada
  ├─ docs(api): atualizar OpenAPI spec
  ├─ ci(workflow): adicionar teste de integração
  └─ ... (total 7 commits de alta qualidade)

No merge em develop:
  git merge --squash feature/JIRA-456-novo-endpoint
  → 1 commit atômico em develop com mesma mensagem
  (Integrador revisa e faz squash + merge)
```

---

## 4. GARANTIA E SUSTENTAÇÃO DO PROCESSO

### 4.1 Mecanismos de Controle

#### 4.1.1 Branch Protection Rules (Automação)

Implementadas via GitHub API:

```yaml
# .github/scripts/setup-branch-protection.sh

for repo in $REPOSITORIES; do
  # Main: máxima proteção
  gh repo rule create \
    -R $repo \
    --branch main \
    --require-pull-request-before-merge \
    --require-review-count 2 \
    --require-status-checks-to-pass \
    --require-branches-to-be-up-to-date \
    --dismiss-stale-reviews

  # Develop: proteção moderada
  gh repo rule create \
    -R $repo \
    --branch develop \
    --require-pull-request-before-merge \
    --require-review-count 1 \
    --require-status-checks-to-pass
done
```

#### 4.1.2 CI/CD Gates (Quality Gates)

SonarQube quality gate via GitHub:

```yaml
# .github/workflows/quality-gate.yml

- name: SonarQube Analysis
  uses: SonarSource/sonarqube-scan-action@master
  with:
    projectBaseDir: .
    args: >
      -Dsonar.qualitygate.wait=true
      -Dsonar.qualitygate.timeout=300

- name: Check Quality Gate
  if: failure()
  run: |
    echo "❌ Quality Gate FAILED"
    exit 1
```

#### 4.1.3 Audit Trail (Rastreabilidade)

Todos os merges em main/develop são registrados:

```
Fonte: GitHub audit log
Integrador: gerencia acesso e autoridades
Comando: gh repo log -R <repo> --all | grep "pull_request_review_requested"

Resultado:
  PR-123: main ← develop (2026-06-23 10:30 by integrador)
  Author: squad-backend
  Reviewers: tech-lead, qa-team
  Commits: 7 (squashed)
  Quality: Green (SonarQube, CodeQL, tests)
```

#### 4.1.4 Dashboards de Saúde

Dashboard mensal gerado pelo Integrador:

```
Repositório: sisph-bff-jnd-construtoras

--- Git Health ---
Main @ v1.2.0 (tag)
Develop @ 1 commits ahead of main
Config-HMP @ 3 commits behind develop ⚠️
Config-DES @ 5 commits behind develop ⚠️

--- Integration Metrics ---
PR criadas (Jun): 18
PR mergeadas: 17
PR rejeitadas: 1
Tempo médio PR→merge: 2.3 dias
Commits/dia: 5.2
Hotfix/mês: 1

--- Quality ---
SonarQube: Grade A (3 issues de baixa severidade)
CodeQL: 0 vulnerabilidades críticas
Test Coverage: 89% (+2% em relação a maio)
Build success rate: 98.5%

--- Risks ---
❌ Config-HMP divergida > 1 semana (ação: merge develop)
✅ Main protegida
✅ Conventional commits: 94% aderência
✅ Zero commits diretos em main
```

---

### 4.2 Atuação em Contexto Matricial

#### 4.2.1 Influência sem Autoridade Hierárquica

O Integrador não tem autoridade sobre squads, mas exerce influência por:

1. **Expertise Técnica**
   - Conhecimento profundo de Git, GitFlow, CI/CD
   - Referência em dúvidas de versionamento
   - Facilita troubleshooting de conflitos complexos

2. **Consistência de Processo**
   - Modelo inequívoco e documentado
   - Aplicado uniformemente a todos os repos
   - "Regras do jogo" claras e justas

3. **Visibilidade e Comunicação**
   - Relatórios mensais mostram estado de cada repo
   - Identifica e comunica riscos cedo
   - Premia comportamento aderente (shoutout público)

4. **Facilitação de Onboarding**
   - Workshop trimestral: "GitFlow na Caixa"
   - Documentação pronta ("GitFlow Quick Start")
   - Pareamento com squads em primeiro PR

#### 4.2.2 Operacionalização em Escala (33+ repos)

**Automação reduz overhead:**

```bash
# Script mensal: generate-health-report.sh

for repo in $(gh repo list caixagithub --limit 100 --json name -q '.[].name'); do
  echo "=== $repo ===" >> health-report.md
  
  # Branches
  git -C /tmp/$repo branch -r | wc -l >> health-report.md
  
  # Ahead/Behind
  git -C /tmp/$repo rev-list main..develop --count >> health-report.md
  git -C /tmp/$repo rev-list develop..main --count >> health-report.md
  
  # Tags
  git -C /tmp/$repo tag -l --sort=-v:refname | head -5 >> health-report.md
done

# Resultado: health-report.md enviado para stakeholders
```

**Governança descentralizada:**
- Cada squad tem 1 Tech Lead responsável por approvals locais
- Integrador atua como revisor de release e hotfix
- Escalation clara: conflito → Tech Lead → Integrador

#### 4.2.3 Consolidação de Práticas (Evolução de Maturidade)

**Mês 1 (Estabelecimento):**
- Workshops: GitFlow, Conventional Commits, PR discipline
- Implementar branch protection rules
- Primeiras releases com Integrador

**Mês 2-3 (Adoção):**
- Squads operam GitFlow com apoio ocasional
- Métricas mostram convergência em padrões
- 1-2 hotfix bem-geridos reforçam disciplina

**Mês 4-6 (Consolidação):**
- Squads autônomos em feature/develop
- Integrador principalmente em release/hotfix
- Taxa de erros em merge reduz significativamente
- Conflitos resolvidos internamente (Tech Lead)

**Mês 7+ (Excelência):**
- Processo naturalizado e sustentável
- Integrador atua proativamente (saúde, auditorias)
- Práticas documentadas e disseminadas
- Maturidade elevada observável nos metrics

---

## 5. QUALIDADE, GOVERNANÇA E CONFIABILIDADE

### 5.1 Integridade das Branches

#### 5.1.1 Main como Referência Confiável

```
Garantias sobre main:

1. Sempre deployável:
   ✅ Último commit passado por CI/CD completo
   ✅ 2 code reviews
   ✅ Testes 80%+
   ✅ Security scanning verde
   
2. Histórico limpo e rastreável:
   ✅ Commits squashados (1 PR = 1 commit)
   ✅ Mensagens descritivas (Conventional)
   ✅ Linkado a JIRA/issue tracking
   ✅ Sem rewrite/rebase (git log confiável)

3. Versão explícita:
   ✅ Cada merge = novo patch/minor/major
   ✅ Tag assinada com data e notas de release
   ✅ Correlação clara: tag ↔ produção

4. Auditável:
   ✅ Integrador assina merges
   ✅ Todos os approvés registrados
   ✅ Caso de rollback: análise determinística
```

#### 5.1.2 Develop como Integração Confiável

```
Garantias sobre develop:

1. Estável dentro de limites:
   ✅ Código testado (unitários ≥ 80%)
   ✅ Features isoladas em branches
   ✅ Deploy em lower environments (DES, HMP)
   
2. Integração contínua:
   ✅ Novo código merge 1-2x/dia
   ✅ Conflicts resolvidos rapidamente (SLA 4h)
   ✅ Ahead/behind com main ≤ 7 dias
   
3. Rastreabilidade:
   ✅ Cada commit = feature/bug/refactor
   ✅ PR review antes de merge
   ✅ História mais granular que main (não squashed)
```

---

### 5.2 Clareza e Qualidade do Histórico

#### 5.2.1 Commits Estruturados

Exemplo de histórico de qualidade:

```
commit 5a3f2e1 (main, tag: v1.2.0)
Author: integrador <integrador@caixa.gov.br>
Date:   Tue Jun 25 10:30:00 2026 -0300

    Merge PR-127: [JIRA-456] Novo endpoint de consulta
    
    - 7 commits integrados
    - SonarQube: A
    - Coverage: 92%
    - 2 approvals: tech-lead, qa-team
    Signature: GPG signed ✓

commit 4d2e1f0 (develop)
Author: squad-backend <dev@squad.gov.br>
Date:   Mon Jun 23 16:45:00 2026 -0300

    feat(api): endpoint GET /api/v1/consulta
    
    Implementa novo endpoint para integração com terceiros.
    Aceita parâmetros de filtro e retorna paginado.
    
    JIRA-456

commit 3c1d0e9
Author: squad-backend <dev@squad.gov.br>
Date:   Mon Jun 23 16:30:00 2026 -0300

    test(api): adicionar testes unitários para novo endpoint
    
    - 15 casos de teste
    - Cobertura: 92%
    - Mock de dependencies externas
    
    JIRA-456

commit 2b0c9d8
Author: squad-backend <dev@squad.gov.br>
Date:   Mon Jun 23 15:20:00 2026 -0300

    refactor(api): extrair validação em ConsultaValidator
    
    Reduz complexidade de ConsultaController.
    Código mais testável e reutilizável.
    
    JIRA-456
```

Quando examinado meses depois:
```
git log --oneline main | head -20
├─ 5a3f2e1 Merge PR-127: [JIRA-456] Novo endpoint de consulta
├─ 4a2e1f0 Merge PR-126: [JIRA-450] Refactor de autenticação
├─ 3a1d0e9 Merge PR-125: [JIRA-460] Hotfix validação de entrada
├─ ...

Investigação de bug em produção (v1.2.0):
  git log --grep="JIRA-789" main
  → encontra commit imediatamente
  → ve approvals, mudanças, test coverage
  → pode fazer git show 5a3f2e1 para detalhe

Rollback:
  git revert 5a3f2e1 (seguro, pois squashed)
  → 1 revert commit, não afeta histórico anterior
```

#### 5.2.3 Versionamento Explícito

```
v1.0.0 (2026-04-15)
  - Initial release
  - Features: auth, pagamento básico
  - Coverage: 75%

v1.1.0 (2026-05-10)
  - Novas: PIX, consulta saldo
  - Bugs: 5 fixes
  - Breaking: campo 'type_code' obrigatório

v1.1.1 (2026-05-15)
  - Fix crítico: validação de token
  - Coverage: 78%

v1.1.5 (2026-06-10)
  - 4 bug fixes cumulativos
  - Coverage: 85%

v1.2.0 (2026-06-25)
  - Novo: consulta tributária
  - Refactor: core auth
  - Features: 8 issues
  - Breaking: nenhum
  - Coverage: 89%

Correlação automática com timestamps:
  git tag -l --format='%(tag) - %(taggerdate:short) - %(subject)'
  v1.2.0 - 2026-06-25 - Release v1.2.0
```

---

## 6. EVIDÊNCIAS DE FUNCIONAMENTO DO PROCESSO

### 6.1 Sinais Observáveis no Repositório

#### 6.1.1 Alinhamento entre Branches

**Indicador de Saúde: Ahead/Behind Metrics**

```
Mensuração semanal:

Semana 1 (baseline):
  develop → main: 5 commits ahead (normal, features em dev)
  config-hmp → develop: 2 commits behind (aceitável)
  
Semana 2:
  develop → main: 8 commits ahead (1-2 features)
  config-hmp → develop: 2 commits behind (reconciliação ok)
  
Semana 3 (release):
  develop → main: ZERO (release/v1.2.0 merge em main)
  config-hmp → main: ZERO (sincronia pré-produção)
  
Semana 4 (pós-release):
  develop → main: 3 commits ahead (novas features)
  config-hmp → develop: 1 commit behind (merge back)

Interpretação:
  ✅ Padrão previsível
  ✅ Sem divergências > 1 semana
  ✅ Reconciliação programada funciona
```

#### 6.1.2 Qualidade de Pull Requests

```
Métrica: PR QA Score

Exemplo PR-127 (Bom):
  Título: [JIRA-456] Novo endpoint de consulta ✅
  Descrição: Completa, contexto claro ✅
  Commits: 7, todos com mensagem descritiva ✅
  CI/CD: BUILD ✅ | TESTS ✅ | SONAR ✅ | SECURITY ✅
  Coverage: 92% ✅
  Approvals: 2 reviewers + 0 changes-requested ✅
  Merge: 2.5 dias em discuss (normal) ✅
  Score: 10/10

Exemplo PR-120 (Ruim):
  Título: "fix bugs" ❌ (vago, sem JIRA)
  Descrição: vazia ❌
  Commits: 23, misturando features e fixes ❌
  CI/CD: BUILD ❌ (compilation error)
  Coverage: 62% ❌
  Approvals: 1 com 5 changes-requested ❌
  Merge: 8 dias em discuss (muito) ❌
  Score: 2/10

Trend mensal (% de PRs > 8/10):
  Mês 1: 30% (baseline, pouca disciplina)
  Mês 2: 55% (treinamento começando funcionar)
  Mês 3: 78% (norma estabelecida)
  Mês 4: 92% (excelência)
```

#### 6.1.3 Consistência de Versionamento

```
Verificação trimestral:

Repositório: sisph-bff-jnd-construtoras

Tags/Releases:
  v0.0.1-SNAPSHOT       ❌ (não versionado)
  v1.0.0 (2026-04-15)   ✅ (assinado, anotado)
  v1.1.0 (2026-05-10)   ✅
  v1.1.1 (2026-05-15)   ✅
  v1.2.0 (2026-06-25)   ✅
  
Histórico de versões: Sequencial, sem saltos ou regressions
Assinaturas: 100% assinadas (GPG) após v1.0.0
Notas de release: 100% presentes em tags

Valor gerado: Confiança que tag = código testado/pronto
```

#### 6.1.4 Previsibilidade de Entregas

```
Forecast vs Realizado (últimas 4 releases):

Release v1.0.0:
  Planned: 2026-04-15
  Actual:  2026-04-16 (+1 dia, bug em HMP encontrado)
  Confidence: 90% (bem estimado)

Release v1.1.0:
  Planned: 2026-05-10
  Actual:  2026-05-10 (no tempo)
  Confidence: 100%

Release v1.1.5:
  Planned: 2026-06-10
  Actual:  2026-06-10 (no tempo)
  Confidence: 100%

Release v1.2.0:
  Planned: 2026-06-25
  Actual:  2026-06-25 (no tempo)
  Confidence: 100%

Trend: 75% previsibilidade perfeita (após mês 3)
Benefício: Stakeholders planejam com confiança
```

---

### 6.2 Dashboards e Relatórios

#### 6.2.1 Dashboard Semanal (Integrador)

```
# Git & Release Status - Week 24 (2026-06-16 to 2026-06-22)

## Portfolio Health

| Repositório | Main Tag | Develop Status | Config-HMP | Hotfix | Risk |
|-------------|----------|----------------|------------|--------|------|
| sisph-bff-jnd-construtoras | v1.2.0 | -3 commits | sync | 0 | ✅ |
| sisph-api-auditoria | v1.5.1 | +7 commits | 5 behind | 0 | ⚠️ |
| sisph-api-core-config | v2.0.0 | +2 commits | sync | 0 | ✅ |
| sisph-mfe-jnd-central-servicos | v0.3.0 | +1 commit | 1 behind | 0 | ✅ |

## PR Activity (Week 24)

- Created: 14
- Merged: 12
- Rejected: 0
- Avg time: 2.3 days
- Quality score: 85/100 (good)

## Risks & Actions

1. ⚠️ sisph-api-auditoria develop +7, config-hmp 5 behind
   Action: Schedule merge develop → config-hmp (Mon)
   
2. ✅ v1.2.0 stable in production (24h+)
   Evidence: Error rate < 0.5%, no rollback needed

## Next Week

- Release v1.1.5 for sisph-api-auditoria (planned Fri)
- Merge reconciliation for configs (Mon)
- Quarterly audit (Thu)
```

#### 6.2.2 Dashboard Mensal (Stakeholders)

```
# Integration & Versionamento - June 2026

## Executive Summary

✅ **Processo estabelecido e operacional**
- 33 repositórios sob governança GitFlow
- 100% de PRs em branches produtivas
- 0 pushes diretos em main
- 3 releases in-time (v1.0.0, v1.1.0, v1.2.0)

## Key Metrics

| Métrica | Jun | May | Δ | Target |
|---------|-----|-----|---|--------|
| Branches main/develop | 35/35 | 35/35 | 0% | 100% ✅ |
| PRs merged/total | 48/48 | 42/44 | +2 approved | 100% ✅ |
| Hotfix/mês | 1 | 2 | -50% | <2 ✅ |
| Avg PR review time | 2.3d | 3.1d | -26% | <3d ✅ |
| Commits conventional | 94% | 78% | +16% | 90% ✅ |
| Test coverage | 85% | 79% | +6% | 80% ✅ |

## Incidents & Learnings

1. **v1.1.1 Hotfix (2026-05-15)**: Token validation bug
   - Root cause: Missing edge case in validation logic
   - Response: 45 min (SLA: 60 min) ✅
   - Action: Enhanced test coverage (+12 cases)

2. **Config divergence (sisph-api-auditoria)**: 
   - Risk: config-hmp 5 commits behind develop
   - Root cause: Delayed reconciliation cycle
   - Action: Weekly reconciliation (vs monthly)

## Process Maturity

Evolution curve (1-5 scale):

Month 1: 2/5 (New, establishing)
Month 2: 3/5 (Operational)
Month 3: 4/5 (Consolidated)
Month 4: 4/5 (Stable, minor improvements)

Next: 5/5 (Excellent) by Q4 2026

## Portfolio Release Calendar

| Release | Date | Status | Confidence |
|---------|------|--------|------------|
| v1.0.0 (sisph-bff-jnd-construtoras) | 2026-04-16 | ✅ Prod | 90% |
| v1.1.0 (sisph-api-auditoria) | 2026-05-10 | ✅ Prod | 100% |
| v1.1.5 (sisph-api-core-config) | 2026-06-10 | ✅ Prod | 100% |
| v1.2.0 (sisph-bff-jnd-construtoras) | 2026-06-25 | ✅ Prod | 100% |
```

---

## 7. ROADMAP DE IMPLEMENTAÇÃO (3-6 MESES)

### Fase 1: Fundação (Semanas 1-4)

**Objetivo:** Estabelecer estrutura base, educar times, proteger branches

```
Week 1:
  ☐ Criar CODEOWNERS em todos os repos
  ☐ Implementar branch protection rules (main/develop)
  ☐ Setup GitHub audit logging
  ☐ Documentar GitFlow model

Week 2:
  ☐ Integrador workshop #1: "Git & GitFlow" (2h, 40+ participantes)
  ☐ Primeiro PR com Integrador reviewing
  ☐ Setup CI/CD quality gates
  ☐ Template de PR standardizado

Week 3:
  ☐ 10 PRs mergeados (piloto)
  ☐ Integrador workshop #2: "Conflict resolution" (1.5h)
  ☐ Setup branch monitoring script
  ☐ Primeira release candidata

Week 4:
  ☐ Primeira release em produção (v1.0.0)
  ☐ Postmortem & lessons learned
  ☐ Retrospective com squads
  ☐ Ajustes ao processo
```

### Fase 2: Consolidação (Semanas 5-8)

**Objetivo:** Autonomia parcial dos squads, ciclos de release estáveis

```
Week 5-6:
  ☐ 20+ PRs mergeados
  ☐ Segunda release (v1.1.0)
  ☐ Hotfix piloto (cenário simulado)
  ☐ Primeira reconciliação config branches

Week 7-8:
  ☐ 30+ PRs mergeados (baseline steady state)
  ☐ Terceira release
  ☐ Hotfix real em produção
  ☐ Métricas iniciais compiladas
  ☐ Dashboard em operação
```

### Fase 3: Manutenção e Evolução (Semanas 9+)

**Objetivo:** Sustentação do processo, evolução de maturidade

```
Ongoing:
  ☐ Ciclo de release semanal/bimensal (estável)
  ☐ 0-1 hotfix/mês (esperado)
  ☐ Dashboard atualizado (semanal)
  ☐ Integrador disponível para Q&A
  ☐ Treinamento contínuo (new hires)
  ☐ Melhoria contínua (retrospectives)
```

---

## 8. CONCLUSÃO

A atuação do Integrador como guardião da integridade de versionamento e integração de código representa um investimento estruturante em confiabilidade operacional.

Através de:

1. **Disciplina de processo** (GitFlow, PRs, branch protection)
2. **Padronização** (commits, versioning, nomenclatura)
3. **Automação** (CI/CD gates, branch monitoring)
4. **Comunicação** (dashboards, relatórios, coaching)

...é possível transformar um portfólio fragmentado e arriscado em um ativo governável, confiável e escalável.

**Evidências práticas do sucesso:**
- ✅ Branches permanentes sincronizadas
- ✅ PRs de qualidade consistente
- ✅ Releases previsíveis e no prazo
- ✅ Histórico auditável
- ✅ Zero pushes diretos em main
- ✅ Hotfixes resolvidos em minutos
- ✅ Maturidade técnica elevada

O investimento em 3-6 meses de estruturação disciplinada resulta em **economia sustentada** de risco, tempo de remediação e confiabilidade operacional para os próximos anos.

---

**Documento Preparado por:** Integrador de Código
**Data:** 23 de Junho, 2026
**Versão:** 1.0
**Status:** Proposta para Aprovação

