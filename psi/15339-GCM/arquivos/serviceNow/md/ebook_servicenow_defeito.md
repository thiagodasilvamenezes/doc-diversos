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
