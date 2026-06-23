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

