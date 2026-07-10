# Particionamento

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Particionamento - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Particionamento.aspx)

## Contexto

Este documento detalha **estratégias de particionamento de tabelas** em Microsoft SQL Server, Oracle e DB2, conforme **TE074**, incluindo critérios de aplicação, implementação, manutenção e monitoramento.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (seção 3.2.8)
- **Microsoft SQL Server - Table Partitioning**
- **Oracle Database - Partitioning Guide**
- **IBM DB2 - Table Partitioning**

## O Que é Particionamento

### Definição

**Particionamento** divide uma tabela grande em **partições menores** (sub-tabelas) baseadas em uma coluna (partition key), mantendo **transparência lógica** (aplicação vê como uma única tabela).

**Exemplo Conceitual**:
```
Tabela SPH_TRANSACAO (50 milhões de linhas)
├── Partição 2024-01 (4M linhas) → FileGroup FG_2024_01
├── Partição 2024-02 (4M linhas) → FileGroup FG_2024_02
├── Partição 2024-03 (4M linhas) → FileGroup FG_2024_03
...
└── Partição 2026-01 (4M linhas) → FileGroup FG_2026_01
```

**Transparência**:
```sql
-- Aplicação não sabe que a tabela é particionada
SELECT * FROM SPH_TRANSACAO WHERE DATA_TRANSACAO_DT = '2025-06-15';
-- SQL Server automaticamente acessa apenas a partição de junho/2025 (partition elimination)
```

## Quando Particionar (TE074 3.2.8.3)

### Critérios Obrigatórios

**TE074**: Tabelas com **volumetria > 100 milhões linhas/ano** devem ter particionamento avaliado.

**Outros Critérios**:
- Queries filtradas por período (WHERE data BETWEEN ...)
- Necessidade de manutenção granular (backup, expurgo, reorganização por período)
- Histórico de crescimento contínuo
- Janelas de manutenção limitadas

### Benefícios

1. **Performance**:
   - Partition elimination (acessa apenas partições relevantes)
   - Paralelização de queries
   - Índices menores por partição

2. **Manutenção**:
   - REBUILD/REORGANIZE por partição (mais rápido)
   - Backup/Restore por filegroup
   - Expurgo rápido (TRUNCATE partition vs DELETE milhões de linhas)

3. **Disponibilidade**:
   - Operações de manutenção não bloqueiam toda a tabela
   - Recuperação granular em caso de corrupção

### Quando NÃO Particionar

- Tabelas pequenas (< 10 milhões linhas)
- Ausência de filtros por data em queries principais
- Complexidade não justificada
- Recursos limitados (filegroups, discos)

## Estratégias de Particionamento

### Por Data (Mais Comum)

**Range Partitioning** por data/período.

**Exemplos**:
- Mensal: Jan/2025, Fev/2025, Mar/2025, ...
- Trimestral: Q1/2025, Q2/2025, Q3/2025, Q4/2025
- Anual: 2024, 2025, 2026, ...

**Coluna**: DATA_TRANSACAO_DT, DATA_CRIACAO_DT, PERIODO_REFERENCIA_DT

### Por Range de Valores

**Exemplo - Faixa de IDs**:
```
Partição 1: CONTRATO_ID 1 - 1.000.000
Partição 2: CONTRATO_ID 1.000.001 - 2.000.000
Partição 3: CONTRATO_ID 2.000.001 - 3.000.000
```

**Raramente usado** (crescimento desbalanceado).

### Por Lista (List Partitioning)

**Exemplo - Por Região**:
```
Partição SUL: UF_SG IN ('RS', 'SC', 'PR')
Partição SUDESTE: UF_SG IN ('SP', 'RJ', 'MG', 'ES')
Partição NORDESTE: UF_SG IN ('BA', 'PE', 'CE', ...)
```

**Aplicação**: Segregação geográfica, multi-tenancy.

### Por Hash

**Distribuição uniforme** baseada em hash da coluna.

**Aplicação**: Paralelização, sem padrão lógico de acesso.

**Desvantagem**: Sem partition elimination (queries acessam todas partições).

## Implementação SQL Server

### Arquitetura de Particionamento SQL Server

```
1. FileGroups (físico)
   ├── FG_2024_01
   ├── FG_2024_02
   └── ...

2. Partition Function (lógica)
   └── Define boundaries: '2024-01-01', '2024-02-01', ...

3. Partition Scheme (mapeamento)
   └── Mapeia function → filegroups

4. Tabela Particionada
   └── Usa Partition Scheme
```

### Passo 1: Criar FileGroups

**Recomendação**: Um filegroup por partição (isolamento físico).

```sql
-- FileGroup para Janeiro/2025
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2025_01;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2025_01',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2025_01.ndf',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP FG_2025_01;

-- FileGroup para Fevereiro/2025
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2025_02;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2025_02',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2025_02.ndf',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP FG_2025_02;

-- Repetir para cada mês/período...
```

**Alternativa**: Usar filegroup único (simplifica, mas perde isolamento físico).

### Passo 2: Criar Partition Function

**Range Right** (valor limite pertence à partição direita):

```sql
CREATE PARTITION FUNCTION PF_Mensal (DATE)
AS RANGE RIGHT FOR VALUES (
    '2024-01-01', '2024-02-01', '2024-03-01', '2024-04-01',
    '2024-05-01', '2024-06-01', '2024-07-01', '2024-08-01',
    '2024-09-01', '2024-10-01', '2024-11-01', '2024-12-01',
    '2025-01-01', '2025-02-01', '2025-03-01', '2025-04-01',
    '2025-05-01', '2025-06-01', '2025-07-01', '2025-08-01',
    '2025-09-01', '2025-10-01', '2025-11-01', '2025-12-01',
    '2026-01-01'
);
```

**Resultado** (25 partições):
- Partição 1: DATA_TRANSACAO_DT < '2024-01-01'
- Partição 2: '2024-01-01' <= DATA_TRANSACAO_DT < '2024-02-01'
- Partição 3: '2024-02-01' <= DATA_TRANSACAO_DT < '2024-03-01'
- ...
- Partição 25: DATA_TRANSACAO_DT >= '2026-01-01'

**Range Left** (valor limite pertence à partição esquerda):
```sql
CREATE PARTITION FUNCTION PF_Mensal_Left (DATE)
AS RANGE LEFT FOR VALUES (
    '2024-01-31', '2024-02-29', '2024-03-31', ...
);
```

**Recomendação**: **RANGE RIGHT** (mais intuitivo para datas).

### Passo 3: Criar Partition Scheme

**Mapeia função → filegroups**:

```sql
CREATE PARTITION SCHEME PS_Mensal
AS PARTITION PF_Mensal
TO (
    FG_2023_12,  -- Partição 1 (< 2024-01-01)
    FG_2024_01,  -- Partição 2 (>= 2024-01-01, < 2024-02-01)
    FG_2024_02,  -- Partição 3 (>= 2024-02-01, < 2024-03-01)
    FG_2024_03,
    FG_2024_04,
    FG_2024_05,
    FG_2024_06,
    FG_2024_07,
    FG_2024_08,
    FG_2024_09,
    FG_2024_10,
    FG_2024_11,
    FG_2024_12,
    FG_2025_01,
    FG_2025_02,
    FG_2025_03,
    FG_2025_04,
    FG_2025_05,
    FG_2025_06,
    FG_2025_07,
    FG_2025_08,
    FG_2025_09,
    FG_2025_10,
    FG_2025_11,
    FG_2025_12,
    FG_2026_01   -- Partição 25 (>= 2026-01-01)
);
```

**Contagem**: Número de boundaries + 1 = número de partições.

### Passo 4: Criar Tabela Particionada

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    VALOR_VL DECIMAL(18,2),
    TIPO_TP VARCHAR(20),
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_SPH_TRANSACAO PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) 
ON PS_Mensal(DATA_TRANSACAO_DT)  -- Define particionamento
WITH (DATA_COMPRESSION = PAGE);
```

**CRÍTICO**: **PK/Clustered Index deve incluir coluna de particionamento**.

### Passo 5: Criar Índices Alinhados

**Índice alinhado** usa o mesmo partition scheme.

```sql
-- Índice alinhado (particionado da mesma forma)
CREATE INDEX IDX_SPH_TRANSACAO_CLIENTE 
    ON SPH_TRANSACAO(CLIENTE_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT);

-- Ou deixar SQL Server alinhar automaticamente
CREATE INDEX IDX_SPH_TRANSACAO_TIPO 
    ON SPH_TRANSACAO(TIPO_TP)
    WITH (DROP_EXISTING = OFF);  -- Será alinhado automaticamente se incluir DATA_TRANSACAO_DT
```

**Benefício**: Operações de SWITCH/SPLIT/MERGE são atômicas.

## Converter Tabela Existente para Particionada

### Cenário: Tabela Não-Particionada Existente

```sql
-- Tabela original (não-particionada, 80M linhas)
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2)
);
```

### Passo 1: Criar Estrutura de Particionamento

```sql
-- FileGroups, Partition Function, Partition Scheme (como nos passos anteriores)
```

### Passo 2: Recriar Clustered Index Particionado

```sql
-- Dropar PK existente (implicitamente dropa clustered index)
ALTER TABLE SPH_TRANSACAO DROP CONSTRAINT PK_SPH_TRANSACAO;

-- Recriar PK particionada (incluindo DATA_TRANSACAO_DT)
ALTER TABLE SPH_TRANSACAO ADD CONSTRAINT PK_SPH_TRANSACAO 
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT)
    WITH (DATA_COMPRESSION = PAGE);
```

**Atenção**: Operação pode levar horas em tabelas grandes. Planejar janela de manutenção.

**Alternativa (Online - Enterprise Edition)**:
```sql
ALTER TABLE SPH_TRANSACAO DROP CONSTRAINT PK_SPH_TRANSACAO;
ALTER TABLE SPH_TRANSACAO ADD CONSTRAINT PK_SPH_TRANSACAO 
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT)
    WITH (ONLINE = ON, DATA_COMPRESSION = PAGE);
```

## Manutenção de Partições

### Adicionar Nova Partição (Split)

**Cenário**: Novo mês iniciando (fevereiro/2026).

```sql
-- 1. Criar filegroup para novo mês
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2026_02;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2026_02',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2026_02.ndf',
    SIZE = 1GB
) TO FILEGROUP FG_2026_02;

-- 2. Configurar próxima partição no scheme
ALTER PARTITION SCHEME PS_Mensal NEXT USED FG_2026_02;

-- 3. Dividir partição (adicionar boundary)
ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE ('2026-02-01');
```

**Resultado**: Partição existente (>= 2026-01-01) é dividida em duas:
- Partição N: 2026-01-01 <= data < 2026-02-01 (FG_2026_01)
- Partição N+1: data >= 2026-02-01 (FG_2026_02)

### Remover Partição Antiga (Merge)

**Cenário**: Expurgar dados de dezembro/2023.

```sql
-- 1. Verificar se partição está vazia (ou esvaziar)
SELECT COUNT(*) FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2023-12-01' AND DATA_TRANSACAO_DT < '2024-01-01';

-- 2. Truncar partição (super rápido - operação de metadados)
TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (2));  -- Número da partição

-- 3. Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');
```

**Resultado**: Partição 1 (< 2024-01-01) e Partição 2 (>= 2024-01-01, < 2024-02-01) são mescladas.

**Atenção**: Boundary é removida, não a partição. Dados de ambas partições são consolidados.

### Arquivar Dados Antes de Expurgo (Switch)

**SWITCH**: Move partição inteira para outra tabela (operação de metadados, instantânea).

```sql
-- 1. Criar tabela staging (mesma estrutura, mesmo filegroup)
CREATE TABLE SPH_TRANSACAO_ARQUIVO_2023_12 (
    TRANSACAO_ID BIGINT,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2),
    CONSTRAINT PK_ARQ_2023_12 PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON FG_2023_12  -- Mesmo filegroup da partição
WITH (DATA_COMPRESSION = PAGE);

-- 2. Adicionar constraint para garantir alinhamento de dados
ALTER TABLE SPH_TRANSACAO_ARQUIVO_2023_12 ADD CONSTRAINT CK_ARQ_2023_12
    CHECK (DATA_TRANSACAO_DT >= '2023-12-01' AND DATA_TRANSACAO_DT < '2024-01-01');

-- 3. Switch (instantâneo - apenas metadados)
ALTER TABLE SPH_TRANSACAO SWITCH PARTITION 2 TO SPH_TRANSACAO_ARQUIVO_2023_12;

-- 4. Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');

-- 5. (Opcional) Mover tabela arquivo para storage de longo prazo ou comprimir
```

**Benefícios**:
- Expurgo instantâneo (vs DELETE milhões de linhas)
- Dados arquivados, não perdidos
- Recuperação rápida se necessário

## Queries em Tabelas Particionadas

### Partition Elimination

**SQL Server elimina partições desnecessárias** automaticamente.

```sql
-- Acessa apenas partição de junho/2025
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT BETWEEN '2025-06-01' AND '2025-06-30';

-- Acessa apenas partições de Q2/2025 (abril, maio, junho)
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT BETWEEN '2025-04-01' AND '2025-06-30';

-- Acessa TODAS partições (scan completo)
SELECT * FROM SPH_TRANSACAO
WHERE VALOR_VL > 1000;  -- Filtro não inclui coluna de particionamento
```

**Ver Partition Elimination no Plano de Execução**:
```sql
SET STATISTICS IO ON;
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT = '2025-06-15';
-- Mensagem: "Table 'SPH_TRANSACAO'. Scan count 1, logical reads 100, ..."
-- Plano mostra: "Actual Partition Count: 1" (apenas 1 partição acessada)
```

### $PARTITION Function

**Descobrir número da partição de um valor**:

```sql
SELECT $PARTITION.PF_Mensal('2025-06-15') AS NumeroParticao;
-- Resultado: 18 (ou outro número, dependendo dos boundaries)

-- Agrupar dados por partição
SELECT 
    NumeroParticao = $PARTITION.PF_Mensal(DATA_TRANSACAO_DT),
    Linhas = COUNT(*)
FROM SPH_TRANSACAO
GROUP BY $PARTITION.PF_Mensal(DATA_TRANSACAO_DT)
ORDER BY NumeroParticao;
```

## Monitoramento de Partições

### Informações de Partições

```sql
SELECT 
    Tabela = OBJECT_NAME(p.object_id),
    Indice = i.name,
    NumeroParticao = p.partition_number,
    Linhas = p.rows,
    TamanhoMB = CAST((SUM(au.total_pages) * 8.0) / 1024 AS DECIMAL(10,2)),
    Compressao = p.data_compression_desc,
    FileGroup = fg.name,
    ValorLimite = CAST(rv.value AS DATE)
FROM sys.partitions p
INNER JOIN sys.indexes i ON p.object_id = i.object_id AND p.index_id = i.index_id
INNER JOIN sys.allocation_units au ON p.partition_id = au.container_id
LEFT JOIN sys.partition_schemes ps ON i.data_space_id = ps.data_space_id
LEFT JOIN sys.destination_data_spaces dds ON ps.data_space_id = dds.partition_scheme_id 
    AND p.partition_number = dds.destination_id
LEFT JOIN sys.filegroups fg ON dds.data_space_id = fg.data_space_id
LEFT JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
LEFT JOIN sys.partition_range_values rv ON pf.function_id = rv.function_id 
    AND p.partition_number = rv.boundary_id + 1  -- Range Right
WHERE OBJECT_NAME(p.object_id) = 'SPH_TRANSACAO'
  AND i.index_id <= 1  -- Apenas clustered index (0=heap, 1=clustered)
GROUP BY p.object_id, i.name, p.partition_number, p.rows, p.data_compression_desc, 
         fg.name, rv.value
ORDER BY p.partition_number;
```

**Resultado Exemplo**:
| Tabela | Índice | NumeroParticao | Linhas | TamanhoMB | Compressao | FileGroup | ValorLimite |
|--------|--------|----------------|--------|-----------|------------|-----------|-------------|
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 1 | 150000 | 12.5 | PAGE | FG_2023_12 | NULL |
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 2 | 4200000 | 320.8 | PAGE | FG_2024_01 | 2024-01-01 |
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 3 | 4100000 | 315.2 | PAGE | FG_2024_02 | 2024-02-01 |
| ... | ... | ... | ... | ... | ... | ... | ... |

### Boundaries da Partition Function

```sql
SELECT 
    FunctionName = pf.name,
    BoundaryID = prv.boundary_id,
    Value = prv.value,
    NumeroParticao = prv.boundary_id + 1  -- Range Right
FROM sys.partition_functions pf
INNER JOIN sys.partition_range_values prv ON pf.function_id = prv.function_id
WHERE pf.name = 'PF_Mensal'
ORDER BY prv.boundary_id;
```

### Uso de Espaço por FileGroup

```sql
SELECT 
    FileGroup = fg.name,
    TamanhoTotalMB = CAST(SUM(df.size) * 8.0 / 1024 AS DECIMAL(10,2)),
    EspacoUsadoMB = CAST(SUM(FILEPROPERTY(df.name, 'SpaceUsed')) * 8.0 / 1024 AS DECIMAL(10,2)),
    EspacoLivreMB = CAST((SUM(df.size) - SUM(FILEPROPERTY(df.name, 'SpaceUsed'))) * 8.0 / 1024 AS DECIMAL(10,2)),
    PercentualUsado = CAST(100.0 * SUM(FILEPROPERTY(df.name, 'SpaceUsed')) / SUM(df.size) AS DECIMAL(5,2))
FROM sys.database_files df
INNER JOIN sys.filegroups fg ON df.data_space_id = fg.data_space_id
WHERE fg.name LIKE 'FG_%'
GROUP BY fg.name
ORDER BY fg.name;
```

## Automação de Manutenção

### Job SQL Agent - Adicionar Partição Mensal

```sql
-- Executar no 1º dia de cada mês
DECLARE @ProximoMes DATE = DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
DECLARE @FileGroupName NVARCHAR(50) = 'FG_' + FORMAT(@ProximoMes, 'yyyy_MM');
DECLARE @FileName NVARCHAR(100) = 'Data_' + FORMAT(@ProximoMes, 'yyyy_MM');
DECLARE @FilePath NVARCHAR(255) = 'D:\SQLData\DB_SISPH\' + @FileName + '.ndf';
DECLARE @SQL NVARCHAR(MAX);

-- Criar filegroup
SET @SQL = 'ALTER DATABASE [DB_SISPH] ADD FILEGROUP [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Adicionar arquivo
SET @SQL = 'ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = ''' + @FileName + ''',
    FILENAME = ''' + @FilePath + ''',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Configurar próxima partição
SET @SQL = 'ALTER PARTITION SCHEME PS_Mensal NEXT USED [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Split
SET @SQL = 'ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE (''' + CAST(@ProximoMes AS VARCHAR(10)) + ''');';
EXEC sp_executesql @SQL;

PRINT 'Partição criada para ' + FORMAT(@ProximoMes, 'MMMM/yyyy', 'pt-BR');
```

### Job SQL Agent - Expurgo de Partições Antigas

```sql
-- Executar mensalmente, expurgar dados > 24 meses
DECLARE @DataLimite DATE = DATEADD(MONTH, -24, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
DECLARE @PartitionNumber INT;

-- Descobrir número da partição
SET @PartitionNumber = $PARTITION.PF_Mensal(@DataLimite);

-- Truncar partição
DECLARE @SQL NVARCHAR(MAX) = 'TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (' + CAST(@PartitionNumber AS VARCHAR(5)) + '));';
EXEC sp_executesql @SQL;

PRINT 'Partição ' + CAST(@PartitionNumber AS VARCHAR(5)) + ' expurgada (dados < ' + CAST(@DataLimite AS VARCHAR(10)) + ')';
```

## Considerações Especiais

### PK e Uniqueness em Tabelas Particionadas

**Restrição**: PK/Unique constraint **deve incluir a coluna de particionamento**.

```sql
-- ✅ CORRETO: PK inclui DATA_TRANSACAO_DT
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_Mensal(DATA_TRANSACAO_DT);

-- ❌ ERRO: PK não inclui coluna de particionamento
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,  -- ERRO!
    DATA_TRANSACAO_DT DATE NOT NULL
) ON PS_Mensal(DATA_TRANSACAO_DT);
-- Erro: "The PRIMARY KEY constraint must be defined on a partitioning column."
```

**Solução se TRANSACAO_ID deve ser único sozinho**:
- Usar Non-Clustered Unique Index (não-alinhado, permitido mas degrada performance)
- Reconsiderar design (usar surrogate key composta)

### Sliding Window (Janela Deslizante)

**Padrão**: Adicionar partições futuras, remover partições antigas continuamente.

**Exemplo - Manter sempre 24 meses**:
```
Janeiro/2026: Adicionar Fevereiro/2027, Remover Fevereiro/2025
Fevereiro/2026: Adicionar Março/2027, Remover Março/2025
...
```

**Automação**: Jobs SQL Agent mensais (SPLIT + MERGE).

## Oracle e DB2

### Oracle - Range Partitioning

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID NUMBER(19) PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID NUMBER(19),
    VALOR_VL NUMBER(18,2)
)
PARTITION BY RANGE (DATA_TRANSACAO_DT) (
    PARTITION P_2024_01 VALUES LESS THAN (TO_DATE('2024-02-01', 'YYYY-MM-DD')),
    PARTITION P_2024_02 VALUES LESS THAN (TO_DATE('2024-03-01', 'YYYY-MM-DD')),
    -- ...
    PARTITION P_2025_12 VALUES LESS THAN (TO_DATE('2026-01-01', 'YYYY-MM-DD')),
    PARTITION P_MAXVALUE VALUES LESS THAN (MAXVALUE)
);
```

**Adicionar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO SPLIT PARTITION P_MAXVALUE 
    AT (TO_DATE('2026-02-01', 'YYYY-MM-DD'))
    INTO (PARTITION P_2026_01, PARTITION P_MAXVALUE);
```

**Dropar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO DROP PARTITION P_2024_01;
```

### DB2 - Range Partitioning

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT NOT NULL PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2)
)
PARTITION BY RANGE (DATA_TRANSACAO_DT) (
    STARTING ('2024-01-01') ENDING ('2024-01-31') IN FG_2024_01,
    STARTING ('2024-02-01') ENDING ('2024-02-29') IN FG_2024_02,
    -- ...
);
```

**Adicionar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO ADD PARTITION 
    STARTING ('2026-02-01') ENDING ('2026-02-28') IN FG_2026_02;
```

## Checklist de Particionamento

### Planejamento
- [ ] Volumetria > 100M linhas/ano (TE074)
- [ ] Queries filtradas por data
- [ ] Coluna de particionamento identificada
- [ ] Estratégia definida (mensal, trimestral, anual)
- [ ] Aprovação ABD obtida

### Implementação
- [ ] FileGroups criados (um por partição, se possível)
- [ ] Partition Function criada (Range Right para datas)
- [ ] Partition Scheme criado (mapeamento correto)
- [ ] PK inclui coluna de particionamento
- [ ] Índices alinhados
- [ ] Compactação PAGE aplicada

### Manutenção
- [ ] Job mensal para adicionar novas partições (SPLIT)
- [ ] Job periódico para expurgo (TRUNCATE + MERGE)
- [ ] Sliding window implementada (se aplicável)
- [ ] Monitoramento de uso de espaço

### Validação
- [ ] Partition elimination verificada (planos de execução)
- [ ] Performance de queries validada
- [ ] Operações de SWITCH testadas
- [ ] Backup/Restore por filegroup testado

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.8)
