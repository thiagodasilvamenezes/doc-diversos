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

