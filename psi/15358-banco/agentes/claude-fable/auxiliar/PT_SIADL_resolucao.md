# ESTUDO DE CASO SIADL — DIAGNÓSTICO, REESTRUTURAÇÃO DOS MODELOS DE DADOS E PLANO DE ATUAÇÃO COORDENADA DE ADs E DBAs

**PSI nº 15358 — Coordenador de Projetos/Processos Matriz — GECPA**
**Tema:** Estudo de Caso do Sistema de Atendimento Digital — SIADL

---

## 1. Introdução Executiva

O SIADL — Sistema de Atendimento Digital — é um ativo crítico da instituição: atende milhões de clientes diariamente, sustenta mais de 10 mil usuários simultâneos e processa em média 25 mil transações por minuto sobre uma base relacional Microsoft SQL Server 2025 de aproximadamente 12 TB, em regime OLTP de altíssima concorrência e com janela reduzida de manutenção.

Nos últimos meses, o sistema passou a apresentar um quadro clínico convergente: dados inconsistentes, lentidão generalizada, *timeouts* em operações críticas, crescimento acelerado das tabelas transacionais, aumento de incidentes operacionais, picos de CPU e consumo excessivo de memória. A diretoria identificou que a origem predominante desses sintomas está no ambiente de banco de dados relacional.

Esses sintomas não são independentes entre si — são manifestações de causas estruturais comuns: modelo de dados com fragilidades de integridade e padronização, modelo físico não dimensionado para a volumetria atual (tabelas de bilhões de registros sem particionamento nem estratégia de índices), tipos de dados inadequados, ausência de gestão de ciclo de vida do dado (sem expurgo, sem arquivamento, sem separação entre dado quente e frio) e governança de mudanças insuficiente.

Como coordenador técnico responsável, proponho uma abordagem em três eixos simultâneos e complementares:

1. **Eixo estrutural (modelo):** correção do modelo conceitual e físico — integridade referencial, domínios, tipos de dados corretos, normalização adequada e padronização segundo o normativo de modelagem relacional (TE074) e a gerência de modelos (TE073);
2. **Eixo de performance e sustentação (físico):** particionamento por data das tabelas massivas, estratégia explícita de índices, compressão, arquivamento e segregação de dados quentes, mornos e frios, viabilizando manutenção dentro da janela reduzida;
3. **Eixo de governança e operação (gerencial):** plano de atuação coordenada de Administradores de Dados (ADs) e Administradores de Banco de Dados (DBAs) junto aos squads, estratégia de evolução contínua com monitoramento, baselines e comitê técnico, e roadmap de implantação faseado com riscos e mitigadores.

O compromisso central é recuperar **performance, integridade, segurança e disponibilidade** sem interromper a operação, priorizando intervenções de alto impacto e baixo risco compatíveis com um ambiente OLTP crítico de 12 TB.

---

## 2. Diagnóstico Técnico Inicial

O diagnóstico parte da correlação entre os sintomas relatados e as características estruturais informadas. Para cada dimensão, apresento **causa provável, impacto observado e direcionamento de solução**.

### 2.1 Volumetria e crescimento vegetativo

| Entidade | Volume atual | Crescimento | Projeção 12 meses* |
|---|---:|---|---:|
| TRANSACAO_HISTORICO | 10 bi | 30% a.m. | ~235 bi |
| TRANSACAO | 4 bi | 30% a.m. | ~94 bi |
| INTERACAO_ATENDIMENTO | 1 bi | 20% a.m. | ~8,9 bi |
| ATENDIMENTO | 800 mi | 20% a.m. | ~7,1 bi |
| LIMITE_CONTA | 1 bi | 20% a.a. | 1,2 bi |
| CONTA | 500 mi | 20% a.a. | 600 mi |
| DISPOSITIVO_CLIENTE | 150 mi | 10% a.a. | 165 mi |
| CLIENTE | 100 mi | 10% a.a. | 110 mi |
| CANAL | 10 | estável | 10 |

\* Crescimento composto mantidas as taxas atuais.

**Causa:** quatro tabelas crescem em ritmo mensal exponencial (20–30% a.m.). Nenhuma estratégia de particionamento, expurgo ou arquivamento foi informada.
**Impacto:** degradação progressiva e acelerada — índices cada vez mais profundos, estatísticas defasadas, varreduras mais longas, manutenção inviável na janela disponível e crescimento de storage insustentável (o par TRANSACAO + TRANSACAO_HISTORICO tende a dominar os 12 TB).
**Direcionamento:** particionamento por data, políticas de retenção com arquivamento em camadas (quente/morno/frio), compressão e revisão do que de fato precisa permanecer *online*. Importante: crescimento de 30% a.m. é insustentável em qualquer arquitetura — cabe também verificar com o negócio se há gravação redundante ou log excessivo em TRANSACAO_HISTORICO.

### 2.2 Concorrência

**Causa:** 25 mil transações/minuto com 10 mil usuários simultâneos sobre tabelas monolíticas geram contenção: *page latch* em pontos quentes de inserção (chaves sequenciais no fim do índice), *lock escalation* em atualizações massivas, bloqueios longos entre leitura e escrita.
**Impacto:** *timeouts* em operações críticas, filas de espera (waits de lock e latch), picos de CPU por recompilações e planos ineficientes.
**Direcionamento:** isolamento **READ_COMMITTED_SNAPSHOT (RCSI)** para remover contenção leitura×escrita (com dimensionamento prévio de tempdb/version store), particionamento para distribuir pontos de inserção, índices enxutos para reduzir custo de escrita e transações mais curtas na aplicação.

### 2.3 Modelo conceitual

**Causa:** indícios de modelagem incompleta — atributo textual "canal" repetido em tabelas transacionais em vez de chave de domínio; ausência de separação clara entre dados mestres, transacionais, operacionais, históricos e de domínio; entidades com responsabilidades sobrepostas.
**Impacto:** dados inconsistentes (mesma informação grafada de formas distintas), redundância, dificuldade de evolução e de rastreabilidade negocial.
**Direcionamento:** revisão do modelo conceitual (seção 3), com domínios formais, entidades dependentes explícitas e ciclo de vida definido para cada entidade.

### 2.4 Modelo físico

**Causa:** DDL herdada sem aderência aos padrões corporativos: tipos incorretos, ausência de particionamento, índices não planejados.
**Impacto:** consumo excessivo de memória (páginas maiores que o necessário em buffer pool), I/O amplificado, planos de execução ruins.
**Direcionamento:** reestruturação física completa (seção 4), aderente ao TE074 e aos datatypes permitidos para SQL Server.

### 2.5 Integridade referencial

**Causa:** possível ausência de chaves estrangeiras e constraints (comum em sistemas que "delegam" integridade à aplicação).
**Impacto:** registros órfãos (atendimento sem cliente, transação sem conta), a causa mais direta dos "dados inconsistentes" relatados; o otimizador também perde informação para simplificação de planos.
**Direcionamento:** implantar FKs e constraints com saneamento prévio dos dados; nas tabelas de altíssimo volume, avaliar FKs com `NOT FOR REPLICATION` e validação faseada (criação `WITH NOCHECK` seguida de `CHECK CONSTRAINT` após saneamento) para não paralisar a operação.

### 2.6 Tipos de dados

**Causa:** uso inadequado de `TIMESTAMP` no SQL Server para datas de negócio. No SQL Server, `TIMESTAMP` é sinônimo de `ROWVERSION` — um contador binário de versão de linha que **não contém data nem hora**.
**Impacto:** semanticamente errado: qualquer regra de negócio temporal (vigência de limite, data de transação, apuração por período) construída sobre esse tipo é inválida — causa direta de inconsistência. Além disso, tipos superdimensionados inflam linha, página, buffer e índice.
**Direcionamento:** `DATETIME2` (precisão ajustada, p.ex. `DATETIME2(3)`) para data e hora de negócio; `DATE` quando só houver data; `ROWVERSION` mantido apenas onde exista real necessidade de controle de concorrência otimista; `DECIMAL` para valores monetários; revisão geral de tamanhos de `VARCHAR` e inteiros (`TINYINT` para domínios como CANAL).

### 2.7 Índices

**Causa:** ausência de estratégia explícita — provável convivência de índices ausentes (para as consultas críticas) com índices redundantes/não utilizados (herdados).
**Impacto:** varreduras onde deveria haver *seek* (CPU e I/O altos), escrita penalizada por índices inúteis, *lookups* massivos.
**Direcionamento:** levantamento por DMVs (`sys.dm_db_index_usage_stats`, *missing indexes*), projeto de índices clustered adequados (data + chave nas tabelas particionadas), nonclustered cobrindo consultas críticas, índices filtrados para subconjuntos ativos (p.ex. limites vigentes) e eliminação dos não utilizados.

### 2.8 Particionamento

**Causa:** ausência de particionamento em tabelas de 0,8 a 10 bilhões de linhas. O padrão corporativo referencia análise de particionamento para tabelas com crescimento superior a 100 milhões de linhas/ano — patamar largamente ultrapassado.
**Impacto:** manutenção de índice e estatísticas em objeto único gigante não cabe na janela; expurgo via `DELETE` gera log e bloqueio proibitivos; consultas não se beneficiam de eliminação de partições.
**Direcionamento:** particionamento por faixa de data (mensal) nas quatro tabelas massivas, com `SWITCH OUT` de partições antigas para arquivamento e expurgo quase instantâneo, e manutenção incremental partição a partição.

### 2.9 Estatísticas

**Causa:** em tabelas de bilhões de linhas, o limiar padrão de atualização automática é atingido tardiamente; estatísticas desatualizadas produzem estimativas erradas.
**Impacto:** planos ineficientes, *spills* para tempdb, consumo de memória por concessões (memory grants) superdimensionadas — coerente com os picos de CPU e memória relatados.
**Direcionamento:** estatísticas incrementais por partição, jobs de atualização direcionados com amostragem adequada, monitoramento de planos regressivos via Query Store.

### 2.10 Manutenção e janela reduzida

**Causa:** rebuild/reorganize de índices e verificação de integridade (`CHECKDB`) sobre objetos monolíticos de terabytes não cabem na janela.
**Impacto:** manutenção postergada → fragmentação e estatísticas velhas → degradação → mais incidentes: círculo vicioso.
**Direcionamento:** manutenção particionada e *online* (`REBUILD ... ONLINE`, `RESUMABLE`), `CHECKDB` com `PHYSICAL_ONLY` distribuído/descarregado em réplica, automação com priorização por criticidade.

### 2.11 Dados históricos

**Causa:** TRANSACAO_HISTORICO (10 bi, *append-only*) convive fisicamente com o dado transacional quente, sem política de retenção.
**Impacto:** o dado frio consome buffer, backup, janela e storage premium sem valor operacional imediato.
**Direcionamento:** tratar *append-only* como classe própria — partições mensais, compressão de página (ou columnstore para partições frias, se o acesso for analítico), arquivamento além do horizonte de consulta operacional e expurgo normatizado com o gestor da informação.

### 2.12 Governança de mudanças

**Causa:** indícios de alterações de banco sem rito formal de validação de modelo (pré-validação, validação pelo AD, laudo) e sem gate de revisão de scripts.
**Impacto:** o modelo degrada silenciosamente a cada entrega; problemas são descobertos em produção.
**Direcionamento:** reinstituir o fluxo normativo de gerência de modelos (TE073/TE074) — modelo DES validado, pré-validador, laudo de validação — e processo de mudança controlada com revisão de scripts, plano de rollback e homologação técnica (seção 6).

### 2.13 Segurança e rastreabilidade

**Causa:** ausência de trilha de auditoria estruturada e de classificação de dados pessoais/sigilosos nas entidades (CLIENTE, DISPOSITIVO_CLIENTE, TRANSACAO carregam dados sensíveis — LGPD e sigilo bancário).
**Impacto:** exposição regulatória, impossibilidade de responder "quem alterou o quê e quando" — agravante em cenário de dados inconsistentes.
**Direcionamento:** colunas técnicas de auditoria padronizadas, SQL Server Audit para acessos privilegiados, classificação da informação conforme normativo de tratamento da informação (OR016), mascaramento/criptografia (Always Encrypted ou TDE + Dynamic Data Masking) conforme sensibilidade, e privilégio mínimo por papel.

---

## 3. Modelo de Dados Conceitual Ideal

### 3.1 Princípios adotados

O modelo conceitual proposto segue o normativo corporativo de modelagem relacional (TE074), com notação James Martin, normalização mínima à 3ª forma normal, nomenclatura em português no singular e separação explícita das classes de dados:

- **Dados mestres:** CLIENTE, CONTA — entidades fortes, longa vida, baixa volatilidade;
- **Dados de domínio:** CANAL, TIPO_ATENDIMENTO, SITUACAO_TRANSACAO — vocabulários controlados, pequenos e estáveis;
- **Dados transacionais:** TRANSACAO, ATENDIMENTO — eventos de negócio de alta inserção;
- **Dados operacionais/dependentes:** INTERACAO_ATENDIMENTO, LIMITE_CONTA, DISPOSITIVO_CLIENTE — existem em função de outra entidade;
- **Dados históricos:** TRANSACAO_HISTORICO — trilha *append-only* de mudança de estado, imutável após gravação.

### 3.2 Descrição textual do modelo

**CLIENTE** é a entidade forte central, com dados cadastrais. Cada cliente **possui** uma ou mais **CONTA** (1:N); **abre** zero ou mais **ATENDIMENTO** (1:N); e **vincula** zero ou mais **DISPOSITIVO_CLIENTE** (1:N), usados em segurança e antifraude.

**CONTA** é entidade forte dependente de cliente no ciclo de vida negocial. Cada conta **realiza** zero ou mais **TRANSACAO** (1:N) e **recebe** um ou mais **LIMITE_CONTA** (1:N) com vigência temporal — a cada momento, no máximo um limite vigente por tipo (regra de negócio de não sobreposição de vigências).

**ATENDIMENTO** registra solicitações, reclamações e serviços. É **detalhado por** uma ou mais **INTERACAO_ATENDIMENTO** (1:N), entidade fraca/dependente que registra o histórico granular. O atendimento **ocorre por meio de** um **CANAL** (N:1) — aqui está uma correção estrutural: o atributo textual "canal" é substituído por chave para a entidade de domínio CANAL, eliminando redundância e inconsistência de grafia.

**TRANSACAO** representa a operação financeira da conta, **originada em** um **CANAL** (N:1) e **classificada por** situação (domínio SITUACAO_TRANSACAO). Cada transação **gera** uma ou mais ocorrências em **TRANSACAO_HISTORICO** (1:N), entidade histórica *append-only* que registra cada mudança de estado com data/hora — jamais atualizada, apenas inserida.

**CANAL** é entidade de domínio (~10 registros) referenciada tanto por TRANSACAO quanto por ATENDIMENTO.

**Ciclo de vida:** CLIENTE e CONTA seguem ciclo cadastral (ativo → inativo/encerrado, sem exclusão física); ATENDIMENTO segue máquina de estados (aberto → em tratamento → concluído/cancelado); TRANSACAO nasce, muda de estado (autorizada → efetivada/estornada) e "congela" — seus estados intermediários vivem em TRANSACAO_HISTORICO; LIMITE_CONTA nasce com vigência e expira, nunca é sobrescrito (versionamento temporal).

### 3.3 Quadro-resumo do modelo conceitual

| Entidade | Classe | Responsabilidade | Relacionamentos (cardinalidade) | Principais regras de negócio |
|---|---|---|---|---|
| CLIENTE | Mestre (forte) | Identificação cadastral única do cliente | 1:N CONTA; 1:N ATENDIMENTO; 1:N DISPOSITIVO_CLIENTE | CPF/CNPJ único; sem exclusão física; dados pessoais classificados (LGPD) |
| CONTA | Mestre (forte, dependente negocial) | Vínculo contratual de conta | N:1 CLIENTE; 1:N TRANSACAO; 1:N LIMITE_CONTA | Conta pertence a exatamente um cliente titular; encerramento lógico |
| ATENDIMENTO | Transacional | Solicitações, reclamações, serviços | N:1 CLIENTE; N:1 CANAL; 1:N INTERACAO_ATENDIMENTO | Todo atendimento tem cliente, canal e situação; máquina de estados |
| INTERACAO_ATENDIMENTO | Operacional (fraca) | Histórico granular da tratativa | N:1 ATENDIMENTO | Não existe sem atendimento; ordenada temporalmente |
| TRANSACAO | Transacional | Operação financeira da conta | N:1 CONTA; N:1 CANAL; 1:N TRANSACAO_HISTORICO | Valor com precisão decimal; situação por domínio; imutável após efetivação |
| TRANSACAO_HISTORICO | Histórica (*append-only*) | Trilha de mudanças de estado da transação | N:1 TRANSACAO | Somente inserção; nunca atualizada; retenção normatizada |
| CANAL | Domínio | Vocabulário de canais de origem | 1:N TRANSACAO; 1:N ATENDIMENTO | Tabela de domínio controlada pelo AD; chave pequena |
| DISPOSITIVO_CLIENTE | Operacional | Dispositivos vinculados (segurança/antifraude) | N:1 CLIENTE | Dispositivo único por identificador técnico; situação ativa/revogada |
| LIMITE_CONTA | Operacional (temporal) | Limites operacionais com vigência | N:1 CONTA | Vigências não sobrepostas por tipo de limite; consulta ao vigente é crítica |

---

## 4. Modelo Físico Ideal

### 4.1 Diretrizes gerais para SQL Server 2025 em OLTP crítico

| Dimensão | Decisão física | Justificativa no contexto SIADL |
|---|---|---|
| Datas de negócio | `DATETIME2(3)` / `DATE` | Corrige o uso indevido de `TIMESTAMP`; precisão de milissegundos suficiente; 6–7 bytes vs 8 do DATETIME |
| Concorrência otimista | `ROWVERSION` apenas onde a aplicação faz *optimistic locking* (ex.: CLIENTE, LIMITE_CONTA) | Uso correto e restrito do tipo |
| Valores monetários | `DECIMAL(17,2)` | Precisão exata; nunca FLOAT |
| Chaves primárias | `BIGINT IDENTITY` nas transacionais; `INT` nos mestres médios; `TINYINT` nos domínios | Dimensionamento por volumetria projetada |
| Isolamento | `READ_COMMITTED_SNAPSHOT ON` | Remove contenção leitura×escrita nos 25 mil TPM; exige dimensionar tempdb |
| Compressão | `PAGE` nas partições mornas/frias; `ROW` nas quentes | Reduz I/O e buffer; padrão corporativo prevê DATA_COMPRESSION |
| Particionamento | Função mensal sobre coluna de data nas 4 tabelas massivas | Manutenção, expurgo e eliminação de partição |
| Segurança | TDE, classificação de dados, Dynamic Data Masking em dados pessoais, SQL Audit | LGPD e sigilo bancário |
| Disponibilidade | Always On AG com réplica secundária legível | Descarrega relatórios/CHECKDB; RTO/RPO formais |
| Auditoria de linha | Colunas técnicas padronizadas (`DH_INCLUSAO_REGISTRO`, `DH_ALTERACAO_REGISTRO`, `CO_USUARIO_ULTIMA_ALTERACAO`) | Rastreabilidade mínima em todas as tabelas |

### 4.2 Estratégia de dados quentes, mornos e frios

| Camada | Horizonte | Armazenamento | Compressão | Acesso |
|---|---|---|---|---|
| Quente | 0–3 meses | Partições recentes, storage premium | ROW | OLTP pleno |
| Morno | 3–12 meses | Partições intermediárias, mesmo banco | PAGE | Consulta eventual |
| Frio | > 12 meses | Banco/filegroup de arquivo (`SIADL_HIST`), via `SWITCH OUT` | PAGE / columnstore | Consulta esporádica, auditoria |
| Expurgo | Além da retenção normatizada | Remoção com anuência do gestor da informação | — | — |

Para as tabelas *append-only* (TRANSACAO_HISTORICO), partições fechadas tornam-se imutáveis: uma vez comprimidas e arquivadas, saem do ciclo de manutenção e de backup incremental — ganho direto na janela.

### 4.3 Pseudo-DDL das principais tabelas (alterações relevantes destacadas)

A nomenclatura segue o padrão corporativo de classes de atributos (NU, CO, DT, DH, VR, IC, DE, QT).

```sql
-- Função e esquema de particionamento mensal (exemplo)
CREATE PARTITION FUNCTION PF_MENSAL (DATETIME2(3))
AS RANGE RIGHT FOR VALUES ('2025-01-01','2025-02-01', /* ... rolling */ '2026-07-01');
CREATE PARTITION SCHEME PS_MENSAL AS PARTITION PF_MENSAL ALL TO ([FG_DADOS]);

-- Domínio
CREATE TABLE TB_CANAL (
  NU_CANAL           TINYINT       NOT NULL CONSTRAINT PK_CANAL PRIMARY KEY,
  NO_CANAL           VARCHAR(50)   NOT NULL CONSTRAINT UQ_CANAL_NOME UNIQUE,
  IC_SITUACAO_CANAL  BIT           NOT NULL CONSTRAINT DF_CANAL_SIT DEFAULT 1
);

-- Mestre
CREATE TABLE TB_CLIENTE (
  NU_CLIENTE                    INT           NOT NULL IDENTITY,
  NU_CPF_CNPJ                   BIGINT        NOT NULL,
  NO_CLIENTE                    VARCHAR(150)  NOT NULL,
  DT_NASCIMENTO                 DATE          NULL,          -- era TIMESTAMP: corrigido
  IC_SITUACAO_CLIENTE           CHAR(1)       NOT NULL,
  DH_INCLUSAO_REGISTRO          DATETIME2(3)  NOT NULL CONSTRAINT DF_CLI_INC DEFAULT SYSDATETIME(),
  DH_ALTERACAO_REGISTRO         DATETIME2(3)  NULL,
  VS_CONTROLE_CONCORRENCIA      ROWVERSION,                  -- uso legítimo: optimistic locking
  CONSTRAINT PK_CLIENTE PRIMARY KEY CLUSTERED (NU_CLIENTE),
  CONSTRAINT UQ_CLIENTE_CPF_CNPJ UNIQUE (NU_CPF_CNPJ)
);

-- Transacional massiva: particionada por data
CREATE TABLE TB_TRANSACAO (
  NU_TRANSACAO          BIGINT        NOT NULL IDENTITY,
  NU_CONTA              BIGINT        NOT NULL,
  NU_CANAL              TINYINT       NOT NULL,              -- era texto livre: agora domínio
  DH_TRANSACAO          DATETIME2(3)  NOT NULL,              -- era TIMESTAMP: corrigido
  VR_TRANSACAO          DECIMAL(17,2) NOT NULL,
  CO_SITUACAO_TRANSACAO TINYINT       NOT NULL,
  DH_INCLUSAO_REGISTRO  DATETIME2(3)  NOT NULL DEFAULT SYSDATETIME(),
  CONSTRAINT PK_TRANSACAO PRIMARY KEY CLUSTERED (DH_TRANSACAO, NU_TRANSACAO)
      ON PS_MENSAL (DH_TRANSACAO),                           -- particionamento + insere no "fim local"
  CONSTRAINT FK_TRANSACAO_CONTA  FOREIGN KEY (NU_CONTA) REFERENCES TB_CONTA (NU_CONTA),
  CONSTRAINT FK_TRANSACAO_CANAL  FOREIGN KEY (NU_CANAL) REFERENCES TB_CANAL (NU_CANAL),
  CONSTRAINT CK_TRANSACAO_VALOR  CHECK (VR_TRANSACAO <> 0)
) WITH (DATA_COMPRESSION = ROW ON PARTITIONS (/* quentes */),
        DATA_COMPRESSION = PAGE ON PARTITIONS (/* mornas+ */));

-- Índices de apoio às consultas críticas (extrato por conta/período)
CREATE NONCLUSTERED INDEX IX_TRANSACAO_CONTA_DATA
  ON TB_TRANSACAO (NU_CONTA, DH_TRANSACAO DESC)
  INCLUDE (VR_TRANSACAO, CO_SITUACAO_TRANSACAO)
  ON PS_MENSAL (DH_TRANSACAO);                               -- alinhado à partição

-- Histórica append-only: particionada, comprimida, sem updates
CREATE TABLE TB_TRANSACAO_HISTORICO (
  NU_TRANSACAO_HISTORICO BIGINT        NOT NULL IDENTITY,
  NU_TRANSACAO           BIGINT        NOT NULL,
  DH_MUDANCA_SITUACAO    DATETIME2(3)  NOT NULL,
  CO_SITUACAO_ANTERIOR   TINYINT       NULL,
  CO_SITUACAO_NOVA       TINYINT       NOT NULL,
  CO_USUARIO_REGISTRO    VARCHAR(8)    NULL,
  CONSTRAINT PK_TRANSACAO_HISTORICO
      PRIMARY KEY CLUSTERED (DH_MUDANCA_SITUACAO, NU_TRANSACAO_HISTORICO)
      ON PS_MENSAL (DH_MUDANCA_SITUACAO)
) WITH (DATA_COMPRESSION = PAGE);

-- Limite com vigência temporal: índice filtrado para o vigente
CREATE TABLE TB_LIMITE_CONTA (
  NU_LIMITE_CONTA      BIGINT        NOT NULL IDENTITY,
  NU_CONTA             BIGINT        NOT NULL,
  CO_TIPO_LIMITE       TINYINT       NOT NULL,
  VR_LIMITE            DECIMAL(17,2) NOT NULL,
  DT_INICIO_VIGENCIA   DATE          NOT NULL,               -- era TIMESTAMP: corrigido
  DT_FIM_VIGENCIA      DATE          NULL,                   -- NULL = vigente
  CONSTRAINT PK_LIMITE_CONTA PRIMARY KEY CLUSTERED (NU_LIMITE_CONTA),
  CONSTRAINT FK_LIMITE_CONTA FOREIGN KEY (NU_CONTA) REFERENCES TB_CONTA (NU_CONTA)
);
CREATE UNIQUE NONCLUSTERED INDEX IX_LIMITE_VIGENTE
  ON TB_LIMITE_CONTA (NU_CONTA, CO_TIPO_LIMITE)
  WHERE DT_FIM_VIGENCIA IS NULL;                             -- índice filtrado: 1 vigente por tipo
```

As mesmas diretrizes aplicam-se a TB_CONTA (BIGINT, FKs, RCSI), TB_ATENDIMENTO e TB_INTERACAO_ATENDIMENTO (particionadas por `DH_ABERTURA`/`DH_INTERACAO`, FK para TB_CANAL substituindo texto livre) e TB_DISPOSITIVO_CLIENTE (índice único por identificador técnico do dispositivo, colunas de auditoria para antifraude).

### 4.4 Estatísticas, manutenção, segurança e disponibilidade

- **Estatísticas:** `INCREMENTAL = ON` nas particionadas; jobs noturnos curtos atualizando somente partições ativas; Query Store ativo com política de captura para regressão de planos.
- **Manutenção:** rebuild `ONLINE` e `RESUMABLE` por partição; `CHECKDB PHYSICAL_ONLY` na réplica secundária; automação (p.ex. solução Ola Hallengren parametrizada) priorizada por fragmentação × criticidade.
- **Segurança:** TDE no banco; classificação de colunas sensíveis; DDM para dados pessoais em consultas de suporte; SQL Audit sobre ações privilegiadas; acesso via papéis com privilégio mínimo; segregação entre perfil de aplicação e perfis humanos.
- **Disponibilidade:** Always On AG síncrono local + assíncrono em DR; readable secondary para relatórios e verificação de integridade; RTO/RPO pactuados com o negócio e testados.

---

## 5. Justificativa das Intervenções entre Modelo Conceitual e Físico

O modelo conceitual descreve **o negócio**; o físico descreve **como sustentar o negócio em 12 TB e 25 mil TPM**. Os afastamentos propostos são deliberados, controlados e documentados:

| Intervenção física | Afastamento do conceitual | Justificativa | Salvaguarda |
|---|---|---|---|
| Particionamento mensal de TRANSACAO, TRANSACAO_HISTORICO, ATENDIMENTO, INTERACAO_ATENDIMENTO | Nenhum — a entidade negocial permanece única | Manutenção na janela reduzida, expurgo por `SWITCH`, eliminação de partição nas consultas | Transparente para a aplicação |
| PK clustered composta (data + id) nas massivas | O conceito usa apenas o identificador | Alinhar o índice cluster à partição e distribuir inserções | Unicidade preservada pela combinação; id continua exposto ao negócio |
| Tabelas/filegroups de histórico e arquivamento (SIADL_HIST) | Conceitualmente é a mesma entidade histórica | Retirar dado frio do ciclo de backup, buffer e manutenção | Visão de união (`VIEW`) quando o negócio precisar do contínuo |
| Índices redundantes ao modelo (cobertos, filtrados) | Índice não existe no conceitual | Consultas críticas (extrato por conta, limite vigente) exigem *seek* + cobertura | Revisão periódica de uso; custo de escrita monitorado |
| Compressão PAGE em dados mornos/frios | Neutro ao conceito | Menos I/O e buffer; CPU adicional é compensada em dados pouco alterados | Aplicada por partição, não no dado quente |
| Desnormalização controlada — p.ex. situação corrente da transação mantida em TB_TRANSACAO além da trilha em TB_TRANSACAO_HISTORICO | Redundância deliberada | Evita *join*/agregação sobre 10 bi de linhas para responder "qual o estado atual?" | Redundância mantida por transação atômica na mesma unidade de trabalho; consistência auditável |
| **Desnormalizações rejeitadas** — p.ex. repetir dados do cliente na transação, ou manter "canal" textual | — | Comprometeriam integridade e voltariam a gerar inconsistência (o problema que se quer eliminar) | Regra: desnormalizar somente com medição que comprove necessidade, aprovação do AD e do DBA, e mecanismo de sincronização definido |

Princípio geral: **o físico pode divergir do conceitual por performance, escalabilidade, manutenção ou disponibilidade — nunca por atalho de desenvolvimento**. Toda divergência é registrada no modelo físico (PowerDesigner) com justificativa, mantendo a rastreabilidade entre as visões.

---

## 6. Plano de Trabalho para Atuação de ADs e DBAs

### 6.1 Fronteiras de atuação

| Dimensão | Administrador de Dados (AD) | Administrador de Banco de Dados (DBA) |
|---|---|---|
| Modelo | Conceitual e lógico; validação formal com laudo | Físico; geração e guarda da DDL |
| Padronização | Entidades, atributos, domínios, nomenclatura, glossário de termos | Objetos físicos, filegroups, convenções de índice/constraint |
| Qualidade | Significado, regras de negócio, qualidade e linhagem do dado; catálogo e glossário | Integridade física, consistência de constraints implantadas |
| Governança | Governança de dados; avaliação de impactos negociais; classificação da informação | Execução controlada de mudanças em produção; gestão de configuração do banco |
| Performance | Volumetria prevista e requisitos de acesso informados no modelo | Índices, particionamento, estatísticas, tuning, planos de execução |
| Sustentação | Apoio aos squads desde o refinamento das demandas | Capacidade, backup/restore, alta disponibilidade, monitoramento, segurança física e lógica |

A regra de ouro: **nenhuma tabela nasce ou muda sem passar pelo AD (modelo) e pelo DBA (física)** — na ordem correta e desde o refinamento, não na véspera da implantação.

### 6.2 Dinâmica com o squad

| Rito / Instrumento | Participantes | Conteúdo |
|---|---|---|
| **Refinamento** | Squad + AD (+ DBA quando houver impacto físico) | AD avalia impacto em dados desde a concepção; identifica reuso e compartilhamento |
| **Definition of Ready (dados)** | PO + AD | Demanda só entra em sprint com: regras de negócio/histórias, volumetria estimada, classificação da informação, impacto em modelo indicado |
| **Modelagem e pré-validação** | Squad + AD | Modelo DES atualizado na ferramenta corporativa (PowerDesigner), pré-validador executado, solicitação de validação formalizada |
| **Validação do modelo** | AD | Laudo: aprovado / com adequações / com ressalvas / não aprovado |
| **Revisão de scripts** | DBA | DDL/DML revisados: padrão, plano de execução estimado, impacto em índices e locks, janela necessária |
| **Definition of Done (banco)** | Squad + AD + DBA | Modelo validado + DDL homologada + testes de performance executados + plano de rollback aprovado + dicionário/metadados atualizados |
| **Testes de performance** | Squad + DBA | Carga representativa em ambiente de homologação com volumetria proporcional; baselines comparados |
| **Homologação técnica** | DBA + operação | Ensaios da mudança, medição de tempo real, validação do rollback |
| **Implantação** | DBA + operação + squad de sobreaviso | Execução na janela, checklist, critérios go/no-go, observabilidade ativa |
| **Ritos periódicos** | Capítulo + squads + arquitetura + segurança + negócio | Revisão quinzenal de demandas de dados, débitos técnicos, indicadores e incidentes |

Arquitetura garante aderência aos padrões arquiteturais; segurança avalia classificação e acessos; negócio (gestor da informação) delibera sobre retenção, expurgo e qualidade; operação executa e monitora.

---

## 7. Estratégia de Evolução das Demandas de Banco de Dados

A estratégia combina **atuação preventiva** (agir antes da degradação) e **corretiva tempestiva** (responder rápido ao incidente), sustentada por medição contínua.

### 7.1 Monitoramento e indicadores

| Grupo | Indicadores | Uso |
|---|---|---|
| Recursos | CPU, memória (PLE, memory grants), I/O (latência por arquivo), tempdb | Detecção de saturação e tendência |
| Concorrência | Locks, waits (top waits), deadlocks/dia, timeouts/dia | Alarme de contenção antes do usuário sentir |
| Crescimento | Linhas e GB por tabela/partição, taxa mensal, projeção vs capacidade | Gestão de capacidade e antecipação de particionamento/expurgo |
| Consultas | Query Store: top queries por CPU/IO, planos regressivos, recompilações | Tuning direcionado e detecção de regressão pós-implantação |
| Saúde | Fragmentação, idade das estatísticas, sucesso de backup/CHECKDB, latência de AG | Garantia de manutenção efetiva |

### 7.2 Rotinas e ciclos

- **Contínuo:** coleta automática, alertas com limiares, painel único do SIADL;
- **Semanal:** análise de planos de execução regressivos; revisão de waits; verificação das partições ativas;
- **Mensal:** revisão de índices (ausentes × não usados × duplicados); atualização dirigida de estatísticas; criação da partição futura (rolling window) e `SWITCH OUT` da mais antiga; relatório de capacidade;
- **Trimestral:** testes de carga com baseline formal de performance (antes/depois); ensaio de restore e de failover; revisão da política de retenção/expurgo com o gestor da informação;
- **Comitê técnico de evolução do modelo (mensal):** AD, DBA, arquitetura e squads priorizam débitos técnicos de dados, deliberam desnormalizações, avaliam tendências de crescimento e aprovam mudanças estruturais — com registro formal;
- **Mudança controlada:** toda alteração estrutural passa pelo fluxo da seção 6 (validação, script review, rollback, homologação, janela);
- **Corretivo:** *runbook* de incidentes de banco com papéis, diagnóstico padrão (waits → plano → objeto → mudança recente) e pós-mortem alimentando o backlog preventivo.

---

## 8. Roadmap de Implantação

| Fase | Objetivo | Principais ações | Responsáveis | Resultados esperados |
|---|---|---|---|---|
| **1 — Diagnóstico e baselines** (semanas 1–4) | Fotografar a situação e priorizar | Baselines de performance (Query Store, waits, volumetria); inventário de índices/constraints/tipos; classificação da informação; matriz de riscos | DBA (líder), AD, squads | Relatório de diagnóstico, backlog priorizado por impacto × risco, baseline formal |
| **2 — Correções emergenciais** (semanas 3–10, sobreposta) | Ganho rápido com baixo risco | RCSI (com dimensionamento de tempdb); índices críticos ausentes; remoção de índices inúteis; atualização de estatísticas; correções de consultas top ofensoras; ajuste de manutenção | DBA, squads | Redução mensurável de timeouts, CPU e waits; estabilização imediata |
| **3 — Revisão de modelo conceitual e lógico** (meses 2–4) | Corrigir a estrutura na origem | Modelagem conforme seção 3; domínios (CANAL etc.); regras de integridade; validação formal pelo AD (pré-validador + laudo); dicionário e metadados | AD (líder), squads, gestor da informação | Modelo DES validado e publicado; laudo emitido; glossário atualizado |
| **4 — Reestruturação física** (meses 3–8) | Implantar o modelo físico ideal | Migração de tipos (TIMESTAMP→DATETIME2); FKs com saneamento; particionamento das 4 tabelas massivas (migração por sombreamento/`SWITCH`); compressão; arquivamento e expurgo; índices definitivos | DBA (líder), AD, squads, operação | Tabelas particionadas, integridade ativa, dado histórico segregado, manutenção cabendo na janela |
| **5 — Automação, governança e melhoria contínua** (mês 6 em diante) | Sustentar e evoluir | Automação de manutenção e rolling de partições; painel de indicadores; comitê técnico ativo; DoR/DoD de dados institucionalizados; testes de carga recorrentes; gestão de capacidade | Capítulo (AD+DBA), squads, arquitetura | Operação previsível, evolução governada, prevenção sistemática de reincidência |

Fases 2, 3 e 4 são deliberadamente sobrepostas: o alívio emergencial não espera o modelo ideal, e a reestruturação física consome as validações do modelo à medida que saem.

---

## 9. Riscos e Mitigadores

| # | Risco | Prob. | Impacto | Mitigadores |
|---|---|---|---|---|
| 1 | Indisponibilidade durante mudanças estruturais | Média | Alto | Operações `ONLINE`/`RESUMABLE`; migração por sombreamento com `SWITCH`; janela formal; plano de rollback ensaiado; go/no-go |
| 2 | Regressão de performance pós-mudança | Média | Alto | Baselines antes/depois; Query Store com forçamento de plano; implantação gradual; monitoramento intensivo nas primeiras 72h |
| 3 | Inconsistência de dados no saneamento (FKs, migração de tipos) | Média | Alto | Saneamento com relatório prévio ao gestor; FKs `WITH NOCHECK`→`CHECK` faseado; conciliação automatizada pós-migração |
| 4 | Falha de scripts em produção | Baixa | Alto | Revisão obrigatória por DBA; execução ensaiada em homologação com volumetria; scripts idempotentes; rollback testado |
| 5 | Janela reduzida insuficiente para as fases 4 | Alta | Médio | Fatiamento por partição/lote; operações resumíveis; uso da réplica para tarefas de leitura; priorização por tabela crítica |
| 6 | Crescimento acima do previsto (30% a.m. persistente) | Média | Alto | Gestão de capacidade com projeção mensal; gatilhos de expansão; revisão negocial da geração de TRANSACAO_HISTORICO; expurgo normatizado |
| 7 | Impacto em sistemas consumidores (mudança de tipos/estruturas) | Média | Médio | Mapa de dependências e linhagem (metadados); comunicação formal; períodos de convivência (views de compatibilidade); homologação integrada |
| 8 | Desalinhamento entre AD, DBA e desenvolvimento | Média | Médio | DoR/DoD institucionais; comitê técnico mensal; participação do AD no refinamento; papéis e fronteiras formalizados (seção 6) |

---

## 10. Conclusão

O quadro do SIADL — inconsistência, lentidão, timeouts, incidentes e consumo anômalo de recursos — não decorre de um defeito isolado, mas da combinação de modelo de dados fragilizado, física subdimensionada para a volumetria e governança de mudanças insuficiente. Por isso, a solução proposta é integrada e atua nas causas:

- **Correção estrutural do modelo:** domínios formais, integridade referencial, tipos corretos (`DATETIME2` no lugar do `TIMESTAMP` indevido), normalização e padronização segundo os normativos corporativos de modelagem;
- **Otimização física do banco:** particionamento por data das tabelas massivas, estratégia explícita de índices, compressão, arquivamento em camadas e manutenção compatível com a janela reduzida;
- **Governança de dados:** validação formal de modelos, dicionário, metadados, linhagem, classificação da informação e qualidade de dados com o gestor da informação;
- **Atuação coordenada de ADs e DBAs:** fronteiras claras, presença desde o refinamento, DoR/DoD específicos de dados e mudança controlada em produção;
- **Monitoramento contínuo:** baselines, indicadores de recursos, concorrência e crescimento, comitê técnico e testes de carga recorrentes;
- **Resultado esperado:** melhoria objetiva de performance, integridade, segurança e disponibilidade, com trajetória sustentável.

O roadmap em cinco fases entrega alívio imediato (fase 2) sem hipotecar a correção estrutural (fases 3 e 4) e institucionaliza a prevenção (fase 5). Mais do que resolver a crise atual, o plano estabelece o mecanismo permanente — pessoas, processos, padrões e telemetria — que garante a **sustentabilidade da evolução do SIADL** no ritmo que o negócio exige.

---
*Documento elaborado como resolução de Produção Temática — PSI 15358 — GECPA. Cenário hipotético, sem uso de informações confidenciais.*
