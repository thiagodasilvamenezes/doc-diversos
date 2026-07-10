# Modelagem de Dados para Sistemas CAIXA

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Modelagem de Dados Sistemas CAIXA - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem%20de%20Dados%20para%20Sistemas%20CAIXA.aspx)

## Contexto

Este documento consolida as **diretrizes corporativas de modelagem de dados para sistemas CAIXA**, integrando normas técnicas, ferramentas, processos e padrões de mercado.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (norma principal)
- **TE079** - Segurança em Ambientes Computacionais
- **TE105** - Integração e Compartilhamento de Dados
- **TE109** - Versionamento e Gestão de Configuração
- **TE124** - Governança de Dados
- **ISO/IEC 11179** - Metadata registries (MDR)
- **TE183** - Produtos Adquiridos (frameworks autorizados)

## Visão Geral do Processo

### Ciclo de Vida da Modelagem

```
1. Levantamento de Requisitos
   ├── Reuniões com área de negócio
   ├── Análise de sistemas legados
   └── Documentação de entidades e regras

2. Modelagem Conceitual
   ├── Diagrama ER (Entidade-Relacionamento)
   ├── Identificação de entidades
   ├── Definição de atributos
   └── Mapeamento de relacionamentos

3. Modelagem Lógica
   ├── Normalização (3NF obrigatória)
   ├── Definição de chaves (PK/FK)
   ├── Validação de integridade referencial
   └── Independente de SGBD

4. Modelagem Física
   ├── Adaptação para SGBD específico (SQL Server, Oracle, DB2)
   ├── Tipos de dados, índices, particionamento
   ├── Compactação, segurança
   └── Geração de DDL

5. Validação e Aprovação
   ├── Pré-validador (http://gestaodedados.coresp.caixa)
   ├── Revisão ADI (Arquitetura de Dados e Informação)
   ├── Aprovação ABD (Administração de Banco de Dados)
   └── RTC workflow

6. Implementação e Manutenção
   ├── Execução de DDL em ambientes
   ├── Versionamento no PowerDesigner
   ├── Atualização conforme mudanças de negócio
   └── Conformidade contínua
```

## Ferramentas Obrigatórias

### SAP PowerDesigner

**Ferramenta corporativa** para modelagem de dados.

**Funcionalidades**:
- Modelagem conceitual, lógica e física
- Geração de DDL para SQL Server, Oracle, DB2
- Engenharia reversa (importar banco existente)
- Versionamento e comparação de modelos
- Validação de nomenclatura e regras TE074
- Geração de relatórios e documentação

**Padronização**:
- Extensão: `.pdm` (Physical Data Model)
- Nomenclatura: `<SISTEMA>_DIAGRAMA_PRINCIPAL.pdm`
- Versionamento: Integração com Git, TFS, RTC

### Pré-validador de Modelos

**URL**: http://gestaodedados.coresp.caixa

**Objetivo**: Validação automática de conformidade TE074 **antes** de submeter à ADI.

**Validações**:
- Nomenclatura de tabelas, colunas, constraints
- Presença de PKs
- Comments obrigatórios
- Tipos de dados inadequados
- Relacionamentos sem FK física
- Volumetria e particionamento

**Processo**:
1. Exportar modelo PowerDesigner (`.pdm`)
2. Upload no pré-validador
3. Analisar relatório de não conformidades
4. Corrigir modelo
5. Re-executar até obter aprovação

**Status Possíveis**:
- ✅ **Aprovado**: Pronto para submeter à ADI
- ⚠️ **Aprovado com Ressalvas**: Correções não-críticas pendentes
- ❌ **Reprovado**: Correções críticas obrigatórias

## Norma TE074 - Principais Diretrizes

### Nomenclatura (TE074 3.2.1)

#### Tabelas

**Formato**: `<PREFIXO_SISTEMA>_<NOME_DESCRITIVO>`

**Regex**: `^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$`

**Exemplos**:
- `SPH_CLIENTE` (Sistema Plataforma Habitacional)
- `FIN_LANCAMENTO` (Sistema Financeiro)
- `POI_TRILHA_AUDITORIA` (Plataforma Operações Imobiliárias)

**Regras**:
- Prefixo 3 letras (sigla do sistema)
- Nome descritivo em português
- Singular (não plural)
- Uppercase (maiúsculas)
- Max 30 caracteres (limite Oracle)

#### Colunas

**Formato**: `<NOME>_<SUFIXO>`

**Regex**: `^[A-Z][A-Z0-9_]*_(ID|DT|VL|QT|PC|DS|NM|IN|TP)$`

**Sufixos Obrigatórios**:

| Sufixo | Tipo | Descrição | Exemplo |
|--------|------|-----------|---------|
| `_ID` | Identificador (PK/FK) | BIGINT, INT | `CLIENTE_ID`, `CONTRATO_ID` |
| `_DT` | Data/DateTime | DATE, DATETIME, DATETIME2 | `DATA_CRIACAO_DT` |
| `_VL` | Valor monetário | DECIMAL(18,2), MONEY | `VALOR_CONTRATO_VL` |
| `_QT` | Quantidade | INT, DECIMAL | `QUANTIDADE_PARCELAS_QT` |
| `_PC` | Percentual | DECIMAL(5,4) | `TAXA_JUROS_PC` |
| `_DS` | Descrição (longo) | VARCHAR(MAX), TEXT | `OBSERVACAO_DS` |
| `_NM` | Nome (curto) | VARCHAR(200) | `NOME_CLIENTE_NM` |
| `_IN` | Indicador/Flag | CHAR(1), BIT | `ATIVO_IN` ('S'/'N') |
| `_TP` | Tipo/Categoria | VARCHAR(20) | `TIPO_CONTRATO_TP` |

**Exemplos**:
```sql
CLIENTE_ID BIGINT
NOME_CLIENTE_NM VARCHAR(200)
CPF_CNPJ_NK VARCHAR(14)  -- NK = Natural Key
DATA_NASCIMENTO_DT DATE
SALDO_CONTA_VL DECIMAL(18,2)
QUANTIDADE_DEPENDENTES_QT INT
TAXA_DESCONTO_PC DECIMAL(5,4)
OBSERVACAO_DS VARCHAR(MAX)
ATIVO_IN CHAR(1)
TIPO_PESSOA_TP CHAR(1)  -- F/J
```

#### Constraints

**Primary Key**: `PK_<TABELA>`
```sql
CONSTRAINT PK_SPH_CLIENTE PRIMARY KEY (CLIENTE_ID)
```

**Foreign Key**: `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>`
```sql
CONSTRAINT FK_SPH_CONTRATO_SPH_CLIENTE 
    FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
```

**Unique Key**: `UK_<TABELA>_<COLUNAS>`
```sql
CONSTRAINT UK_SPH_CLIENTE_CPF_CNPJ_NK UNIQUE (CPF_CNPJ_NK)
```

**Check**: `CK_<TABELA>_<REGRA>`
```sql
CONSTRAINT CK_SPH_CLIENTE_ATIVO_IN CHECK (ATIVO_IN IN ('S', 'N'))
```

**Default**: `DF_<TABELA>_<COLUNA>`
```sql
CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S'
```

#### Índices

**Não-único**: `IDX_<TABELA>_<COLUNAS>`
```sql
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE_ID 
    ON SPH_CONTRATO(CLIENTE_ID);
```

**Único**: `IDX_UK_<TABELA>_<COLUNAS>`
```sql
CREATE UNIQUE INDEX IDX_UK_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE(CPF_CNPJ_NK);
```

### Descrição de Objetos (TE074 3.2.2)

**Comments obrigatórios** em todas tabelas e colunas (português).

**SQL Server** (Extended Properties):
```sql
-- Tabela
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Armazena dados cadastrais de clientes do SISPH, incluindo pessoas físicas e jurídicas.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CLIENTE';

-- Coluna
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Identificador único do cliente. PK gerada automaticamente (IDENTITY).',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CLIENTE',
    @level2type = N'COLUMN', @level2name = N'CLIENTE_ID';
```

**Oracle** (COMMENT ON):
```sql
COMMENT ON TABLE SPH_CLIENTE IS 
    'Armazena dados cadastrais de clientes do SISPH.';
COMMENT ON COLUMN SPH_CLIENTE.CLIENTE_ID IS 
    'Identificador único do cliente. PK gerada por sequência.';
```

### Owner/Schema (TE074 3.2.3)

**SQL Server**: Owner = `dbo` (padrão corporativo)
```sql
CREATE TABLE dbo.SPH_CLIENTE (...)
```

**Oracle/DB2**: Owner = sigla do sistema (ex: `SPH`)
```sql
CREATE TABLE SPH.SPH_CLIENTE (...)
```

### Primary Keys (TE074 3.2.4)

**Obrigatória sem exceções** - Toda tabela DEVE ter PK.

**Recomendação**: Surrogate key (BIGINT IDENTITY).

```sql
CREATE TABLE SPH_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CPF_CNPJ_NK VARCHAR(14) UNIQUE NOT NULL,  -- Natural Key como UK
    -- ...
);
```

**Exceção aceitável**: Tabelas de referência com código fixo podem usar natural key como PK.
```sql
CREATE TABLE REF_ESTADO (
    UF_SG CHAR(2) PRIMARY KEY,  -- Natural Key: SP, RJ, MG
    NOME_ESTADO_NM VARCHAR(50)
);
```

### Normalização (TE074 3.2.4.3)

**3NF obrigatória** em modelos transacionais (OLTP).

**Formas Normais**:

1. **1NF**: Atomicidade (sem listas em uma coluna)
2. **2NF**: Sem dependências parciais (toda coluna depende da PK completa)
3. **3NF**: Sem dependências transitivas (colunas dependem apenas da PK)

**Exceções** (devem ser justificadas):
- Data Warehouse (Star Schema desnormalizado)
- Performance crítica (caching de dados)
- Dados históricos (snapshot tables)

### Tipos de Tabelas (TE074 3.2.5-3.2.7)

#### Transacionais

Dados operacionais do dia a dia.

**Características**:
- Alta volumetria
- INSERT/UPDATE/DELETE frequentes
- Retention: 1-2 anos (depois migrar para Histórico)
- Compactação obrigatória
- Índices em FKs

**Exemplo**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    STATUS_TP VARCHAR(20)
) WITH (DATA_COMPRESSION = PAGE);
```

#### Suporte (Referência)

Dados de apoio (enumerações, domínios).

**Características**:
- Baixa volumetria
- Raras alterações
- Sem expurgo
- Podem usar natural key como PK

**Exemplo**:
```sql
CREATE TABLE REF_TIPO_CONTRATO (
    TIPO_CONTRATO_TP VARCHAR(20) PRIMARY KEY,
    DESCRICAO_DS VARCHAR(200),
    ATIVO_IN CHAR(1) DEFAULT 'S'
);
```

#### Histórico

Dados migrados de tabelas transacionais.

**Características**:
- Append-only (apenas INSERT)
- Retention longo (5-10 anos)
- Compactação e particionamento obrigatórios
- Read-only para consultas

**Nomenclatura**: `<TABELA>_HISTORICO`

**Exemplo**:
```sql
CREATE TABLE SPH_CONTRATO_HISTORICO (
    CONTRATO_ID BIGINT,
    -- ... mesmas colunas da tabela transacional
    DATA_MIGRACAO_DT DATETIME2 DEFAULT GETDATE(),
    PERIODO_REFERENCIA_DT DATE
) WITH (DATA_COMPRESSION = PAGE);

-- Particionamento por ano
-- (criar partition function e scheme)
```

### Particionamento (TE074 3.2.8)

**Avaliar quando**:
- Volumetria > 100 milhões linhas/ano
- Queries filtradas por período
- Necessidade de expurgo periódico

**Estratégia**: Particionar por **TEMPO** (ano/mês).

**SQL Server**:
```sql
-- 1. Criar função de partição
CREATE PARTITION FUNCTION PF_Anual (DATE)
AS RANGE RIGHT FOR VALUES 
    ('2024-01-01', '2025-01-01', '2026-01-01');

-- 2. Criar esquema de partição
CREATE PARTITION SCHEME PS_Anual
AS PARTITION PF_Anual
TO ([FG_2023], [FG_2024], [FG_2025], [FG_2026_FUTURO]);

-- 3. Criar tabela particionada
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_Anual(DATA_TRANSACAO_DT);
```

**Aprovação**: Requer validação ABD.

### Compactação (TE074 3.2.9)

**Obrigatória** em tabelas novas (SQL Server 2008+).

**Tipo**: `PAGE` (compactação de página - melhor custo-benefício).

```sql
CREATE TABLE SPH_CLIENTE (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Alterar tabela existente
ALTER TABLE SPH_CLIENTE REBUILD WITH (DATA_COMPRESSION = PAGE);
```

**Benefícios**:
- 40-70% redução de espaço
- Melhor performance de I/O
- Maior eficiência de cache

**Monitoramento**:
```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'SPH_CLIENTE',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';
```

### Lifecycle de Dados (TE074 3.2.10)

**Definir políticas** de retenção, arquivamento e expurgo.

**Exemplo - Contratos Habitacionais**:

| Estágio | Período | Ação |
|---------|---------|------|
| Ativo | 0-2 anos | Tabela transacional |
| Histórico Recente | 2-7 anos | Migrar para `_HISTORICO` |
| Arquivo | 7-20 anos | Migrar para WORM storage |
| Expurgo | > 20 anos | Anonimizar ou deletar (LGPD) |

**Automação**: Jobs SQL Agent ou stored procedures agendadas.

### Relacionamentos (TE074 3.2.11)

**FK física obrigatória** (não apenas lógica).

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_SPH_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
        ON DELETE NO ACTION  -- Padrão corporativo
);
```

**Delete Rules**:
- **NO ACTION** (padrão): Bloqueia exclusão se houver filhos
- **CASCADE**: Exclui filhos (usar com cautela)
- **SET NULL**: Define FK como NULL (se permitido)

**Cardinalidades**:
- **1:1**: Geralmente tabelas separadas desnecessárias (consolidar)
- **1:N**: Padrão (FK na tabela "N")
- **N:N**: Tabela associativa com FKs para ambas

**Exemplo N:N**:
```sql
-- Tabela associativa
CREATE TABLE SPH_CONTRATO_GARANTIA (
    CONTRATO_ID BIGINT NOT NULL,
    GARANTIA_ID BIGINT NOT NULL,
    ORDEM_NR INT,
    PRIMARY KEY (CONTRATO_ID, GARANTIA_ID),
    CONSTRAINT FK_SPH_CONTRATO_GARANTIA_CONTRATO 
        FOREIGN KEY (CONTRATO_ID) REFERENCES SPH_CONTRATO(CONTRATO_ID),
    CONSTRAINT FK_SPH_CONTRATO_GARANTIA_GARANTIA 
        FOREIGN KEY (GARANTIA_ID) REFERENCES SPH_GARANTIA(GARANTIA_ID)
);
```

### Colunas (TE074 3.2.12)

#### Tipos de Dados Recomendados

| Categoria | SQL Server | Oracle | DB2 |
|-----------|------------|--------|-----|
| **ID** | BIGINT IDENTITY | NUMBER(19) + SEQUENCE | BIGINT GENERATED ALWAYS |
| **Data** | DATE, DATETIME2 | DATE | DATE |
| **Valor** | DECIMAL(18,2), MONEY | NUMBER(18,2) | DECIMAL(18,2) |
| **Texto Curto** | VARCHAR(200) | VARCHAR2(200) | VARCHAR(200) |
| **Texto Longo** | VARCHAR(MAX) | CLOB | CLOB |
| **Flag** | CHAR(1), BIT | CHAR(1) | CHAR(1) |

#### Sequências (Oracle/DB2)

**Nomenclatura**: `SEQ_<TABELA>_<COLUNA>`

**Oracle**:
```sql
CREATE SEQUENCE SEQ_SPH_CLIENTE_CLIENTE_ID
START WITH 1
INCREMENT BY 1
CACHE 20;
```

#### Defaults

**Auditoria temporal**:
```sql
DATA_CRIACAO_DT DATETIME2 
    CONSTRAINT DF_SPH_CLIENTE_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL
```

**Flags**:
```sql
ATIVO_IN CHAR(1) 
    CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S' NOT NULL
```

## Integração e Governança

### TE105 - Integração de Dados

**APIs e Serviços**:
- Preferir integração via APIs REST
- Evitar acesso direto entre bancos de sistemas diferentes
- Documentar contratos de integração

**ETL/ELT**:
- Processos batch para carga em DW
- Staging area intermediária
- Validação e transformação

### TE124 - Governança de Dados

**Data Stewardship**:
- Definir responsáveis por cada domínio de dados
- Glossário de negócio
- Qualidade de dados (profiling, cleansing)

**Metadados** (ISO/IEC 11179):
- Catalogar objetos de dados
- Linhagem de dados (data lineage)
- Impacto de mudanças

## Processo de Aprovação

### Workflow RTC

```
1. Desenvolvimento
   ├── Criar modelo no PowerDesigner
   ├── Validar no pré-validador
   └── Gerar DDL

2. Submissão ADI
   ├── Criar demanda no RTC
   ├── Anexar arquivo PDM
   ├── Documentar justificativas (se exceções)
   └── Aguardar aprovação

3. Revisão ADI (Arquitetura de Dados)
   ├── Validar nomenclatura
   ├── Verificar normalização
   ├── Avaliar volumetria e performance
   ├── Aprovar ou devolver com correções

4. Implementação ABD (Administração de Banco de Dados)
   ├── Validar DDL
   ├── Executar em DEV
   ├── Executar em HML
   ├── Executar em PRD (após homologação)
   └── Documentar no GED

5. Manutenção
   ├── Versionar modelo no PowerDesigner
   ├── Atualizar modelo conforme alterações
   └── Re-validar a cada mudança
```

## Checklist de Conformidade

### Modelo Conceitual

- [ ] Entidades identificadas
- [ ] Atributos mapeados
- [ ] Relacionamentos definidos
- [ ] Validado com área de negócio

### Modelo Lógico

- [ ] Normalização 3NF aplicada
- [ ] PKs definidas
- [ ] FKs mapeadas
- [ ] Independente de SGBD

### Modelo Físico

- [ ] Nomenclatura TE074 (tabelas, colunas, constraints)
- [ ] Comments em todas tabelas e colunas
- [ ] PKs obrigatórias
- [ ] FKs físicas declaradas
- [ ] Índices em FKs
- [ ] Compactação PAGE configurada
- [ ] Tipos de dados adequados
- [ ] Owner/Schema correto
- [ ] Particionamento avaliado (se > 100M linhas/ano)
- [ ] Lifecycle definido (retention, archiving, expurgo)

### Validação

- [ ] Pré-validador executado e aprovado
- [ ] PowerDesigner PDM gerado e versionado
- [ ] DDL revisado
- [ ] Demanda RTC criada

### Implementação

- [ ] ADI aprovou modelo
- [ ] ABD executou DDL em ambientes
- [ ] Permissões RBAC configuradas
- [ ] Backup/Recovery planejado
- [ ] Monitoramento ativado

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE105, TE109, TE124, TE183, ISO/IEC 11179
