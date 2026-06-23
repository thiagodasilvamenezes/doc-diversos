GHE Enablement — Git e GitHub Foundations
👤 Apresentador

Caio Queiroz (@caiocqueiroz)
+2 anos no GitHub
Experiência anterior: ThoughtWorks, SGS, IBM
+20 anos em Tecnologia/Infraestrutura
Background DevOps


📘 Introdução ao Git
🎯 Objetivos de aprendizado

O que é controle de versão
Entender sistemas distribuídos (Git)
Criar e configurar um projeto Git
Realizar alterações no código
Praticar comandos no terminal e IDE


🔄 Version Control System (VCS)
Um VCS permite:

Controle completo de histórico (audit trail)
Rastreabilidade de mudanças por commit
Colaboração paralela via branches
Recuperação determinística de versões

No contexto corporativo:

Governança de código
Compliance
Segurança com histórico imutável
Base para CI/CD e DevOps


Sem versionamento estruturado, não existe engenharia em escala.


🔧 Git como DVCS
Características:

Cada clone contém histórico completo
Identificação por hash (SHA-1)
Operações locais independentes de rede
Sincronização via remoto (ex: origin)

Vantagens vs centralizados:

Sem single point of failure
Menor latência
Workflows distribuídos
Escala para grandes equipes


🧠 Conceitos principais (dia a dia)
Estrutura básica

Working tree: estado atual do código
Commit: snapshot imutável (com hash)
Repository (.git): banco de objetos e metadados
Branch: ponteiro para sequência de commits

Conceitos adicionais

HEAD: referência para commit atual
Tag: marcação fixa em um commit
Merge: integração de linhas de desenvolvimento
Remote: repositório remoto

→ Push = enviar
→ Pull = trazer

⚙️ Comandos básicos
Shellgit pullgit pushgit push --rebaseMostrar mais linhas

🔄 Fluxo Git (modelo mental)

Working tree — alterações locais
Staging (index) — git add
Commit — snapshot imutável
Branch — evolução
Merge/Rebase — integração
Remote (push) — sincronização


Entender o fluxo elimina a necessidade de decorar comandos.


✅ Boas práticas

Commits pequenos e frequentes
Mensagens claras
Branch por feature/correção
Usar Pull Request
Manter histórico linear
Não alterar histórico compartilhado

❌ Erros comuns

Commits grandes
Mensagens vagas ("update", "fix")
Reescrever histórico
Force push indevido
Versionar secrets


🔗 Git vs GitHub
Git

Motor de versionamento
Estrutura (commit, tag, branch)
Controle distribuído

GitHub

Plataforma de colaboração
Pull Requests
Regras e governança
CI/CD (Actions)
Segurança (GHAS)
IA (Copilot)
Repositórios remotos


📘 Introdução ao GitHub
🎯 Objetivos

Fundamentos da plataforma
Gestão de repositórios
Fluxo GitHub (branch, commit, PR)
Funcionalidades colaborativas
Tipos de contas e EMU


💡 GitHub em uma frase

Plataforma onde os times constroem, colaboram e entregam software com mais velocidade e segurança.


📦 Repositório (repo)

Arquivos + histórico de revisões

O time deve dominar:

Criar e clonar repositórios
Gerenciar commits e merges
Mensagens claras
Fluxo com branches e PRs


🔁 GitHub Flow

Criar branch
Commits pequenos
Pull Request
Checks automáticos
Merge aprovado
Deploy

Fluxo:
main → feature branch → PR → review → merge → deploy


🔧 Componentes do fluxo
Branches

Isolamento de mudanças

Commits

Registro auditável de alterações

Pull Requests

Revisão, comentários e aprovação


🤝 Colaboração

Issues → tarefas, bugs, tracking
Discussions → Q&A e debates
Pull Requests → revisão técnica


🧩 Produtos GitHub

Repositories
Pull Requests
Actions (CI/CD)
Copilot
Advanced Security


🔗 Integração da plataforma
Repositório

Base da plataforma
Dispara eventos (push, PR, merge)
Integra com Actions, Copilot e Security

Copilot

Sugere código
Atua antes/durante PR
Automatiza tarefas via Actions

Pull Requests

Governança e revisão
Integra CI/CD e segurança
Suporte a rulesets

GitHub Actions

Automação orientada a eventos
Execução de pipelines CI/CD
Status checks obrigatórios

GitHub Advanced Security

Code scanning (CodeQL)
Detecção de secrets
Análise de dependências
Bloqueio de merge


🔄 Fluxo integrado

Copilot → acelera dev
PR → centraliza mudanças
Actions → automatiza
GHAS → garante segurança
Merge → libera entrega


📦 Recursos adicionais

GitHub Packages
GitHub Pages
Git LFS
GitHub CLI (gh)
Webhooks & APIs


🏢 Planos GitHub

Free → repos ilimitados
Pro → recursos avançados
Team → colaboração organizacional
Enterprise → governança e segurança

Enterprise

Enterprise Cloud
Enterprise Server
EMU (Enterprise Managed Users)


👥 Tipos de conta

Personal Account
Organization
Enterprise Account


🤖 GitHub Copilot
Benefícios

Aumenta produtividade
Acelera desenvolvimento
Gera código automaticamente


Funcionalidades
Code Completion

Sugestões automáticas
Conversão de comentários em código

Chat na IDE

Explica código
Gera testes
Sugere correções

Modo agente

Execução autônoma de tarefas
Planeja, executa e valida


💬 Comandos úteis

/explain
/tests
/fix
@workspace
/help


⚠️ Observações importantes

Sempre revisar código sugerido
Copilot pode errar contexto
Desenvolvedor continua responsável


Copilot não é Autopilot.


📌 Resumo final

Git → versionamento
GitHub → colaboração + governança
Versionamento estruturado = base de escala
GitHub integra dev + automação + segurança


Se quiser, posso gerar uma versão otimizada para apresentação (slides) ou uma versão resumida estilo documentação interna CAIXA (padrão SUART / onboarding).