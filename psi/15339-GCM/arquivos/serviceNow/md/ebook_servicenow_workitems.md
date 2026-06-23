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
