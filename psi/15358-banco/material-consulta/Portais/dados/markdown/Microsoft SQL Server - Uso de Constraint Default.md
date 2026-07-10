# Microsoft SQL Server - Uso de Constraint Default

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [SQL Server Constraint Default - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Microsoft%20SQL%20Server%20-%20Uso%20de%20Constraint%20Default.aspx)

## Contexto

Este documento estabelece **diretrizes para uso de constraints DEFAULT** em Microsoft SQL Server, cobrindo sintaxe, boas práticas, casos de uso e integração com **TE074**.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (seção 3.2.12.5)
- **Microsoft SQL Server Documentation** - DEFAULT Constraints
- **ISO/IEC 9075** (SQL Standard)

## O Que São Constraints DEFAULT

### Definição

**DEFAULT constraint** define um **valor padrão** automático para uma coluna quando nenhum valor é fornecido explicitamente no `INSERT`.

**Sintaxe Básica**:
```sql
CREATE TABLE Exemplo (
    Coluna INT DEFAULT 0,
    OutraColuna VARCHAR(50) DEFAULT 'Valor Padrão'
);
```

**Comportamento**:
```sql
-- Omitir coluna: usa DEFAULT
INSERT INTO Exemplo (OutraColuna) VALUES ('Teste');
-- Resultado: Coluna = 0 (default)

-- Valor NULL explícito: ignora DEFAULT
INSERT INTO Exemplo (Coluna, OutraColuna) VALUES (NULL, 'Teste');
-- Resultado: Coluna = NULL (se permitido)

-- Valor explícito: usa valor fornecido
INSERT INTO Exemplo (Coluna, OutraColuna) VALUES (99, 'Teste');
-- Resultado: Coluna = 99
```

## Sintaxe e Criação

### Declaração Inline (Recomendada)

**Sem nome de constraint** (SQL Server gera nome automático):
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE(),
    ATIVO_IN CHAR(1) DEFAULT 'S',
    VALOR_ORIGINAL_VL DECIMAL(18,2) DEFAULT 0.00
);
```

**Com nome de constraint** (recomendado para controle):
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_CRIACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CONTRATO_DATA_CRIACAO_DT DEFAULT GETDATE(),
    ATIVO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S',
    VALOR_ORIGINAL_VL DECIMAL(18,2) 
        CONSTRAINT DF_SPH_CONTRATO_VALOR_ORIGINAL_VL DEFAULT 0.00
);
```

**Nomenclatura TE074**:
- Padrão: `DF_<TABELA>_<COLUNA>`
- Exemplo: `DF_SPH_CONTRATO_ATIVO_IN`

### Adicionar DEFAULT em Tabela Existente

```sql
-- Adicionar constraint com nome
ALTER TABLE SPH_CLIENTE
ADD CONSTRAINT DF_SPH_CLIENTE_DATA_CADASTRO_DT 
    DEFAULT GETDATE() FOR DATA_CADASTRO_DT;

-- Adicionar sem nome (SQL Server gera automaticamente)
ALTER TABLE SPH_CLIENTE
ADD DEFAULT 'N' FOR ACESSO_PORTAL_IN;
```

### Remover DEFAULT

```sql
-- Se tem nome de constraint
ALTER TABLE SPH_CONTRATO
DROP CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN;

-- Se não conhece o nome (descobrir primeiro)
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    dc.definition AS DefaultValue
FROM sys.default_constraints dc
WHERE OBJECT_NAME(dc.parent_object_id) = 'SPH_CONTRATO';

-- Depois usar o nome descoberto
ALTER TABLE SPH_CONTRATO
DROP CONSTRAINT [DF__SPH_CONTR__ATIVO__5AEE82B9];  -- Nome gerado automaticamente
```

## Casos de Uso Comuns

### 1. Data/Hora de Criação/Atualização

**Padrão corporativo** (TE074 3.2.12.5):
```sql
CREATE TABLE SPH_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    NOME_NM VARCHAR(200),
    
    -- Auditoria temporal
    DATA_CRIACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CLIENTE_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL,
    DATA_ALTERACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CLIENTE_DATA_ALTERACAO_DT DEFAULT GETDATE() NOT NULL,
    USUARIO_CRIACAO_NM VARCHAR(100) 
        CONSTRAINT DF_SPH_CLIENTE_USUARIO_CRIACAO_NM DEFAULT SUSER_NAME() NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) 
        CONSTRAINT DF_SPH_CLIENTE_USUARIO_ALTERACAO_NM DEFAULT SUSER_NAME() NOT NULL
);

-- Trigger para atualizar DATA_ALTERACAO_DT automaticamente
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET DATA_ALTERACAO_DT = GETDATE(),
        USUARIO_ALTERACAO_NM = SUSER_NAME()
    FROM SPH_CLIENTE c
    INNER JOIN inserted i ON c.CLIENTE_ID = i.CLIENTE_ID;
END;
```

### 2. Flags e Indicadores

**Valores booleanos**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    
    -- Flags com valores padrão
    ATIVO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S' NOT NULL
        CONSTRAINT CK_SPH_CONTRATO_ATIVO_IN CHECK (ATIVO_IN IN ('S', 'N')),
    
    ENVIO_EMAIL_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ENVIO_EMAIL_IN DEFAULT 'S' NOT NULL,
    
    BLOQUEADO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_BLOQUEADO_IN DEFAULT 'N' NOT NULL
);
```

### 3. Valores Numéricos

**Quantidades e valores iniciais**:
```sql
CREATE TABLE SPH_CONTA (
    CONTA_ID BIGINT PRIMARY KEY,
    
    -- Saldo inicial zero
    SALDO_VL DECIMAL(18,2) 
        CONSTRAINT DF_SPH_CONTA_SALDO_VL DEFAULT 0.00 NOT NULL,
    
    -- Contador de acessos
    ACESSOS_QT INT 
        CONSTRAINT DF_SPH_CONTA_ACESSOS_QT DEFAULT 0 NOT NULL,
    
    -- Taxa percentual
    TAXA_JUROS_PC DECIMAL(5,4) 
        CONSTRAINT DF_SPH_CONTA_TAXA_JUROS_PC DEFAULT 0.0000 NOT NULL
);
```

### 4. Status e Tipos

**Valores de enumeração**:
```sql
CREATE TABLE SPH_PEDIDO (
    PEDIDO_ID BIGINT PRIMARY KEY,
    
    -- Status inicial
    STATUS_TP VARCHAR(20) 
        CONSTRAINT DF_SPH_PEDIDO_STATUS_TP DEFAULT 'PENDENTE' NOT NULL
        CONSTRAINT CK_SPH_PEDIDO_STATUS_TP 
            CHECK (STATUS_TP IN ('PENDENTE', 'EM_ANALISE', 'APROVADO', 'REJEITADO')),
    
    -- Prioridade padrão
    PRIORIDADE_TP VARCHAR(10) 
        CONSTRAINT DF_SPH_PEDIDO_PRIORIDADE_TP DEFAULT 'NORMAL' NOT NULL
        CONSTRAINT CK_SPH_PEDIDO_PRIORIDADE_TP 
            CHECK (PRIORIDADE_TP IN ('BAIXA', 'NORMAL', 'ALTA', 'URGENTE'))
);
```

### 5. GUIDs

**Identificadores únicos universais**:
```sql
CREATE TABLE SPH_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- GUID para integração externa
    GUID_EXTERNO UNIQUEIDENTIFIER 
        CONSTRAINT DF_SPH_DOCUMENTO_GUID_EXTERNO DEFAULT NEWID() NOT NULL UNIQUE,
    
    ARQUIVO_NOME_NM VARCHAR(255)
);
```

### 6. Sequências Customizadas

**Valores calculados**:
```sql
CREATE TABLE SPH_CONFIGURACAO (
    CONFIG_ID INT PRIMARY KEY,
    
    -- Ano fiscal padrão = ano corrente
    ANO_FISCAL_NR INT 
        CONSTRAINT DF_SPH_CONFIGURACAO_ANO_FISCAL_NR DEFAULT YEAR(GETDATE()) NOT NULL,
    
    -- Período padrão = mês corrente
    PERIODO_NR INT 
        CONSTRAINT DF_SPH_CONFIGURACAO_PERIODO_NR DEFAULT MONTH(GETDATE()) NOT NULL
);
```

## Boas Práticas

### ✅ FAZER

#### 1. Usar para Valores Consistentes

**Dados de auditoria**:
```sql
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE() NOT NULL
```

**Flags padrão**:
```sql
ATIVO_IN CHAR(1) DEFAULT 'S' NOT NULL
```

#### 2. Nomear Constraints

**Facilita manutenção**:
```sql
-- ✅ CORRETO: Nome explícito
CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S'

-- ❌ EVITAR: Nome automático gerado
DEFAULT 'S'  -- SQL Server gera: DF__SPH_CLIEN__ATIVO__5AEE82B9
```

#### 3. Combinar com NOT NULL

**Garantir valor sempre presente**:
```sql
DATA_CRIACAO_DT DATETIME2 
    CONSTRAINT DF_SPH_CONTRATO_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL
```

#### 4. Documentar no PowerDesigner

**Comment** (TE074 3.2.2):
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Data de criação do registro. Preenchida automaticamente no INSERT via DEFAULT constraint.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO',
    @level2type = N'COLUMN', @level2name = N'DATA_CRIACAO_DT';
```

#### 5. Usar Funções Determinísticas Quando Possível

**Preferir funções que retornam o mesmo valor**:
```sql
-- ✅ Determinístico: Ano fiscal fixo
ANO_FISCAL_NR INT DEFAULT 2026

-- ⚠️ Não-determinístico: Valor muda a cada INSERT
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
-- (Aceitável para auditoria, mas não para particionamento)
```

### ❌ EVITAR

#### 1. DEFAULT para Lógica de Negócio Complexa

**Lógica deve estar na aplicação**:
```sql
-- ❌ EVITAR: Lógica complexa em DEFAULT
PRAZO_DIAS_QT INT DEFAULT 
    CASE 
        WHEN EXISTS (SELECT 1 FROM OutraTabela WHERE ...) THEN 30
        ELSE 60
    END

-- ✅ PREFERIR: Aplicação calcula e fornece valor
```

#### 2. DEFAULT NULL

**Redundante**:
```sql
-- ❌ EVITAR: Redundante (NULL já é padrão se coluna aceita NULL)
OBSERVACAO_DS VARCHAR(MAX) DEFAULT NULL

-- ✅ PREFERIR: Omitir DEFAULT (NULL implícito)
OBSERVACAO_DS VARCHAR(MAX)
```

#### 3. DEFAULT em Colunas de PK

**PK deve ser sempre fornecida ou IDENTITY**:
```sql
-- ❌ EVITAR: DEFAULT em PK
CLIENTE_ID BIGINT PRIMARY KEY DEFAULT 0

-- ✅ CORRETO: IDENTITY ou valor fornecido
CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY
```

#### 4. DEFAULT Substituindo Validação

**DEFAULT não substitui validação de negócio**:
```sql
-- ❌ EVITAR: Confiar apenas em DEFAULT
VALOR_VL DECIMAL(18,2) DEFAULT 0.00

-- ✅ CORRETO: DEFAULT + validação na aplicação
VALOR_VL DECIMAL(18,2) DEFAULT 0.00
-- Aplicação valida: if (valor < 0) throw Exception;
```

## Funções Comuns em DEFAULT

### Funções de Data/Hora

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `GETDATE()` | Data/hora atual | `DEFAULT GETDATE()` |
| `GETUTCDATE()` | Data/hora UTC | `DEFAULT GETUTCDATE()` |
| `SYSDATETIME()` | Maior precisão | `DEFAULT SYSDATETIME()` |
| `CURRENT_TIMESTAMP` | Equivalente a GETDATE() | `DEFAULT CURRENT_TIMESTAMP` |

**Recomendação**: `GETDATE()` ou `SYSDATETIME()` para auditoria.

### Funções de Usuário

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `SUSER_NAME()` | Login do usuário | `DEFAULT SUSER_NAME()` |
| `USER_NAME()` | Nome do usuário no banco | `DEFAULT USER_NAME()` |
| `ORIGINAL_LOGIN()` | Login original (antes de EXECUTE AS) | `DEFAULT ORIGINAL_LOGIN()` |

**Recomendação**: `SUSER_NAME()` para auditoria corporativa.

### Funções de GUID

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `NEWID()` | GUID aleatório | `DEFAULT NEWID()` |
| `NEWSEQUENTIALID()` | GUID sequencial (melhor para PK) | `DEFAULT NEWSEQUENTIALID()` |

**Recomendação**: `NEWSEQUENTIALID()` se usar GUID como PK (melhor performance de índice).

### Funções Matemáticas

```sql
-- Ano corrente
ANO_NR INT DEFAULT YEAR(GETDATE())

-- Mês corrente
MES_NR INT DEFAULT MONTH(GETDATE())

-- Valor absoluto
VALOR_ABS_VL DECIMAL(18,2) DEFAULT ABS(-100.00)
```

### Constantes

```sql
-- Valores fixos
VERSAO_NR INT DEFAULT 1
TIPO_TP VARCHAR(10) DEFAULT 'PADRAO'
ATIVO_IN CHAR(1) DEFAULT 'S'
SALDO_VL DECIMAL(18,2) DEFAULT 0.00
```

## Performance e Impacto

### Impacto em INSERT

**Minimal** - DEFAULT constraint é avaliada no momento do INSERT:
- Não degrada performance
- Evita roundtrips aplicação↔banco para valores padrão

**Benchmark** (exemplo):
```sql
-- Sem DEFAULT: 100.000 INSERTs = 2.5 segundos
INSERT INTO Tabela (ID, Coluna1, Coluna2, Coluna3) VALUES (...)

-- Com DEFAULT: 100.000 INSERTs = 2.5 segundos (mesma performance)
INSERT INTO Tabela (ID, Coluna1) VALUES (...)  -- Coluna2, Coluna3 usam DEFAULT
```

### Storage

**Não adiciona overhead** - valor DEFAULT é armazenado normalmente como qualquer outro valor.

### Índices

**DEFAULT não afeta índices** - valores são indexados normalmente.

## Validação e Monitoramento

### Consultar Constraints DEFAULT

```sql
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_SCHEMA_NAME(dc.parent_object_id) AS SchemaName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    dc.definition AS DefaultValue,
    dc.create_date AS CreatedDate
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
ORDER BY TableName, ColumnName;
```

### Validar Nomenclatura

```sql
-- Verificar constraints DEFAULT com nomenclatura incorreta
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    CASE 
        WHEN OBJECT_NAME(dc.object_id) LIKE 'DF[_]' + OBJECT_NAME(dc.parent_object_id) + '[_]%' 
            THEN 'OK'
        ELSE 'ERRO: Nomenclatura incorreta (esperado: DF_' + OBJECT_NAME(dc.parent_object_id) + '_' + COL_NAME(dc.parent_object_id, dc.parent_column_id) + ')'
    END AS ValidacaoNome
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
ORDER BY TableName;
```

### Script de Correção de Nomenclatura

```sql
-- Gerar comandos ALTER TABLE para renomear constraints
SELECT 
    'EXEC sp_rename ''' + OBJECT_SCHEMA_NAME(dc.parent_object_id) + '.' + OBJECT_NAME(dc.object_id) + ''', ' +
    '''DF_' + OBJECT_NAME(dc.parent_object_id) + '_' + COL_NAME(dc.parent_object_id, dc.parent_column_id) + ''', ''OBJECT'';' AS ComandoRenomear
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
  AND OBJECT_NAME(dc.object_id) NOT LIKE 'DF[_]' + OBJECT_NAME(dc.parent_object_id) + '[_]%';
```

## Integração com PowerDesigner

### Definir DEFAULT no PowerDesigner

**Passos**:
1. Selecionar coluna
2. Aba **General** → **Standard Checks**
3. Campo **Default Value**: `GETDATE()` (sem aspas para funções)
4. Para strings: `'S'` (com aspas simples)

**Gerar DDL**: PowerDesigner inclui constraint DEFAULT automaticamente.

### Nomenclatura Automática

**PowerDesigner Preferences**:
1. **Database** → **Microsoft SQL Server** → **Script** → **Objects**
2. **Default**: `DF_%TABLE%_%COLUMN%`

**Resultado**:
```sql
CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S'
```

## Checklist de Conformidade

### Desenvolvimento

- [ ] DEFAULT usado para valores consistentes (auditoria, flags, zeros)
- [ ] Nomenclatura: `DF_<TABELA>_<COLUNA>`
- [ ] Funções apropriadas (GETDATE, SUSER_NAME, etc.)
- [ ] Combinado com NOT NULL quando aplicável
- [ ] Documentado no PowerDesigner (comment)
- [ ] Não substitui validação de negócio da aplicação

### Validação ADI

- [ ] Constraints DEFAULT nomeadas (não geradas automaticamente)
- [ ] Valores DEFAULT adequados ao tipo de dado
- [ ] Não há lógica complexa em DEFAULT
- [ ] Conforme TE074 3.2.12.5

### Implementação ABD

- [ ] DDL revisado
- [ ] Constraints criadas corretamente
- [ ] Nomenclatura validada via query

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.12.5), ISO/IEC 9075
