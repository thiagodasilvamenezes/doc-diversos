# RESUMO EXECUTIVO: WORKFLOWS sisph-api-auditoria
## Visão Rápida e Referência de Bolso

---

## 📌 QUICK REFERENCE TABLE

```
┌─────────────────────────────────┬──────────────┬──────────┬─────────────────────┐
│ Workflow                        │ Propósito    │ Trigger  │ Ação Principal      │
├─────────────────────────────────┼──────────────┼──────────┼─────────────────────┤
│ call-docs-pipelines             │ Docs (MKDOC) │ push/PR  │ Build + Deploy Docs │
│ call-generic-pipelines          │ CI/CD Deploy │ push     │ Build + Deploy Envs │
│ call-generic-qa-pipelines       │ QA/Quality   │ PR       │ SonarQube Analysis  │
│ call-generic-sec-pipelines      │ Security     │ push/PR  │ CodeQL + Deps Scan  │
│ call-sisph-devsecops-policies   │ Governance   │ PR/push  │ Valida PR Policies  │
│ call-sync-workflow              │ Sync Repos   │ push     │ Copia → Internet    │
└─────────────────────────────────┴──────────────┴──────────┴─────────────────────┘
```

---

## 🎯 UM MINUTO PARA CADA WORKFLOW

### 1️⃣ call-docs-pipelines.yaml
```
┌─────────────────────────────────────┐
│  📚 DOCUMENTAÇÃO (MkDocs)           │
├─────────────────────────────────────┤
│  Quando: push/PR em main ou develop │
│  O quê:  Build MkDocs documentation │
│  Onde:   FusionX (portal docs)      │
│  Status: ✅ BUILD & DEPLOY          │
└─────────────────────────────────────┘
```

### 2️⃣ call-generic-pipelines.yaml
```
┌─────────────────────────────────────┐
│  🚀 PIPELINE CI/CD PRINCIPAL        │
├─────────────────────────────────────┤
│  Quando: push em main ou develop    │
│  O quê:  Compile + Test + Deploy    │
│  Onde:   DES → TQS → HMP → PRD      │
│  Status: ✅ BUILD + 4 DEPLOYS       │
└─────────────────────────────────────┘
```

### 3️⃣ call-generic-qa-pipelines.yaml
```
┌─────────────────────────────────────┐
│  🔍 QUALIDADE DE CÓDIGO (SONARQUBE) │
├─────────────────────────────────────┤
│  Quando: PR aberta/sincronizada     │
│  O quê:  SonarQube analysis         │
│  Valida: Coverage ≥80%, Grade A     │
│  Status: ✅ PR COMMENT + Quality    │
└─────────────────────────────────────┘
```

### 4️⃣ call-generic-sec-pipelines.yaml
```
┌─────────────────────────────────────┐
│  🛡️ SEGURANÇA (CodeQL)              │
├─────────────────────────────────────┤
│  Quando: push/PR + agenda (2ª 1AM)  │
│  O quê:  Análise segurança, CVEs    │
│  Busca:  Secrets, injection, vulns  │
│  Status: ✅ Security Dashboard      │
└─────────────────────────────────────┘
```

### 5️⃣ call-sisph-devsecops-policies.yaml
```
┌─────────────────────────────────────┐
│  📋 POLÍTICAS DE PR (Governance)    │
├─────────────────────────────────────┤
│  Quando: PR aberta/sincronizada     │
│  O quê:  Valida PR title/desc/commits
│  Bloqueia: Formato inválido         │
│  Status: ✅ Check status + Comment  │
└─────────────────────────────────────┘
```

### 6️⃣ call-sync-workflow.yaml
```
┌─────────────────────────────────────┐
│  🔄 SINCRONIZAÇÃO DE REPOS          │
├─────────────────────────────────────┤
│  Quando: push em main (ou manual)   │
│  O quê:  Copia código de origem     │
│  Para:   sisph-api-auditoria-internet
│  Exclui: .github/, catalog-info    │
│  Status: ✅ SYNC + VERIFY           │
└─────────────────────────────────────┘
```

---

## 🔀 ORDEM DE EXECUÇÃO TÍPICA

### Cenário: Developer faz PUSH em develop

```
T+0s   Push detectado
       ↓
T+5s   ├─ CI/CD Pipeline iniciado (call-generic-pipelines.yaml)
       │  └─ BUILD: Compile, Unit Tests, Artifacts
       │  └─ DEPLOY: DES (auto), TQS (auto), HMP (auto)
       │
       ├─ Documentação iniciada (call-docs-pipelines.yaml)
       │  └─ BUILD: MkDocs generate
       │  └─ DEPLOY: FusionX
       │
       └─ Segurança iniciada (call-generic-sec-pipelines.yaml)
          └─ CodeQL: Análise SAST + Secrets + Deps

T+2m   BUILD completo, PRD aguardando aprovação manual
T+3m   DOCS deployed em FusionX
T+5m   SECURITY scan completo
```

### Cenário: Developer abre PULL REQUEST

```
T+0s   PR aberta/sincronizada
       ↓
T+5s   ├─ Políticas iniciadas (call-sisph-devsecops-policies.yaml)
       │  └─ Valida title, description, commits
       │  └─ Comentário com resultados
       │
       ├─ QA iniciado (call-generic-qa-pipelines.yaml)
       │  └─ SonarQube analysis
       │  └─ Coverage report
       │  └─ Comentário em PR
       │
       └─ Segurança iniciada (call-generic-sec-pipelines.yaml)
          └─ CodeQL analysis
          └─ Dependency scan
          └─ Report de vulns

T+1m   Policies: ✅ PASS/❌ FAIL
T+2m   QA: ✅ Coverage 87%, Grade A
T+3m   Security: ✅ 0 Critical vulns
       → PR pronta para review
```

---

## 📊 STATUS E CONDIÇÕES

### Quando cada workflow EXECUTA?

| Workflow | main push | develop push | PR open | schedule |
|----------|-----------|--------------|---------|----------|
| docs | ✅ | ✅ | ✅ | ❌ |
| generic | ✅ | ✅ | ❌ | ❌ |
| qa | ❌ | ❌ | ✅ | ❌ |
| sec | ✅ | ✅ | ✅ | ✅ (2ª 1AM) |
| policies | ✅ | ✅ | ✅ | ❌ |
| sync | ✅ (main) | ❌ | ❌ | ❌ |

---

## 🚨 TROUBLESHOOTING RÁPIDO

### "Pipeline está lento"
→ Verificar: Jobs paralelos vs sequenciais
→ Aumentar: runner size (larger GitHub Actions runner)

### "PR bloqueada em Quality Check"
→ Coverage < 80%? → Adicione testes
→ SonarQube grade < A? → Fixe code smells
→ Rodou `mvn clean test` localmente?

### "Security scan encontrou vulnerabilidade crítica"
→ CVE em dependência? → Atualize pom.xml
→ Secret hardcoded? → Revogue e remova
→ Injection flaw? → Valide inputs no código

### "Sync para internet repo falhou"
→ Token expirado? → Regenere TARGET_REPO_TOKEN
→ Permissões faltando? → Conceda write access
→ Branch não existe? → Crie em destino

### "Docs não apareceram em FusionX"
→ Arquivo mkdocs.yaml válido?
→ Documentação está em docs/ folder?
→ Workflow build step passou? → Check logs

---

## 🔑 SECRETS NECESSÁRIOS

```
TARGET_REPO_TOKEN
  ├─ Necessário para: call-sync-workflow.yaml
  ├─ Tipo: GitHub Personal Access Token (PAT)
  ├─ Permissões: repo (write), actions
  ├─ Validade: 1 ano (renovar!)
  └─ Armazenado em: Repo Settings → Secrets

SONARQUBE_TOKEN (se usado em qa-pipelines)
  ├─ Necessário para: SonarQube authentication
  ├─ Tipo: SonarQube generated token
  ├─ Permissões: Scan code
  └─ Armazenado em: Repo Settings → Secrets

GITHUB_TOKEN (default, não precisa setup)
  ├─ Fornecido automaticamente pelo GitHub
  ├─ Permissões: Definidas em "permissions:" do workflow
  └─ Válido apenas durante execução
```

---

## ✅ CHECKLIST: TUDO FUNCIONANDO?

- [ ] Push em develop → Pipeline executa (BUILD + DEPLOY DES/TQS/HMP)?
- [ ] Push em main → Sync workflow executa (copia para internet repo)?
- [ ] PR aberta → QA + Policies + Security executam simultaneamente?
- [ ] Coverage e SonarQube grade aparecem em PR?
- [ ] CodeQL scan completa em <10 min?
- [ ] Documentação aparece em FusionX após push?
- [ ] TARGET_REPO_TOKEN ainda válido (não expirou)?
- [ ] Nenhum workflow com status ❌ FAILED?

---

## 📞 SUPORTE E ESCLARECER DÚVIDAS

| Dúvida | Resposta |
|--------|----------|
| Por que meu PR está bloqueada? | Verificar: Security tab, SonarQube, Code review |
| Como desbloquear PR sem SonarQube A? | Tech Lead pode aprovar mesmo sem A (risco!) |
| Por que CodeQL leva muito tempo? | Primeiro scan = longo; scans incremetais = rápidos |
| Como forçar re-run de um workflow? | GitHub UI: Actions → Workflow → Re-run |
| Posso desabilitar um workflow? | Sim: Renomear arquivo `.yaml` para `.yaml.bak` |

---

## 🔗 REFERÊNCIAS

- **GitHub Actions Docs:** https://docs.github.com/en/actions
- **SonarQube:** https://docs.sonarqube.org/
- **CodeQL:** https://codeql.github.com/
- **Conventional Commits:** https://www.conventionalcommits.org/
- **Repositório DevSecOps Templates:** caixagithub/DevSecOps-Solutions
- **Repositório Políticas:** caixagithub/sisph-doc-devsecops-policies

---

**Versão:** 1.0  
**Data:** 24 de Junho, 2026  
**Impresso em:** 2026-06-24 10:30 UTC
