# Guia de Modelagem - Spring Batch

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Guia de Modelagem Spring Batch - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia%20de%20Modelagem%20-%20Spring%20Batch.aspx)

## Contexto

Este documento apresenta as diretrizes específicas para **modelagem de dados em projetos que utilizam o framework Spring Batch**, incluindo tabelas de metadados, convenções de nomenclatura e integração com a arquitetura CAIXA.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **TE183** - Produtos Adquiridos (frameworks autorizados)
- **Documentação oficial Spring Batch**: https://spring.io/projects/spring-batch

## Sobre o Spring Batch

**Spring Batch** é um framework open-source para processamento em lote (batch), oferecendo:
- Processamento de grandes volumes de dados
- Gerenciamento de transações
- Reinício automático após falhas
- Logging e auditoria de execuções
- Particionamento e paralelização

## Arquitetura de Metadados do Spring Batch

### Tabelas de Metadados Obrigatórias

O Spring Batch requer tabelas para armazenar metadados de execução:

#### 1. BATCH_JOB_INSTANCE

Armazena informações sobre instâncias de jobs.

**Estrutura**:
```sql
CREATE TABLE BATCH_JOB_INSTANCE (
    JOB_INSTANCE_ID BIGINT PRIMARY KEY,
    VERSION BIGINT,
    JOB_NAME VARCHAR(100) NOT NULL,
    JOB_KEY VARCHAR(32) NOT NULL,
    CONSTRAINT JOB_INST_UN UNIQUE (JOB_NAME, JOB_KEY)
);
```

**Descrição**:
- `JOB_INSTANCE_ID`: Identificador único da instância do job
- `JOB_NAME`: Nome do job batch
- `JOB_KEY`: Hash dos parâmetros de execução (identifica unicidade)

#### 2. BATCH_JOB_EXECUTION

Armazena execuções de jobs.

**Estrutura**:
```sql
CREATE TABLE BATCH_JOB_EXECUTION (
    JOB_EXECUTION_ID BIGINT PRIMARY KEY,
    VERSION BIGINT,
    JOB_INSTANCE_ID BIGINT NOT NULL,
    CREATE_TIME DATETIME NOT NULL,
    START_TIME DATETIME DEFAULT NULL,
    END_TIME DATETIME DEFAULT NULL,
    STATUS VARCHAR(10),
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    CONSTRAINT JOB_INST_EXEC_FK FOREIGN KEY (JOB_INSTANCE_ID)
        REFERENCES BATCH_JOB_INSTANCE(JOB_INSTANCE_ID)
);
```

**Descrição**:
- `JOB_EXECUTION_ID`: Identificador único da execução
- `STATUS`: COMPLETED, FAILED, STARTED, STOPPING, STOPPED
- `EXIT_CODE`: Código de saída da execução

#### 3. BATCH_JOB_EXECUTION_PARAMS

Armazena parâmetros de execução.

**Estrutura**:
```sql
CREATE TABLE BATCH_JOB_EXECUTION_PARAMS (
    JOB_EXECUTION_ID BIGINT NOT NULL,
    PARAMETER_NAME VARCHAR(100) NOT NULL,
    PARAMETER_TYPE VARCHAR(100) NOT NULL,
    PARAMETER_VALUE VARCHAR(2500),
    IDENTIFYING CHAR(1) NOT NULL,
    CONSTRAINT JOB_EXEC_PARAMS_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
);
```

#### 4. BATCH_STEP_EXECUTION

Armazena execuções de steps (etapas).

**Estrutura**:
```sql
CREATE TABLE BATCH_STEP_EXECUTION (
    STEP_EXECUTION_ID BIGINT PRIMARY KEY,
    VERSION BIGINT NOT NULL,
    STEP_NAME VARCHAR(100) NOT NULL,
    JOB_EXECUTION_ID BIGINT NOT NULL,
    CREATE_TIME DATETIME NOT NULL,
    START_TIME DATETIME DEFAULT NULL,
    END_TIME DATETIME DEFAULT NULL,
    STATUS VARCHAR(10),
    COMMIT_COUNT BIGINT,
    READ_COUNT BIGINT,
    FILTER_COUNT BIGINT,
    WRITE_COUNT BIGINT,
    READ_SKIP_COUNT BIGINT,
    WRITE_SKIP_COUNT BIGINT,
    PROCESS_SKIP_COUNT BIGINT,
    ROLLBACK_COUNT BIGINT,
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    CONSTRAINT JOB_EXEC_STEP_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
);
```

#### 5. BATCH_STEP_EXECUTION_CONTEXT

Contexto de execução de steps.

**Estrutura**:
```sql
CREATE TABLE BATCH_STEP_EXECUTION_CONTEXT (
    STEP_EXECUTION_ID BIGINT PRIMARY KEY,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT STEP_EXEC_CTX_FK FOREIGN KEY (STEP_EXECUTION_ID)
        REFERENCES BATCH_STEP_EXECUTION(STEP_EXECUTION_ID)
);
```

#### 6. BATCH_JOB_EXECUTION_CONTEXT

Contexto de execução de jobs.

**Estrutura**:
```sql
CREATE TABLE BATCH_JOB_EXECUTION_CONTEXT (
    JOB_EXECUTION_ID BIGINT PRIMARY KEY,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT JOB_EXEC_CTX_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
);
```

## Integração com Padrões CAIXA

### Nomenclatura de Tabelas Spring Batch

**Exceção à TE074**: As tabelas do Spring Batch **mantêm nomenclatura original do framework** (sem prefixo de sistema):
- `BATCH_JOB_INSTANCE`
- `BATCH_JOB_EXECUTION`
- `BATCH_STEP_EXECUTION`
- etc.

**Justificativa**: Framework autorizado pela TE183, nomenclatura padronizada internacionalmente.

### Schema/Owner

**SQL Server**: Criar em schema dedicado (recomendado)
```sql
CREATE SCHEMA SpringBatch;

CREATE TABLE SpringBatch.BATCH_JOB_INSTANCE (...)
CREATE TABLE SpringBatch.BATCH_JOB_EXECUTION (...)
-- etc.
```

**Alternativa**: Schema `dbo` com prefixo
```sql
CREATE TABLE dbo.BATCH_JOB_INSTANCE (...)
```

### Tabelas de Aplicação

Tabelas específicas da aplicação batch **devem seguir TE074**:

**Exemplo - Processamento de Contratos**:
```sql
-- Tabela de controle do batch (conforme TE074)
CREATE TABLE SPH_BATCH_CONTROLE (
    BATCH_CONTROLE_ID BIGINT PRIMARY KEY,
    JOB_NAME VARCHAR(100) NOT NULL,
    DATA_PROCESSAMENTO_DT DATETIME NOT NULL,
    REGISTROS_PROCESSADOS_QT INT,
    REGISTROS_ERRO_QT INT,
    STATUS_TP VARCHAR(20),
    MENSAGEM_ERRO_DS VARCHAR(MAX)
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela de erros detalhados (conforme TE074)
CREATE TABLE SPH_BATCH_ERRO (
    BATCH_ERRO_ID BIGINT PRIMARY KEY,
    BATCH_CONTROLE_ID BIGINT NOT NULL,
    REGISTRO_ID BIGINT,
    LINHA_NR INT,
    ERRO_DS VARCHAR(MAX),
    DATA_ERRO_DT DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_SPH_BATCH_ERRO_SPH_BATCH_CONTROLE
        FOREIGN KEY (BATCH_CONTROLE_ID)
        REFERENCES SPH_BATCH_CONTROLE(BATCH_CONTROLE_ID)
) WITH (DATA_COMPRESSION = PAGE);
```

## Scripts DDL para SQL Server

### Script Completo de Criação

```sql
-- Schema dedicado (recomendado)
CREATE SCHEMA SpringBatch;
GO

-- 1. BATCH_JOB_INSTANCE
CREATE TABLE SpringBatch.BATCH_JOB_INSTANCE (
    JOB_INSTANCE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    VERSION BIGINT,
    JOB_NAME VARCHAR(100) NOT NULL,
    JOB_KEY VARCHAR(32) NOT NULL,
    CONSTRAINT JOB_INST_UN UNIQUE (JOB_NAME, JOB_KEY)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- 2. BATCH_JOB_EXECUTION
CREATE TABLE SpringBatch.BATCH_JOB_EXECUTION (
    JOB_EXECUTION_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    VERSION BIGINT,
    JOB_INSTANCE_ID BIGINT NOT NULL,
    CREATE_TIME DATETIME NOT NULL,
    START_TIME DATETIME DEFAULT NULL,
    END_TIME DATETIME DEFAULT NULL,
    STATUS VARCHAR(10),
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    CONSTRAINT JOB_INST_EXEC_FK FOREIGN KEY (JOB_INSTANCE_ID)
        REFERENCES SpringBatch.BATCH_JOB_INSTANCE(JOB_INSTANCE_ID)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- 3. BATCH_JOB_EXECUTION_PARAMS
CREATE TABLE SpringBatch.BATCH_JOB_EXECUTION_PARAMS (
    JOB_EXECUTION_ID BIGINT NOT NULL,
    PARAMETER_NAME VARCHAR(100) NOT NULL,
    PARAMETER_TYPE VARCHAR(100) NOT NULL,
    PARAMETER_VALUE VARCHAR(2500),
    IDENTIFYING CHAR(1) NOT NULL,
    CONSTRAINT JOB_EXEC_PARAMS_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES SpringBatch.BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- 4. BATCH_STEP_EXECUTION
CREATE TABLE SpringBatch.BATCH_STEP_EXECUTION (
    STEP_EXECUTION_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    VERSION BIGINT NOT NULL,
    STEP_NAME VARCHAR(100) NOT NULL,
    JOB_EXECUTION_ID BIGINT NOT NULL,
    CREATE_TIME DATETIME NOT NULL,
    START_TIME DATETIME DEFAULT NULL,
    END_TIME DATETIME DEFAULT NULL,
    STATUS VARCHAR(10),
    COMMIT_COUNT BIGINT,
    READ_COUNT BIGINT,
    FILTER_COUNT BIGINT,
    WRITE_COUNT BIGINT,
    READ_SKIP_COUNT BIGINT,
    WRITE_SKIP_COUNT BIGINT,
    PROCESS_SKIP_COUNT BIGINT,
    ROLLBACK_COUNT BIGINT,
    EXIT_CODE VARCHAR(2500),
    EXIT_MESSAGE VARCHAR(2500),
    LAST_UPDATED DATETIME,
    CONSTRAINT JOB_EXEC_STEP_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES SpringBatch.BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- 5. BATCH_STEP_EXECUTION_CONTEXT
CREATE TABLE SpringBatch.BATCH_STEP_EXECUTION_CONTEXT (
    STEP_EXECUTION_ID BIGINT PRIMARY KEY,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT STEP_EXEC_CTX_FK FOREIGN KEY (STEP_EXECUTION_ID)
        REFERENCES SpringBatch.BATCH_STEP_EXECUTION(STEP_EXECUTION_ID)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- 6. BATCH_JOB_EXECUTION_CONTEXT
CREATE TABLE SpringBatch.BATCH_JOB_EXECUTION_CONTEXT (
    JOB_EXECUTION_ID BIGINT PRIMARY KEY,
    SHORT_CONTEXT VARCHAR(2500) NOT NULL,
    SERIALIZED_CONTEXT TEXT,
    CONSTRAINT JOB_EXEC_CTX_FK FOREIGN KEY (JOB_EXECUTION_ID)
        REFERENCES SpringBatch.BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- Índices adicionais para performance
CREATE INDEX IDX_JOB_INST_JOB_NAME 
    ON SpringBatch.BATCH_JOB_INSTANCE(JOB_NAME);

CREATE INDEX IDX_JOB_EXEC_STATUS 
    ON SpringBatch.BATCH_JOB_EXECUTION(STATUS);

CREATE INDEX IDX_STEP_EXEC_JOB_EXEC 
    ON SpringBatch.BATCH_STEP_EXECUTION(JOB_EXECUTION_ID);
GO
```

## Modelagem no PowerDesigner

### Importação de Tabelas Spring Batch

**Processo**:
1. Criar modelo físico no PowerDesigner
2. Importar DDL das tabelas Spring Batch
3. Ajustar propriedades:
   - **Owner**: SpringBatch (ou dbo)
   - **DBMS**: Microsoft SQL Server
   - **Compression**: PAGE (conforme TE074)

### Documentação de Tabelas

Adicionar **Comments** (obrigatório TE074 3.2.2):

**Exemplo**:
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Armazena instâncias de jobs do Spring Batch. Cada job é identificado pelo nome e parâmetros de execução.',
    @level0type = N'SCHEMA', @level0name = N'SpringBatch',
    @level1type = N'TABLE',  @level1name = N'BATCH_JOB_INSTANCE';
```

### Integração com Modelo da Aplicação

No PowerDesigner, manter **dois modelos separados**:

1. **Modelo Spring Batch** (`SPRINGBATCH_METADADOS.pdm`)
   - Tabelas do framework
   - Nomenclatura original

2. **Modelo da Aplicação** (`<SISTEMA>_DIAGRAMA_PRINCIPAL.pdm`)
   - Tabelas de negócio
   - Tabelas de controle específicas
   - Nomenclatura conforme TE074

**Vínculo**: Referenciar modelo Spring Batch via **External Shortcuts**.

## Configuração da Aplicação

### application.properties (Spring Boot)

```properties
# DataSource
spring.datasource.url=jdbc:sqlserver://server:1433;databaseName=DB_APLICACAO
spring.datasource.username=${DB_USER}
spring.datasource.password=${DB_PASSWORD}
spring.datasource.driver-class-name=com.microsoft.sqlserver.jdbc.SQLServerDriver

# Spring Batch
spring.batch.jdbc.initialize-schema=never
spring.batch.jdbc.table-prefix=SpringBatch.BATCH_
spring.batch.job.enabled=false
```

**Importante**:
- `initialize-schema=never`: ABD cria tabelas (não o framework)
- `table-prefix`: Define schema/prefixo das tabelas

### JobRepository Configuration

```java
@Configuration
@EnableBatchProcessing
public class BatchConfiguration {
    
    @Bean
    public JobRepository jobRepository(DataSource dataSource, 
                                       PlatformTransactionManager transactionManager) 
                                       throws Exception {
        JobRepositoryFactoryBean factory = new JobRepositoryFactoryBean();
        factory.setDataSource(dataSource);
        factory.setTransactionManager(transactionManager);
        factory.setTablePrefix("SpringBatch.BATCH_");
        factory.setIsolationLevelForCreate("ISOLATION_READ_COMMITTED");
        factory.afterPropertiesSet();
        return factory.getObject();
    }
}
```

## Manutenção de Metadados

### Expurgo de Histórico

Tabelas Spring Batch crescem continuamente. Implementar **expurgo periódico**:

```sql
-- Expurgar execuções antigas (6 meses)
DELETE FROM SpringBatch.BATCH_STEP_EXECUTION_CONTEXT
WHERE STEP_EXECUTION_ID IN (
    SELECT se.STEP_EXECUTION_ID
    FROM SpringBatch.BATCH_STEP_EXECUTION se
    JOIN SpringBatch.BATCH_JOB_EXECUTION je ON se.JOB_EXECUTION_ID = je.JOB_EXECUTION_ID
    WHERE je.END_TIME < DATEADD(MONTH, -6, GETDATE())
);

DELETE FROM SpringBatch.BATCH_JOB_EXECUTION_CONTEXT
WHERE JOB_EXECUTION_ID IN (
    SELECT JOB_EXECUTION_ID
    FROM SpringBatch.BATCH_JOB_EXECUTION
    WHERE END_TIME < DATEADD(MONTH, -6, GETDATE())
);

DELETE FROM SpringBatch.BATCH_STEP_EXECUTION
WHERE JOB_EXECUTION_ID IN (
    SELECT JOB_EXECUTION_ID
    FROM SpringBatch.BATCH_JOB_EXECUTION
    WHERE END_TIME < DATEADD(MONTH, -6, GETDATE())
);

DELETE FROM SpringBatch.BATCH_JOB_EXECUTION_PARAMS
WHERE JOB_EXECUTION_ID IN (
    SELECT JOB_EXECUTION_ID
    FROM SpringBatch.BATCH_JOB_EXECUTION
    WHERE END_TIME < DATEADD(MONTH, -6, GETDATE())
);

DELETE FROM SpringBatch.BATCH_JOB_EXECUTION
WHERE END_TIME < DATEADD(MONTH, -6, GETDATE());

-- Não expurgar BATCH_JOB_INSTANCE (volumetria baixa)
```

**Automação**: Job Spring Batch para limpeza (ex: mensal).

### Monitoramento

Queries úteis para monitoramento:

```sql
-- Execuções recentes
SELECT TOP 10
    ji.JOB_NAME,
    je.STATUS,
    je.START_TIME,
    je.END_TIME,
    DATEDIFF(SECOND, je.START_TIME, je.END_TIME) AS DuracaoSegundos
FROM SpringBatch.BATCH_JOB_EXECUTION je
JOIN SpringBatch.BATCH_JOB_INSTANCE ji ON je.JOB_INSTANCE_ID = ji.JOB_INSTANCE_ID
ORDER BY je.START_TIME DESC;

-- Jobs falhados hoje
SELECT 
    ji.JOB_NAME,
    je.EXIT_MESSAGE,
    je.START_TIME
FROM SpringBatch.BATCH_JOB_EXECUTION je
JOIN SpringBatch.BATCH_JOB_INSTANCE ji ON je.JOB_INSTANCE_ID = ji.JOB_INSTANCE_ID
WHERE je.STATUS = 'FAILED'
  AND CAST(je.START_TIME AS DATE) = CAST(GETDATE() AS DATE);
```

## Checklist de Conformidade

### Modelagem
- [ ] Tabelas Spring Batch criadas no schema dedicado
- [ ] Compactação PAGE aplicada (TE074 3.2.9)
- [ ] Comments adicionados em todas tabelas
- [ ] Modelo documentado no PowerDesigner

### Aplicação
- [ ] Tabelas de controle específicas seguem TE074
- [ ] JobRepository configurado com table-prefix correto
- [ ] initialize-schema=never (ABD cria tabelas)

### Manutenção
- [ ] Política de expurgo definida
- [ ] Job de limpeza automatizado
- [ ] Monitoramento configurado

### Validação
- [ ] Pré-validador aprovado (exceções documentadas)
- [ ] ADI validou nomenclatura Spring Batch
- [ ] ABD implementou DDL

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE183
