# Melhores Práticas em Modelagem de Dados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Melhores Práticas Modelagem - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Melhores%20Práticas%20em%20Modelagem%20de%20Dados.aspx)

## Contexto

Este documento consolida **melhores práticas corporativas** para modelagem de dados na CAIXA, complementando a **TE074** com recomendações práticas, padrões de mercado e lições aprendidas.

## Referências

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **ISO/IEC 11179** - Metadata registries
- **The Data Model Resource Book** (Len Silverston)
- **Database Design for Mere Mortals** (Michael Hernandez)

## 1. Princípios Fundamentais

### 1.1. Modelagem é um Processo Iterativo

**Não espere perfeição na primeira versão**. Modelo evolui com:
- Reuniões com especialistas de negócio
- Validações com desenvolvedores
- Revisões com ADI/ABD
- Feedback de uso em produção

**Versionamento** (TE109): Controlar mudanças no modelo PowerDesigner.

### 1.2. Negócio Antes de Tecnologia

**Modelo conceitual primeiro**:
1. **Conceitual**: Entidades, atributos, relacionamentos (independente de SGBD)
2. **Lógico**: Normalização, chaves (independente de SGBD)
3. **Físico**: Tipos de dados, índices, particionamento (específico de SGBD)

**Evitar**: Começar direto no modelo físico SQL Server sem entender o negócio.

### 1.3. Documentação é Parte do Modelo

**Comments não são opcionais** (TE074 3.2.2). Documentar:
- **O quê**: Descrição da tabela/coluna
- **Por quê**: Justificativa de decisões (ex: desnormalização)
- **Quando**: Regras de lifecycle (retention, archiving)
- **Como**: Cálculos derivados, regras de negócio

## 2. Normalização

### 2.1. Sempre Normalizar Primeiro

**3NF obrigatória** em modelos transacionais (TE074 3.2.4).

**Benefícios**:
- Elimina redundância
- Facilita manutenção
- Evita anomalias de atualização
- Base sólida para desnormalização consciente

### 2.2. Desnormalizar Com Justificativa

**Quando considerar**:
- Data Warehouse/Analytics (Star Schema)
- Colunas de cache para performance crítica
- Dados históricos (snapshot tables)

**Sempre documentar**:
```sql
-- Comment no PowerDesigner:
-- "Coluna NOME_CLIENTE_NM desnormalizada para performance de relatórios.
--  Origem: DIM_CLIENTE.NOME_CLIENTE_NM. 
--  Atualização: Trigger TR_CLIENTE_AFTER_UPDATE."
```

### 2.3. Evitar Over-Normalization

**Exemplo de excesso**:
```sql
-- ❌ EVITAR: Tabela para cada enum simples
CREATE TABLE REF_TIPO_SEXO (
    SEXO_TP CHAR(1) PRIMARY KEY,
    DESCRICAO_DS VARCHAR(20)
);
-- Valores: M/F/O (apenas 3 registros)

-- ✅ PREFERIR: Check Constraint
CREATE TABLE PESSOA (
    -- ...
    SEXO_TP CHAR(1),
    CONSTRAINT CK_PESSOA_SEXO_TP CHECK (SEXO_TP IN ('M', 'F', 'O'))
);
```

**Quando criar tabela de referência**:
- Valores mudam frequentemente
- Necessidade de metadados adicionais (descrição longa, ordenação, flag ativo)
- Lista pode crescer (ex: estados, municípios, produtos)

## 3. Chaves

### 3.1. Primary Keys (PK)

#### Obrigatórias Sem Exceção

**TE074 3.2.4.1**: Toda tabela DEVE ter PK.

**Violações comuns**:
- Tabelas de log sem PK
- Tabelas de staging sem PK
- Tabelas de integração temporária

**Solução**: Se não há chave natural, criar surrogate key.

#### Natural vs Surrogate

**Natural Key**: Atributo do negócio (CPF, CNPJ, matrícula)
```sql
CREATE TABLE CLIENTE (
    CPF_CNPJ_NK VARCHAR(14) PRIMARY KEY,  -- Natural Key
    NOME_NM VARCHAR(200)
);
```

**Surrogate Key**: Identificador técnico sem significado de negócio
```sql
CREATE TABLE CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,  -- Surrogate Key
    CPF_CNPJ_NK VARCHAR(14) UNIQUE NOT NULL,      -- Natural Key (UK)
    NOME_NM VARCHAR(200)
);
```

**Recomendação CAIXA**:
- **Transacional (OLTP)**: Surrogate key preferida (BIGINT IDENTITY)
- **Dimensional (OLAP)**: Surrogate key obrigatória (permite SCD Type 2)
- **Referência**: Natural key aceitável (códigos fixos)

**Vantagens Surrogate Key**:
- Independência de mudanças de negócio (CPF muda? Improvável, mas possível)
- Performance (INT/BIGINT vs VARCHAR em FKs)
- Simplicidade em relacionamentos N:N
- Suporte a versionamento (SCD Type 2 em DW)

#### Composite Keys

**Evitar quando possível**:
```sql
-- ❌ EVITAR: PK composta propaga complexidade
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ID BIGINT,
    ITEM_SEQUENCIA_NR INT,
    PRIMARY KEY (PEDIDO_ID, ITEM_SEQUENCIA_NR)
);

-- FK em outra tabela também seria composta
CREATE TABLE PEDIDO_ITEM_ENTREGA (
    PEDIDO_ID BIGINT,           -- FK parte 1
    ITEM_SEQUENCIA_NR INT,      -- FK parte 2
    DATA_ENTREGA_DT DATETIME,
    FOREIGN KEY (PEDIDO_ID, ITEM_SEQUENCIA_NR) 
        REFERENCES PEDIDO_ITEM(PEDIDO_ID, ITEM_SEQUENCIA_NR)
);
```

**✅ PREFERIR: Surrogate key única**:
```sql
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ITEM_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    PEDIDO_ID BIGINT NOT NULL,
    ITEM_SEQUENCIA_NR INT NOT NULL,
    UNIQUE (PEDIDO_ID, ITEM_SEQUENCIA_NR)  -- Unicidade de negócio como UK
);

CREATE TABLE PEDIDO_ITEM_ENTREGA (
    PEDIDO_ITEM_ID BIGINT PRIMARY KEY,  -- FK simples
    DATA_ENTREGA_DT DATETIME,
    FOREIGN KEY (PEDIDO_ITEM_ID) REFERENCES PEDIDO_ITEM(PEDIDO_ITEM_ID)
);
```

### 3.2. Foreign Keys (FK)

#### Sempre Declarar FKs

**TE074 3.2.11**: Relacionamentos devem ter FKs no banco.

**Não confiar apenas na aplicação**:
```sql
-- ❌ EVITAR: FK apenas "lógica" (sem constraint)
CREATE TABLE CONTRATO (
    CLIENTE_ID BIGINT  -- FK "virtual", sem FOREIGN KEY
);

-- ✅ CORRETO: FK física
CREATE TABLE CONTRATO (
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID)
);
```

**Benefícios**:
- Integridade garantida pelo SGBD
- Documentação automática (INFORMATION_SCHEMA)
- Diagramas PowerDesigner refletem realidade
- Proteção contra bugs da aplicação

#### Delete Rules (Regras de Deleção)

**Escolher adequadamente** (TE074 3.2.11.7):

| Delete Rule | Comportamento | Quando Usar |
|-------------|---------------|-------------|
| `NO ACTION` | Bloqueia exclusão se houver filhos | **Padrão** (maioria dos casos) |
| `RESTRICT` | Igual a NO ACTION (SQL Standard) | Portabilidade entre SGBDs |
| `CASCADE` | Exclui filhos automaticamente | Relações 1:N estritas (ex: Pedido→Itens) |
| `SET NULL` | Define FK como NULL | Relações opcionais (ex: Vendedor pode sair) |

**Exemplo CASCADE**:
```sql
-- Ao excluir PEDIDO, exclui automaticamente PEDIDO_ITEM
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    CONSTRAINT FK_PEDIDO_ITEM_PEDIDO 
        FOREIGN KEY (PEDIDO_ID) REFERENCES PEDIDO(PEDIDO_ID)
        ON DELETE CASCADE
);
```

**⚠️ Cuidado com CASCADE**:
- Pode excluir grandes volumes inadvertidamente
- Dificulta auditoria (quem excluiu os filhos?)
- Preferir soft delete (flag `ATIVO_IN`)

#### Índices em FKs

**Sempre criar índices em colunas FK**:
```sql
CREATE TABLE CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CONSTRAINT FK_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID),
    CONSTRAINT FK_CONTRATO_PRODUTO 
        FOREIGN KEY (PRODUTO_ID) REFERENCES PRODUTO(PRODUTO_ID)
);

-- Índices obrigatórios
CREATE INDEX IDX_CONTRATO_CLIENTE_ID ON CONTRATO(CLIENTE_ID);
CREATE INDEX IDX_CONTRATO_PRODUTO_ID ON CONTRATO(PRODUTO_ID);
```

**Benefícios**:
- Performance em JOINs
- Performance em DELETE da tabela pai (SGBD verifica filhos)
- Evita table scans

## 4. Tipos de Dados

### 4.1. Escolher Tipo Adequado

| Tipo de Dado | Usar | Evitar |
|--------------|------|--------|
| **Datas** | `DATE`, `DATETIME`, `DATETIME2` | VARCHAR, INT (yyyymmdd) |
| **Valores Monetários** | `DECIMAL(18,2)`, `MONEY` | FLOAT, REAL |
| **Flags** | `CHAR(1)` ('S'/'N'), `BIT` | VARCHAR(10) ('Sim'/'Não') |
| **IDs** | `BIGINT`, `INT` | VARCHAR (evitar) |
| **Textos Longos** | `VARCHAR(MAX)`, `TEXT` | VARCHAR(8000) truncado |

### 4.2. Precisão de DECIMAL

**Sempre especificar precisão e escala**:
```sql
-- ❌ EVITAR: Precisão padrão (pode variar)
VALOR_VL DECIMAL

-- ✅ CORRETO: Precisão explícita
VALOR_CONTRATO_VL DECIMAL(18,2)  -- 18 dígitos, 2 decimais
TAXA_JUROS_PC DECIMAL(5,4)        -- 99.9999%
```

### 4.3. VARCHAR vs CHAR

**VARCHAR**: Tamanho variável (recomendado)
```sql
NOME_NM VARCHAR(200)  -- Usa apenas o necessário
```

**CHAR**: Tamanho fixo (padding com espaços)
```sql
UF_SG CHAR(2)         -- Sempre 2 caracteres
ATIVO_IN CHAR(1)      -- Sempre 1 caractere ('S'/'N')
```

**Regra**: Use CHAR apenas para comprimento **sempre** fixo.

### 4.4. DATETIME vs DATETIME2

**SQL Server**:
- `DATETIME`: Precisão de 3.33ms, range 1753-9999
- `DATETIME2`: Precisão de 100ns, range 0001-9999, menor storage

**Recomendação**: `DATETIME2` em novos projetos.

```sql
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
```

### 4.5. NVARCHAR vs VARCHAR

**NVARCHAR**: Unicode (UTF-16), 2 bytes/char
**VARCHAR**: ANSI, 1 byte/char

**CAIXA**: Preferir `VARCHAR` (português não requer Unicode).

**Exceção**: Sistemas multilíngues ou com emojis.

## 5. Nomenclatura

### 5.1. Consistência é Fundamental

**Seguir TE074 3.2.1 rigorosamente**:
- Tabelas: `SYS_NOME_TABELA`
- Colunas: `NOME_COLUNA_SF` (com sufixo)
- PKs: `PK_NOME_TABELA`
- FKs: `FK_ORIGEM_DESTINO`

**Evitar criatividade**:
```sql
-- ❌ EVITAR: Nomes inconsistentes
tblCliente
cliente
TB_CLIENTES
Client

-- ✅ CORRETO: Padrão TE074
SPH_CLIENTE
```

### 5.2. Nomes Descritivos

**Evitar abreviações excessivas**:
```sql
-- ❌ EVITAR: Abreviação confusa
SPH_CTR_HAB

-- ✅ CORRETO: Nome claro
SPH_CONTRATO_HABITACIONAL
```

**Limite**: 30 caracteres (Oracle), 128 (SQL Server) - usar com sabedoria.

### 5.3. Plural vs Singular

**CAIXA**: **Singular** (TE074 padrão).

```sql
-- ❌ EVITAR
SPH_CLIENTES
SPH_CONTRATOS

-- ✅ CORRETO
SPH_CLIENTE
SPH_CONTRATO
```

### 5.4. Prefixos de Sistema

**Obrigatório** em ambientes multi-sistemas:
```sql
-- Sistema SPH (Plataforma Habitacional)
SPH_CLIENTE
SPH_CONTRATO

-- Sistema FIN (Financeiro)
FIN_CONTA
FIN_LANCAMENTO
```

**Benefícios**:
- Evita colisões de nomes
- Identifica origem em consultas cross-system
- Organização lógica

## 6. Performance

### 6.1. Índices Estratégicos

**Não criar índices às cegas**:
- **Muitos índices**: Degradam INSERT/UPDATE/DELETE
- **Poucos índices**: Degradam SELECT

**Estratégia**:
1. PK (automático)
2. FKs (obrigatório)
3. Colunas em WHERE frequente
4. Colunas em ORDER BY
5. Colunas em JOIN (além de FKs)

**Monitorar** (SQL Server):
```sql
-- Índices faltando (sugestão do SQL Server)
SELECT 
    DatabaseName = DB_NAME(mid.database_id),
    SchemaName = OBJECT_SCHEMA_NAME(mid.object_id, mid.database_id),
    TableName = OBJECT_NAME(mid.object_id, mid.database_id),
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns,
    mid.avg_user_impact,
    mid.user_seeks
FROM sys.dm_db_missing_index_details AS mid
ORDER BY mid.avg_user_impact DESC;

-- Índices não usados
SELECT 
    OBJECT_NAME(i.object_id) AS TableName,
    i.name AS IndexName,
    i.type_desc,
    us.user_seeks,
    us.user_scans,
    us.user_lookups,
    us.user_updates
FROM sys.indexes i
LEFT JOIN sys.dm_db_index_usage_stats us 
    ON i.object_id = us.object_id AND i.index_id = us.index_id
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
  AND i.index_id > 0  -- Não incluir heap
  AND us.user_seeks = 0
  AND us.user_scans = 0
  AND us.user_lookups = 0
ORDER BY us.user_updates DESC;
```

### 6.2. Compactação

**Sempre ativar** (TE074 3.2.9):
```sql
CREATE TABLE SPH_CONTRATO (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Ou alterar existente
ALTER TABLE SPH_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);
```

**Benefícios**: 40-70% redução de espaço, melhor I/O.

### 6.3. Particionamento

**Avaliar para tabelas grandes** (TE074 3.2.8.3): > 100M linhas/ano.

**Benefícios**:
- Queries filtradas por período são mais rápidas
- Manutenção facilitada (TRUNCATE partição)
- Expurgo eficiente

**Exemplo**: Particionar por mês.

### 6.4. Columnstore Indexes

**SQL Server 2016+**: Para Data Warehouse.

```sql
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;
```

**Benefícios**: Compressão extrema, consultas analíticas 10-100x mais rápidas.

## 7. Segurança e Compliance

### 7.1. Dados Sensíveis

**LGPD/GDPR**: Identificar colunas com dados pessoais.

**Criptografia** (TE079):
- TDE (Transparent Data Encryption) - dados em repouso
- Always Encrypted - dados em uso
- Column-level encryption - colunas específicas

**Exemplo**:
```sql
-- Marcar coluna como sensível (comment)
CREATE TABLE SPH_CLIENTE (
    CPF_CNPJ_NK VARCHAR(14),  -- Dado Sensível: LGPD Art. 5º
    -- ...
);
```

### 7.2. Auditoria

**Tabelas de log** (sempre):
```sql
CREATE TABLE SPH_CLIENTE_AUDITORIA (
    AUDITORIA_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CLIENTE_ID BIGINT,
    OPERACAO_TP CHAR(1),  -- I/U/D
    USUARIO_NM VARCHAR(100),
    DATA_OPERACAO_DT DATETIME2 DEFAULT GETDATE(),
    DADOS_ANTERIORES_JSON VARCHAR(MAX),
    DADOS_NOVOS_JSON VARCHAR(MAX)
) WITH (DATA_COMPRESSION = PAGE);
```

**Trigger de auditoria**:
```sql
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    INSERT INTO SPH_CLIENTE_AUDITORIA (
        CLIENTE_ID, OPERACAO_TP, USUARIO_NM, 
        DADOS_ANTERIORES_JSON, DADOS_NOVOS_JSON
    )
    SELECT 
        d.CLIENTE_ID, 
        'U', 
        SUSER_NAME(),
        (SELECT d.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER),
        (SELECT i.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
    FROM deleted d
    INNER JOIN inserted i ON d.CLIENTE_ID = i.CLIENTE_ID;
END;
```

### 7.3. RBAC (Role-Based Access Control)

**Não usar usuário SA/DBO em aplicação**:
- Criar roles específicas: `APP_SPH_READ`, `APP_SPH_WRITE`
- Aplicação usa service account com role mínima

```sql
-- Azure SQL Database / SQL Server
CREATE USER [app_sph_service] WITH PASSWORD = 'xxx';
ALTER ROLE db_datareader ADD MEMBER [app_sph_service];
GRANT SELECT ON SCHEMA::dbo TO [app_sph_service];
```

## 8. Lifecycle de Dados

### 8.1. Retention Policies

**Definir** (TE074 3.2.10):
- **Transacional**: Quanto tempo em tabela ativa?
- **Histórico**: Migrar para tabela `_HISTORICO`?
- **Expurgo**: Quando deletar definitivamente?

**Exemplo**:
```sql
-- Dados ativos: 2 anos
-- Histórico: 5 anos adicionais (total 7 anos)
-- Expurgo: Após 7 anos

-- Automação: Job SQL Agent mensal
```

### 8.2. Soft Delete

**Preferir flag de exclusão**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    ATIVO_IN CHAR(1) DEFAULT 'S',
    DATA_EXCLUSAO_DT DATETIME2,
    USUARIO_EXCLUSAO_NM VARCHAR(100)
);

-- "Excluir"
UPDATE SPH_CONTRATO
SET ATIVO_IN = 'N',
    DATA_EXCLUSAO_DT = GETDATE(),
    USUARIO_EXCLUSAO_NM = SUSER_NAME()
WHERE CONTRATO_ID = 123;

-- Consultas filtram por ATIVO_IN
SELECT * FROM SPH_CONTRATO WHERE ATIVO_IN = 'S';
```

**Vantagens**:
- Recuperação fácil
- Auditoria completa
- Conformidade LGPD (direito ao esquecimento com prazo)

## 9. Documentação

### 9.1. Comments em Tudo

**Tabelas**:
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Armazena contratos habitacionais do SISPH. Inclui financiamentos, garantias e dados de parcelas.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO';
```

**Colunas**:
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Identificador único do contrato. PK, gerada automaticamente (IDENTITY).',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO',
    @level2type = N'COLUMN', @level2name = N'CONTRATO_ID';
```

### 9.2. Diagramas

**PowerDesigner**: Obrigatório (TE074).

**Dicas**:
- Um diagrama principal completo
- Diagramas secundários por módulo/domínio
- Atualizar modelo ao alterar banco

### 9.3. Dicionário de Dados

**Gerar automaticamente** do PowerDesigner ou INFORMATION_SCHEMA:

```sql
SELECT 
    t.TABLE_NAME AS Tabela,
    c.COLUMN_NAME AS Coluna,
    c.DATA_TYPE AS Tipo,
    CAST(ep.value AS VARCHAR(MAX)) AS Descricao
FROM INFORMATION_SCHEMA.TABLES t
INNER JOIN INFORMATION_SCHEMA.COLUMNS c ON t.TABLE_NAME = c.TABLE_NAME
LEFT JOIN sys.tables st ON st.name = t.TABLE_NAME
LEFT JOIN sys.columns sc ON sc.object_id = st.object_id AND sc.name = c.COLUMN_NAME
LEFT JOIN sys.extended_properties ep ON sc.object_id = ep.major_id 
    AND sc.column_id = ep.minor_id
    AND ep.name = 'MS_Description'
WHERE t.TABLE_SCHEMA = 'dbo'
ORDER BY t.TABLE_NAME, c.ORDINAL_POSITION;
```

## 10. Checklist de Revisão

### Antes de Submeter à ADI

- [ ] Nomenclatura TE074 em todos objetos
- [ ] Comments em todas tabelas e colunas
- [ ] PKs definidas em todas tabelas
- [ ] FKs declaradas no banco (não apenas lógicas)
- [ ] Índices em FKs
- [ ] Compactação PAGE configurada
- [ ] Tipos de dados adequados (DECIMAL para valores, DATETIME2 para datas)
- [ ] 3NF validada (ou desnormalização justificada)
- [ ] Pré-validador executado com sucesso
- [ ] Modelo PowerDesigner atualizado e documentado
- [ ] Volumetria estimada
- [ ] Retention policy definida
- [ ] Dados sensíveis identificados
- [ ] Auditoria planejada

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE109, TE124, ISO/IEC 11179
