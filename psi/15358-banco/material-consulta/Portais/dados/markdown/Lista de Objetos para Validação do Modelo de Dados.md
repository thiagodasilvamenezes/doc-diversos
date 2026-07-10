# Lista de Objetos para Validação do Modelo de Dados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Lista Objetos Validação - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista%20de%20Objetos%20para%20Validação%20do%20Modelo%20de%20Dados.aspx)

## Contexto

Este documento lista todos os **objetos físicos de banco de dados** que devem ser validados durante o processo de aprovação de modelos de dados, conforme **TE074** e procedimentos ADI/ABD.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **TE079** - Segurança em Ambientes Computacionais
- **TE109** - Versionamento e Gestão de Configuração
- **Pré-validador**: http://gestaodedados.coresp.caixa

## Categorias de Objetos

### 1. Tabelas (Tables)

**Criticidade**: **ALTA** - Base do modelo de dados.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | Nomenclatura: `^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$` | 3.2.1.1 |
| **Comment** | Descrição em português, obrigatória | 3.2.2 |
| **Owner/Schema** | DBO (SQL Server), sistema (Oracle/DB2) | 3.2.3 |
| **Primary Key** | Obrigatória, sem exceções | 3.2.4.1 |
| **Tipo Tabela** | Transacional, Suporte ou Histórica | 3.2.5-3.2.7 |

#### Checklist de Validação

- [ ] Nome da tabela segue regex `^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$`
- [ ] Prefixo de 3 letras corresponde ao sistema
- [ ] Comment/Description preenchido em português
- [ ] Primary Key definida
- [ ] Owner/Schema = DBO (SQL Server) ou conforme padrão
- [ ] Tipo de tabela identificado (Transacional/Suporte/Histórica)
- [ ] Compactação definida (DATA_COMPRESSION = PAGE para SQL Server)
- [ ] Particionamento avaliado (se volumetria > 100M linhas/ano)

#### Exemplo de Validação SQL (SQL Server)

```sql
-- Validar nomenclatura, PK, comment, owner
SELECT 
    t.TABLE_SCHEMA,
    t.TABLE_NAME,
    CASE 
        WHEN t.TABLE_NAME LIKE '[A-Z][A-Z][A-Z]_[A-Z]%' THEN 'OK'
        ELSE 'ERRO: Nomenclatura inválida'
    END AS ValidacaoNome,
    CASE 
        WHEN EXISTS (
            SELECT 1 
            FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
            WHERE tc.TABLE_SCHEMA = t.TABLE_SCHEMA
              AND tc.TABLE_NAME = t.TABLE_NAME
              AND tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
        ) THEN 'OK'
        ELSE 'ERRO: PK ausente'
    END AS ValidacaoPK,
    (
        SELECT CAST(ep.value AS VARCHAR(MAX))
        FROM sys.tables st
        INNER JOIN sys.extended_properties ep 
            ON st.object_id = ep.major_id
        WHERE st.name = t.TABLE_NAME
          AND ep.minor_id = 0
          AND ep.name = 'MS_Description'
    ) AS Comment,
    CASE 
        WHEN t.TABLE_SCHEMA = 'dbo' THEN 'OK'
        ELSE 'AVISO: Owner não é DBO'
    END AS ValidacaoOwner
FROM INFORMATION_SCHEMA.TABLES t
WHERE t.TABLE_TYPE = 'BASE TABLE'
  AND t.TABLE_SCHEMA NOT IN ('sys', 'INFORMATION_SCHEMA')
ORDER BY t.TABLE_NAME;
```

### 2. Colunas (Columns)

**Criticidade**: **ALTA** - Estrutura dos dados.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | Nomenclatura: `^[A-Z][A-Z0-9_]*_(ID\|DT\|VL\|QT\|PC\|DS\|NM\|IN\|TP)$` | 3.2.1.2 |
| **Tipo de Dado** | Conforme padrões (INT, DECIMAL, VARCHAR, DATETIME) | 3.2.12.2 |
| **Nullability** | NOT NULL se obrigatório, NULL se opcional | 3.2.12.3 |
| **Comment** | Descrição em português | 3.2.2 |
| **Default** | Se aplicável (ex: DATA_CRIACAO_DT DEFAULT GETDATE()) | 3.2.12.5 |

#### Sufixos Padrão

| Sufixo | Tipo | Exemplo |
|--------|------|---------|
| `_ID` | Identificador (PK/FK) | `CLIENTE_ID`, `CONTRATO_ID` |
| `_DT` | Data/DateTime | `DATA_CRIACAO_DT`, `DATA_VENCIMENTO_DT` |
| `_VL` | Valor monetário | `VALOR_CONTRATO_VL`, `SALDO_VL` |
| `_QT` | Quantidade | `QUANTIDADE_PARCELAS_QT` |
| `_PC` | Percentual | `TAXA_JUROS_PC` |
| `_DS` | Descrição (texto longo) | `OBSERVACAO_DS` |
| `_NM` | Nome (texto curto) | `NOME_CLIENTE_NM` |
| `_IN` | Indicador/Flag (S/N) | `ATIVO_IN` |
| `_TP` | Tipo/Categoria | `TIPO_CONTRATO_TP` |

#### Checklist de Validação

- [ ] Nome da coluna segue regex com sufixo obrigatório
- [ ] Tipo de dado adequado (DECIMAL para valores, DATETIME para datas)
- [ ] Precisão definida (ex: DECIMAL(18,2), VARCHAR(200))
- [ ] Nullability correta (NOT NULL se obrigatório)
- [ ] Comment preenchido
- [ ] Default definido quando aplicável
- [ ] Colunas de PK são NOT NULL
- [ ] Colunas de FK referenciam tipo compatível

#### Exemplo de Validação SQL (SQL Server)

```sql
SELECT 
    t.TABLE_NAME,
    c.COLUMN_NAME,
    c.DATA_TYPE,
    c.CHARACTER_MAXIMUM_LENGTH,
    c.NUMERIC_PRECISION,
    c.NUMERIC_SCALE,
    c.IS_NULLABLE,
    (
        SELECT CAST(ep.value AS VARCHAR(MAX))
        FROM sys.columns sc
        INNER JOIN sys.tables st ON sc.object_id = st.object_id
        INNER JOIN sys.extended_properties ep ON sc.object_id = ep.major_id 
            AND sc.column_id = ep.minor_id
        WHERE st.name = t.TABLE_NAME
          AND sc.name = c.COLUMN_NAME
          AND ep.name = 'MS_Description'
    ) AS Comment,
    CASE 
        WHEN c.COLUMN_NAME LIKE '%[_]ID' 
          OR c.COLUMN_NAME LIKE '%[_]DT' 
          OR c.COLUMN_NAME LIKE '%[_]VL'
          OR c.COLUMN_NAME LIKE '%[_]QT'
          OR c.COLUMN_NAME LIKE '%[_]PC'
          OR c.COLUMN_NAME LIKE '%[_]DS'
          OR c.COLUMN_NAME LIKE '%[_]NM'
          OR c.COLUMN_NAME LIKE '%[_]IN'
          OR c.COLUMN_NAME LIKE '%[_]TP' 
        THEN 'OK'
        ELSE 'ERRO: Sufixo ausente'
    END AS ValidacaoSufixo
FROM INFORMATION_SCHEMA.TABLES t
INNER JOIN INFORMATION_SCHEMA.COLUMNS c ON t.TABLE_NAME = c.TABLE_NAME
WHERE t.TABLE_TYPE = 'BASE TABLE'
  AND t.TABLE_SCHEMA = 'dbo'
ORDER BY t.TABLE_NAME, c.ORDINAL_POSITION;
```

### 3. Primary Keys (PK)

**Criticidade**: **CRÍTICA** - Obrigatória sem exceções.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | Nomenclatura: `PK_<NOME_TABELA>` | 3.2.1.3 |
| **Colunas** | Uma ou mais colunas NOT NULL | 3.2.4.1 |
| **Índice** | Clustered ou Non-Clustered | - |

#### Checklist de Validação

- [ ] Nomenclatura: `PK_<TABELA>`
- [ ] Todas tabelas possuem PK
- [ ] Colunas da PK são NOT NULL
- [ ] PK é Clustered (recomendado) ou Non-Clustered justificado
- [ ] PK única por tabela

#### Exemplo de Validação SQL

```sql
-- Listar tabelas SEM Primary Key
SELECT 
    t.TABLE_SCHEMA,
    t.TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES t
LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc 
    ON t.TABLE_SCHEMA = tc.TABLE_SCHEMA
   AND t.TABLE_NAME = tc.TABLE_NAME
   AND tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
WHERE t.TABLE_TYPE = 'BASE TABLE'
  AND t.TABLE_SCHEMA = 'dbo'
  AND tc.CONSTRAINT_NAME IS NULL
ORDER BY t.TABLE_NAME;

-- Validar nomenclatura de PKs
SELECT 
    tc.TABLE_NAME,
    tc.CONSTRAINT_NAME,
    CASE 
        WHEN tc.CONSTRAINT_NAME = 'PK_' + tc.TABLE_NAME THEN 'OK'
        ELSE 'ERRO: Nome incorreto (esperado: PK_' + tc.TABLE_NAME + ')'
    END AS ValidacaoNome
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
WHERE tc.CONSTRAINT_TYPE = 'PRIMARY KEY'
  AND tc.TABLE_SCHEMA = 'dbo'
ORDER BY tc.TABLE_NAME;
```

### 4. Foreign Keys (FK)

**Criticidade**: **ALTA** - Integridade referencial.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>` | 3.2.1.3 |
| **Colunas** | Coluna(s) com tipo compatível com PK referenciada | 3.2.11 |
| **Cardinalidade** | 1:1, 1:N, N:N (via tabela associativa) | 3.2.11.2 |
| **Delete Rule** | CASCADE, SET NULL, NO ACTION, RESTRICT | 3.2.11.7 |

#### Checklist de Validação

- [ ] Nomenclatura: `FK_<ORIGEM>_<DESTINO>`
- [ ] Tipo de dado compatível (FK e PK)
- [ ] Tabela destino possui PK
- [ ] Delete Rule definida adequadamente
- [ ] Relacionamento documentado no modelo PowerDesigner

#### Exemplo de Validação SQL

```sql
SELECT 
    fk.name AS FK_Name,
    OBJECT_NAME(fk.parent_object_id) AS TabelaOrigem,
    OBJECT_NAME(fk.referenced_object_id) AS TabelaDestino,
    COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS ColunaOrigem,
    COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS ColunaDestino,
    fk.delete_referential_action_desc AS DeleteRule,
    CASE 
        WHEN fk.name LIKE 'FK[_]' + OBJECT_NAME(fk.parent_object_id) + '[_]%' THEN 'OK'
        ELSE 'ERRO: Nomenclatura incorreta'
    END AS ValidacaoNome
FROM sys.foreign_keys fk
INNER JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
WHERE OBJECT_SCHEMA_NAME(fk.parent_object_id) = 'dbo'
ORDER BY TabelaOrigem, fk.name;
```

### 5. Unique Constraints (UK)

**Criticidade**: **MÉDIA** - Garantia de unicidade.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `UK_<TABELA>_<COLUNAS>` | 3.2.1.3 |
| **Colunas** | Uma ou mais colunas | - |

#### Checklist de Validação

- [ ] Nomenclatura: `UK_<TABELA>_<COLUNAS>`
- [ ] Justificativa de negócio para unicidade
- [ ] Índice automático criado

### 6. Check Constraints (CK)

**Criticidade**: **MÉDIA** - Validação de domínio.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `CK_<TABELA>_<REGRA>` | 3.2.1.3 |
| **Expressão** | Lógica de validação | - |

#### Checklist de Validação

- [ ] Nomenclatura: `CK_<TABELA>_<REGRA>`
- [ ] Regra documentada (comment ou modelo)
- [ ] Não substitui validação na aplicação (defesa em profundidade)

#### Exemplo

```sql
ALTER TABLE SPH_CONTRATO
ADD CONSTRAINT CK_SPH_CONTRATO_ATIVO_IN
CHECK (ATIVO_IN IN ('S', 'N'));

ALTER TABLE SPH_CONTRATO
ADD CONSTRAINT CK_SPH_CONTRATO_VALOR_POSITIVO
CHECK (VALOR_CONTRATO_VL > 0);
```

### 7. Índices (Indexes)

**Criticidade**: **ALTA** - Performance de consultas.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `IDX_<TABELA>_<COLUNAS>` (non-unique)<br>`IDX_UK_<TABELA>_<COLUNAS>` (unique) | 3.2.1.3 |
| **Tipo** | Clustered, Non-Clustered, Columnstore, Full-Text | - |
| **Colunas** | Colunas indexadas | - |
| **Include Columns** | Colunas adicionais (covering index) | - |

#### Checklist de Validação

- [ ] Índices em FKs (recomendado)
- [ ] Índices em colunas de busca frequente
- [ ] Não criar índices redundantes
- [ ] Nomenclatura: `IDX_<TABELA>_<COLUNAS>`
- [ ] Compactação configurada (PAGE ou ROW)

#### Exemplo de Validação SQL

```sql
SELECT 
    OBJECT_NAME(i.object_id) AS NomeTabela,
    i.name AS NomeIndice,
    i.type_desc AS TipoIndice,
    STRING_AGG(c.name, ', ') WITHIN GROUP (ORDER BY ic.key_ordinal) AS Colunas,
    i.is_unique AS IsUnique,
    p.data_compression_desc AS Compressao
FROM sys.indexes i
INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
INNER JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
INNER JOIN sys.partitions p ON i.object_id = p.object_id AND i.index_id = p.index_id
WHERE OBJECT_SCHEMA_NAME(i.object_id) = 'dbo'
  AND i.is_primary_key = 0
  AND i.is_unique_constraint = 0
GROUP BY OBJECT_NAME(i.object_id), i.name, i.type_desc, i.is_unique, p.data_compression_desc
ORDER BY NomeTabela, NomeIndice;
```

### 8. Views

**Criticidade**: **MÉDIA** - Abstração de consultas.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `VW_<DESCRICAO>` | 3.2.1.4 |
| **Comment** | Descrição em português | 3.2.2 |
| **Owner** | DBO (SQL Server) | 3.2.3 |

#### Checklist de Validação

- [ ] Nomenclatura: `VW_<DESCRICAO>`
- [ ] Comment preenchido
- [ ] Não usar SELECT * (listar colunas explicitamente)
- [ ] Documentar no modelo PowerDesigner

### 9. Stored Procedures

**Criticidade**: **MÉDIA** - Lógica de negócio.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `SP_<ACAO>_<OBJETO>` | 3.2.1.5 |
| **Comment** | Descrição em português | 3.2.2 |
| **Parâmetros** | Documentados | - |

#### Checklist de Validação

- [ ] Nomenclatura: `SP_<ACAO>_<OBJETO>`
- [ ] Comment preenchido (descrição, parâmetros, retorno)
- [ ] Tratamento de erros (TRY/CATCH)
- [ ] Transações explícitas quando necessário

### 10. Functions

**Criticidade**: **BAIXA** - Funções auxiliares.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `FN_<DESCRICAO>` | 3.2.1.6 |
| **Comment** | Descrição em português | 3.2.2 |

### 11. Triggers

**Criticidade**: **MÉDIA** - Lógica automática.

#### Atributos Obrigatórios

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `TR_<TABELA>_<EVENTO>_<ACAO>` | 3.2.1.7 |
| **Timing** | BEFORE, AFTER, INSTEAD OF | - |
| **Evento** | INSERT, UPDATE, DELETE | - |

#### Checklist de Validação

- [ ] Nomenclatura: `TR_<TABELA>_<EVENTO>_<ACAO>`
- [ ] Justificativa (preferir validação em aplicação)
- [ ] Performance avaliada (triggers podem degradar INSERT/UPDATE)

### 12. Sequences

**Criticidade**: **MÉDIA** - Geração de IDs.

#### Atributos Obrigatórios (Oracle/DB2)

| Atributo | Descrição | TE074 Ref |
|----------|-----------|-----------|
| **Nome** | `SEQ_<TABELA>_<COLUNA>` | 3.2.12.4 |
| **Start With** | Valor inicial | - |
| **Increment By** | Incremento | - |

#### Checklist de Validação

- [ ] Nomenclatura: `SEQ_<TABELA>_<COLUNA>`
- [ ] Cache configurado (performance)

**SQL Server**: Usar `IDENTITY` nas colunas.

## Processo de Validação

### Fluxo de Trabalho

```
1. Desenvolvimento
   ├── Criar modelo no PowerDesigner
   ├── Gerar DDL
   └── Executar checklist local

2. Pré-validação
   ├── Acessar http://gestaodedados.coresp.caixa
   ├── Upload do arquivo PDM
   └── Analisar relatório de não conformidades

3. Correção
   ├── Ajustar modelo conforme relatório
   └── Re-executar pré-validador

4. Submissão ADI
   ├── Criar demanda no RTC
   ├── Anexar PDM validado
   └── Aguardar aprovação ADI

5. Implementação ABD
   ├── ABD valida novamente
   ├── ABD executa DDL em ambiente
   └── Modelo aprovado e implementado
```

### Ferramentas de Validação

#### Pré-validador CAIXA

**URL**: http://gestaodedados.coresp.caixa

**Funcionalidades**:
- Validação automática de nomenclatura
- Verificação de PKs, FKs, índices
- Análise de comments
- Detecção de não conformidades TE074
- Geração de relatório HTML

**Entrada**: Arquivo `.pdm` (PowerDesigner)

#### Script SQL de Validação Completa

Ver arquivo anexo: `ValidacaoModelo_SQLServer.sql` (gerado com base neste documento).

## Relatório de Validação

### Estrutura do Relatório

**Seções obrigatórias**:

1. **Resumo Executivo**
   - Total de objetos validados
   - Não conformidades críticas
   - Não conformidades médias/baixas

2. **Tabelas**
   - Lista completa
   - Nomenclatura
   - PKs
   - Comments

3. **Colunas**
   - Por tabela
   - Sufixos
   - Tipos de dados
   - Nullability

4. **Relacionamentos**
   - FKs
   - Cardinalidades
   - Delete Rules

5. **Índices**
   - Por tabela
   - Tipo
   - Compactação

6. **Não Conformidades**
   - Detalhamento
   - Criticidade
   - Ações corretivas

### Exemplo de Relatório (Resumo)

```markdown
# Relatório de Validação - Modelo SPH_CONTRATOS

**Data**: 2026-01-06  
**Versão Modelo**: 1.0  
**Responsável**: João Silva (ADI)

## Resumo Executivo

- **Total de Objetos**: 45
  - Tabelas: 12
  - Colunas: 156
  - PKs: 12
  - FKs: 18
  - Índices: 25
  - Views: 3
  - Stored Procedures: 5

- **Não Conformidades**:
  - Críticas: 0
  - Médias: 2 (comments faltando em 2 tabelas)
  - Baixas: 5 (nomenclatura de 3 índices)

## Status: ✅ APROVADO (com ressalvas)

**Ações Corretivas**:
1. Adicionar comments nas tabelas SPH_CONTRATO_HISTORICO e SPH_PAGAMENTO
2. Renomear índices IDX01, IDX02, IDX03 para IDX_<TABELA>_<COLUNAS>
```

## Checklist Geral de Validação

### Pré-submissão (Desenvolvimento)

- [ ] Modelo criado no PowerDesigner
- [ ] Nomenclatura conforme TE074 3.2.1
- [ ] Comments em todas tabelas e colunas
- [ ] PKs definidas em todas tabelas
- [ ] FKs com Delete Rules corretas
- [ ] Compactação PAGE configurada
- [ ] Particionamento avaliado (se volumetria > 100M)
- [ ] Pré-validador executado com sucesso
- [ ] DDL gerado e revisado

### Validação ADI

- [ ] Demanda RTC criada
- [ ] PDM anexado
- [ ] Nomenclatura aprovada
- [ ] Normalização 3NF verificada
- [ ] Integridade referencial correta
- [ ] Volumetria documentada
- [ ] Lifecycle de dados definido

### Implementação ABD

- [ ] DDL validado
- [ ] Scripts de carga (se aplicável)
- [ ] Permissões RBAC definidas
- [ ] Backup/Recovery planejado
- [ ] Monitoramento configurado

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE109
