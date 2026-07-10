**PROPOSTA TÉCNICA E GERENCIAL: ESTUDO DE CASO SIADL**
**PSI Nº 15358 – Coordenador de Projetos/Processos Matriz (GECPA)**

---

### 1. Introdução Executiva

O Sistema de Atendimento Digital (SIADL) é um pilar crítico no ecossistema de TI da CAIXA, processando 25 mil transações por minuto e suportando mais de 10 mil usuários simultâneos. Contudo, o ambiente apresenta sintomas agudos de degradação estrutural: inconsistência de dados, timeouts, picos de contenção (CPU/Memória) e crescimento insustentável de tabelas transacionais que já compõem um volume de 12 TB.

Considerando a arquitetura monolítica atual (sem integrações por APIs/microsserviços) e a alta criticidade OLTP, os incidentes não são falhas pontuais, mas reflexos de um esgotamento da atual arquitetura de dados relacional.

Este documento apresenta uma proposta técnica e gerencial completa para o re-design do modelo de dados conceitual e físico do SIADL em SQL Server 2025. A abordagem combina a reorganização estrutural da modelagem (Governança e Administração de Dados - AD) com a otimização extrema de performance e resiliência física (Administração de Banco de Dados - DBA), garantindo escalabilidade, integridade, segurança e sustentabilidade operacional dentro da restrita janela de manutenção da instituição.

---

### 2. Diagnóstico Técnico Inicial

A análise dos sintomas do SIADL revela que os problemas decorrem de um descompasso entre o design do banco e o volume/velocidade dos dados corporativos.

* **Inconsistência de Dados e Tipagem Inadequada:** A utilização do tipo `TIMESTAMP` para datas de negócio no SQL Server é um erro crítico de design. No SQL Server, `TIMESTAMP` é um sinônimo depreciado para `ROWVERSION` (um número binário sequencial usado para controle de concorrência), não armazenando data ou hora. Isso causa corrupção lógica das regras de negócio. Além disso, a possível ausência de integridade referencial (FKs) e Constraints permite dados órfãos.
* **Lentidão, Timeouts e Picos de CPU/Memória (Concorrência):** Em um ambiente com 25 mil TPM, a ausência de uma estratégia explícita de índices gera *Table Scans* em tabelas com bilhões de registros (ex: `TRANSACAO`). Isso inunda o *Buffer Cache* (consumo excessivo de memória) e gera alto uso de CPU para varredura de dados. Ocorre também escalonamento de *Locks*, gerando bloqueios (*blocking* e *deadlocks*), resultando em timeouts.
* **Crescimento Acelerado e Janela de Manutenção:** Tabelas como `TRANSACAO` (4 bilhões) e `TRANSACAO_HISTORICO` (10 bilhões) crescendo a 30% ao mês sem particionamento tornam a manutenção (reconstrução de índices, atualização de estatísticas) impossível dentro da janela reduzida.
* **Ausência de Domínios Padronizados:** O uso de atributos textuais (ex: canal descrito em texto livre) gera anomalias de atualização, desperdício de I/O e lentidão em agregações.

**Direcionamento de Solução:** O diagnóstico exige uma separação clara entre dados quentes (acesso concorrente), mornos e frios (histórico), aplicação rigorosa de tipos de dados nativos, criação de constraints e implementação de particionamento físico horizontal (*Table Partitioning*).

---

### 3. Modelo de Dados Conceitual Ideal

O modelo conceitual foca nas regras de negócio da CAIXA, garantindo que a semântica dos dados do SIADL reflita fielmente a realidade operacional, independente do SGBD. Foi aplicada a separação entre dados mestres, transacionais, históricos e domínios.

**Classificação das Entidades:**

* **Mestres/Cadastrais:** CLIENTE, CONTA, DISPOSITIVO_CLIENTE (Baixa mutabilidade, alta volumetria).
* **Transacionais/Operacionais:** TRANSACAO, ATENDIMENTO, INTERACAO_ATENDIMENTO, LIMITE_CONTA (Alta concorrência, inserções/atualizações intensas).
* **Domínio/Referência:** CANAL (Estática, governada).
* **Históricas:** TRANSACAO_HISTORICO (Append-only, imutável).

| Entidade Origem | Cardinalidade | Entidade Destino | Regra de Negócio / Responsabilidade |
| --- | --- | --- | --- |
| **CLIENTE** | 1 : N | **CONTA** | Um cliente pode titularizar múltiplas contas. A conta é dependente da existência prévia do cliente. |
| **CLIENTE** | 1 : N | **ATENDIMENTO** | Todo atendimento deve estar vinculado ao cliente solicitante para rastreabilidade e visão 360º. |
| **CLIENTE** | 1 : N | **DISPOSITIVO_CLIENTE** | Mapeamento 1:N vital para motor de segurança, antifraude e biometria comportamental. |
| **CONTA** | 1 : N | **TRANSACAO** | A transação financeira pertence a uma conta. Relacionamento crítico para o cálculo de saldo e extrato. |
| **CONTA** | 1 : N | **LIMITE_CONTA** | Limites são temporais (Data Início/Fim). Permite versionamento do limite operacional da conta. |
| **ATENDIMENTO** | 1 : N | **INTERACAO_ATENDIMENTO** | O atendimento é o "guarda-chuva". As interações são o histórico granular (logs, trocas de mensagens). |
| **TRANSACAO** | 1 : N | **TRANSACAO_HISTORICO** | Auditoria de estados da transação (ex: Pendente, Processada, Estornada). |
| **CANAL** | 1 : N | **TRANSACAO** | Domínio padronizado (Ex: App, Internet Banking, ATM). Substitui o texto livre na transação. |
| **CANAL** | 1 : N | **ATENDIMENTO** | **Correção conceitual:** O canal de origem do atendimento passa a ser chave estrangeira do domínio CANAL. |

---

### 4. Modelo Físico Ideal

A tradução do modelo conceitual para o físico em SQL Server 2025 considerou o volume de 12 TB, a criticidade OLTP e a janela de manutenção restrita.

**Diretrizes Físicas Adotadas:**

1. **Tipos de Dados:** Substituição imediata de `TIMESTAMP` por `DATETIME2(3)` (precisão de milissegundos) para datas de negócio. O uso de `ROWVERSION` será restrito a tabelas que requerem controle de concorrência otimista via aplicação.
2. **Particionamento Horizontal (Table Partitioning):** Tabelas massivas (`TRANSACAO`, `ATENDIMENTO`, `TRANSACAO_HISTORICO`) serão particionadas por data (ex: `DataCriacao` com partição diária ou mensal, utilizando o recurso *Range Right*). Isso permite *Partition Switching* para arquivamento instantâneo, viabilizando manutenções na janela reduzida.
3. **Compressão de Dados:** Aplicação de *Page Compression* nativa do SQL Server nos *Filegroups* que armazenam partições históricas (dados frios/mornos), reduzindo drastically o I/O de disco e o consumo do Buffer Pool, sem onerar a CPU nas transações quentes.
4. **Estratégia de Índices:**
* **Clustered Indexes:** Em tabelas sequenciais de alto volume, uso de colunas numéricas incrementais (`BIGINT IDENTITY` ou `SEQUENCE`) combinadas com a chave de partição para evitar *Page Splits* e fragmentação.
* **Nonclustered Indexes:** Criação cirúrgica cobrindo os predicados de busca (`WHERE`) e junções (`JOIN`), com cláusula `INCLUDE` para evitar consultas de *Key Lookup* na tabela principal.
* **Índices Filtrados:** Nas tabelas `LIMITE_CONTA` e `ATENDIMENTO`, índices filtrados apenas para registros "Ativos" (ex: `WHERE Status = 'A'`), otimizando o tamanho do índice e o uso de memória.



**Proposta de Pseudo-DDL (Exemplo: Tabela TRANSACAO):**

```sql
-- Criação de Função e Esquema de Particionamento (Mensal)
CREATE PARTITION FUNCTION pf_Transacao_Data (DATETIME2(3)) AS RANGE RIGHT FOR VALUES ('2025-01-01', '2025-02-01', ...);
CREATE PARTITION SCHEME ps_Transacao_Data AS PARTITION pf_Transacao_Data ALL TO ([PRIMARY]); -- Recomenda-se Filegroups separados

CREATE TABLE dbo.TRANSACAO (
    IdTransacao BIGINT IDENTITY(1,1) NOT NULL,
    IdConta BIGINT NOT NULL,
    IdCanal SMALLINT NOT NULL, -- Uso de domínio numérico pequeno
    DataTransacao DATETIME2(3) NOT NULL, -- Correção do tipo de dados
    Valor DECIMAL(18,4) NOT NULL,
    CodigoStatus TINYINT NOT NULL,
    RowVer ROWVERSION NOT NULL, -- Apenas para controle de concorrência na aplicação
    CONSTRAINT PK_Transacao PRIMARY KEY CLUSTERED (IdTransacao, DataTransacao) 
    ON ps_Transacao_Data (DataTransacao) -- Particionamento alinhado
);

-- Relacionamentos Físicos (Constraints)
ALTER TABLE dbo.TRANSACAO ADD CONSTRAINT FK_Transacao_Conta FOREIGN KEY (IdConta) REFERENCES dbo.CONTA (IdConta);
ALTER TABLE dbo.TRANSACAO ADD CONSTRAINT FK_Transacao_Canal FOREIGN KEY (IdCanal) REFERENCES dbo.CANAL (IdCanal);

-- Índice não clusterizado para a tela de extrato do cliente (Cobrindo a consulta)
CREATE NONCLUSTERED INDEX IX_Transacao_IdConta_Data ON dbo.TRANSACAO (IdConta, DataTransacao DESC) INCLUDE (Valor, CodigoStatus) ON ps_Transacao_Data (DataTransacao);

```

---

### 5. Justificativa das Intervenções entre Modelo Conceitual e Físico

O modelo físico distancia-se intencionalmente do conceitual para atender aos requisitos não-funcionais (NFRs) de um ambiente OLTP extremo:

* **Particionamento Físico:** No conceitual, `TRANSACAO` é uma entidade única. No físico, é fatiada em centenas de partições. **Justificativa:** Sem isso, o `DBCC DBREINDEX` demoraria dias, estourando a janela. Com particionamento, desfragmentamos apenas a partição do mês atual.
* **Chaves Primárias Compostas por Necessidade Física:** A PK física da tabela `TRANSACAO` inclui `DataTransacao` (Partitioning Key). **Justificativa:** O SQL Server exige que a coluna de particionamento faça parte do índice clusterizado/PK único para garantir o alinhamento das partições.
* **Desnormalização Controlada (Histórico):** A tabela `TRANSACAO_HISTORICO` pode replicar o ID da Conta fisicamente, mesmo que conceitualmente pertença apenas à Transação. **Justificativa:** Permite que a aplicação busque o histórico completo de uma conta sem precisar realizar um *JOIN* custoso com a massiva tabela `TRANSACAO`.
* **Separação Quente/Frio:** Dados *append-only* que não sofrem alteração são transferidos (via *Partition Switching*) para Filegroups em discos de menor custo e sofrem compressão de página (*Page Compression*). **Justificativa:** Redução drástica de custo de Storage de 12 TB e otimização do cache de memória para os dados do dia a dia.

---

### 6. Plano de Trabalho para Atuação de ADs e DBAs

Para garantir a sustentação e a governança a longo prazo, o Capítulo de Banco de Dados atuará integrado aos Squads de desenvolvimento, aplicando a metodologia de *Shift-Left* (atuação na origem do desenvolvimento).

**Administradores de Dados (ADs)**

* **Responsabilidades:** Guardiões do Modelo Conceitual/Lógico e da Governança. Validam a padronização de nomenclatura, domínios (ex: tabela CANAL), dicionário de dados corporativo, glossário de termos de negócio e linhagem de dados.
* **Fronteira:** O AD atua no *O Quê* e no *Significado*. Não se envolve com IOPS ou fragmentação de disco.

**Administradores de Banco de Dados (DBAs)**

* **Responsabilidades:** Guardiões do Modelo Físico, Performance e Resiliência. Projetam índices, estratégias de *backup/restore*, gerenciam *Locks/Blocks*, executam *tuning* de consultas (*Execution Plans*), configuram AlwaysOn Availability Groups (Alta Disponibilidade) e gerenciam capacidades de Storage/Memória.
* **Fronteira:** O DBA atua no *Como* e na *Velocidade*. Não altera regras de negócio, mas garante que elas executem em milissegundos.

**Dinâmica com o Squad (Cultura Ágil):**

* **Refinamento:** AD e Arquitetura participam das cerimonias de planejamento. Nenhuma user story com impacto em dados entra na Sprint sem aprovação do AD.
* **Definition of Ready (DoR):** A demanda só é liberada para código se o modelo lógico estiver aprovado pelo AD e o risco de impacto avaliado pelo DBA.
* **Definition of Done (DoD):** A entrega só é concluída se os scripts DDL estiverem homologados, índices validados em ambiente de *Staging* (com volumetria simulada) e aprovação final de performance pelo DBA.

---

### 7. Estratégia de Evolução das Demandas de Banco de Dados

A gestão dos 12 TB e do crescimento de 30% a.m. exige transição de uma postura reativa para proativa:

1. **Monitoramento e Observabilidade:** Implementação de ferramentas como o *Query Store* do SQL Server para criar baselines de performance e capturar regressões de planos de execução. Uso de *Extended Events (XEvents)* para capturar *Deadlocks* e consultas com *Timeout* ou duração superior a 3 segundos.
2. **Manutenção Inteligente de Índices e Estatísticas:** Abandono de rotinas *One-Size-Fits-All*. Implementação de scripts dinâmicos (como Ola Hallengren) que reconstroem apenas índices fragmentados acima de 30% e preferencialmente operando no nível da partição (*partition-level rebuild*). Atualização de estatísticas com amostragem assíncrona (`AUTO_UPDATE_STATISTICS_ASYNC ON`) para evitar bloqueios diurnos.
3. **Gestão do Ciclo de Vida do Dado (ILM):** Expurgos periódicos automatizados. Registros da tabela `INTERACAO_ATENDIMENTO` com mais de 3 anos serão movidos via *Sliding Window Partitioning* para bases de arquivamento ou *Data Lakes*, retirando peso do ambiente OLTP.
4. **Comitê Técnico de Débitos:** Reuniões quinzenais entre Coordenador, ADs, DBAs e Tech Leads para priorizar refatorações e eliminação de débitos técnicos antes que afetem o cliente final.

---

### 8. Roadmap de Implantação

A execução será feita em fases mitigando riscos de paralisação do SIADL:

| Fase | Objetivo | Principais Ações | Responsáveis | Resultados Esperados |
| --- | --- | --- | --- | --- |
| **1** | Diagnóstico e Contenção | Coleta de baselines (*Query Store*); Identificação das "Top 10" queries ofensoras de CPU e I/O. | DBA, Coordenador | Estabilização inicial; mapa de dores claro. |
| **2** | Correções Emergenciais | Criação de *Nonclustered Indexes* críticos; Ajustes pontuais de *Timeouts*; Atualização forçada de estatísticas. | DBA, Squad | Redução drástica de picos de CPU e incidentes de lentidão. |
| **3** | Revisão Conceitual e Lógica | Mapeamento de domínios; Correção da tipagem (`TIMESTAMP` -> `DATETIME2`) nos artefatos; Normalização. | AD, Negócio | Documentação corporativa aprovada; eliminação de anomalias lógicas. |
| **4** | Reestruturação Física (Big Bang Controlado) | Criação de esquemas de particionamento; Migração de dados históricos; Compressão de página; Chaves Estrangeiras. | DBA, AD, Operação | Desoneração de Storage; Viabilização da janela de manutenção. |
| **5** | Governança e Automação | Integração AD/DBA na esteira CI/CD; Relatórios de capacidade de crescimento mensal automatizados. | Coordenador, Todos | Prevenção de novos débitos técnicos; sustentabilidade evolutiva. |

---

### 9. Riscos e Mitigadores

| Risco | Impacto | Estratégia de Mitigação |
| --- | --- | --- |
| **Indisponibilidade prolongada na migração de dados (Fase 4)** | Alto | Criação da nova estrutura em paralelo. Migração gradual. Uso de replicação transacional provisória ou migração na madrugada. |
| **Janela de manutenção insuficiente para aplicar índices** | Alto | Criação de índices com a cláusula `ONLINE=ON` e `RESUMABLE=ON` (SQL Server 2025), permitindo pausar a criação se a janela fechar. |
| **Falha de scripts ou inconsistência lógica pós-deploy** | Crítico | Homologação estrita. Exigência de plano de *Rollback* validado e testado. Execução em horários de menor acesso. |
| **Regressão de Performance** | Médio | Utilização do recurso *Force Plan* no *Query Store* para reverter imediatamente ao plano de execução anterior e funcional. |
| **Atrito entre Squads e Capítulo de Dados** | Médio | Implantação do processo de *Shift-Left*, treinamentos conjuntos e clarificação de papéis (RACI). |

---

### 10. Conclusão Executiva

A arquitetura do SIADL atingiu o limite fisiológico de sua estrutura relacional primária. O diagnóstico evidencia que a solução não reside no mero acréscimo de hardware (CPU/RAM), mas sim em um re-design inteligente que abarque desde o significado do dado até sua alocação no disco físico.

A adoção desta proposta resolve a raiz dos problemas: (1) Tipagens corretas e restrições garantirão a **integridade** da informação; (2) O particionamento horizontal e o *Data Compression* resolverão os problemas de **janela de manutenção e crescimento exponencial**; (3) A nova estratégia de índices mitigará contenções, garantindo a **performance e alta disponibilidade** em cenário de concorrência massiva; e (4) O fluxo processual coordenado entre ADs e DBAs implementará a **governança técnica** necessária para o futuro.

Desta forma, asseguramos que o SIADL continuará a prestar atendimento digital de excelência aos milhões de clientes da CAIXA, com total resiliência operacional e sustentabilidade arquitetural.

PROPOSTA TÉCNICA E GERENCIAL: ESTUDO DE CASO SIADL
PSI Nº 15358 – Coordenador de Projetos/Processos Matriz (GECPA)