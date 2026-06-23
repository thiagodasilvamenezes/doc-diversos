# ServiceNow – Defeito (Módulo SPM)

**Fonte:** EBOOK_SERVICENOW_DEFEITO
**Data:** Junho/2026

---

## 🎯 Visão Geral

O material apresenta o conceito, criação e fluxo de trabalho para registro de defeitos no ServiceNow (módulo SPM).

---

## 📌 O que é Defeito?

O defeito é um registro utilizado para controlar:
- Falhas
- Comportamentos incorretos
- Inconsistências identificadas no sistema

### ✅ Deve conter:
- Descrição do problema
- Tipo de teste relacionado
- Instância/ambiente onde ocorreu

### 📍 Abrangência:
- Construído em comunidade/squad
- Refinado para execução em **uma sprint (não emergencial)**

### ❌ Não é:
- Nova necessidade de negócio
- Melhoria sem falha identificada

---

## 👥 Quem pode criar defeito?

- Dono do Produto
- Desenvolvedor Backend
- Desenvolvedor Frontend
- Desenvolvedor Mobile
- Agile Master
- Engenheiro de Qualidade
- Scrum Master
- Tester Caixa
- Tester FSW
- Time
- UX Designer

---

## 🧩 Seções do Work Item

### Seções:
- Geral (Defeito)
- Agendamento

### Abas:
- Tarefa de Versão
- Tarefa de Documentação
- Tarefa de Teste

---

## 📄 Seção: Geral

| Campo | Descrição |
|------|----------|
| Número | Identificador único automático |
| Tipo | Classificação do defeito |
| Estado | Situação atual no workflow |
| Prioridade | Nível de urgência |
| Primário | Item onde será tratado |
| Relatado em comparação | Onde foi identificado |
| IC afetado | Item de configuração impactado |
| Ambiente | Local do erro (prod, homolog, dev, teste) |
| Grupo de atribuição | Equipe responsável |
| Atribuído a | Responsável |

### Campos adicionais

| Campo | Descrição |
|------|----------|
| Descrição resumida | Resumo do problema |
| Descrição | Detalhamento completo |
| Anotações de trabalho | Histórico e comentários |

---

## 📅 Seção: Agendamento

| Campo | Descrição |
|------|----------|
| Data de início planejada | Início previsto |
| Data de término planejada | Fim previsto |
| Data de início real | Início real |
| Data de término real | Fim real |
| Duração planejada | Tempo estimado |
| Duração real | Tempo executado |
| Esforço planejado | Esforço estimado |
| Esforço real | Esforço aplicado |
| Esforço restante | Esforço pendente |

---

## 🔄 Fluxo de Trabalho

### Estados:
- Rascunho
- Escopo
- Aguardando Aprovação
- Trabalho em Andamento
- Teste/QA
- Implantação
- Encerrado
- Cancelado
- Adiado

---

## 📊 Descrição dos Estados

| Estado | Descrição |
|--------|----------|
| Rascunho | Estado inicial, incompleto |
| Escopo | Definição detalhada |
| Aguardando Aprovação | Esperando validação |
| Trabalho em Andamento | Correção em execução |
| Teste/QA | Validação da solução |
| Implantação | Liberação em produção |
| Encerrado | Finalizado com sucesso |
| Cancelado | Interrompido |
| Adiado | Suspenso temporariamente |

---

## ✅ Resumo

- Defeito controla problemas técnicos
- Não substitui demanda de negócio
- Segue fluxo estruturado
- É tratado dentro do ciclo ágil (sprint)

---

**Fim do documento**

# ServiceNow – Demanda (Módulo SPM)

**Fonte:** EBOOK_SERVICENOW_DEMANDA
**Data:** Junho/2026

---

## 🎯 Visão Geral

Documento que descreve o conceito, criação, qualificação e fluxo de trabalho de demandas no ServiceNow (módulo SPM).

---

## 📌 O que é Demanda?

A demanda é uma **solicitação formal** para que um trabalho seja planejado, financiado e potencialmente executado. 

### ✅ Deve conter:
- Descrição clara e objetiva
- Proposta de valor (benefícios gerados)
- Problema que resolve
- Público beneficiado
- Associação a objetivos estratégicos da CAIXA

### 📍 Abrangência:
- Pode ser construída por comunidade/box
- Pode envolver um ou mais squads

### ❌ Não corresponde a:
- Funcionalidade isolada
- Módulo de sistema
- Sigla de sistema
- Item de execução

---

## 👥 Quem pode criar demanda?

- Líder Missão
- Líder Negócios
- Líder TI
- Arquiteto Empresarial
- Negócio Estratégico

---

## 🧠 Playbook

Um playbook é um conjunto de instruções organizadas em fluxo lógico para orientar a criação da demanda.

### Características:
- Guia o preenchimento das informações
- Fluxo estruturado
- Após conclusão, não permite edição do fluxo inicial

---

## 🧩 Playbook – Etapas

### 1. Definir detalhes
- Nome
- Escopo
- Entrega de valor
- Considerações
- Pontos de atenção

### 2. Definir relacionamento
- Empresa
- Unidade de negócio
- Departamento
- Chefe do departamento
- Aberto por

### 3. Qualificar a demanda
- Portfólio
- Classe de investimento (Execução/Mudança)
- Tipo de investimento
- Compliance
- Produto novo?
- Objetivo primário
- Prioridade estratégica

### 4. Definir time ágil
- Equipe responsável

---

## 📂 Seções do Work Item

- Geral
- Detalhes
- Caso de negócio
- Dados da avaliação
- Anotações
- Preferências
- Associações de IA

---

## 📄 Seção: Geral

| Campo | Descrição |
|------|----------|
| Nome | Identificação da demanda |
| Número | Identificador automático |
| Data início planejada | Início previsto |
| Data término planejada | Fim previsto |
| Descrição | Problema e objetivo |

---

## 📄 Seção: Detalhes

| Campo | Descrição |
|------|----------|
| Categoria | Estratégico/Operacional |
| Tipo | Ex: Épico de EAP |
| Portfólio | Área responsável |
| Prioridade | Nível definido |
| Programa | Programa associado |
| Empresa | Entidade associada |
| Classe de investimento | Execução/Mudança |
| Departamento | Área responsável |
| Tipo de investimento | Categoria do investimento |
| Gerente de demandas | Responsável |

---

## 📄 Caso de Negócio

- Prioridade estratégica
- Objetivo primário
- Entrega de valor
- Escopo
- Considerações
- Pontos de atenção

---

## 📄 Dados da Avaliação

| Campo | Descrição |
|------|----------|
| Impacto | Nível de impacto |
| Tamanho estimado | Complexidade |
| Risco | Nível de risco |
| Pontuação | Score automático |
| Valor | Valor de negócio |
| Avaliação necessária | Flag de avaliação |

---

## 📄 Anotações

- Lista de observação
- Lista de trabalho
- Anotações internas

---

## 📄 Preferências

- Fechar demanda automaticamente
- Cálculo do projeto

---

## 📄 Associações de IA

- Produto
- Sistemas de IA afetados

---

## 🔄 Fluxo de Trabalho

### Estados:
- Rascunho
- Enviado
- Examinando
- Qualificado
- Aprovada
- Concluído
- Cancelado
- Adiado

---

## 📊 Descrição dos Estados

| Estado | Descrição |
|--------|----------|
| Rascunho | Inicial |
| Enviado | Refinamento |
| Examinando | Avaliação |
| Qualificado | Pronto para decisão |
| Aprovada | Pode ser executada |
| Concluído | Finalizada |
| Cancelado | Encerrada |
| Adiado | Pausada |

---

## ✅ Resumo

- Demanda = definição estratégica
- Base para projetos
- Segue fluxo estruturado
- Passa por avaliação e aprovação

---

**Fim do documento**

# ServiceNow – Épico (Módulo SPM)

**Fonte:** EBOOK_SERVICENOW_EPICO
**Data:** Junho/2026

---

## 🎯 Visão Geral

Documento descreve o conceito de Épico no ServiceNow, incluindo estrutura, seções, fluxo de trabalho e pontos de atenção.

---

## 📌 O que é Épico?

O Épico representa a **execução** de um grande objetivo de negócio ou necessidade estratégica de uma **Demanda aprovada**.

### ✅ Deve conter:
- Vínculo com uma demanda aprovada
- Comunidade/Box responsável pelo desenvolvimento

### 📍 Abrangência:
- Pode ser executado por 1 comunidade/box
- Pode envolver um ou mais squads

### ❌ Não corresponde a:
- Atividade pequena
- Tarefa técnica
- Entrega rápida

📎 **Observação:**
- Após aprovação, a demanda pode ser convertida em épico

---

## 👥 Quem cria Épicos?

- Líder Missão
- Líder Negócios
- Líder TI
- Arquiteto Empresarial

---

## 🧩 Seções do Work Item

### Seções:
- Geral (Épico)
- WSJF
- Datas
- Detalhes

### Abas:
- Funcionalidades
- Histórias

---

## 📄 Seção: Geral

| Campo | Descrição |
|------|----------|
| Nome | Identificação do épico |
| Habilitador | Indica apoio técnico/estrutural |
| Bloqueado | Indica impedimento |
| Motivo do bloqueio | Justificativa do bloqueio |
| Descrição | Objetivo e escopo |
| Prioridade | Nível de importância |
| Responsável | Responsável pelo épico |
| Estado | Fase atual |
| % conclusão | Progresso |
| Equipe | Time responsável |

### Campos adicionais

| Campo | Descrição |
|------|----------|
| Iteração ágil | Ciclo associado |
| Aprimoramento do produto | Melhoria relacionada |
| Metodologia | SAFe (automático) |
| Recurso do produto | Produto impactado |
| Objetivo primário | Objetivo principal |
| Tamanho estimado | Esforço estimado |
| Anotações de trabalho | Comunicação interna |

---

## 📊 Seção: WSJF

| Campo | Descrição |
|------|----------|
| Pontuação WSJF | Prioridade baseada em valor/esforço |
| Valor comercial do usuário | Valor percebido |
| Prioridade de tempo | Urgência |
| Redução de risco | Impacto em riscos |
| Tamanho do trabalho | Esforço necessário |

---

## 📅 Seção: Datas

| Campo | Descrição |
|------|----------|
| Data início planejada | Planejamento inicial |
| Data término planejada | Previsão de conclusão |
| Data início aprovada | Após validação |
| Data término aprovada | Após aprovação |
| Data início real | Execução real |
| Data término real | Finalização real |

---

## 📄 Seção: Detalhes

| Campo | Descrição |
|------|----------|
| Capacidades de negócios | Capacidades impactadas |
| Aplicação de negócios | Sistema principal |
| Outras aplicações | Sistemas impactados |

---

## 🔄 Fluxo de Trabalho

### Estados:
- Funil
- Revisão
- Análise
- Backlog
- Implementação
- Concluído

---

## 📊 Descrição dos Estados

| Estado | Descrição |
|--------|----------|
| Funil | Ideias iniciais |
| Revisão | Refinamento e estimativas |
| Análise | Avaliação detalhada |
| Backlog | Priorizado para execução |
| Implementação | Execução do épico |
| Concluído | Finalizado |

---

## ⚠️ Pontos de Atenção

- Após aprovação, a demanda pode virar épico
- É possível vincular funcionalidades e histórias ao épico

---

## ✅ Resumo

- Épico = execução de demanda estratégica
- Estruturado por seções e governança
- Segue fluxo de priorização (WSJF)
- Conecta estratégia → execução ágil

---

**Fim do documento**

# ServiceNow – Funcionalidade (Módulo SPM)

**Fonte:** EBOOK_SERVICENOW_FUNCIONALIDADE.pdf
**Data:** Junho/2026

---

## 🎯 Visão Geral

Documento que descreve o conceito, criação, estrutura e fluxo de trabalho de Funcionalidades no ServiceNow (SPM).

---

## 📌 O que é Funcionalidade?

A funcionalidade representa uma **entrega de valor para o negócio**, dimensionada para ser entregue por um time dentro de um **PI (Planning Interval)**.

### ✅ Deve conter:
- Descrição detalhada da entrega de valor
- PI no qual será desenvolvida e entregue

### 📍 Abrangência:
- Deve ser construída em uma comunidade
- Deve ser entregue em até 3 meses (dentro do trimestre)

### ❌ Não corresponde a:
- Um grande objetivo de negócio

---

## 👥 Quem pode criar Funcionalidade?

- Líder Missão
- Líder Negócios
- Líder TI
- Agente de Solução
- Agile Master
- Dono do Produto
- Líder Ágil
- Líder Solução

---

## 🧩 Seções do Work Item

### Seções:
- Geral (Funcionalidade)
- WSJF
- Datas
- Detalhes

### Abas:
- Histórias

---

## 📄 Seção: Geral

| Campo | Descrição |
|------|----------|
| Nome | Identificação da funcionalidade |
| Habilitador | Indica suporte técnico |
| Bloqueados | Indica impedimentos |
| Motivo de bloqueio | Detalhe do impedimento |
| Descrição | Contexto e objetivo |
| Item de trabalho primário | Demanda vinculada |
| Prioridade | Nível de prioridade |
| Responsável | Responsável pela funcionalidade |
| Estado | Fase atual |
| Equipe | Time responsável |

### Campos adicionais

| Campo | Descrição |
|------|----------|
| % conclusão | Progresso |
| Objetivo primário | Objetivo principal |
| Tamanho estimado | Esforço |
| Aprimoramento do produto | Evolução vinculada |
| Anotações de trabalho | Comunicação interna |

---

## 📊 Seção: WSJF

| Campo | Descrição |
|------|----------|
| Pontuação WSJF | Prioridade valor/esforço |
| Valor comercial do usuário | Valor percebido |
| Prioridade de tempo | Urgência |
| Redução de risco | Impacto em risco |
| Tamanho do trabalho | Esforço |

---

## 📅 Seção: Datas

| Campo | Descrição |
|------|----------|
| Data início planejada | Planejamento inicial |
| Data término planejada | Previsão |
| Data início aprovada | Após aprovação |
| Data término aprovada | Após validação |
| Data início real | Execução |
| Data término real | Finalização |

---

## 📄 Seção: Detalhes

| Campo | Descrição |
|------|----------|
| Capacidades de negócios | Áreas atendidas |
| Aplicação de negócios | Sistema principal |
| Outras aplicações impactadas | Sistemas afetados |

---

## 🔄 Fluxo de Trabalho

### Estados:
- Backlog
- Implementação
- Concluído
- Cancelado

---

## 📊 Descrição dos Estados

| Estado | Descrição |
|--------|----------|
| Backlog | Pronta para execução |
| Implementação | Em desenvolvimento e validação |
| Concluído | Entregue e disponibilizada |
| Cancelado | Encerrada por decisão estratégica |

---

## ✅ Resumo

- Funcionalidade = entrega de valor no PI
- Executada por um time
- Relacionada à Demanda/Épico
- Governada por WSJF

---

**Fim do documento**

# ServiceNow – Histórias (Módulo SPM)

**Fonte:** EBOOK_SERVICENOW_HISTÓRIAS
**Data:** Junho/2026

---

## 🎯 Visão Geral

Documento que descreve o conceito, criação, estrutura e fluxo de trabalho de Histórias no ServiceNow (SPM).

---

## 📌 O que é História?

Histórias são **unidades de trabalho pequenas e gerenciáveis**, representando partes de uma funcionalidade sob a perspectiva do usuário.

### ✅ Deve conter:
- Explicação detalhada do item
- Contexto e finalidade
- Critérios de aceitação

### 📍 Abrangência:
- Construída por comunidade/squad
- Deve caber em uma única sprint (2 a 4 semanas)

### ❌ Não corresponde a:
- Requisito formal
- Documento detalhado
- Documentação de sistema

---

## 🧩 Tipos de Histórias

- Manutenção Evolutiva
- Manutenção Perfectiva
- Manutenção Adaptativa
- Inovações em Tecnologia / Negócio
- Desenvolvimento de Novos Sistemas
- Serviço Técnico Especializado

### 🔎 Serviço Técnico Especializado
- Serviços pontuais de suporte
- Não envolve mudança de regra de negócio
- Não representa desenvolvimento de software

---

## 👥 Quem cria Histórias?

- Dono do Produto
- Desenvolvedor Backend
- Desenvolvedor Frontend
- Desenvolvedor Mobile
- Agile Master
- Engenheiro de Qualidade
- Scrum Master
- Tester Caixa
- Tester FSW
- Time
- UX Designer

---

## 🧩 Seções do Work Item

### Seção:
- Geral (História)

### Abas:
- Tarefas de Scrum
- Defeitos

---

## 📄 Seção: Geral

| Campo | Descrição |
|------|----------|
| Descrição resumida | Título da história |
| Tipo | Classificação da história |
| Critérios CAPEX | Enquadramento de investimento |
| Justificativa | Fundamentação da demanda |
| IC afetado | Item impactado |
| Bloqueado | Indica impedimento |
| Motivo do bloqueio | Justificativa |
| Descrição | Detalhamento completo |
| Critério de aceitação | Condições de conclusão |

### Campos adicionais

| Campo | Descrição |
|------|----------|
| Item de trabalho primário | Vínculo com Épico/Funcionalidade |
| Prioridade | Nível de importância |
| Interação ágil | Sprint/PI |
| Estado | Status atual |
| Atribuído a | Responsável |
| % conclusão | Progresso |
| Equipe | Squad responsável |
| Pontos | Estimativa ágil |
| Anotações de trabalho | Histórico |

---

## 🔄 Fluxo de Trabalho

### Estados:
- Rascunho
- Preparado
- Trabalho em andamento
- Pronto para testes
- Testando
- Pronto
- Concluído
- Cancelado

---

## 📊 Descrição dos Estados

| Estado | Descrição |
|--------|----------|
| Rascunho | Criação inicial |
| Preparado | Pronto para desenvolvimento |
| Trabalho em andamento | Em execução |
| Pronto para testes | Desenvolvimento concluído |
| Testando | Validação |
| Pronto | Validado |
| Concluído | Finalizado |
| Cancelado | Encerrado |

---

## ✅ Resumo

- História = unidade ágil de execução
- Representa valor incremental
- Deve caber em uma sprint
- Possui critérios de aceitação obrigatórios

---

**Fim do documento**

# EBOOK_SERVICENOW_HISTÓRIAS.pdf

## 📄 Informações do Documento

**Format**: PDF 1.7

**Title**: Apresentação do PowerPoint

**Author**: Daniel Miranda Cruz

**Creator**: Microsoft® PowerPoint® para Microsoft 365

**Producer**: Microsoft® PowerPoint® para Microsoft 365

**Creationdate**: D:20260617165137-03'00'

**Moddate**: D:20260617165137-03'00'

**Total Paginas**: 19

**Pode Copiar**: True

**Versao Pdf**: Desconhecida

---

# Página 1

#EXTERNO.CONFIDENCIAL
caixa.GOV.BR
JUNHO 2026 | GECPA
HISTÓRIAS
ServiceNow módulo SPM
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 2

#EXTERNO.CONFIDENCIAL
2
Quem Cria?
Papeis e funções que 
podem criar
O que é?
Conceito e exemplo
Fluxo de Trabalho
Detalhamento dos estados
Seção / Aba
Seções, abas e atributos do 
workitem
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 3

#EXTERNO.CONFIDENCIAL
3
O QUE É HISTÓRIA?
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 4

#EXTERNO.CONFIDENCIAL
4
O que é História?
#INTERNO.TODOS
Unidades de trabalho pequenas e gerenciáveis de uma pequena parte da funcionalidade desejada escritas 
da perspectiva do usuário. 
Deve conter:
• Uma explicação mais detalhada do que o item de backlog se trata, incluindo informações sobre o 
contexto e finalidade. 
• Critérios de aceitação: Uma lista de condições direcionadoras que favorecem a colaboração em relação 
ao desenvolvimento do escopo do item 
Abrangência:
• DEVE ser construída em uma comunidade / squad;
• DEVE caber a construção em uma única sprint (2 ou 4 semanas)
Não corresponde a:
• Um requisito.
• Uma lista exaustiva/detalhada.
• Uma documentação de sistema.



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 5

#EXTERNO.CONFIDENCIAL
5
História: tipos
#INTERNO.TODOS
As Histórias serão dos tipos:
• Manutenção Evolutiva
• Manutenção Perfectiva,
• Manutenção Adaptativa,
• Inovações em Tecnologia / Negócio,
• Desenvolvimento de Novos Sistemas,
• Serviço Técnico Especializado*
As Histórias do tipo Serviços Técnico Especializados são Serviços pontuais (esporádico) de apoio e suporte que não envolve
alterações de regras de negócio ou criação de novas funcionalidade.
Deve conter:
• Determinação do tipo de serviço a ser executado
• Uma explicação do que o serviço se trata, incluindo informações sobre o contexto e finalidade 
Abrangência:
• DEVE ser construída em uma comunidade / squad;
O que Não é:
•
Não é uma tarefa ligada a construção ou implantação de software
*



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 6

#EXTERNO.CONFIDENCIAL
Como
cliente
devo
ter
o
preenchimento do formulário salvo
automaticamente, para não perder
os
dados
inseridos
em
caso
de
interrupções ou quedas de conexão.
Critérios de Aceite
Dado que o cliente está preenchendo
o formulário de empréstimo
Quando houver interrupção ou saída
inesperada do sistema
Então os dados preenchidos devem
ser
recuperados
automaticamente
ao retornar ao formulário
Salvamento automático 
do formulário
Como
cliente
devo
receber
notificações sobre o status da minha
solicitação de empréstimo em tempo
real, para acompanhar o andamento
do processo sem precisar acessar o
sistema constantemente.
Critérios de Aceite
Dado que a solicitação foi enviada
Quando
houver
atualização
no
status da proposta
Então o cliente deverá receber uma
notificação automática informando
a mudança
Notificação de Status 
da Solicitação
6
Exemplos de História
#INTERNO.TODOS
Como cliente devo Preencher um
formulário
de
solicitação
de
empréstimo
com
apenas
as
informações essenciais, para reduzir
o tempo necessário para concluir o
processo.
Critérios de Aceite
Dado
que
o
cliente
está
na
plataforma de crédito
Quando
selecionar
a
opção
de
solicitar um empréstimo
Então
deverá
ser
direcionado
automaticamente para o formulário
de solicitação de empréstimo
Simplificar Formulário 
de solicitação de 
empréstimo online



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 7

#EXTERNO.CONFIDENCIAL
7
Exemplos de História*
#INTERNO.TODOS
Executar
análises
técnicas
nos
dados
inseridos
pelos
clientes
durante a solicitação de empréstimo,
a fim de identificar inconsistências,
padrões
de
erro
e
falhas
de
integração.
Essa
análise
contribui
para melhorias na qualidade dos
dados
e
maior
assertividade
nas
validações.
Análise de 
inconsistências em 
dados de cadastro
Realizar
o
monitoramento
contínuo do desempenho do processo
de solicitação de empréstimo online,
identificando
tempos
de
resposta,
gargalos
e
pontos
de
falha.
O
objetivo
é
garantir
maior
estabilidade,
disponibilidade
e
eficiência do serviço digital..
Monitoramento de 
performance do fluxo 
de empréstimo online
Gerar relatório a partir da base
histórica em produção com o tempo
de preenchimento do formulário e o
tempo de resposta de cada pergunta
de solicitação de empréstimo online.
Relatório com tempo de 
preenchimento do 
formulário de 
solicitação de 
empréstimo online
* Do tipo Serviços Técnico Especializados



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 8

#EXTERNO.CONFIDENCIAL
8
QUEM CRIA?
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 9

#EXTERNO.CONFIDENCIAL
9
Quem cria Histórias?
#INTERNO.TODOS
Os perfis que podem criar histórias são:
• Dono Produto
• Desenvolvedor Backend
• Desenvolvedor Frontend
• Desenvolvedor Mobile
• Agile Master
• Engenheiro Qualidade
• Scrum Master
• Tester Caixa
• Tester FSW
• Time
• UX Designer



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 10

#EXTERNO.CONFIDENCIAL
10
#INTERNO.TODOS
SEÇÃO / ABA



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 11

#EXTERNO.CONFIDENCIAL
11
Lista de Seções
• Geral (História)
Além das Seções acima, possui as abas “Tarefas de Scrum” e “Defeitos”, que demonstram os itens que estão
relacionados às histórias.



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 12

#EXTERNO.CONFIDENCIAL
12
SEÇÃO - Geral
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 13

#EXTERNO.CONFIDENCIAL
13
SEÇÃO - Geral
#INTERNO.TODOS
Descrição
Campo
Título breve que identifica a história.
Descrição resumida*
Classificação da história, indicando sua natureza (Manutenção Evolutiva, Manutenção 
Perfectiva, Manutenção Adaptativa, Inovações em Tecnologia / Negócio, Desenvolvimento 
de Novos Sistemas, Serviço Técnico Especializado).
Tipo*
Campo de múltiplas seleções com os critérios que justificam o enquadramento da demanda 
como investimento de capital . Exibido apenas para os tipos: Manutenção Evolutiva, 
Desenvolvimento de Novo Sistema ou Inovações em Tecnologia / Negócio.
Critérios atendidos para o 
enquadramento da 
demanda em investimento 
(CAPEX)*
Fundamentação detalhada para execução da demanda, incluindo benefícios esperados e 
alinhamento estratégico. Exibido apenas para os tipos: Manutenção Evolutiva, 
Desenvolvimento de Novo Sistema ou Inovações em Tecnologia / Negócio
Justificativa*
Item de configuração impactado pela implementação da história.
IC afetado
Indicador que define se a história está impedida de avançar no fluxo.
Bloqueado
Descrição da razão pela qual a história está bloqueada. Exibido apenas quando o campo 
Bloqueado está ativo.
Motivo do bloqueio*
Detalhamento completo da necessidade, incluindo contexto e escopo funcional.
Descrição
Condições que devem ser atendidas para considerar a concluída como concluída com 
sucesso. Obrigatório a partir do estado “Preparado”
Critério de aceitação*
“*” Representa preenchimento obrigatório



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 14

#EXTERNO.CONFIDENCIAL
14
SEÇÃO - Geral
#INTERNO.TODOS
Descrição
Campo
Registro principal (Épico ou Funcionalidade) ao qual a história está vinculada.
Item de trabalho primário
Nível de importância da demanda em relação às demais.
Prioridade
Sprint ou PI ao qual a história está associada.
Interação ágil empresarial
Situação atual da história dentro do fluxo de trabalho.
Estado
Usuário responsável pela execução ou acompanhamento da história.
Atribuído a
Indica o progresso da história em termos percentuais.
Porcentagem de conclusão
Squad responsável pela execução da história.
Equipe*
Estimativa de esforço da demanda baseada em pontuação ági.
Pontos
Registro de comentários, atualizações e histórico da execução.
Anotações de trabalho
“*” Representa preenchimento obrigatório



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 15

#EXTERNO.CONFIDENCIAL
15
#INTERNO.TODOS
FLUXO DE TRABALHO



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 16

#EXTERNO.CONFIDENCIAL
16
Fluxo de Trabalho da História
#INTERNO.TODOS
CANCELADA
RASCUNHO
PREPARADO
TRABALHO EM 
ANDAMENTO
PRONTO
PRONTO PARA 
TESTES
TESTANDO
CONCLUÍDO



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 17

#EXTERNO.CONFIDENCIAL
17
Fluxo de Trabalho - Estados
#INTERNO.TODOS
Ações executadas no estado
Descrição
Nome
Editar, Completar informações, 
Cancelar, Avançar para Preparado
Estado inicial da história, onde as informações ainda estão sendo criadas e 
estruturadas.
Rascunho
Revisar, Ajustar, Iniciar trabalho, 
Cancelar
A história está detalhada, com escopo definido e pronta para iniciar o 
desenvolvimento.
Preparado
Atualizar progresso, Pausar, Enviar para 
Pronto para Testes, Cancelar
A história está sendo desenvolvida conforme os requisitos definidos.
Trabalho em 
Andamento
Enviar para Testando, Ajustar, Cancelar
A implementação foi concluída e está disponível para validação.
Pronto para 
testes
Aprovar, Retornar para 
desenvolvimento, Avançar para Pronto, 
Cancelar
A história está em fase de testes para validação dos critérios de aceitação.
Testando
Concluir, Reabrir, Cancelar
A história foi validada com sucesso nos testes e está pronta para finalização a 
partir da análise do Gestor.
Pronto
N/A
Estado final indicando que a história foi totalmente finalizada e entregue.
Concluído
N/A
Estado final indicando que a história foi interrompida e não será concluída.
Cancelado



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 18

#EXTERNO.CONFIDENCIAL
18
Fluxo de Trabalho - Estados
#INTERNO.TODOS
Alçada
Nome
Líder de Equipe, Membro de Equipe
Rascunho
Líder de Equipe, Membro de Equipe
Preparado
Líder de Equipe, Membro de Equipe
Trabalho em 
Andamento
Líder de Equipe, Membro de Equipe
Pronto para 
testes
Líder de Equipe, Membro de Equipe
Testando
Líder de Equipe, Membro de Equipe
Pronto
Líder de Equipe, Membro de Equipe
Concluído
Líder de Equipe, Membro de Equipe
Cancelado



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 19

#EXTERNO.CONFIDENCIAL
caixa.GOV.BR
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---


# ServiceNow – Workitems (Módulo SPM)

**Fonte:** EBOOK_WORKITENS_SERVICENOW
**Data:** Junho/2026

---

## 🎯 Visão Geral

Este material apresenta a estrutura de workitems no ServiceNow SPM utilizados na CAIXA, incluindo:
- Demanda
- Épico
- Funcionalidade
- História
- Tarefa de Scrum
- Defeito

---

## 📌 O que é ServiceNow?

Plataforma em nuvem que automatiza workflows corporativos e centraliza a gestão de serviços digitais, promovendo integração, eficiência e uso de inteligência artificial.

---

## 📌 O que é SPM?

O Strategic Portfolio Management (SPM) permite alinhar o trabalho à estratégia organizacional, oferecendo:
- Gestão centralizada de portfólio
- Visibilidade de recursos, prazos e resultados
- Apoio à tomada de decisão baseada em dados

---

## 📌 O que é SPW?

O Strategic Planning Workspace (SPW) é o ambiente do SPM que:
- Organiza o planejamento estratégico
- Vai da ideação até a execução
- Gerencia backlog e demandas

---

## 📌 O que é EAP?

Enterprise Agile Planning (EAP):
- Apoia a adoção ágil
- Integra times e planejamento
- Organiza entregas por squads

---

## 📌 O que é Workitem?

Um workitem é uma unidade de trabalho que pode ser:
- Atribuída
- Priorizada
- Acompanhada
- Concluída

### Tipos na CAIXA:
- Demanda
- Épico
- Funcionalidade
- História
- Tarefa de Scrum
- Defeito

---

## 🧩 Estrutura dos Workitems

Hierarquia:

- Demanda → Épico → Funcionalidade → História
- História → Tarefa de Scrum
- História → Defeitos

### Relações:
- Demanda → 1 Épico
- Épico → várias Funcionalidades
- Funcionalidade → várias Histórias
- História → várias Tarefas/Defeitos

---

## 📄 Demanda

### Definição
Solicitação formal para planejar e executar um trabalho.

### Características
- Visa valor estratégico
- Base para criação do Épico

### Fluxo
Rascunho → Enviado → Examinando → Qualificado → Aprovada → Concluído → Rejeitada

---

## 📄 Épico

### Definição
Execução de um grande objetivo de negócio derivado de uma demanda.

### Características
- Pai das funcionalidades
- Vinculado a demanda

### Fluxo
Funil → Revisão → Análise → Backlog → Implementação → Concluído

---

## 📄 Funcionalidade

### Definição
Entrega de valor para o negócio dentro de um PI.

### Características
- Executada por time
- Filha do Épico

### Fluxo
Backlog → Implementação → Concluído → Cancelado

---

## 📄 História

### Definição
Unidade pequena de trabalho orientada ao usuário.

### Características
- Deve caber em uma sprint
- Possui critérios de aceitação

### Fluxo
Rascunho → Preparado → Trabalho em andamento → Pronto para teste → Testando → Pronto → Concluído → Cancelado

---

## 📄 Tarefa de Scrum

### Definição
Atividades técnicas para execução da história.

### Características
- Executada por um responsável
- Não gera valor isolado

### Fluxo
Rascunho → Preparado → Trabalho em andamento → Concluído → Cancelado

---

## 📄 Defeito

### Definição
Registro de falhas ou inconsistências no sistema.

### Características
- Relacionado a testes
- Pode estar vinculado à história

### Fluxo
Rascunho → Escopo → Aguardando aprovação → Trabalho em andamento → Testes → Implantação → Encerrado → Cancelado → Em espera

---

## ✅ Resumo Geral

- Workitems estruturam o trabalho no SPM
- Permitem rastreabilidade e governança
- Seguem hierarquia clara (estratégia → execução)
- Garantem alinhamento com objetivos da CAIXA

---

**Fim do documento**

# EBOOK_WORKITENS_SERVICENOW.pdf

## 📄 Informações do Documento

**Format**: PDF 1.7

**Title**: Mapeamento GID

**Author**: Maria Clara Oliveira Fortes

**Creator**: Microsoft® PowerPoint® para Microsoft 365

**Producer**: Microsoft® PowerPoint® para Microsoft 365

**Creationdate**: D:20260618132008-03'00'

**Moddate**: D:20260618132008-03'00'

**Total Paginas**: 31

**Pode Copiar**: True

**Versao Pdf**: Desconhecida

---

# Página 1

#EXTERNO.CONFIDENCIAL
caixa.GOV.BR
JUNHO 2026 | GECPA
WORKITEMS
ServiceNow módulo SPM
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 2

#EXTERNO.CONFIDENCIAL
2
#INTERNO.TODOS
Demanda
Conceito e Exemplo
Visão Geral
Definições e estrutura 
usada na CAIXA
Épico
Conceito e Exemplo
Funcionalidade
Conceito e Exemplo
Tarefa de Scrum
Conceito e Exemplo
História
Conceito e Exemplo
Defeito
Conceito e Exemplo
Exemplo
Exemplo de uma 
estruturação completa



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 3

#EXTERNO.CONFIDENCIAL
3
#INTERNO.TODOS
VISÃO GERAL



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 4

#EXTERNO.CONFIDENCIAL
4
O que é ServiceNow?
A ServiceNow é uma plataforma em nuvem que automatiza workflows corporativos e centraliza a gestão
de serviços digitais em um único ambiente. Ela conecta áreas como TI, atendimento ao cliente e operações,
permitindo padronizar processos, integrar sistemas e aumentar a eficiência com apoio de dados e inteligência
artificial.
Na CAIXA, a plataforma é utilizada para apoiar a modernização da gestão, promovendo automação,
integração entre tecnologia e negócio e maior eficiência, governança, transparência e agilidade nas operações.
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 5

#EXTERNO.CONFIDENCIAL
5
O que é o SPM?
O Strategic Portfolio Management (SPM) é uma solução da plataforma ServiceNow que permite alinhar
o trabalho à estratégia organizacional, apoiando a priorização e a execução com foco em geração de valor.
Com o módulo SPM é possível gerenciar o portfólio de forma centralizada, proporcionando visibilidade
integrada de recursos, prazos, status e resultados. Essa abordagem facilita o planejamento integrado, o
monitoramento contínuo de indicadores de desempenho(KPIs) e a tomada de decisões baseada em dados
confiáveis.
Dessa forma, a solução contribui para a otimização de investimentos, a integração entre as áreas e a
garantia de que todas as iniciativas estejam alinhadas aos objetivos do negócio.
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 6

#EXTERNO.CONFIDENCIAL
6
O que é o SPW?
O Strategic Planning Workspace (SPW), em português Espaço de Planejamento Estratégico, é um
ambiente do Strategic Portfolio Management (SPM) que apoia o fluxo completo de planejamento, desde a
ideação até a execução.
Este ambiente organiza e estrutura as etapas do processo, permitindo o gerenciamento desde a descoberta
de iniciativas, o intake (entrada de demandas) até a gestão do backlog. Dessa forma, proporciona maior
alinhamento entre estratégia e execução, além de oferecer visibilidade e controle ao longo de todo o ciclo de
planejamento.
Acesso:
• ServiceNow > Espaços > Espaço de planejamento estratégico
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 7

#EXTERNO.CONFIDENCIAL
7
SPW: Visão
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 8

#EXTERNO.CONFIDENCIAL
8
O que é o EAP?
O Enterprise Agile Planning (EAP), em português Planejamento Ágil Empresarial, é um recurso do
Strategic Planning Workspace (SPW), dentro do Strategic Portfolio Management (SPM), que apoia a adoção e
a escalabilidade de práticas ágeis na organização.
Ele facilita a comunicação e a colaboração entre equipes, promovendo a coordenação entre diferentes times
por meio de um workspace intuitivo. Com configurações flexíveis de trabalho e estrutura de equipes, o EAP
permite alinhar entregas ágeis à estratégia do negócio, garantindo maior organização, visibilidade e eficiência
na execução das iniciativas.
É na EAP que será possível visualizar as equipes (Comunidades/Boxes) e seus times com todo o trabalho
previsto e planejado para atendimento.
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 9

#EXTERNO.CONFIDENCIAL
9
EAP: Estrutura dos Times
#INTERNO.TODOS
BOX
Épico
BOX
Missão
Squad
NÍVEL DOS 
TIMES
NÍVEL DOS 
WORK ITENS
CALENDÁRIO
Funcionalidades
Sprint
PI
História / 
Defeitos
Planejamento 
Anual
Épico
Comunidade
Squad
NÍVEL DOS 
TIMES
NÍVEL DOS 
WORK ITENS
CALENDÁRIO
Funcionalidades
Sprint
PI
História / 
Defeitos
Planejamento 
Anual
Comunidade
* Fora do EAP
Capítulos    
Centros de Excelência    
Célula Especializada



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 10

#EXTERNO.CONFIDENCIAL
10
EAP: Visão
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 11

#EXTERNO.CONFIDENCIAL
11
O que é o Workitem?
Uma unidade de trabalho que precisa ser realizada dentro do contexto . É basicamente um trabalho ou uma
parcela de trabalho que pode ser atribuída a uma comunidade, a uma squad ou a uma pessoa, acompanhada,
priorizada e concluída dentro do sistema ServiceNow.
Em termos simples, um workitem no ServiceNow é uma maneira de organizar e gerenciar o trabalho a ser
feito de forma colaborativa e eficiente.
Na Caixa temos os seguintes workitens:
•
Demandas
•
Épicos
•
Funcionalidades
•
Histórias
•
Tarefas de Scrum
•
Defeitos
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 12

#EXTERNO.CONFIDENCIAL
Workitems: Estrutura
#INTERNO.TODOS
Composição da equipe e 
entregas
Visão estratégica e 
balanceada do portfólio
Organização do 
trabalho no dia a dia
Dica
Cada nível agrega valor e
detalhamento, garantindo
entregas alinhadas e de
qualidade.
CONTEXTO 
ORGANIZACIONAL
LEGENDA
SAFE 
PORTFÓLIO
ART
TIME
Histórias do tipo serviços
podem ser avulsas.
Observação
Defeitos Produtivos podem 
não ter vínculos a histórias.
Observação
Tarefa de Scrum
Passos necessários para 
concluir a história
Defeitos
Problemas encontrados 
que impactam o trabalho
Uma História 
pode gerar várias 
Tarefas Scrum.
Uma História 
pode gerar vários 
Defeitos.
Execução de um grande objetivo 
empresarial
ÉPICO
Épico é único para 
cada Demanda.
Entregas de valor para o negócio
FUNCIONALIDADES
Pedido formal para planejar e 
executar um trabalho
DEMANDA
1
Um Épico pode gerar 
várias Funcionalidades.
1:N ...
...
1:N ...
...
Uma Funcionalidade pode 
gerar várias Histórias.
1:N ...
...
Pequenas entregas com valor
HISTÓRIA
Relação de geração
1
1:N
Relação de 1 para 1
Relação de 1 para vários
12



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 13

#EXTERNO.CONFIDENCIAL
13
#INTERNO.TODOS
DEMANDA



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 14

#EXTERNO.CONFIDENCIAL
14
#INTERNO.TODOS
DEMANDA
RASCUNHO
Você sabe o que é uma
DEMANDA?
Quem cria:
Onde cria:
Como criar:
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Exemplo:
Fluxo:
Solicitação formal para que um 
trabalho seja planejado, financiado e 
potencialmente executado.
•
Líder Missão
•
Líder Negócios
•
Líder TI
•
Arquiteto Empresarial
•
Negócio Estratégico
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > Demandas (Funil)
•
Pode ser construída ou executada por 1 comunidade;
•
Pode ser construída ou executada por 1 ou mais Squads;
•
Descrição clara e objetiva, com a proposta de valor
(benefícios que são gerados), qual o problema que ela
resolve e para quem vamos entregar este benefício.
•
Deve estar associada a um ou mais objetivo estratégico 
da CAIXA.
•
Convertido em um Épico
•
Uma funcionalidade ou módulo de sistema;
•
Uma nova sigla de sistema;
•
Um guarda-chuva de funcionalidades avulsas;
•
Um item de execução, pois sua natureza é de 
definição/preparação;
Melhorar
a
eficiência
no
processo
de
concessão de crédito online. Essa necessidade
surge
da
demanda
por
um
processo
de
contratação
mais
ágil,
automatizado
e
integrado,
capaz
de
lidar
com
um
volume
crescente de solicitações de crédito e de oferecer
uma experiência mais fluida e personalizada aos
clientes.
Objetivo Estratégico:
Gerar
valor
nos
relacionamentos
ofertando
soluções inovadoras em negócios, tecnologia e
ambiência
Modernização da Plataforma 
de Credito Online
ENVIADO
EXAMINANDO
QUALIFICADO
APROVADA
CONCLUÍDO
REJEITADA
* Validar informações nos ebooks dos workitens



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 15

#EXTERNO.CONFIDENCIAL
15
#INTERNO.TODOS
ÉPICO



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 16

#EXTERNO.CONFIDENCIAL
ÉPICO
#INTERNO.TODOS
16
Você sabe o que é uma
ÉPICO?
Quem cria:
Onde cria:
Como criar:
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Observação:
Representa a execução de um grande 
objetivo de negócio ou necessidade 
estratégica de uma Demanda aprovada
•
Líder Missão
•
Líder Negócios
•
Líder TI
•
Arquiteto Empresarial
•
A partir da aprovação da demanda, será 
solicitado a criação do épico
•
SPW > Demandas (Funil) 
•
Abrir demanda aprovada
•
Clicar em “Criar épico de EAP” 
•
Pode ser construída ou executada por 1 comunidade/box;
•
Pode ser construída ou executada por 1 ou mais Squads
•
Vínculo com uma demanda aprovada
•
Comunidade/Box responsável pelo desenvolvimento
•
Com a demanda aprovada que lhe deu origem
•
Pai das Funcionalidades
•
Uma atividade pequena 
•
Uma tarefa técnica
•
Uma entrega rápida 
Após a avaliação e aprovação, 
a demanda está apta a ser 
convertida e executada em um 
épico.
Fluxo:
FUNIL
REVISÃO
ANÁLISE
BACKLOG
IMPLEMENTAÇÃO
CONCLUÍDO
* Validar informações nos ebooks dos workitens



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 17

#EXTERNO.CONFIDENCIAL
17
#INTERNO.TODOS
FUNCIONALIDADE



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 18

#EXTERNO.CONFIDENCIAL
FUNCIONALIDADE
#INTERNO.TODOS
18
Você sabe o que é uma
FUNCIONALIDADE?
Quem cria
Onde cria
Como criar:
Deve conter:
Abrangência
Vínculo com outros itens
Não corresponde a
Exemplo:
Representa uma entrega de valor para o
negócio
e
é
dimensionada
para
ser
entregue por um Time dentro de um PI.
•
Líder Missão
•
Líder Negócios
•
Líder TI
•
Agente de Solução
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > EAP > Comunidade
•
SPW > EAP > Missão da Box
•
DEVE ser construída em uma comunidade;
•
DEVE desenvolvida em até 3 meses (dentro do trimestre)
•
Descrição detalhada com a entrega de valor que se 
espera. 
•
A “Planning Interval” na qual será desenvolvida e 
entregue
•
Filha do Épico de origem
•
Pai das Histórias
•
Relacionado ou Dependente com outras funcionalidades
•
Um grande objetivo de negócio 
Disponibilizar um fluxo digital simplificado para
solicitação
de
empréstimos,
reduzindo
etapas,
eliminando
informações
desnecessárias
e
proporcionando uma experiência rápida e intuitiva
ao cliente.
Fluxo Simplificado para Solicitação 
de Empréstimo Online
Fluxo:
BACKLOG
IMPLEMENTAÇÃO
CONCLUÍDO
CANCELADO
* Validar informações nos ebooks dos workitens
•
Agile Master
•
Dono Produto
•
Líder Ágil
•
Líder Solução



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 19

#EXTERNO.CONFIDENCIAL
19
#INTERNO.TODOS
HISTÓRIA



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 20

#EXTERNO.CONFIDENCIAL
#INTERNO.TODOS
HISTÓRIA
#INTERNO.TODOS
20
Você sabe o que é uma
HISTÓRIA?
Quem cria:
Onde cria:
Como cria:
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Exemplo:
Unidades de trabalho pequenas e 
gerenciáveis de uma pequena parte da 
funcionalidade desejada escritas da 
perspectiva do usuário
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > EAP > Squad
•
DEVE ser construída em uma comunidade / squad;
•
DEVE caber a construção em uma única sprint (2 ou 4 
semanas)
•
Uma explicação mais detalhada do que se trata, 
incluindo informações sobre o contexto e finalidade. 
•
Critérios de aceitação: Uma lista de condições 
direcionadoras que favorecem a colaboração em relação 
ao desenvolvimento do escopo da história 
•
Filha da Funcionalidade; 
•
Pai das tarefas de scrum
•
Relacionada ou Dependente de outras histórias
•
Um requisito.
•
Uma lista exaustiva/detalhada.
•
Uma documentação de Sistema.
Simplificar Formulário de 
solicitação de empréstimo online
RASCUNHO
Fluxo:
PREPARADO
TRABALHO EM 
ANDAMENTO
PRONTO PARA 
TESTE
TESTANDO
PRONTO
CONCLUÍDO
CANCELADO
* Validar informações nos ebooks dos workitens
Como cliente devo Preencher um formulário de
solicitação
de
empréstimo
com
apenas
as
informações
essenciais,
para
reduzir
o
tempo
necessário para concluir o processo.
Critérios de Aceite
Dado que o cliente está na plataforma de crédito
Quando selecionar a opção de solicitar um 
empréstimo
Então deverá ser direcionado automaticamente 
para o formulário de solicitação de empréstimo
•
Dono Produto
•
Desenvolvedor Backend
•
Desenvolvedor Frontend
•
Desenvolvedor Mobile
•
Agile Master
•
Engenheiro Qualidade
•
Scrum Master
•
Tester Caixa
•
Tester FSW
•
Time
•
UX Designer



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 21

#EXTERNO.CONFIDENCIAL
#INTERNO.TODOS
#INTERNO.TODOS
21
Você sabe o que é uma
HISTÓRIA do tipo SERVIÇO?
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Exemplo:
Serviço pontual (esporádico) de apoio e
suporte que não envolve alterações de 
regras de negócio ou criação de novas
funcionalidade.
•
DEVE ser construída em uma comunidade / squad;
•
Determinação do tipo de serviço a ser executado
•
Uma explicação do que o serviço se trata, incluindo 
informações sobre o contexto e finalidade.
•
Filho da Funcionalidade;
•
Pai das tarefas de scrum.
•
Uma tarefa ligada a construção ou implantação de 
software
Gerar relatório a partir da base histórica
em
produção
com
o
tempo
de
preenchimento do formulário e o tempo de
resposta de cada pergunta de solicitação de
empréstimo online.
Relatório com tempo de 
preenchimento do formulário de 
solicitação de empréstimo online
RASCUNHO
Fluxo:
PREPARADO
TRABALHO EM 
ANDAMENTO
PRONTO PARA 
TESTE
TESTANDO
PRONTO
CONCLUÍDO
CANCELADO
HISTÓRIA
DE SERVIÇO
Onde cria:
Como cria:
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > EAP > Squad
Quem cria:
* Validar informações nos ebooks dos workitens
•
Dono Produto
•
Desenvolvedor Backend
•
Desenvolvedor Frontend
•
Desenvolvedor Mobile
•
Agile Master
•
Engenheiro Qualidade
•
Scrum Master
•
Tester Caixa
•
Tester FSW
•
Time
•
UX Designer



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 22

#EXTERNO.CONFIDENCIAL
22
#INTERNO.TODOS
TAREFA DE SCRUM



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 23

#EXTERNO.CONFIDENCIAL
TAREFA DE SCRUM
#INTERNO.TODOS
23
Você sabe o que é uma
TAREFA DE SCRUM?
Onde cria:
Como cria:
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Exemplo:
Atividades técnicas e operacionais 
executadas pela equipe para viabilizar 
as histórias
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > EAP > Squad > História > Tarefa Scum
•
DEVE ser executada em uma comunidade / squad;
•
DEVE ser executada por um único responsável 
•
Responsável pela execução
•
Filho da História;
•
Um item que gera valor isoladamente para o usuário 
•
Um item que possui escopo amplo 
•
Um serviço
Realizar um teste de acessibilidade na 
página criada na história vinculada.
Subtipo: Acessibilidade
Ambiente:  Homologação
Responsável: Técnico
Testando
RASCUNHO
Fluxo:
PREPARADO
TRABALHO EM 
ANDAMENTO
CONCLUÍDO
CANCELADO
Quem cria:
* Validar informações nos ebooks dos workitens
•
Dono Produto
•
Desenvolvedor Backend
•
Desenvolvedor Frontend
•
Desenvolvedor Mobile
•
Agile Master
•
Engenheiro Qualidade
•
Scrum Master
•
Tester Caixa
•
Tester FSW
•
Time
•
UX Designer



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 24

#EXTERNO.CONFIDENCIAL
24
#INTERNO.TODOS
DEFEITO



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 25

#EXTERNO.CONFIDENCIAL
DEFEITO
#INTERNO.TODOS
25
Você sabe o que é uma
DEFEITO?
Onde cria:
Como cria:
Deve conter:
Abrangência
Vínculo com outros itens
NÃO corresponde a
Exemplo:
Registros utilizados para controlar
falhas, comportamentos incorretos 
ou inconsistências identificadas no 
sistema.
•
Preenchimento do formulário com todas as 
informações obrigatórias (*).
•
SPW > EAP > Squad > História > Defeitos
•
SPW > Lista > Defeitos
•
DEVE ser construída em uma comunidade / squad;
•
DEVE ser refinado para ser construída em uma única 
sprint. (se não emergencial)
•
A descrição do problema encontrado
•
Decorrente de que tipo de teste
•
A instância de serviço em que ocorreu o erro
•
História da qual decorreu o defeito
•
Histórias que resolveram o defeito
•
Uma nova necessidade de negócio 
•
Uma melhoria sem falha identificada 
Ao preencher o formulário de solicitação
de empréstimo online, ocorre um erro na
validação dos dados inseridos, impedindo
que o usuário prossiga com a solicitação.
A validação dos dados inseridos não está
funcionando corretamente, permitindo que
valores inválidos (negativos e caracteres não
numéricos) sejam aceitos e não fornecendo
mensagens de erro adequadas para orientar
o usuário sobre os erros cometidos.
Erro na validação de dados do 
formulário de solicitação de 
empréstimo online.
RASCUNHO
Fluxo:
ESCOPO
AGUARDANDO 
APROVAÇÃO
TRABALHO EM 
ANDAMENTO
TESTES/CQ
IMPLANTAÇÃO
ENCERRADO
CANCELADO
EM ESPERA
Quem cria:
* Validar informações nos ebooks dos workitens
•
Dono Produto
•
Desenvolvedor Backend
•
Desenvolvedor Frontend
•
Desenvolvedor Mobile
•
Agile Master
•
Engenheiro Qualidade
•
Scrum Master
•
Tester Caixa
•
Tester FSW
•
Time
•
UX Designer



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 26

#EXTERNO.CONFIDENCIAL
26
#INTERNO.TODOS
EXEMPLO
Estruturação Completa



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 27

#EXTERNO.CONFIDENCIAL
27
EXEMPLO ESTRUTURA COMPLETA
#INTERNO.TODOS
FUNCIONALIDADE
ÉPICO
DEMANDA
HISTÓRIA
TAREFA 
DE SCRUM
DEFEITO
Solicitação de Empréstimo Simplificada para melhorar a experiência
do usuário e reduzir o tempo necessário pra concluir o processo.
Solicitação de Empréstimo Simplificada
1. Preenchimento Simplificado
Permitir que o cliente preencha apenas os
dados essenciais da solicitação.
2. Upload de Documentos
Permitir o envio e validação dos documentos
necessários para a análise de crédito.
3. Acompanhamento da Solicitação
Permitir que o cliente acompanhe o status
da sua solicitação em tempo real
Como cliente, desejo 
preencher meus dados 
pessoais de forma 
simplificada.
Gerar relatório de tempo 
médio de preenchimento 
do formulário.
Como cliente, desejo 
visualizar os documentos 
enviados antes de 
finalizar.
Implementar integração 
com serviço de validação 
de documentos.
Como cliente, desejo 
acompanhar o status 
atual da minha 
solicitação.
Como cliente, desejo 
receber notificações 
sobre mudanças no 
status.
Codificar
Não é possível 
rolar a 
visualização dos 
documentos
Notificação não 
pode ser lida em 
sistemas para 
cegos.
Testar
História
Serviço
História
Serviço
História
História
1:N
1:N
1:N
1:N
1:N
1:N
1:N
1:N



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 28

#EXTERNO.CONFIDENCIAL
28
#INTERNO.TODOS
Demais informações
As Informações de Permissões, Status e Atributos dos workitens estão disponíveis nos ebooks dos próprios
workitens.
Os ebooks podem ser localizados no http://ppds.caixa na aba “guias > gestão de demandas” ou
capitulodesolucoes.caixa/ na aba “SPM ServiceNow: O que muda na Caixa”.



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 29

#EXTERNO.CONFIDENCIAL
caixa.GOV.BR
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 30

#EXTERNO.CONFIDENCIAL
30
O que é o CWM?
O Collaborative Work Management (CWM), em português Gestão de Trabalho Colaborativo, é uma
solução do ServiceNow que centraliza tarefas, planejamento e documentação em um único ambiente. Ele
permite que equipes organizem, acompanhem e executem o trabalho de forma integrada, reduzindo a
dependência de múltiplas ferramentas e melhorando a colaboração, a visibilidade e a eficiência na gestão das
atividades.
Link de acesso:
• https://caixaesm.service-now.com/now/cwm/home
• ServiceNow > Espaços > Gestão de Trabalho Colaborativo
#INTERNO.TODOS
Confirmar se terá no MVP



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---

# Página 31

#EXTERNO.CONFIDENCIAL
31
O que é o CWM?
•
<IMAGEM CWM>
#INTERNO.TODOS



## 📝 Anotações e Comentários

## 📋 Campos de Formulário
---


