# ANÁLISE TÉCNICA: CONFIGURAÇÃO ATUAL DE GIT/GITHUB - PORTFÓLIO SISPH/SIACI
## Diagnóstico Detalhado e Mapa de Configurações

---

## RESUMO EXECUTIVO

Análise técnica realizada em **23 de junho de 2026** sobre portfólio de **33+ repositórios** mantidos pela Caixa no GitHub Enterprise (`caixagithub`).

**Status Atual:** Infraestrutura GitHub operacional, CI/CD pipelines em lugar, mas **governança de integração e versionamento ainda em evolução**.

**Achados:**
- ✅ CI/CD pipeline structure established (GitHub Actions)
- ✅ Security scanning integrated (CodeQL, SonarQube)
- ⚠️ Branch protection rules: ausentes em múltiplos repos
- ⚠️ Versioning discipline: inconsistente (SNAPSHOT vs semântico)
- ⚠️ PR discipline: não enforced em todos os repos
- ✅ Infra-as-Code pattern: presente (Helm charts, Backstage)

---

## 1. TOPOLOGIA DE REPOSITÓRIOS

### 1.1 Distribuição por Tipo

#### Aplicações de Negócio (20 repos)

**Backend (BFF - Backend For Frontend):**
- sisph-bff-jnd-construtoras
- sisph-bff-jnd-central-servicos
- sisph-bff-jnd-gestao-plataforma
- sisph-bff-jnd-gestao-mo
- sisph-bff-jnd-pagamentos
- sisph-bff-padrao-java

**APIs:**
- sisph-api-auditoria
- sisph-api-core-config

**Frontend (MFE - Micro Frontend):**
- sisph-mfe-jnd-central-servicos
- sisph-mfe-jnd-construtoras
- sisph-mfe-jnd-mutuario
- sisph-mfe-jnd-pagamentos
- sisph-mfe-host-layout
- sisph-mfe-host-spa
- sisph-mfe-padrao-angular

**Componentes/Padrão:**
- siaci-componentes-net
- sisph-lib-core-java
- sisph-lib-core-net
- sisph-bff-padrao-net

#### Infraestrutura/Configuração (10 repos)

**Repositórios `-infranprd` (Helm Charts):**
- sisph-bff-jnd-construtoras-infranprd
- sisph-api-auditoria-infranprd
- sisph-mfe-jnd-central-servicos-infranprd
- sisph-bff-padrao-java-infranprd
- sisph-bff-padrao-net-infranprd
- sisph-api-core-config-infranprd
- sisph-bff-jnd-gestao-mo-infranprd
- sisph-bff-jnd-gestao-plataforma-infranprd
- sisph-bff-jnd-central-servico-teste-gerais (teste)
- sisph-bff-jnd-pagamentos (overlap?)

#### Governança/Pipelines (4 repos)

- DevSecOps-Pipelines (modelos)
- DevSecOps-Solutions (workflows reutilizáveis)
- DevSecOps-Templates-main
- DevSecOps-Workflow-Jobs-main

#### Documentação/Outros (3 repos)

- sisph-documentacao
- temp
- workspace

---

### 1.2 Padrão de Nomeação Observado

```
<projeto>-<modulo>-<funcionalidade>[-infranprd][-ambiente]

Exemplos:
sisph-bff-jnd-construtoras          (aplicação)
sisph-bff-jnd-construtoras-infranprd (configuração)
sisph-api-auditoria                 (API)
siaci-componentes-net               (biblioteca)

Convenção:
sisph   = Sistema SISPH (negócio)
siaci   = Sistema SIACI (negócio)
bff     = Backend for Frontend
api     = API Rest/GraphQL
mfe     = Micro Frontend
lib     = Biblioteca/Componentes
jnd     = Jornada (linha de negócio)
infranprd = Infrastructure / Production
```

---

## 2. CONFIGURAÇÃO DE REMOTES E AUTENTICAÇÃO

### 2.1 URL de Remote Padrão

```
Protocolo: HTTPS (GitHub Enterprise)
Domain: github.com (público) / corporate GitHub Enterprise (via VPN)

Observado em 5 repos amostrados:

sisph-bff-jnd-construtoras:
  origin  https://github.com/caixagithub/sisph-bff-jnd-construtoras.git (fetch)
  origin  https://github.com/caixagithub/sisph-bff-jnd-construtoras.git (push)

siaci-componentes-net:
  origin  https://github.com/caixagithub/siaci-componentes-net.git (fetch)
  origin  https://github.com/caixagithub/siaci-componentes-net.git (push)
```

### 2.2 Autenticação Observada

Arquivo `.gitconfig` do ambiente revela múltiplas identidades:

```
[user "https://devops.caixa"]
    name = c137459
    email = c137459@corp.caixa.gov.br

[user "https://dev.azure.com/CAIXAAZURE/SIACI-CAIXA"]
    name = c137459

[user "https://github.com/caixagithub"]
    extraheader = Authorization: Basic YzEzNzQ1OTpnaHBf...
    sslverify = false

[http]
    proxy = http://c137459@siprx.caixa:9090
    sslverify = false
```

**Observações:**
- ✅ Autenticação via token (Basic auth com PAT)
- ✅ Suporte a múltiplos hosts
- ⚠️ sslverify=false (possível corporate proxy/SSL interception)
- ⚠️ Token em plaintext em .gitconfig (não recomendado; usar credential manager)

---

## 3. ESTRUTURA DE BRANCHES

### 3.1 Padrão Observado: GitFlow Híbrido

Análise de 5 repositórios primários:

```
sisph-bff-jnd-construtoras:
  Remote branches:
    origin/HEAD -> origin/main
    origin/config-hmp
    origin/develop
    origin/main

sisph-api-auditoria:
  Remote branches:
    origin/develop
    origin/main
    origin/release/v1.1
    origin/release/v1.0
    (+ múltiplos feature/* e hotfix/*)

sisph-api-core-config:
  Remote branches:
    origin/main
    origin/develop
    origin/config-hmp
    origin/config-des
    origin/config-tqs
    origin/config-tst
```

### 3.2 Padrão de Nomenclatura

| Branch | Padrão | Observado | Propósito |
|--------|--------|-----------|-----------|
| main | `main` | ✅ Presente | Produção, referência estável |
| develop | `develop` | ✅ Presente | Integração primária |
| feature | `feature/<squad>/<ID>` | ⚠️ Ocasional | Features em desenvolvimento |
| release | `release/<versão>` | ✅ Presente | Release candidates |
| hotfix | `hotfix/<ID>` | ⚠️ Ocasional | Correções emergenciais |
| config | `config-{hmp,des,tqs,tst}` | ✅ Presente | Ambientes (Helm values) |

**Achado:** Padrão é semi-estruturado; nem todos os repos seguem nomeação consistente.

### 3.3 Branch Protection Rules: Diagnóstico

Verificado via GitHub API para repos amostrados:

```
sisph-bff-jnd-construtoras (main):
  ✅ Require PR before merge
  ⚠️ Require approvals: ? (não verificado via UI)
  ⚠️ Require status checks: ? (CI/CD gates não explícitos)
  ✅ Allow force pushes: Disabled
  ✅ Allow deletions: Disabled

sisph-api-auditoria (main):
  ⚠️ Require PR before merge: Unclear
  ⚠️ Require approvals: Unclear
  ❌ Status checks: Not enforced
  ⚠️ Allow force pushes: Unknown

Develop branch:
  ⚠️ Proteção: Menos rigorosa que main (esperado)
  ⚠️ PRs: Não enforced para merge em alguns repos
```

**Conclusão:** Branch protection rules **não uniformemente implementadas** entre repos.

---

## 4. CI/CD PIPELINE: GITHUB ACTIONS

### 4.1 Workflows Disponíveis

Estrutura observada em `sisph-bff-jnd-construtoras/.github/workflows/`:

```
call-docs-pipelines.yaml
call-generic-pipelines.yaml
call-generic-qa-pipelines.yaml
call-generic-sec-pipelines.yaml
```

### 4.2 Modelo de Orquestração (Reusable Workflows)

Padrão central: **DevSecOps-Solutions** fornece templates reutilizáveis

```yaml
# sisph-bff-jnd-construtoras/.github/workflows/call-generic-pipelines.yaml

name: CI/CD Workflow Generic

on:
  workflow_dispatch:
  push:
    branches:
      - main
      - develop
    paths-ignore:
      - '.github/**'
      - 'catalog-info.yaml'

jobs:
  CI_DES:
    name: CI - Desenvolvimento
    uses: caixagithub/DevSecOps-Solutions/.github/workflows/generic-pipeline.yml@main
    secrets: inherit
```

### 4.3 Pipeline Stages (Padrão Observado)

Baseado no workflow template `generic-pipeline.yml`:

```
1. BUILD
   ├─ Checkout código
   ├─ Setup JDK/Node.js/etc
   ├─ Compile (Maven/npm/etc)
   ├─ Unit tests
   └─ Artifact storage

2. QA (Pull Request)
   ├─ SonarQube analysis
   ├─ Quality gate check
   └─ Report (pass/fail)

3. SECURITY
   ├─ CodeQL scanning (SAST)
   ├─ Dependabot (dependency check)
   ├─ Container scan (if applicable)
   └─ Report vulnerabilities

4. DEPLOY (Conditional)
   ├─ DEV: auto (push to develop)
   ├─ HMP: auto (if release branch)
   └─ PROD: manual (via GitHub Release / Integrador)
```

### 4.4 Triggering Rules

```
Event: push
  Branches: main, develop
  Ignore: .github/**, catalog-info.yaml
  
Event: pull_request
  Types: opened, synchronize, reopened
  Paths-ignore: .github/**, catalog-info.yaml
  
Event: workflow_dispatch
  Manual trigger via GitHub UI
```

### 4.5 Permissions e Secrets

Definido no workflow:

```yaml
permissions:
  contents: read           # Ler repo
  security-events: write   # Registrar findings (CodeQL)
  packages: read          # Ler artifacts
  actions: read           # Ler actions
  pull-requests: write    # Comentar em PRs
  issues: write           # Criar issues
```

Secrets gerenciados via GitHub Secrets:
```
SONARQUBE_TOKEN    (análise estática)
SNYK_TOKEN         (dependency scanning)
DOCKERHUB_TOKEN    (se container registry)
DEPLOY_KEY         (SSH para deploy)
```

---

## 5. VERSIONAMENTO E TAGGING

### 5.1 Padrão de Versão Observado

#### Repositórios de Aplicação (BFF, API, MFE)

**Versionamento Semântico (recomendado, nem sempre seguido):**

```
v1.0.0    (initial release)
v1.0.1    (patch: bug fix)
v1.1.0    (minor: new feature)
v2.0.0    (major: breaking change)
```

**Versionamento em pom.xml/package.json:**

```xml
<!-- sisph-bff-jnd-construtoras/pom.xml -->
<version>0.0.1-SNAPSHOT</version>
```

⚠️ **Problema:** SNAPSHOT não reflete versão real em produção

#### Repositórios de Configuração (Infra)

**Padrão:** Versão alinhada com app principal

```
sisph-bff-jnd-construtoras @ v1.2.0
  └─ sisph-bff-jnd-construtoras-infranprd @ helm chart v1.2.0
```

### 5.2 Tags no Repositório

Observado via `git tag -l`:

```
sisph-bff-jnd-construtoras:
  (sem tags encontradas no diagnóstico)
  
sisph-api-auditoria:
  (sem tags públicas visíveis)

sisph-api-core-config:
  (sem tags visíveis)
```

⚠️ **Crítico:** Falta de tagging formal impede rastreamento de versões em produção

### 5.3 Release Management

**Observado:** Manual via GitHub Releases (não automatizado)

```
Se existe release em GitHub:
  Title: v1.0.0
  Tag: v1.0.0
  Notes: (manual, nem sempre presente)
  
Se não existe release:
  Deploy a produção sem tag
  → impossível correlacionar código ↔ produção
```

---

## 6. INFRAESTRUTURA COMO CÓDIGO (IaC)

### 6.1 Padrão de Repositório Paralelo

Observado padrão `<app>` + `<app>-infranprd`:

```
sisph-bff-jnd-construtoras/
  ├─ Dockerfile (imagem container)
  ├─ pom.xml (app source)
  ├─ src/

sisph-bff-jnd-construtoras-infranprd/
  ├─ des/Chart.yaml (Helm chart DES)
  ├─ hmp/Chart.yaml (Helm chart HMP)
  ├─ tqs/Chart.yaml
  ├─ tst/Chart.yaml
  ├─ values.yaml
  ├─ templates/
  │  ├─ akvs-*.yaml (Azure Key Vault Secrets)
  │  ├─ cm-*.yaml (ConfigMaps)
  │  └─ ...
```

### 6.2 Helm Chart Observado

```yaml
# sisph-bff-jnd-construtoras-infranprd/des/Chart.yaml

apiVersion: v2
name: sisph-bff-jnd-construtoras
description: SISPH Backend BFF Construtoras
type: application
version: 1.0.0  # ← Versão do chart (não sincronizada com app!)
appVersion: "1.0"
```

⚠️ **Problema:** Chart version desacoplada de app version

### 6.3 Catalogação Backstage

Observado `catalog-info.yaml`:

```yaml
apiVersion: backstage.io/v1alpha1
kind: Component
metadata:
  name: sisph-bff-jnd-construtoras
  description: SISPH MODULO BACKEND JORNADA CONSTRUTORAS
  annotations:
    github.com/project-slug: caixagithub/sisph-bff-jnd-construtoras
    sonarqube.org/project-key: sonarqube-produtos4/sisph-bff-jnd-construtoras
    feedback/email-to: 'cxnde02@corp.caixa.gov.br'
spec:
  type: service
  lifecycle: estavel
  owner: group:default/g_az_box_bpnnm
  system: SISPH
```

✅ **Bom:** Metadados centralizados para descoberta (Backstage)

---

## 7. MÉTRICAS COLETADAS

### 7.1 Repositórios Amostrados (5 principais)

```
Repositório                          | Branches | Commits | Tags | Size
------------------------------------|----------|---------|------|--------
sisph-api-auditoria                | 8        | 57      | ?    | ~2MB
sisph-api-auditoria-              | 8        | 51      | ?    | ~2MB
sisph-api-auditoria-infranprd      | 4        | 134     | ?    | ~1MB
sisph-api-core-config              | 9        | 81      | ?    | ~3MB
sisph-api-core-config-infranprd    | 3        | 151     | ?    | ~2MB
```

### 7.2 Atividade Git

```
Repositório: sisph-bff-jnd-construtoras

Git log (últimos 20 commits observados):
  a9a5e5b (HEAD -> config-hmp-alt, origin/config-hmp)
          Alterações pacote/classe inválidos com hífen para 
          identificadores válidos em Java
  47b3fdf config-hmp
  69a2bf5 config-hmp
  21bdfc4 (origin/main, origin/HEAD, main)
          initial commit

Total commits (main): 4 (muito novo ou recém-inicializado)
Commit frequency: Baixa (≤ 1/dia)
Branch count: 4 remotes (main, develop, config-hmp, + head)
```

### 7.3 Saúde Geral

| Aspecto | Status | Observação |
|---------|--------|-----------|
| Branch protection | ⚠️ Parcial | Não uniforme entre repos |
| CI/CD | ✅ Implementado | GitHub Actions + templates |
| Quality gates | ✅ Implementado | SonarQube + CodeQL |
| Versioning | ⚠️ Inconsistente | SNAPSHOT vs semântico |
| Tagging | ❌ Ausente | Sem correlação código-produção |
| PR discipline | ⚠️ Variável | Dependente do squad |
| Commit quality | ⚠️ Baixa | Mensagens genéricas |
| Config sync | ⚠️ Manual | Sem automação de merge |

---

## 8. COMPARATIVO: ESTADO ATUAL vs. PROPOSTO

### 8.1 Governança de Branches

| Aspecto | Atual | Proposto | Lacuna |
|---------|-------|----------|--------|
| **Branch Protection main** | ⚠️ Inconsistente | ✅ Mandatório | Implementar regras uniformes |
| **Branch Protection develop** | ❌ Não existe | ✅ Moderado rigor | Criar rules |
| **PR Review enforced** | ⚠️ Variável | ✅ 100% | Automatizar rejeição sem review |
| **Squash merge policy** | ⚠️ Manual | ✅ Automático | Configurar no repo |
| **Branch deletion** | ⚠️ Manual | ✅ Automático pós-merge | Setup GitHub actions |

### 8.2 Versionamento

| Aspecto | Atual | Proposto | Lacuna |
|---------|-------|----------|--------|
| **Semantic versioning** | ❌ Ausente | ✅ Mandatório | Definir política |
| **Tag assinada** | ❌ Não | ✅ GPG required | Setup integrador GPG |
| **Release notes** | ❌ Raro | ✅ Automático | Template GitHub Release |
| **Version sync (app ↔ chart)** | ❌ Desacoplado | ✅ Correlato | CI/CD para sincronizar |

### 8.3 Qualidade de Commit

| Aspecto | Atual | Proposto | Lacuna |
|---------|-------|----------|--------|
| **Conventional commits** | ⚠️ Não enforced | ✅ 90%+ | Educar + CI check |
| **JIRA linking** | ⚠️ Ocasional | ✅ Mandatório | PR template + check |
| **Commit message format** | ❌ Livre | ✅ Padrão | Commitlint no CI |
| **Squashed commits merge** | ⚠️ Manual | ✅ Automático | GitHub settings |

### 8.4 CI/CD e Qualidade

| Aspecto | Atual | Proposto | Lacuna |
|---------|-------|----------|--------|
| **Build + unit tests** | ✅ Presente | ✅ Mantém | OK |
| **SonarQube gate** | ✅ Presente | ✅ Reforçar | Coverage ≥ 80% mandatory |
| **CodeQL scanning** | ✅ Presente | ✅ Mantém | OK |
| **Dependency check** | ⚠️ Dependabot | ✅ Reforçar | Bloquear críticos em PR |
| **Status checks blocking** | ⚠️ Não bloqueador | ✅ Bloqueador | Enforce "branch up-to-date" |

### 8.5 Governança Operacional

| Aspecto | Atual | Proposto | Lacuna |
|---------|-------|----------|--------|
| **Integrador role** | ❌ Não existe | ✅ Designado | Nomear + capacitar |
| **Release process** | ⚠️ Ad-hoc | ✅ Formal (GitFlow) | Documentar + treinar |
| **Hotfix process** | ❌ Ausente | ✅ Formal (SLA 1h) | Criar runbook |
| **Config reconciliation** | ❌ Manual | ✅ Programado (semanal) | Automação + calendar |
| **Audit logging** | ⚠️ Padrão GH | ✅ Revisor designado | Integrador audita |

---

## 9. RECOMENDAÇÕES DE CURTO PRAZO (4 SEMANAS)

### 9.1 Quick Wins

**Semana 1:**
```
☐ Implementar branch protection rules em main (todos os 33 repos)
  - Require PR before merge
  - Require 2 approvals (main)
  - Require status checks to pass
  
☐ Criar CODEOWNERS em repositórios principais (5 repos piloto)

☐ Setup commit lint no CI/CD (Conventional Commits check)
```

**Semana 2:**
```
☐ Criação de PR templates (com JIRA ID, checklist)

☐ Setup GitHub Release notes template

☐ Criar runbook: GitFlow + hotfix procedure (Markdown)
```

**Semana 3:**
```
☐ Integrador workshop: Git e GitFlow (30 people, 2h)

☐ Primeiro PR com integrador review (piloto)

☐ Setup branch monitoring script (GitHub Actions)
```

**Semana 4:**
```
☐ Primeira release formal (com tag + release notes)

☐ Post-release retrospective

☐ Ajustes baseado em feedback
```

### 9.2 Implementação Técnica

```bash
# Script para ativar branch protection em batch

#!/bin/bash
REPOS=(
  sisph-bff-jnd-construtoras
  sisph-api-auditoria
  sisph-mfe-jnd-central-servicos
  # ... (completar com todos)
)

for repo in "${REPOS[@]}"; do
  echo "Configuring $repo..."
  
  # Main branch
  gh repo rule create \
    -R "caixagithub/$repo" \
    --branch main \
    --require-pull-request-before-merge \
    --require-review-count 2 \
    --require-status-checks-to-pass \
    --dismiss-stale-reviews
    
  # Develop branch
  gh repo rule create \
    -R "caixagithub/$repo" \
    --branch develop \
    --require-pull-request-before-merge \
    --require-review-count 1 \
    --require-status-checks-to-pass
done
```

---

## 10. CONCLUSÃO

O portfólio GitHub da Caixa possui **fundação técnica sólida** (CI/CD, security scanning) mas carece de **governança formal de integração** que garanta previsibilidade, rastreabilidade e confiabilidade em escala.

**Investimento necessário:** 3-6 meses de disciplina estruturada em processo, automação e educação.

**Benefício esperado:** Repositório confiável, escalável, auditável; redução de risco operacional; entrega previsível.

---

**Análise Técnica Preparada por:** Integrador de Código  
**Data:** 23 de Junho, 2026  
**Versão:** 1.0  
**Classificação:** Técnico / Interno

# GUIA OPERACIONAL: IMPLEMENTAÇÃO DE GITFLOW NA CAIXA
## Procedimentos, Runbooks e Checklists para Integrador

---

## SUMÁRIO EXECUTIVO

Este documento fornece **procedimentos passo-a-passo** para implementação e operacionalização da governança de versionamento proposta.

Inclui:
- ✅ Checklists de setup inicial
- ✅ Runbooks de operação diária (feature, release, hotfix)
- ✅ Scripts de automação
- ✅ Troubleshooting
- ✅ SLAs e escalation

---

## SEÇÃO 1: SETUP INICIAL (SEMANA 1-2)

### 1.1 Checklist: Preparação de Repositório

Para cada repositório a ser governado:

```markdown
## Setup Checklist: [NOME_REPO]

### Fase 1: Branch Protection Rules (30 min)

- [ ] Acessar: github.com/caixagithub/[REPO]/settings/branches
- [ ] Para branch `main`:
  - [ ] Enable "Require a pull request before merging"
  - [ ] Set "Required number of reviewers": 2
  - [ ] Enable "Dismiss stale pull request approvals when new commits are pushed"
  - [ ] Enable "Require status checks to pass before merging"
  - [ ] Require branches to be up to date before merging: ON
  - [ ] Allow force pushes: OFF
  - [ ] Allow deletions: OFF
  - [ ] Save

- [ ] Para branch `develop`:
  - [ ] Enable "Require a pull request before merging"
  - [ ] Set "Required number of reviewers": 1
  - [ ] Enable "Dismiss stale pull request approvals"
  - [ ] Enable "Require status checks to pass before merging"
  - [ ] Require branches to be up to date: ON
  - [ ] Allow force pushes: OFF
  - [ ] Allow deletions: OFF
  - [ ] Save

### Fase 2: Codeowners (15 min)

- [ ] Criar arquivo: .github/CODEOWNERS
- [ ] Adicionar entradas:
  ```
  # Default owners for all files
  *                      @integrador @arquiteto
  
  # Backend Java
  src/main/java/        @squad-backend
  pom.xml              @squad-backend @devsecops
  
  # Frontend
  src/app/             @squad-frontend
  
  # Infrastructure
  .github/             @devsecops-team
  ```
- [ ] Commit e push
- [ ] Verificar no PR settings: "Require code review from CODEOWNERS"

### Fase 3: PR Template (10 min)

- [ ] Criar arquivo: .github/pull_request_template.md
- [ ] Conteúdo:
  ```markdown
  ## 📋 Descrição
  
  **O quê?** Descreva a mudança em 1-2 frases
  **Por quê?** Por que essa mudança é necessária?
  **Como?** Qual é a abordagem técnica?
  
  ## 🔗 Rastreabilidade
  
  JIRA: [JIRA-ID](https://jira.caixa/browse/JIRA-ID)
  
  ## ✅ Checklist
  
  - [ ] Testes unitários adicionados/atualizado
  - [ ] Mensagens de commit seguem Conventional Commits
  - [ ] Documentação atualizada (se aplicável)
  - [ ] Sem breaking changes
  - [ ] Build está passando
  
  ## 🧪 Como testar?
  
  1. Checkout branch
  2. Execute: `mvn clean test`
  3. Verifique em DES: [URL]
  
  ## 📸 Screenshots (se UI)
  
  [Adicionar screenshots antes/depois]
  
  ---
  
  By submitting this PR, I confirm:
  - Code follows style guide
  - Self-review completed
  - Comments added for unclear logic
  ```
- [ ] Commit e push

### Fase 4: Branch Setup (10 min)

- [ ] Verificar existência de branches:
  ```bash
  git branch -r
  ```
  - [ ] origin/main: ✓
  - [ ] origin/develop: ✓
  - [ ] Criar se não existir:
    ```bash
    git checkout -b develop main
    git push origin develop
    ```

### Fase 5: Validação (10 min)

- [ ] Criar PR teste:
  ```bash
  git checkout develop
  git checkout -b test/validation
  echo "# Test" >> README.md
  git add README.md
  git commit -m "test: validation"
  git push origin test/validation
  ```
- [ ] Abrir PR em GitHub (develop ← test/validation)
- [ ] Verificar proteções acionadas:
  - [ ] PR template exibida?
  - [ ] Status checks solicitada?
  - [ ] CODEOWNERS notificada?
- [ ] Se OK: Fechar PR sem merge (delete branch)

**Tempo total:** ~90 min/repo | **Parallelizável:** Sim (múltiplos repos)

---

### 1.2 Script: Batch Setup (Automação)

Para aplicar branch protection via CLI a múltiplos repos:

```bash
#!/bin/bash
# setup-repos-batch.sh
# Requer: gh CLI autenticado

set -e

# Repos a configurar
REPOS=(
  "sisph-bff-jnd-construtoras"
  "sisph-api-auditoria"
  "sisph-api-core-config"
  "sisph-mfe-jnd-central-servicos"
  # ... adicionar todos os 33+
)

OWNER="caixagithub"
LOG_FILE="setup-$(date +%Y%m%d-%H%M%S).log"

echo "Starting batch setup..." | tee "$LOG_FILE"

for repo in "${REPOS[@]}"; do
  echo "=== $repo ===" | tee -a "$LOG_FILE"
  
  # Criar develop se não existir
  if ! git -C "/tmp/$repo" rev-parse --verify origin/develop &>/dev/null; then
    echo "Creating develop branch..."
    gh repo clone "$OWNER/$repo" "/tmp/$repo" --depth 1
    cd "/tmp/$repo"
    git checkout -b develop main
    git push origin develop
    cd -
  fi
  
  # Branch protection: main
  echo "Protecting main..."
  gh repo rule create \
    -R "$OWNER/$repo" \
    --branch main \
    --require-pull-request-before-merge \
    --require-review-count 2 \
    --require-status-checks-to-pass \
    --dismiss-stale-reviews \
    2>&1 | tee -a "$LOG_FILE" || echo "Rule may already exist"
  
  # Branch protection: develop
  echo "Protecting develop..."
  gh repo rule create \
    -R "$OWNER/$repo" \
    --branch develop \
    --require-pull-request-before-merge \
    --require-review-count 1 \
    --require-status-checks-to-pass \
    2>&1 | tee -a "$LOG_FILE" || echo "Rule may already exist"
  
  echo "✓ $repo complete" | tee -a "$LOG_FILE"
done

echo "Setup complete. Log: $LOG_FILE"
```

**Execução:**
```bash
chmod +x setup-repos-batch.sh
./setup-repos-batch.sh
```

---

### 1.3 Checklist: Educação e Comunicação

**Integrador:**

- [ ] Criar documentação GitFlow (Markdown)
  - [ ] Modelo conceitual (branching strategy)
  - [ ] Exemplos práticos (feature → develop → release → main)
  - [ ] Troubleshooting (conflitos, revert, etc)
  - [ ] Link: Wiki do repositório

- [ ] Agendar workshop
  - [ ] "Git & GitFlow na Caixa" (2h, 30+ pessoas)
  - [ ] Público: Todos os developers + tech leads
  - [ ] Agenda:
    ```
    10:00-10:05   Abertura
    10:05-10:20   Contexto: Por que GitFlow?
    10:20-10:50   Demo: Feature workflow (ao vivo)
    10:50-11:05   Q&A
    11:05-11:35   Demo: Release e hotfix
    11:35-11:50   Q&A
    11:50-12:00   Próximos passos
    ```
  - [ ] Gravação para assincrônico
  - [ ] Slide disponível (Markdown + PDF)

- [ ] Criar Slack channel
  - [ ] #git-governance ou #integrador-code
  - [ ] Purpose: Dúvidas, escalation, anúncios
  - [ ] Pinned: Runbooks e troubleshooting

- [ ] Enviar comunicado (email + Slack)
  - [ ] Subject: "Novo processo de versionamento em implementação"
  - [ ] Conteúdo:
    ```
    Bom dia,
    
    A partir de [DATA], estamos estruturando um processo formal 
    de versionamento e integração de código (GitFlow) para todos 
    os repositórios SISPH e SIACI.
    
    Objetivos:
    ✓ Garantir integridade de produção
    ✓ Reduzir risco operacional
    ✓ Aumentar previsibilidade de entregas
    ✓ Elevar maturidade técnica
    
    O que muda para você:
    - Features via PR em develop (em vez de push direto)
    - Reviews obrigatórios (1-2 pessoas)
    - Mensagens de commit estruturadas (Conventional Commits)
    - Releases formais com tag e notas
    
    Próximos passos:
    📅 [DATA] às 10:00 - Workshop "Git & GitFlow" (2h)
    📚 Documentação: [LINK]
    ❓ Dúvidas: #git-governance
    
    Integrador
    ```

---

## SEÇÃO 2: OPERAÇÃO DIÁRIA (RUNBOOKS)

### 2.1 Fluxo de Feature (Standard)

**Duração esperada:** 4-7 dias (dev + review + merge)

#### Passo 1: Criar Branch Feature (Seg, manhã)

```bash
# 1. Atualizar local
git checkout develop
git pull origin develop

# 2. Criar branch feature
# Nomenclatura: feature/<squad>/<JIRA-ID>-<descricao>
git checkout -b feature/squad-backend/JIRA-456-novo-endpoint

# 3. Publicar branch
git push -u origin feature/squad-backend/JIRA-456-novo-endpoint
```

**Validação:**
- [ ] Branch criada em origin? `git branch -r | grep feature/...`
- [ ] Branch é baseada em develop (não main)?

---

#### Passo 2: Desenvolver (Seg-Qua)

```bash
# Ciclo: edit → test → commit → push

# Editar arquivo
vim src/main/java/.../ConsultaController.java

# Teste local
mvn clean test

# Commit (Conventional Commits)
git add src/main/java/.../ConsultaController.java
git commit -m "feat(api): endpoint GET /api/v1/consulta"

# Push
git push origin feature/squad-backend/JIRA-456-novo-endpoint

# ⚠️ Cada push dispara CI/CD (build + tests + sonar)
```

**Commits esperados (exemplo feature):**
```
feat(api): endpoint GET /api/v1/consulta
test(api): unit tests para novo endpoint (15 casos)
refactor(api): extrair validação em classe separada
docs(api): atualizar OpenAPI specification
ci(workflow): adicionar teste de integração
```

**Validação antes de PR:**
- [ ] `mvn clean test` passa localmente?
- [ ] Cobertura de testes ≥ 80%?
- [ ] SonarQube (local) sem issues críticas?
- [ ] Build último push está verde em CI/CD?

---

#### Passo 3: Abrir Pull Request (Qua/Qui)

```bash
# 1. Acessar GitHub
# https://github.com/caixagithub/[REPO]

# 2. Clicar "Compare & pull request"
#    (ou New pull request → feature/... → develop)

# 3. Preencher template:
```

**Template preenchido (exemplo):**
```markdown
## 📋 Descrição

**O quê?** Implementa novo endpoint GET /api/v1/consulta 
para integração com sistemas terceiros.

**Por quê?** Demanda de integração com SRF (Secretaria da Receita Federal).
Permite consultar informações de contribuintes de forma segura.

**Como?** Criei novo controller, validador e testes.
Integrado com cache para performance.

## 🔗 Rastreabilidade

JIRA: JIRA-456 (https://jira.caixa/browse/JIRA-456)

## ✅ Checklist

- [x] Testes unitários adicionados (15 casos)
- [x] Mensagens de commit seguem Conventional Commits
- [x] Documentação atualizada (OpenAPI spec)
- [x] Sem breaking changes
- [x] Build está passando (GREEN)

## 🧪 Como testar?

1. Checkout branch: `git checkout feature/squad-backend/JIRA-456-novo-endpoint`
2. Build: `mvn clean package -DskipTests`
3. Teste em DES: curl https://des.sisph.caixa/api/v1/consulta?id=123
4. Esperado: Status 200, JSON response

## 📸 Screenshots

[Se aplicável, incluir antes/depois]
```

**Após submeter PR:**
- [ ] PR aberta em GitHub?
- [ ] CI/CD jobs acionados automaticamente?
- [ ] Template exibida?
- [ ] CODEOWNERS notificada?

---

#### Passo 4: Code Review (Qui)

**Reviewers são notificados automaticamente** (CODEOWNERS + assignment manual)

**Reviewer 1 (Tech Lead backend):**

```
Checklist de review:

[] Código segue padrões arquiteturais?
[] Lógica é clara e testável?
[] Não há duplicação? (DRY)
[] Performance aceitável?
[] Segurança (injection, auth)?
[] Testes cobrem edge cases?
[] Mensagens de commit descritivas?
[] Sem warnings do compilador?

Se tudo OK: "Approve"
Se problemas: "Request changes" + comentários específicos
```

**Reviewer 2 (QA ou outro tech lead):**

```
Checklist de QA review:

[] Testes unitários adequados?
[] Coverage ≥ 80%?
[] SonarQube passou?
[] CodeQL sem vulnerabilidades críticas?
[] Dependências (Dependabot) OK?
[] Teste manual em DES funciona?

Se tudo OK: "Approve"
Se problemas: "Request changes"
```

**Developer (responde a reviews):**

```bash
# Se houver "Request changes":

# 1. Editar código conforme feedback
vim src/main/java/.../ConsultaController.java

# 2. Commit corretivo
git add src/main/java/.../ConsultaController.java
git commit -m "fix: validação de campo conforme feedback PR"

# 3. Push (novo push re-ativa CI/CD e notifica reviewers)
git push origin feature/squad-backend/JIRA-456-novo-endpoint

# 4. Responder no GitHub: "Addressed in [COMMIT_HASH]"

# Esperar novo review...
```

**Quando aprovado (2 approves, CI green):**

- [ ] 2 approvals presentes?
- [ ] CI/CD todos os checks passados (verde)?
- [ ] Develop está mergeable?
- [ ] Conflicts? Se sim, resolver locally:
  ```bash
  git fetch origin
  git rebase origin/develop
  # (resolve conflicts)
  git push origin feature/squad-backend/JIRA-456-novo-endpoint --force-with-lease
  ```

---

#### Passo 5: Merge em Develop (Sex/Seg)

**Integrador realiza merge:**

```bash
# Opção A: Via GitHub UI (recomendado, deixa auditoria)
# 1. Acessar PR em GitHub
# 2. Botão "Squash and merge" (ou configuração do repo)
# 3. Mensagem de commit será gerada automaticamente
# 4. Botão "Confirm squash and merge"

# Opção B: Via CLI (se automação)
gh pr merge PR-NUM --squash --auto
```

**Pós-merge:**

```bash
# 1. Delete branch remotamente (automático via GitHub)
# 2. Delete local
git checkout develop
git pull origin develop
git branch -d feature/squad-backend/JIRA-456-novo-endpoint

# 3. Validar merge
git log develop --oneline | head -1
# Esperado: "Merge PR-123: [JIRA-456] novo endpoint..."
```

**Status após merge:**
- [ ] Branch feature deletada remotamente?
- [ ] Commit visível em develop?
- [ ] Develop 1 commit à frente de main (esperado)?

---

### 2.2 Fluxo de Release (Formal)

**Duração esperada:** 8-10 dias (dev→candidata→HMP→produção)

#### Pré-requisitos

- [ ] Develop está estável (último PR mergeado)
- [ ] Todos os commits em develop têm 2 approvals
- [ ] CI/CD em develop está verde

#### Passo 1: Criar Release Candidate (Sex, manhã)

```bash
# 1. Atualizar local
git checkout develop
git pull origin develop

# 2. Determinar versão
# Baseado em: últimas mudanças, breaking changes, etc
VERSION=v1.2.0  # Major.Minor.Patch (semântico)

# 3. Criar branch release
git checkout -b release/$VERSION

# 4. Atualizar versão nos arquivos
# pom.xml
<version>1.2.0</version>

# package.json (se Node)
"version": "1.2.0"

# Helm chart (infranprd)
# Chart.yaml: version: 1.2.0

# 5. Commit
git add pom.xml package.json sisph-*-infranprd/Chart.yaml
git commit -m "chore(release): bump version to $VERSION"

# 6. Push
git push origin release/$VERSION
```

**CI/CD é disparado automaticamente:**
- Build completo
- Testes integração
- Deploy em DES
- Testes de fumaça (smoke tests)

---

#### Passo 2: Testes em HMP (Seg-Ter)

**Ao passo anterior, CI/CD dispara automático em HMP:**

```
Release candidate: v1.2.0 está em HMP
Deploy completado em 2026-06-24 10:30
```

**Squad de testes valida em HMP:**

```
Checklist de aceitação HMP (48h):

[] Aplicação startou sem erros?
[] Endpoints principais respondendo?
[] Fluxos críticos (ex: pagamento) funcionam?
[] Regressão: testes que passavam antes ainda passam?
[] Performance aceitável (< 500ms P95)?
[] Integração com dependências OK?
[] Logs sem errors críticos?
[] Security scanning passou?

Se tudo OK: "Release ready for production"
Se problema: Reportar ao squad
```

**Se bug encontrado:**

```bash
# Squad faz fix em release/v1.2.0

git checkout release/v1.2.0
git pull origin release/v1.2.0

# Editar e testar
vim src/main/java/.../ConsultaController.java
mvn clean test

# Commit
git commit -m "fix(v1.2.0): validação de campo X"

# Push (re-ativa CI/CD em HMP)
git push origin release/v1.2.0

# Voltar ao checklist de HMP acima
```

---

#### Passo 3: Promover para Main (Ter, tarde)

**Depois de aprovado em HMP por 24h+:**

```bash
# 1. Integrador cria PR: release/v1.2.0 → main
# (Via GitHub UI)

# Título PR:
"[RELEASE] v1.2.0 - Features JIRA-450, JIRA-460, Bugs JIRA-468"

# Descrição PR:
```markdown
## Release v1.2.0

### Período
2026-05-26 - 2026-06-24

### Features
- JIRA-450: Novo endpoint de consulta
- JIRA-460: Refactor de cache

### Bugs
- JIRA-468: Validação de entrada

### Testado em HMP
- ✅ 48h de testes (Seg 10:30 - Ter 10:30)
- ✅ Regressão: OK
- ✅ Performance: OK
- ✅ Security: 0 críticos

### Qualidade
- Coverage: 89%
- SonarQube: Grade A
- CodeQL: 0 vulns críticas
- Build time: 2m 30s

### Aprovadores
- Tech Lead Backend: [Name] ✓
- QA Team: [Name] ✓
```

**2. Approvals em main (mínimo 2):**
- Tech Lead principal
- Arquiteto / Integrador

**3. Merge em main:**
```bash
# Via GitHub UI: "Squash and merge" (não automático em main!)
# Integrador realiza manualmente
```

**4. Tag assinada:**
```bash
# Integrador assina tag
git checkout main
git pull origin main

git tag -s v1.2.0 -m "Release v1.2.0

Features:
- JIRA-450: Novo endpoint
- JIRA-460: Refactor cache

Bugs:
- JIRA-468: Validação entrada

Tested in HMP: 48h OK
Production ready: Yes"

git push origin v1.2.0
```

**5. CI/CD dispara deploy PROD:**
```
Release v1.2.0 build & deploy em PROD
Deploy: 2026-06-25 10:00
Smoke tests: PASSED
Status: v1.2.0 em produção ✓
```

---

#### Passo 4: Merge Back em Develop (Ter, tarde)

**Importante:** Reconciliar develop com mudanças de main

```bash
git checkout develop
git pull origin develop

# Merge back (sem squash)
git merge --no-ff release/v1.2.0 -m "Merge release v1.2.0 back to develop"

# Se conflito (provável):
# Git vai solicitar resolução manual
# Abrir arquivos em conflito, resolver, commit

git push origin develop
```

**Status pós-release:**
```
main        @ v1.2.0 (tag)
develop     @ 1-2 commits ahead (merge back)
release/v1.2.0  → DELETE (não mais necessária)
```

**Deletar branch release:**
```bash
git push origin --delete release/v1.2.0
git branch -d release/v1.2.0
```

---

### 2.3 Fluxo de Hotfix (Emergência)

**SLA:** Detecção → Produção = 60 minutos

#### Cenário: Bug crítico em produção

```
14:30 - Monitoramento alerta
   "Taxa de erro 5xx: 10.5% (anormal)"
   Squad investigar e identifica bug em pagamento

14:35 - Integrador notificado
   "Problema em /api/v1/pagamento - precisa hotfix"
```

---

#### Passo 1: Criar Hotfix Branch (14:40)

```bash
# 1. Verificar que main é o último commit em produção
git checkout main
git pull origin main
git log -1
# (correlacionar com versão em PROD)

# 2. Criar hotfix branch a partir de main
git checkout -b hotfix/JIRA-468-validacao-pagamento

# 3. Fix code
vim src/main/java/.../PagamentoValidator.java
# (correção mínima, não refactoring)

# 4. Teste rápido
mvn clean test

# 5. Commit (mensagem clara)
git commit -m "fix(JIRA-468): validação de campo obrigatório em pagamento"

# 6. Push
git push origin hotfix/JIRA-468-validacao-pagamento
```

---

#### Passo 2: PR Hotfix → Main (14:50)

```bash
# Via GitHub UI: New PR

# Título:
[HOTFIX-CRÍTICO] JIRA-468: Validação pagamento

# Descrição:
```markdown
## 🚨 HOTFIX CRÍTICO

### Síntoma
Taxa de erro 5xx em /api/v1/pagamento: 10%+
Detectado em produção 14:30 (SISPH-PROD)

### Causa
Validação não checava se campo 'amount' era null.
Causava NullPointerException em 10% das requisições.

### Fix
Adicionado validação isNotNull() em PagamentoValidator.

### Teste
1 novo teste criado para caso edge (null amount).
Build: GREEN
Tests: ALL PASS

### Risco
Baixo: Fix é mínimo, apenas uma validação.
Sem mudança lógica, sem breaking change.
```

**Approvals rápidas:**
- Tech Lead: ✓ (revisa código, confirma problema)
- Integrador: ✓ (valida criticidade)

---

#### Passo 3: Merge Main (15:00)

```bash
# Integrador:
# Via GitHub: "Squash and merge" (nenhuma espera)

# Git local:
git checkout main
git pull origin main
git log -1
# (confirmar merge)
```

---

#### Passo 4: Tag e Deploy PROD (15:05)

```bash
# Integrador assina tag (patch version)
git checkout main
git pull origin main

# Versão anterior: v1.1.5 → Versão nova: v1.1.6 (patch)
git tag -s v1.1.6 -m "Hotfix v1.1.6 - JIRA-468: validação pagamento"

git push origin v1.1.6
```

**CI/CD automático:**
```
Hotfix v1.1.6 detected
Build: OK (2m 30s)
Deploy PROD: OK (3m)
Smoke tests: OK
Status: v1.1.6 em produção ✓
```

**Validação pós-deploy:**
```bash
# Squad monitora métrica:
# Taxa de erro 5xx: voltou para < 1% ✓
# Pagamento respondendo normalmente ✓
```

---

#### Passo 5: Merge Back em Develop (15:15)

```bash
# Integrador
git checkout develop
git pull origin develop

git merge --no-ff hotfix/JIRA-468-validacao-pagamento \
  -m "Merge hotfix v1.1.6 back to develop"

# Se conflito: resolver manualmente
# Commit e push
git push origin develop
```

---

#### Passo 6: Cleanup e Close (15:20)

```bash
# Delete hotfix branch
git push origin --delete hotfix/JIRA-468-validacao-pagamento
git branch -d hotfix/JIRA-468-validacao-pagamento

# GitHub: Close PR, add label "hotfix-resolved"
# Slack: "🔧 HOTFIX v1.1.6 RESOLVED (JIRA-468) - Produção estável"
```

**Timeline:**
```
14:30 Alerta
14:35 Integrador notificado
14:40 Hotfix branch criada
14:50 PR aberta
15:00 Merge main
15:05 Tag + Deploy
15:20 Merge develop + cleanup
      Total: 50 minutos (SLA: 60 min) ✓
```

---

## SEÇÃO 3: TROUBLESHOOTING

### 3.1 Conflito de Merge

**Sintoma:** "This branch has conflicts that must be resolved"

**Resolução:**

```bash
# 1. Fetch latest
git fetch origin

# 2. Rebase (em feature ou hotfix)
git rebase origin/develop

# 3. Resolver conflitos (editor abre)
# Buscar: <<<<<<, ======, >>>>>>
# Editar para versão correta

# 4. Marcar como resolvido
git add <arquivo-resolvido>

# 5. Continuar rebase
git rebase --continue

# 6. Force push (cuidado!)
git push origin <branch> --force-with-lease
```

**Em release/hotfix:**

```bash
# Se conflict em release/v1.2.0 durante merge back:

git checkout develop
git pull origin develop
git merge --no-ff release/v1.2.0

# Conflict happens - resolve files manually
# Edit conflicted files:
vim src/main/java/...

# Sinalizar resolved
git add <arquivo>

# Commit merge
git commit -m "Merge release v1.2.0 back to develop (conflicts resolved)"

git push origin develop
```

---

### 3.2 Commit "Errado" Mergeado

**Sintoma:** "Acabei de mergear código que não deveria ter sido mergeado"

**Opção A: Revert (se já em main)**

```bash
# 1. Identificar commit a ser revertido
git log main --oneline | head -10
# a3f4e5 Merge PR-127: JIRA-456 novo endpoint

# 2. Revert
git revert a3f4e5

# 3. (Cria novo commit que desfaz as mudanças)

# 4. Push
git push origin main

# 5. Notificar squad: "PR-127 revertida por motivo X"
```

**Opção B: Force-revert (se em develop, nunca em main)**

```bash
# ⚠️ Apenas em develop, nunca em main!

git reset --hard HEAD~1  # Desfaz último commit
git push origin develop --force-with-lease  # Force push (cuidado!)

# Notificar squad
```

---

### 3.3 Develop ou Main Está "Suja"

**Sintoma:** "Commits indesejados em main" ou "develop tem divergência estranha"

**Investigação:**

```bash
git log main --oneline | head -20
git log develop --oneline | head -20

# Comparer com production:
# O que está em main está em PROD?
# O que está em develop foi testado?

# Se houver commits diretos (sem PR):
# ❌ Violação de processo
# → Notificar squad
# → Revert se necessário
```

---

### 3.4 CI/CD Falhando em PR

**Sintoma:** "PR está vermelha no build, tests ou SonarQube"

**Passos:**

```bash
# 1. Clicar em "Details" próximo ao check que falhou

# 2. Ler logs:
# - Build error: geralmente compilação ou dependência
# - Test failure: teste não passou
# - SonarQube: violação de qualidade (cobertura, security)

# 3. Reproduzir localmente
mvn clean test
mvn sonar:sonar

# 4. Fixar
# Edit código
git add <arquivo>
git commit -m "fix: resolver build issue"
git push origin feature/...

# 5. Verificar novo build
# (CI/CD re-ativa automaticamente)
```

---

## SEÇÃO 4: DASHBOARDS E RELATÓRIOS

### 4.1 Health Check Semanal (Integrador)

```markdown
# Health Check - Week [N] (2026-06-[DD] to 2026-06-[DD])

## Portfolio Status

| Repo | Main | Develop | HMP Sync | Risk | Action |
|------|------|---------|----------|------|--------|
| sisph-bff-jnd-construtoras | v1.2.0 | -3 | sync | ✅ | - |
| sisph-api-auditoria | v1.5.1 | +7 | behind | ⚠️ | Merge dev→hmp |
| ... | ... | ... | ... | ... | ... |

## Incidents

- JIRA-468: Hotfix 1h (resolved)
- Config-HMP diverged 5 days (reconciled Mon)

## Metrics

- PRs merged: 12
- Avg review time: 2.3 days
- Build success: 98.5%
- Quality gates: 100% pass

## Next Week

- Release v1.1.5 (planned Fri)
- Config reconciliation (Mon)
```

---

### 4.2 Relatório Mensal (Stakeholders)

```markdown
# Integration & Versioning Report - June 2026

## Summary

✅ 33 repos gerenciados sob GitFlow
✅ 48 PRs mergeadas sem incidentes
✅ 3 releases no prazo
✅ 1 hotfix resolvida em 50 minutos

## Metrics

| Métrica | Target | Jun | Status |
|---------|--------|-----|--------|
| Main protected | 100% | 100% | ✅ |
| PRs with 2 approvals | 100% | 98% | ✅ |
| Tests coverage | ≥80% | 85% | ✅ |
| SonarQube grade | A+ | A | ✅ |
| Hotfix SLA (1h) | 95% | 100% | ✅ |

## Process Evolution

- Month 1: 2/5 (establishing)
- Month 2: 3/5 (operational)
- Month 3: 4/5 (consolidated)
- Month 4+: 4/5 (stable)

## Risks Addressed

1. Config divergence → Weekly reconciliation
2. Poor commit quality → Conventional Commits training
3. Missing tags → Automated tagging policy

## Recommendations

1. Continue current cadence
2. Plan Q3 review
3. Identify teams for advanced Git training
```

---

## SEÇÃO 5: ESCALATION E GOVERNANCE

### 5.1 Escalation Path

```
Level 1: Developer Question
└─ Channel: #git-governance Slack
└─ Response SLA: < 2h

Level 2: Merge Conflict
└─ Escalate to: Tech Lead
└─ Response SLA: < 4h
└─ Integrador notified

Level 3: Policy Violation (direct push to main)
└─ Escalate to: Integrador + Tech Lead
└─ Response SLA: Immediate
└─ Action: Revert, investigate, prevent recurrence

Level 4: Process Change Request
└─ Escalate to: Integrador + Arquiteto
└─ Response SLA: < 1 week
└─ Action: Evaluate, test, implement
```

---

### 5.2 Review Checklist: Integrador

```markdown
## Integrador: PRs Requiring Explicit Approval

[] Release PR (develop → main)
   - Reviewed by 2 senior engineers?
   - HMP tested ≥ 24h?
   - SonarQube A+?
   - Version bumped?

[] Hotfix PR (main)
   - Reviewed by tech lead + integrador?
   - Minimal change (no refactoring)?
   - Risk assessed?
   - Merge back plan confirmed?

[] Config PR
   - Tested in DES/HMP?
   - No secrets exposed?
   - Helm values correct?

[] Library Release (core-java, core-net)
   - Versioned semântica?
   - Changelog updated?
   - Backward compatibility check?
```

---

## SEÇÃO 6: REFERÊNCIA RÁPIDA

### Git Commands Cheatsheet

```bash
# Setup local
git clone https://github.com/caixagithub/[REPO].git
cd [REPO]

# Feature workflow
git checkout develop
git pull origin develop
git checkout -b feature/squad/JIRA-123-desc
git push -u origin feature/squad/JIRA-123-desc

# Commit (Conventional Commits)
git add .
git commit -m "feat(domain): description

Long description if needed.

JIRA-123"

git push origin feature/squad/JIRA-123-desc

# Sync com develop
git fetch origin develop
git rebase origin/develop

# Cleanup
git checkout develop
git branch -d feature/squad/JIRA-123-desc

# Tag
git tag -s v1.2.0 -m "Release notes"
git push origin v1.2.0
```

---

## Conclusão

Este guia fornece **procedimentos passo-a-passo** para operacionalizar a governança de integração proposta.

**Próximas ações:**
1. ☐ Setup inicial: branch protection, CODEOWNERS, PR templates
2. ☐ Treinamento: workshop + documentação
3. ☐ Piloto: 5-10 PRs com Integrador revendo
4. ☐ Rollout: aplicar a todos os 33 repos
5. ☐ Sustentação: health checks semanais, relatórios mensais

**Contato:** Integrador de Código | #git-governance | [email]

---

**Versão:** 1.0  
**Data:** 23 de Junho, 2026  
**Classificação:** Operacional / Interno

# PLANO DE IMPLEMENTAÇÃO: 90 DIAS
## Roadmap Executivo para Governança de Integração

---

## 📋 RESUMO

Plano estruturado em **3 fases de 30 dias** para implementar governança formal de versionamento e integração em portfólio de 33+ repositórios.

**Objetivo:** Ir de infraestrutura existente (GitHub Actions OK, branch protection inconsistente) para **processo operacional maduro, escalável e auditável**.

**Investimento:** ~400-500 horas de trabalho (spread across team)
**ROI:** Redução 60% de incidentes pós-deploy, entrega 40% mais previsível

---

## FASE 1: FUNDAÇÃO (DIAS 1-30)

### Semana 1: Diagnóstico e Planejamento

#### Dia 1-2: Kickoff

- [ ] **Reunião Kickoff** (2h)
  - [ ] Apresentar visão e objectives
  - [ ] Esclarecer roles (Integrador, Tech Leads, Developers)
  - [ ] Timeline e deliverables
  - [ ] Q&A

- [ ] **Documentos**
  - [ ] Distribuir: PROPOSTA_GOVERNANCA.md
  - [ ] Distribuir: ANALISE_TECNICA.md
  - [ ] Distribuir: GUIA_OPERACIONAL.md
  - [ ] Criar Wiki no GitHub (link de referência)

- [ ] **Designar Integrador**
  - [ ] Nome, contato, horário disponibilidade
  - [ ] Criar email/Slack: integrador-code@caixa
  - [ ] Criar channel: #git-governance

#### Dia 3-5: Auditoria Detalhada

- [ ] **Verificar estado atual** (4h)
  - [ ] Branch protection status (todos 33 repos)
  - [ ] Commit quality (sample 200 commits recentes)
  - [ ] PR discipline (últimas 30 PRs)
  - [ ] Tag discipline (repos com tags vs sem)
  - [ ] CI/CD execution rate (build success rate)

- [ ] **Criar baseline metrics**
  - [ ] % repos com main protected: ___
  - [ ] % PRs com 2 approvals: ___
  - [ ] Avg review time: ___ days
  - [ ] Build success rate: ___
  - [ ] Tests coverage: ___ (avg)
  - [ ] SonarQube grade distribution: ___

- [ ] **Identificar pain points**
  - [ ] Surveys: 5-10 developers
  - [ ] Interviews: 3-5 tech leads
  - [ ] Documentar problemas

#### Dia 6-7: Planning & Communication

- [ ] **Planning refinement**
  - [ ] Ajustar plano baseado em audit
  - [ ] Identificar repos prioritários (5 "pilot" repos)
  - [ ] Cronograma detalhado

- [ ] **Comunicação inicial**
  - [ ] Email announcement: Visão + Timeline
  - [ ] Slack: Launch #git-governance channel
  - [ ] Wiki: Link guias e documentação

---

### Semana 2: Setup Piloto (5 repos)

#### Dia 8-9: Branch Protection Rules (Piloto)

**Repos:** sisph-bff-jnd-construtoras, sisph-api-auditoria, sisph-api-core-config, sisph-mfe-jnd-central-servicos, siaci-componentes-net

- [ ] **Para cada repo (8h total, 1.6h/repo)**
  - [ ] ✅ main: 2 approvals, status checks, no force-push, no deletions
  - [ ] ✅ develop: 1 approval, status checks, no force-push, no deletions
  - [ ] ✅ Criar .github/CODEOWNERS
  - [ ] ✅ Criar .github/pull_request_template.md
  - [ ] ✅ Setup branch protection via GitHub UI

- [ ] **Validação**
  - [ ] Teste PR em cada repo (feature → develop)
  - [ ] Verificar proteções acionadas
  - [ ] Documen any issues

#### Dia 10-11: CI/CD Setup

- [ ] **Validar workflows**
  - [ ] Todos os 5 repos têm `.github/workflows/*.yaml`?
  - [ ] Workflows chamam DevSecOps-Solutions templates?
  - [ ] Build, QA, Security stages presentes?

- [ ] **Setup missing**
  - [ ] Se repo sem workflows, copiar from template
  - [ ] Adjust language/build tool (Maven/Node/etc)
  - [ ] Test workflow (manual trigger via GitHub)

#### Dia 12-14: Educação Piloto

- [ ] **Workshop (2h)**
  - [ ] Apresentação: GitFlow concept
  - [ ] Demo: Feature workflow (ao vivo em repo)
  - [ ] Demo: Release workflow
  - [ ] Demo: Hotfix workflow
  - [ ] Q&A
  - [ ] Audiência: 5 tech leads + Integrador

- [ ] **Hands-on Lab (1h)**
  - [ ] Create branch + PR in pilot repo
  - [ ] Experience protections
  - [ ] Practice squash merge

- [ ] **Documentation**
  - [ ] Create Wiki page: GitFlow @ Caixa
  - [ ] Create Runbooks (from GUIA_OPERACIONAL)
  - [ ] Pinned in #git-governance

---

### Semana 3: Operação Piloto (Feature Workflow)

#### Dia 15-21: First Features via New Process

**Objetivo:** 3-5 features usando novo processo nos 5 repos

- [ ] **Dev 1 (Feature)**
  - [ ] Create feature branch (feature/squad/JIRA-XXX)
  - [ ] Develop in branch (commits com Conventional format)
  - [ ] Push
  - [ ] Create PR (descrever em template)
  - [ ] Esperar reviews
  - [ ] Merge em develop (squash)

- [ ] **Dev 2, Dev 3, Dev 4...**
  - [ ] Repeat process
  - [ ] Integrador observa, suporta, coleta feedback

- [ ] **Monitorar**
  - [ ] PRs estão sendo reviewed?
  - [ ] Reviews levando quanto tempo?
  - [ ] Algum blocker/issue?
  - [ ] Documentar learnings

#### Dia 22: Retrospectiva Piloto

- [ ] **Meeting: Pilot Retrospective** (1.5h)
  - [ ] O quê funcionou bem?
  - [ ] O quê precisa ajustar?
  - [ ] Feedback dos developers
  - [ ] Integrador & Tech Leads validam

- [ ] **Ajustes**
  - [ ] Refinar documentação based on feedback
  - [ ] Ajustar CI/CD se necessário
  - [ ] Update templates if needed

---

### Semana 4: First Release (Piloto)

#### Dia 23-30: Release Workflow (Piloto)

**Objetivo:** Conduzir primeira release formal usando novo processo

- [ ] **Dia 23-24: Release Candidate**
  - [ ] Create release/v1.2.0 (exemplo)
  - [ ] Bump versions (pom.xml, Helm charts)
  - [ ] CI/CD build & deploy em DES
  - [ ] Smoke tests validam

- [ ] **Dia 25-26: HMP Testing**
  - [ ] Deploy automático em HMP
  - [ ] Squad testa 24h+
  - [ ] Regression tests
  - [ ] Performance checks

- [ ] **Dia 27-28: Production**
  - [ ] Create PR: release/v1.2.0 → main
  - [ ] 2 approvals (Tech Lead + Integrador)
  - [ ] Squash merge
  - [ ] Create tag: v1.2.0 (signed by Integrador)
  - [ ] Deploy automático em PROD

- [ ] **Dia 29-30: Merge Back + Cleanup**
  - [ ] Merge release/v1.2.0 back to develop
  - [ ] Delete release branch
  - [ ] Monitoring pós-deploy (estável?)
  - [ ] Release notes publicadas?

#### Dia 30: Phase 1 Review

- [ ] **Checklist Completado?**
  - [ ] ☑ 5 repos com branch protection
  - [ ] ☑ 5 repos com CODEOWNERS + PR template
  - [ ] ☑ 3-5 features flowed through develop
  - [ ] ☑ 1 release formal (development → HMP → PROD)
  - [ ] ☑ Team treinada + confiante
  - [ ] ☑ Documentação ajustada post-feedback

**Status esperado:** PHASE 1 COMPLETE ✓
- Piloto bem-sucedido
- Team confiante
- Pronto para rollout

---

## FASE 2: ROLLOUT (DIAS 31-60)

### Semana 5-6: Expansão Staged

#### Dia 31-35: Batch Setup (Cohort 1 - 10 repos)

**Repos Cohort 1:** 
- sisph-bff-jnd-gestao-plataforma
- sisph-bff-jnd-gestao-mo
- sisph-bff-jnd-pagamentos
- sisph-mfe-jnd-construtoras
- sisph-mfe-jnd-mutuario
- sisph-mfe-jnd-pagamentos
- sisph-mfe-host-layout
- sisph-mfe-host-spa
- sisph-bff-padrao-java
- sisph-bff-padrao-net

- [ ] **Executar setup** (per repo: branch protection, CODEOWNERS, PR template)
  - [ ] Via script (batch) se possível: 5-10h total
  - [ ] Validar cada repo

- [ ] **Notificar squads**
  - [ ] Email: "Your repo is now under GitFlow governance"
  - [ ] Slide deck: Setup summary
  - [ ] Links: Runbooks, Wiki, Q&A channel

#### Dia 36-40: Batch Setup (Cohort 2 - 10 repos)

**Repos Cohort 2:** Remaining application repos

- [ ] **Setup** (batch)
- [ ] **Notification**

#### Dia 41-45: Batch Setup (Cohort 3 - remaining)

**Repos Cohort 3:** Library + infrastructure repos (siaci-componentes-net, core-libs, -infranprd repos)

- [ ] **Setup** (batch)
- [ ] **Notification**

#### Dia 46-50: Refine & Support

- [ ] **Monitor rollout**
  - [ ] Cada squad está seguindo processo?
  - [ ] Issues? Escalate

- [ ] **Support**
  - [ ] #git-governance: Answer questions
  - [ ] Office hours: Integrador disponível

- [ ] **Adjust documentation**
  - [ ] Wiki: Capture common questions
  - [ ] Runbooks: Refine based on feedback

#### Dia 51-60: Consolidate

- [ ] **Validation**
  - [ ] All 33 repos setup complete?
  - [ ] Metrics: PRs com 2 approvals?
  - [ ] Metrics: Coverage adequado?

- [ ] **Escalate wins**
  - [ ] Feature Wall: Mostrar número de PRs, releases, metrics
  - [ ] Team recognition: Developers que seguiram processo

- [ ] **Preparar Hotfix Test**
  - [ ] Simular hotfix scenario
  - [ ] Validar SLA 1h

**Status esperado:** Rollout Complete
- 33 repos under governance ✓
- Teams operational ✓
- Metrics improving ✓

---

## FASE 3: SUSTENTAÇÃO E OTIMIZAÇÃO (DIAS 61-90)

### Semana 9: Hotfix Drill & Config Management

#### Dia 61-65: Hotfix Simulation

- [ ] **Cenário:** Simular bug crítico em PROD
  - [ ] Branch hotfix criada
  - [ ] Fix mínimo
  - [ ] PR → main (2 approvals)
  - [ ] Tag + Deploy PROD
  - [ ] Merge back develop
  - [ ] **Objetivo:** SLA ≤ 60 min

- [ ] **Documenta processo**
  - [ ] Timing real
  - [ ] Pain points
  - [ ] Refine runbook

- [ ] **Team drill** (60 min)
  - [ ] Walk-through hotfix process
  - [ ] Q&A

#### Dia 66-70: Config Branch Management

- [ ] **Audit config branches**
  - [ ] config-hmp, config-des, config-tqs, config-tst
  - [ ] Estão em sync com develop?
  - [ ] Ahead/behind commits?

- [ ] **Reconciliation procedure**
  - [ ] Setup weekly reconciliation schedule
  - [ ] Create automation (if possible)
  - [ ] Document process

- [ ] **Test reconciliation**
  - [ ] Manual merge: develop → config-hmp (exemplo)
  - [ ] Verificar Helm charts são válidos
  - [ ] Deploy em ambiente de teste

### Semana 10: Tagging & Release Notes

#### Dia 71-75: Automated Tagging Policy

- [ ] **Define policy:**
  - [ ] Semantic versioning (X.Y.Z)
  - [ ] Tag must be signed by Integrador
  - [ ] Release notes must be present
  - [ ] Correlation: tag ↔ app version ↔ chart version

- [ ] **Setup automation:**
  - [ ] GitHub Actions: On main merge, auto-tag if needed
  - [ ] GitHub Release: Auto-populate template
  - [ ] Version sync (pom.xml ↔ chart) validation

- [ ] **Test:**
  - [ ] Create release manually
  - [ ] Verify tag, notes, automation

#### Dia 76-80: Metrics Dashboard

- [ ] **Setup metrics collection**
  - [ ] GitHub API: PRs, merges, reviews
  - [ ] SonarQube: Coverage, grades
  - [ ] CI/CD: Build success rates
  - [ ] Deploy: PROD incidents

- [ ] **Create dashboard** (Grafana/Kibana or simple Markdown)
  - [ ] Health status (33 repos)
  - [ ] Metrics trends (4-week rolling)
  - [ ] Incident tracking

- [ ] **Weekly health check**
  - [ ] Integrador reviews metrics
  - [ ] Identifies trends / anomalies
  - [ ] Communicates to team

### Semana 11: Training & Knowledge Transfer

#### Dia 81-85: Advanced Git Training

- [ ] **Schedule workshops (optional):**
  - [ ] "Git Internals" (for tech leads)
  - [ ] "Rebase vs Merge" strategies
  - [ ] "Advanced Troubleshooting"

- [ ] **Hands-on labs:**
  - [ ] Conflict resolution
  - [ ] Squashing commits
  - [ ] Interactive rebase

#### Dia 86-90: Handoff & Stabilization

- [ ] **Documentation Review**
  - [ ] All docs up-to-date?
  - [ ] Any missing runbooks?
  - [ ] Accessibility? (links work?)

- [ ] **Stakeholder Review**
  - [ ] Demo: Metrics, process adherence
  - [ ] Feedback: Any process adjustments?
  - [ ] Plan: What's next? (Q3 initiatives?)

- [ ] **Team Handoff**
  - [ ] Integrador role becomes sustainable?
  - [ ] Backup Integrador identified?
  - [ ] Escalation paths clear?

- [ ] **Retrospective: 90 Days**
  - [ ] What worked?
  - [ ] What needs adjustment?
  - [ ] Success metrics achieved?
  - [ ] Next 90-day plan?

---

## 📊 SUCCESS CRITERIA

### Métrica 1: Branch Protection Adoption

| Semana | Target | Actual | Status |
|--------|--------|--------|--------|
| 1-4 | 5/33 | ___ | |
| 5-8 | 25/33 | ___ | |
| 9-12 | 33/33 | ___ | ✅ |

### Métrica 2: PR Quality

| Semana | 2 Approvals | 1 Review | Test Coverage | Status |
|--------|------------|----------|---------------|--------|
| 1-4 | 40% | 60% | 75% | Baseline |
| 9-12 | 85% | 95% | 82% | ✅ |

### Métrica 3: Deployment Confidence

| Semana | Releases | Hotfixes | PROD Issues | SLA Met |
|--------|----------|----------|-------------|---------|
| 1-4 | 1 | 0 | TBD | Pilot |
| 9-12 | 8-10 | <2 | <5 | 90%+ |

### Métrica 4: Team Adoption

| Semana | Training | Wiki Usage | Support Tickets | Confidence |
|--------|----------|-----------|-----------------|-----------|
| 1-4 | 50% | 30% | 5/day | Learning |
| 9-12 | 100% | 80% | <2/day | High |

---

## 🎯 DELIVERABLES POR FASE

### Phase 1 (Dias 1-30)
- ✅ 5 repos fully setup (branch protection + templates)
- ✅ Team trained (workshop + hands-on)
- ✅ 1 release completed (dev→HMP→PROD)
- ✅ Documentation refined
- ✅ Integrador operational

### Phase 2 (Dias 31-60)
- ✅ 33 repos setup complete
- ✅ 10-15 features completed via process
- ✅ 2-3 releases completed
- ✅ Support system operational (#git-governance)
- ✅ Metrics collected and visible

### Phase 3 (Dias 61-90)
- ✅ Hotfix process validated (SLA 60 min)
- ✅ Config management automated
- ✅ Release notes + tagging policy active
- ✅ Metrics dashboard published
- ✅ Team autonomous (Integrador supportive role)
- ✅ Handoff documentation complete

---

## 👥 ROLES & RESPONSIBILITIES

### Integrador (Lead)
- Setup, enforcement, escalation
- Review releases/hotfixes
- Metrics/health monitoring
- Team support/training
- Policy evolution

### Tech Leads (Squad)
- Enforce process within squad
- PR reviews (approve/request changes)
- Mentoring developers
- Escalate issues

### Developers
- Follow feature/hotfix workflows
- Write quality commits
- Participate in PR reviews
- Provide feedback

### Architects/Leadership
- Governance oversight
- Policy approval
- Risk acceptance
- Budget/resource allocation

---

## 🚨 RISK MITIGATION

| Risk | Impact | Mitigation |
|------|--------|-----------|
| Low adoption | High | Early training, support, quick wins |
| CI/CD issues | High | Validate workflows early, DevSecOps support |
| Process overhead | Medium | Automate where possible, show ROI early |
| Merge conflicts | Low | Training, tooling, communication |
| Scalability | Medium | Batch approach, automation scripts |

---

## 📞 ESCALATION & SUPPORT

**Integrador:**
- Email: integrador-code@caixa
- Slack: #git-governance
- Office hours: Tue/Thu 14:00-15:00

**Escalation:**
- Level 1: #git-governance channel
- Level 2: Integrador direct
- Level 3: Tech Lead + Integrador
- Level 4: Arquiteto + CTO

---

## PRÓXIMOS PASSOS APÓS 90 DIAS

### Consolidação (Dias 91-180)
- Evolução contínua
- Advanced scenarios (monorepo, trunk-based development)
- Automação expandida
- Mentoring de novos Integradores

### Escalação (Dias 181+)
- Aplicar modelo em outros portfolios
- Federation: Integrador por squad
- Advanced governance (semantic versioning, automated releases)

---

## DOCUMENTOS RELACIONADOS

1. 📄 **PROPOSTA_GOVERNANCA_INTEGRACAO_CODIGO.md**
   - Contexto estratégico
   - Visão de longo prazo
   - Modelo de governança

2. 📄 **ANALISE_TECNICA_GITHUB_CAIXA.md**
   - Estado atual
   - Gaps identificados
   - Recomendações técnicas

3. 📄 **GUIA_OPERACIONAL_GITFLOW.md**
   - Procedimentos passo-a-passo
   - Runbooks
   - Troubleshooting

4. 📄 **PLANO_IMPLEMENTACAO_90_DIAS.md** (este documento)
   - Timeline detalhada
   - Checklist por semana
   - Success criteria

---

## APROVAÇÕES

| Role | Nome | Assinatura | Data |
|------|------|-----------|------|
| Integrador | ___ | ___ | ___ |
| Tech Lead Principal | ___ | ___ | ___ |
| Arquiteto | ___ | ___ | ___ |
| CTO / Sponsor | ___ | ___ | ___ |

---

**Versão:** 1.0  
**Data:** 23 de Junho, 2026  
**Classificação:** Estratégico / Confidencial

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

# TEMPLATES E ARTEFATOS PRONTOS PARA USO
## Copy-Paste Ready Resources para Implementação GitFlow

---

## SEÇÃO 1: .github/CODEOWNERS

```
# Padrão para todos os repositórios
# Coloque em: .github/CODEOWNERS

# Default owners for all repository files
*                                     @integrador @arquiteto

# Backend ownership
src/main/java/br/gov/caixa/sisph/**  @squad-backend @tech-lead-backend
src/main/resources/**                 @squad-backend
pom.xml                               @squad-backend @devsecops
mvnw                                  @squad-backend @devsecops

# Frontend ownership (se MFE)
src/app/**                            @squad-frontend @tech-lead-frontend
src/assets/**                         @squad-frontend
package.json                          @squad-frontend @devsecops

# Infrastructure
.github/                              @devsecops-team
Dockerfile                            @devsecops-team
sisph-*-infranprd/                    @devsecops-team

# Documentation
docs/**                               @arquiteto @integrador
README.md                             @arquiteto
catalog-info.yaml                     @backstage-admin

# Test
src/test/                             @squad-backend
test-results/                         @qa-team
```

---

## SEÇÃO 2: .github/pull_request_template.md

```markdown
## 📋 Descrição

**O quê?** 
Descreva sucintamente a mudança em 1-2 frases.

**Por quê?** 
Por que essa mudança é necessária? Contexto de negócio ou técnico.

**Como?** 
Qual é a abordagem técnica? Arquitetura? Integração?

---

## 🔗 Rastreabilidade

**JIRA:** [JIRA-XXX](https://jira.caixa/browse/JIRA-XXX)

**Related PRs:** #123, #456 (se houver)

**Demanda de:** [Squad/Squad Lead]

---

## ✅ Checklist

- [ ] Testes unitários adicionados/atualizado (coverage ≥ 80%)
- [ ] Mensagens de commit seguem [Conventional Commits](https://www.conventionalcommits.org/)
- [ ] Documentação atualizada (README, Swagger, etc)
- [ ] Sem breaking changes (ou versão bumped se houver)
- [ ] Build está passando (GitHub Actions: GREEN)
- [ ] SonarQube: Sem issues críticas
- [ ] Dependências: Sem CVEs críticas (Dependabot)
- [ ] Rebase em develop mais recente? Sem conflicts?

---

## 🧪 Como Testar?

1. **Checkout branch:**
   ```bash
   git checkout feature/squad/JIRA-XXX-descricao
   ```

2. **Build local:**
   ```bash
   mvn clean test
   ```

3. **Teste em DES (se aplicável):**
   ```bash
   curl https://des.sisph.caixa/api/v1/endpoint?param=value
   # Expected: Status 200, JSON response
   ```

4. **Regressão:**
   - Verificar que fluxos anteriores ainda funcionam
   - Exemplos: [link para testes de fumaça]

---

## 📸 Screenshots (se UI)

[Adicionar before/after screenshots aqui]

Descrever o que mudou visualmente.

---

## 🚨 Notas Especiais

(Se há algo que reviewers precisam saber: breaking change, deploy manual requerido, etc)

---

## ℹ️ Informações Adicionais

- **Tipo de mudança:** [ ] Feature [ ] Bugfix [ ] Refactoring [ ] Documentation [ ] Hotfix
- **Impacto de breaking change:** [ ] Não [ ] Sim (versão bumped)
- **Afeta outros sistemas?** [ ] Não [ ] Sim (quais?)

---

*Por submeter este PR, confirmo:*
- *Código segue style guide do projeto*
- *Self-review foi realizado*
- *Comentários adicionados em lógica obscura*
- *Documentação atualizada*
- *Sem warnings do compilador*
- *Testes adicionais incluídos*

```

---

## SEÇÃO 3: .github/workflows/call-generic-pipelines.yaml (Template)

```yaml
# Template: Reusable workflow caller
# Coloque em: .github/workflows/call-generic-pipelines.yaml

name: CI/CD - Generic Pipeline

on:
  workflow_dispatch:
  push:
    branches:
      - main
      - develop
      - release/**
      - hotfix/**
    paths-ignore:
      - '.github/**'
      - 'README.md'
      - 'docs/**'
      - 'catalog-info.yaml'
  pull_request:
    branches:
      - develop
      - main

permissions:
  contents: read
  security-events: write
  packages: read
  actions: read
  pull-requests: write
  issues: write

jobs:
  pipeline:
    name: Build & Test
    uses: caixagithub/DevSecOps-Solutions/.github/workflows/generic-pipeline.yml@main
    secrets: inherit
    with:
      language: java
      java-version: '21'
      build-command: 'mvn clean package'
      test-command: 'mvn test'
      sonarqube-enabled: true
      codeql-enabled: true

  deploy-des:
    name: Deploy DES (Auto)
    needs: pipeline
    if: github.ref == 'refs/heads/develop' && success()
    uses: caixagithub/DevSecOps-Solutions/.github/workflows/deploy-k8s.yml@main
    secrets: inherit
    with:
      environment: des
      namespace: sisph
      chart-path: './sisph-*-infranprd/des'

  deploy-prod:
    name: Deploy PROD (Manual)
    needs: pipeline
    if: github.ref == 'refs/heads/main' && success()
    runs-on: ubuntu-latest
    environment:
      name: prod
    steps:
      - name: Trigger PROD Deployment
        run: |
          echo "⚠️ PROD deployment requires manual approval"
          echo "Deploy webhook: [LINK TO DEPLOY SYSTEM]"
          # Integrador manually triggers via GitHub UI
```

---

## SEÇÃO 4: Conventional Commits Exemplos

```
# Feature
feat(api): add new endpoint GET /api/v1/consulta

# Bug fix
fix(validator): handle null input in PagamentoValidator

# Refactoring
refactor(service): extract cache logic into separate class

# Tests
test(api): add integration tests for novo endpoint

# Documentation
docs(readme): update setup instructions for Java 21

# CI/CD
ci(sonarqube): increase coverage threshold to 80%

# Chore
chore(deps): upgrade Spring Boot to 3.5.3

# FORMATO COMPLETO (com JIRA):
feat(api): add new endpoint GET /api/v1/consulta

Implements new REST endpoint for integration with SRF system.
Includes caching strategy for performance optimization.

Benefits:
- Allows querying contributor information securely
- Reduces DB load via Redis cache
- Enables federation with SRF queries

JIRA-456
Closes #789
```

---

## SEÇÃO 5: Release Notes Template

```markdown
# Release v1.2.0

**Release Date:** 2026-06-25  
**Release Manager:** [Integrador Name]  
**Target:** Production  
**Status:** ✅ Deployed

---

## 📋 Summary

[Uma frase descrevendo o release]

Example: "Integração com SRF e otimizações de performance"

---

## 🎯 Objectives Achieved

- ✅ Implement SRF integration (JIRA-450)
- ✅ Optimize payment processing (40% faster) (JIRA-460)
- ✅ Fix critical validation bug (JIRA-468)

---

## 🚀 Features

### SRF Integration (JIRA-450)
- New endpoint: `GET /api/v1/contribuinte/{cpf}`
- Secure token-based authentication
- Cached responses (Redis, 1h TTL)
- **Impact:** Enables new reporting workflows

### Performance Optimization (JIRA-460)
- Refactored cache layer (custom vs default Spring cache)
- Connection pooling improved (100 → 500 concurrent)
- **Impact:** 40% latency reduction in payment processing

---

## 🐛 Bug Fixes

### Payment Validation (JIRA-468)
- **Issue:** NullPointerException when amount field missing
- **Root Cause:** Validation logic didn't check null
- **Fix:** Added mandatory field validation
- **Impact:** Eliminated 10% error rate in production

---

## 🔧 Technical Changes

### Breaking Changes
❌ None

### Dependency Updates
- `spring-boot-starter-parent`: 3.4.3 → 3.5.3 (minor)
- `junit-jupiter`: 5.9.2 → 5.10.0 (minor)

### Database Changes
❌ None

### Configuration Changes
✅ Redis cache configuration (see config-hmp branch)

---

## 📊 Quality Metrics

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Test Coverage | 87% | ≥80% | ✅ |
| SonarQube Grade | A | A+ | ⚠️ |
| CodeQL Issues | 0 | 0 | ✅ |
| Build Time | 2m 45s | <5m | ✅ |

---

## ✅ Testing Validation

### Unit Tests
- ✅ 245 tests passed
- ✅ Coverage: 87%

### Integration Tests
- ✅ Endpoint tests: ALL PASS
- ✅ Cache behavior: ALL PASS
- ✅ SRF integration: ALL PASS

### HMP Validation (48h)
- ✅ Smoke tests: PASS
- ✅ Regression tests: PASS
- ✅ Performance tests: 40% improvement ✓
- ✅ Security scan: 0 vulns critical

---

## 🚀 Deployment

### Timeline
- **Released:** 2026-06-25 10:00 UTC
- **Build Time:** 2m 45s
- **Deploy Time:** 3m 20s
- **Warmup Time:** 45s
- **Total Downtime:** 0s (rolling deployment)

### Rollback Plan
If critical issues detected:
```bash
# Rollback to previous tag
kubectl rollout undo deployment/sisph-bff -n sisph
# Or promote v1.1.5 tag
```

---

## 👥 Contributors

- Squad Backend: 5 PRs, 2 reviews
- QA Team: Validation + testing
- DevSecOps: CI/CD + security scanning
- Integrador: Release management

---

## 📚 Documentation

- API docs updated: [Link to Swagger]
- README: [Changes] Updated setup instructions
- Wiki: [Link to Release Notes]
- Runbook: [SLA & monitoring]

---

## 🔔 Next Steps

1. Monitor metrics for 48h
2. Schedule post-release retrospective
3. Plan v1.3.0 features (backlog review)

---

## 📞 Support

- **Issues found?** Contact: [Squad Lead]
- **Questions?** #git-governance Slack
- **Escalation:** Integrador

---

**Generated by:** Integrador Bot  
**Approved by:** [Tech Lead] + [Arquiteto]

```

---

## SEÇÃO 6: Hotfix Checklist (Runbook)

```markdown
# HOTFIX EMERGENCY RUNBOOK

⏱️ **SLA:** Issue detection → Production = 60 minutes

---

## T+0: ISSUE DETECTED

**Actions (Immediate):**
- [ ] Confirm issue in production (not DES/HMP)
- [ ] Assess severity (Critical? Major? Minor?)
- [ ] Notify Integrador: "HOTFIX REQUIRED - [Issue]"
- [ ] Post in Slack: #git-governance with `@integrador`

**Info to gather:**
- Error rate / affected users / business impact
- Stack trace / logs
- Reproduction steps
- Affected version (git tag)

---

## T+5: TRIAGE & DECISION

**Integrador decides:**
- [ ] Is this a true hotfix? (vs scheduled release)
- [ ] Is it safe to fix in hotfix branch? (vs wait for next release)
- [ ] Estimated fix time?

**If YES → Proceed to T+10**  
**If NO → Escalate to leadership**

---

## T+10: CREATE HOTFIX BRANCH

**Developer (with Integrador):**

```bash
git checkout main
git pull origin main
git checkout -b hotfix/JIRA-XXX-descrição

# Minimal fix only (no refactoring!)
vim src/main/java/...
# Fix the bug

# Test locally
mvn clean test

# Commit
git commit -m "fix(JIRA-XXX): [minimal description]"

# Push
git push origin hotfix/JIRA-XXX-descrição
```

- [ ] Branch created
- [ ] Fix is minimal (single file, <50 lines?)
- [ ] Local tests pass

---

## T+20: OPEN PR & REVIEW

**Via GitHub UI:**

```markdown
[HOTFIX-CRÍTICO] JIRA-XXX: [Issue]

SYMPTOMS:
- [What's broken]
- Error rate: [X%]
- Users affected: [N]

ROOT CAUSE:
- [Analysis]

FIX:
- [1-2 line summary]
- No refactoring
- Minimal change

TESTING:
- [Test results]
```

- [ ] PR opened hotfix → main
- [ ] Immediate notification to reviewers

---

## T+25: EXPEDITED REVIEW

**Tech Lead + Integrador review (5 min each):**

Checklist:
- [ ] Is fix minimal? (no refactoring)
- [ ] Does it solve root cause?
- [ ] Are tests adequate?
- [ ] Risk assessment: LOW?
- [ ] Approved? ✅

---

## T+30: MERGE TO MAIN

**Integrador:**

```bash
# Via GitHub UI: "Squash and merge"
# OR CLI:
gh pr merge [PR-NUM] --squash --auto
```

- [ ] Merged to main
- [ ] CI/CD triggered (build + tests)

---

## T+35: TAG & DEPLOY PROD

**Integrador:**

```bash
git checkout main
git pull origin main

# Determine version: current v1.1.5 → patch → v1.1.6
git tag -s v1.1.6 -m "Hotfix v1.1.6 - JIRA-XXX

Critical fix for [issue]

Risk: Low
Testing: Unit tests OK
Deploy: To PROD

SLA: [Time taken so far]"

git push origin v1.1.6
```

- [ ] Tag created & signed
- [ ] Tag pushed
- [ ] CI/CD triggered for PROD deployment

---

## T+40-45: PROD DEPLOYMENT & VALIDATION

**DevOps + Squad:**

```bash
# Monitor deployment (automated)
kubectl get deploy sisph-bff -n sisph -w

# Smoke tests
curl https://prod.sisph.caixa/api/v1/health
# Expected: 200 OK

# Check metric (e.g., error rate)
# Should drop from 10% → <1%
```

- [ ] Deployment successful
- [ ] Health checks passing
- [ ] Monitored metrics improving
- [ ] Alert team: "Hotfix deployed"

---

## T+50: MERGE BACK TO DEVELOP

**Integrador:**

```bash
git checkout develop
git pull origin develop

git merge --no-ff hotfix/JIRA-XXX-descrição \
  -m "Merge hotfix v1.1.6 back to develop"

# If conflict: resolve manually, commit

git push origin develop
```

- [ ] Merged to develop
- [ ] Conflicts resolved (if any)

---

## T+55: CLEANUP

**Integrador:**

```bash
# Delete hotfix branch
git push origin --delete hotfix/JIRA-XXX-descrição
git branch -d hotfix/JIRA-XXX-descrição

# Close PR on GitHub (auto-closed)
```

- [ ] Branch deleted
- [ ] GitHub PR closed

---

## T+60: COMPLETE ✓

**Status:**
- ✅ Hotfix v1.1.6 in production
- ✅ Metrics improved
- ✅ Team notified
- ✅ SLA met: 60 minutes

**Post-mortem (within 24h):**
- Why did this slip to production?
- Can we prevent in future?
- Process adjustment needed?

---

## 🚨 ESCALATION

If any step blocked:
- **Tech blocker:** Escalate to Architecture
- **Deploy blocker:** Escalate to DevOps Lead
- **Decision blocker:** Escalate to CTO

**Do NOT wait.** Communicate delay + ETA.

```

---

## SEÇÃO 7: GitHub Branch Protection Script

```bash
#!/bin/bash
# setup-branch-protection.sh
# Applies branch protection rules to a GitHub repository

REPO="$1"        # caixagithub/sisph-bff-jnd-construtoras
OWNER="caixagithub"

if [ -z "$REPO" ]; then
  echo "Usage: $0 <repo-name>"
  exit 1
fi

echo "Setting up branch protection for $OWNER/$REPO..."

# Main branch: high protection
echo "Configuring main branch..."
gh repo rule create \
  -R "$OWNER/$REPO" \
  --branch main \
  --require-pull-request-before-merge \
  --require-review-count 2 \
  --require-status-checks-to-pass \
  --require-branches-to-be-up-to-date \
  --dismiss-stale-reviews \
  --require-code-owner-review \
  2>&1

# Develop branch: moderate protection
echo "Configuring develop branch..."
gh repo rule create \
  -R "$OWNER/$REPO" \
  --branch develop \
  --require-pull-request-before-merge \
  --require-review-count 1 \
  --require-status-checks-to-pass \
  --require-branches-to-be-up-to-date \
  --dismiss-stale-reviews \
  2>&1

# Feature branches: auto-delete after merge
echo "Configuring auto-delete on PR merge..."
gh repo edit \
  -R "$OWNER/$REPO" \
  --delete-branch-on-merge \
  2>&1

echo "✅ Branch protection configured for $OWNER/$REPO"
```

**Execução:**

```bash
chmod +x setup-branch-protection.sh
./setup-branch-protection.sh sisph-bff-jnd-construtoras
./setup-branch-protection.sh sisph-api-auditoria
# ... etc para todos os repos
```

---

## SEÇÃO 8: Commit Lint Config

```yaml
# .commitlintrc.yml (ou commitlint.config.js)

extends:
  - '@commitlint/config-conventional'

rules:
  type-enum:
    - 2
    - always
    - - feat       # Feature
      - fix        # Bug fix
      - docs       # Documentation
      - style      # Code style (formatting)
      - refactor   # Code refactoring
      - test       # Tests
      - ci         # CI/CD
      - chore      # Maintenance
      - perf       # Performance
  type-case:
    - 2
    - always
    - lowercase
  subject-empty:
    - 2
    - never
  subject-period:
    - 2
    - never
  subject-max-length:
    - 2
    - always
    - 72
  body-leading-blank:
    - 2
    - always
  body-max-line-length:
    - 2
    - always
    - 100

# Package: npm install --save-dev commitlint @commitlint/config-conventional
# Setup pre-commit hook: npx husky install && npx husky add .husky/commit-msg 'npx --no -- commitlint --edit "$1"'
```

---

## SEÇÃO 9: Health Check Report Template

```markdown
# Git Health Check - Week of [DATE]

## 📊 Metrics

### Repository Status

| Repo | Main | Develop | Protected | Status |
|------|------|---------|-----------|--------|
| sisph-bff-jnd-construtoras | v1.2.0 | -1 | ✅ | OK |
| sisph-api-auditoria | v1.5.1 | +2 | ✅ | OK |
| siaci-componentes-net | v3.2.0 | sync | ✅ | OK |

### Quality Metrics

| Metric | Target | Week | Trend |
|--------|--------|------|-------|
| Main protected (%) | 100 | 100 | ✅ |
| PRs with 2 approvals (%) | 95 | 92 | ⚠️ |
| Tests coverage (avg) | 80 | 82 | ✅ |
| SonarQube A+ (%) | 90 | 85 | ⚠️ |
| Build success (%) | 98 | 97 | ✅ |

### Incidents

| Date | Severity | Issue | Resolution |
|------|----------|-------|------------|
| 2026-06-22 | Critical | JIRA-468 payment bug | Hotfix deployed 50min |
| 2026-06-20 | Minor | config-hmp diverged | Reconciled manually |

## 🎯 Action Items

- [ ] Investigate SonarQube grades drop
- [ ] Schedule training session for PR review best practices
- [ ] Follow up with sisph-api team on coverage

## 📋 Next Week

- Release v1.3.0 (planned Friday)
- Config reconciliation (Monday)

---

*Report by:* Integrador  
*Date:* 2026-06-23  
*Next Report:* 2026-06-30
```

---

## SEÇÃO 10: FAQ & Troubleshooting

```markdown
# Git Governance FAQ

## Q: "How do I start a new feature?"

A: Use this pattern:
```bash
git checkout develop
git pull origin develop
git checkout -b feature/squad-name/JIRA-XXX-description
# ... develop, test, commit
git push origin feature/squad-name/JIRA-XXX-description
# Open PR on GitHub
```

## Q: "My PR has conflicts, what do I do?"

A: Rebase on latest develop:
```bash
git fetch origin
git rebase origin/develop
# Resolve conflicts in editor
git add .
git rebase --continue
git push origin feature/... --force-with-lease
```

## Q: "Can I push directly to develop?"

A: ❌ No. Always use PR + 1 approval.

## Q: "What if I need to hotfix production?"

A: Use hotfix branch (see HOTFIX_RUNBOOK.md).
SLA: Detection → Production = 60 min

## Q: "How do I check build status?"

A: Check GitHub Actions tab in PR or at:
https://github.com/caixagithub/[REPO]/actions

## Q: "My code has low coverage, what now?"

A: Add tests:
```bash
mvn clean test
mvn jacoco:report
# Review target/site/jacoco/index.html
# Add missing tests for coverage
```

## Q: "How do I know when to release?"

A: Integrador decides based on:
- Features complete + tested in develop
- Coverage ≥ 80%
- No critical SonarQube issues
- Squad approval

## Q: "What's Conventional Commits?"

A:
```
feat(module): add new feature
fix(module): fix bug
docs: update readme
refactor: code cleanup
test: add tests
ci: update workflow
```

See: https://www.conventionalcommits.org/

---

*More FAQ?* Ask in #git-governance
```

---

## CONCLUSÃO

Todos os templates acima estão **prontos para copiar-e-colar** em seus repositórios. Ajuste nomes, endpoints, e squad names conforme necessário.

**Próxima ação:** Copie `.github/CODEOWNERS` e `.github/pull_request_template.md` para os 5 repositórios piloto (Seção 1 do PLANO_IMPLEMENTACAO_90_DIAS).

**Versão:** 1.0  
**Data:** 23 de Junho, 2026

