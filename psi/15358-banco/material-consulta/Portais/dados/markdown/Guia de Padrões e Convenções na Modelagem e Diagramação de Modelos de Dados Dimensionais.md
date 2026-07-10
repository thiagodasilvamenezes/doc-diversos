# Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Guia Modelagem Dimensional - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia%20de%20Padrões%20e%20Convenções%20na%20Modelagem%20e%20Diagramação%20de%20Modelos%20de%20Dados%20Dimensionais.aspx)

## Contexto

Este documento estabelece **padrões e convenções para modelagem dimensional** (Data Warehouse, Data Marts, Analytics), seguindo metodologia **Kimball** e **TE074**.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **The Data Warehouse Toolkit** (Ralph Kimball)
- **TE124** - Governança de Dados
- **TE105** - Integração e Compartilhamento de Dados

## Modelagem Dimensional vs Transacional

### Modelagem Transacional (OLTP)

- **Objetivo**: Suportar operações diárias
- **Otimização**: Escrita (INSERT, UPDATE, DELETE)
- **Normalização**: 3NF obrigatória
- **Estrutura**: Tabelas relacionais normalizadas

### Modelagem Dimensional (OLAP)

- **Objetivo**: Análise e consultas complexas
- **Otimização**: Leitura (SELECT agregado)
- **Normalização**: Desnormalização intencional
- **Estrutura**: Fatos e Dimensões (Star Schema, Snowflake)

## Arquitetura Dimensional

### Schema Estrela (Star Schema)

**Estrutura recomendada** para a maioria dos casos:

```
         [Dim_Tempo]
               |
               |
[Dim_Cliente]--[Fato_Vendas]--[Dim_Produto]
               |
               |
         [Dim_Loja]
```

**Características**:
- Tabela Fato central
- Dimensões desnormalizadas (flat)
- Joins simples (1 nível)
- Performance superior

### Schema Floco de Neve (Snowflake Schema)

**Estrutura** com dimensões normalizadas:

```
[Dim_Produto]--[Dim_Categoria]--[Dim_Familia]
      |
      |
 [Fato_Vendas]
```

**Quando usar**:
- Dimensões muito grandes
- Necessidade de reuso de hierarquias
- Economia de espaço crítica

**Desvantagem**: Mais joins, menor performance.

## Tabelas Fato

### Definição

Tabelas Fato armazenam **métricas/medidas** do negócio e **chaves estrangeiras** para dimensões.

### Nomenclatura

**Padrão**: `FATO_<PROCESSO_NEGOCIO>`

**Exemplos**:
- `FATO_VENDAS`
- `FATO_CONTRATOS_HABITACIONAIS`
- `FATO_ATENDIMENTOS`
- `FATO_TRANSACOES_FINANCEIRAS`

**Prefixo de Sistema** (TE074):
- `DWH_FATO_VENDAS` (se em contexto multi-sistemas)

### Estrutura de Tabela Fato

```sql
CREATE TABLE DWH_FATO_VENDAS (
    -- Surrogate Key (opcional, mas recomendado)
    VENDA_SK BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- Chaves de Dimensões (FKs)
    TEMPO_SK INT NOT NULL,
    CLIENTE_SK INT NOT NULL,
    PRODUTO_SK INT NOT NULL,
    LOJA_SK INT NOT NULL,
    VENDEDOR_SK INT,
    
    -- Chaves Degeneradas (dados transacionais)
    NUMERO_PEDIDO_NK VARCHAR(20),
    NUMERO_NOTA_FISCAL_NK VARCHAR(20),
    
    -- Métricas/Medidas
    QUANTIDADE_VENDIDA_QT DECIMAL(18,2),
    VALOR_BRUTO_VL DECIMAL(18,2),
    VALOR_DESCONTO_VL DECIMAL(18,2),
    VALOR_LIQUIDO_VL DECIMAL(18,2),
    CUSTO_PRODUTO_VL DECIMAL(18,2),
    MARGEM_LUCRO_VL DECIMAL(18,2),
    
    -- Metadados ETL
    DATA_CARGA_DT DATETIME DEFAULT GETDATE(),
    PROCESSO_ETL_ID INT,
    
    -- Foreign Keys
    CONSTRAINT FK_FATO_VENDAS_DIM_TEMPO 
        FOREIGN KEY (TEMPO_SK) REFERENCES DWH_DIM_TEMPO(TEMPO_SK),
    CONSTRAINT FK_FATO_VENDAS_DIM_CLIENTE 
        FOREIGN KEY (CLIENTE_SK) REFERENCES DWH_DIM_CLIENTE(CLIENTE_SK),
    CONSTRAINT FK_FATO_VENDAS_DIM_PRODUTO 
        FOREIGN KEY (PRODUTO_SK) REFERENCES DWH_DIM_PRODUTO(PRODUTO_SK),
    CONSTRAINT FK_FATO_VENDAS_DIM_LOJA 
        FOREIGN KEY (LOJA_SK) REFERENCES DWH_DIM_LOJA(LOJA_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- Índices Columnstore (SQL Server 2016+) - recomendado para DW
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;

-- Índices tradicionais alternativos
-- CREATE INDEX IDX_FATO_VENDAS_TEMPO ON DWH_FATO_VENDAS(TEMPO_SK);
-- CREATE INDEX IDX_FATO_VENDAS_CLIENTE ON DWH_FATO_VENDAS(CLIENTE_SK);
```

### Tipos de Tabelas Fato

#### Fato Transacional

Armazena eventos discretos no menor nível de granularidade.

**Exemplo**: Cada venda individual
```sql
-- Granularidade: 1 linha = 1 item vendido em 1 transação
FATO_VENDAS_ITEM
```

#### Fato Periódico (Snapshot)

Armazena métricas em intervalos regulares.

**Exemplo**: Saldo de contas por dia
```sql
CREATE TABLE DWH_FATO_SALDO_CONTA_DIARIO (
    TEMPO_SK INT NOT NULL,           -- Data específica
    CONTA_SK INT NOT NULL,
    CLIENTE_SK INT NOT NULL,
    SALDO_ABERTURA_VL DECIMAL(18,2),
    SALDO_ENCERRAMENTO_VL DECIMAL(18,2),
    SALDO_MEDIO_VL DECIMAL(18,2)
);
```

#### Fato Acumulativo

Rastreia processos com início, marcos e fim.

**Exemplo**: Processamento de contrato habitacional
```sql
CREATE TABLE DWH_FATO_PIPELINE_CONTRATO (
    CONTRATO_SK INT PRIMARY KEY,
    DATA_SOLICITACAO_SK INT,         -- Marcos do processo
    DATA_ANALISE_SK INT,
    DATA_APROVACAO_SK INT,
    DATA_ASSINATURA_SK INT,
    DATA_LIBERACAO_SK INT,
    DIAS_SOLICITACAO_ANALISE_QT INT, -- Métricas de tempo
    DIAS_ANALISE_APROVACAO_QT INT,
    VALOR_CONTRATO_VL DECIMAL(18,2)
);
```

### Granularidade

**Definição**: Nível de detalhe das métricas.

**Regra de Ouro**: Modelar no **menor grão possível**, agregar na consulta.

**Exemplo - Vendas**:
- ✅ **Correto**: 1 linha = 1 item de 1 pedido
- ❌ **Evitar**: 1 linha = total do pedido (perde detalhamento)

## Tabelas Dimensão

### Definição

Dimensões descrevem o **contexto** das métricas (quem, o quê, onde, quando, como, por quê).

### Nomenclatura

**Padrão**: `DIM_<ENTIDADE>`

**Exemplos**:
- `DIM_TEMPO` (dimensão conformada obrigatória)
- `DIM_CLIENTE`
- `DIM_PRODUTO`
- `DIM_GEOGRAFIA`
- `DIM_VENDEDOR`

**Com prefixo** (multi-sistemas):
- `DWH_DIM_CLIENTE`

### Surrogate Keys (SK)

**Chaves substitutas** numéricas, sequenciais, sem significado de negócio.

**Vantagens**:
- Independência de mudanças em chaves naturais
- Performance superior (INT vs VARCHAR)
- Suporte a SCD (Slowly Changing Dimensions)

**Padrão de nomenclatura**: `<ENTIDADE>_SK`

**Exemplo**:
```sql
CREATE TABLE DWH_DIM_CLIENTE (
    CLIENTE_SK INT IDENTITY(1,1) PRIMARY KEY,  -- Surrogate Key
    CLIENTE_NK VARCHAR(20) NOT NULL,           -- Natural Key (CPF/CNPJ)
    NOME_CLIENTE_NM VARCHAR(200),
    TIPO_PESSOA_TP CHAR(1),  -- F/J
    -- ... demais atributos
);
```

### Estrutura de Dimensão

```sql
CREATE TABLE DWH_DIM_PRODUTO (
    -- Surrogate Key
    PRODUTO_SK INT IDENTITY(1,1) PRIMARY KEY,
    
    -- Natural Key
    PRODUTO_NK VARCHAR(20) NOT NULL,
    
    -- Atributos descritivos
    NOME_PRODUTO_NM VARCHAR(200),
    DESCRICAO_PRODUTO_DS VARCHAR(MAX),
    
    -- Hierarquias (desnormalizadas no Star Schema)
    CATEGORIA_NM VARCHAR(100),
    SUBCATEGORIA_NM VARCHAR(100),
    FAMILIA_NM VARCHAR(100),
    MARCA_NM VARCHAR(100),
    
    -- Atributos numéricos descritivos
    PESO_PRODUTO_VL DECIMAL(10,2),
    ALTURA_PRODUTO_VL DECIMAL(10,2),
    
    -- SCD Type 2 (versionamento)
    DATA_INICIO_VIGENCIA_DT DATETIME NOT NULL,
    DATA_FIM_VIGENCIA_DT DATETIME,
    REGISTRO_ATIVO_IN CHAR(1) DEFAULT 'S',
    
    -- Metadados ETL
    DATA_CARGA_DT DATETIME DEFAULT GETDATE(),
    PROCESSO_ETL_ID INT
) WITH (DATA_COMPRESSION = PAGE);

-- Índice na Natural Key
CREATE UNIQUE INDEX UK_DIM_PRODUTO_NK 
    ON DWH_DIM_PRODUTO(PRODUTO_NK, DATA_INICIO_VIGENCIA_DT);
```

### Dimensão Tempo (Conformada)

**Obrigatória** em todo Data Warehouse.

```sql
CREATE TABLE DWH_DIM_TEMPO (
    TEMPO_SK INT PRIMARY KEY,              -- Formato: YYYYMMDD (ex: 20260106)
    DATA_COMPLETA_DT DATE NOT NULL,
    
    -- Ano
    ANO_NR INT,
    ANO_DESCRICAO_DS VARCHAR(10),          -- "2026"
    
    -- Semestre
    SEMESTRE_NR INT,                       -- 1 ou 2
    SEMESTRE_DESCRICAO_DS VARCHAR(20),     -- "1º Semestre 2026"
    
    -- Trimestre
    TRIMESTRE_NR INT,                      -- 1, 2, 3, 4
    TRIMESTRE_DESCRICAO_DS VARCHAR(20),    -- "1º Trimestre 2026"
    
    -- Mês
    MES_NR INT,                            -- 1-12
    MES_NOME_NM VARCHAR(20),               -- "Janeiro"
    MES_NOME_ABREV_NM VARCHAR(3),          -- "Jan"
    ANO_MES_NR INT,                        -- 202601
    ANO_MES_DESCRICAO_DS VARCHAR(20),      -- "Janeiro/2026"
    
    -- Semana
    SEMANA_ANO_NR INT,                     -- 1-53
    SEMANA_MES_NR INT,                     -- 1-5
    
    -- Dia
    DIA_MES_NR INT,                        -- 1-31
    DIA_ANO_NR INT,                        -- 1-366
    DIA_SEMANA_NR INT,                     -- 1 (Dom) - 7 (Sáb)
    DIA_SEMANA_NOME_NM VARCHAR(20),        -- "Segunda-feira"
    DIA_SEMANA_NOME_ABREV_NM VARCHAR(3),   -- "Seg"
    
    -- Flags
    DIA_UTIL_IN CHAR(1),                   -- S/N
    FERIADO_IN CHAR(1),                    -- S/N
    FERIADO_DESCRICAO_DS VARCHAR(100),
    FIM_SEMANA_IN CHAR(1),                 -- S/N
    ULTIMO_DIA_MES_IN CHAR(1),             -- S/N
    
    -- Período fiscal (se aplicável)
    PERIODO_FISCAL_NR INT,
    ANO_FISCAL_NR INT
) WITH (DATA_COMPRESSION = PAGE);
```

**Povoamento**: Scripts de carga para 10-20 anos.

### Slowly Changing Dimensions (SCD)

#### SCD Type 1 - Sobrescrever

Atualiza o registro, **perde histórico**.

**Quando usar**: Correções, dados sem relevância histórica.

```sql
UPDATE DWH_DIM_CLIENTE
SET TELEFONE_NR = '11999998888'
WHERE CLIENTE_SK = 123;
```

#### SCD Type 2 - Versionamento

Cria **novo registro**, mantém histórico.

**Quando usar**: Mudanças importantes (endereço, categoria, etc.)

```sql
-- Encerrar registro atual
UPDATE DWH_DIM_CLIENTE
SET DATA_FIM_VIGENCIA_DT = GETDATE(),
    REGISTRO_ATIVO_IN = 'N'
WHERE CLIENTE_SK = 123
  AND REGISTRO_ATIVO_IN = 'S';

-- Inserir nova versão
INSERT INTO DWH_DIM_CLIENTE (
    CLIENTE_NK, NOME_CLIENTE_NM, ENDERECO_DS, 
    DATA_INICIO_VIGENCIA_DT, REGISTRO_ATIVO_IN
)
VALUES (
    'CPF12345', 'João Silva', 'Novo Endereço',
    GETDATE(), 'S'
);
```

#### SCD Type 3 - Coluna Adicional

Mantém **valor atual e anterior**.

**Quando usar**: Mudanças raras, necessidade de comparação simples.

```sql
CREATE TABLE DWH_DIM_CLIENTE (
    CLIENTE_SK INT PRIMARY KEY,
    CLIENTE_NK VARCHAR(20),
    CATEGORIA_ATUAL_TP VARCHAR(20),
    CATEGORIA_ANTERIOR_TP VARCHAR(20),
    DATA_MUDANCA_CATEGORIA_DT DATETIME
);
```

## Dimensões Especiais

### Dimensão Degenerada

Dados transacionais armazenados **na própria tabela fato**.

**Exemplo**: Número do pedido, nota fiscal
```sql
CREATE TABLE DWH_FATO_VENDAS (
    -- ... chaves de dimensões
    NUMERO_PEDIDO_NK VARCHAR(20),      -- Dimensão degenerada
    NUMERO_NOTA_FISCAL_NK VARCHAR(20), -- Dimensão degenerada
    -- ... métricas
);
```

### Dimensão Junk

Agrupa **flags e indicadores** de baixa cardinalidade.

**Exemplo**:
```sql
CREATE TABLE DWH_DIM_INDICADORES_VENDA (
    INDICADORES_VENDA_SK INT PRIMARY KEY,
    VENDA_PROMOCIONAL_IN CHAR(1),
    PRIMEIRA_COMPRA_IN CHAR(1),
    ENTREGA_EXPRESSA_IN CHAR(1),
    PAGAMENTO_VISTA_IN CHAR(1)
);

-- Pré-popular todas combinações (2^4 = 16 linhas)
INSERT INTO DWH_DIM_INDICADORES_VENDA VALUES
(1, 'S', 'S', 'S', 'S'),
(2, 'S', 'S', 'S', 'N'),
-- ... demais combinações
```

### Dimensão Roleplay

**Mesma dimensão** usada em **múltiplas funções** no fato.

**Exemplo**: DIM_TEMPO como Data Pedido, Data Envio, Data Entrega
```sql
CREATE TABLE DWH_FATO_PEDIDOS (
    PEDIDO_SK BIGINT PRIMARY KEY,
    DATA_PEDIDO_SK INT,      -- FK para DIM_TEMPO
    DATA_ENVIO_SK INT,       -- FK para DIM_TEMPO
    DATA_ENTREGA_SK INT,     -- FK para DIM_TEMPO
    CLIENTE_SK INT,
    VALOR_PEDIDO_VL DECIMAL(18,2)
);
```

**PowerDesigner**: Criar aliases/views da dimensão tempo.

## Índices em Modelos Dimensionais

### Tabelas Fato

**SQL Server 2016+**: **Columnstore Index** (recomendado)
```sql
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;
```

**SQL Server anterior**: Índices tradicionais
```sql
-- Índice composto nas FKs mais consultadas
CREATE INDEX IDX_FATO_VENDAS_TEMPO_CLIENTE 
    ON DWH_FATO_VENDAS(TEMPO_SK, CLIENTE_SK);
```

### Tabelas Dimensão

```sql
-- PK na Surrogate Key (automático)
CREATE TABLE DWH_DIM_PRODUTO (
    PRODUTO_SK INT IDENTITY(1,1) PRIMARY KEY,
    -- ...
);

-- Índice único na Natural Key + Vigência (SCD Type 2)
CREATE UNIQUE INDEX UK_DIM_PRODUTO_NK_VIGENCIA 
    ON DWH_DIM_PRODUTO(PRODUTO_NK, DATA_INICIO_VIGENCIA_DT);

-- Índice para busca de registro ativo
CREATE INDEX IDX_DIM_PRODUTO_ATIVO 
    ON DWH_DIM_PRODUTO(REGISTRO_ATIVO_IN)
    WHERE REGISTRO_ATIVO_IN = 'S';
```

## Particionamento

### Tabelas Fato

**Particionamento por TEMPO_SK** (recomendado):

```sql
-- 1. Criar função de partição
CREATE PARTITION FUNCTION PF_Tempo (INT)
AS RANGE RIGHT FOR VALUES 
(20240101, 20240201, 20240301, 20240401, /* ... */ 20261201);

-- 2. Criar esquema de partição
CREATE PARTITION SCHEME PS_Tempo
AS PARTITION PF_Tempo
TO ([FG_2024Q1], [FG_2024Q2], [FG_2024Q3], [FG_2024Q4], 
    [FG_2025Q1], /* ... */ [PRIMARY]);

-- 3. Criar tabela particionada
CREATE TABLE DWH_FATO_VENDAS (
    -- ... colunas
    TEMPO_SK INT NOT NULL
) ON PS_Tempo(TEMPO_SK);
```

**Benefícios**:
- Queries filtradas por período são extremamente rápidas
- Manutenção facilitada (expurgo por partição)

## Modelagem no PowerDesigner

### Convenções de Diagramação

1. **Tabelas Fato**: Cor **amarela/laranja**, centro do diagrama
2. **Dimensões**: Cor **azul/verde**, ao redor dos fatos
3. **Dimensões Conformadas**: Destacar (borda grossa)
4. **Relacionamentos**: 1:N (Dimensão → Fato)

### Propriedades do Modelo

```
Nome: DWH_<DOMINIO>_DIAGRAMA_PRINCIPAL
DBMS: Microsoft SQL Server
Owner: dbo (ou DWH)
```

### Documentação

**Comments obrigatórios** (TE074 3.2.2):
- Descrição de cada tabela
- Descrição de cada coluna
- Granularidade da tabela fato
- Hierarquias nas dimensões

## Checklist de Modelagem Dimensional

### Arquitetura
- [ ] Star Schema escolhido (ou Snowflake justificado)
- [ ] Granularidade definida (menor grão possível)
- [ ] Dimensão Tempo conformada criada

### Fatos
- [ ] Nomenclatura: `FATO_<PROCESSO>`
- [ ] Surrogate Key (opcional, mas recomendado)
- [ ] FKs para todas dimensões relevantes
- [ ] Métricas aditivas priorizadas
- [ ] Chaves degeneradas identificadas

### Dimensões
- [ ] Nomenclatura: `DIM_<ENTIDADE>`
- [ ] Surrogate Keys obrigatórias
- [ ] Natural Keys preservadas
- [ ] Hierarquias desnormalizadas (Star Schema)
- [ ] SCD Type definido por dimensão

### Performance
- [ ] Columnstore Index em fatos (SQL 2016+)
- [ ] Índices em Natural Keys das dimensões
- [ ] Particionamento por tempo em fatos grandes
- [ ] Compactação PAGE aplicada (TE074)

### Conformidade TE074
- [ ] Comments em todas tabelas/colunas
- [ ] Modelo documentado no PowerDesigner
- [ ] Validação ADI obtida
- [ ] ABD implementou DDL

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE124, TE105
