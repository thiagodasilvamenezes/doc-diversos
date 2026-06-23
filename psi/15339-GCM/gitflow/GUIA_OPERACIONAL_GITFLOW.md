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

