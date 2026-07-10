# Expressões Regulares que Definem Objetos Físicos dos SGBD

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Expressões Regulares - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expressões%20Regulares%20que%20Definem%20Objetos%20Físicos%20dos%20SGBD.aspx)

## Contexto

Este documento apresenta as **expressões regulares (regex)** utilizadas para validação e padronização de nomenclatura de objetos físicos de banco de dados, conforme **TE074** (seção 3.2.1).

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - Seção 3.2.1: Diretrizes de objetos físicos
  - Padrões de nomenclatura obrigatórios
- **ISO/IEC 11179** - Registro de Metadados

## Padrões de Nomenclatura por Objeto

### Tabelas

#### Padrão Geral
```
<PREFIXO_SISTEMA>_<NOME_DESCRITIVO>
```

#### Expressão Regular
```regex
^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$
```

**Descrição**:
- Prefixo de 3 letras maiúsculas (identificador do sistema)
- Underscore separador
- Nome descritivo iniciando com letra
- Apenas letras maiúsculas, números e underscore
- Máximo de 30 caracteres (SQL Server/Oracle)

**Exemplos Válidos**:
- `POI_TRILHA_AUDITORIA`
- `SPH_CONTRATO_HABITACIONAL`
- `FIN_LANCAMENTO_CONTABIL`

**Exemplos Inválidos**:
- `Poi_trilha_auditoria` (minúsculas)
- `POI-TRILHA-AUDITORIA` (hífen)
- `PO_TABELA` (prefixo com 2 caracteres)
- `POI_123_INICIO` (número no início do nome)

### Colunas

#### Padrão Geral
```
<NOME_DESCRITIVO>_<SUFIXO_TIPO>
```

#### Expressões Regulares por Sufixo

**Identificador (ID)**:
```regex
^[A-Z][A-Z0-9_]*_ID$
```
Exemplo: `TRILHA_AUDITORIA_ID`, `USUARIO_ID`

**Data (DT)**:
```regex
^[A-Z][A-Z0-9_]*_DT$
```
Exemplo: `DATA_CRIACAO_DT`, `VIGENCIA_INICIO_DT`

**Valor (VL)**:
```regex
^[A-Z][A-Z0-9_]*_VL$
```
Exemplo: `VALOR_TOTAL_VL`, `PRECO_UNITARIO_VL`

**Quantidade (QT)**:
```regex
^[A-Z][A-Z0-9_]*_QT$
```
Exemplo: `QUANTIDADE_ITENS_QT`

**Percentual (PC)**:
```regex
^[A-Z][A-Z0-9_]*_PC$
```
Exemplo: `TAXA_JUROS_PC`

**Descrição (DS)**:
```regex
^[A-Z][A-Z0-9_]*_DS$
```
Exemplo: `OBSERVACAO_DS`, `DESCRICAO_ERRO_DS`

**Nome (NM)**:
```regex
^[A-Z][A-Z0-9_]*_NM$
```
Exemplo: `NOME_CLIENTE_NM`, `RAZAO_SOCIAL_NM`

**Indicador/Flag (IN)**:
```regex
^[A-Z][A-Z0-9_]*_IN$
```
Exemplo: `ATIVO_IN`, `PROCESSADO_IN`

**Tipo (TP)**:
```regex
^[A-Z][A-Z0-9_]*_TP$
```
Exemplo: `TIPO_DOCUMENTO_TP`

### Constraints

#### Primary Key (PK)

**Padrão**: `PK_<NOME_TABELA>`

**Expressão Regular**:
```regex
^PK_[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$
```

**Exemplos**:
- `PK_POI_TRILHA_AUDITORIA`
- `PK_SPH_CONTRATO`

#### Foreign Key (FK)

**Padrão**: `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>`

**Expressão Regular**:
```regex
^FK_[A-Z]{3}_[A-Z][A-Z0-9_]*_[A-Z]{3}_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `FK_POI_EVENTO_POI_USUARIO`
- `FK_SPH_CONTRATO_SPH_CLIENTE`

#### Unique Key (UK)

**Padrão**: `UK_<NOME_TABELA>_<COLUNAS>`

**Expressão Regular**:
```regex
^UK_[A-Z]{3}_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `UK_POI_USUARIO_CPF`
- `UK_SPH_CONTRATO_NUMERO`

#### Check Constraint (CK)

**Padrão**: `CK_<NOME_TABELA>_<REGRA>`

**Expressão Regular**:
```regex
^CK_[A-Z]{3}_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `CK_POI_EVENTO_STATUS`
- `CK_SPH_CONTRATO_VALOR_POSITIVO`

### Índices

#### Índice Único (IDX_UK)

**Padrão**: `IDX_UK_<NOME_TABELA>_<COLUNAS>`

**Expressão Regular**:
```regex
^IDX_UK_[A-Z]{3}_[A-Z][A-Z0-9_]*$
```

#### Índice Não-Único (IDX)

**Padrão**: `IDX_<NOME_TABELA>_<COLUNAS>`

**Expressão Regular**:
```regex
^IDX_[A-Z]{3}_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `IDX_POI_EVENTO_DATA`
- `IDX_SPH_CONTRATO_STATUS`

### Views

**Padrão**: `VW_<NOME_DESCRITIVO>`

**Expressão Regular**:
```regex
^VW_[A-Z][A-Z0-9_]{0,27}$
```

**Exemplos**:
- `VW_POI_EVENTOS_PENDENTES`
- `VW_SPH_CONTRATOS_ATIVOS`

### Stored Procedures

**Padrão**: `SP_<ACAO>_<OBJETO>`

**Expressão Regular**:
```regex
^SP_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `SP_INSERIR_TRILHA_AUDITORIA`
- `SP_PROCESSAR_LOTE_PAGAMENTO`

### Functions

**Padrão**: `FN_<NOME_FUNCAO>`

**Expressão Regular**:
```regex
^FN_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `FN_CALCULAR_JUROS`
- `FN_VALIDAR_CPF`

### Triggers

**Padrão**: `TR_<TABELA>_<EVENTO>_<ACAO>`

**Expressão Regular**:
```regex
^TR_[A-Z]{3}_[A-Z][A-Z0-9_]*_(INSERT|UPDATE|DELETE)_[A-Z][A-Z0-9_]*$
```

**Exemplos**:
- `TR_POI_EVENTO_INSERT_AUDITORIA`
- `TR_SPH_CONTRATO_UPDATE_HISTORICO`

## Validação de Nomenclatura

### Script PowerShell para Validação

```powershell
function Test-TableName {
    param([string]$Name)
    $Name -match '^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$'
}

function Test-ColumnName {
    param([string]$Name)
    $Name -match '^[A-Z][A-Z0-9_]*_(ID|DT|VL|QT|PC|DS|NM|IN|TP)$'
}

function Test-PKName {
    param([string]$Name)
    $Name -match '^PK_[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$'
}

function Test-FKName {
    param([string]$Name)
    $Name -match '^FK_[A-Z]{3}_[A-Z][A-Z0-9_]*_[A-Z]{3}_[A-Z][A-Z0-9_]*$'
}

# Exemplo de uso
Test-TableName "POI_TRILHA_AUDITORIA"  # True
Test-TableName "Poi_Trilha"             # False
Test-ColumnName "USUARIO_ID"            # True
Test-ColumnName "usuario_id"            # False
```

### Script SQL Server para Validação

```sql
-- Validar nomenclatura de tabelas
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME,
    CASE 
        WHEN TABLE_NAME LIKE '[A-Z][A-Z][A-Z]_[A-Z]%' THEN 'CONFORME'
        ELSE 'NÃO CONFORME'
    END AS Status
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
  AND TABLE_SCHEMA = 'dbo';

-- Validar nomenclatura de PKs
SELECT 
    tc.CONSTRAINT_NAME,
    tc.TABLE_NAME,
    CASE 
        WHEN tc.CONSTRAINT_NAME LIKE 'PK_' + tc.TABLE_NAME THEN 'CONFORME'
        ELSE 'NÃO CONFORME'
    END AS Status
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
WHERE tc.CONSTRAINT_TYPE = 'PRIMARY KEY';
```

## Exceções e Casos Especiais

### Tabelas de Sistema/Framework

Algumas tabelas de frameworks autorizados podem ter nomenclatura diferente:

**Spring Batch**:
- `BATCH_JOB_EXECUTION`
- `BATCH_JOB_INSTANCE`
- `BATCH_STEP_EXECUTION`

**Hibernate/JPA**:
- `DATABASECHANGELOG` (Liquibase)
- `HIBERNATE_SEQUENCES`

**Observação**: Exceções devem ser documentadas e aprovadas pela ADI.

### Tabelas Temporárias

**SQL Server**:
```
#<NOME>      -- Temporária local
##<NOME>     -- Temporária global
```

**Oracle**:
```
TMP_<NOME>
TEMP_<NOME>
```

### Tabelas de Histórico

**Sufixo recomendado**: `_HIST`

**Exemplo**: `POI_TRILHA_AUDITORIA_HIST`

**Expressão Regular**:
```regex
^[A-Z]{3}_[A-Z][A-Z0-9_]*_HIST$
```

## Ferramentas de Validação

### Pré-Validador de Modelos

O pré-validador (`http://gestaodedados.coresp.caixa`) aplica estas regex automaticamente para:

1. Validar nomenclatura de tabelas
2. Validar nomenclatura de colunas
3. Validar constraints
4. Gerar relatório de conformidade

### PowerDesigner - Naming Convention

Configurar no PowerDesigner:

1. **Model → Model Options**
2. **Naming Convention**
3. Importar regras de nomenclatura
4. Aplicar validação automática

## Referências SQL por SGBD

### SQL Server

**Comprimento máximo de identificadores**: 128 caracteres

**Case-sensitivity**: Depende do collation (padrão: case-insensitive)

**Caracteres permitidos**: A-Z, 0-9, _, @, #, $

### Oracle Database

**Comprimento máximo**: 30 caracteres (até Oracle 11g), 128 (12c+)

**Case-sensitivity**: Insensitive por padrão (uppercase automático)

**Caracteres permitidos**: A-Z, 0-9, _, $, #

### IBM DB2

**Comprimento máximo**: 128 caracteres

**Case-sensitivity**: Insensitive

**Caracteres permitidos**: A-Z, 0-9, _, @, #, $

## Checklist de Validação

### Tabelas
- [ ] Prefixo de 3 letras maiúsculas
- [ ] Nome descritivo em português
- [ ] Apenas A-Z, 0-9, _
- [ ] Máximo 30 caracteres

### Colunas
- [ ] Sufixo de tipo apropriado
- [ ] Nome descritivo
- [ ] Apenas A-Z, 0-9, _
- [ ] Padrão consistente

### Constraints
- [ ] PK: `PK_<TABELA>`
- [ ] FK: `FK_<ORIGEM>_<DESTINO>`
- [ ] UK: `UK_<TABELA>_<COLUNAS>`
- [ ] CK: `CK_<TABELA>_<REGRA>`

### Índices
- [ ] Prefixo IDX ou IDX_UK
- [ ] Nome descritivo de colunas
- [ ] Padrão consistente

### Validação Automatizada
- [ ] Regex aplicada a todos objetos
- [ ] Pré-validador 100% conforme
- [ ] PowerDesigner Check Model: OK

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Norma relacionada**: TE074 - Seção 3.2.1
