# Otimização de Tabelas

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Otimização de Tabelas - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimização%20de%20Tabelas.aspx)

## Contexto

Este documento apresenta **técnicas de otimização de tabelas** para Microsoft SQL Server, Oracle e DB2, cobrindo índices, estatísticas, particionamento, compactação e monitoramento de performance.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **Microsoft SQL Server Performance Tuning Guide**
- **Oracle Database Performance Tuning Guide**
- **IBM DB2 Performance Best Practices**

## 1. Índices

### 1.1. Estratégia de Indexação

**Princípio**: Índices melhoram SELECT, mas degradam INSERT/UPDATE/DELETE.

**Balanceamento**:
- **Muitos índices**: Operações de escrita lentas
- **Poucos índices**: Consultas lentas (table scans)

**Regra de Ouro**: Criar índices com base em **padrões de acesso reais**.

### 1.2. Tipos de Índices SQL Server

#### Clustered Index

**Ordena fisicamente** os dados da tabela.

**Características**:
- Apenas 1 por tabela
- Geralmente a PK
- Define ordem física de armazenamento

```sql
CREATE CLUSTERED INDEX CIX_SPH_TRANSACAO_DATA 
    ON SPH_TRANSACAO(DATA_TRANSACAO_DT);
```

**Quando usar**:
- Colunas com range queries (`BETWEEN`, `>`, `<`)
- ORDER BY frequente
- Dados sequenciais (IDENTITY, datas)

#### Non-Clustered Index

**Estrutura separada** apontando para os dados.

```sql
CREATE NONCLUSTERED INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE(CPF_CNPJ_NK);
```

**Quando usar**:
- Colunas em WHERE, JOIN, ORDER BY
- Múltiplos padrões de acesso

#### Covering Index (Include)

**Inclui colunas adicionais** no nível folha (não na árvore).

```sql
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE 
    ON SPH_CONTRATO(CLIENTE_ID)
    INCLUDE (DATA_ASSINATURA_DT, VALOR_VL);
```

**Vantagem**: Query busca tudo no índice (evita lookup na tabela).

**Exemplo**:
```sql
-- Esta query usa apenas o índice (covering)
SELECT DATA_ASSINATURA_DT, VALOR_VL
FROM SPH_CONTRATO
WHERE CLIENTE_ID = 123;
```

#### Filtered Index

**Índice parcial** (apenas subset dos dados).

```sql
CREATE INDEX IDX_SPH_CONTRATO_ATIVO 
    ON SPH_CONTRATO(CLIENTE_ID)
    WHERE ATIVO_IN = 'S';
```

**Vantagens**:
- Menor tamanho
- Manutenção mais rápida
- Melhor para queries que sempre filtram a mesma condição

#### Columnstore Index

**Armazenamento colunar** (vs row-based tradicional).

```sql
-- Clustered Columnstore (DW/Analytics)
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;

-- Non-Clustered Columnstore (OLTP + Analytics)
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_SPH_TRANSACAO 
    ON SPH_TRANSACAO(DATA_TRANSACAO_DT, VALOR_VL, CLIENTE_ID);
```

**Quando usar**:
- Data Warehouse (fatos dimensionais)
- Consultas analíticas (agregações, GROUP BY)
- Tabelas > 1 milhão linhas

**Benefícios**:
- Compressão extrema (até 10x)
- Queries analíticas 10-100x mais rápidas

### 1.3. Índices em FKs (Obrigatório TE074)

**Sempre criar índices em colunas FK**:

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- Índices obrigatórios em FKs
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE_ID 
    ON SPH_CONTRATO(CLIENTE_ID);
CREATE INDEX IDX_SPH_CONTRATO_PRODUTO_ID 
    ON SPH_CONTRATO(PRODUTO_ID);
```

**Benefícios**:
- Performance em JOINs
- Performance em DELETE da tabela pai (verifica filhos)

### 1.4. Monitoramento de Índices

#### Índices Faltando (SQL Server)

```sql
SELECT 
    DatabaseName = DB_NAME(mid.database_id),
    TableName = OBJECT_NAME(mid.object_id, mid.database_id),
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns,
    ImpactoMedio = CAST(mid.avg_user_impact AS DECIMAL(5,2)),
    TotalBuscas = mid.user_seeks,
    CustoEstimado = CAST(mid.avg_total_user_cost * mid.avg_user_impact * (mid.user_seeks + mid.user_scans) AS BIGINT)
FROM sys.dm_db_missing_index_details AS mid
INNER JOIN sys.dm_db_missing_index_groups AS mig 
    ON mid.index_handle = mig.index_handle
WHERE mid.database_id = DB_ID()
ORDER BY CustoEstimado DESC;
```

#### Índices Não Usados

```sql
SELECT 
    TableName = OBJECT_NAME(i.object_id),
    IndexName = i.name,
    TipoIndice = i.type_desc,
    Buscas = ISNULL(us.user_seeks, 0),
    Scans = ISNULL(us.user_scans, 0),
    Lookups = ISNULL(us.user_lookups, 0),
    Atualizacoes = ISNULL(us.user_updates, 0),
    TamanhoMB = (SUM(ps.used_page_count) * 8) / 1024
FROM sys.indexes i
LEFT JOIN sys.dm_db_index_usage_stats us 
    ON i.object_id = us.object_id AND i.index_id = us.index_id
LEFT JOIN sys.dm_db_partition_stats ps 
    ON i.object_id = ps.object_id AND i.index_id = ps.index_id
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
  AND i.index_id > 0
GROUP BY i.object_id, i.name, i.type_desc, us.user_seeks, us.user_scans, us.user_lookups, us.user_updates
HAVING ISNULL(us.user_seeks, 0) + ISNULL(us.user_scans, 0) + ISNULL(us.user_lookups, 0) = 0
ORDER BY TamanhoMB DESC;
```

#### Fragmentação de Índices

```sql
SELECT 
    TableName = OBJECT_NAME(ips.object_id),
    IndexName = i.name,
    FragmentacaoPC = CAST(ips.avg_fragmentation_in_percent AS DECIMAL(5,2)),
    Paginas = ips.page_count,
    TamanhoMB = (ips.page_count * 8) / 1024,
    CASE 
        WHEN ips.avg_fragmentation_in_percent > 30 THEN 'REBUILD'
        WHEN ips.avg_fragmentation_in_percent > 10 THEN 'REORGANIZE'
        ELSE 'OK'
    END AS AcaoRecomendada
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.page_count > 100  -- Ignorar índices pequenos
ORDER BY ips.avg_fragmentation_in_percent DESC;
```

### 1.5. Manutenção de Índices

#### Reorganize (Fragmentação 10-30%)

**Operação online**, não bloqueia tabela.

```sql
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REORGANIZE;
```

#### Rebuild (Fragmentação > 30%)

**Recria índice completamente**.

```sql
-- Offline (bloqueia tabela)
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REBUILD;

-- Online (SQL Server Enterprise)
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REBUILD WITH (ONLINE = ON);
```

#### Rebuild com Compactação

```sql
ALTER INDEX ALL ON SPH_CLIENTE 
    REBUILD WITH (DATA_COMPRESSION = PAGE, ONLINE = ON);
```

#### Job de Manutenção Automática

**SQL Server Agent**:
```sql
-- Script simplificado (usar Ola Hallengren scripts em produção)
DECLARE @TableName NVARCHAR(128), @IndexName NVARCHAR(128);
DECLARE @Fragmentation DECIMAL(5,2);
DECLARE @SQL NVARCHAR(MAX);

DECLARE idx_cursor CURSOR FOR
SELECT 
    OBJECT_NAME(ips.object_id),
    i.name,
    ips.avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.page_count > 100;

OPEN idx_cursor;
FETCH NEXT FROM idx_cursor INTO @TableName, @IndexName, @Fragmentation;

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Fragmentation > 30
        SET @SQL = 'ALTER INDEX [' + @IndexName + '] ON [' + @TableName + '] REBUILD WITH (DATA_COMPRESSION = PAGE)';
    ELSE IF @Fragmentation > 10
        SET @SQL = 'ALTER INDEX [' + @IndexName + '] ON [' + @TableName + '] REORGANIZE';
    ELSE
        SET @SQL = NULL;
    
    IF @SQL IS NOT NULL
        EXEC sp_executesql @SQL;
    
    FETCH NEXT FROM idx_cursor INTO @TableName, @IndexName, @Fragmentation;
END

CLOSE idx_cursor;
DEALLOCATE idx_cursor;
```

## 2. Estatísticas

### 2.1. Importância

**Estatísticas** informam ao otimizador sobre **distribuição de dados** (cardinalidade, histogramas).

**Impacto**: Estatísticas desatualizadas causam planos de execução ruins.

### 2.2. Atualização Automática

**SQL Server**: AUTO_CREATE_STATISTICS e AUTO_UPDATE_STATISTICS habilitadas por padrão.

**Verificar**:
```sql
SELECT 
    name,
    is_auto_create_stats_on,
    is_auto_update_stats_on,
    is_auto_update_stats_async_on
FROM sys.databases
WHERE name = DB_NAME();
```

**Habilitar**:
```sql
ALTER DATABASE [MeuBanco] SET AUTO_CREATE_STATISTICS ON;
ALTER DATABASE [MeuBanco] SET AUTO_UPDATE_STATISTICS ON;
```

### 2.3. Atualização Manual

**Atualizar estatísticas de uma tabela**:
```sql
UPDATE STATISTICS SPH_CLIENTE WITH FULLSCAN;
```

**Atualizar todas as estatísticas do banco**:
```sql
EXEC sp_updatestats;
```

### 2.4. Monitorar Estatísticas Desatualizadas

```sql
SELECT 
    TableName = OBJECT_NAME(stat.object_id),
    StatName = stat.name,
    UltimaAtualizacao = sp.last_updated,
    Linhas = sp.rows,
    LinhasModificadas = sp.modification_counter,
    PercentualModificado = CAST(sp.modification_counter * 100.0 / NULLIF(sp.rows, 0) AS DECIMAL(5,2))
FROM sys.stats stat
CROSS APPLY sys.dm_db_stats_properties(stat.object_id, stat.stats_id) sp
WHERE OBJECTPROPERTY(stat.object_id, 'IsUserTable') = 1
  AND sp.modification_counter > 0
ORDER BY PercentualModificado DESC;
```

## 3. Compactação (TE074 3.2.9)

### 3.1. Tipos de Compactação SQL Server

#### ROW Compression

Comprime dados em nível de linha.

**Benefícios**: 20-40% economia de espaço.

```sql
ALTER TABLE SPH_CLIENTE REBUILD WITH (DATA_COMPRESSION = ROW);
```

#### PAGE Compression

Comprime dados em nível de página (inclui ROW + prefix + dictionary).

**Benefícios**: 40-70% economia de espaço (recomendado TE074).

```sql
CREATE TABLE SPH_CONTRATO (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Ou alterar existente
ALTER TABLE SPH_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 3.2. Estimativa de Compactação

```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'SPH_CLIENTE',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';
```

**Resultado**:
- `size_with_current_compression_setting (KB)`: Tamanho atual
- `size_with_requested_compression_setting (KB)`: Tamanho estimado após compactação
- `sample_size_with_current_compression_setting (KB)`: Amostra atual
- `sample_size_with_requested_compression_setting (KB)`: Amostra comprimida

### 3.3. Compactação em Índices

```sql
-- Apenas o índice (não a tabela)
CREATE INDEX IDX_SPH_CONTRATO_DATA 
    ON SPH_CONTRATO(DATA_ASSINATURA_DT)
    WITH (DATA_COMPRESSION = PAGE);

-- Todos os índices da tabela
ALTER INDEX ALL ON SPH_CONTRATO 
    REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 3.4. Compactação em Partições

```sql
-- Comprimir partições específicas
ALTER TABLE SPH_TRANSACAO REBUILD PARTITION = 1 
    WITH (DATA_COMPRESSION = PAGE);

-- Comprimir todas partições
ALTER TABLE SPH_TRANSACAO REBUILD PARTITION = ALL 
    WITH (DATA_COMPRESSION = PAGE);
```

## 4. Particionamento (TE074 3.2.8)

### 4.1. Quando Particionar

**Critérios**:
- Volumetria > 100 milhões linhas/ano
- Queries filtradas por período
- Necessidade de manutenção granular (expurgo, backup)

### 4.2. Particionamento por Data (SQL Server)

**Exemplo - Particionamento Mensal**:

```sql
-- 1. Criar filegroups (um por partição)
ALTER DATABASE [MeuBanco] 
    ADD FILEGROUP FG_2025_01;
ALTER DATABASE [MeuBanco] 
    ADD FILE (NAME = 'Data_2025_01', FILENAME = 'D:\Data\Data_2025_01.ndf', SIZE = 1GB) 
    TO FILEGROUP FG_2025_01;

-- Repetir para cada mês...

-- 2. Criar função de partição
CREATE PARTITION FUNCTION PF_Mensal (DATE)
AS RANGE RIGHT FOR VALUES 
(
    '2025-01-01', '2025-02-01', '2025-03-01', '2025-04-01',
    '2025-05-01', '2025-06-01', '2025-07-01', '2025-08-01',
    '2025-09-01', '2025-10-01', '2025-11-01', '2025-12-01',
    '2026-01-01'
);

-- 3. Criar esquema de partição
CREATE PARTITION SCHEME PS_Mensal
AS PARTITION PF_Mensal
TO (
    FG_2024_12,  -- Dados < 2025-01-01
    FG_2025_01,  -- 2025-01-01 <= Dados < 2025-02-01
    FG_2025_02,  -- 2025-02-01 <= Dados < 2025-03-01
    -- ...
    FG_2025_12,
    FG_2026_01   -- Dados >= 2026-01-01
);

-- 4. Criar tabela particionada
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2),
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)  -- PK deve incluir coluna de particionamento
) ON PS_Mensal(DATA_TRANSACAO_DT)
WITH (DATA_COMPRESSION = PAGE);
```

### 4.3. Manutenção de Partições

#### Adicionar Nova Partição

```sql
-- Criar filegroup para novo mês
ALTER DATABASE [MeuBanco] ADD FILEGROUP FG_2026_02;
ALTER DATABASE [MeuBanco] ADD FILE (...) TO FILEGROUP FG_2026_02;

-- Configurar próxima partição
ALTER PARTITION SCHEME PS_Mensal NEXT USED FG_2026_02;

-- Dividir partição (split)
ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE ('2026-02-01');
```

#### Remover Partição Antiga (Expurgo)

```sql
-- Mover dados para staging (opcional, se quiser arquivar)
SELECT * INTO SPH_TRANSACAO_ARQUIVO_2024_01
FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2024-01-01' AND DATA_TRANSACAO_DT < '2024-02-01';

-- Truncar partição (super rápido)
TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (1));

-- Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');
```

### 4.4. Consultar Informações de Partições

```sql
SELECT 
    TableName = OBJECT_NAME(p.object_id),
    PartitionNumber = p.partition_number,
    Linhas = p.rows,
    TamanhoMB = (SUM(au.total_pages) * 8) / 1024,
    Compressao = p.data_compression_desc,
    FileGroup = fg.name,
    ValorLimite = rv.value
FROM sys.partitions p
INNER JOIN sys.allocation_units au ON p.partition_id = au.container_id
INNER JOIN sys.indexes i ON p.object_id = i.object_id AND p.index_id = i.index_id
LEFT JOIN sys.partition_schemes ps ON i.data_space_id = ps.data_space_id
LEFT JOIN sys.destination_data_spaces dds ON ps.data_space_id = dds.partition_scheme_id AND p.partition_number = dds.destination_id
LEFT JOIN sys.filegroups fg ON dds.data_space_id = fg.data_space_id
LEFT JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
LEFT JOIN sys.partition_range_values rv ON pf.function_id = rv.function_id AND p.partition_number = rv.boundary_id
WHERE OBJECT_NAME(p.object_id) = 'SPH_TRANSACAO'
GROUP BY p.object_id, p.partition_number, p.rows, p.data_compression_desc, fg.name, rv.value
ORDER BY p.partition_number;
```

## 5. Normalização vs Desnormalização

### 5.1. Normalização (3NF - TE074 Obrigatória)

**Benefícios**:
- Elimina redundância
- Facilita manutenção
- Evita anomalias de atualização

**Aplicação**: Sistemas transacionais (OLTP).

### 5.2. Desnormalização Controlada

**Quando considerar** (com justificativa):
- Data Warehouse (Star Schema)
- Colunas calculadas/cache para performance
- Dados históricos (snapshot tables)

**Exemplo - Cache de Nome do Cliente**:

```sql
-- ✅ Normalizado (TE074)
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- ❌ Desnormalizado (evitar, mas pode ser justificado para relatórios)
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_CACHE_NM VARCHAR(200),  -- Cache desnormalizado
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- Trigger para manter cache atualizado
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET NOME_CLIENTE_CACHE_NM = i.NOME_CLIENTE_NM
    FROM SPH_CONTRATO c
    INNER JOIN inserted i ON c.CLIENTE_ID = i.CLIENTE_ID
    WHERE UPDATE(NOME_CLIENTE_NM);
END;
```

**Documentar** no PowerDesigner (comment): "Coluna desnormalizada para performance de relatórios. Mantida via trigger TR_SPH_CLIENTE_AFTER_UPDATE."

## 6. Colunas Computadas

### 6.1. Computed Columns Persistidas

**Armazenar resultado de cálculo** (atualizado automaticamente).

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    VALOR_PRINCIPAL_VL DECIMAL(18,2),
    VALOR_JUROS_VL DECIMAL(18,2),
    VALOR_TOTAL_VL AS (VALOR_PRINCIPAL_VL + VALOR_JUROS_VL) PERSISTED,
    -- Pode criar índice em coluna computada persistida
);

CREATE INDEX IDX_SPH_CONTRATO_VALOR_TOTAL 
    ON SPH_CONTRATO(VALOR_TOTAL_VL);
```

**Vantagens**:
- Evita cálculos repetidos
- Pode ser indexada
- Mantida automaticamente

## 7. Monitoramento de Performance

### 7.1. Queries Lentas

```sql
SELECT TOP 20
    TotalExecucoes = qs.execution_count,
    MediaDuracaoMS = CAST(qs.total_elapsed_time / qs.execution_count / 1000.0 AS DECIMAL(10,2)),
    MediaCPU_MS = CAST(qs.total_worker_time / qs.execution_count / 1000.0 AS DECIMAL(10,2)),
    MediaLeituras = qs.total_logical_reads / qs.execution_count,
    UltimaExecucao = qs.last_execution_time,
    QueryText = SUBSTRING(st.text, (qs.statement_start_offset / 2) + 1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(st.text)
            ELSE qs.statement_end_offset
        END - qs.statement_start_offset) / 2) + 1)
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) st
ORDER BY MediaDuracaoMS DESC;
```

### 7.2. Waits (Gargalos)

```sql
SELECT TOP 20
    WaitType = wait_type,
    TempoEsperaMS = wait_time_ms,
    PercentualTotal = CAST(100.0 * wait_time_ms / SUM(wait_time_ms) OVER() AS DECIMAL(5,2)),
    MediaEsperaMS = CAST(wait_time_ms * 1.0 / waiting_tasks_count AS DECIMAL(10,2)),
    TotalTarefasEsperando = waiting_tasks_count
FROM sys.dm_os_wait_stats
WHERE wait_type NOT IN (
    'CLR_SEMAPHORE', 'LAZYWRITER_SLEEP', 'RESOURCE_QUEUE',
    'SLEEP_TASK', 'SLEEP_SYSTEMTASK', 'SQLTRACE_BUFFER_FLUSH', 'WAITFOR',
    'LOGMGR_QUEUE', 'CHECKPOINT_QUEUE', 'REQUEST_FOR_DEADLOCK_SEARCH',
    'XE_TIMER_EVENT', 'BROKER_TO_FLUSH', 'BROKER_TASK_STOP', 'CLR_MANUAL_EVENT',
    'CLR_AUTO_EVENT', 'DISPATCHER_QUEUE_SEMAPHORE', 'FT_IFTS_SCHEDULER_IDLE_WAIT',
    'XE_DISPATCHER_WAIT', 'XE_DISPATCHER_JOIN', 'SQLTRACE_INCREMENTAL_FLUSH_SLEEP'
)
ORDER BY wait_time_ms DESC;
```

**Waits Comuns**:
- `PAGEIOLATCH_*`: I/O lento (considerar SSD, mais memória)
- `LCK_*`: Locks/bloqueios (otimizar transações, índices)
- `CXPACKET`: Paralelismo excessivo (ajustar MAXDOP)

### 7.3. Bloqueios

```sql
SELECT 
    Bloqueante = blocking_session_id,
    Bloqueado = session_id,
    TempoEsperaSegundos = wait_time / 1000,
    TipoRecurso = wait_type,
    Comando = (SELECT text FROM sys.dm_exec_sql_text(sql_handle))
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0;
```

## Checklist de Otimização

### Índices
- [ ] Índices em FKs (obrigatório)
- [ ] Índices em colunas de WHERE/JOIN frequentes
- [ ] Covering indexes para queries críticas
- [ ] Monitoramento de índices faltando
- [ ] Remoção de índices não usados
- [ ] Manutenção periódica (REORGANIZE/REBUILD)

### Estatísticas
- [ ] AUTO_UPDATE_STATISTICS habilitado
- [ ] Atualização manual após cargas grandes
- [ ] Monitoramento de estatísticas desatualizadas

### Compactação
- [ ] PAGE compression em todas tabelas (TE074)
- [ ] Estimativa antes de aplicar
- [ ] Compactação em índices

### Particionamento
- [ ] Avaliado para tabelas > 100M linhas/ano
- [ ] Particionamento por data
- [ ] Automação de manutenção (split/merge)

### Normalização
- [ ] 3NF aplicada (TE074 obrigatória)
- [ ] Desnormalização justificada e documentada

### Monitoramento
- [ ] Queries lentas identificadas e otimizadas
- [ ] Waits monitorados
- [ ] Bloqueios investigados

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.8, 3.2.9)
