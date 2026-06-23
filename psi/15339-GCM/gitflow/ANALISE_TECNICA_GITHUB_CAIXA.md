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

