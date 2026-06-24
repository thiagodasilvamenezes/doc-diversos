# ANÁLISE DETALHADA DOS WORKFLOWS - sisph-api-auditoria
## Descrição Funcional de Cada Pipeline CI/CD

**Data:** 24 de Junho, 2026  
**Repositório:** sisph-api-auditoria  
**Localização:** `.github/workflows/`

---

## 📋 ÍNDICE

1. [call-docs-pipelines.yaml](#1-call-docs-pipelinesyaml)
2. [call-generic-pipelines.yaml](#2-call-generic-pipelinesyaml)
3. [call-generic-qa-pipelines.yaml](#3-call-generic-qa-pipelinesyaml)
4. [call-generic-sec-pipelines.yaml](#4-call-generic-sec-pipelinesyaml)
5. [call-sisph-devsecops-policies.yaml](#5-call-sisph-devsecops-policiesyaml)
6. [call-sync-workflow.yaml](#6-call-sync-workflowyaml)

---

## 1. call-docs-pipelines.yaml

### 🎯 Propósito
Automatiza o **build da documentação técnica** da aplicação usando o padrão **MkDocs**, que posteriormente é exibida no portal FusionX (documentação corporativa).

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | CI/CD Workflow |
| **Tipo** | Documentação |
| **Triggers** | workflow_dispatch, push, pull_request |
| **Branches** | main, develop |
| **Ignorar caminhos** | `.github/**`, `catalog-info.yaml` |

### 🔄 Fluxo de Execução

```
1. Evento dispara (push/PR em main ou develop)
   ↓
2. GitHub Actions inicializa job "CI_DES"
   ↓
3. Usa template reutilizável: caixagithub/DevSecOps-Solutions/.github/workflows/techdocs-pipelines.yaml@main
   ↓
4. Template executa:
   - Build da documentação MkDocs
   - Validação de links e markdown
   - Geração de artifacts
   ↓
5. Resultado disponibilizado para FusionX
```

### 📝 Mudanças que Acionam

- Alterações em arquivos `.md` (documentação)
- Alterações em `mkdocs.yaml` (configuração)
- Alterações em diretório `docs/`
- **NÃO** dispara se apenas `.github/**` ou `catalog-info.yaml` mudarem

### ✅ Saída Esperada

- Documentação HTML gerada
- Deployment em portal FusionX
- Links e markdown validados

---

## 2. call-generic-pipelines.yaml

### 🎯 Propósito
**Pipeline CI/CD genérico** que orquestra todo o fluxo de **integração contínua e entrega contínua** da aplicação:
- BUILD (compilação + testes)
- DEPLOY (implantação nos ambientes)
- Suporta múltiplos ambientes (DES, TQS, HMP, PRD)

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | CI/CD Workflow Generic |
| **Tipo** | Pipeline Principal |
| **Triggers** | workflow_dispatch, push |
| **Branches** | main, develop |
| **Ignorar caminhos** | `.github/**`, `catalog-info.yaml` |
| **Ambientes suportados** | DES, TQS, HMP, PRD |
| **IMPORT_APIM** | false (não importa APIs para Azure API Management) |

### 🔒 Permissões Concedidas

```yaml
permissions:
  contents: write              # Escrever nos arquivos do repo
  security-events: write       # Registrar eventos de segurança
  packages: read               # Ler pacotes (npm, docker)
  actions: read                # Ler ações do GitHub
  issues: write                # Criar/editar issues
  pull-requests: write         # Criar/editar PRs
```

### 🔄 Fluxo de Execução

```
1. Evento dispara (push em main/develop)
   ↓
2. GitHub Actions inicializa job "CI_DES"
   ↓
3. Usa template reutilizável: caixagithub/DevSecOps-Solutions/.github/workflows/generic-pipelines.yaml@main
   ↓
4. Template executa em cadeia:
   a) CHECKOUT: Clone o código
   b) BUILD: 
      - Detecta linguagem (Java/Node/Python/etc)
      - Compila/build (mvn clean package)
      - Executa testes unitários
      - Gera artifacts
   c) DEPLOY:
      - Deploy automático em DES
      - Deploy automático em TQS
      - Deploy automático em HMP
      - Deploy em PRD requer aprovação manual (via GitHub UI)
   ↓
5. Resultado: Aplicação testada e implantada
```

### 🎛️ Variáveis de Configuração

```yaml
DEPLOY_ENVIRONMENTS: '["DES", "TQS", "HMP", "PRD"]'
  → Define os ambientes para deploy automático
  
IMPORT_APIM: false
  → Se true: importaria a API para Azure API Management
  → Se false: apenas deploy, sem importação automática
```

### 📊 Ambientes por Branch

| Branch | DES | TQS | HMP | PRD |
|--------|-----|-----|-----|-----|
| develop | ✅ Auto | ✅ Auto | ✅ Auto | ❌ Manual |
| main | ✅ Auto | ✅ Auto | ✅ Auto | ✅ Manual |

### ✅ Saída Esperada

- Código compilado
- Testes executados
- Artifacts gerados (JAR/WAR/Docker image)
- Deploy em ambientes de teste
- PRD aguardando aprovação manual

---

## 3. call-generic-qa-pipelines.yaml

### 🎯 Propósito
Realiza **análise estática de código** (SAST) usando **SonarQube** para validar:
- Qualidade de código (padrões, duplicação, complexidade)
- Cobertura de testes (≥ 80%)
- Violações de segurança (injection, etc)
- Technical debt
- Code smells

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | QA - Análise Estática de Código |
| **Tipo** | Quality Assurance (SAST) |
| **Triggers** | workflow_dispatch, pull_request |
| **PR Types** | opened, synchronize, reopened |
| **Ignorar caminhos** | `.github/**`, `catalog-info.yaml` |
| **Análise realizada** | SonarQube (coverage, quality gates) |

### 🔄 Fluxo de Execução

```
1. Evento dispara (PR aberta/sincronizada/reabertar)
   ↓
2. GitHub Actions inicializa job "QA"
   ↓
3. Usa template reutilizável: caixagithub/DevSecOps-Solutions/.github/workflows/quality-assurance.yml@main
   ↓
4. Template executa:
   a) CHECKOUT: Clone o código da PR
   b) BUILD: Compile código (mvn clean package)
   c) TEST: Execute testes unitários
   d) COVERAGE: Calcula cobertura de testes
   e) SONARQUBE SCAN:
      - Analisa código-fonte
      - Verifica padrões de qualidade
      - Compara com baseline histórico
      - Busca código duplicado
      - Detecta code smells e bugs
   f) QUALITY GATE:
      - Valida se coverage ≥ 80%
      - Valida grade SonarQube (A, B, C, D, E)
      - Bloqueia merge se não passar
   ↓
5. Resultado: PR comentada com report de qualidade
```

### 🚀 Triggeragem

⚠️ **Importante:** Executa APENAS em **pull_requests**, não em push direto!

Motivo: Verificar qualidade ANTES de mesclar em develop/main

### 🎯 Quality Gates (Padrão SonarQube)

```
✅ PASS: Coverage ≥ 80%, Grade A/B, Sem bloqueadores
⚠️ WARN: Coverage 70-80%, Grade C, Alguns problemas
❌ FAIL: Coverage < 70%, Grade D/E, Muitos problemas
```

### 📊 Resultado da Análise

O comentário em PR inclui:
- Coverage % (ex: 87%)
- Grade letter (ex: A)
- Bugs encontrados
- Code smells
- Duplicação %
- Security hotspots

---

## 4. call-generic-sec-pipelines.yaml

### 🎯 Propósito
Realiza **análise de segurança** do código e dependências:
- **SAST (Static Application Security Testing):** Analisa código-fonte buscando vulnerabilidades
- **Vazamento de senhas:** Detecta credenciais/tokens hardcoded
- **Análise de dependências:** Busca CVEs em bibliotecas
- **CodeQL:** Ferramenta da GitHub avançada para segurança

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | Call CodeQL workflow Seguranca |
| **Tipo** | Security (SAST + DAST + SCA) |
| **Triggers** | push, pull_request, schedule (cron) |
| **Branches** | main, develop |
| **Ignorar caminhos** | `.github/**`, `catalog-info.yaml` |
| **Schedule** | Toda segunda às 1:00 AM UTC |
| **Análises** | CodeQL, Secret scanning, Dependency check |

### 🔒 Permissões Concedidas

```yaml
permissions:
  contents: read               # Ler código
  security-events: write       # Registrar achados de segurança
  actions: read                # Ler ações
  packages: read               # Ler dependências
```

### 🔄 Fluxo de Execução

```
1. Evento dispara (push/PR em main/develop OU segunda 1:00 AM)
   ↓
2. GitHub Actions inicializa job "CodeQL"
   ↓
3. Usa template reutilizável: caixagithub/DevSecOps-Solutions/.github/workflows/codeql-pipelines.yaml@main
   ↓
4. Template executa:
   a) CHECKOUT: Clone o código
   b) DEPENDENCY SCANNING:
      - Analisa pom.xml (Maven), package.json (Node), etc
      - Busca dependências com CVEs conhecidas
      - Verifica versões vulneráveis
   c) CODEQL ANALYSIS:
      - Análise estática avançada de código
      - Busca padrões inseguros
      - Detecta injection flaws, insecure cryptography, etc
   d) SECRET SCANNING:
      - Busca credenciais hardcoded
      - Detecta API keys, tokens, senhas
      - Compara contra padrões de regex de secrets
   e) REPORT:
      - Gera relatório de segurança
      - Publica no GitHub Security tab
      - Comenta em PRs se houver críticos
   ↓
5. Resultado: Security dashboard preenchido
```

### 📅 Execuções

**Automáticas em:**
- Cada push em main/develop
- Cada PR em main/develop
- **Agendada:** Toda segunda-feira às 1:00 AM UTC (varredura completa)

### ⚙️ Parâmetro Opcional

```yaml
DINAMICALLY_CREATE_SETTINGS_XML: false (ou true)
  → Se true: Cria settings.xml Maven dinamicamente via pipeline
  → Necessário para repositórios Adapter com Java
```

### 🎯 Vulnerabilidades Detectadas

**Exemplos:**
- SQL Injection
- Cross-Site Scripting (XSS)
- Insecure Cryptography
- Hardcoded Secrets (API keys, passwords)
- Outdated Dependencies
- Known CVEs

### 📊 Resultado da Análise

Publicado em: **Settings → Security → Code scanning results**

---

## 5. call-sisph-devsecops-policies.yaml

### 🎯 Propósito
Valida **políticas de Pull Request** no repositório SISPH, como:
- Mensagens de commit adequadas
- Checklist preenchido
- Padrões de JIRA ID presentes
- Correlação com demandas
- Compliance com padrões corporativos

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | PR Policies - SISPH |
| **Tipo** | Governance/Policy |
| **Triggers** | pull_request (opened, synchronize, reopened), push |
| **Branches** | main, develop |
| **Template** | caixagithub/sisph-doc-devsecops-policies/.github/workflows/pr-policies.yaml@main |

### 🔒 Permissões Concedidas

```yaml
permissions:
  contents: read           # Ler código
  pull-requests: read      # Ler PR metadata
  checks: write            # Escrever status de checks
```

### 🔄 Fluxo de Execução

```
1. Evento dispara (PR aberta/sincronizada/reabertar OU push)
   ↓
2. GitHub Actions inicializa job "pr-policies"
   ↓
3. Usa template reutilizável: sisph-doc-devsecops-policies/.github/workflows/pr-policies.yaml@main
   ↓
4. Template executa validações:
   a) PR TITLE:
      - Formato válido? (ex: "[JIRA-123] Descrição")
      - Comprimento? (min/max)
   b) PR DESCRIPTION:
      - Preenchida? (não vazia)
      - Contém checklist?
      - Tem rastreabilidade JIRA?
   c) COMMITS:
      - Mensagens seguem Conventional Commits?
      - Têm referência JIRA?
      - Sem mensagens genéricas ("fix", "update")?
   d) POLICY CHECK:
      - Branch de origem válida? (feature/*, hotfix/*, etc)
      - Não é push direto em main/develop?
      - Reviewers obrigatórios presentes?
   ↓
5. Resultado: Check status (passing/failing)
              Se falhar: PR comentada com detalhes
```

### 📋 Validações Típicas

```
✅ PR Title: "[JIRA-456] Add novo endpoint para consulta"
❌ PR Title: "Fix" (vago, sem JIRA)

✅ Description: Preenchida com contexto, por quê, como testar
❌ Description: Vazia

✅ Commit: "feat(api): add GET endpoint JIRA-456"
❌ Commit: "Update" (genérico, sem contexto)

✅ Branch: feature/squad-backend/JIRA-456-description
❌ Branch: Random names (master, develop direto)
```

### 🎯 Benefícios

- Padronização de PRs
- Rastreabilidade via JIRA
- Compliance corporativo
- Histórico auditável
- Facilita reviews

---

## 6. call-sync-workflow.yaml

### 🎯 Propósito
Sincroniza/replica código entre dois repositórios GitHub:
- **Repositório origem:** sisph-api-auditoria (atual)
- **Repositório destino:** sisph-api-auditoria-internet

Útil para manter versões "internet-facing" sincronizadas com versão interna.

### 📊 Detalhes Técnicos

| Aspecto | Valor |
|---------|-------|
| **Nome do Workflow** | Chamar Sync Workflow |
| **Tipo** | Repository Synchronization |
| **Triggers** | push em main, workflow_dispatch (manual) |
| **Ignorar caminhos** | `.github/**`, `catalog-info.yaml`, `mkdocs.yaml` |
| **Origem** | sisph-api-auditoria |
| **Destino** | sisph-api-auditoria-internet |
| **Destino org** | caixagithub |
| **Destino branch** | main (default) |

### 🔄 Fluxo de Execução

```
1. Evento dispara (push em main OU manual via GitHub UI)
   ↓
2. GitHub Actions inicializa job "call-sync-workflow"
   ↓
3. Usa template reutilizável: sisph-doc-devsecops-policies/.github/workflows/sync-to-second-repo.yaml@main
   ↓
4. Template executa:
   a) CHECKOUT: Clone origem (sisph-api-auditoria)
   b) FILTER:
      - Remove arquivos/pastas da lista de exclusão
      - Mantém: src/, pom.xml, docs/, etc
      - Remove: .github/, catalog-info.yaml, mkdocs.yaml
   c) SYNC:
      - Conecta ao repositório destino (sisph-api-auditoria-internet)
      - Usa token: TARGET_REPO_TOKEN (secret)
      - Push alterações para main (ou branch especificado)
   d) VERIFY:
      - Valida que sync foi bem-sucedido
      - Reporta status
   ↓
5. Resultado: sisph-api-auditoria-internet atualizado
              com código da origem (exceto exclusões)
```

### ⚙️ Parâmetros Configuráveis

```yaml
target_org: 'caixagithub'
  → Organização do repositório de destino
  
target_repo: 'sisph-api-auditoria-internet'
  → Nome do repositório de destino
  
target_branch: 'main'  (default)
  → Branch de destino (pode ser 'develop', 'release/v1.0', etc)
  
exclude_paths: '.github/,catalog-info.yaml,mkdocs.yaml'
  → Caminhos a NÃO sincronizar (separados por vírgula)
  → Exemplo: '.github/,docs/,test/,*.md'
```

### 🔐 Autenticação

```yaml
secrets:
  target_repo_token: ${{ secrets.TARGET_REPO_TOKEN }}
  → Token de acesso ao repositório destino
  → Necessário ter permissões write no destino
  → Armazenado em Secrets do repo (não em git!)
```

### 📅 Triggering

```
Automático: Push em main
Manual: GitHub UI → Actions → "Chamar Sync Workflow" → Run
```

### 🎯 Casos de Uso

1. **Manutenção de versão pública:** Código interno + versão externa
2. **Conformidade:** Remover dados sensíveis antes de expor
3. **Espelhamento:** Manter dois repos sincronizados
4. **Release:** Copiar para repositório de release

### ⚠️ Cuidados

- Certifique que `exclude_paths` remove dados sensíveis
- Teste sync em ambiente de teste primeiro
- Valide que `TARGET_REPO_TOKEN` tem permissões corretas
- Monitore logs para erros de autenticação

---

## 📊 RESUMO COMPARATIVO

| Workflow | Propósito | Trigger | Ambiente | Status |
|----------|-----------|---------|----------|--------|
| **call-docs-pipelines.yaml** | Build MkDocs | push/PR | FusionX | ✅ |
| **call-generic-pipelines.yaml** | CI/CD + Deploy | push | DES/TQS/HMP/PRD | ✅ |
| **call-generic-qa-pipelines.yaml** | Qualidade (SonarQube) | PR | SonarQube | ✅ |
| **call-generic-sec-pipelines.yaml** | Segurança (CodeQL) | push/PR/schedule | GitHub Security | ✅ |
| **call-sisph-devsecops-policies.yaml** | Políticas de PR | PR/push | Governance | ✅ |
| **call-sync-workflow.yaml** | Sincronização Repos | push main/manual | Destino repo | ✅ |

---

## 🔄 FLUXO COMPLETO DE UM COMMIT

```
1. Developer cria PR (feature/squad/JIRA-XXX)
   ↓
   ├─→ call-sisph-devsecops-policies.yaml ↴ Valida PR title, description, commits
   │
   ├─→ call-generic-qa-pipelines.yaml ↴ SonarQube: Coverage, code quality
   │
   ├─→ call-generic-sec-pipelines.yaml ↴ CodeQL: Vulnerabilidades, secrets
   │
   └─→ call-generic-pipelines.yaml (se não bloqueado) ↴ BUILD: tests, artifacts

2. Approvals obtidos (2 reviewers)
   ↓
3. PR mergeada para develop
   ↓
   ├─→ call-generic-pipelines.yaml ↴ Deploy DES, TQS, HMP
   │
   ├─→ call-generic-sec-pipelines.yaml (schedule) ↴ Scan de segurança
   │
   └─→ call-docs-pipelines.yaml (se docs mudaram) ↴ Build MkDocs

4. Release criada em main
   ↓
   ├─→ call-generic-pipelines.yaml ↴ Deploy PRD (manual approval)
   │
   ├─→ call-sync-workflow.yaml ↴ Sincroniza para internet repo
   │
   └─→ call-generic-sec-pipelines.yaml ↴ Scan final de segurança
```

---

## 🎯 PRÓXIMAS AÇÕES RECOMENDADAS

1. **Validar triggers:** Confirmar que cada workflow dispara correto
2. **Testar manualmente:** workflow_dispatch para validar execução
3. **Revisar exclusões:** Confirmar que exclude_paths do sync está correto
4. **Monitorar secrets:** Garantir que TARGET_REPO_TOKEN está válido
5. **Definir schedule:** Ajustar horário do CodeQL se necessário

---

**Preparado por:** Integrador de Código  
**Data:** 24 de Junho, 2026  
**Versão:** 1.0
