# Guia Corporativo de Modelagem de Dados para SQL Server - CAIXA

**Versão**: 1.0  
**Data**: Janeiro 2026  
**SGBD Alvo**: Microsoft SQL Server 2019+  
**Público-alvo**: Analistas, Desenvolvedores, Arquitetos de Dados, DBAs  
**Classificação**: Interna

---

## PARTE 1: Fundamentos e Normas Aplicáveis

### SUB-PARTE 1.1: Introdução e Normas Técnicas Principais

---

#### 1.1 Introdução ao Guia

##### 1.1.1 Finalidade

Este guia corporativo consolida as normas, padrões, diretrizes e boas práticas de modelagem de dados da CAIXA, com foco específico no **Microsoft SQL Server**. Seu objetivo é fornecer um documento único e abrangente que estabeleça:

- **Nomenclatura padronizada** de objetos de banco de dados
- **Padrões de chaves** (primárias, estrangeiras, alternativas)
- **Tipos de dados** recomendados e suas aplicações
- **Boas práticas** de estruturação, relacionamentos e integridade
- **Diretrizes de performance** e otimização para SQL Server
- **Processos de governança** e aprovação de modelos

##### 1.1.2 Público-Alvo

Este guia destina-se a:

- **Analistas de Sistemas**: Responsáveis pela modelagem conceitual e lógica
- **Desenvolvedores**: Implementadores de DDL e scripts de banco de dados
- **Arquitetos de Dados (ADI)**: Responsáveis pela aprovação e conformidade arquitetural
- **Administradores de Banco de Dados (ABD)**: Responsáveis pela implementação física e otimização
- **Gerentes de Projeto**: Para compreensão dos processos e prazos de aprovação

##### 1.1.3 Escopo

**SGBD Principal**: Microsoft SQL Server (versões 2019 e superiores)

**Contexto de Aplicação**:
- Sistemas transacionais (OLTP - Online Transaction Processing)
- Data Warehouses (OLAP - Online Analytical Processing)
- Sistemas híbridos (HTAP - Hybrid Transactional/Analytical Processing)
- Bancos de dados corporativos da CAIXA em ambientes on-premises e Azure

**Fora do Escopo**:
- NoSQL databases (MongoDB, Cassandra, etc.) - possuem guias específicos
- Bancos de dados Oracle e DB2 (consultar guias específicos para esses SGBDs)
- Bancos de dados de terceiros não gerenciados pela CAIXA

##### 1.1.4 Estrutura do Documento

Este guia está organizado em **5 PARTES**:

**PARTE 1: Fundamentos e Normas Aplicáveis**
- Introdução, normas CAIXA (TE074, TE079, TE105, TE124, TE109, TE174, OR016, OR188, CR439)
- Padrões internacionais (ISO/IEC 11179)
- Workflow de aprovação e ferramentas (PowerDesigner, Pré-Validador)

**PARTE 2: Nomenclatura e Padronização**
- Nomenclatura de tabelas, colunas, constraints, índices
- Prefixos e sufixos obrigatórios (TE074)
- Expressões regulares de validação
- Exemplos práticos de nomenclatura

**PARTE 3: Estruturação de Tabelas e Relacionamentos**
- Design de tabelas (normalização, desnormalização)
- Chaves primárias, estrangeiras, alternativas
- Relacionamentos (1:1, 1:N, N:M)
- Integridade referencial e triggers
- Auditoria e versionamento de dados

**PARTE 4: Tipos de Dados e Otimização SQL Server**
- Tipos de dados recomendados (mapeamento TE074 → SQL Server)
- Otimização de tipos (VARCHAR vs NVARCHAR, INT vs BIGINT)
- Compressão de dados (DATA_COMPRESSION=PAGE)
- Particionamento de tabelas (PARTITION BY RANGE)
- Índices (clustered, nonclustered, columnstore)

**PARTE 5: Ciclo de Vida, Frameworks e Validações**
- Ciclo de vida da modelagem (6 fases)
- Frameworks autorizados (Hibernate, Entity Framework)
- Validações obrigatórias (Pré-Validador)
- Expurgo e retenção de dados
- Checklist de implementação

##### 1.1.5 Como Utilizar Este Guia

**Para Novos Projetos**:
1. Leia a PARTE 1 para compreender o contexto normativo
2. Consulte a PARTE 2 ao criar nomenclatura de objetos
3. Aplique as diretrizes da PARTE 3 durante a modelagem lógica/física
4. Utilize a PARTE 4 para escolher tipos de dados e otimizações
5. Siga o ciclo de vida da PARTE 5 durante todo o projeto

**Para Manutenção de Sistemas Existentes**:
- Consulte seções específicas conforme a necessidade
- Utilize o índice remissivo (ao final do documento)
- Priorize conformidade incremental em novas features

**Para Aprovação de Modelos**:
- ADI: Focar em PARTES 1, 2 e 3 (conformidade normativa e arquitetura)
- ABD: Focar em PARTES 4 e 5 (performance e implementação)

##### 1.1.6 Convenções e Notações

**Notações utilizadas neste guia**:

- `CODIGO_EXEMPLO`: Objetos de banco de dados em fonte monoespaçada
- **Negrito**: Termos importantes, conceitos-chave
- *Itálico*: Referências a normas externas
- ✅ OK: Exemplos corretos, conformes às normas
- ❌ INCORRETO: Exemplos incorretos, não conformes
- ⚠️ ATENÇÃO: Alertas importantes, exceções às regras
- 💡 DICA: Boas práticas adicionais, sugestões

**Abreviações comuns**:
- **ADI**: Arquitetura de Dados e Informação
- **ABD**: Administração de Banco de Dados
- **DDL**: Data Definition Language
- **DML**: Data Manipulation Language
- **PDM**: Physical Data Model (PowerDesigner)
- **PK**: Primary Key (Chave Primária)
- **FK**: Foreign Key (Chave Estrangeira)
- **UK**: Unique Key (Chave Alternativa)
- **CK**: Check Constraint (Restrição de Verificação)
- **DF**: Default Constraint (Restrição de Valor Padrão)

---

#### 1.2 Norma TE074 (Modelagem de Dados - NORMA PRINCIPAL)

##### 1.2.1 Prefácio e Finalidade

A **Norma Técnica TE074 - Modelagem de Dados Relacional** é a norma corporativa CAIXA que estabelece as diretrizes obrigatórias para modelagem de dados em ambientes relacionais. Ela é a **principal referência normativa** para todos os projetos que envolvam estruturação de bancos de dados.

**Histórico de Revisões**:
- Versão atual: Consultar documento oficial no Portal de Normas CAIXA
- Última atualização: (conforme documento oficial)
- Responsável: Gerência Nacional de Arquitetura de Dados e Informação (ADI)

**Alcance**:
- Todos os sistemas corporativos da CAIXA
- Ambientes on-premises (SQL Server, Oracle, DB2)
- Ambientes cloud (Azure SQL Database, Azure Synapse)
- Sistemas de terceiros integrados à CAIXA (quando aplicável)

##### 1.2.2 Objetivos da TE074

A norma TE074 tem como objetivos principais:

1. **Padronização**: Garantir uniformidade na estruturação de dados corporativos
2. **Governança**: Estabelecer processos de aprovação e responsabilidades
3. **Qualidade**: Assegurar integridade, consistência e documentação adequada
4. **Rastreabilidade**: Facilitar auditoria e manutenibilidade dos modelos
5. **Conformidade**: Atender requisitos regulatórios (LGPD, BACEN, CGU)
6. **Eficiência**: Promover boas práticas de performance e otimização

##### 1.2.3 Seções Principais da TE074

A norma está estruturada nas seguintes seções principais:

**3.1 Responsabilidades e Processos**
- 3.1.1 Papéis e responsabilidades (ADI, ABD, Desenvolvimento)
- 3.1.2 Fluxo de aprovação de modelos
- 3.1.3 Versionamento e gestão de mudanças
- 3.1.4 Documentação obrigatória
- 3.1.5 Ferramentas corporativas (PowerDesigner)
- 3.1.6 Programa de Governança de Dados (OR188)
- 3.1.7 Tratamento da Informação (OR016 - classificação)
- 3.1.8 Auditoria e rastreabilidade
- 3.1.9 SLA de atendimento ADI (métrica de produtividade)

**3.2 Diretrizes de Modelagem**
- 3.2.1 Nomenclatura de tabelas
- 3.2.2 Nomenclatura de colunas
- 3.2.3 Chaves primárias (obrigatórias sem exceção)
- 3.2.4 Chaves estrangeiras (integridade referencial)
- 3.2.5 Chaves alternativas (UNIQUE constraints)
- 3.2.6 Check constraints (restrições de domínio)
- 3.2.7 Default constraints (valores padrão)
- 3.2.8 Índices (performance)
- 3.2.9 Triggers (uso restrito, preferir constraints)
- 3.2.10 Stored Procedures (encapsulamento de lógica)
- 3.2.11 Views (abstração e segurança)
- 3.2.12 Particionamento (tabelas volumosas >100M linhas/ano)
- 3.2.13 Compressão de dados (DATA_COMPRESSION=PAGE obrigatória para novas tabelas)
- 3.2.14 Tipos de dados (mapeamento SGBD-agnostic → específico)
- 3.2.15 Normalização (mínimo 3FN, desnormalização justificada)
- 3.2.16 Auditoria (colunas de controle obrigatórias)
- 3.2.17 LGPD (dados pessoais e sensíveis - CR439)
- 3.2.18 Descrição de objetos (Extended Properties, COMMENT ON)

**3.3 Validações Obrigatórias**
- Pré-validador (http://gestaodedados.coresp.caixa)
- Critérios de aprovação (0 não conformidades CRÍTICAS)
- Relatórios de validação (PDF, Excel)

**4. Procedimentos Operacionais**
- 4.1 Submissão de modelos para ADI
- 4.2 Análise e aprovação ADI
- 4.3 Implementação física (ABD)
- 4.4 Deploy e homologação

##### 1.2.4 Fundamentos da Arquitetura de Informação CAIXA

A arquitetura de informação CAIXA baseia-se nos seguintes princípios:

**Princípio 1: Unicidade de Dados**
- Dados mestres (MDM - Master Data Management) devem ter fonte única
- Evitar redundância não controlada
- Sincronização via mecanismos corporativos (TE105, TE124)

**Princípio 2: Integridade de Dados**
- Integridade referencial obrigatória (FKs com ON DELETE/ON UPDATE explícito)
- Constraints declarativas preferíveis a triggers
- Validação em múltiplas camadas (banco, aplicação, API)

**Princípio 3: Rastreabilidade e Auditoria**
- Colunas de auditoria obrigatórias:
  - `_DT_INCLUSAO`: Data/hora de criação
  - `_USU_INCLUSAO`: Usuário/sistema que criou
  - `_DT_ALTERACAO`: Data/hora da última alteração
  - `_USU_ALTERACAO`: Usuário/sistema que alterou
- Trilhas de auditoria para dados sensíveis (LGPD)

**Princípio 4: Segurança e Classificação**
- Classificação de informação segundo OR016 (Pública, Interna, Confidencial, Secreta)
- Row-level security (RLS) quando aplicável
- Column-level security para dados sensíveis
- Criptografia em repouso e em trânsito

**Princípio 5: Documentação e Metadados**
- Toda tabela e coluna DEVE ter descrição (comment/extended property)
- Metadados gerenciados segundo TE174
- Catalogação no dicionário de dados corporativo

##### 1.2.5 Integração com PPDS (Portal de Padrões de Desenvolvimento de Software)

A norma TE074 referencia diversos guias publicados no **PPDS** (Portal de Padrões de Desenvolvimento de Software):

- **Guia de Modelagem - Spring Batch**: Padrões para sistemas batch
- **Guia de Padrões e Convenções - Dimensional**: Modelagem dimensional para Data Warehouses
- **Lista de Objetos para Validação**: Objetos que devem ser validados antes da submissão
- **Melhores Práticas em Modelagem de Dados**: Recomendações avançadas
- **Microsoft SQL Server - Constraint Default**: Uso correto de defaults no SQL Server
- **Modelagem de Dados para Sistemas CAIXA**: Visão consolidada de todas as normas
- **Otimização de Tabelas**: Técnicas de performance tuning
- **Particionamento**: Estratégias de particionamento horizontal
- **Regras de modelagem para Frameworks Autorizados**: Hibernate, EF, etc.
- **Validações executadas no Pré-Validador**: Detalhamento das 100+ regras automáticas

⚠️ **ATENÇÃO**: Todos os guias PPDS são complementares à TE074, mas em caso de conflito, a norma TE074 prevalece.

##### 1.2.6 Responsabilidades (ADI, ABD, Desenvolvimento)

**ADI (Arquitetura de Dados e Informação)**:
- ✅ Aprovar modelos de dados (conceitual, lógico, físico)
- ✅ Garantir conformidade com TE074 e normas corporativas
- ✅ Validar integridade conceitual e arquitetural
- ✅ Manter catálogo de modelos corporativos
- ✅ Atender SLA de análise (conforme métrica 3.1.9)

**ABD (Administração de Banco de Dados)**:
- ✅ Implementar modelos aprovados nos ambientes
- ✅ Otimizar performance (índices, partições, estatísticas)
- ✅ Monitorar crescimento e saúde dos bancos
- ✅ Executar backups, restore e disaster recovery
- ✅ Aplicar patches de segurança e versões

**Desenvolvimento (Analistas, Desenvolvedores)**:
- ✅ Criar modelos de dados (conceitual, lógico, físico)
- ✅ Documentar objetos (Extended Properties, comments)
- ✅ Validar modelos com Pré-Validador antes de submeter
- ✅ Implementar DDL e scripts de migração
- ✅ Corrigir não conformidades apontadas por ADI/ABD

---

#### 1.3 Norma TE079 (Desenvolvimento de Software)

##### 1.3.1 Integração com Ciclo de Desenvolvimento

A norma **TE079 - Desenvolvimento de Software** estabelece as diretrizes para o ciclo de vida de desenvolvimento de sistemas na CAIXA. Embora não seja específica de modelagem de dados, ela possui interfaces importantes:

**Fase de Análise e Design**:
- Modelagem de dados deve ser parte integrante da fase de análise
- Modelo Entidade-Relacionamento (ER) deve ser criado antes do desenvolvimento de código
- Aprovação de modelos pelo ADI deve ser considerada no cronograma do projeto

**Fase de Implementação**:
- DDL gerado a partir do PowerDesigner deve ser versionado (Git, TFS)
- Scripts de migração devem seguir padrão de nomenclatura (V001_descricao.sql, V002_descricao.sql)
- Testes de integridade de dados devem ser incluídos nos testes unitários

**Fase de Homologação**:
- Carga de dados de teste deve respeitar LGPD (anonimização)
- Performance de queries deve ser validada com volumes realistas
- Rollback scripts devem ser testados

##### 1.3.2 Frameworks Autorizados

A TE079, em conjunto com o guia "Regras de modelagem para Frameworks Autorizados", define os ORMs (Object-Relational Mapping) e frameworks permitidos na CAIXA:

**Para .NET**:
- ✅ **Entity Framework Core** (versão 6.0+)
- ✅ **Dapper** (micro-ORM, para queries otimizadas)
- ✅ **ADO.NET** (acesso direto, quando necessário)

**Para Java**:
- ✅ **Hibernate** (versão 5.6+)
- ✅ **JPA (Java Persistence API)** com provedor Hibernate
- ✅ **MyBatis** (para controle fino de SQL)

**Diretrizes para uso de ORMs**:
- Nomenclatura de entidades deve refletir nomenclatura de tabelas (sem prefixo 3-char)
- Mapeamento de tipos deve respeitar tipos recomendados (ver PARTE 4)
- Lazy loading deve ser usado com cautela (problema N+1)
- Queries geradas pelo ORM devem ser validadas quanto a performance
- Migrations geradas pelo ORM (EF Core Migrations, Flyway) devem ser revisadas antes de aplicar

##### 1.3.3 Segurança no Desenvolvimento

A TE079 estabelece diretrizes de segurança que impactam a modelagem de dados:

**Prevenção de SQL Injection**:
- ✅ **SEMPRE** usar prepared statements / parameterized queries
- ✅ **NUNCA** concatenar strings para formar SQL dinâmico
- ✅ Utilizar stored procedures quando apropriado
- ✅ Validar entrada de dados em múltiplas camadas

Exemplo (C# - Entity Framework):
```csharp
// ✅ CORRETO - Parameterizado
var resultado = context.Clientes
    .Where(c => c.CPF == cpfInformado)
    .ToList();

// ❌ INCORRETO - Concatenação (SQL Injection!)
var sql = $"SELECT * FROM PES_CLIENTE WHERE CLI_CPF = '{cpfInformado}'";
var resultado = context.Clientes.FromSqlRaw(sql).ToList();
```

**Controle de Acesso**:
- Usuários de aplicação devem ter privilégios mínimos (principle of least privilege)
- Evitar uso de conta `sa` ou `dbo` em aplicações
- Criar contas de serviço específicas por aplicação
- Implementar Row-Level Security (RLS) quando necessário

**Criptografia**:
- Dados sensíveis (senhas, tokens) devem ser criptografados (LGPD)
- Utilizar `VARBINARY` para armazenar dados criptografados
- Chaves de criptografia devem ser gerenciadas pelo Azure Key Vault ou similar
- Always Encrypted (SQL Server 2016+) para dados extremamente sensíveis

##### 1.3.4 Boas Práticas de Acesso a Dados

**Transações**:
- Utilizar transações explícitas para operações multi-tabela
- Preferir isolamento READ COMMITTED (padrão SQL Server)
- Minimizar tempo de lock (transações curtas)
- Implementar retry logic para deadlocks

**Connection Pooling**:
- Utilizar connection pooling (padrão em ADO.NET, Hibernate)
- Não armazenar conexões em variáveis estáticas
- Sempre fechar conexões (using/try-finally)

**Paginação**:
- Implementar paginação para queries que retornam muitos registros
- Utilizar `OFFSET/FETCH` (SQL Server 2012+) ao invés de `ROW_NUMBER()`

Exemplo SQL Server:
```sql
-- ✅ CORRETO - OFFSET/FETCH (SQL Server 2012+)
SELECT CLI_ID, CLI_NM
FROM PES_CLIENTE
ORDER BY CLI_ID
OFFSET 100 ROWS FETCH NEXT 20 ROWS ONLY;

-- ⚠️ ANTIGO - ROW_NUMBER() (ainda funcional, mas menos eficiente)
WITH CTE AS (
    SELECT CLI_ID, CLI_NM, ROW_NUMBER() OVER (ORDER BY CLI_ID) AS RowNum
    FROM PES_CLIENTE
)
SELECT CLI_ID, CLI_NM
FROM CTE
WHERE RowNum BETWEEN 101 AND 120;
```

**Logging e Monitoramento**:
- Logar queries lentas (>1 segundo)
- Monitorar deadlocks e timeouts
- Utilizar Extended Events (SQL Server) para troubleshooting
- Implementar Application Insights ou similar para APM (Application Performance Monitoring)

---

**📊 Status da SUB-PARTE 1.1**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.2 (Normas de Integração, Metadados e Versionamento)

---

### SUB-PARTE 1.2: Normas de Integração, Metadados e Versionamento

---

#### 1.4 Norma TE105 (Integração de Sistemas - SICLI)

##### 1.4.1 Contexto e Finalidade

A **Norma TE105** estabelece diretrizes para integração de sistemas corporativos com o **SICLI (Sistema Integrado de Cadastro de Clientes)**. Ela é fundamental para garantir a **unicidade e consistência** de dados cadastrais em toda a empresa.

**Objetivo principal**:
- Garantir que todos os sistemas utilizem o cadastro único de clientes (CPF/CNPJ)
- Evitar duplicidade de informações cadastrais
- Padronizar APIs e contratos de dados entre sistemas
- Estabelecer sincronização automática de dados mestres

##### 1.4.2 Padrões de Integração Cadastral

**Princípio Fundamental**: Nenhum sistema CAIXA deve manter cadastro próprio de clientes. Todos devem consumir dados do SICLI.

**Modelos de Integração**:

1. **Integração em Tempo Real (Síncrona)**:
   - Consultas de validação de CPF/CNPJ (APIs REST/SOAP)
   - Verificação de status cadastral em tempo de transação
   - Validação de dados obrigatórios antes de persistir

2. **Integração Assíncrona (Batch)**:
   - Carga noturna de dados cadastrais para cache local
   - Sincronização de alterações via mensageria (Event Hub, Service Bus)
   - Replicação de tabelas de referência (CDC - Change Data Capture)

**Exemplo - Tabela Local Sincronizada**:
```sql
-- Tabela local (cache) sincronizada com SICLI
CREATE TABLE PES_CLIENTE_CACHE (
    CLIENTE_ID BIGINT PRIMARY KEY,  -- ID do SICLI
    CPF_CNPJ_NR VARCHAR(14) NOT NULL UNIQUE,
    NOME_COMPLETO_NM NVARCHAR(200) NOT NULL,
    EMAIL_DS VARCHAR(150),
    TELEFONE_NR VARCHAR(20),
    DATA_ULTIMA_SINCRONIZACAO_DT DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT CK_PES_CLIENTE_CACHE_CPF_CNPJ 
        CHECK (LEN(CPF_CNPJ_NR) IN (11, 14))
) WITH (DATA_COMPRESSION = PAGE);

-- Índice para consultas frequentes
CREATE INDEX IDX_PES_CLIENTE_CACHE_CPF_CNPJ 
    ON PES_CLIENTE_CACHE(CPF_CNPJ_NR);
```

##### 1.4.3 APIs e Contratos de Dados

**Obrigações dos Sistemas Consumidores**:
- ✅ Utilizar APIs padronizadas do SICLI (não acessar banco diretamente)
- ✅ Implementar retry logic com backoff exponencial
- ✅ Cachear dados não voláteis (endereço, data de nascimento)
- ✅ Respeitar rate limits das APIs (conforme SLA)

**Contrato de API - Exemplo**:
```json
// GET /api/v1/clientes/{cpf_cnpj}
{
  "cliente_id": 1234567890,
  "cpf_cnpj": "12345678901",
  "nome_completo": "João da Silva",
  "data_nascimento": "1980-05-15",
  "email": "joao.silva@email.com",
  "telefone": "(11) 98765-4321",
  "status_cadastral": "ATIVO",
  "ultima_atualizacao": "2026-01-05T14:30:00Z"
}
```

##### 1.4.4 Compartilhamento de Dados entre Sistemas

**Princípio de Responsabilidade**:
- Cada sistema é **proprietário** de seus dados de negócio
- Dados compartilhados devem ser expostos via APIs (não acesso direto ao banco)
- Integrações devem ser documentadas e versionadas

**Exemplo - Referência a Dados de Outro Sistema**:
```sql
-- Sistema A mantém contratos
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,  -- Referência ao SICLI
    NUMERO_CONTRATO_NR VARCHAR(20) UNIQUE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    DATA_ASSINATURA_DT DATE,
    -- NÃO incluir colunas de outros sistemas (nome, CPF, etc.)
    -- Consultar via API quando necessário
);

-- ❌ INCORRETO: Duplicar dados de outro sistema
CREATE TABLE CON_CONTRATO_ERRADO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT,
    CLIENTE_NOME_NM NVARCHAR(200),  -- ❌ Dado do SICLI
    CLIENTE_CPF_NR VARCHAR(11),     -- ❌ Duplicação
    ...
);
```

##### 1.4.5 Garantia de Unicidade Cadastral

**Validações Obrigatórias**:
- Validação de CPF/CNPJ via algoritmo de dígitos verificadores
- Consulta ao SICLI antes de qualquer persistência
- Tratamento de exceções (CPF inexistente, bloqueado, inválido)

**Exemplo - Stored Procedure de Validação**:
```sql
CREATE PROCEDURE usp_ValidarCPF_SICLI
    @CPF VARCHAR(11),
    @ClienteID BIGINT OUTPUT,
    @StatusCadastral VARCHAR(20) OUTPUT
AS
BEGIN
    -- 1. Validar formato CPF
    IF LEN(@CPF) <> 11 OR @CPF LIKE '%[^0-9]%'
    BEGIN
        RAISERROR('CPF inválido: deve conter 11 dígitos numéricos', 16, 1);
        RETURN;
    END

    -- 2. Consultar SICLI (via linked server ou API)
    -- Simulação de consulta
    SELECT 
        @ClienteID = CLIENTE_ID,
        @StatusCadastral = STATUS_CADASTRAL
    FROM PES_CLIENTE_CACHE
    WHERE CPF_CNPJ_NR = @CPF;

    -- 3. Validar status
    IF @StatusCadastral NOT IN ('ATIVO', 'REGULAR')
    BEGIN
        RAISERROR('Cliente com status cadastral irregular: %s', 16, 1, @StatusCadastral);
        RETURN;
    END
END;
```

---

#### 1.5 Norma TE124 (Gestão e Integração do Cadastro de Clientes)

##### 1.5.1 Master Data Management (MDM)

A **Norma TE124** complementa a TE105, estabelecendo práticas de **MDM (Master Data Management)** para dados de clientes na CAIXA.

**Conceitos Fundamentais**:
- **Golden Record**: Registro único e consolidado de cada cliente
- **Source of Truth**: SICLI é a fonte autoritativa para dados cadastrais
- **Data Stewardship**: Responsáveis pela qualidade e governança dos dados mestres

**Hierarquia de Dados Mestres**:
```
SICLI (Nível 1 - Fonte Autoritativa)
  ↓
Sistemas Core (Nível 2 - Cache Sincronizado)
  ↓
Sistemas Auxiliares (Nível 3 - Consulta API)
```

##### 1.5.2 Unicidade de Clientes (CPF/CNPJ)

**Regras de Unicidade**:
- ✅ Um CPF/CNPJ corresponde a exatamente UM cliente no SICLI
- ✅ Sistemas não devem criar novos clientes (apenas SICLI tem essa permissão)
- ✅ Atualização de dados cadastrais deve ser enviada ao SICLI para consolidação
- ✅ Sistemas podem ter dados complementares, mas não substituem dados mestres

**Modelo de Dados - Relacionamento com SICLI**:
```sql
-- Tabela local com dados complementares (não duplicar dados mestres)
CREATE TABLE CON_CLIENTE_COMPLEMENTO (
    CLIENTE_ID BIGINT PRIMARY KEY,  -- PK e FK para SICLI
    SCORE_CREDITO_NR INT,           -- Dado local (não no SICLI)
    DATA_ULTIMA_ANALISE_DT DATE,
    OBSERVACOES_DS NVARCHAR(500),
    
    -- Metadados de sincronização
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    
    -- FK lógica (não física para SICLI externo)
    -- Validação via stored procedure antes de INSERT/UPDATE
) WITH (DATA_COMPRESSION = PAGE);

-- Trigger para validar existência no SICLI
CREATE TRIGGER TRG_CON_CLIENTE_COMPLEMENTO_INSERT
ON CON_CLIENTE_COMPLEMENTO
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @ClienteID BIGINT, @StatusCadastral VARCHAR(20);
    
    SELECT @ClienteID = i.CLIENTE_ID FROM inserted i;
    
    -- Validar com SICLI
    EXEC usp_ValidarCPF_SICLI 
        @CPF = NULL,  -- Buscar por ID
        @ClienteID = @ClienteID OUTPUT,
        @StatusCadastral = @StatusCadastral OUTPUT;
    
    -- Se válido, prosseguir com INSERT
    INSERT INTO CON_CLIENTE_COMPLEMENTO (CLIENTE_ID, SCORE_CREDITO_NR, ...)
    SELECT CLIENTE_ID, SCORE_CREDITO_NR, ... FROM inserted;
END;
```

##### 1.5.3 Sincronização Cadastral entre Sistemas

**Estratégias de Sincronização**:

1. **Change Data Capture (CDC)** - SQL Server:
```sql
-- Habilitar CDC no SICLI (exemplo conceitual)
EXEC sys.sp_cdc_enable_db;
EXEC sys.sp_cdc_enable_table 
    @source_schema = 'dbo',
    @source_name = 'PES_CLIENTE',
    @role_name = NULL;

-- Consumir mudanças em sistemas downstream
SELECT * FROM cdc.dbo_PES_CLIENTE_CT
WHERE __$operation IN (2, 4)  -- 2=UPDATE, 4=INSERT
  AND __$start_lsn > @last_sync_lsn;
```

2. **Event-Driven (Azure Service Bus/Event Hub)**:
```json
// Mensagem de evento de alteração cadastral
{
  "event_type": "CLIENTE_ATUALIZADO",
  "timestamp": "2026-01-06T10:30:00Z",
  "cliente_id": 1234567890,
  "campos_alterados": ["email", "telefone"],
  "valores_novos": {
    "email": "novo.email@email.com",
    "telefone": "(11) 91234-5678"
  }
}
```

3. **Batch Sync (Jobs Agendados)**:
```sql
-- Job SQL Agent executado a cada 1 hora
MERGE INTO PES_CLIENTE_CACHE AS Target
USING (
    SELECT CLIENTE_ID, CPF_CNPJ_NR, NOME_COMPLETO_NM, EMAIL_DS, TELEFONE_NR
    FROM SICLI.dbo.PES_CLIENTE  -- Linked Server
    WHERE DATA_ALTERACAO_DT > DATEADD(HOUR, -1, GETDATE())
) AS Source
ON Target.CLIENTE_ID = Source.CLIENTE_ID
WHEN MATCHED THEN
    UPDATE SET 
        Target.NOME_COMPLETO_NM = Source.NOME_COMPLETO_NM,
        Target.EMAIL_DS = Source.EMAIL_DS,
        Target.TELEFONE_NR = Source.TELEFONE_NR,
        Target.DATA_ULTIMA_SINCRONIZACAO_DT = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (CLIENTE_ID, CPF_CNPJ_NR, NOME_COMPLETO_NM, EMAIL_DS, TELEFONE_NR)
    VALUES (Source.CLIENTE_ID, Source.CPF_CNPJ_NR, Source.NOME_COMPLETO_NM, 
            Source.EMAIL_DS, Source.TELEFONE_NR);
```

##### 1.5.4 Integridade Referencial com Cadastros Centrais

**Validações de Integridade**:
- FKs para SICLI devem ser validadas via stored procedures (não FK física para banco externo)
- Orphan records (registros sem cliente correspondente) devem ser monitorados
- Reconciliação periódica (diária/semanal) para detectar inconsistências

**Monitoramento de Integridade**:
```sql
-- Verificar registros órfãos (clientes que não existem mais no SICLI)
SELECT c.*
FROM CON_CONTRATO c
LEFT JOIN PES_CLIENTE_CACHE pcc ON c.CLIENTE_ID = pcc.CLIENTE_ID
WHERE pcc.CLIENTE_ID IS NULL;

-- Notificar equipe de governança de dados
-- Exemplo: enviar alerta se orphan count > threshold
```

---

#### 1.6 Norma TE109 (Informações Compartilhadas)

##### 1.6.1 Versionamento de Modelos de Dados

A **Norma TE109** estabelece diretrizes para o **versionamento** e controle de mudanças em modelos de dados compartilhados entre sistemas.

**Princípios de Versionamento**:
- Todo modelo de dados deve ter número de versão (semver: MAJOR.MINOR.PATCH)
- Mudanças breaking (incompatíveis) incrementam MAJOR
- Novas features (compatíveis) incrementam MINOR
- Bugfixes e ajustes incrementam PATCH

**Exemplo - Controle de Versão**:
```sql
-- Tabela de metadados de versionamento
CREATE TABLE SYS_VERSAO_MODELO (
    VERSAO_ID INT IDENTITY(1,1) PRIMARY KEY,
    MODELO_NM VARCHAR(50) NOT NULL,  -- Nome do modelo/sistema
    VERSAO_NR VARCHAR(20) NOT NULL,  -- Ex: 2.1.0
    DATA_DEPLOY_DT DATETIME2 DEFAULT GETDATE(),
    CHANGELOG_DS NVARCHAR(MAX),       -- Descrição das mudanças
    TIPO_MUDANCA_TP VARCHAR(20),      -- MAJOR, MINOR, PATCH
    RESPONSAVEL_NM VARCHAR(100),
    APROVADO_POR_NM VARCHAR(100),     -- ADI/ABD que aprovou
    
    CONSTRAINT CK_SYS_VERSAO_TIPO 
        CHECK (TIPO_MUDANCA_TP IN ('MAJOR', 'MINOR', 'PATCH'))
) WITH (DATA_COMPRESSION = PAGE);

-- Exemplo de registro
INSERT INTO SYS_VERSAO_MODELO 
    (MODELO_NM, VERSAO_NR, CHANGELOG_DS, TIPO_MUDANCA_TP, RESPONSAVEL_NM)
VALUES 
    ('CON_CONTRATO', '2.1.0', 
     'Adicionada coluna TIPO_GARANTIA_TP. Índice em DATA_VENCIMENTO_DT.', 
     'MINOR', 'João Silva');
```

##### 1.6.2 Gestão de Configuração

**Objetos Versionados**:
- Modelos de dados (PDM - PowerDesigner)
- Scripts DDL (CREATE, ALTER, DROP)
- Scripts DML (INSERT para dados de referência)
- Stored Procedures, Functions, Views
- Índices e constraints

**Repositório de Código**:
- Git/TFS para versionamento de DDL
- Convenção de nomenclatura: `V{versao}__{descricao}.sql`
- Estrutura de pastas por tipo de objeto

**Exemplo - Estrutura Git**:
```
/database
  /migrations
    /v1.0
      V1.0.0__initial_schema.sql
      V1.0.1__add_indexes.sql
    /v2.0
      V2.0.0__add_contrato_garantia.sql
      V2.0.1__fix_fk_names.sql
  /stored_procedures
    usp_ValidarCPF_SICLI.sql
    usp_ProcessarContrato.sql
  /views
    vw_ContratosAtivos.sql
  /seed_data
    REF_TipoContrato.sql
```

##### 1.6.3 Rastreabilidade de Mudanças

**Obrigatoriedade de Documentação**:
- Toda mudança estrutural deve ter justificativa (RTC, ADO, Jira)
- Impacto em sistemas consumidores deve ser analisado
- Comunicação prévia para times afetados (mínimo 15 dias úteis para breaking changes)

**Metadados de Auditoria em Objetos**:
```sql
-- Extended Properties para documentar mudanças (SQL Server)
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Tabela de contratos. Versão 2.1.0 (2026-01-06): Adicionada coluna TIPO_GARANTIA_TP.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Histórico de alterações em colunas
EXEC sp_addextendedproperty 
    @name = 'Historico_Alteracao',
    @value = '2026-01-06: Tamanho alterado de VARCHAR(50) para VARCHAR(100) - RTC#12345',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'OBSERVACOES_DS';
```

##### 1.6.4 Controle de Versões de Tabelas e Objetos

**Estratégias para Mudanças Breaking**:

1. **Adição de Colunas**: Sempre NULL ou com DEFAULT (compatível)
```sql
-- ✅ COMPATÍVEL (MINOR)
ALTER TABLE CON_CONTRATO 
ADD TIPO_GARANTIA_TP VARCHAR(20) NULL;

-- ✅ COMPATÍVEL (MINOR)
ALTER TABLE CON_CONTRATO 
ADD DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE();
```

2. **Remoção de Colunas**: Depreciar primeiro, remover em MAJOR version
```sql
-- Passo 1 (v2.0): Depreciar (adicionar extended property)
EXEC sp_addextendedproperty 
    @name = 'DEPRECATED',
    @value = 'Será removida na versão 3.0. Usar NOVA_COLUNA_DS.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'COLUNA_ANTIGA_DS';

-- Passo 2 (v3.0): Remover após período de transição (6 meses)
ALTER TABLE CON_CONTRATO DROP COLUMN COLUNA_ANTIGA_DS;
```

3. **Renomear Objetos**: Criar novo, manter antigo deprecated, remover depois
```sql
-- Passo 1: Criar novo objeto
CREATE VIEW vw_ContratosAtivosV2 AS ...

-- Passo 2: Depreciar antigo (via extended property)
-- Passo 3: Remover antigo na próxima MAJOR version
```

---

#### 1.7 Norma TE174 (Gerenciamento de Metadados)

##### 1.7.1 Catalogação de Dados Corporativos

A **Norma TE174** estabelece diretrizes para o **gerenciamento de metadados** na CAIXA, garantindo que todos os dados corporativos sejam adequadamente documentados, catalogados e governados.

**Tipos de Metadados**:

1. **Metadados Técnicos**:
   - Estrutura de tabelas (colunas, tipos, constraints)
   - Relacionamentos (PKs, FKs)
   - Índices, partições, compressão
   - Estatísticas de performance

2. **Metadados de Negócio**:
   - Descrições em português (não técnicas)
   - Regras de negócio (check constraints, domínios)
   - Glossário de termos
   - Proprietário dos dados (data owner)

3. **Metadados Operacionais**:
   - Volumetria (número de linhas, crescimento)
   - Frequência de atualização
   - Retention policies (retenção, expurgo)
   - SLA de disponibilidade

##### 1.7.2 Dicionário de Dados (Data Dictionary)

**Obrigatoriedade**: Todo sistema CAIXA deve manter dicionário de dados atualizado.

**Ferramentas**:
- PowerDesigner (geração automática a partir do PDM)
- Extended Properties (SQL Server)
- Catálogo corporativo (portal de metadados)

**Exemplo - Extended Properties Completas**:
```sql
-- Tabela
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Armazena contratos habitacionais firmados com clientes. Inclui financiamentos imobiliários, consórcios e leasing.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',  -- OR016
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Colunas
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Identificador único do contrato. Chave surrogate sequencial.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'CONTRATO_ID';

EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Valor total do contrato em reais (R$). Inclui principal + juros + seguros. Deve ser maior que zero.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'VALOR_TOTAL_VL';

EXEC sp_addextendedproperty 
    @name = 'Dado_Sensivel_LGPD',
    @value = 'NAO',  -- CR439
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'VALOR_TOTAL_VL';
```

**Consultar Metadados**:
```sql
-- Listar todas as tabelas com descrições
SELECT 
    t.name AS Tabela,
    ep.value AS Descricao
FROM sys.tables t
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = t.object_id 
    AND ep.minor_id = 0
    AND ep.name = 'MS_Description'
WHERE t.schema_id = SCHEMA_ID('dbo')
ORDER BY t.name;

-- Listar colunas de uma tabela com metadados
SELECT 
    c.name AS Coluna,
    t.name AS Tipo,
    c.max_length AS Tamanho,
    c.is_nullable AS Nullable,
    ep_desc.value AS Descricao,
    ep_lgpd.value AS LGPD
FROM sys.columns c
INNER JOIN sys.types t ON c.user_type_id = t.user_type_id
LEFT JOIN sys.extended_properties ep_desc 
    ON ep_desc.major_id = c.object_id 
    AND ep_desc.minor_id = c.column_id
    AND ep_desc.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_lgpd 
    ON ep_lgpd.major_id = c.object_id 
    AND ep_lgpd.minor_id = c.column_id
    AND ep_lgpd.name = 'Dado_Sensivel_LGPD'
WHERE c.object_id = OBJECT_ID('dbo.CON_CONTRATO')
ORDER BY c.column_id;
```

##### 1.7.3 Linhagem de Dados (Data Lineage)

**Data Lineage**: Rastreamento da origem, transformações e destino dos dados ao longo de seu ciclo de vida.

**Casos de Uso**:
- Auditoria e compliance (LGPD, BACEN)
- Análise de impacto de mudanças
- Troubleshooting de qualidade de dados
- Otimização de ETLs

**Níveis de Linhagem**:

1. **Nível de Tabela** (coarse-grained):
```
SICLI.PES_CLIENTE → [ETL Noturno] → DW.DIM_CLIENTE → [View] → BI.VW_RELATORIO_CLIENTES
```

2. **Nível de Coluna** (fine-grained):
```
SICLI.PES_CLIENTE.CPF_CNPJ_NR → [Transformação: Formatação] → DW.DIM_CLIENTE.CPF_FORMATADO_NR
```

**Ferramentas**:
- Azure Purview (catálogo de dados corporativo)
- SQL Server Integration Services (SSIS) - lineage automático
- PowerDesigner - documentação manual de linhagem

**Exemplo - Documentar Linhagem**:
```sql
-- Extended Property para documentar origem dos dados
EXEC sp_addextendedproperty 
    @name = 'Data_Lineage',
    @value = 'Origem: SICLI.dbo.PES_CLIENTE. Transformação: ETL_DW_DIARIO (SSIS Package). Atualização: Diária às 02:00.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'DIM_CLIENTE';

-- Tabela de metadados de linhagem (exemplo simplificado)
CREATE TABLE SYS_DATA_LINEAGE (
    LINEAGE_ID INT IDENTITY(1,1) PRIMARY KEY,
    TABELA_ORIGEM_NM VARCHAR(100) NOT NULL,
    COLUNA_ORIGEM_NM VARCHAR(100),
    TABELA_DESTINO_NM VARCHAR(100) NOT NULL,
    COLUNA_DESTINO_NM VARCHAR(100),
    TRANSFORMACAO_DS NVARCHAR(500),
    PROCESSO_ETL_NM VARCHAR(100),
    FREQUENCIA_ATUALIZACAO_DS VARCHAR(50),
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE()
);

-- Exemplo de registro
INSERT INTO SYS_DATA_LINEAGE 
VALUES (
    'SICLI.dbo.PES_CLIENTE', 'CPF_CNPJ_NR',
    'DW.dbo.DIM_CLIENTE', 'CPF_FORMATADO_NR',
    'Formatação com máscara XXX.XXX.XXX-XX',
    'ETL_DW_DIARIO',
    'Diária - 02:00',
    GETDATE()
);
```

##### 1.7.4 Documentação Obrigatória (Extended Properties)

**Metadados Obrigatórios por Tipo de Objeto**:

**Tabelas**:
- ✅ `MS_Description`: Descrição de negócio (obrigatória)
- ✅ `Data_Owner`: Área responsável (obrigatória)
- ✅ `Classificacao_Informacao`: OR016 - Pública/Interna/Confidencial/Secreta (obrigatória)
- ✅ `Retention_Policy`: Política de retenção (se aplicável)
- ⚠️ `Data_Lineage`: Origem dos dados (recomendada para DW/BI)

**Colunas**:
- ✅ `MS_Description`: Descrição de negócio (obrigatória)
- ✅ `Dado_Sensivel_LGPD`: SIM/NAO (obrigatória - CR439)
- ⚠️ `Formato_Esperado`: Regex ou exemplos (recomendada para campos com padrão)
- ⚠️ `Fonte_Dados`: Origem (SICLI, cálculo, entrada manual)

**Views**:
- ✅ `MS_Description`: Finalidade da view (obrigatória)
- ✅ `Tabelas_Origem`: Tabelas utilizadas (recomendada)

**Stored Procedures**:
- ✅ `MS_Description`: Finalidade e parâmetros (obrigatória)
- ✅ `Exemplo_Uso`: Como executar (recomendada)

**Validação de Completude**:
```sql
-- Verificar tabelas sem descrição (não conformidade)
SELECT t.name AS Tabela_Sem_Descricao
FROM sys.tables t
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = t.object_id 
    AND ep.minor_id = 0
    AND ep.name = 'MS_Description'
WHERE t.schema_id = SCHEMA_ID('dbo')
  AND t.type = 'U'
  AND ep.value IS NULL;

-- Verificar colunas sem descrição
SELECT 
    OBJECT_NAME(c.object_id) AS Tabela,
    c.name AS Coluna_Sem_Descricao
FROM sys.columns c
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = c.object_id 
    AND ep.minor_id = c.column_id
    AND ep.name = 'MS_Description'
WHERE OBJECTPROPERTY(c.object_id, 'IsUserTable') = 1
  AND ep.value IS NULL
ORDER BY OBJECT_NAME(c.object_id), c.column_id;
```

---

**📊 Status da SUB-PARTE 1.2**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.3 (Governança, Compliance e Padrões Internacionais)

---

### SUB-PARTE 1.3: Governança, Compliance e Padrões Internacionais

---

#### 1.8 Norma OR016 (Tratamento da Informação)

##### 1.8.1 Contexto e Finalidade

A **Norma OR016** estabelece diretrizes para **classificação e tratamento da informação** na CAIXA, com o objetivo de proteger ativos de informação conforme seu grau de sensibilidade e criticidade para o negócio.

**Objetivo principal**:
- Classificar informações segundo níveis de confidencialidade
- Estabelecer controles de acesso baseados em classificação
- Definir políticas de retenção e descarte de dados
- Garantir conformidade com legislação de sigilo bancário

##### 1.8.2 Classificação de Informação

**Níveis de Classificação Obrigatórios** (TE074 3.2.1.3):

| Classificação | Descrição | Impacto se Divulgada | Exemplos |
|---------------|-----------|---------------------|----------|
| **PÚBLICA** | Informação destinada ao público em geral | Nenhum | Taxas de juros, produtos publicitados |
| **INTERNA** | Informação de uso interno da CAIXA | Baixo | Manuais internos, processos operacionais |
| **CONFIDENCIAL** | Informação restrita a grupos específicos | Médio/Alto | Dados de clientes, contratos, estratégias |
| **SECRETA** | Informação estratégica, alto impacto | Muito Alto | Senhas master, chaves criptográficas, auditorias CGU |

**Obrigatoriedade na Modelagem**:
- ✅ Todo modelo de dados DEVE ter classificação
- ✅ Toda tabela DEVE ter classificação (Extended Property)
- ✅ Toda coluna DEVE ter classificação (quando diferente da tabela)

**Exemplo - SQL Server Extended Properties**:
```sql
-- Classificação no nível de tabela
EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Classificação no nível de coluna (quando mais restritiva que a tabela)
EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'SECRETA',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'SEG_USUARIO',
    @level2type = 'COLUMN', @level2name = 'SENHA_HASH_BIN';
```

**PowerDesigner - Extensão CAIXA**:
```
Propriedade Customizada: "Classificação Informação"
Valores permitidos: PÚBLICA | INTERNA | CONFIDENCIAL | SECRETA
Obrigatória: SIM
Validação: Pré-Validador (categoria V201)
```

##### 1.8.3 Controles de Acesso Baseados em Classificação

**Princípios de Acesso**:
- **Need-to-know**: Acesso apenas ao necessário para execução do trabalho
- **Least privilege**: Privilégios mínimos suficientes
- **Separation of duties**: Segregação de funções sensíveis

**Implementação no SQL Server**:

1. **Row-Level Security (RLS)** - Para classificações CONFIDENCIAL/SECRETA:
```sql
-- Função de predicado (filtra linhas baseado no usuário)
CREATE FUNCTION dbo.fn_RLS_Contrato(@UsuarioID INT)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN (
    SELECT 1 AS Result
    WHERE 
        -- Gerente vê todos os contratos
        IS_MEMBER('Gerentes') = 1
        OR
        -- Operador vê apenas seus contratos
        @UsuarioID = USER_ID()
);

-- Aplicar política de segurança
CREATE SECURITY POLICY pol_RLS_Contrato
ADD FILTER PREDICATE dbo.fn_RLS_Contrato(RESPONSAVEL_ID)
ON dbo.CON_CONTRATO
WITH (STATE = ON);
```

2. **Dynamic Data Masking (DDM)** - Para dados sensíveis:
```sql
-- Mascarar CPF/CNPJ
ALTER TABLE PES_CLIENTE
ALTER COLUMN CPF_CNPJ_NR ADD MASKED WITH (FUNCTION = 'partial(3,"XXX.XXX.XXX",2)');
-- Exibe: 123.XXX.XXX-01

-- Mascarar email
ALTER TABLE PES_CLIENTE
ALTER COLUMN EMAIL_DS ADD MASKED WITH (FUNCTION = 'email()');
-- Exibe: jXXX@XXXX.com

-- Usuários com permissão UNMASK veem dados completos
GRANT UNMASK TO [Auditores];
```

3. **Column-Level Security** - Permissões granulares:
```sql
-- Negar acesso direto a colunas sensíveis
DENY SELECT ON dbo.SEG_USUARIO(SENHA_HASH_BIN) TO [Operadores];

-- Permitir acesso via view com lógica de autorização
CREATE VIEW vw_Usuario_Seguro AS
SELECT 
    USUARIO_ID,
    NOME_NM,
    EMAIL_DS,
    -- Senha nunca é exposta
    CASE WHEN IS_MEMBER('Administradores') = 1 
         THEN '***HASH***' 
         ELSE NULL END AS SENHA_STATUS
FROM dbo.SEG_USUARIO;

GRANT SELECT ON vw_Usuario_Seguro TO [Operadores];
```

##### 1.8.4 Retenção e Descarte de Dados

**Políticas de Retenção por Classificação**:

| Classificação | Retenção Online | Retenção Arquivo | Descarte |
|---------------|-----------------|------------------|----------|
| **PÚBLICA** | 2 anos | Indefinido | Não obrigatório |
| **INTERNA** | 3 anos | 10 anos | Após período legal |
| **CONFIDENCIAL** | 5 anos | 10-20 anos | Obrigatório (LGPD) |
| **SECRETA** | 7 anos | 30 anos | Destruição segura |

**Implementação - Expurgo Automático**:
```sql
-- Tabela de controle de retenção
CREATE TABLE SYS_POLITICA_RETENCAO (
    TABELA_NM VARCHAR(100) PRIMARY KEY,
    CLASSIFICACAO_TP VARCHAR(20),
    RETENCAO_ONLINE_ANOS INT,
    RETENCAO_ARQUIVO_ANOS INT,
    CAMPO_DATA_REFERENCIA_NM VARCHAR(100),
    PROCEDIMENTO_EXPURGO_NM VARCHAR(200),
    
    CONSTRAINT CK_SYS_POLITICA_CLASSIFICACAO
        CHECK (CLASSIFICACAO_TP IN ('PUBLICA', 'INTERNA', 'CONFIDENCIAL', 'SECRETA'))
);

-- Exemplo de política
INSERT INTO SYS_POLITICA_RETENCAO VALUES
('CON_CONTRATO', 'CONFIDENCIAL', 5, 10, 'DATA_ASSINATURA_DT', 'usp_ExpurgarContratos');

-- Stored Procedure de expurgo (exemplo)
CREATE PROCEDURE usp_ExpurgarContratos
AS
BEGIN
    DECLARE @DataCorte DATE = DATEADD(YEAR, -5, GETDATE());
    
    -- 1. Migrar para tabela histórico (arquivo)
    INSERT INTO CON_CONTRATO_HISTORICO
    SELECT * 
    FROM CON_CONTRATO
    WHERE DATA_ASSINATURA_DT < @DataCorte
      AND STATUS_TP = 'ENCERRADO';
    
    -- 2. Deletar dados migrados
    DELETE FROM CON_CONTRATO
    WHERE DATA_ASSINATURA_DT < @DataCorte
      AND STATUS_TP = 'ENCERRADO';
    
    -- 3. Log de auditoria
    INSERT INTO SYS_LOG_EXPURGO (TABELA_NM, DATA_CORTE_DT, REGISTROS_EXPURGADOS_QT)
    VALUES ('CON_CONTRATO', @DataCorte, @@ROWCOUNT);
END;
```

##### 1.8.5 Marcação de Sensibilidade (Column-Level Security)

**Metadados de Sensibilidade**:
```sql
-- Marcar colunas sensíveis (Extended Property)
EXEC sp_addextendedproperty 
    @name = 'Dado_Sensivel',
    @value = 'SIM',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

-- Adicionar categoria de sensibilidade
EXEC sp_addextendedproperty 
    @name = 'Categoria_Sensibilidade',
    @value = 'DADO_PESSOAL_LGPD',  -- CR439
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';
```

**Consultar colunas sensíveis**:
```sql
SELECT 
    OBJECT_NAME(ep.major_id) AS Tabela,
    c.name AS Coluna,
    ep_sensivel.value AS Dado_Sensivel,
    ep_categoria.value AS Categoria
FROM sys.extended_properties ep_sensivel
INNER JOIN sys.columns c ON ep_sensivel.major_id = c.object_id AND ep_sensivel.minor_id = c.column_id
LEFT JOIN sys.extended_properties ep_categoria 
    ON ep_categoria.major_id = c.object_id 
    AND ep_categoria.minor_id = c.column_id
    AND ep_categoria.name = 'Categoria_Sensibilidade'
WHERE ep_sensivel.name = 'Dado_Sensivel'
  AND ep_sensivel.value = 'SIM'
ORDER BY Tabela, Coluna;
```

---

#### 1.9 Norma OR188 (Programa de Governança de Dados - PGD)

##### 1.9.1 Princípios de Governança Corporativa

A **Norma OR188** estabelece o **Programa de Governança de Dados (PGD)** da CAIXA, conforme referenciado em TE074 3.1.6.

**Objetivos do PGD**:
- Garantir **qualidade** dos dados corporativos
- Estabelecer **responsabilidades** claras sobre dados
- Promover **reuso** e compartilhamento de informações
- Assegurar **conformidade** regulatória (BACEN, CGU, LGPD)
- Maximizar **valor** dos ativos de dados

**Princípios Fundamentais**:

1. **Accountability (Responsabilização)**:
   - Toda informação tem um Data Owner (proprietário)
   - Data Stewards (guardiães) zelam pela qualidade
   - Decisões sobre dados são rastreáveis

2. **Transparency (Transparência)**:
   - Metadados acessíveis e documentados
   - Linhagem de dados visível
   - Políticas de dados publicadas

3. **Integrity (Integridade)**:
   - Dados precisos e consistentes
   - Validações em múltiplas camadas
   - Auditoria de mudanças

4. **Protection (Proteção)**:
   - Classificação segundo OR016
   - Controles de acesso apropriados
   - Criptografia para dados sensíveis

5. **Compliance (Conformidade)**:
   - Aderência à LGPD (CR439)
   - Atendimento a normas BACEN
   - Políticas de retenção e expurgo

##### 1.9.2 Data Stewardship (Guardiães de Dados)

**Estrutura de Governança**:

```
Comitê Estratégico de Dados
         |
    +---------+---------+
    |                   |
Data Owners      Data Stewards
(VP, Gerentes)   (ADI, Analistas)
    |                   |
    +-------------------+
              |
    Equipes de Desenvolvimento
```

**Responsabilidades**:

**Data Owner (Proprietário de Dados)**:
- Define regras de negócio para os dados
- Aprova acesso a dados sensíveis
- Determina políticas de retenção
- Gerencia qualidade e uso dos dados

**Data Steward (Guardião de Dados)**:
- Implementa políticas definidas pelo Data Owner
- Monitora qualidade de dados
- Cataloga e documenta metadados
- Resolve conflitos de integração
- ADI atua como Data Steward corporativo

**Data Custodian (Custodiante - ABD)**:
- Implementa controles técnicos
- Gerencia backups e restore
- Aplica políticas de segurança
- Monitora performance

**Exemplo - Documentar Responsabilidades**:
```sql
-- Extended Properties para Data Ownership
EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Steward',
    @value = 'ADI Habitação - João Silva (C123456)',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Custodian',
    @value = 'ABD Produção - Equipe SQL Server',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';
```

##### 1.9.3 Qualidade de Dados

**Dimensões de Qualidade** (6 dimensões principais):

| Dimensão | Descrição | Métrica | Validação SQL Server |
|----------|-----------|---------|----------------------|
| **Acurácia** | Dados corretos e precisos | % registros válidos | CHECK constraints, triggers |
| **Completude** | Ausência de valores nulos indevidos | % campos preenchidos | NOT NULL, DEFAULT |
| **Consistência** | Valores uniformes entre sistemas | % divergências | FKs, comparação cross-database |
| **Atualidade** | Dados refletem realidade atual | Idade média dos dados | Colunas de auditoria (_DT_ATUALIZACAO) |
| **Unicidade** | Sem duplicatas indevidas | % registros duplicados | UNIQUE constraints, deduplicação |
| **Integridade** | Relacionamentos preservados | % FKs órfãs | Foreign keys, queries de validação |

**Exemplo - Monitoramento de Qualidade**:
```sql
-- Tabela de métricas de qualidade
CREATE TABLE SYS_METRICA_QUALIDADE (
    METRICA_ID INT IDENTITY(1,1) PRIMARY KEY,
    TABELA_NM VARCHAR(100),
    DIMENSAO_TP VARCHAR(20),
    METRICA_DS VARCHAR(200),
    VALOR_ATUAL_PC DECIMAL(5,2),
    VALOR_META_PC DECIMAL(5,2),
    DATA_MEDICAO_DT DATETIME2 DEFAULT GETDATE(),
    STATUS_TP VARCHAR(20),  -- OK, ALERTA, CRITICO
    
    CONSTRAINT CK_SYS_METRICA_DIMENSAO
        CHECK (DIMENSAO_TP IN ('ACURACIA', 'COMPLETUDE', 'CONSISTENCIA', 
                                'ATUALIDADE', 'UNICIDADE', 'INTEGRIDADE'))
);

-- Procedimento de medição de completude
CREATE PROCEDURE usp_MedirCompletude
    @Tabela VARCHAR(100),
    @Coluna VARCHAR(100)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @TotalRegistros INT;
    DECLARE @RegistrosCompletos INT;
    DECLARE @Completude DECIMAL(5,2);
    
    -- Contar total de registros
    SET @SQL = N'SELECT @Total = COUNT(*) FROM ' + QUOTENAME(@Tabela);
    EXEC sp_executesql @SQL, N'@Total INT OUTPUT', @Total = @TotalRegistros OUTPUT;
    
    -- Contar registros com valor não-nulo
    SET @SQL = N'SELECT @Completos = COUNT(*) FROM ' + QUOTENAME(@Tabela) + 
               N' WHERE ' + QUOTENAME(@Coluna) + ' IS NOT NULL';
    EXEC sp_executesql @SQL, N'@Completos INT OUTPUT', @Completos = @RegistrosCompletos OUTPUT;
    
    -- Calcular percentual
    SET @Completude = (CAST(@RegistrosCompletos AS DECIMAL(10,2)) / @TotalRegistros) * 100;
    
    -- Registrar métrica
    INSERT INTO SYS_METRICA_QUALIDADE (TABELA_NM, DIMENSAO_TP, METRICA_DS, VALOR_ATUAL_PC, VALOR_META_PC, STATUS_TP)
    VALUES (
        @Tabela, 
        'COMPLETUDE', 
        'Completude da coluna ' + @Coluna,
        @Completude,
        95.00,  -- Meta: 95% de completude
        CASE WHEN @Completude >= 95 THEN 'OK'
             WHEN @Completude >= 80 THEN 'ALERTA'
             ELSE 'CRITICO' END
    );
END;
```

##### 1.9.4 Comitês e Responsabilidades

**Estrutura de Comitês**:

1. **Comitê Estratégico de Dados (CED)**:
   - Nível: Vice-Presidência
   - Frequência: Trimestral
   - Decisões: Estratégia de dados, investimentos, políticas corporativas

2. **Comitê Tático de Dados (CTD)**:
   - Nível: Gerências Nacionais
   - Frequência: Mensal
   - Decisões: Priorização de demandas, resolução de conflitos, alocação de recursos

3. **Grupos de Trabalho (GT)**:
   - Nível: Técnico (ADI, ABD, Desenvolvimento)
   - Frequência: Semanal/Conforme demanda
   - Decisões: Questões técnicas, padrões, validações

**Fluxo de Decisão**:
```
Questão Técnica → GT → Resolução
    ↓ (se não resolvida)
Conflito entre Áreas → CTD → Resolução
    ↓ (se não resolvida)
Decisão Estratégica → CED → Resolução Final
```

##### 1.9.5 Métricas de Produtividade (SLA ADI)

Conforme **TE074 3.1.9**, o ADI possui métricas de produtividade baseadas em **contagem de objetos/ações**.

**SLA de Atendimento ADI**:

| Tipo de Demanda | Complexidade | SLA (dias úteis) | Base de Cálculo |
|-----------------|--------------|------------------|-----------------|
| **Novo Sistema** | Alta | 15-20 | Qtd tabelas × 1.5 dias |
| **Novo Módulo** | Média | 10-15 | Qtd tabelas × 1.0 dia |
| **Manutenção** | Baixa | 3-5 | Qtd objetos novos × 0.5 dia |
| **Consultoria** | Variável | 1-3 | Por solicitação |

**Fatores de Ajuste**:
- Complexidade do modelo (+20% se >50 tabelas)
- Integração com sistemas legados (+15%)
- Dados compartilhados/MDM (+10%)
- Período de alta demanda (+20% em nov-dez)

**Exemplo - Cálculo de Prazo**:
```
Demanda: Novo módulo com 25 tabelas, 5 integrações SICLI

Cálculo:
- Base: 25 tabelas × 1.0 dia = 25 dias
- Ajuste integração: 25 × 1.15 = 28.75 dias
- Arredondamento: 29 dias úteis
- SLA: ~6 semanas (considerando feriados)
```

**Portal de Acompanhamento**:
- URL: https://caixa.sharepoint.com/sites/5141/SitePages/Estimativa-Prazo-Atendimento-UAM.aspx
- Funcionalidade: Calculadora de SLA, tracking de demandas, métricas de atendimento

---

#### 1.10 Norma CR439 (LGPD - Lei Geral de Proteção de Dados)

##### 1.10.1 Contexto Legal e Normativo

A **Norma CR439** estabelece procedimentos para atendimento à **Lei Geral de Proteção de Dados Pessoais (LGPD)** - Lei nº 13.709/2018, conforme referenciado em TE074 3.2.17.

**Base Legal**:
- Lei nº 13.709/2018 (LGPD)
- Lei nº 13.853/2019 (alterações LGPD)
- Lei nº 14.010/2020 (LGPD durante pandemia)

**Objetivo**: Proteger direitos fundamentais de **liberdade** e **privacidade** da pessoa natural.

##### 1.10.2 Dados Pessoais e Dados Sensíveis

**Definições LGPD**:

**Dados Pessoais**:
- Informação relacionada a pessoa natural identificada ou identificável
- Exemplos: Nome, CPF, email, endereço, telefone, IP

**Dados Pessoais Sensíveis**:
- Informação sobre origem racial/étnica, convicção religiosa, opinião política, filiação sindical, saúde, vida sexual, genética, biometria
- Exemplos: Dados de saúde (seguros, empréstimos consignados), biometria facial, impressões digitais

**Dados Anonimizados**:
- Não permitem identificação do titular (irreversível)
- **Fora do escopo** da LGPD quando anonimização adequada

**Exemplo - Classificação de Dados**:
```sql
-- Extended Property indicando tipo de dado LGPD
EXEC sp_addextendedproperty 
    @name = 'Dado_Pessoal_LGPD',
    @value = 'SIM',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

EXEC sp_addextendedproperty 
    @name = 'Categoria_LGPD',
    @value = 'DADO_PESSOAL',  -- ou 'DADO_SENSIVEL'
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

-- Exemplo de dado sensível
EXEC sp_addextendedproperty 
    @name = 'Categoria_LGPD',
    @value = 'DADO_SENSIVEL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'SEG_BIOMETRIA',
    @level2type = 'COLUMN', @level2name = 'DIGITAL_HASH_BIN';
```

##### 1.10.3 Direitos dos Titulares

**10 Direitos Garantidos pela LGPD** (Art. 18):

1. **Confirmação de tratamento**: Titular pode confirmar se seus dados são tratados
2. **Acesso aos dados**: Titular pode acessar seus dados
3. **Correção**: Titular pode corrigir dados incompletos/incorretos
4. **Anonimização/Bloqueio/Eliminação**: Dados excessivos ou desnecessários
5. **Portabilidade**: Transferir dados para outro fornecedor
6. **Eliminação**: Excluir dados tratados com consentimento
7. **Informação sobre compartilhamento**: Saber com quem dados foram compartilhados
8. **Informação sobre não consentimento**: Consequências de não fornecer dados
9. **Revogação de consentimento**: Cancelar autorização de uso
10. **Oposição**: Opor-se a tratamento baseado em interesse legítimo

**SLA CAIXA para Direitos do Titular** (CR439):
- **15 dias úteis** para atendimento (prazo máximo)
- Canais: SAC 0800, agências, portal internet

##### 1.10.4 Right to Erasure (Direito ao Esquecimento)

**Implementação Técnica**:

```sql
-- Stored Procedure para atender Right to Erasure
CREATE PROCEDURE usp_LGPD_ExcluirDadosTitular
    @CPF_CNPJ VARCHAR(14),
    @MotivoExclusao VARCHAR(500),
    @SolicitanteMatricula VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ClienteID BIGINT;
    DECLARE @DataSolicitacao DATETIME2 = GETDATE();
    
    -- 1. Validar existência do titular
    SELECT @ClienteID = CLIENTE_ID 
    FROM PES_CLIENTE 
    WHERE CPF_CNPJ_NR = @CPF_CNPJ;
    
    IF @ClienteID IS NULL
    BEGIN
        RAISERROR('CPF/CNPJ não encontrado', 16, 1);
        RETURN;
    END
    
    -- 2. Verificar se há impedimentos legais para exclusão
    IF EXISTS (
        SELECT 1 FROM CON_CONTRATO 
        WHERE CLIENTE_ID = @ClienteID 
          AND STATUS_TP IN ('ATIVO', 'SUSPENSO')
    )
    BEGIN
        RAISERROR('Titular possui contratos ativos. Exclusão não permitida.', 16, 1);
        RETURN;
    END
    
    -- 3. Registrar solicitação de exclusão (auditoria)
    INSERT INTO SYS_LGPD_SOLICITACAO_EXCLUSAO 
        (CLIENTE_ID, CPF_CNPJ_NR, DATA_SOLICITACAO_DT, MOTIVO_DS, SOLICITANTE_NM, STATUS_TP)
    VALUES 
        (@ClienteID, @CPF_CNPJ, @DataSolicitacao, @MotivoExclusao, @SolicitanteMatricula, 'PENDENTE');
    
    -- 4. Anonimizar dados ao invés de deletar (para preservar integridade histórica)
    BEGIN TRANSACTION;
    
    UPDATE PES_CLIENTE
    SET 
        NOME_COMPLETO_NM = 'ANONIMIZADO',
        CPF_CNPJ_NR = 'EXCLUIDO_' + CONVERT(VARCHAR(20), @ClienteID),
        EMAIL_DS = NULL,
        TELEFONE_NR = NULL,
        DATA_NASCIMENTO_DT = NULL,
        -- Preservar ID para integridade referencial
        DATA_EXCLUSAO_LGPD_DT = @DataSolicitacao,
        USUARIO_EXCLUSAO_LGPD_NM = @SolicitanteMatricula
    WHERE CLIENTE_ID = @ClienteID;
    
    -- 5. Deletar dados de tabelas relacionadas (quando aplicável)
    DELETE FROM PES_CLIENTE_ENDERECO WHERE CLIENTE_ID = @ClienteID;
    DELETE FROM PES_CLIENTE_TELEFONE WHERE CLIENTE_ID = @ClienteID;
    
    -- 6. Marcar solicitação como concluída
    UPDATE SYS_LGPD_SOLICITACAO_EXCLUSAO
    SET STATUS_TP = 'CONCLUIDA',
        DATA_CONCLUSAO_DT = GETDATE()
    WHERE CLIENTE_ID = @ClienteID
      AND DATA_SOLICITACAO_DT = @DataSolicitacao;
    
    COMMIT TRANSACTION;
    
    PRINT 'Dados do titular anonimizados com sucesso (LGPD Art. 18).';
END;
```

##### 1.10.5 Minimização de Dados

**Princípio**: Coletar apenas dados **necessários** e **adequados** à finalidade do tratamento.

**Implementação na Modelagem**:
```sql
-- ❌ INCORRETO: Coletar dados desnecessários
CREATE TABLE PES_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT PRIMARY KEY,
    NOME_NM NVARCHAR(200),
    CPF_NR VARCHAR(11),
    RG_NR VARCHAR(20),              -- ❌ Necessário?
    ESTADO_CIVIL_TP VARCHAR(20),    -- ❌ Necessário?
    NOME_MAE_NM NVARCHAR(200),      -- ❌ Necessário?
    RELIGIAO_DS VARCHAR(50),        -- ❌ PROIBIDO (dado sensível sem justificativa)
    ORIENTACAO_SEXUAL_DS VARCHAR(50) -- ❌ PROIBIDO
);

-- ✅ CORRETO: Minimização de dados
CREATE TABLE PES_CLIENTE_CORRETO (
    CLIENTE_ID BIGINT PRIMARY KEY,
    NOME_NM NVARCHAR(200) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    -- Apenas dados estritamente necessários para a finalidade
);
```

**Justificativa de Coleta**:
```sql
-- Documentar finalidade e base legal para cada coluna sensível
EXEC sp_addextendedproperty 
    @name = 'LGPD_Finalidade',
    @value = 'Identificação única do cliente para cumprimento de obrigação legal (Resolução BACEN 2554/98)',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

EXEC sp_addextendedproperty 
    @name = 'LGPD_Base_Legal',
    @value = 'Obrigação Legal (Art. 7º, II)',  -- Não requer consentimento
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';
```

##### 1.10.6 Privacy by Design e Privacy by Default

**Privacy by Design** (Privacidade desde a Concepção):
- Incorporar proteção de dados desde o início do projeto
- Proativo, não reativo
- Privacidade como padrão, não opt-in

**Privacy by Default** (Privacidade por Padrão):
- Configurações mais restritivas por padrão
- Minimização automática de dados
- Retenção apenas pelo tempo necessário

**Implementação**:
```sql
-- Tabela com Privacy by Design
CREATE TABLE PES_CLIENTE_PRIVACIDADE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- Dados mínimos necessários
    CPF_CNPJ_NR VARCHAR(14) NOT NULL UNIQUE,
    NOME_NM NVARCHAR(200) NOT NULL,
    
    -- Dados opcionais (Privacy by Default = NULL)
    EMAIL_DS VARCHAR(150) NULL,
    TELEFONE_NR VARCHAR(20) NULL,
    
    -- Criptografia para dados sensíveis
    SENHA_HASH_BIN VARBINARY(64) NOT NULL,  -- bcrypt/argon2
    
    -- Consentimentos explícitos (opt-in)
    CONSENTIMENTO_EMAIL_MARKETING_IN CHAR(1) DEFAULT 'N',
    CONSENTIMENTO_SMS_MARKETING_IN CHAR(1) DEFAULT 'N',
    DATA_CONSENTIMENTO_EMAIL_DT DATETIME2 NULL,
    DATA_CONSENTIMENTO_SMS_DT DATETIME2 NULL,
    
    -- Auditoria LGPD
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE(),
    DATA_ULTIMA_ALTERACAO_DT DATETIME2 NULL,
    DATA_ULTIMO_ACESSO_DT DATETIME2 NULL,
    IP_ULTIMO_ACESSO_DS VARCHAR(45) NULL,
    
    -- Retention policy (Privacy by Default)
    DATA_INATIVACAO_DT DATETIME2 NULL,  -- 2 anos sem acesso → inativar
    DATA_EXCLUSAO_PREVISTA_DT AS DATEADD(YEAR, 5, DATA_INATIVACAO_DT),  -- 5 anos → excluir
    
    CONSTRAINT CK_CONSENTIMENTO_EMAIL CHECK (CONSENTIMENTO_EMAIL_MARKETING_IN IN ('S', 'N')),
    CONSTRAINT CK_CONSENTIMENTO_SMS CHECK (CONSENTIMENTO_SMS_MARKETING_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
```

##### 1.10.7 Anonimização e Pseudonimização

**Definições**:
- **Anonimização**: Irreversível, não permite reidentificação (FORA da LGPD)
- **Pseudonimização**: Reversível com chave, permite reidentificação (DENTRO da LGPD, mas com proteção adicional)

**Técnicas de Anonimização**:

1. **Generalização** (reduzir precisão):
```sql
-- Antes: 1985-03-15 → Depois: 1985 (ano)
SELECT 
    YEAR(DATA_NASCIMENTO_DT) AS ANO_NASCIMENTO,
    COUNT(*) AS TOTAL_CLIENTES
FROM PES_CLIENTE
GROUP BY YEAR(DATA_NASCIMENTO_DT);
```

2. **Supressão** (remover valores):
```sql
-- Remover CPF completo, manter apenas hash
UPDATE PES_CLIENTE_ANONIMIZADO
SET CPF_NR = NULL,
    CPF_HASH = HASHBYTES('SHA2_256', CPF_NR);
```

3. **Agregação** (combinar registros):
```sql
-- Dados agregados (não individualizados)
SELECT 
    FAIXA_ETARIA = CASE 
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 30 THEN '18-29'
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 40 THEN '30-39'
        ELSE '40+' END,
    COUNT(*) AS TOTAL
FROM PES_CLIENTE
GROUP BY CASE 
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 30 THEN '18-29'
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 40 THEN '30-39'
        ELSE '40+' END;
```

**Pseudonimização (Tokenização)**:
```sql
-- Tabela de tokens (separada, acesso restrito)
CREATE TABLE SEC_TOKEN_CPF (
    TOKEN_ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
    CPF_HASH_BIN VARBINARY(32) NOT NULL UNIQUE,  -- SHA-256 do CPF
    CPF_CRIPTOGRAFADO_BIN VARBINARY(256) NOT NULL,  -- AES-256
    DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela de negócio usa apenas token
CREATE TABLE CON_CONTRATO_ANONIMIZADO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_TOKEN_ID UNIQUEIDENTIFIER NOT NULL,  -- Referência ao token
    VALOR_VL DECIMAL(18,2),
    -- Sem CPF/nome/dados pessoais
    CONSTRAINT FK_CONTRATO_TOKEN FOREIGN KEY (CLIENTE_TOKEN_ID) 
        REFERENCES SEC_TOKEN_CPF(TOKEN_ID)
);
```

##### 1.10.8 Auditoria e Rastreabilidade (Trilhas de Acesso)

**Obrigatoriedade**: Registrar todos os acessos a dados pessoais (LGPD Art. 37).

**Implementação - Trilha de Auditoria**:
```sql
-- Tabela de log de acesso
CREATE TABLE SYS_LGPD_LOG_ACESSO (
    LOG_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    TABELA_NM VARCHAR(100) NOT NULL,
    COLUNA_NM VARCHAR(100),
    REGISTRO_ID BIGINT,
    CPF_TITULAR_NR VARCHAR(14),
    OPERACAO_TP VARCHAR(10),  -- SELECT, INSERT, UPDATE, DELETE
    USUARIO_NM VARCHAR(100),
    DATA_HORA_DT DATETIME2 DEFAULT GETDATE(),
    IP_ORIGEM_DS VARCHAR(45),
    APLICACAO_NM VARCHAR(100),
    FINALIDADE_ACESSO_DS VARCHAR(500),
    
    CONSTRAINT CK_OPERACAO CHECK (OPERACAO_TP IN ('SELECT', 'INSERT', 'UPDATE', 'DELETE'))
) WITH (DATA_COMPRESSION = PAGE);

-- Particionar por mês (volumetria alta)
-- (criar partition function e scheme)

-- Trigger para auditar acessos
CREATE TRIGGER TRG_PES_CLIENTE_AUDIT
ON PES_CLIENTE
AFTER SELECT, INSERT, UPDATE, DELETE
AS
BEGIN
    INSERT INTO SYS_LGPD_LOG_ACESSO 
        (TABELA_NM, REGISTRO_ID, CPF_TITULAR_NR, OPERACAO_TP, USUARIO_NM, IP_ORIGEM_DS, APLICACAO_NM)
    SELECT 
        'PES_CLIENTE',
        COALESCE(i.CLIENTE_ID, d.CLIENTE_ID),
        COALESCE(i.CPF_CNPJ_NR, d.CPF_CNPJ_NR),
        CASE 
            WHEN EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) THEN 'UPDATE'
            WHEN EXISTS(SELECT * FROM inserted) THEN 'INSERT'
            WHEN EXISTS(SELECT * FROM deleted) THEN 'DELETE'
            ELSE 'SELECT' END,
        SUSER_SNAME(),
        CONVERT(VARCHAR(45), CONNECTIONPROPERTY('client_net_address')),
        APP_NAME()
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.CLIENTE_ID = d.CLIENTE_ID;
END;
```

---

#### 1.11 Padrão ISO/IEC 11179 (Metadata Registries)

##### 1.11.1 Contexto e Finalidade

A **ISO/IEC 11179** é o padrão internacional para **registro de metadados**, fornecendo um framework para especificação, padronização e registro de elementos de dados.

**Estrutura da Norma** (6 partes principais):
- **Part 1**: Framework (conceitos fundamentais)
- **Part 2**: Classification (taxonomias)
- **Part 3**: Registry Metamodel (modelo de metadados)
- **Part 4**: Formulation of Data Definitions (regras para definições)
- **Part 5**: Naming Principles (nomenclatura semântica)
- **Part 6**: Registration (processos de registro)

**Objetivo**: Promover **interoperabilidade** e **reusabilidade** de dados através de metadados padronizados.

##### 1.11.2 Estrutura de Metadados (Part 3: Registry Metamodel)

**Conceitos Fundamentais**:

```
Data Element Concept (Conceito)
    ↓
Data Element (Elemento de Dado)
    ↓
Value Domain (Domínio de Valores)
```

**Exemplo Prático**:
```
Conceito: "Data de Nascimento de Pessoa"
Elemento: "DATA_NASCIMENTO_DT"
Domínio: DATE (SQL Server), formato ISO 8601 (YYYY-MM-DD)
Valores permitidos: 1900-01-01 até GETDATE()
```

**Metadados ISO 11179 no SQL Server**:
```sql
-- Tabela para catalogar elementos de dados (ISO 11179)
CREATE TABLE SYS_CATALOGO_ELEMENTOS_DADOS (
    ELEMENTO_ID INT IDENTITY(1,1) PRIMARY KEY,
    
    -- ISO 11179 Part 3: Identificação
    ELEMENTO_NOME_NM VARCHAR(100) NOT NULL UNIQUE,
    ELEMENTO_CONCEITO_DS NVARCHAR(500) NOT NULL,
    
    -- ISO 11179 Part 4: Definição
    DEFINICAO_DS NVARCHAR(MAX) NOT NULL,
    CONTEXTO_NEGOCIO_DS NVARCHAR(500),
    
    -- ISO 11179 Part 5: Nomenclatura
    PREFIXO_CAIXA_NM VARCHAR(10),  -- PES_, CON_, POI_, etc.
    SUFIXO_CAIXA_NM VARCHAR(10),   -- _ID, _DT, _NM, _VL, etc.
    NOME_COMPLETO_CAIXA_NM AS (PREFIXO_CAIXA_NM + ELEMENTO_NOME_NM + SUFIXO_CAIXA_NM),
    
    -- Value Domain
    TIPO_DADO_SQL_NM VARCHAR(50),
    TAMANHO_NR INT,
    PRECISAO_NR INT,
    DOMINIO_VALORES_DS NVARCHAR(500),  -- Ex: 'S' ou 'N'
    EXPRESSAO_REGULAR_DS VARCHAR(200),  -- Validação
    
    -- Metadata Management
    STATUS_TP VARCHAR(20) DEFAULT 'ATIVO',  -- ATIVO, DEPRECATED, OBSOLETO
    DATA_REGISTRO_DT DATETIME2 DEFAULT GETDATE(),
    VERSAO_NR VARCHAR(10) DEFAULT '1.0',
    ADMINISTRADOR_DADOS_NM VARCHAR(100),
    
    CONSTRAINT CK_STATUS CHECK (STATUS_TP IN ('ATIVO', 'DEPRECATED', 'OBSOLETO'))
);

-- Exemplo de registro
INSERT INTO SYS_CATALOGO_ELEMENTOS_DADOS 
    (ELEMENTO_NOME_NM, ELEMENTO_CONCEITO_DS, DEFINICAO_DS, CONTEXTO_NEGOCIO_DS, 
     SUFIXO_CAIXA_NM, TIPO_DADO_SQL_NM, EXPRESSAO_REGULAR_DS)
VALUES 
    ('CPF', 'Cadastro de Pessoa Física', 
     'Número de identificação único atribuído pela Receita Federal do Brasil a pessoas físicas.',
     'Utilizado para identificação única de clientes pessoa física em todos os sistemas CAIXA.',
     '_NR', 'VARCHAR(11)', '^[0-9]{11}$');
```

##### 1.11.3 Nomenclatura Semântica (Part 5)

**Princípios ISO 11179 para Nomenclatura**:

1. **Singularidade**: Cada nome deve ser único
2. **Precisão**: Nome deve refletir exatamente o conceito
3. **Concisão**: Nome deve ser o mais curto possível sem perder clareza
4. **Consistência**: Seguir padrões estabelecidos

**Alinhamento TE074 ↔ ISO 11179**:

| ISO 11179 | TE074 (CAIXA) | Exemplo |
|-----------|---------------|---------|
| **Object Class** | Prefixo 3-char | PES_ (Pessoa), CON_ (Contrato) |
| **Property** | Radical | CLIENTE, CONTRATO, PRODUTO |
| **Representation Term** | Sufixo | _ID, _NM, _DT, _VL, _IN |

**Estrutura Completa**:
```
[Object Class]_[Property]_[Representation Term]
     PES_     _  CLIENTE _       _ID

Resultado: PES_CLIENTE_ID
```

**Tabela de Representation Terms (ISO 11179 ↔ TE074)**:

| Representation Term | TE074 Sufixo | Tipo SQL Server | Conceito |
|---------------------|--------------|-----------------|----------|
| Identifier | _ID | BIGINT | Identificador único |
| Name | _NM | NVARCHAR | Nome próprio |
| Description | _DS | NVARCHAR | Descrição textual |
| Date | _DT | DATE, DATETIME2 | Data/timestamp |
| Amount | _VL | DECIMAL | Valor monetário |
| Quantity | _QT | INT, DECIMAL | Quantidade |
| Code | _CD | VARCHAR | Código fixo |
| Number | _NR | VARCHAR | Número (CPF, CNPJ) |
| Indicator | _IN | CHAR(1) | Flag binário |
| Type | _TP | VARCHAR | Tipo/categoria |
| Percent | _PC | DECIMAL | Percentual |

##### 1.11.4 Registro de Conceitos e Definições

**Processo de Registro** (ISO 11179 Part 6):

1. **Identificação**: Atribuir identificador único
2. **Definição**: Criar definição precisa e não ambígua
3. **Classificação**: Categorizar conforme taxonomia
4. **Aprovação**: Submeter ao Data Steward
5. **Publicação**: Tornar disponível no catálogo
6. **Manutenção**: Revisar periodicamente

**Exemplo - Workflow de Registro**:
```sql
-- Estado do elemento durante lifecycle
CREATE TABLE SYS_ELEMENTO_WORKFLOW (
    WORKFLOW_ID INT IDENTITY(1,1) PRIMARY KEY,
    ELEMENTO_ID INT NOT NULL,
    ESTADO_TP VARCHAR(20),
    DATA_TRANSICAO_DT DATETIME2 DEFAULT GETDATE(),
    USUARIO_NM VARCHAR(100),
    COMENTARIO_DS NVARCHAR(500),
    
    CONSTRAINT FK_ELEMENTO FOREIGN KEY (ELEMENTO_ID) 
        REFERENCES SYS_CATALOGO_ELEMENTOS_DADOS(ELEMENTO_ID),
    CONSTRAINT CK_ESTADO CHECK (ESTADO_TP IN 
        ('DRAFT', 'REVIEW', 'APPROVED', 'PUBLISHED', 'DEPRECATED', 'RETIRED'))
);

-- Workflow típico:
-- 1. DRAFT → Desenvolvedor cria elemento
-- 2. REVIEW → ADI revisa definição
-- 3. APPROVED → ADI aprova
-- 4. PUBLISHED → Disponível para uso
-- 5. DEPRECATED → Marcado para aposentadoria (usar alternativa)
-- 6. RETIRED → Não mais disponível
```

##### 1.11.5 Alinhamento com TE074 (Sufixos, Prefixos)

**Mapping Completo TE074 ↔ ISO 11179**:

```sql
-- View de alinhamento TE074/ISO 11179
CREATE VIEW vw_Alinhamento_TE074_ISO11179 AS
SELECT 
    e.ELEMENTO_NOME_NM AS Nome_Elemento,
    e.NOME_COMPLETO_CAIXA_NM AS Nome_TE074,
    e.PREFIXO_CAIXA_NM AS ISO_Object_Class,
    REPLACE(e.ELEMENTO_NOME_NM, e.SUFIXO_CAIXA_NM, '') AS ISO_Property,
    e.SUFIXO_CAIXA_NM AS ISO_Representation_Term,
    e.TIPO_DADO_SQL_NM AS SQL_Server_Type,
    e.DEFINICAO_DS AS ISO_Definition,
    e.CONTEXTO_NEGOCIO_DS AS Business_Context,
    e.STATUS_TP AS Status
FROM SYS_CATALOGO_ELEMENTOS_DADOS e
WHERE e.STATUS_TP = 'ATIVO';

-- Exemplo de consulta
SELECT * FROM vw_Alinhamento_TE074_ISO11179
WHERE ISO_Object_Class = 'PES_';
```

##### 1.11.6 Reusabilidade de Componentes

**Princípio**: Maximizar reuso através de **componentes padronizados**.

**Componentes Reutilizáveis**:

1. **Value Domains** (Domínios de Valores):
```sql
-- Tabela de domínios reutilizáveis
CREATE TABLE SYS_VALUE_DOMAIN (
    DOMINIO_ID INT IDENTITY(1,1) PRIMARY KEY,
    DOMINIO_NOME_NM VARCHAR(50) UNIQUE NOT NULL,
    DESCRICAO_DS NVARCHAR(200),
    TIPO_DADO_NM VARCHAR(50),
    FORMATO_DS VARCHAR(100),
    
    -- Valores permitidos (para enumerações)
    VALORES_PERMITIDOS_JSON NVARCHAR(MAX),  -- JSON array
    
    -- Validação
    EXPRESSAO_REGULAR_DS VARCHAR(200),
    VALOR_MINIMO_DS VARCHAR(100),
    VALOR_MAXIMO_DS VARCHAR(100)
);

-- Exemplos de domínios reutilizáveis
INSERT INTO SYS_VALUE_DOMAIN 
    (DOMINIO_NOME_NM, DESCRICAO_DS, TIPO_DADO_NM, VALORES_PERMITIDOS_JSON)
VALUES 
    ('INDICADOR_SIM_NAO', 'Indicador binário Sim/Não', 'CHAR(1)', '["S", "N"]'),
    ('STATUS_ATIVO_INATIVO', 'Status de registro', 'CHAR(1)', '["A", "I"]'),
    ('UF_BRASIL', 'Unidades Federativas do Brasil', 'CHAR(2)', 
     '["AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO"]');
```

2. **Colunas de Auditoria** (Template reutilizável):
```sql
-- Template ISO 11179 para auditoria (sempre o mesmo padrão)
/*
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE() NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
    DATA_ATUALIZACAO_DT DATETIME2 NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(50) NULL
*/

-- Script para adicionar colunas de auditoria em qualquer tabela
CREATE PROCEDURE usp_AdicionarColunasAuditoria
    @Tabela VARCHAR(100)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    
    SET @SQL = N'
        ALTER TABLE ' + QUOTENAME(@Tabela) + ' ADD
            DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE() NOT NULL,
            USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
            DATA_ATUALIZACAO_DT DATETIME2 NULL,
            USUARIO_ATUALIZACAO_NM VARCHAR(50) NULL;
    ';
    
    EXEC sp_executesql @SQL;
    
    -- Adicionar extended properties (ISO 11179 metadata)
    EXEC sp_addextendedproperty 
        @name = 'ISO11179_Element',
        @value = 'Audit_Timestamp',
        @level0type = 'SCHEMA', @level0name = 'dbo',
        @level1type = 'TABLE',  @level1name = @Tabela,
        @level2type = 'COLUMN', @level2name = 'DATA_CADASTRO_DT';
END;
```

---

**📊 Status da SUB-PARTE 1.3**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.4 (Workflow de Aprovação e Ferramentas)

---

### SUB-PARTE 1.4: Workflow de Aprovação e Ferramentas

---

#### 1.12 Workflow de Aprovação (Desenvolvimento → ADI → ABD)

##### 1.12.1 Visão Geral do Processo

O processo de **validação de modelos de dados** na CAIXA segue um fluxo estruturado em **3 fases principais**, garantindo qualidade, conformidade normativa e otimização técnica antes da implementação em produção.

**Fluxo Geral**:
```
┌─────────────────┐
│ DESENVOLVIMENTO │ → Modelagem (Conceitual → Lógico → Físico)
└────────┬────────┘
         │ PDM + Documentação
         ↓
┌─────────────────┐
│      ADI        │ → Validação Arquitetural + Conformidade TE074
└────────┬────────┘
         │ Laudo de Validação (Aprovado/Ajustes)
         ↓
┌─────────────────┐
│      ABD        │ → Otimização Física + Implementação
└────────┬────────┘
         │ DDL Implementada
         ↓
    [PRODUÇÃO]
```

**Ferramentas de Apoio**:
- **RTC (Rational Team Concert)**: Workflow de acionamentos e rastreabilidade
- **Pré-Validador**: http://gestaodedados.coresp.caixa - Validação automática TE074
- **SAP PowerDesigner**: Ferramenta corporativa de modelagem
- **Repositório Corporativo**: Versionamento de modelos PDM

##### 1.12.2 Fase 1: Desenvolvimento (Equipe de Desenvolvimento)

**Responsabilidades** (TE074 4.2):

**1.12.2.1 Análise Preliminar de Dados**:
- Abertura de RTC no painel **"Acionamento Capítulos"**, serviço **"Reunião/Consultoria"**
- Envolvimento do ADI desde o início do projeto
- Identificação de necessidade de dados no artefato de requisitos (TE177)

**1.12.2.2 Modelagem Conceitual** (Alto Nível):
- Entidades principais e relacionamentos
- Cardinalidade e opcionalidade
- Regras de negócio fundamentais
- Alinhamento com gestor da informação

**1.12.2.3 Modelagem Lógica** (Normalização):
- Normalização 3NF (obrigatória)
- Definição de chaves primárias e estrangeiras
- Identificação de dados compartilhados (TE105, TE124, TE109)
- Mapeamento de integrações (APIs SICLI)

**1.12.2.4 Modelagem Física** (SQL Server):
- Criação do PDM (Physical Data Model) no SAP PowerDesigner
- Nomenclatura conforme TE074:
  - Prefixos 3-char (PES_, CON_, POI_, TAB_, DOM_)
  - Sufixos obrigatórios (_ID, _NM, _DT, _VL, _DS, _IN, _TP, etc.)
  - Constraints (PK_, FK_, UK_, CK_, DF_)
  - Índices (IDX_)
- Tipos de dados SQL Server adequados
- Descrições em português (MS_Description)
- Extended Properties (classificação OR016, LGPD, Data Owner, etc.)

**1.12.2.5 Validação Automática (Pré-Validador)**:
- URL: http://gestaodedados.coresp.caixa
- Upload do arquivo PDM
- Execução de **100+ regras automáticas** TE074
- Geração de relatório (PDF/Excel)
- **Critério de submissão ao ADI**: **0 (zero) não conformidades CRÍTICAS**

**Exemplo - Checklist Pré-Submissão**:
```
✅ Modelo salvo no repositório corporativo PowerDesigner
✅ Nomenclatura validada (regex ^[A-Z]{3}_[A-Z0-9_]+$)
✅ Todas as tabelas possuem MS_Description
✅ Todas as colunas possuem MS_Description
✅ Primary Keys nomeadas (PK_TABELA)
✅ Foreign Keys nomeadas (FK_ORIGEM_DESTINO)
✅ Classificação OR016 definida (Pública/Interna/Confidencial/Secreta)
✅ Dados sensíveis LGPD identificados
✅ Pré-validador: 0 CRÍTICAS
✅ Documentação complementar anexada (volumetria, frequência transações)
✅ APIs de integração documentadas (https://portalapi.caixa/redoc.html)
```

**1.12.2.6 Submissão ao ADI**:
- Abertura de demanda no RTC, painel **"Acionamento Capítulos"**
- Serviço: **"Solicitação de Validação do Modelos de Dados"**
- Insumos obrigatórios:
  - Arquivo PDM (PowerDesigner)
  - Relatório Pré-Validador (0 CRÍTICAS)
  - Documentação de requisitos (TE177)
  - Volumetria estimada (linhas/ano, crescimento)
  - Frequência de transações (OLTP: TPS, Batch: volume)
  - Integrações com outros sistemas (APIs, MDM)
  - Dados compartilhados (referência TE105/TE124/TE109)

##### 1.12.3 Fase 2: ADI (Administração de Dados e Informações)

**Responsabilidades** (TE074 4.3):

**1.12.3.1 Análise Arquitetural (Visão Corporativa)**:
- Verificar alinhamento com modelos corporativos existentes
- Identificar oportunidades de reuso de dados
- Validar compartilhamento de informações (TE109)
- Garantir unicidade cadastral (TE105, TE124)
- Avaliar impacto em outros sistemas

**1.12.3.2 Conformidade Normativa**:
- Aderência a **TE074** (100% compliance)
- Verificação de nomenclatura (guia PPDS)
- Análise de descrições (português, não-técnicas, contextualizadas)
- Classificação de informação OR016
- Compliance LGPD (CR439)
- Metadados obrigatórios (TE174)

**1.12.3.3 Integridade Conceitual**:
- Evitar redundâncias desnecessárias
- Validar normalização (3NF obrigatória)
- Avaliar denormalizações (justificativa técnica)
- Verificar regras de negócio em constraints
- Consistência de domínios de valores

**1.12.3.4 Documentação e Metadados**:
- Cadastro no **Glossário de Termos** (sincronizado com PowerDesigner)
- Validação de abreviaturas e siglas
- Orientação sobre termos a serem utilizados
- Registro de Data Ownership (Extended Properties)

**1.12.3.5 Elaboração de Laudo de Validação**:

**Estrutura do Laudo ADI**:
```
═══════════════════════════════════════════════════════════
LAUDO DE VALIDAÇÃO DE MODELO DE DADOS - ADI
═══════════════════════════════════════════════════════════

1. IDENTIFICAÇÃO
   - Demanda RTC: #123456
   - Sistema: SIS_NOME_SISTEMA
   - Módulo: Gestão de Contratos
   - Solicitante: João Silva (C123456)
   - Analista ADI: Maria Santos (C789012)
   - Data Análise: 06/01/2026

2. OBJETOS ANALISADOS
   - Tabelas: 12 (8 transacionais, 4 apoio)
   - Colunas: 156
   - PKs: 12
   - FKs: 18
   - Índices: 25
   - Constraints: 34 (15 CHECK, 8 UNIQUE, 11 DEFAULT)

3. ANÁLISE DE CONFORMIDADE

   3.1 Nomenclatura ✅ APROVADO
       - Prefixos 3-char: 100% aderente
       - Sufixos: 100% aderente
       - Constraints: 100% aderente
       - Índices: 100% aderente

   3.2 Descrições ✅ APROVADO
       - Tabelas descritas: 12/12 (100%)
       - Colunas descritas: 156/156 (100%)
       - Português: SIM
       - Contextualizadas: SIM

   3.3 Classificação OR016 ✅ APROVADO
       - Modelo: CONFIDENCIAL
       - Tabelas classificadas: 12/12 (100%)
       - Colunas sensíveis: 8 (marcadas SECRETA)

   3.4 LGPD (CR439) ⚠️ AJUSTES NECESSÁRIOS
       - Dados pessoais identificados: 23 colunas
       - Dados sensíveis: 2 colunas (CPF, DATA_NASCIMENTO)
       - Finalidade documentada: PENDENTE
       - Base legal documentada: PENDENTE
       → AÇÃO: Adicionar Extended Properties LGPD_Finalidade e LGPD_Base_Legal

   3.5 Compartilhamento (TE105/TE124) ✅ APROVADO
       - Integração SICLI: API /clientes/{cpf} documentada
       - CPF único: FK para PES_CLIENTE_CACHE

   3.6 Integridade Conceitual ✅ APROVADO
       - Normalização 3NF: SIM
       - Redundâncias: NENHUMA
       - Relacionamentos: CONSISTENTES

4. PENDÊNCIAS E AJUSTES
   
   4.1 CRÍTICO (BLOQUEADOR): 0
   
   4.2 ALERTA (RECOMENDAÇÃO): 2
       - Tabela CON_CONTRATO_ITEM: Avaliar particionamento (estimativa 50M linhas/ano)
       - Coluna CON_CONTRATO.OBSERVACAO_DS: Alterar de VARCHAR(MAX) para VARCHAR(2000)
   
   4.3 INFORMAÇÃO (BOAS PRÁTICAS): 3
       - Adicionar índice em CON_CONTRATO(DATA_ASSINATURA_DT) para consultas frequentes
       - Considerar compressão PAGE para tabelas transacionais
       - Criar índice covering em CON_CONTRATO_PARCELA para relatórios

5. PARECER FINAL
   
   STATUS: ✅ APROVADO COM ADEQUAÇÕES
   
   O modelo apresentado está APROVADO, condicionado à implementação dos 2 ALERTAS
   (seção 4.2) antes da implementação em produção.
   
   As informações (seção 4.3) são recomendações de otimização que podem ser avaliadas
   pela equipe ABD durante a implementação física.
   
   Após ajustes, o modelo está apto para seguir para validação física (ABD).

6. ASSINATURAS
   
   Analista ADI: Maria Santos (C789012)
   Data: 06/01/2026
   
   Aprovador ADI: Carlos Souza (C456789) - Coordenador UAM
   Data: 06/01/2026
```

**Possíveis Status do Laudo**:

| Status | Descrição | Próxima Ação |
|--------|-----------|--------------|
| **APROVADO** | Sem pendências, modelo conforme | Encaminhar para ABD |
| **APROVADO COM ADEQUAÇÕES** | Pendências não críticas (ALERTA/INFORMAÇÃO) | Ajustar e encaminhar para ABD |
| **APROVADO COM RESSALVAS** | Pendências que não impedem implementação | Implementar + tracking de ajustes futuros |
| **NÃO APROVADO** | Pendências CRÍTICAS | Devolver para Desenvolvimento com detalhamento |

**SLA de Atendimento ADI** (TE074 3.1.9):

Baseado em **métrica de produtividade** (contagem de objetos/ações):

| Tipo de Demanda | Complexidade | Base de Cálculo | SLA (dias úteis) |
|-----------------|--------------|-----------------|------------------|
| **Novo Sistema** | Alta | Qtd tabelas × 1.5 dias | 15-20 |
| **Novo Módulo** | Média | Qtd tabelas × 1.0 dia | 10-15 |
| **Manutenção** | Baixa | Qtd objetos novos × 0.5 dia | 3-5 |
| **Consultoria** | Variável | Por solicitação | 1-3 |

**Fatores de Ajuste**:
- Complexidade do modelo (+20% se >50 tabelas)
- Integração com sistemas legados (+15%)
- Dados compartilhados/MDM (+10%)
- Período de alta demanda (+20% em nov-dez)

**Calculadora de SLA**: https://caixa.sharepoint.com/sites/5141/SitePages/Estimativa-Prazo-Atendimento-UAM.aspx

**Exemplo de Cálculo**:
```
Demanda: Novo módulo com 25 tabelas + 5 integrações SICLI

Cálculo:
- Base: 25 tabelas × 1.0 dia = 25 dias
- Ajuste integração: 25 × 1.15 = 28.75 dias
- Arredondamento: 29 dias úteis
- SLA: ~6 semanas (considerando feriados)
```

##### 1.12.4 Fase 3: ABD (Administração de Banco de Dados)

**Responsabilidades** (TE074 4.4):

**1.12.4.1 Análise de Performance**:
- Avaliação de volumetria (linhas/ano, crescimento)
- Frequência de transações (TPS para OLTP, volume para Batch)
- Query plans estimados (principais consultas)
- Identificação de gargalos potenciais

**1.12.4.2 Otimizações Físicas SQL Server**:

**Particionamento** (>100M linhas/ano):
```sql
-- Exemplo - Particionamento por ano
-- 1. Criar partition function
CREATE PARTITION FUNCTION PF_ANO_CONTRATO (DATE)
AS RANGE RIGHT FOR VALUES 
    ('2020-01-01', '2021-01-01', '2022-01-01', '2023-01-01', '2024-01-01', '2025-01-01', '2026-01-01');

-- 2. Criar partition scheme
CREATE PARTITION SCHEME PS_ANO_CONTRATO
AS PARTITION PF_ANO_CONTRATO
TO ([FG_2020], [FG_2021], [FG_2022], [FG_2023], [FG_2024], [FG_2025], [FG_2026], [PRIMARY]);

-- 3. Criar tabela particionada
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1),
    DATA_ASSINATURA_DT DATE NOT NULL,
    -- outras colunas
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID, DATA_ASSINATURA_DT)
) ON PS_ANO_CONTRATO(DATA_ASSINATURA_DT)
WITH (DATA_COMPRESSION = PAGE);
```

**Compressão** (obrigatória para novas tabelas):
```sql
-- PAGE compression (recomendada, economia 40-70%)
ALTER TABLE CON_CONTRATO 
REBUILD PARTITION = ALL 
WITH (DATA_COMPRESSION = PAGE);

-- ROW compression (economia 20-40%)
ALTER TABLE TAB_TIPO_CONTRATO 
REBUILD PARTITION = ALL 
WITH (DATA_COMPRESSION = ROW);
```

**Índices de Performance**:
```sql
-- Índice em FK (obrigatório)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
ON CON_CONTRATO(CLIENTE_ID)
INCLUDE (DATA_ASSINATURA_DT, STATUS_TP)
WITH (DATA_COMPRESSION = PAGE);

-- Covering index para relatório frequente
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_RELATORIO
ON CON_CONTRATO(STATUS_TP, DATA_ASSINATURA_DT)
INCLUDE (VALOR_VL, CLIENTE_ID, PRODUTO_TP)
WHERE STATUS_TP IN ('ATIVO', 'SUSPENSO')
WITH (DATA_COMPRESSION = PAGE);

-- Filtered index para consultas específicas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVOS
ON CON_CONTRATO(DATA_ASSINATURA_DT)
WHERE STATUS_TP = 'ATIVO'
WITH (DATA_COMPRESSION = PAGE);
```

**Estatísticas Automáticas**:
```sql
-- Garantir atualização automática de estatísticas
ALTER DATABASE [DB_SISTEMA]
SET AUTO_CREATE_STATISTICS ON;

ALTER DATABASE [DB_SISTEMA]
SET AUTO_UPDATE_STATISTICS ON;

ALTER DATABASE [DB_SISTEMA]
SET AUTO_UPDATE_STATISTICS_ASYNC ON;
```

**1.12.4.3 Geração de DDL** (TE074 4.4.8):
- Geração a partir do PDM aprovado (repositório corporativo)
- **Inclusão obrigatória** de metadados (MS_Description)
- Nunca excluir comentários da DDL

```sql
-- Exemplo de DDL gerada pelo ABD (com metadados)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    DATA_CADASTRO_DT DATETIME2(0) DEFAULT GETDATE() NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES PES_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_TP IN ('A', 'S', 'E', 'C'))
) WITH (DATA_COMPRESSION = PAGE);

-- Metadados (obrigatórios - não podem ser excluídos)
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Armazena contratos de produtos da CAIXA com informações de valor, data e status.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';
```

**1.12.4.4 Armazenamento de DDL** (TE074 4.4.9):
- Ferramenta corporativa homologada (acesso público - leitura)
- Ambientes: Desenvolvimento + Teste de Qualidade de Sistema
- ABD Desenvolvimento: permissão de gravação
- ABD Produção: acesso leitura
- Todas as equipes: acesso leitura

**1.12.4.5 Implementação em Ambientes**:

**Sequência de Deploy**:
```
1. Desenvolvimento (DEV)
   ↓
2. Teste de Qualidade (QA/TST)
   ↓
3. Homologação (HOM)
   ↓
4. Pré-Produção (PRE)
   ↓
5. Produção (PRD)
```

**Script de Deploy Padrão**:
```sql
-- Deploy.sql - Exemplo estruturado
-- ============================================================
-- SISTEMA: SIS_CONTRATOS
-- MÓDULO: Gestão de Contratos
-- DEMANDA RTC: #123456
-- DATA: 2026-01-06
-- RESPONSÁVEL ABD: João ABD (C999888)
-- ============================================================

SET NOCOUNT ON;
GO

BEGIN TRANSACTION;
GO

-- 1. Criação de tabelas
PRINT 'Criando tabela CON_CONTRATO...';
-- DDL aqui
GO

-- 2. Criação de índices
PRINT 'Criando índices...';
-- Índices aqui
GO

-- 3. Criação de constraints
PRINT 'Criando constraints...';
-- Constraints aqui
GO

-- 4. Extended properties (metadados)
PRINT 'Adicionando metadados...';
-- Extended properties aqui
GO

-- 5. Validação pós-deploy
PRINT 'Validando objetos criados...';
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'CON_CONTRATO')
BEGIN
    RAISERROR('Tabela CON_CONTRATO não criada!', 16, 1);
    ROLLBACK TRANSACTION;
    RETURN;
END
GO

COMMIT TRANSACTION;
GO

PRINT 'Deploy concluído com sucesso!';
GO
```

**1.12.4.6 Monitoramento Pós-Implementação**:
```sql
-- Consultar performance de índices (primeiros 30 dias)
SELECT 
    OBJECT_NAME(s.object_id) AS Tabela,
    i.name AS Indice,
    s.user_seeks AS Buscas,
    s.user_scans AS Scans,
    s.user_updates AS Atualizacoes,
    s.last_user_seek AS Ultima_Busca,
    CASE 
        WHEN s.user_seeks = 0 AND s.user_scans = 0 THEN 'NUNCA UTILIZADO'
        WHEN s.user_updates > (s.user_seeks + s.user_scans) * 10 THEN 'ALTO CUSTO DE MANUTENCAO'
        ELSE 'OK' 
    END AS Status
FROM sys.dm_db_index_usage_stats s
INNER JOIN sys.indexes i ON s.object_id = i.object_id AND s.index_id = i.index_id
WHERE s.database_id = DB_ID()
  AND OBJECT_NAME(s.object_id) LIKE 'CON_%'
ORDER BY s.user_seeks + s.user_scans DESC;

-- Consultar fragmentação de índices
SELECT 
    OBJECT_NAME(ips.object_id) AS Tabela,
    i.name AS Indice,
    ips.avg_fragmentation_in_percent AS Fragmentacao_PC,
    ips.page_count AS Paginas,
    CASE 
        WHEN ips.avg_fragmentation_in_percent > 30 THEN 'REORGANIZAR/REBUILD'
        WHEN ips.avg_fragmentation_in_percent > 10 THEN 'MONITORAR'
        ELSE 'OK'
    END AS Acao
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'SAMPLED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.avg_fragmentation_in_percent > 5
  AND ips.page_count > 100
ORDER BY ips.avg_fragmentation_in_percent DESC;
```

---

#### 1.13 Ferramenta: SAP PowerDesigner

##### 1.13.1 Visão Geral

**SAP PowerDesigner** é a ferramenta corporativa **obrigatória** da CAIXA para modelagem de dados, garantindo padronização e integração com o repositório corporativo.

**Versão Utilizada**: PowerDesigner 16.x (licença corporativa)

**Tipos de Modelos**:
- **CDM (Conceptual Data Model)**: Modelo conceitual (alto nível, ER)
- **LDM (Logical Data Model)**: Modelo lógico (normalizado, independente de SGBD)
- **PDM (Physical Data Model)**: Modelo físico (SQL Server, Oracle, DB2, PostgreSQL)

**Modelo Obrigatório para Submissão**: **PDM** (Physical Data Model)

##### 1.13.2 Funcionalidades Principais

**1.13.2.1 Modelagem Visual**:
- Diagrama ER (Entity-Relationship) interativo
- Drag-and-drop de objetos
- Auto-layout e organização gráfica
- Zoom e navegação por Subject Areas

**1.13.2.2 Geração de DDL**:
```
PowerDesigner → Database → Generate Database
    ↓
Selecionar SGBD: Microsoft SQL Server 2019
    ↓
Opções:
    [x] Create table
    [x] Create primary key
    [x] Create foreign key
    [x] Create index
    [x] Create check constraint
    [x] Create default
    [x] Create comment (OBRIGATÓRIO - metadados)
    ↓
Gerar DDL → Arquivo .sql
```

**Exemplo de DDL Gerada**:
```sql
/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2019                    */
/* Created on:     06/01/2026 10:30:00                          */
/*==============================================================*/

CREATE TABLE CON_CONTRATO (
   CONTRATO_ID          BIGINT               IDENTITY(1,1) NOT NULL,
   CLIENTE_ID           BIGINT               NOT NULL,
   PRODUTO_TP           VARCHAR(20)          NOT NULL,
   DATA_ASSINATURA_DT   DATE                 NOT NULL,
   VALOR_VL             DECIMAL(15,2)        NOT NULL,
   STATUS_TP            CHAR(1)              NOT NULL,
   CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

EXEC sp_addextendedproperty 'MS_Description', 'Armazena contratos...', 
     'SCHEMA', 'dbo', 'TABLE', 'CON_CONTRATO';
```

**1.13.2.3 Engenharia Reversa (Reverse Engineering)**:
```
PowerDesigner → Database → Update Model from Database
    ↓
Conectar ao SQL Server (ODBC/Native Client)
    ↓
Selecionar objetos: Tabelas, Views, Stored Procedures
    ↓
Importar → PDM atualizado com estrutura atual do banco
```

**Casos de Uso**:
- Documentar bases legadas sem modelo
- Sincronizar modelo com alterações manuais no banco
- Criar baseline de sistemas adquiridos (TE183)

**1.13.2.4 Sincronização Modelo ↔ Banco**:
```
PowerDesigner → Database → Modify Database
    ↓
Comparar modelo PDM com banco atual
    ↓
Gerar script de alteração (ALTER TABLE, ADD COLUMN, etc.)
    ↓
Preview de mudanças → Executar
```

**⚠️ ATENÇÃO**: Execução direta no banco **NÃO RECOMENDADA** em produção. Sempre gerar script e submeter ao ABD.

##### 1.13.3 Extensão CAIXA (Propriedades Customizadas)

A ferramenta PowerDesigner possui **extensão corporativa CAIXA** com propriedades customizadas para atender TE074.

**Propriedades Adicionadas**:

**No Nível de Modelo**:
- Classificação Informação: PÚBLICA | INTERNA | CONFIDENCIAL | SECRETA
- Sistema: Nome do sistema (SIS_XXXX)
- Módulo: Nome do módulo
- Versão: Versionamento semântico (1.0.0)
- Data Última Alteração: Timestamp

**No Nível de Tabela**:
- Classificação Informação (herda do modelo, pode sobrescrever)
- Tipo de Tabela: TRANSACIONAL | APOIO | HISTÓRICO | AUXILIAR | LOG | STAGE
- Volumetria Estimada (linhas/ano)
- Crescimento Anual (%)
- Frequência de Acesso: ALTA | MÉDIA | BAIXA
- Retenção Online (anos)
- Retenção Arquivo (anos)
- Data Owner (proprietário dos dados)
- Data Steward (guardião dos dados)
- Particionamento: SIM | NÃO
- Compressão: PAGE | ROW | NONE

**No Nível de Coluna**:
- Classificação Informação (se mais restritiva que tabela)
- Dado Sensível LGPD: SIM | NÃO
- Categoria LGPD: DADO_PESSOAL | DADO_SENSIVEL | NAO_APLICAVEL
- Finalidade LGPD: Texto livre (justificativa de coleta)
- Base Legal LGPD: CONSENTIMENTO | OBRIGACAO_LEGAL | INTERESSE_LEGITIMO | etc.
- Obrigatório: SIM | NÃO
- Domínio de Valores: Lista (para enumerações)
- Fonte de Dados: Sistema origem (para dados compartilhados)
- API Integração: URL da API SICLI (TE105)

**Como Acessar Propriedades Customizadas**:
```
PowerDesigner:
    1. Selecionar objeto (Modelo/Tabela/Coluna)
    2. Botão direito → Properties
    3. Aba "Extended Attributes" (propriedades CAIXA)
    4. Preencher valores conforme TE074
```

##### 1.13.4 Nomenclatura de Arquivos PDM

**Padrão Corporativo**:
```
[SISTEMA]_[MODULO]_[VERSAO]_[DATA].pdm

Exemplos:
- SIS_CONTRATOS_Gestao_v1.0_20260106.pdm
- SIS_HABITACAO_Financiamento_v2.1_20260106.pdm
- SIS_SICLI_Cadastro_v3.0_20260106.pdm
```

**Regras**:
- SISTEMA: 3-char prefix (SIS_, PES_, CON_)
- MÓDULO: Nome descritivo (sem espaços, PascalCase)
- VERSÃO: Semver (vX.Y)
- DATA: YYYYMMDD (ISO 8601)

##### 1.13.5 Repositório Corporativo e Versionamento

**Repositório PowerDesigner**:
- Servidor corporativo (rede interna CAIXA)
- Conexão via cliente PowerDesigner
- Sincronização automática ao conectar
- Glossário de termos carregado automaticamente (TE074 4.3.8.1)

**Workflow de Versionamento**:
```
1. Check-out do modelo (bloqueia para edição)
   ↓
2. Edições no modelo PDM
   ↓
3. Validação local (pré-validador)
   ↓
4. Check-in com comentários (versionamento automático)
   ↓
5. Modelo disponível para ADI/ABD
```

**Versionamento Semântico (Semver)**:
- **MAJOR.MINOR.PATCH** (ex: 2.1.3)
- **MAJOR**: Breaking changes (incompatibilidade retroativa)
- **MINOR**: Novas tabelas/colunas (compatível com versão anterior)
- **PATCH**: Correções/ajustes de metadados (sem impacto estrutural)

**Exemplo de Controle de Versão**:
```
v1.0.0 → Versão inicial (10 tabelas)
v1.1.0 → Adicionadas 3 novas tabelas (MINOR)
v1.1.1 → Corrigidas descrições de colunas (PATCH)
v1.2.0 → Adicionada tabela de auditoria (MINOR)
v2.0.0 → Reestruturação de PKs (MAJOR - breaking change)
```

##### 1.13.6 Boas Práticas PowerDesigner CAIXA

**1. Organização Gráfica** (TE074 3.2.18):
- Usar Subject Areas para agrupar tabelas relacionadas
- Manter diagrama limpo e legível
- Evitar cruzamento de linhas (relacionamentos)
- Tabelas transacionais no centro, apoio nas bordas
- Históricos em área separada

**2. Documentação Completa**:
- 100% das tabelas com MS_Description
- 100% das colunas com MS_Description
- Descrições em português, não-técnicas
- Contexto de negócio claro

**3. Validação Incremental**:
- Validar modelo a cada 5-10 tabelas adicionadas (pré-validador)
- Não acumular centenas de objetos sem validação
- Corrigir não conformidades imediatamente

**4. Backup Local**:
- Salvar cópias locais (.pdm) antes de check-in
- Manter histórico de versões principais
- Não confiar apenas no repositório

**5. Integração com Git/TFS** (DDL):
- Exportar DDL para controle de versão
- Commitar scripts de migração (versão N → N+1)
- Taggar releases (v1.0, v2.0, etc.)

---

#### 1.14 Ferramenta: Pré-Validador

##### 1.14.1 Visão Geral

**Pré-Validador** é a ferramenta corporativa de **validação automática** de modelos de dados, garantindo conformidade com **TE074** antes da submissão ao ADI.

**URL**: http://gestaodedados.coresp.caixa  
**Acesso**: Interno CAIXA (rede corporativa)  
**Formato de Entrada**: Arquivo PDM (PowerDesigner)  
**Formato de Saída**: Relatório PDF + Excel

##### 1.14.2 Validações Automáticas (100+ Regras TE074)

**Categorias de Validação**:

**1.14.2.1 Nomenclatura** (40+ regras):
- Prefixos 3-char válidos (PES_, CON_, POI_, TAB_, DOM_, etc.)
- Sufixos obrigatórios (_ID, _NM, _DT, _VL, _DS, _IN, _TP, _NR, _PC, _QT)
- Regex de tabelas: `^[A-Z]{3}_[A-Z0-9_]+$`
- Regex de colunas: `^[A-Z0-9_]+_(ID|NM|DT|VL|DS|IN|TP|NR|PC|QT|CD|SG)$`
- Constraints nomeadas (PK_, FK_, UK_, CK_, DF_)
- Índices nomeados (IDX_, IDX_UK_)

**1.14.2.2 Descrições** (15+ regras):
- Todas as tabelas possuem MS_Description
- Todas as colunas possuem MS_Description
- Descrições em português (validação linguística)
- Descrições não-técnicas (sem termos como "FK", "PK", "campo")
- Comprimento mínimo de descrição (30 caracteres)

**1.14.2.3 Chaves** (20+ regras):
- Toda tabela possui Primary Key
- PK nomeada como PK_<TABELA>
- FK nomeada como FK_<ORIGEM>_<DESTINO>
- FK aponta para PK de tabela existente
- Tipos de dados compatíveis (FK ↔ PK)
- Índices em todas as FKs (performance)

**1.14.2.4 Tipos de Dados** (10+ regras):
- Tipos de dados permitidos (lista PPDS)
- DECIMAL para valores monetários (nunca FLOAT/REAL)
- VARCHAR para textos ASCII, NVARCHAR para Unicode
- DATE para datas, DATETIME2 para timestamps
- BIGINT para PKs (volumetria >2B)

**1.14.2.5 Constraints** (10+ regras):
- CHECK constraints nomeadas (CK_<TABELA>_<REGRA>)
- UNIQUE constraints nomeadas (UK_<TABELA>_<COLUNAS>)
- DEFAULT constraints nomeadas (DF_<TABELA>_<COLUNA>)

**1.14.2.6 Classificação OR016** (5+ regras):
- Modelo possui classificação
- Todas as tabelas possuem classificação
- Colunas sensíveis marcadas com classificação mais restritiva

##### 1.14.3 Categorias de Severidade

**CRÍTICO** (🔴 Bloqueador):
- Impede submissão ao ADI
- **Meta**: 0 (zero) CRÍTICAS para submeter
- Exemplos:
  - Tabela sem Primary Key
  - Nomenclatura inválida (não segue regex)
  - Tipos de dados não permitidos
  - FK apontando para tabela inexistente
  - Descrições ausentes

**ALERTA** (⚠️ Recomendação):
- Não bloqueia submissão
- Requer avaliação de contexto
- ADI pode aprovar com justificativa
- Exemplos:
  - Tabela sem classificação OR016
  - Coluna sem domínio de valores documentado
  - Índice ausente em FK (pode afetar performance)
  - Denormalização (validar justificativa)

**INFORMAÇÃO** (ℹ️ Boas Práticas):
- Sugestões de melhoria
- Não afeta aprovação
- Exemplos:
  - Considerar particionamento (volumetria alta)
  - Considerar compressão PAGE
  - Adicionar índices covering para relatórios
  - Utilizar SEQUENCE ao invés de IDENTITY (Oracle)

##### 1.14.4 Processo de Validação

**Fluxo de Uso**:
```
1. Acessar http://gestaodedados.coresp.caixa
   ↓
2. Fazer upload do arquivo PDM
   ↓
3. Aguardar processamento (30 seg - 2 min)
   ↓
4. Baixar relatório PDF/Excel
   ↓
5. Analisar não conformidades
   ↓
6. Corrigir CRÍTICAS no PowerDesigner
   ↓
7. Re-validar até 0 CRÍTICAS
   ↓
8. Submeter ao ADI (com relatório anexado)
```

**Exemplo de Relatório (Resumo)**:
```
═══════════════════════════════════════════════════════════
RELATÓRIO DE PRÉ-VALIDAÇÃO TE074
═══════════════════════════════════════════════════════════

Arquivo: SIS_CONTRATOS_Gestao_v1.0_20260106.pdm
Data: 06/01/2026 10:45:23
Versão Pré-Validador: 3.2.1

───────────────────────────────────────────────────────────
RESUMO EXECUTIVO
───────────────────────────────────────────────────────────

Total de Objetos Analisados: 156
  - Tabelas: 12
  - Colunas: 120
  - Primary Keys: 12
  - Foreign Keys: 18
  - Índices: 25
  - Constraints: 34

Não Conformidades:
  🔴 CRÍTICO: 3
  ⚠️ ALERTA: 5
  ℹ️ INFORMAÇÃO: 8

STATUS: ❌ NÃO APROVADO (corrigir 3 CRÍTICAS)

───────────────────────────────────────────────────────────
DETALHAMENTO - CRÍTICAS (BLOQUEADORES)
───────────────────────────────────────────────────────────

[V201] Tabela sem descrição
  - Tabela: CON_CONTRATO_ITEM
  - Regra: TE074 3.2.2 - Toda tabela deve possuir MS_Description
  - Ação: Adicionar descrição em português na aba Properties → Comment

[V301] Nomenclatura inválida
  - Coluna: CON_CONTRATO.valorContrato
  - Regra: TE074 3.2.1.2 - Nomenclatura deve seguir padrão CAIXA
  - Esperado: VALOR_CONTRATO_VL
  - Ação: Renomear coluna conforme padrão (maiúsculas, sufixo _VL)

[V405] Foreign Key sem índice
  - FK: FK_CON_CONTRATO_ITEM_CONTRATO
  - Tabela: CON_CONTRATO_ITEM(CONTRATO_ID)
  - Regra: TE074 3.2.11 - FK deve possuir índice para performance
  - Ação: Criar índice IDX_CON_CONTRATO_ITEM_CONTRATO_ID

───────────────────────────────────────────────────────────
DETALHAMENTO - ALERTAS (RECOMENDAÇÕES)
───────────────────────────────────────────────────────────

[V502] Classificação OR016 ausente
  - Tabela: CON_CONTRATO
  - Regra: TE074 3.2.1.3 - Classificação obrigatória
  - Ação: Adicionar propriedade "Classificacao_Informacao"

[V601] Volumetria alta sem particionamento
  - Tabela: CON_CONTRATO_PARCELA
  - Volumetria: 150M linhas/ano
  - Regra: Boa prática - Particionar tabelas >100M linhas/ano
  - Ação: Avaliar particionamento com ABD

(...)

───────────────────────────────────────────────────────────
DETALHAMENTO - INFORMAÇÕES (BOAS PRÁTICAS)
───────────────────────────────────────────────────────────

[I701] Compressão não habilitada
  - Tabela: CON_CONTRATO
  - Recomendação: Habilitar DATA_COMPRESSION=PAGE (economia 40-70%)
  - Ação: Avaliar com ABD durante implementação

(...)

═══════════════════════════════════════════════════════════
FIM DO RELATÓRIO
═══════════════════════════════════════════════════════════
```

##### 1.14.5 Critérios de Aprovação

**Para Submissão ao ADI**:
- ✅ **0 (zero) não conformidades CRÍTICAS**
- ⚠️ Alertas são permitidos (ADI avaliará contexto)
- ℹ️ Informações não impedem submissão

**Após Correções**:
- Re-executar pré-validador
- Verificar relatório atualizado
- Anexar relatório final (0 CRÍTICAS) ao RTC

##### 1.14.6 Evolução do Pré-Validador

**Roadmap** (2026-2027):
- Validação de LGPD (CR439) - identificação automática de dados sensíveis
- Validação de metadados TE174 (linhagem de dados)
- Integração com repositório PowerDesigner (validação contínua)
- API REST para validação programática (CI/CD)
- Sugestões automáticas de correção (AI-powered)

---

#### 1.15 Outras Ferramentas e Processos

##### 1.15.1 RTC (Rational Team Concert)

**Função**: Workflow corporativo de acionamentos e rastreabilidade.

**URL**: https://gid.caixa:9443/ccm/web/projects/Acionamento%20Capítulos

**Serviços Disponíveis** (Painel "Acionamento Capítulos"):

1. **Reunião/Consultoria**:
   - Análise preliminar de dados
   - Consultoria técnica ADI
   - Esclarecimento de dúvidas TE074

2. **Solicitação de Validação do Modelos de Dados**:
   - Submissão formal de PDM para validação ADI
   - Anexos obrigatórios: PDM + Relatório Pré-Validador + Documentação

**Campos Obrigatórios do RTC**:
- Sistema: Nome do sistema (SIS_XXXX)
- Módulo: Nome do módulo
- Tipo de Demanda: Novo Sistema | Novo Módulo | Manutenção
- Prioridade: Alta | Média | Baixa
- Descrição: Contexto da demanda
- Anexos: PDM, Pré-Validador, Requisitos (TE177), Volumetria

**Rastreabilidade**:
- Histórico completo de alterações
- Comentários ADI/ABD/Desenvolvimento
- Status: Aberto → Em Análise → Pendente Ajustes → Concluído
- SLA tracking (TE074 3.1.9)

##### 1.15.2 Git/TFS (Versionamento de DDL)

**Função**: Controle de versão de scripts DDL e migrations.

**Estrutura Recomendada** (Git):
```
repository/
├── ddl/
│   ├── v1.0/
│   │   ├── 001_create_tables.sql
│   │   ├── 002_create_indexes.sql
│   │   ├── 003_create_constraints.sql
│   │   └── 004_extended_properties.sql
│   ├── v1.1/
│   │   ├── 005_alter_add_column_contrato_obs.sql
│   │   └── 006_create_table_contrato_anexo.sql
│   └── v2.0/
│       ├── 007_alter_pk_contrato.sql (breaking change)
│       └── 008_migration_v1_to_v2.sql
├── migrations/
│   ├── rollback/
│   │   ├── rollback_v1.1_to_v1.0.sql
│   │   └── rollback_v2.0_to_v1.1.sql
│   └── data/
│       ├── seed_tab_tipo_contrato.sql
│       └── update_status_contratos_legados.sql
├── docs/
│   ├── modelo_v1.0.pdm
│   ├── modelo_v1.1.pdm
│   ├── laudo_adi_v1.0.pdf
│   └── relatorio_prevalidador_v1.0.pdf
└── README.md
```

**Boas Práticas Git**:
- Commits atômicos (1 alteração = 1 commit)
- Mensagens descritivas: `feat: adiciona tabela CON_CONTRATO_ANEXO (v1.1)`
- Tags para versões: `git tag v1.0.0`, `git tag v2.0.0`
- Branches: `main` (produção), `develop` (desenvolvimento), `feature/nova-tabela`

##### 1.15.3 SQL Server Management Studio (SSMS)

**Função**: IDE principal para desenvolvimento, execução e monitoramento SQL Server.

**Versão Recomendada**: SSMS 19.x (latest)

**Funcionalidades Utilizadas**:
- Execução de DDL (após aprovação ABD)
- Consultas ad-hoc (exploração de dados)
- Visualização de Extended Properties
- Análise de query plans (performance)
- Monitoramento de bloqueios e deadlocks
- Backup/restore (testes)

**Configuração Recomendada**:
```sql
-- Habilitar plano de execução real
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SET SHOWPLAN_ALL ON;

-- Configurar opções de sessão
SET NOCOUNT ON;
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
```

##### 1.15.4 Azure Data Studio

**Função**: Alternativa moderna ao SSMS, multi-plataforma (Windows/Linux/macOS).

**Vantagens**:
- Interface moderna (baseada em VS Code)
- Notebooks SQL (documentação executável)
- Extensões (Git integration, YAML, Markdown preview)
- Gráficos de performance integrados
- Suporte a PostgreSQL, MySQL (além de SQL Server)

**Casos de Uso**:
- Desenvolvimento em Linux/Mac
- Notebooks para documentação de processos
- Visualização de métricas de performance
- Colaboração (notebooks versionados no Git)

##### 1.15.5 Ferramentas de Performance

**SQL Server Profiler**:
- Captura de eventos (queries executadas, bloqueios, deadlocks)
- Análise de performance de aplicações
- Identificação de queries lentas

**Extended Events** (substitui Profiler):
- Menor overhead
- Mais flexível (filtros avançados)
- Persistência em arquivo (.xel)
- Análise post-mortem

**DMVs (Dynamic Management Views)**:
```sql
-- Top 10 queries mais lentas (últimas 24h)
SELECT TOP 10
    SUBSTRING(qt.text, (qs.statement_start_offset/2)+1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset
        END - qs.statement_start_offset)/2)+1) AS Query,
    qs.execution_count AS Execucoes,
    qs.total_elapsed_time / 1000 AS Tempo_Total_ms,
    qs.total_elapsed_time / qs.execution_count / 1000 AS Tempo_Medio_ms,
    qs.last_execution_time AS Ultima_Execucao
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
WHERE qs.last_execution_time > DATEADD(HOUR, -24, GETDATE())
ORDER BY qs.total_elapsed_time DESC;

-- Índices ausentes (sugestões SQL Server)
SELECT 
    OBJECT_NAME(mid.object_id) AS Tabela,
    mid.equality_columns AS Colunas_Igualdade,
    mid.inequality_columns AS Colunas_Desigualdade,
    mid.included_columns AS Colunas_Include,
    migs.avg_user_impact AS Impacto_Medio_PC,
    migs.user_seeks AS Buscas,
    'CREATE NONCLUSTERED INDEX IDX_' + OBJECT_NAME(mid.object_id) + '_' + 
        REPLACE(REPLACE(ISNULL(mid.equality_columns, ''), ', ', '_'), '[', '') + 
        ' ON ' + OBJECT_NAME(mid.object_id) + 
        ' (' + ISNULL(mid.equality_columns, '') + ')' AS SQL_Sugerido
FROM sys.dm_db_missing_index_details mid
INNER JOIN sys.dm_db_missing_index_groups mig ON mid.index_handle = mig.index_handle
INNER JOIN sys.dm_db_missing_index_group_stats migs ON mig.index_group_handle = migs.group_handle
WHERE mid.database_id = DB_ID()
  AND migs.avg_user_impact > 50  -- Impacto > 50%
ORDER BY migs.avg_user_impact DESC;
```

##### 1.15.6 Ferramentas de Documentação

**Geração Automática de Dicionário de Dados**:
```sql
-- Script para gerar dicionário de dados completo
SELECT 
    SCHEMA_NAME(t.schema_id) AS Esquema,
    t.name AS Tabela,
    ep_tabela.value AS Descricao_Tabela,
    c.name AS Coluna,
    TYPE_NAME(c.user_type_id) AS Tipo_Dado,
    c.max_length AS Tamanho,
    c.precision AS Precisao,
    c.scale AS Escala,
    CASE WHEN c.is_nullable = 1 THEN 'SIM' ELSE 'NAO' END AS Permite_Null,
    ep_coluna.value AS Descricao_Coluna,
    ep_class.value AS Classificacao_OR016,
    ep_lgpd.value AS Dado_Sensivel_LGPD
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
LEFT JOIN sys.extended_properties ep_tabela 
    ON ep_tabela.major_id = t.object_id 
    AND ep_tabela.minor_id = 0
    AND ep_tabela.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_coluna
    ON ep_coluna.major_id = c.object_id 
    AND ep_coluna.minor_id = c.column_id
    AND ep_coluna.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_class
    ON ep_class.major_id = t.object_id 
    AND ep_class.minor_id = 0
    AND ep_class.name = 'Classificacao_Informacao'
LEFT JOIN sys.extended_properties ep_lgpd
    ON ep_lgpd.major_id = c.object_id 
    AND ep_lgpd.minor_id = c.column_id
    AND ep_lgpd.name = 'Dado_Sensivel_LGPD'
WHERE t.name LIKE 'CON_%'  -- Filtrar por prefixo
ORDER BY t.name, c.column_id;
```

**Exportação para Excel/Markdown**:
- SSMS: Results to Grid → Copy with Headers → Paste no Excel
- PowerShell: `Invoke-Sqlcmd` + `Export-Csv`
- Azure Data Studio: Export to CSV/JSON
- Ferramentas terceiras: Redgate SQL Doc, ApexSQL Doc

---

**📊 Status da SUB-PARTE 1.4**: ✅ COMPLETA  
**📊 Status da PARTE 1 (Fundamentos e Normas Aplicáveis)**: ✅ **COMPLETA**

**Resumo PARTE 1**:
- ✅ SUB-PARTE 1.1: Introdução + TE074 + TE079 (seções 1.1-1.3)
- ✅ SUB-PARTE 1.2: TE105 + TE124 + TE109 + TE174 (seções 1.4-1.7)
- ✅ SUB-PARTE 1.3: OR016 + OR188 + CR439 + ISO/IEC 11179 (seções 1.8-1.11)
- ✅ SUB-PARTE 1.4: Workflow + PowerDesigner + Pré-Validador + Ferramentas (seções 1.12-1.15)

**Total**: 15 seções, ~50KB, tempo de leitura estimado: ~25-30 minutos

---

# PARTE 2: NOMENCLATURA E PADRONIZAÇÃO

> **Referências Normativas**: TE074 3.2.1, TE074 3.2.2, Expressões Regulares PPDS

---

## 2.1 Nomenclatura de Tabelas

### 2.1.1 Padrão Geral

Toda tabela no SQL Server deve seguir o padrão de nomenclatura CAIXA estabelecido pela TE074 3.2.1.2:

**Formato:**
```
[PREFIXO]_[NOME_DESCRITIVO]
```

**Regras:**
- **Prefixo obrigatório**: 3 letras maiúsculas identificando o sistema ou domínio
- **Nome descritivo**: Palavras separadas por underscore (`_`)
- **Somente caracteres**: A-Z, 0-9 e `_` (underscore)
- **Case**: SEMPRE MAIÚSCULAS
- **Comprimento máximo**: 128 caracteres (limite SQL Server)
- **Comprimento recomendado**: 30-50 caracteres (legibilidade)

**Expressão Regular de Validação:**
```regex
^[A-Z]{3}_[A-Z0-9_]+$
```

### 2.1.2 Prefixos de Sistema

**Tabelas Transacionais/Negociais** (TE074 3.2.5):
```sql
-- Sistema de Contratos
CON_CONTRATO
CON_CONTRATO_PARCELA
CON_CONTRATO_ADITIVO

-- Sistema de Arrecadação
ARR_BOLETO
ARR_PAGAMENTO
ARR_CONTA_BANCARIA

-- Sistema de Garantias
GAR_HIPOTECA
GAR_ALIENACAO_FIDUCIARIA
GAR_PENHOR
```

**Tabelas de Apoio/Domínio** (TE074 3.2.6):
```sql
-- Prefixos TAB_ ou DOM_
TAB_TIPO_CONTRATO
DOM_UF
TAB_MUNICIPIO
DOM_STATUS_PROCESSAMENTO
```

**Tabelas de Histórico**:
```sql
-- Sufixo _HIST
CON_CONTRATO_HIST
ARR_PAGAMENTO_HIST
CLI_CLIENTE_HIST
```

**Tabelas Auxiliares**:
```sql
-- Sufixo _AUX
CON_CONTRATO_PROCESSAMENTO_AUX
ARR_CONCILIACAO_LOTE_AUX
FIN_CALCULO_TEMP_AUX
```

**Tabelas de Log/Auditoria**:
```sql
-- Sufixo _LOG
CON_CONTRATO_ALTERACAO_LOG
USU_LOGIN_TENTATIVA_LOG
SIS_EXECUCAO_BATCH_LOG
```

**Tabelas de Stage/Carga**:
```sql
-- Prefixo STG_
STG_CONTRATO_IMPORTACAO
STG_CLIENTE_INTEGRACAO
STG_PAGAMENTO_LOTE
```

### 2.1.3 Tipos de Tabela e Convenções

**Spring Batch (TE074 3.2.1.4):**
```sql
-- Prefixo obrigatório SPB_
SPB_BATCH_JOB_INSTANCE
SPB_BATCH_JOB_EXECUTION
SPB_BATCH_STEP_EXECUTION
SPB_BATCH_JOB_PARAMS
```

**Modelagem Dimensional:**
```sql
-- Tabelas Fato: Prefixo FATO_
FATO_VENDA
FATO_PAGAMENTO
FATO_CONTRATO

-- Tabelas Dimensão: Prefixo DIM_
DIM_TEMPO
DIM_CLIENTE
DIM_PRODUTO
DIM_GEOGRAFIA
```

**Tabelas Associativas (N:N):**
```sql
-- Concatenação dos nomes relacionados
CON_CONTRATO_GARANTIA  -- Relaciona CON_CONTRATO e GAR_GARANTIA
PRO_PRODUTO_CATEGORIA  -- Relaciona PRO_PRODUTO e PRO_CATEGORIA
USU_USUARIO_PERFIL     -- Relaciona USU_USUARIO e USU_PERFIL
```

### 2.1.4 Exemplos Práticos

**✅ CORRETO:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    TIPO_CONTRATO_DS VARCHAR(500) NULL
);

CREATE TABLE CON_CONTRATO_HIST (
    CONTRATO_HIST_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    DATA_HISTORICO_DT DATETIME2(3) NOT NULL,
    OPERACAO_TP CHAR(1) NOT NULL  -- I=INSERT, U=UPDATE, D=DELETE
);
```

**❌ INCORRETO:**
```sql
-- Prefixo ausente
CREATE TABLE Contrato ( ... );

-- Minúsculas
CREATE TABLE con_contrato ( ... );

-- camelCase
CREATE TABLE CON_ContratoFinanciamento ( ... );

-- Caracteres inválidos
CREATE TABLE CON-CONTRATO ( ... );
CREATE TABLE CON.CONTRATO ( ... );

-- Prefixo com 2 letras apenas
CREATE TABLE CO_CONTRATO ( ... );
```

### 2.1.5 Validação Pré-Validador

O Pré-Validador executa as seguintes verificações automáticas:

```
[V101] Nomenclatura de Tabela - Prefixo ausente
[V102] Nomenclatura de Tabela - Prefixo inválido (não são 3 letras)
[V103] Nomenclatura de Tabela - Caracteres inválidos (minúsculas, especiais)
[V104] Nomenclatura de Tabela - Padrão camelCase detectado
[V105] Nomenclatura de Tabela - Comprimento > 128 caracteres
```

---

## 2.2 Nomenclatura de Colunas

### 2.2.1 Padrão Geral

Toda coluna deve seguir o padrão:

**Formato:**
```
[NOME_DESCRITIVO]_[SUFIXO]
```

**Regras:**
- **Nome descritivo**: Palavras separadas por `_` (underscore)
- **Sufixo obrigatório**: 2 letras indicando o tipo de dado (ver 2.2.2)
- **Case**: SEMPRE MAIÚSCULAS
- **Comprimento máximo**: 128 caracteres
- **Comprimento recomendado**: 20-40 caracteres

### 2.2.2 Sufixos Obrigatórios (10 Tipos)

| Sufixo | Tipo de Dado | Tipo SQL Server | Exemplo |
|--------|--------------|-----------------|---------|
| **_ID** | Identificador único | BIGINT, INT, UNIQUEIDENTIFIER | CONTRATO_ID, CLIENTE_ID |
| **_DT** | Data | DATE, DATETIME2 | DATA_CADASTRO_DT, DATA_VENCIMENTO_DT |
| **_VL** | Valor numérico/monetário | DECIMAL, NUMERIC, MONEY | VALOR_CONTRATO_VL, VALOR_PARCELA_VL |
| **_NM** | Nome descritivo | VARCHAR, NVARCHAR | CLIENTE_NM, PRODUTO_NM |
| **_DS** | Descrição detalhada | VARCHAR, NVARCHAR, TEXT | CONTRATO_DS, OBSERVACAO_DS |
| **_IN** | Indicador booleano | CHAR(1), BIT | ATIVO_IN, DELETADO_IN |
| **_TP** | Tipo/Classificação | CHAR, VARCHAR(curto) | STATUS_TP, CATEGORIA_TP |
| **_NR** | Número sequencial | VARCHAR, INT | NUMERO_CONTRATO_NR, NUMERO_NOTA_NR |
| **_PC** | Percentual | DECIMAL(5,2), DECIMAL(7,4) | TAXA_JUROS_PC, DESCONTO_PC |
| **_QT** | Quantidade | INT, BIGINT, DECIMAL | QUANTIDADE_PARCELAS_QT, QUANTIDADE_ITENS_QT |

### 2.2.3 Sufixos Especiais

**Código (_CD):**
```sql
TIPO_CONTRATO_CD VARCHAR(10)     -- Código de domínio
UF_CD CHAR(2)                    -- Sigla UF
MUNICIPIO_CD VARCHAR(7)          -- Código IBGE
```

**Timestamp (_TS):**
```sql
PROCESSAMENTO_TS DATETIME2(7)    -- Timestamp alta precisão
SINCRONIZACAO_TS ROWVERSION      -- Rowversion para controle concorrência
```

**Sequência (_SEQ):**
```sql
VERSAO_SEQ INT                   -- Número de versão
ORDEM_EXIBICAO_SEQ INT          -- Ordem de apresentação
```

**Hash (_HASH):**
```sql
SENHA_HASH VARBINARY(64)         -- Hash SHA256
CHECKSUM_HASH BINARY(16)         -- Hash MD5
```

### 2.2.4 Colunas de Auditoria Obrigatórias

Toda tabela transacional DEVE possuir (TE074 3.2.8):

```sql
CREATE TABLE CON_CONTRATO (
    -- Colunas negociais
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    -- AUDITORIA OBRIGATÓRIA
    DT_CADASTRO DATE NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT GETDATE(),
    
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    
    DT_ATUALIZACAO DATE NULL,
    
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Opcional: Timestamp para controle de concorrência
    TIMESTAMP_ATUALIZACAO_TS ROWVERSION
);
```

**Campos Opcionais de Auditoria:**
```sql
DT_EXCLUSAO DATE NULL                      -- Soft delete
USUARIO_EXCLUSAO_NM VARCHAR(100) NULL
MOTIVO_EXCLUSAO_DS VARCHAR(500) NULL

DT_APROVACAO DATE NULL
USUARIO_APROVACAO_NM VARCHAR(100) NULL

IP_CADASTRO_NM VARCHAR(45) NULL            -- IPv4/IPv6
```

### 2.2.5 Colunas LGPD (CR439)

Para dados pessoais/sensíveis:

```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Dados identificadores (LGPD)
    CPF_NR VARCHAR(11) NOT NULL,           -- Criptografado
    NOME_COMPLETO_NM NVARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(200) NULL,
    
    -- Controle LGPD
    LGPD_CONSENTIMENTO_DT DATE NULL,
    LGPD_FINALIDADE_DS VARCHAR(500) NULL,
    LGPD_BASE_LEGAL_TP VARCHAR(50) NULL,   -- Consentimento, Contrato, Legal, etc.
    LGPD_ANONIMIZADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- Auditoria
    DT_CADASTRO DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME()
);
```

### 2.2.6 Exemplos Práticos

**✅ CORRETO:**
```sql
-- Identificadores
CONTRATO_ID BIGINT
CLIENTE_ID BIGINT
PRODUTO_ID INT

-- Datas
DATA_CADASTRO_DT DATE
DATA_VENCIMENTO_DT DATE
DATA_NASCIMENTO_DT DATE

-- Valores monetários
VALOR_CONTRATO_VL DECIMAL(15,2)
VALOR_PARCELA_VL DECIMAL(15,2)
SALDO_DEVEDOR_VL DECIMAL(15,2)

-- Nomes e descrições
CLIENTE_NM VARCHAR(200)
PRODUTO_NM VARCHAR(100)
CONTRATO_DS VARCHAR(1000)

-- Indicadores booleanos
ATIVO_IN CHAR(1)          -- S/N
DELETADO_IN CHAR(1)       -- S/N
PRINCIPAL_IN CHAR(1)      -- S/N

-- Tipos e códigos
STATUS_TP CHAR(1)         -- A=Ativo, I=Inativo, S=Suspenso
UF_CD CHAR(2)            -- SP, RJ, MG
TIPO_PESSOA_TP CHAR(1)   -- F=Física, J=Jurídica

-- Números
NUMERO_CONTRATO_NR VARCHAR(20)
NUMERO_NOTA_NR VARCHAR(15)
ANO_EXERCICIO_NR CHAR(4)

-- Percentuais
TAXA_JUROS_PC DECIMAL(7,4)
DESCONTO_PC DECIMAL(5,2)

-- Quantidades
QUANTIDADE_PARCELAS_QT INT
QUANTIDADE_DIAS_QT INT
```

**❌ INCORRETO:**
```sql
-- Sem sufixo
CONTRATO
CLIENTE
DATA_CADASTRO

-- Sufixo errado
VALOR_CONTRATO_NR     -- Deveria ser _VL
CLIENTE_DS            -- Deveria ser _NM (nome) ou manter _DS se for descrição longa
DATA_NASCIMENTO_VL    -- Deveria ser _DT

-- Minúsculas
cliente_id
valor_contrato_vl

-- camelCase
ContratoId
ValorContrato

-- Caracteres especiais
VALOR-CONTRATO_VL
CLIENTE.NOME_NM
```

### 2.2.7 Validação Pré-Validador

```
[V201] Nomenclatura de Coluna - Sufixo ausente
[V202] Nomenclatura de Coluna - Sufixo inválido (não reconhecido)
[V203] Nomenclatura de Coluna - Incompatibilidade tipo/sufixo (ex: DATE com _VL)
[V204] Nomenclatura de Coluna - Caracteres inválidos
[V205] Nomenclatura de Coluna - Colunas auditoria ausentes (DT_CADASTRO, USUARIO_CADASTRO_NM)
[V206] Nomenclatura de Coluna - Comprimento > 128 caracteres
```

---

## 2.3 Nomenclatura de Primary Keys

### 2.3.1 Padrão de Nomenclatura

**Formato:**
```
PK_[NOME_TABELA]
```

**Regras:**
- Prefixo obrigatório: `PK_`
- Nome da tabela completo (sem o prefixo do sistema, opcionalmente)
- SEMPRE MAIÚSCULAS

### 2.3.2 Exemplos

**Padrão Completo (Recomendado):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY CLUSTERED (TIPO_CONTRATO_ID)
);
```

**Padrão Simplificado (Aceitável):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    CONSTRAINT PK_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
);
```

### 2.3.3 Chaves Compostas

Para chaves primárias compostas (tabelas associativas N:N):

```sql
CREATE TABLE CON_CONTRATO_GARANTIA (
    CONTRATO_ID BIGINT NOT NULL,
    GARANTIA_ID BIGINT NOT NULL,
    DATA_VINCULO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_GARANTIA 
        PRIMARY KEY CLUSTERED (CONTRATO_ID, GARANTIA_ID)
);

CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    ORDEM_EXIBICAO_SEQ INT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA 
        PRIMARY KEY CLUSTERED (PRODUTO_ID, CATEGORIA_ID)
);
```

### 2.3.4 Clustered vs Nonclustered

**Clustered (Padrão Recomendado):**
```sql
-- PK Clustered - Ordena fisicamente os dados
CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
```

**Nonclustered (Casos Especiais):**
```sql
-- Tabelas com clustering em data (particionamento)
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    -- PK Nonclustered (clustered será em DATA_VENCIMENTO_DT para particionamento)
    CONSTRAINT PK_CON_CONTRATO_PARCELA 
        PRIMARY KEY NONCLUSTERED (PARCELA_ID)
);

-- Clustered Index separado para particionamento
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_PARCELA_DATA
    ON CON_CONTRATO_PARCELA(DATA_VENCIMENTO_DT);
```

### 2.3.5 Validação Pré-Validador

```
[V301] Primary Key - Nomeação inválida (não inicia com PK_)
[V302] Primary Key - Ausente em tabela
[V303] Primary Key - Múltiplas PKs na mesma tabela
```

---

## 2.4 Nomenclatura de Foreign Keys

### 2.4.1 Padrão de Nomenclatura

**Formato:**
```
FK_[TABELA_ORIGEM]_[TABELA_DESTINO]
```

**Regras:**
- Prefixo obrigatório: `FK_`
- Nome da tabela origem (onde está a FK)
- Nome da tabela destino (tabela referenciada)
- Opcionalmente: incluir coluna se houver múltiplas FKs para mesma tabela
- SEMPRE MAIÚSCULAS

### 2.4.2 Exemplos Básicos

```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- FK para TAB_TIPO_CONTRATO
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO 
        FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    
    -- FK para CLI_CLIENTE
    CONSTRAINT FK_CON_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- FK para CON_CONTRATO
    CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO 
        FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);
```

### 2.4.3 Múltiplas FKs para Mesma Tabela

Quando a tabela origem possui múltiplas referências para a mesma tabela destino:

```sql
CREATE TABLE CON_CONTRATO_TRANSFERENCIA (
    TRANSFERENCIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Múltiplas FKs para CON_CONTRATO
    CONTRATO_ORIGEM_ID BIGINT NOT NULL,
    CONTRATO_DESTINO_ID BIGINT NOT NULL,
    
    DATA_TRANSFERENCIA_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_TRANSFERENCIA PRIMARY KEY (TRANSFERENCIA_ID),
    
    -- Incluir nome da coluna na constraint
    CONSTRAINT FK_CON_CONTRATO_TRANSFERENCIA_CONTRATO_ORIGEM
        FOREIGN KEY (CONTRATO_ORIGEM_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID),
    
    CONSTRAINT FK_CON_CONTRATO_TRANSFERENCIA_CONTRATO_DESTINO
        FOREIGN KEY (CONTRATO_DESTINO_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

CREATE TABLE USU_USUARIO_APROVACAO (
    APROVACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    USUARIO_SOLICITANTE_ID BIGINT NOT NULL,
    USUARIO_APROVADOR_ID BIGINT NOT NULL,
    
    CONSTRAINT FK_USU_USUARIO_APROVACAO_SOLICITANTE
        FOREIGN KEY (USUARIO_SOLICITANTE_ID)
        REFERENCES USU_USUARIO(USUARIO_ID),
    
    CONSTRAINT FK_USU_USUARIO_APROVACAO_APROVADOR
        FOREIGN KEY (USUARIO_APROVADOR_ID)
        REFERENCES USU_USUARIO(USUARIO_ID)
);
```

### 2.4.4 ON DELETE e ON UPDATE

**Padrão Recomendado CAIXA:**
```sql
-- DEFAULT: NO ACTION (TE074 3.2.11)
CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
    FOREIGN KEY (CONTRATO_ID)
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
```

**Casos Especiais (requer aprovação ADI):**
```sql
-- CASCADE: Deletar parcelas ao deletar contrato (cuidado!)
CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
    FOREIGN KEY (CONTRATO_ID)
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

-- SET NULL: Permitir nulidade na FK
CONSTRAINT FK_CON_CONTRATO_GARANTIA_OPCIONAL
    FOREIGN KEY (GARANTIA_ID)
    REFERENCES GAR_GARANTIA(GARANTIA_ID)
    ON DELETE SET NULL
    ON UPDATE SET NULL
```

**Soft Delete (Preferível ao CASCADE):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    DT_EXCLUSAO DATE NULL,
    
    -- FK com NO ACTION (não permite deleção se houver parcelas)
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Trigger para soft delete
CREATE TRIGGER TRG_CON_CONTRATO_SOFT_DELETE
ON CON_CONTRATO
INSTEAD OF DELETE
AS
BEGIN
    UPDATE CON_CONTRATO
    SET DELETADO_IN = 'S',
        DT_EXCLUSAO = GETDATE(),
        USUARIO_EXCLUSAO_NM = SUSER_SNAME()
    WHERE CONTRATO_ID IN (SELECT CONTRATO_ID FROM DELETED);
END;
```

### 2.4.5 Índices Automáticos em FKs

**Regra TE074 3.2.11**: Toda FK DEVE possuir índice.

```sql
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- FK
    CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
        FOREIGN KEY (CONTRATO_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Índice obrigatório na FK (performance)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PARCELA_CONTRATO_ID
    ON CON_CONTRATO_PARCELA(CONTRATO_ID);
```

### 2.4.6 Validação Pré-Validador

```
[V401] Foreign Key - Nomeação inválida (não inicia com FK_)
[V402] Foreign Key - ON DELETE CASCADE sem aprovação ADI
[V403] Foreign Key - Tabela referenciada inexistente
[V404] Foreign Key - Tipo de dado incompatível com coluna referenciada
[V405] Foreign Key - Sem índice correspondente (performance)
```

---

## 2.5 Nomenclatura de Índices

### 2.5.1 Padrão de Nomenclatura

**Formato:**
```
IDX_[TABELA]_[COLUNAS]
```

**Regras:**
- Prefixo: `IDX_` (nonclustered) ou `CIX_` (clustered)
- Nome da tabela
- Nomes das colunas indexadas (até 3 colunas no nome)
- SEMPRE MAIÚSCULAS

### 2.5.2 Exemplos de Índices Simples

```sql
-- Índice simples (1 coluna)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_NUMERO
    ON CON_CONTRATO(NUMERO_CONTRATO_NR);

-- Índice em FK (obrigatório)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID);

-- Índice em data (consultas por período)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_DATA_CADASTRO
    ON CON_CONTRATO(DATA_CADASTRO_DT);
```

### 2.5.3 Índices Compostos

```sql
-- 2 colunas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS
    ON CON_CONTRATO(CLIENTE_ID, STATUS_TP);

-- 3 colunas (máximo no nome)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO_STATUS_DATA
    ON CON_CONTRATO(TIPO_CONTRATO_ID, STATUS_TP, DATA_CADASTRO_DT);

-- Mais de 3 colunas: usar nome genérico
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CONSULTA_GERAL
    ON CON_CONTRATO(TIPO_CONTRATO_ID, CLIENTE_ID, STATUS_TP, DATA_CADASTRO_DT, VALOR_CONTRATO_VL);
```

### 2.5.4 Covering Index (INCLUDE)

```sql
-- Covering index: colunas indexadas + colunas incluídas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_CADASTRO_DT, VALOR_CONTRATO_VL);

-- Nome mantém apenas colunas-chave (não inclui INCLUDE no nome)
```

### 2.5.5 Índices Filtrados

```sql
-- Índice filtrado (apenas registros ativos)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVO
    ON CON_CONTRATO(DATA_CADASTRO_DT)
    WHERE STATUS_TP = 'A' AND DELETADO_IN = 'N';

-- Índice para consultas específicas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PENDENTE
    ON CON_CONTRATO(CLIENTE_ID, DATA_CADASTRO_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WHERE STATUS_TP = 'P';
```

### 2.5.6 Clustered Index

```sql
-- Clustered Index não associado à PK
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    -- PK Nonclustered
    CONSTRAINT PK_CON_CONTRATO_PARCELA 
        PRIMARY KEY NONCLUSTERED (PARCELA_ID),
    
    -- Clustered Index em data (para particionamento)
    CONSTRAINT CIX_CON_CONTRATO_PARCELA_DATA_VENCIMENTO
        UNIQUE CLUSTERED (CONTRATO_ID, DATA_VENCIMENTO_DT, PARCELA_ID)
);

-- Ou explicitamente:
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_PARCELA_DATA
    ON CON_CONTRATO_PARCELA(DATA_VENCIMENTO_DT);
```

### 2.5.7 Índices Únicos

```sql
-- Unique Index (alternativa a UK_)
CREATE UNIQUE NONCLUSTERED INDEX IDX_CON_CONTRATO_NUMERO_UNIQUE
    ON CON_CONTRATO(NUMERO_CONTRATO_NR)
    WHERE DELETADO_IN = 'N';  -- Permite duplicatas em deletados

-- Ou usar constraint UK_ (ver seção 2.7)
```

### 2.5.8 Validação Pré-Validador

```
[V501] Índice - Nomeação inválida (não inicia com IDX_ ou CIX_)
[V502] Índice - FK sem índice correspondente
[V503] Índice - Duplicado/redundante
[V504] Índice - Colunas de baixa cardinalidade (ex: BIT)
```

---

## 2.6 Nomenclatura de Sequences

### 2.6.1 Padrão de Nomenclatura

**Formato:**
```
SEQ_[TABELA]_[COLUNA]
```

**Regras:**
- Prefixo obrigatório: `SEQ_`
- Nome da tabela
- Nome da coluna (geralmente _ID)
- SEMPRE MAIÚSCULAS

### 2.6.2 Quando Usar Sequences

**IDENTITY (Padrão Recomendado):**
```sql
-- Preferível para chaves primárias simples
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ...
);
```

**SEQUENCE (Casos Especiais):**
```sql
-- Sequence: Quando precisa compartilhar sequência entre tabelas
CREATE SEQUENCE SEQ_CON_CONTRATO_NUMERO
    AS BIGINT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 50
    NO CYCLE;

CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT NOT NULL 
        DEFAULT NEXT VALUE FOR SEQ_CON_CONTRATO_NUMERO,
    ...
);

-- Sequence: Quando precisa obter próximo valor antes do INSERT
DECLARE @NovoNumero BIGINT = NEXT VALUE FOR SEQ_CON_CONTRATO_NUMERO;
INSERT INTO CON_CONTRATO (...) VALUES (@NovoNumero, ...);
```

### 2.6.3 Exemplos Práticos

```sql
-- Sequence para numeração de documentos
CREATE SEQUENCE SEQ_CON_CONTRATO_NUMERO_DOCUMENTO
    AS INT
    START WITH 1
    INCREMENT BY 1
    CACHE 100
    NO CYCLE;

-- Sequence para controle de versão
CREATE SEQUENCE SEQ_CON_CONTRATO_VERSAO
    AS INT
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NO CYCLE;

-- Sequence compartilhada entre múltiplas tabelas (UUID sequencial)
CREATE SEQUENCE SEQ_GLOBAL_TRANSACAO_ID
    AS BIGINT
    START WITH 1000000
    INCREMENT BY 1
    CACHE 1000
    NO CYCLE;
```

### 2.6.4 Validação Pré-Validador

```
[V601] Sequence - Nomeação inválida (não inicia com SEQ_)
[V602] Sequence - CYCLE habilitado sem justificativa
[V603] Sequence - Tipo de dado incompatível (ex: TINYINT para alto volume)
```

---

## 2.7 Nomenclatura de Constraints

### 2.7.1 Check Constraints

**Formato:**
```
CK_[TABELA]_[COLUNA]_[DESCRICAO]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    DATA_CADASTRO_DT DATE NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Check: Status válido
    CONSTRAINT CK_CON_CONTRATO_STATUS_TP_VALIDO
        CHECK (STATUS_TP IN ('A', 'I', 'P', 'C', 'S')),
    
    -- Check: Valor positivo
    CONSTRAINT CK_CON_CONTRATO_VALOR_VL_POSITIVO
        CHECK (VALOR_CONTRATO_VL > 0),
    
    -- Check: Quantidade parcelas entre 1 e 360
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_QT_RANGE
        CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360),
    
    -- Check: Data vencimento posterior à cadastro
    CONSTRAINT CK_CON_CONTRATO_DATAS_ORDEM
        CHECK (DATA_VENCIMENTO_DT >= DATA_CADASTRO_DT)
);

-- Indicador booleano S/N
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL,
    PRINCIPAL_IN CHAR(1) NOT NULL,
    
    CONSTRAINT CK_CLI_CLIENTE_ATIVO_IN_SN
        CHECK (ATIVO_IN IN ('S', 'N')),
    
    CONSTRAINT CK_CLI_CLIENTE_PRINCIPAL_IN_SN
        CHECK (PRINCIPAL_IN IN ('S', 'N'))
);
```

### 2.7.2 Unique Constraints

**Formato:**
```
UK_[TABELA]_[COLUNAS]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    CPF_CLIENTE_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Unique: Número de contrato único
    CONSTRAINT UK_CON_CONTRATO_NUMERO_NR
        UNIQUE NONCLUSTERED (NUMERO_CONTRATO_NR),
    
    -- Unique composto: Cliente + Data + Tipo (um contrato por tipo/dia/cliente)
    CONSTRAINT UK_CON_CONTRATO_CLIENTE_DATA_TIPO
        UNIQUE NONCLUSTERED (CPF_CLIENTE_NR, DATA_CADASTRO_DT, TIPO_CONTRATO_ID)
);

-- Unique filtrado (apenas ativos)
CREATE TABLE USU_USUARIO (
    USUARIO_ID BIGINT NOT NULL,
    EMAIL_NM VARCHAR(200) NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT UK_USU_USUARIO_EMAIL_ATIVO
        UNIQUE NONCLUSTERED (EMAIL_NM)
        WHERE DELETADO_IN = 'N'
);
```

### 2.7.3 Default Constraints

**Formato:**
```
DF_[TABELA]_[COLUNA]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL,
    DT_CADASTRO DATE NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Defaults obrigatórios de auditoria
    CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO 
        DEFAULT GETDATE() FOR DT_CADASTRO,
    
    CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO 
        DEFAULT SUSER_SNAME() FOR USUARIO_CADASTRO_NM,
    
    -- Defaults de status
    CONSTRAINT DF_CON_CONTRATO_STATUS_TP 
        DEFAULT 'P' FOR STATUS_TP,  -- P=Pendente
    
    CONSTRAINT DF_CON_CONTRATO_ATIVO_IN 
        DEFAULT 'S' FOR ATIVO_IN,
    
    CONSTRAINT DF_CON_CONTRATO_DELETADO_IN 
        DEFAULT 'N' FOR DELETADO_IN
);

-- Default com função
CREATE TABLE LOG_ACESSO (
    ACESSO_ID BIGINT IDENTITY(1,1) NOT NULL,
    IP_ORIGEM_NM VARCHAR(45) NULL,
    GUID_SESSAO_NM UNIQUEIDENTIFIER NOT NULL,
    TIMESTAMP_ACESSO_TS DATETIME2(7) NOT NULL,
    
    CONSTRAINT DF_LOG_ACESSO_GUID_SESSAO 
        DEFAULT NEWID() FOR GUID_SESSAO_NM,
    
    CONSTRAINT DF_LOG_ACESSO_TIMESTAMP 
        DEFAULT SYSDATETIME() FOR TIMESTAMP_ACESSO_TS
);
```

### 2.7.4 Resumo de Prefixos

| Tipo Constraint | Prefixo | Exemplo |
|-----------------|---------|---------|
| Primary Key | PK_ | PK_CON_CONTRATO |
| Foreign Key | FK_ | FK_CON_CONTRATO_CLIENTE |
| Check | CK_ | CK_CON_CONTRATO_STATUS_VALIDO |
| Unique | UK_ | UK_CON_CONTRATO_NUMERO |
| Default | DF_ | DF_CON_CONTRATO_DT_CADASTRO |
| Index (Nonclustered) | IDX_ | IDX_CON_CONTRATO_CLIENTE_ID |
| Index (Clustered) | CIX_ | CIX_CON_CONTRATO_PARCELA_DATA |

### 2.7.5 Validação Pré-Validador

```
[V701] Constraint - Nomeação inválida (prefixo incorreto)
[V702] Check Constraint - Lógica de negócio complexa (mover para aplicação)
[V703] Default Constraint - Valor hardcoded para data (usar GETDATE())
[V704] Unique Constraint - Sem considerar soft delete (DELETADO_IN)
```

---

## 2.8 Descrições Obrigatórias (MS_Description)

### 2.8.1 Regras Gerais (TE074 3.2.2)

Toda tabela e coluna DEVE possuir descrição em português:

**Requisitos Obrigatórios:**
- **Língua portuguesa** (TE074 3.2.2.1)
- **Concisa e clara** (sem ambiguidade)
- **Contexto de negócio** (não repetir nome técnico)
- **Evitar jargões técnicos** (CAMPO, COLUNA, TABELA, ENTIDADE)
- **Incluir exemplos** quando relevante (TE074 3.2.2.5)
- **Finalidade/objetivo** (TE074 3.2.2.6)
- **Exceções e restrições** (TE074 3.2.2.4.1)

### 2.8.2 Adicionando Descrições via SQL

```sql
-- Descrição de Tabela
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Armazena os contratos de financiamento habitacional celebrados entre a CAIXA e os clientes mutuários. Inclui contratos ativos, suspensos, cancelados e quitados. Utilizado pelos sistemas SIRIC, SAAT e SCWEB para controle da carteira de crédito imobiliário.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO';

-- Descrição de Coluna
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Identificador único sequencial do contrato. Chave primária surrogate gerada automaticamente via IDENTITY. Exemplo: 12345678.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'CONTRATO_ID';

EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Número do contrato no formato SSSS-NNNNNNNN-AA (Sistema-Sequencial-DV). Deve ser único e imutável após cadastro. Exemplo: 1234-00123456-78. Gerado pela aplicação conforme TE183.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'NUMERO_CONTRATO_NR';

EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Status atual do contrato. Valores válidos: A=Ativo (em dia), I=Inadimplente (>30 dias atraso), P=Pendente (aguardando documentação), C=Cancelado (desistência/recusa), Q=Quitado (saldo zero), S=Suspenso (decisão judicial). Gerenciado por workflow de negócio.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'STATUS_TP';
```

### 2.8.3 Exemplos Práticos

**✅ CORRETO (Boas Descrições):**
```sql
-- Tabela
MS_Description: 
"Armazena os pagamentos de parcelas recebidos dos clientes mutuários via boleto bancário, 
débito automático ou correspondente bancário. Utilizada para conciliação financeira, 
baixa de parcelas e controle de arrecadação. Processada pelo batch ARR_PROCESSAMENTO_LOTE 
diariamente às 22h. Retém dados por 7 anos (TE074 ciclo de vida fiscal)."

-- Coluna VALOR_PARCELA_VL
MS_Description:
"Valor nominal da parcela no momento do vencimento, em reais (R$). Inclui amortização + 
juros + seguros + taxas. Não sofre atualização monetária após geração. Exemplo: 1.234,56. 
Calculado pela fórmula Price (Sistema SAAT) conforme plano de amortização."

-- Coluna STATUS_TP
MS_Description:
"Status do pagamento. Valores: P=Pago (confirmado pelo banco), A=Aguardando (compensação 
em andamento), C=Cancelado (reversão por estorno), R=Recusado (débito automático negado), 
E=Em análise (divergência de valor). Atualizado via integração FEBRABAN 240 posições."

-- Coluna CPF_NR (LGPD)
MS_Description:
"CPF do cliente titular do contrato, apenas números (11 dígitos). Dado pessoal conforme 
LGPD (CR439). Armazenado com criptografia AES-256. Utilizado para identificação, validação 
cadastral e consulta SERASA/SPC. Exemplo: 12345678901 (sem formatação). Base legal: 
execução de contrato (Art. 7º, V LGPD)."
```

**❌ INCORRETO (Descrições Ruins):**
```sql
-- Apenas repete o nome
MS_Description: "Contrato"                      -- ❌ Inválido
MS_Description: "ID do contrato"                -- ❌ Inválido
MS_Description: "Campo contendo o valor"        -- ❌ Inválido

-- Tautologia
MS_Description: "Tabela de contratos que armazena os contratos" -- ❌ Redundante

-- Jargão técnico sem contexto
MS_Description: "ENTIDADE para armazenamento de registros transacionais" -- ❌ Jargão

-- Sem contexto de negócio
MS_Description: "Coluna do tipo VARCHAR(20)"   -- ❌ Apenas tipo técnico

-- Inglês
MS_Description: "Contract identification number" -- ❌ Deve ser português
```

### 2.8.4 Template de Descrições

**Template para Tabela:**
```
Armazena [FINALIDADE NEGOCIAL]. 
Utilizada por [SISTEMAS/PROCESSOS]. 
[REGRAS ESPECIAIS/RETENÇÃO]. 
[OBSERVAÇÕES RELEVANTES].
```

**Template para Coluna:**
```
[DEFINIÇÃO CLARA]. 
[FORMATO/DOMÍNIO]. 
Exemplo: [VALOR EXEMPLO]. 
[REGRA ESPECIAL/OBSERVAÇÃO].
```

### 2.8.5 Validação Pré-Validador

```
[V801] Descrição - Ausente em tabela
[V802] Descrição - Ausente em coluna
[V803] Descrição - Apenas repete nome (tautologia)
[V804] Descrição - Contém jargão técnico proibido (CAMPO, COLUNA, ENTIDADE)
[V805] Descrição - Idioma estrangeiro detectado
[V806] Descrição - Comprimento < 20 caracteres (muito curta)
[V807] Descrição - LGPD: Coluna com dados pessoais sem indicação de base legal
```

---

## 2.9 Checklist de Nomenclatura

### 2.9.1 Tabelas

- [ ] Nome segue padrão `[PREFIXO]_[NOME]`
- [ ] Prefixo possui exatamente 3 letras maiúsculas
- [ ] Apenas caracteres válidos: A-Z, 0-9, `_`
- [ ] Case MAIÚSCULAS obrigatório
- [ ] Comprimento ≤ 128 caracteres
- [ ] Tipo de tabela identificado (transacional, apoio, histórico, log, stage)
- [ ] MS_Description presente e completa (≥ 50 caracteres)
- [ ] Classificação OR016 definida (via PowerDesigner)
- [ ] Primary Key nomeada como `PK_[TABELA]`
- [ ] Colunas auditoria presentes (DT_CADASTRO, USUARIO_CADASTRO_NM)

### 2.9.2 Colunas

- [ ] Nome segue padrão `[NOME]_[SUFIXO]`
- [ ] Sufixo obrigatório presente (_ID, _DT, _VL, _NM, _DS, _IN, _TP, _NR, _PC, _QT)
- [ ] Sufixo compatível com tipo de dado SQL Server
- [ ] Case MAIÚSCULAS obrigatório
- [ ] Comprimento ≤ 128 caracteres
- [ ] MS_Description presente (≥ 20 caracteres, contexto de negócio)
- [ ] Dados pessoais/LGPD: Base legal documentada
- [ ] Defaults apropriados (DT_CADASTRO=GETDATE(), USUARIO=SUSER_SNAME())

### 2.9.3 Constraints

- [ ] Primary Key: `PK_[TABELA]`
- [ ] Foreign Key: `FK_[ORIGEM]_[DESTINO]`
- [ ] Check: `CK_[TABELA]_[COLUNA]_[DESCRICAO]`
- [ ] Unique: `UK_[TABELA]_[COLUNAS]`
- [ ] Default: `DF_[TABELA]_[COLUNA]`
- [ ] Todas as FKs possuem índice correspondente
- [ ] ON DELETE/UPDATE = NO ACTION (padrão, salvo aprovação ADI)
- [ ] Check constraints validam domínios (não regras de negócio complexas)

### 2.9.4 Índices

- [ ] Nonclustered: `IDX_[TABELA]_[COLUNAS]`
- [ ] Clustered: `CIX_[TABELA]_[COLUNAS]`
- [ ] Todas as FKs possuem índice
- [ ] Índices compostos ordenados por cardinalidade (alta → baixa)
- [ ] Covering indexes usam INCLUDE para colunas não-chave
- [ ] Índices filtrados documentados (WHERE clause)
- [ ] Sem índices redundantes/duplicados

### 2.9.5 Validação Pré-Validador

| Categoria | Qtd Regras | Criticidade |
|-----------|-----------|-------------|
| Nomenclatura Tabelas | 40+ | CRÍTICO |
| Nomenclatura Colunas | 15+ | CRÍTICO |
| Descrições | 15+ | CRÍTICO |
| Primary Keys | 20+ | CRÍTICO |
| Foreign Keys | 20+ | CRÍTICO |
| Constraints | 10+ | ALERTA |
| Índices | 10+ | ALERTA |
| OR016 Classificação | 5+ | CRÍTICO |

**Critério Aprovação ADI:**
- 0 CRÍTICAS obrigatório
- ≤ 5 ALERTAS aceitável
- INFORMAÇÕES não bloqueiam

---

**📊 Status da PARTE 2 (Nomenclatura e Padronização)**: ✅ **COMPLETA**

**Resumo PARTE 2**:
- ✅ 2.1: Nomenclatura de Tabelas (prefixos, regex, validação)
- ✅ 2.2: Nomenclatura de Colunas (10 sufixos, auditoria, LGPD)
- ✅ 2.3: Primary Keys (PK_, clustered/nonclustered)
- ✅ 2.4: Foreign Keys (FK_, índices, ON DELETE/UPDATE)
- ✅ 2.5: Índices (IDX_/CIX_, covering, filtrados)
- ✅ 2.6: Sequences (SEQ_, IDENTITY vs SEQUENCE)
- ✅ 2.7: Constraints (CK_/UK_/DF_)
- ✅ 2.8: Descrições MS_Description (TE074 3.2.2)
- ✅ 2.9: Checklist de Nomenclatura

**Total**: 8 seções + checklist, ~20KB, tempo de leitura estimado: ~15-20 minutos

**Referências Cruzadas:**
- [1.14 Pré-Validador](#114-pré-validador): Validações automáticas e relatórios
- [1.12 Workflow de Aprovação](#112-workflow-de-aprovação): Submissão para ADI/ABD

---

# PARTE 3: ESTRUTURAÇÃO DE TABELAS E RELACIONAMENTOS

> **Referências Normativas**: TE074 3.2.4-3.2.11, Melhores Práticas em Modelagem

---

## SUB-PARTE 3.1: Tipos de Tabelas e Normalização (1 de 3)

---

## 3.1 Tipos de Tabelas

### 3.1.1 Visão Geral

O modelo de dados CAIXA classifica tabelas em **6 tipos principais**, cada um com propósito específico e características de uso:

| Tipo | Prefixo/Sufixo | Finalidade | Volumetria | Normalização |
|------|----------------|------------|------------|--------------|
| **Transacional** | POI_, SIS_, CON_ | Dados operacionais do negócio | Alta (milhões) | 3NF obrigatória |
| **Apoio/Domínio** | TAB_, DOM_ | Referências, listas de valores | Baixa (<10K) | 3NF |
| **Histórico** | _HIST | Arquivamento temporal | Muito alta | 3NF, particionada |
| **Auxiliar** | _AUX | Suporte transacional temporário | Variável | Relaxada (performance) |
| **Log/Auditoria** | _LOG | Rastreamento de operações | Alta | Desnormalizada |
| **Stage** | STG_ | Área de preparação ETL | Alta (transitória) | Não normalizada |

### 3.1.2 Tabelas Transacionais

**Características (TE074 3.2.4)**:
- Armazenam dados operacionais do negócio (contratos, pagamentos, clientes)
- **Volumetria alta**: Milhões a bilhões de registros
- **Normalização 3NF obrigatória**
- **Auditoria obrigatória**: DT_CADASTRO, USUARIO_CADASTRO_NM
- **Chave primária surrogate**: BIGINT IDENTITY
- **Índices otimizados**: Foreign keys, colunas de busca frequente
- **Particionamento**: Quando volumetria > 100M linhas/ano (TE074 3.2.8.3)
- **Compactação**: PAGE ou ROW (TE074 3.2.9.1)

**Exemplos:**
```sql
-- Sistema de Contratos (CON_)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL, -- A=Ativo, C=Cancelado, Q=Quitado
    
    -- Auditoria obrigatória
    DT_CADASTRO DATE NOT NULL CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    DT_ATUALIZACAO DATE NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Soft delete
    DELETADO_IN CHAR(1) NOT NULL CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    DT_EXCLUSAO DATE NULL,
    
    -- Constraints
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS_VALIDO CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO CHECK (VALOR_CONTRATO_VL > 0),
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_RANGE CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360)
) WITH (DATA_COMPRESSION = PAGE);

-- Índices obrigatórios em FKs
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO_CONTRATO_ID
    ON CON_CONTRATO(TIPO_CONTRATO_ID);

CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- Índice para consultas por status
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_STATUS_DATA
    ON CON_CONTRATO(STATUS_CONTRATO_TP, DATA_ASSINATURA_DT)
    WHERE DELETADO_IN = 'N';

-- Descrições obrigatórias
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Armazena os contratos de financiamento habitacional celebrados entre a CAIXA e clientes mutuários. Inclui contratos ativos, cancelados, quitados e suspensos. Utilizado pelos sistemas SIRIC, SAAT e SCWEB para controle da carteira de crédito imobiliário. Volumetria: 50M contratos, crescimento 2M/ano. Retenção: 30 anos após quitação (normas BACEN).',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO';
```

### 3.1.3 Tabelas de Apoio/Domínio

**Características**:
- Armazenam **valores de referência** (listas de tipos, categorias, UFs, municípios)
- **Volumetria baixa**: Dezenas a milhares de registros
- **Baixa volatilidade**: Dados raramente alterados
- **Caching recomendado**: Cache de aplicação (Redis, Memcached)
- **Prefixos**: TAB_ (tabelas de apoio) ou DOM_ (domínios)
- **Normalização 3NF**

**Exemplos:**
```sql
-- Tabela de Tipos de Contrato
CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,      -- Código mnemônico (SFH, PRO-URB, SBPE)
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,     -- Nome completo
    TIPO_CONTRATO_DS VARCHAR(500) NULL,         -- Descrição detalhada
    TAXA_JUROS_PADRAO_PC DECIMAL(7,4) NULL,     -- Taxa padrão do tipo
    PRAZO_MAXIMO_MESES_QT INT NULL,             -- Prazo máximo em meses
    ATIVO_IN CHAR(1) NOT NULL,                  -- S/N
    ORDEM_EXIBICAO_SEQ INT NOT NULL,            -- Ordenação para UIs
    
    -- Auditoria
    DT_CADASTRO DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME(),
    
    -- Constraints
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY CLUSTERED (TIPO_CONTRATO_ID),
    CONSTRAINT UK_TAB_TIPO_CONTRATO_CD UNIQUE NONCLUSTERED (TIPO_CONTRATO_CD),
    CONSTRAINT CK_TAB_TIPO_CONTRATO_ATIVO CHECK (ATIVO_IN IN ('S', 'N'))
);

-- Tabela de UFs (domínio fixo)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,             -- SP, RJ, MG
    UF_NM VARCHAR(50) NOT NULL,         -- São Paulo, Rio de Janeiro
    REGIAO_TP VARCHAR(20) NOT NULL,     -- Norte, Nordeste, Sul, Sudeste, Centro-Oeste
    CODIGO_IBGE_NR CHAR(2) NOT NULL,    -- Código IBGE
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY CLUSTERED (UF_CD),
    CONSTRAINT UK_DOM_UF_CODIGO_IBGE UNIQUE (CODIGO_IBGE_NR)
);

-- Carga inicial (dados fixos)
INSERT INTO DOM_UF (UF_CD, UF_NM, REGIAO_TP, CODIGO_IBGE_NR) VALUES
('AC', 'Acre', 'Norte', '12'),
('AL', 'Alagoas', 'Nordeste', '27'),
('SP', 'São Paulo', 'Sudeste', '35'),
-- ... demais UFs
('RS', 'Rio Grande do Sul', 'Sul', '43');
```

### 3.1.4 Tabelas Históricas

**Características**:
- Armazenam **versões anteriores** de registros transacionais
- **Sufixo obrigatório**: _HIST
- **Volumetria muito alta**: 5-10x maior que tabela transacional
- **Particionamento obrigatório**: Por data (TE074 3.2.8.6)
- **Compactação ROW/PAGE**: Reduzir espaço em disco
- **Arquivamento**: Dados >5 anos movidos para storage secundário
- **Consultas raras**: Otimizar para escrita, não leitura

**Estratégias de Histórico:**

**1. Trigger-based History (SQL Server tradicional):**
```sql
-- Tabela histórico
CREATE TABLE CON_CONTRATO_HIST (
    CONTRATO_HIST_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Cópia de todas as colunas da tabela original
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Metadados de auditoria
    DATA_HISTORICO_DT DATETIME2(3) NOT NULL,
    USUARIO_HISTORICO_NM VARCHAR(100) NOT NULL,
    OPERACAO_TP CHAR(1) NOT NULL,           -- I=INSERT, U=UPDATE, D=DELETE
    IP_ORIGEM_NM VARCHAR(45) NULL,
    APLICACAO_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_CON_CONTRATO_HIST PRIMARY KEY NONCLUSTERED (CONTRATO_HIST_ID),
    CONSTRAINT CK_CON_CONTRATO_HIST_OPERACAO CHECK (OPERACAO_TP IN ('I', 'U', 'D'))
);

-- Clustered index por data (particionamento)
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_HIST_DATA
    ON CON_CONTRATO_HIST(DATA_HISTORICO_DT);

-- Índice para buscar histórico de um contrato específico
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_HIST_CONTRATO_ID
    ON CON_CONTRATO_HIST(CONTRATO_ID, DATA_HISTORICO_DT DESC);

-- Trigger de auditoria (UPDATE e DELETE)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA
ON CON_CONTRATO
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Registrar operação de UPDATE
    IF EXISTS (SELECT * FROM INSERTED)
    BEGIN
        INSERT INTO CON_CONTRATO_HIST (
            CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID,
            DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP,
            DATA_HISTORICO_DT, USUARIO_HISTORICO_NM, OPERACAO_TP
        )
        SELECT 
            d.CONTRATO_ID, d.NUMERO_CONTRATO_NR, d.TIPO_CONTRATO_ID, d.CLIENTE_ID,
            d.DATA_ASSINATURA_DT, d.VALOR_CONTRATO_VL, d.STATUS_CONTRATO_TP,
            SYSDATETIME(), SUSER_SNAME(), 'U'
        FROM DELETED d;
    END
    
    -- Registrar operação de DELETE
    ELSE
    BEGIN
        INSERT INTO CON_CONTRATO_HIST (
            CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID,
            DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP,
            DATA_HISTORICO_DT, USUARIO_HISTORICO_NM, OPERACAO_TP
        )
        SELECT 
            d.CONTRATO_ID, d.NUMERO_CONTRATO_NR, d.TIPO_CONTRATO_ID, d.CLIENTE_ID,
            d.DATA_ASSINATURA_DT, d.VALOR_CONTRATO_VL, d.STATUS_CONTRATO_TP,
            SYSDATETIME(), SUSER_SNAME(), 'D'
        FROM DELETED d;
    END
END;
```

**2. Temporal Tables (SQL Server 2016+):**
```sql
-- Tabela principal com suporte temporal
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Colunas temporais (gerenciadas automaticamente)
    VALID_FROM DATETIME2(3) GENERATED ALWAYS AS ROW START NOT NULL,
    VALID_TO DATETIME2(3) GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (VALID_FROM, VALID_TO),
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.CON_CONTRATO_HIST));

-- Consultar histórico automaticamente
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME AS OF '2025-01-01 10:00:00'
WHERE CONTRATO_ID = 12345;

-- Consultar todas as versões de um registro
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME ALL
WHERE CONTRATO_ID = 12345
ORDER BY VALID_FROM DESC;
```

### 3.1.5 Tabelas Auxiliares

**Características**:
- Suporte a **processamento transacional** (temporárias, caches, locks)
- **Sufixo**: _AUX
- **Ciclo de vida curto**: Dados removidos após processamento
- **Normalização relaxada**: Performance prioritária
- **Sem auditoria completa**: Apenas metadados essenciais

**Exemplos:**
```sql
-- Tabela auxiliar para processamento de lotes
CREATE TABLE CON_CONTRATO_PROCESSAMENTO_AUX (
    LOTE_ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    CONTRATO_ID BIGINT NOT NULL,
    STATUS_PROCESSAMENTO_TP VARCHAR(20) NOT NULL, -- PENDENTE, PROCESSANDO, SUCESSO, ERRO
    DATA_INCLUSAO_DT DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    DATA_PROCESSAMENTO_DT DATETIME2(3) NULL,
    ERRO_DS VARCHAR(MAX) NULL,
    TENTATIVAS_QT INT NOT NULL DEFAULT 0,
    
    CONSTRAINT PK_CON_CONTRATO_PROCESSAMENTO_AUX PRIMARY KEY (LOTE_ID, CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_PROCESSAMENTO_AUX_CONTRATO FOREIGN KEY (CONTRATO_ID) REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Índice para consultar por status
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PROCESSAMENTO_AUX_STATUS
    ON CON_CONTRATO_PROCESSAMENTO_AUX(STATUS_PROCESSAMENTO_TP, DATA_INCLUSAO_DT);

-- Limpeza automática (job diário)
DELETE FROM CON_CONTRATO_PROCESSAMENTO_AUX
WHERE DATA_PROCESSAMENTO_DT < DATEADD(DAY, -7, GETDATE())
  AND STATUS_PROCESSAMENTO_TP = 'SUCESSO';
```

### 3.1.6 Tabelas de Log/Auditoria

**Características**:
- Rastreamento de **operações críticas** (login, alterações sensíveis)
- **Sufixo**: _LOG
- **Alto volume de escritas**: Inserções massivas
- **Consultas analíticas**: Investigações, compliance
- **Retenção longa**: 5-10 anos (LGPD, normas BACEN)
- **Particionamento por data**: Obrigatório
- **Compactação**: Reduzir espaço

**Exemplos:**
```sql
-- Log de acesso ao sistema
CREATE TABLE USU_LOGIN_LOG (
    LOGIN_LOG_ID BIGINT IDENTITY(1,1) NOT NULL,
    USUARIO_ID BIGINT NULL,                     -- NULL se login falhou
    LOGIN_NM VARCHAR(100) NOT NULL,
    DATA_HORA_TENTATIVA_DT DATETIME2(3) NOT NULL,
    SUCESSO_IN CHAR(1) NOT NULL,                -- S/N
    IP_ORIGEM_NM VARCHAR(45) NOT NULL,
    NAVEGADOR_DS VARCHAR(200) NULL,
    SISTEMA_OPERACIONAL_DS VARCHAR(100) NULL,
    MOTIVO_FALHA_DS VARCHAR(500) NULL,
    
    CONSTRAINT PK_USU_LOGIN_LOG PRIMARY KEY NONCLUSTERED (LOGIN_LOG_ID),
    CONSTRAINT CK_USU_LOGIN_LOG_SUCESSO CHECK (SUCESSO_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);

-- Clustered index por data (particionamento)
CREATE CLUSTERED INDEX CIX_USU_LOGIN_LOG_DATA
    ON USU_LOGIN_LOG(DATA_HORA_TENTATIVA_DT);

-- Log de alterações em dados sensíveis (LGPD)
CREATE TABLE CLI_CLIENTE_ALTERACAO_LOG (
    ALTERACAO_LOG_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    CAMPO_ALTERADO_NM VARCHAR(100) NOT NULL,    -- CPF_NR, EMAIL_NM, etc.
    VALOR_ANTERIOR_DS VARCHAR(MAX) NULL,        -- Criptografado
    VALOR_NOVO_DS VARCHAR(MAX) NULL,            -- Criptografado
    DATA_ALTERACAO_DT DATETIME2(3) NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) NOT NULL,
    IP_ORIGEM_NM VARCHAR(45) NULL,
    JUSTIFICATIVA_DS VARCHAR(500) NULL,         -- Obrigatória para dados LGPD
    
    CONSTRAINT PK_CLI_CLIENTE_ALTERACAO_LOG PRIMARY KEY NONCLUSTERED (ALTERACAO_LOG_ID)
) WITH (DATA_COMPRESSION = PAGE);

CREATE CLUSTERED INDEX CIX_CLI_CLIENTE_ALTERACAO_LOG_DATA
    ON CLI_CLIENTE_ALTERACAO_LOG(DATA_ALTERACAO_DT);

CREATE NONCLUSTERED INDEX IDX_CLI_CLIENTE_ALTERACAO_LOG_CLIENTE_ID
    ON CLI_CLIENTE_ALTERACAO_LOG(CLIENTE_ID, DATA_ALTERACAO_DT DESC);
```

### 3.1.7 Tabelas de Stage (ETL)

**Características**:
- **Área de preparação** para processos ETL (Extract, Transform, Load)
- **Prefixo**: STG_
- **Estrutura espelhada**: Mesma estrutura da tabela destino (geralmente)
- **Sem constraints**: Performance de carga
- **Truncate + Insert**: Padrão de carga full
- **Ciclo de vida**: Dados descartados após carga bem-sucedida

**Exemplos:**
```sql
-- Stage para importação de contratos
CREATE TABLE STG_CONTRATO_IMPORTACAO (
    CONTRATO_IMPORTACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Dados do arquivo de origem (formato texto)
    NUMERO_CONTRATO_TEXTO VARCHAR(50) NULL,
    TIPO_CONTRATO_CODIGO VARCHAR(20) NULL,
    CPF_CLIENTE_TEXTO VARCHAR(20) NULL,
    DATA_ASSINATURA_TEXTO VARCHAR(20) NULL,
    VALOR_CONTRATO_TEXTO VARCHAR(30) NULL,
    PARCELAS_TEXTO VARCHAR(10) NULL,
    
    -- Metadados de controle
    LOTE_ID UNIQUEIDENTIFIER NOT NULL,
    LINHA_ARQUIVO_NR INT NOT NULL,
    DATA_CARGA_DT DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    
    -- Validação e transformação
    VALIDADO_IN CHAR(1) NULL,                   -- S/N/NULL (pendente)
    ERRO_VALIDACAO_DS VARCHAR(MAX) NULL,
    PROCESSADO_IN CHAR(1) NULL,                 -- S/N/NULL
    CONTRATO_ID_DESTINO BIGINT NULL,            -- PK gerada após inserção
    
    CONSTRAINT PK_STG_CONTRATO_IMPORTACAO PRIMARY KEY (CONTRATO_IMPORTACAO_ID)
);

-- Índice para processamento sequencial
CREATE NONCLUSTERED INDEX IDX_STG_CONTRATO_IMPORTACAO_LOTE
    ON STG_CONTRATO_IMPORTACAO(LOTE_ID, VALIDADO_IN, PROCESSADO_IN);

-- Procedure de validação
CREATE PROCEDURE SP_VALIDAR_STG_CONTRATO
    @LOTE_ID UNIQUEIDENTIFIER
AS
BEGIN
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'N',
        ERRO_VALIDACAO_DS = 'Número de contrato inválido'
    WHERE LOTE_ID = @LOTE_ID
      AND (NUMERO_CONTRATO_TEXTO IS NULL OR LEN(NUMERO_CONTRATO_TEXTO) < 10);
    
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'N',
        ERRO_VALIDACAO_DS = 'CPF inválido'
    WHERE LOTE_ID = @LOTE_ID
      AND LEN(CPF_CLIENTE_TEXTO) <> 11;
    
    -- Marcar válidos
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'S'
    WHERE LOTE_ID = @LOTE_ID
      AND ERRO_VALIDACAO_DS IS NULL;
END;

-- Procedure de carga (após validação)
CREATE PROCEDURE SP_PROCESSAR_STG_CONTRATO
    @LOTE_ID UNIQUEIDENTIFIER
AS
BEGIN
    BEGIN TRANSACTION;
    
    -- Inserir contratos válidos
    INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID, ...)
    SELECT 
        stg.NUMERO_CONTRATO_TEXTO,
        tc.TIPO_CONTRATO_ID,
        cli.CLIENTE_ID,
        ...
    FROM STG_CONTRATO_IMPORTACAO stg
    INNER JOIN TAB_TIPO_CONTRATO tc ON tc.TIPO_CONTRATO_CD = stg.TIPO_CONTRATO_CODIGO
    INNER JOIN CLI_CLIENTE cli ON cli.CPF_NR = stg.CPF_CLIENTE_TEXTO
    WHERE stg.LOTE_ID = @LOTE_ID
      AND stg.VALIDADO_IN = 'S'
      AND stg.PROCESSADO_IN IS NULL;
    
    -- Atualizar stage com IDs gerados
    UPDATE stg
    SET stg.PROCESSADO_IN = 'S',
        stg.CONTRATO_ID_DESTINO = con.CONTRATO_ID
    FROM STG_CONTRATO_IMPORTACAO stg
    INNER JOIN CON_CONTRATO con ON con.NUMERO_CONTRATO_NR = stg.NUMERO_CONTRATO_TEXTO
    WHERE stg.LOTE_ID = @LOTE_ID
      AND stg.VALIDADO_IN = 'S';
    
    COMMIT TRANSACTION;
END;
```

---

## 3.2 Normalização

### 3.2.1 Formas Normais Obrigatórias (TE074 3.2.3.9)

**Regra CAIXA**: Toda tabela transacional e de apoio DEVE estar em **Terceira Forma Normal (3NF)**.

**Objetivos da Normalização**:
1. **Eliminar redundância**: Cada fato armazenado uma única vez
2. **Garantir integridade**: Atualizações consistentes
3. **Facilitar manutenção**: Mudanças localizadas
4. **Reduzir anomalias**: Inserção, atualização, exclusão

### 3.2.2 Primeira Forma Normal (1NF)

**Definição**: Todos os atributos contêm **valores atômicos** (indivisíveis).

**Violação 1NF - Múltiplos valores em uma coluna:**
```sql
-- ❌ INCORRETO: Lista de telefones em uma única coluna
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    TELEFONES_DS VARCHAR(500) NULL  -- "11-98765-4321, 11-3456-7890, 11-2345-6789"
);
```

**Solução 1NF - Tabela separada para telefones:**
```sql
-- ✅ CORRETO: Cada telefone em uma linha
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

CREATE TABLE CLI_CLIENTE_TELEFONE (
    CLIENTE_TELEFONE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    TELEFONE_NR VARCHAR(15) NOT NULL,
    TIPO_TELEFONE_TP VARCHAR(20) NOT NULL,  -- RESIDENCIAL, COMERCIAL, CELULAR
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT PK_CLI_CLIENTE_TELEFONE PRIMARY KEY (CLIENTE_TELEFONE_ID),
    CONSTRAINT FK_CLI_CLIENTE_TELEFONE_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CLI_CLIENTE_TELEFONE_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);
```

**Violação 1NF - Grupos repetitivos:**
```sql
-- ❌ INCORRETO: Colunas repetitivas (telefone1, telefone2, telefone3)
CREATE TABLE CLI_CLIENTE_ERRADO2 (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    TELEFONE1_NR VARCHAR(15) NULL,
    TELEFONE2_NR VARCHAR(15) NULL,
    TELEFONE3_NR VARCHAR(15) NULL
);
```

### 3.2.3 Segunda Forma Normal (2NF)

**Definição**: Estar em 1NF + Todos os atributos não-chave dependem **totalmente** da chave primária (não apenas de parte dela).

**Aplicável apenas a tabelas com chave primária composta.**

**Violação 2NF - Dependência parcial:**
```sql
-- ❌ INCORRETO: PRODUTO_NM depende apenas de PRODUTO_ID (não da PK completa)
CREATE TABLE PED_PEDIDO_ITEM_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,  -- ❌ Depende só de PRODUTO_ID
    CATEGORIA_PRODUTO_NM VARCHAR(100) NOT NULL,  -- ❌ Depende só de PRODUTO_ID
    
    CONSTRAINT PK_PED_PEDIDO_ITEM_ERRADO PRIMARY KEY (PEDIDO_ID, PRODUTO_ID)
);
```

**Solução 2NF - Separar tabela de produtos:**
```sql
-- ✅ CORRETO: Produto em tabela separada
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,
    CATEGORIA_PRODUTO_NM VARCHAR(100) NOT NULL,
    PRECO_PADRAO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

CREATE TABLE PED_PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,  -- Pode divergir do preço padrão
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (PEDIDO_ID, PRODUTO_ID),
    CONSTRAINT FK_PED_PEDIDO_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) REFERENCES PED_PEDIDO(PEDIDO_ID),
    CONSTRAINT FK_PED_PEDIDO_ITEM_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID)
);
```

### 3.2.4 Terceira Forma Normal (3NF)

**Definição**: Estar em 2NF + Nenhum atributo não-chave depende de outro atributo não-chave (eliminar dependências transitivas).

**Violação 3NF - Dependência transitiva:**
```sql
-- ❌ INCORRETO: UF_NM depende de UF_CD (não da PK CLIENTE_ID)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,  -- ❌ Depende de UF_CD (transitivo)
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CLIENTE_ID)
);
```

**Solução 3NF - Normalizar UF em tabela separada:**
```sql
-- ✅ CORRETO: UF em tabela de domínio
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_UF FOREIGN KEY (UF_CD) REFERENCES DOM_UF(UF_CD)
);
```

### 3.2.5 Desnormalização Controlada

**Quando desnormalizar** (requer aprovação ADI):
1. **Performance crítica**: Queries muito frequentes com múltiplos JOINs
2. **Data Warehousing**: Tabelas fato/dimensão (modelagem dimensional)
3. **Colunas calculadas**: Agregações complexas
4. **Caching de dados**: Reduzir latência

**Técnicas de Desnormalização:**

**1. Colunas Calculadas (Computed Columns):**
```sql
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_PRODUTOS_VL DECIMAL(15,2) NOT NULL,
    VALOR_FRETE_VL DECIMAL(15,2) NOT NULL,
    VALOR_DESCONTO_VL DECIMAL(15,2) NOT NULL,
    
    -- Computed column (não armazenada)
    VALOR_TOTAL_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL),
    
    -- Computed column PERSISTIDA (armazenada fisicamente)
    VALOR_TOTAL_PERSISTIDO_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL) PERSISTED,
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

-- Índice em coluna calculada (requer PERSISTED)
CREATE NONCLUSTERED INDEX IDX_PED_PEDIDO_VALOR_TOTAL
    ON PED_PEDIDO(VALOR_TOTAL_PERSISTIDO_VL);
```

**2. Agregações Pré-Calculadas:**
```sql
-- Tabela normalizada (origem)
CREATE TABLE PED_PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (PEDIDO_ID, PRODUTO_ID)
);

-- Tabela desnormalizada (agregação pré-calculada)
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_PEDIDO_DT DATE NOT NULL,
    
    -- ❌ Desnormalização: Agregação armazenada (atualizada via trigger)
    QUANTIDADE_TOTAL_ITENS_QT INT NOT NULL DEFAULT 0,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL DEFAULT 0,
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

-- Trigger para atualizar agregações
CREATE TRIGGER TRG_PED_PEDIDO_ITEM_AGREGACAO
ON PED_PEDIDO_ITEM
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Recalcular totais para pedidos afetados
    UPDATE ped
    SET ped.QUANTIDADE_TOTAL_ITENS_QT = (
            SELECT SUM(i.QUANTIDADE_QT)
            FROM PED_PEDIDO_ITEM i
            WHERE i.PEDIDO_ID = ped.PEDIDO_ID
        ),
        ped.VALOR_TOTAL_VL = (
            SELECT SUM(i.QUANTIDADE_QT * i.PRECO_UNITARIO_VL)
            FROM PED_PEDIDO_ITEM i
            WHERE i.PEDIDO_ID = ped.PEDIDO_ID
        )
    FROM PED_PEDIDO ped
    WHERE ped.PEDIDO_ID IN (
        SELECT PEDIDO_ID FROM INSERTED
        UNION
        SELECT PEDIDO_ID FROM DELETED
    );
END;
```

**3. Replicação de Dados (Tabelas de Leitura):**
```sql
-- Tabela normalizada (escrita)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    -- ... demais colunas
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_ID) REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

-- Tabela desnormalizada (leitura - materialized view)
CREATE TABLE CON_CONTRATO_DENORMALIZADO (
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    -- Dados denormalizados do tipo de contrato
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    
    -- Dados denormalizados do cliente
    CLIENTE_CPF_NR VARCHAR(11) NOT NULL,
    CLIENTE_NM VARCHAR(200) NOT NULL,
    
    -- Metadados
    DATA_ATUALIZACAO_DT DATETIME2(3) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_DENORMALIZADO PRIMARY KEY (CONTRATO_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Atualização via job agendado (a cada 5 minutos)
CREATE PROCEDURE SP_ATUALIZAR_CON_CONTRATO_DENORMALIZADO
AS
BEGIN
    MERGE INTO CON_CONTRATO_DENORMALIZADO AS target
    USING (
        SELECT 
            con.CONTRATO_ID,
            con.NUMERO_CONTRATO_NR,
            tc.TIPO_CONTRATO_CD,
            tc.TIPO_CONTRATO_NM,
            cli.CPF_NR,
            cli.NOME_CLIENTE_NM
        FROM CON_CONTRATO con
        INNER JOIN TAB_TIPO_CONTRATO tc ON tc.TIPO_CONTRATO_ID = con.TIPO_CONTRATO_ID
        INNER JOIN CLI_CLIENTE cli ON cli.CLIENTE_ID = con.CLIENTE_ID
        WHERE con.DT_ATUALIZACAO >= DATEADD(MINUTE, -10, GETDATE())
    ) AS source
    ON target.CONTRATO_ID = source.CONTRATO_ID
    WHEN MATCHED THEN
        UPDATE SET
            target.NUMERO_CONTRATO_NR = source.NUMERO_CONTRATO_NR,
            target.TIPO_CONTRATO_CD = source.TIPO_CONTRATO_CD,
            target.TIPO_CONTRATO_NM = source.TIPO_CONTRATO_NM,
            target.CLIENTE_CPF_NR = source.CPF_NR,
            target.CLIENTE_NM = source.NOME_CLIENTE_NM,
            target.DATA_ATUALIZACAO_DT = SYSDATETIME()
    WHEN NOT MATCHED THEN
        INSERT (CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_CD, TIPO_CONTRATO_NM, 
                CLIENTE_CPF_NR, CLIENTE_NM, DATA_ATUALIZACAO_DT)
        VALUES (source.CONTRATO_ID, source.NUMERO_CONTRATO_NR, source.TIPO_CONTRATO_CD, 
                source.TIPO_CONTRATO_NM, source.CPF_NR, source.NOME_CLIENTE_NM, SYSDATETIME());
END;
```

### 3.2.6 Checklist de Normalização

**Verificação 1NF:**
- [ ] Todos os atributos contêm valores atômicos (sem listas/arrays)
- [ ] Não há grupos repetitivos (telefone1, telefone2, ...)
- [ ] Cada coluna possui tipo de dado único e bem definido

**Verificação 2NF:**
- [ ] Tabela está em 1NF
- [ ] Todos os atributos não-chave dependem da chave primária completa
- [ ] Sem dependências parciais (em PKs compostas)

**Verificação 3NF:**
- [ ] Tabela está em 2NF
- [ ] Nenhum atributo não-chave depende de outro atributo não-chave
- [ ] Sem dependências transitivas

**Desnormalização Aprovada:**
- [ ] Justificativa técnica documentada (performance crítica)
- [ ] Aprovação formal do ADI
- [ ] Mecanismo de sincronização implementado (trigger, job, CDC)
- [ ] Testes de consistência de dados

---

**📊 Status da SUB-PARTE 3.1**: ✅ **COMPLETA (1 de 3)**

**Resumo SUB-PARTE 3.1**:
- ✅ 3.1: Tipos de Tabelas (6 tipos: transacional, apoio, histórico, auxiliar, log, stage)
- ✅ 3.2: Normalização (1NF, 2NF, 3NF + desnormalização controlada)

**Próxima**: SUB-PARTE 3.2 - Chaves e Identificadores

---

## SUB-PARTE 3.2: Chaves Primárias e Estrangeiras (2 de 3)

---

## 3.3 Chaves Primárias

### 3.3.1 Tipos de Chaves Primárias

A escolha do tipo de chave primária impacta **performance**, **manutenibilidade** e **integridade referencial**.

**Padrão CAIXA**: Surrogate keys (BIGINT IDENTITY) para tabelas transacionais.

| Tipo | Descrição | Quando Usar | Vantagens | Desvantagens |
|------|-----------|-------------|-----------|--------------|
| **Surrogate** | Valor artificial gerado automaticamente | **Padrão** para tabelas transacionais | Imutável, performance, simplicidade | Não tem significado de negócio |
| **Natural** | Atributo com significado de negócio | Tabelas de domínio estável (UF, país) | Significado claro, sem necessidade de JOIN para exibir | Risco de mudança, tamanho variável |
| **Composta** | Múltiplas colunas formam a PK | Tabelas associativas (N:M) | Garante unicidade de combinação | Complexidade em FKs, índices maiores |

### 3.3.2 Surrogate Keys (Chaves Substitutas)

**Definição**: Valor numérico sequencial sem significado de negócio, gerado automaticamente pelo SGBD.

**Recomendação CAIXA**: BIGINT IDENTITY(1,1)

**Vantagens:**
1. **Imutabilidade**: Nunca muda (CPF pode ser corrigido, ID não)
2. **Performance**: Números pequenos, índices eficientes
3. **Simplicidade**: Uma única coluna na PK
4. **Distribuição**: Sequencial = ótimo para clustered index
5. **Independência**: Alterações em atributos de negócio não afetam FKs

**Sintaxe SQL Server:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,     -- Natural business identifier
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID),
    
    -- Natural key como UNIQUE (negócio exige unicidade)
    CONSTRAINT UK_CON_CONTRATO_NUMERO UNIQUE NONCLUSTERED (NUMERO_CONTRATO_NR)
);
```

**IDENTITY vs SEQUENCE:**

**IDENTITY (preferencial para surrogate keys):**
```sql
-- IDENTITY: Geração automática vinculada à tabela
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Inserção (ID gerado automaticamente)
INSERT INTO CLI_CLIENTE (NOME_CLIENTE_NM) VALUES ('João Silva');
SELECT SCOPE_IDENTITY() AS NovoID;  -- Retorna 1

-- Gerenciar IDENTITY
DBCC CHECKIDENT ('CLI_CLIENTE', RESEED, 1000);  -- Reiniciar de 1000
```

**SEQUENCE (preferencial quando múltiplas tabelas compartilham sequência):**
```sql
-- SEQUENCE: Objeto independente de tabela
CREATE SEQUENCE SEQ_DOCUMENTO_GLOBAL
    AS BIGINT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    NO CYCLE
    CACHE 50;

-- Uso em múltiplas tabelas
CREATE TABLE DOC_CONTRATO (
    DOCUMENTO_ID BIGINT NOT NULL DEFAULT NEXT VALUE FOR SEQ_DOCUMENTO_GLOBAL,
    CONTRATO_ID BIGINT NOT NULL,
    TIPO_DOCUMENTO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOC_CONTRATO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_GARANTIA (
    DOCUMENTO_ID BIGINT NOT NULL DEFAULT NEXT VALUE FOR SEQ_DOCUMENTO_GLOBAL,
    GARANTIA_ID BIGINT NOT NULL,
    TIPO_DOCUMENTO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOC_GARANTIA PRIMARY KEY (DOCUMENTO_ID)
);

-- Inserção (compartilha sequência global)
INSERT INTO DOC_CONTRATO (CONTRATO_ID, TIPO_DOCUMENTO_TP) VALUES (1, 'RG');  -- ID = 1
INSERT INTO DOC_GARANTIA (GARANTIA_ID, TIPO_DOCUMENTO_TP) VALUES (1, 'ESCRITURA');  -- ID = 2
```

**Quando usar SEQUENCE:**
1. **Documentação unificada**: Todos os tipos de documentos com numeração única
2. **Auditoria**: Sequência global para múltiplas tabelas de log
3. **Migração de Oracle**: SEQUENCE é padrão em Oracle
4. **Pré-alocação**: Aplicação precisa obter múltiplos IDs antes de INSERT

**TE074 3.2.12.2**: Quando coluna é vinculada a SEQUENCE, representar no modelo (propriedade Identity).

### 3.3.3 Natural Keys (Chaves Naturais)

**Definição**: Atributo ou conjunto de atributos com significado de negócio que identifica unicamente um registro.

**Quando usar:**
1. **Domínios estáveis**: Valores raramente mudam (UF_CD, PAIS_CD, MOEDA_CD)
2. **Padrões nacionais/internacionais**: CPF, CNPJ, ISBN, IATA (com cuidado)
3. **Códigos curtos**: CHAR(2), CHAR(3) (melhor que BIGINT)

**Exemplos válidos:**
```sql
-- UF: Natural key estável (26 UFs + DF, raramente muda)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,             -- Natural key: SP, RJ, MG
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_TP VARCHAR(20) NOT NULL,
    CODIGO_IBGE_NR CHAR(2) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY CLUSTERED (UF_CD)
);

-- País: Natural key internacional (ISO 3166-1 alpha-2)
CREATE TABLE DOM_PAIS (
    PAIS_CD CHAR(2) NOT NULL,           -- BR, US, AR
    PAIS_NM VARCHAR(100) NOT NULL,
    CODIGO_ISO3_CD CHAR(3) NOT NULL,    -- BRA, USA, ARG
    CODIGO_NUMERICO_NR CHAR(3) NOT NULL,
    
    CONSTRAINT PK_DOM_PAIS PRIMARY KEY CLUSTERED (PAIS_CD),
    CONSTRAINT UK_DOM_PAIS_ISO3 UNIQUE (CODIGO_ISO3_CD)
);

-- Moeda: Natural key internacional (ISO 4217)
CREATE TABLE DOM_MOEDA (
    MOEDA_CD CHAR(3) NOT NULL,          -- BRL, USD, EUR
    MOEDA_NM VARCHAR(50) NOT NULL,
    SIMBOLO_TX VARCHAR(5) NOT NULL,
    CODIGO_NUMERICO_NR CHAR(3) NOT NULL,
    
    CONSTRAINT PK_DOM_MOEDA PRIMARY KEY CLUSTERED (MOEDA_CD)
);
```

**Cuidado com CPF/CNPJ como PK:**
```sql
-- ❌ EVITAR: CPF/CNPJ como PK (pode ser corrigido, formatação varia)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CPF_NR VARCHAR(11) NOT NULL,  -- ❌ Natural key instável
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CPF_NR)
);

-- ✅ CORRETO: Surrogate key + UNIQUE em CPF
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,  -- ✅ Surrogate key
    CPF_NR VARCHAR(11) NOT NULL,                -- Business identifier
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY CLUSTERED (CLIENTE_ID),
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE NONCLUSTERED (CPF_NR)
);
```

**Razões para evitar CPF/CNPJ como PK:**
1. **Correções**: CPF digitado errado pode precisar ser corrigido
2. **Formatação**: "12345678901" vs "123.456.789-01" (inconsistência)
3. **Tamanho**: VARCHAR(11) vs BIGINT (8 bytes)
4. **Performance**: Strings em FKs = índices maiores
5. **Internacionalização**: Estrangeiros podem não ter CPF

### 3.3.4 Composite Keys (Chaves Compostas)

**Definição**: Chave primária formada por múltiplas colunas.

**Quando usar:**
1. **Tabelas associativas** (N:M): PK = (ENTIDADE1_ID, ENTIDADE2_ID)
2. **Relacionamentos temporais**: PK = (ENTIDADE_ID, DATA_VIGENCIA_DT)
3. **Particionamento**: Coluna de particionamento deve estar na PK

**Exemplos:**

**1. Tabela Associativa N:M (mais comum):**
```sql
-- Produtos podem ter múltiplas categorias, categorias têm múltiplos produtos
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    
    -- Atributos adicionais da associação
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    ORDEM_EXIBICAO_SEQ INT NOT NULL DEFAULT 1,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- PK composta garante (produto, categoria) único
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY CLUSTERED (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs para entidades participantes
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) REFERENCES PRO_CATEGORIA(CATEGORIA_ID),
    
    CONSTRAINT CK_PRO_PRODUTO_CATEGORIA_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Índice invertido (consultas por categoria)
CREATE NONCLUSTERED INDEX IDX_PRO_PRODUTO_CATEGORIA_CATEGORIA_PRODUTO
    ON PRO_PRODUTO_CATEGORIA(CATEGORIA_ID, PRODUTO_ID);
```

**2. Relacionamentos Temporais (vigências):**
```sql
-- Histórico de preços de produtos
CREATE TABLE PRO_PRODUTO_PRECO_HIST (
    PRODUTO_ID INT NOT NULL,
    DATA_VIGENCIA_DT DATE NOT NULL,         -- Início da vigência
    PRECO_VL DECIMAL(15,2) NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) NOT NULL,
    
    -- PK composta: (produto, data) garante um preço por vigência
    CONSTRAINT PK_PRO_PRODUTO_PRECO_HIST PRIMARY KEY CLUSTERED (PRODUTO_ID, DATA_VIGENCIA_DT),
    
    CONSTRAINT FK_PRO_PRODUTO_PRECO_HIST_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT CK_PRO_PRODUTO_PRECO_HIST_PRECO_POSITIVO CHECK (PRECO_VL > 0)
);

-- Consultar preço em data específica
SELECT TOP 1 PRECO_VL
FROM PRO_PRODUTO_PRECO_HIST
WHERE PRODUTO_ID = 123
  AND DATA_VIGENCIA_DT <= '2025-06-15'
ORDER BY DATA_VIGENCIA_DT DESC;
```

**3. Tabelas Particionadas (coluna de particionamento na PK):**
```sql
-- Tabela particionada por mês (DATA_CADASTRO_DT)
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    DATA_CADASTRO_DT DATE NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY NONCLUSTERED (TRANSACAO_ID, DATA_CADASTRO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_CADASTRO_DT);

-- Clustered index apenas em DATA_CADASTRO_DT (alinhado com particionamento)
CREATE CLUSTERED INDEX CIX_TRA_TRANSACAO_DATA
    ON TRA_TRANSACAO(DATA_CADASTRO_DT);
```

**Desvantagens de PKs Compostas:**
1. **FKs complexas**: Referências precisam repetir múltiplas colunas
2. **Índices maiores**: Mais colunas = mais espaço
3. **Performance**: JOINs mais lentos (múltiplas comparações)
4. **Manutenibilidade**: Alterações de estrutura mais complexas

**Alternativa com Surrogate Key:**
```sql
-- Tabela associativa com surrogate key adicional
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_CATEGORIA_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    
    -- Surrogate key como PK
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY CLUSTERED (PRODUTO_CATEGORIA_ID),
    
    -- Unicidade de negócio (produto, categoria)
    CONSTRAINT UK_PRO_PRODUTO_CATEGORIA_PRODUTO_CATEGORIA UNIQUE NONCLUSTERED (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
);
```

**Quando adicionar surrogate key em tabela associativa:**
- Tabela tem **muitos atributos adicionais** (não é só relacionamento)
- **Outras tabelas referenciam a associação** (evita FKs compostas)
- **Facilita auditoria** (ID único para rastreamento)

### 3.3.5 Clustered vs Nonclustered Primary Keys

**Clustered Index (padrão):**
- **Dados fisicamente ordenados** pela PK
- **Apenas 1 clustered index por tabela**
- **Recomendado**: Surrogate keys sequenciais (IDENTITY)

**Nonclustered Primary Key (exceções):**
- **Particionamento**: Clustered index na coluna de particionamento
- **GUID como PK**: Clustered em coluna sequencial, PK nonclustered no GUID
- **Performance de escrita**: Evitar fragmentação em chaves não sequenciais

**Exemplo - GUID (não recomendado para PKs):**
```sql
-- ❌ EVITAR: GUID como clustered PK (fragmentação)
CREATE TABLE LOG_EVENTO_ERRADO (
    EVENTO_ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),  -- Random GUID
    DATA_EVENTO_DT DATETIME2(3) NOT NULL,
    MENSAGEM_DS VARCHAR(MAX) NOT NULL,
    
    CONSTRAINT PK_LOG_EVENTO_ERRADO PRIMARY KEY CLUSTERED (EVENTO_ID)  -- ❌ Fragmentação
);

-- ✅ CORRETO: Surrogate key sequencial como clustered, GUID como nonclustered
CREATE TABLE LOG_EVENTO (
    EVENTO_ID BIGINT IDENTITY(1,1) NOT NULL,              -- Sequencial
    EVENTO_GUID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(), -- GUID para APIs
    DATA_EVENTO_DT DATETIME2(3) NOT NULL,
    MENSAGEM_DS VARCHAR(MAX) NOT NULL,
    
    CONSTRAINT PK_LOG_EVENTO PRIMARY KEY CLUSTERED (EVENTO_ID),  -- ✅ Sequencial
    CONSTRAINT UK_LOG_EVENTO_GUID UNIQUE NONCLUSTERED (EVENTO_GUID)
);
```

---

## 3.4 Chaves Estrangeiras (Foreign Keys)

### 3.4.1 Fundamentos de Integridade Referencial

**Chave Estrangeira (FK)**: Coluna ou conjunto de colunas que referencia a chave primária de outra tabela (ou da mesma tabela).

**Objetivos:**
1. **Integridade referencial**: Garantir que relacionamentos sejam válidos
2. **Consistência**: Evitar registros "órfãos"
3. **Documentação**: Explicitar relacionamentos no modelo
4. **Performance**: Facilitar otimizador de queries

**Nomenclatura (TE074 3.2.11.8 + PARTE 2 seção 2.4):**
- **Padrão**: `FK_[TABELA_ORIGEM]_[TABELA_DESTINO]`
- **Múltiplas FKs**: `FK_[TABELA_ORIGEM]_[TABELA_DESTINO]_[COLUNA]`

### 3.4.2 As 16 Regras de Relacionamento do TE074 3.2.11

**Regra 3.2.11.1 - Propriedades de Relacionamento**

Todo relacionamento possui:
- **Associação**: Ligação entre entidades (via FK)
- **Cardinalidade**: Quantos registros relacionados (1:1, 1:N, N:M)
- **Opcionalidade**: Obrigatório (1) ou Opcional (0..1)
- **CONSTRAINT**: FK declarada no DDL

```sql
-- Exemplo: CONTRATO (child) → TIPO_CONTRATO (parent)
-- Cardinalidade: N:1 (muitos contratos, um tipo)
-- Opcionalidade: Obrigatória (todo contrato TEM tipo)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,  -- Obrigatória (NOT NULL)
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)
);
```

---

**Regra 3.2.11.2 - Relacionamento Opcional Não Participa da PK**

Se o relacionamento é **opcional**, a FK **NÃO pode fazer parte da chave primária**.

```sql
-- ❌ INCORRETO: FK opcional (NULL) na PK
CREATE TABLE PED_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    VENDEDOR_ID BIGINT NULL,  -- ❌ Opcional, mas está na PK
    
    CONSTRAINT PK_PED_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID, VENDEDOR_ID)  -- ❌ ERRO
);

-- ✅ CORRETO: FK opcional fora da PK
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VENDEDOR_ID BIGINT NULL,  -- Opcional (pedidos web podem não ter vendedor)
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID),
    CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
        REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
);
```

---

**Regra 3.2.11.3 - Associações Exclusivamente via Relacionamentos**

Associações entre entidades **DEVEM ser feitas exclusivamente via relacionamentos** ou tabelas associativas.

```sql
-- ✅ CORRETO: Relacionamento direto via FK
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- FK para CON_CONTRATO
    NUMERO_PARCELA_NR INT NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);
```

---

**Regra 3.2.11.4 - VEDADO Definir Identificador de Outra Tabela como Coluna**

É **VEDADO** (proibido) criar coluna que armazena identificador de outra tabela **sem declarar FK**.

```sql
-- ❌ VEDADO: Coluna armazena CLIENTE_ID sem FK
CREATE TABLE CON_CONTRATO_ERRADO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_CODIGO BIGINT NOT NULL,  -- ❌ É CLIENTE_ID, mas sem FK
    
    CONSTRAINT PK_CON_CONTRATO_ERRADO PRIMARY KEY (CONTRATO_ID)
    -- ❌ FALTA FK para CLI_CLIENTE
);

-- ✅ CORRETO: Coluna com FK declarada
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- ✅ Nome claro + FK
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);
```

---

**Regra 3.2.11.5 - Referência ao Identificador Via Relacionamento**

A referência ao identificador de outra tabela **DEVE ser feita via relacionamento** (FK).

*Complementa regra 3.2.11.4 - mesma intenção.*

---

**Regra 3.2.11.6 - Auto-Relacionamento com Associações Opcionais**

Em **auto-relacionamentos** (tabela referencia a si mesma), **ambas as associações devem ser opcionais**.

**Razão**: Primeiro e último elemento da hierarquia não têm pai/filho.

```sql
-- Auto-relacionamento: Categoria hierárquica (pai/filho)
CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_PAI_ID INT NULL,  -- ✅ Opcional (raiz não tem pai)
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    NIVEL_HIERARQUIA_NR INT NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID),
    
    -- Auto-relacionamento (self-referencing FK)
    CONSTRAINT FK_PRO_CATEGORIA_PAI FOREIGN KEY (CATEGORIA_PAI_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
);

-- Exemplo de dados:
-- CATEGORIA_ID | CATEGORIA_PAI_ID | CATEGORIA_NM       | NIVEL
-- 1            | NULL             | Eletrônicos        | 1  (raiz, sem pai)
-- 2            | 1                | Computadores       | 2
-- 3            | 1                | Smartphones        | 2
-- 4            | 2                | Notebooks          | 3
-- 5            | 2                | Desktops           | 3
```

---

**Regra 3.2.11.7 - Relacionamento Sem Informação de Outros Relacionamentos**

Um relacionamento **NÃO deve conter informações** de outros relacionamentos.

```sql
-- ❌ INCORRETO: FK mistura relacionamentos (contrato + cliente duplicado)
CREATE TABLE CON_PARCELA_ERRADO (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- ❌ Redundante (já está em CONTRATO)
    
    CONSTRAINT PK_CON_PARCELA_ERRADO PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_ERRADO_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID),
    CONSTRAINT FK_CON_PARCELA_ERRADO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)  -- ❌ Redundante
);

-- ✅ CORRETO: Apenas FK para CONTRATO (cliente vem via JOIN)
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- ✅ Único relacionamento necessário
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Obter cliente da parcela via JOIN
SELECT p.*, con.CLIENTE_ID, cli.NOME_CLIENTE_NM
FROM CON_PARCELA p
INNER JOIN CON_CONTRATO con ON con.CONTRATO_ID = p.CONTRATO_ID
INNER JOIN CLI_CLIENTE cli ON cli.CLIENTE_ID = con.CLIENTE_ID;
```

---

**Regra 3.2.11.8 - Nome = Código = Nome CONSTRAINT**

Nome do relacionamento = Código do relacionamento = Nome da CONSTRAINT.

```sql
-- ✅ Nome da FK deve refletir relacionamento
CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
    REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)
```

*Nomenclatura já coberta em PARTE 2, seção 2.4.*

---

**Regra 3.2.11.9 - Verbos de Ligação (PARENT/CHILD ROLE)**

No modelo conceitual/lógico (PowerDesigner), os **verbos de ligação** (PARENT ROLE e CHILD ROLE) devem ser **obrigatórios e diferentes**.

**Exemplo:**
- **PARENT ROLE**: "possui" (CONTRATO possui PARCELAS)
- **CHILD ROLE**: "pertence a" (PARCELA pertence a CONTRATO)

*Regra aplicável à documentação no PowerDesigner, não ao DDL SQL.*

---

**Regra 3.2.11.10 - CHANGE PARENT ALLOWED (Cuidado)**

Opção **CHANGE PARENT ALLOWED** permite alterar FK após inserção. Usar com **cuidado** (certeza de que alteração é permitida pelo negócio).

**Exemplo onde NÃO permitir:**
```sql
-- Histórico de transações: não pode mudar CONTA_ID após criação
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTA_ID BIGINT NOT NULL,  -- ❌ Não deve permitir UPDATE (auditoria)
    
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY (TRANSACAO_ID),
    CONSTRAINT FK_TRA_TRANSACAO_CONTA FOREIGN KEY (CONTA_ID) 
        REFERENCES CON_CONTA(CONTA_ID)
);

-- Proteger contra UPDATE de CONTA_ID (trigger)
CREATE TRIGGER TRG_TRA_TRANSACAO_IMPEDIR_UPDATE_CONTA
ON TRA_TRANSACAO
FOR UPDATE
AS
BEGIN
    IF UPDATE(CONTA_ID)
    BEGIN
        RAISERROR('Não é permitido alterar CONTA_ID de transação existente.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
```

---

**Regra 3.2.11.11 - Todo Relacionamento Possui PARENT KEY Vinculada**

Todo relacionamento (FK) **DEVE ter uma PARENT KEY** (PK ou UK da tabela referenciada).

```sql
-- ✅ FK referencia PK da tabela pai
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)  -- Referencia PK
);

-- ✅ FK pode referenciar UNIQUE (não só PK)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE (CPF_NR)
);

CREATE TABLE CLI_CONTATO (
    CONTATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_CPF_NR VARCHAR(11) NOT NULL,  -- FK para UK (não PK)
    
    CONSTRAINT PK_CLI_CONTATO PRIMARY KEY (CONTATO_ID),
    CONSTRAINT FK_CLI_CONTATO_CLIENTE_CPF FOREIGN KEY (CLIENTE_CPF_NR) 
        REFERENCES CLI_CLIENTE(CPF_NR)  -- ✅ Referencia UK
);
```

---

**Regra 3.2.11.12 - Tipos de Deleção por SGBD**

Opções de **ON DELETE** variam por SGBD:
- **SQL Server**: NO ACTION, CASCADE, SET NULL, SET DEFAULT
- **Oracle**: CASCADE, SET NULL (RESTRICT não existe)
- **DB2**: CASCADE, RESTRICT, SET NULL

**SQL Server - Opções ON DELETE:**
```sql
-- ON DELETE NO ACTION (padrão): Impede deleção se houver filhos
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION;  -- ❌ Erro se tentar deletar contrato com parcelas

-- ON DELETE CASCADE: Deleta filhos automaticamente
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE CASCADE;  -- ⚠️ CUIDADO: Deleta parcelas ao deletar contrato

-- ON DELETE SET NULL: Define FK como NULL
CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
    REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
    ON DELETE SET NULL;  -- Vendedor deletado → VENDEDOR_ID = NULL

-- ON DELETE SET DEFAULT: Define FK como valor padrão
CONSTRAINT FK_PED_PEDIDO_STATUS FOREIGN KEY (STATUS_ID) 
    REFERENCES DOM_STATUS(STATUS_ID)
    ON DELETE SET DEFAULT;  -- Status deletado → STATUS_ID = valor padrão
```

**Recomendações CAIXA:**
1. **Padrão**: NO ACTION (segurança)
2. **CASCADE**: Apenas quando deleção em cascata é regra de negócio clara
3. **SET NULL**: Relacionamentos opcionais onde pai pode ser removido
4. **Soft Delete**: Preferir `DELETADO_IN = 'S'` ao invés de DELETE físico

---

**Regra 3.2.11.13 - Opções NÃO Usar**

**NÃO usar** as seguintes opções de FK:
- **DISABLE**: FK desabilitada (não valida integridade)
- **Exceções**: Permitir inserções que violam FK
- **RELY**: Confiar que dados já estão consistentes (perigoso)
- **VALIDATE desabilitada**: Não validar dados existentes
- **DEFERRED OPTION alterada**: Validação adiada (Oracle)
- **DB2 ENFORCED desabilitado**: Não impor FK (DB2)

```sql
-- ❌ EVITAR: FK desabilitada
ALTER TABLE CON_CONTRATO NOCHECK CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO;  -- ❌

-- ✅ SEMPRE: FK habilitada
ALTER TABLE CON_CONTRATO CHECK CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO;  -- ✅
```

---

**Regra 3.2.11.14 - Relacionamentos Inversos NÃO Permitidos**

**Relacionamentos inversos** (sentidos opostos entre mesmas tabelas) **NÃO são permitidos**.

```sql
-- ❌ VEDADO: Relacionamentos inversos (A→B e B→A)
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,  -- ❌ A → B
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,  -- ❌ B → A (inverso)
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- ❌ Relacionamentos circulares
ALTER TABLE TAB_A ADD CONSTRAINT FK_A_B FOREIGN KEY (B_ID) REFERENCES TAB_B(B_ID);
ALTER TABLE TAB_B ADD CONSTRAINT FK_B_A FOREIGN KEY (A_ID) REFERENCES TAB_A(A_ID);
```

**Solução**: Definir qual é a **entidade dominante** (pai) e qual é a **entidade dependente** (filho).

---

**Regra 3.2.11.15 - Relacionamentos Paralelos (Max 2)**

**Máximo 2 relacionamentos paralelos** entre mesmas tabelas. Acima disso, usar **tabela associativa qualificada**.

```sql
-- ✅ PERMITIDO: 2 relacionamentos paralelos (origem/destino)
CREATE TABLE FIN_TRANSFERENCIA (
    TRANSFERENCIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTA_ORIGEM_ID BIGINT NOT NULL,   -- ✅ Relacionamento 1
    CONTA_DESTINO_ID BIGINT NOT NULL,  -- ✅ Relacionamento 2
    VALOR_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_FIN_TRANSFERENCIA PRIMARY KEY (TRANSFERENCIA_ID),
    CONSTRAINT FK_FIN_TRANSFERENCIA_CONTA_ORIGEM FOREIGN KEY (CONTA_ORIGEM_ID) 
        REFERENCES FIN_CONTA(CONTA_ID),
    CONSTRAINT FK_FIN_TRANSFERENCIA_CONTA_DESTINO FOREIGN KEY (CONTA_DESTINO_ID) 
        REFERENCES FIN_CONTA(CONTA_ID)
);

-- ❌ NÃO PERMITIDO: 3+ relacionamentos paralelos
CREATE TABLE DOC_DOCUMENTO_ERRADO (
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_TITULAR_ID BIGINT NULL,     -- ❌ Relacionamento 1
    PESSOA_CORRESPONSAVEL_ID BIGINT NULL,  -- ❌ Relacionamento 2
    PESSOA_FIADOR_ID BIGINT NULL,      -- ❌ Relacionamento 3 (VEDADO)
    
    CONSTRAINT PK_DOC_DOCUMENTO_ERRADO PRIMARY KEY (DOCUMENTO_ID)
);

-- ✅ CORRETO: Tabela associativa qualificada
CREATE TABLE DOC_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONSTRAINT PK_DOC_DOCUMENTO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_DOCUMENTO_PESSOA (
    DOCUMENTO_PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_ID BIGINT NOT NULL,
    TIPO_PARTICIPACAO_TP VARCHAR(20) NOT NULL,  -- TITULAR, CORRESPONSAVEL, FIADOR
    
    CONSTRAINT PK_DOC_DOCUMENTO_PESSOA PRIMARY KEY (DOCUMENTO_PESSOA_ID),
    CONSTRAINT UK_DOC_DOCUMENTO_PESSOA UNIQUE (DOCUMENTO_ID, PESSOA_ID, TIPO_PARTICIPACAO_TP),
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_DOCUMENTO FOREIGN KEY (DOCUMENTO_ID) 
        REFERENCES DOC_DOCUMENTO(DOCUMENTO_ID),
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
);
```

---

**Regra 3.2.11.16 - Opcionalidade em Pelo Menos Um Sentido**

**Apenas relacionamentos com opcionalidade em pelo menos um sentido** são permitidos.

**Razão**: Evitar dependências circulares obrigatórias (impossível inserir registros).

```sql
-- ❌ VEDADO: Ambos os lados obrigatórios (deadlock de inserção)
CREATE TABLE TAB_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    ITEM_PRINCIPAL_ID BIGINT NOT NULL,  -- ❌ Obrigatório
    
    CONSTRAINT PK_TAB_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID),
    CONSTRAINT FK_PEDIDO_ITEM FOREIGN KEY (ITEM_PRINCIPAL_ID) 
        REFERENCES TAB_ITEM(ITEM_ID)  -- ❌ Obrigatório
);

CREATE TABLE TAB_ITEM_ERRADO (
    ITEM_ID BIGINT NOT NULL,
    PEDIDO_ID BIGINT NOT NULL,  -- ❌ Obrigatório (deadlock!)
    
    CONSTRAINT PK_TAB_ITEM_ERRADO PRIMARY KEY (ITEM_ID),
    CONSTRAINT FK_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) 
        REFERENCES TAB_PEDIDO_ERRADO(PEDIDO_ID)  -- ❌ Circular
);

-- ❌ Impossível inserir: precisa de PEDIDO para criar ITEM, mas precisa de ITEM para criar PEDIDO!

-- ✅ CORRETO: Pelo menos um lado opcional
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ITEM_PRINCIPAL_ID BIGINT NULL,  -- ✅ Opcional (pode ser definido depois)
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

CREATE TABLE PED_ITEM (
    ITEM_ID BIGINT IDENTITY(1,1) NOT NULL,
    PEDIDO_ID BIGINT NOT NULL,  -- ✅ Obrigatório (item pertence a pedido)
    
    CONSTRAINT PK_PED_ITEM PRIMARY KEY (ITEM_ID),
    CONSTRAINT FK_PED_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) 
        REFERENCES PED_PEDIDO(PEDIDO_ID)
);

-- ✅ Agora possível:
-- 1. INSERT INTO PED_PEDIDO (ITEM_PRINCIPAL_ID) VALUES (NULL);  -- Pedido sem item principal
-- 2. INSERT INTO PED_ITEM (PEDIDO_ID, ...) VALUES (1, ...);      -- Item do pedido
-- 3. UPDATE PED_PEDIDO SET ITEM_PRINCIPAL_ID = 1 WHERE PEDIDO_ID = 1;  -- Define item principal
```

---

### 3.4.3 Ações Referenciais (ON DELETE / ON UPDATE)

**Opções SQL Server:**

| Ação | ON DELETE | ON UPDATE | Comportamento |
|------|-----------|-----------|---------------|
| **NO ACTION** | Padrão | Padrão | Erro se houver filhos/referências |
| **CASCADE** | Sim | Sim | Propaga operação para filhos |
| **SET NULL** | Sim | Sim | Define FK como NULL |
| **SET DEFAULT** | Sim | Sim | Define FK como valor DEFAULT |

**Recomendações:**

```sql
-- 1. NO ACTION (padrão): Proteção máxima
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- 2. CASCADE: Deleção/atualização em cascata (cuidado!)
CONSTRAINT FK_CLI_CLIENTE_TELEFONE_CLIENTE FOREIGN KEY (CLIENTE_ID) 
    REFERENCES CLI_CLIENTE(CLIENTE_ID)
    ON DELETE CASCADE;  -- ⚠️ Deletar cliente = deletar todos os telefones

-- 3. SET NULL: Relacionamentos opcionais
CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
    REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
    ON DELETE SET NULL;  -- Vendedor deletado = VENDEDOR_ID vira NULL

-- 4. SET DEFAULT: Valor padrão quando pai é removido
ALTER TABLE PED_PEDIDO ADD CONSTRAINT DF_PED_PEDIDO_STATUS DEFAULT 1 FOR STATUS_ID;

CONSTRAINT FK_PED_PEDIDO_STATUS FOREIGN KEY (STATUS_ID) 
    REFERENCES DOM_STATUS(STATUS_ID)
    ON DELETE SET DEFAULT;  -- Status deletado = STATUS_ID = 1 (padrão)
```

### 3.4.4 Índices em Foreign Keys (OBRIGATÓRIO)

**TE074 3.2.11 + Validação Pré-Validador [V405]**: Toda FK **DEVE** ter índice.

**Razões:**
1. **Performance de JOINs**: Índice acelera buscas
2. **Validação de FK**: SQL Server precisa verificar se pai existe
3. **ON DELETE CASCADE**: Índice necessário para encontrar filhos
4. **Locks**: Índice reduz bloqueios

```sql
-- Criar tabela com FK
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR INT NOT NULL,
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- ✅ OBRIGATÓRIO: Índice na FK
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID
    ON CON_PARCELA(CONTRATO_ID);

-- ✅ Covering index (performance extra)
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID_COVERING
    ON CON_PARCELA(CONTRATO_ID)
    INCLUDE (NUMERO_PARCELA_NR, VALOR_PARCELA_VL, DATA_VENCIMENTO_DT);
```

**Validação Pré-Validador [V405] - FK sem índice:**
```
[V405] Foreign Key sem índice
Tabela: CON_PARCELA
FK: FK_CON_PARCELA_CONTRATO
Coluna: CONTRATO_ID
Ação: Criar índice IDX_CON_PARCELA_CONTRATO_ID
```

---

**📊 Status da SUB-PARTE 3.2**: ✅ **COMPLETA (2 de 3)**

**Resumo SUB-PARTE 3.2**:
- ✅ 3.3: Chaves Primárias (surrogate BIGINT IDENTITY, natural keys, compostas, clustered vs nonclustered)
- ✅ 3.4: Chaves Estrangeiras (16 regras TE074 3.2.11, ON DELETE/UPDATE, índices obrigatórios)

**Próxima**: SUB-PARTE 3.3 - Relacionamentos e Integridade de Dados

---

## SUB-PARTE 3.3: Relacionamentos e Integridade de Dados (3 de 3)

---

## 3.5 Tipos de Relacionamentos e Cardinalidade

### 3.5.1 Fundamentos de Cardinalidade

**Cardinalidade** define **quantos registros** de uma entidade podem se relacionar com **quantos registros** de outra entidade.

**Notação Crow's Foot (PowerDesigner):**
- **1** (um): Exatamente um
- **0..1** (zero ou um): Opcional (pode não existir)
- **1..*** (um ou muitos): Pelo menos um
- **0..*** (zero ou muitos): Opcional, pode ter vários

### 3.5.2 Relacionamento 1:1 (Um-para-Um)

**Definição**: Cada registro da entidade A relaciona-se com **no máximo um** registro da entidade B, e vice-versa.

**Quando usar:**
1. **Separação de dados sensíveis**: Dados LGPD em tabela separada
2. **Otimização de consultas**: Colunas raramente acessadas em tabela separada
3. **Especialização**: Herança de entidades (pessoa → pessoa_física, pessoa_jurídica)

**Implementação: FK única (UNIQUE) em uma das tabelas**

```sql
-- Exemplo 1: Separação de dados sensíveis (LGPD)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    TELEFONE_NR VARCHAR(15) NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Dados sensíveis em tabela separada (1:1)
CREATE TABLE CLI_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,  -- FK + PK (garante 1:1)
    CPF_NR VARCHAR(11) NOT NULL,
    RG_NR VARCHAR(20) NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,
    NOME_MAE_NM VARCHAR(200) NULL,
    RENDA_MENSAL_VL DECIMAL(15,2) NULL,
    
    -- Criptografia (TDE ou Always Encrypted)
    NUMERO_CONTA_BANCARIA_NR VARBINARY(256) NULL,
    
    CONSTRAINT PK_CLI_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_DADOS_SENSIVEIS_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
        ON DELETE CASCADE  -- Deletar cliente = deletar dados sensíveis
);

-- Consulta com LEFT JOIN (pode não ter dados sensíveis)
SELECT 
    cli.CLIENTE_ID,
    cli.NOME_CLIENTE_NM,
    sens.CPF_NR,
    sens.DATA_NASCIMENTO_DT
FROM CLI_CLIENTE cli
LEFT JOIN CLI_CLIENTE_DADOS_SENSIVEIS sens ON sens.CLIENTE_ID = cli.CLIENTE_ID;
```

**Exemplo 2: Especialização (Herança) - Pessoa Física/Jurídica**
```sql
-- Tabela base (generalização)
CREATE TABLE PES_PESSOA (
    PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_PESSOA_TP CHAR(1) NOT NULL,  -- F=Física, J=Jurídica
    NOME_RAZAO_SOCIAL_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_PES_PESSOA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT CK_PES_PESSOA_TIPO CHECK (TIPO_PESSOA_TP IN ('F', 'J'))
);

-- Especialização 1: Pessoa Física (1:1)
CREATE TABLE PES_PESSOA_FISICA (
    PESSOA_ID BIGINT NOT NULL,  -- FK + PK
    CPF_NR VARCHAR(11) NOT NULL,
    RG_NR VARCHAR(20) NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,
    SEXO_TP CHAR(1) NULL,
    
    CONSTRAINT PK_PES_PESSOA_FISICA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT FK_PES_PESSOA_FISICA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
        ON DELETE CASCADE,
    CONSTRAINT UK_PES_PESSOA_FISICA_CPF UNIQUE (CPF_NR),
    CONSTRAINT CK_PES_PESSOA_FISICA_SEXO CHECK (SEXO_TP IN ('M', 'F', 'O'))
);

-- Especialização 2: Pessoa Jurídica (1:1)
CREATE TABLE PES_PESSOA_JURIDICA (
    PESSOA_ID BIGINT NOT NULL,  -- FK + PK
    CNPJ_NR VARCHAR(14) NOT NULL,
    INSCRICAO_ESTADUAL_NR VARCHAR(20) NULL,
    DATA_ABERTURA_DT DATE NOT NULL,
    PORTE_EMPRESA_TP VARCHAR(20) NULL,
    
    CONSTRAINT PK_PES_PESSOA_JURIDICA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT FK_PES_PESSOA_JURIDICA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
        ON DELETE CASCADE,
    CONSTRAINT UK_PES_PESSOA_JURIDICA_CNPJ UNIQUE (CNPJ_NR)
);

-- Consulta polimórfica
SELECT 
    p.PESSOA_ID,
    p.TIPO_PESSOA_TP,
    p.NOME_RAZAO_SOCIAL_NM,
    pf.CPF_NR,
    pf.DATA_NASCIMENTO_DT,
    pj.CNPJ_NR,
    pj.DATA_ABERTURA_DT
FROM PES_PESSOA p
LEFT JOIN PES_PESSOA_FISICA pf ON pf.PESSOA_ID = p.PESSOA_ID
LEFT JOIN PES_PESSOA_JURIDICA pj ON pj.PESSOA_ID = p.PESSOA_ID;
```

### 3.5.3 Relacionamento 1:N (Um-para-Muitos)

**Definição**: Cada registro da entidade A (pai) pode se relacionar com **múltiplos** registros da entidade B (filho). Cada registro de B relaciona-se com **exatamente um** registro de A.

**Padrão mais comum**: FK na tabela "muitos" (child) apontando para tabela "um" (parent).

```sql
-- Exemplo: CONTRATO (1) → PARCELAS (N)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- FK para pai (1:N)
    NUMERO_PARCELA_NR INT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,  -- A=Aberta, P=Paga, V=Vencida
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
        ON DELETE CASCADE,  -- Deletar contrato = deletar todas as parcelas
    
    -- Unicidade: (contrato, número_parcela) único
    CONSTRAINT UK_CON_PARCELA_CONTRATO_NUMERO UNIQUE (CONTRATO_ID, NUMERO_PARCELA_NR)
);

-- Índice obrigatório em FK
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID
    ON CON_PARCELA(CONTRATO_ID)
    INCLUDE (NUMERO_PARCELA_NR, DATA_VENCIMENTO_DT, VALOR_PARCELA_VL);

-- Consulta: Contrato com todas as parcelas
SELECT 
    con.CONTRATO_ID,
    con.NUMERO_CONTRATO_NR,
    con.VALOR_TOTAL_VL,
    par.NUMERO_PARCELA_NR,
    par.DATA_VENCIMENTO_DT,
    par.VALOR_PARCELA_VL,
    par.STATUS_TP
FROM CON_CONTRATO con
INNER JOIN CON_PARCELA par ON par.CONTRATO_ID = con.CONTRATO_ID
ORDER BY con.CONTRATO_ID, par.NUMERO_PARCELA_NR;
```

**Exemplo 2: Cliente (1) → Endereços (N)**
```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

CREATE TABLE CLI_CLIENTE_ENDERECO (
    ENDERECO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- FK (1:N)
    TIPO_ENDERECO_TP VARCHAR(20) NOT NULL,  -- RESIDENCIAL, COMERCIAL, COBRANCA
    LOGRADOURO_NM VARCHAR(200) NOT NULL,
    NUMERO_NR VARCHAR(10) NOT NULL,
    CEP_NR CHAR(8) NOT NULL,
    CIDADE_NM VARCHAR(100) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT PK_CLI_CLIENTE_ENDERECO PRIMARY KEY (ENDERECO_ID),
    CONSTRAINT FK_CLI_CLIENTE_ENDERECO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_CLI_CLIENTE_ENDERECO_UF FOREIGN KEY (UF_CD) 
        REFERENCES DOM_UF(UF_CD),
    CONSTRAINT CK_CLI_CLIENTE_ENDERECO_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Garantir apenas 1 endereço principal por cliente (índice filtrado)
CREATE UNIQUE NONCLUSTERED INDEX UK_CLI_CLIENTE_ENDERECO_PRINCIPAL
    ON CLI_CLIENTE_ENDERECO(CLIENTE_ID)
    WHERE PRINCIPAL_IN = 'S';
```

### 3.5.4 Relacionamento N:M (Muitos-para-Muitos)

**Definição**: Cada registro da entidade A pode se relacionar com **múltiplos** registros da entidade B, e vice-versa.

**Implementação obrigatória**: **Tabela associativa** (join table) com FKs para ambas as entidades.

**TE074 3.2.11.3**: Associações N:M **DEVEM usar tabela associativa**.

```sql
-- Exemplo 1: Produtos (N) ↔ Categorias (M)
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,
    PRECO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID)
);

-- Tabela associativa (N:M)
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    
    -- Atributos adicionais da associação
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_VINCULO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME(),
    ORDEM_EXIBICAO_SEQ INT NOT NULL DEFAULT 1,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- PK composta: (produto, categoria)
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs para ambas as entidades
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) 
        REFERENCES PRO_PRODUTO(PRODUTO_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
        ON DELETE CASCADE,
    
    CONSTRAINT CK_PRO_PRODUTO_CATEGORIA_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Índices obrigatórios (já cobertos pela PK e índice invertido)
-- Índice invertido para consultas por categoria
CREATE NONCLUSTERED INDEX IDX_PRO_PRODUTO_CATEGORIA_CATEGORIA_PRODUTO
    ON PRO_PRODUTO_CATEGORIA(CATEGORIA_ID, PRODUTO_ID);

-- Consulta: Produtos de uma categoria
SELECT 
    cat.CATEGORIA_NM,
    prod.PRODUTO_NM,
    prod.PRECO_VL,
    pc.ORDEM_EXIBICAO_SEQ
FROM PRO_CATEGORIA cat
INNER JOIN PRO_PRODUTO_CATEGORIA pc ON pc.CATEGORIA_ID = cat.CATEGORIA_ID
INNER JOIN PRO_PRODUTO prod ON prod.PRODUTO_ID = pc.PRODUTO_ID
WHERE cat.CATEGORIA_ID = 10
ORDER BY pc.ORDEM_EXIBICAO_SEQ, prod.PRODUTO_NM;

-- Consulta: Categorias de um produto
SELECT 
    prod.PRODUTO_NM,
    cat.CATEGORIA_NM,
    pc.PRINCIPAL_IN
FROM PRO_PRODUTO prod
INNER JOIN PRO_PRODUTO_CATEGORIA pc ON pc.PRODUTO_ID = prod.PRODUTO_ID
INNER JOIN PRO_CATEGORIA cat ON cat.CATEGORIA_ID = pc.CATEGORIA_ID
WHERE prod.PRODUTO_ID = 123
ORDER BY pc.PRINCIPAL_IN DESC, cat.CATEGORIA_NM;
```

**Exemplo 2: Alunos (N) ↔ Cursos (M) - com Surrogate Key**
```sql
CREATE TABLE EDU_ALUNO (
    ALUNO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_ALUNO_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_EDU_ALUNO PRIMARY KEY (ALUNO_ID)
);

CREATE TABLE EDU_CURSO (
    CURSO_ID INT IDENTITY(1,1) NOT NULL,
    CURSO_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_EDU_CURSO PRIMARY KEY (CURSO_ID)
);

-- Tabela associativa com surrogate key (matrícula tem muitos atributos)
CREATE TABLE EDU_MATRICULA (
    MATRICULA_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    ALUNO_ID BIGINT NOT NULL,
    CURSO_ID INT NOT NULL,
    DATA_MATRICULA_DT DATE NOT NULL DEFAULT GETDATE(),
    STATUS_MATRICULA_TP VARCHAR(20) NOT NULL,  -- ATIVA, TRANCADA, CONCLUIDA, CANCELADA
    NOTA_FINAL_VL DECIMAL(5,2) NULL,
    DATA_CONCLUSAO_DT DATE NULL,
    
    CONSTRAINT PK_EDU_MATRICULA PRIMARY KEY (MATRICULA_ID),
    
    -- Unicidade de negócio: (aluno, curso) único
    CONSTRAINT UK_EDU_MATRICULA_ALUNO_CURSO UNIQUE (ALUNO_ID, CURSO_ID),
    
    -- FKs
    CONSTRAINT FK_EDU_MATRICULA_ALUNO FOREIGN KEY (ALUNO_ID) 
        REFERENCES EDU_ALUNO(ALUNO_ID),
    CONSTRAINT FK_EDU_MATRICULA_CURSO FOREIGN KEY (CURSO_ID) 
        REFERENCES EDU_CURSO(CURSO_ID),
    
    CONSTRAINT CK_EDU_MATRICULA_NOTA CHECK (NOTA_FINAL_VL BETWEEN 0 AND 10)
);

-- Índices
CREATE NONCLUSTERED INDEX IDX_EDU_MATRICULA_ALUNO_ID
    ON EDU_MATRICULA(ALUNO_ID)
    INCLUDE (CURSO_ID, STATUS_MATRICULA_TP, DATA_MATRICULA_DT);

CREATE NONCLUSTERED INDEX IDX_EDU_MATRICULA_CURSO_ID
    ON EDU_MATRICULA(CURSO_ID)
    INCLUDE (ALUNO_ID, STATUS_MATRICULA_TP, DATA_MATRICULA_DT);
```

### 3.5.5 Auto-Relacionamentos (Self-Referencing)

**Definição**: Tabela referencia a si mesma (FK para PK da mesma tabela).

**Casos comuns:**
1. **Hierarquias**: Categorias, estrutura organizacional, BOM (Bill of Materials)
2. **Redes sociais**: Amizades, seguidores
3. **Workflows**: Etapa anterior/próxima

**TE074 3.2.11.6**: Auto-relacionamentos **DEVEM ter ambas as associações opcionais** (raiz/folha não têm pai/filho).

```sql
-- Exemplo 1: Hierarquia de categorias (árvore)
CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_PAI_ID INT NULL,  -- ✅ Opcional (raiz não tem pai)
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    NIVEL_HIERARQUIA_NR INT NOT NULL,
    ORDEM_EXIBICAO_SEQ INT NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID),
    
    -- Auto-relacionamento
    CONSTRAINT FK_PRO_CATEGORIA_PAI FOREIGN KEY (CATEGORIA_PAI_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
        ON DELETE NO ACTION  -- Não permitir deletar pai com filhos
);

-- Índice para buscar filhos de um pai
CREATE NONCLUSTERED INDEX IDX_PRO_CATEGORIA_PAI_ID
    ON PRO_CATEGORIA(CATEGORIA_PAI_ID)
    INCLUDE (CATEGORIA_NM, NIVEL_HIERARQUIA_NR, ORDEM_EXIBICAO_SEQ);

-- Dados de exemplo:
-- CATEGORIA_ID | CATEGORIA_PAI_ID | CATEGORIA_NM       | NIVEL
-- 1            | NULL             | Eletrônicos        | 1  (raiz)
-- 2            | 1                | Computadores       | 2
-- 3            | 1                | Smartphones        | 2
-- 4            | 2                | Notebooks          | 3
-- 5            | 2                | Desktops           | 3

-- Consulta: Hierarquia completa (CTE recursiva)
WITH CategoriaHierarquia AS (
    -- Anchor: Categorias raiz (sem pai)
    SELECT 
        CATEGORIA_ID,
        CATEGORIA_PAI_ID,
        CATEGORIA_NM,
        NIVEL_HIERARQUIA_NR,
        CAST(CATEGORIA_NM AS VARCHAR(500)) AS CAMINHO_HIERARQUIA
    FROM PRO_CATEGORIA
    WHERE CATEGORIA_PAI_ID IS NULL
    
    UNION ALL
    
    -- Recursive: Categorias filhas
    SELECT 
        c.CATEGORIA_ID,
        c.CATEGORIA_PAI_ID,
        c.CATEGORIA_NM,
        c.NIVEL_HIERARQUIA_NR,
        CAST(ch.CAMINHO_HIERARQUIA + ' > ' + c.CATEGORIA_NM AS VARCHAR(500))
    FROM PRO_CATEGORIA c
    INNER JOIN CategoriaHierarquia ch ON ch.CATEGORIA_ID = c.CATEGORIA_PAI_ID
)
SELECT * FROM CategoriaHierarquia
ORDER BY CAMINHO_HIERARQUIA;

-- Resultado:
-- Eletrônicos
-- Eletrônicos > Computadores
-- Eletrônicos > Computadores > Desktops
-- Eletrônicos > Computadores > Notebooks
-- Eletrônicos > Smartphones
```

**Exemplo 2: Estrutura Organizacional (employees → manager)**
```sql
CREATE TABLE RH_FUNCIONARIO (
    FUNCIONARIO_ID BIGINT IDENTITY(1,1) NOT NULL,
    GESTOR_ID BIGINT NULL,  -- ✅ Opcional (CEO não tem gestor)
    NOME_FUNCIONARIO_NM VARCHAR(200) NOT NULL,
    CARGO_NM VARCHAR(100) NOT NULL,
    SALARIO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_RH_FUNCIONARIO PRIMARY KEY (FUNCIONARIO_ID),
    
    -- Auto-relacionamento (funcionário → gestor)
    CONSTRAINT FK_RH_FUNCIONARIO_GESTOR FOREIGN KEY (GESTOR_ID) 
        REFERENCES RH_FUNCIONARIO(FUNCIONARIO_ID)
        ON DELETE NO ACTION
);

-- Índice para buscar subordinados de um gestor
CREATE NONCLUSTERED INDEX IDX_RH_FUNCIONARIO_GESTOR_ID
    ON RH_FUNCIONARIO(GESTOR_ID)
    INCLUDE (NOME_FUNCIONARIO_NM, CARGO_NM);

-- Consulta: Subordinados diretos de um gestor
SELECT 
    func.NOME_FUNCIONARIO_NM,
    func.CARGO_NM,
    gestor.NOME_FUNCIONARIO_NM AS GESTOR_NM
FROM RH_FUNCIONARIO func
LEFT JOIN RH_FUNCIONARIO gestor ON gestor.FUNCIONARIO_ID = func.GESTOR_ID
WHERE func.GESTOR_ID = 100;
```

**Exemplo 3: Tabela Associativa Qualificada (TE074 3.2.11.15)**

Quando há **mais de 2 relacionamentos paralelos**, usar **tabela associativa qualificada** (com tipo de associação).

```sql
-- ❌ VEDADO: 3+ relacionamentos paralelos
CREATE TABLE DOC_DOCUMENTO_ERRADO (
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_TITULAR_ID BIGINT NULL,
    PESSOA_CORRESPONSAVEL_ID BIGINT NULL,
    PESSOA_FIADOR_ID BIGINT NULL,  -- ❌ 3º relacionamento paralelo
    
    CONSTRAINT PK_DOC_DOCUMENTO_ERRADO PRIMARY KEY (DOCUMENTO_ID)
);

-- ✅ CORRETO: Tabela associativa qualificada
CREATE TABLE DOC_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_DOCUMENTO_NR VARCHAR(30) NOT NULL,
    
    CONSTRAINT PK_DOC_DOCUMENTO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_DOCUMENTO_PESSOA (
    DOCUMENTO_PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_ID BIGINT NOT NULL,
    TIPO_PARTICIPACAO_TP VARCHAR(20) NOT NULL,  -- TITULAR, CORRESPONSAVEL, FIADOR, TESTEMUNHA
    ORDEM_ASSINATURA_SEQ INT NOT NULL DEFAULT 1,
    DATA_ASSINATURA_DT DATE NULL,
    
    CONSTRAINT PK_DOC_DOCUMENTO_PESSOA PRIMARY KEY (DOCUMENTO_PESSOA_ID),
    
    -- Unicidade: (documento, pessoa, tipo) único
    CONSTRAINT UK_DOC_DOCUMENTO_PESSOA UNIQUE (DOCUMENTO_ID, PESSOA_ID, TIPO_PARTICIPACAO_TP),
    
    -- FKs
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_DOCUMENTO FOREIGN KEY (DOCUMENTO_ID) 
        REFERENCES DOC_DOCUMENTO(DOCUMENTO_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID),
    
    CONSTRAINT CK_DOC_DOCUMENTO_PESSOA_TIPO CHECK (TIPO_PARTICIPACAO_TP IN ('TITULAR', 'CORRESPONSAVEL', 'FIADOR', 'TESTEMUNHA'))
);

-- Consulta: Todas as pessoas de um documento
SELECT 
    doc.NUMERO_DOCUMENTO_NR,
    dp.TIPO_PARTICIPACAO_TP,
    pes.NOME_RAZAO_SOCIAL_NM,
    dp.DATA_ASSINATURA_DT
FROM DOC_DOCUMENTO doc
INNER JOIN DOC_DOCUMENTO_PESSOA dp ON dp.DOCUMENTO_ID = doc.DOCUMENTO_ID
INNER JOIN PES_PESSOA pes ON pes.PESSOA_ID = dp.PESSOA_ID
WHERE doc.DOCUMENTO_ID = 12345
ORDER BY dp.ORDEM_ASSINATURA_SEQ;
```

---

## 3.6 Integridade de Dados

### 3.6.1 Constraints de Domínio (CHECK)

**Definição**: Validam valores permitidos em uma ou mais colunas.

**Nomenclatura (PARTE 2, seção 2.7)**: `CK_[TABELA]_[COLUNA]_[REGRA]`

```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    TAXA_JUROS_ANUAL_PC DECIMAL(7,4) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    DATA_PRIMEIRO_VENCIMENTO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- CHECK: Status válido
    CONSTRAINT CK_CON_CONTRATO_STATUS_VALIDO 
        CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    
    -- CHECK: Valor positivo
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO 
        CHECK (VALOR_CONTRATO_VL > 0),
    
    -- CHECK: Range de parcelas
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_RANGE 
        CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360),
    
    -- CHECK: Taxa de juros razoável
    CONSTRAINT CK_CON_CONTRATO_TAXA_RANGE 
        CHECK (TAXA_JUROS_ANUAL_PC BETWEEN 0 AND 20),
    
    -- CHECK: Consistência de datas (primeiro vencimento >= assinatura)
    CONSTRAINT CK_CON_CONTRATO_DATA_CONSISTENTE 
        CHECK (DATA_PRIMEIRO_VENCIMENTO_DT >= DATA_ASSINATURA_DT)
);
```

**CHECK com função (SQL Server 2016+):**
```sql
-- Função para validar CPF
CREATE FUNCTION dbo.FN_VALIDAR_CPF (@CPF_NR VARCHAR(11))
RETURNS BIT
AS
BEGIN
    -- Validação simplificada (implementação completa seria mais complexa)
    IF LEN(@CPF_NR) <> 11 RETURN 0;
    IF @CPF_NR LIKE '%[^0-9]%' RETURN 0;  -- Apenas dígitos
    
    -- CPFs inválidos conhecidos (111.111.111-11, etc.)
    IF @CPF_NR IN ('00000000000', '11111111111', '22222222222', '33333333333', 
                   '44444444444', '55555555555', '66666666666', '77777777777',
                   '88888888888', '99999999999') RETURN 0;
    
    RETURN 1;
END;
GO

-- CHECK com função
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT CK_CLI_CLIENTE_CPF_VALIDO CHECK (dbo.FN_VALIDAR_CPF(CPF_NR) = 1)
);
```

### 3.6.2 Constraints de Entidade (PRIMARY KEY, UNIQUE)

**PRIMARY KEY**: Unicidade + NOT NULL + Identificador principal
**UNIQUE**: Unicidade (permite NULL, exceto múltiplos NULLs dependendo do SGBD)

```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    NUMERO_CONTA_NR VARCHAR(20) NOT NULL,
    
    -- PRIMARY KEY: Identificador único
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    
    -- UNIQUE: CPF único (natural business key)
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE (CPF_NR),
    
    -- UNIQUE: Email único (permite NULL, mas se preenchido, deve ser único)
    CONSTRAINT UK_CLI_CLIENTE_EMAIL UNIQUE (EMAIL_NM),
    
    -- UNIQUE: Número de conta único
    CONSTRAINT UK_CLI_CLIENTE_CONTA UNIQUE (NUMERO_CONTA_NR)
);
```

**UNIQUE com múltiplas colunas:**
```sql
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR INT NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- UNIQUE composto: (contrato, número_parcela) único
    CONSTRAINT UK_CON_PARCELA_CONTRATO_NUMERO UNIQUE (CONTRATO_ID, NUMERO_PARCELA_NR)
);
```

### 3.6.3 Triggers de Auditoria

**Padrão CAIXA**: Toda tabela transacional deve ter colunas de auditoria.

**Colunas obrigatórias:**
- `DT_CADASTRO`: Data de inserção (DEFAULT GETDATE())
- `USUARIO_CADASTRO_NM`: Usuário que inseriu (DEFAULT SUSER_SNAME())
- `DT_ATUALIZACAO`: Data da última atualização (trigger UPDATE)
- `USUARIO_ATUALIZACAO_NM`: Usuário que atualizou (trigger UPDATE)

**Soft Delete (opcional):**
- `DELETADO_IN`: S/N (trigger INSTEAD OF DELETE)
- `DT_EXCLUSAO`: Data da exclusão lógica
- `USUARIO_EXCLUSAO_NM`: Usuário que "excluiu"

```sql
-- Tabela com auditoria completa
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Auditoria de inserção (DEFAULT)
    DT_CADASTRO DATETIME2(3) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT SYSDATETIME(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    
    -- Auditoria de atualização (trigger)
    DT_ATUALIZACAO DATETIME2(3) NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Soft delete (trigger)
    DELETADO_IN CHAR(1) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    DT_EXCLUSAO DATETIME2(3) NULL,
    USUARIO_EXCLUSAO_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    CONSTRAINT CK_CON_CONTRATO_DELETADO CHECK (DELETADO_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);

-- Trigger de auditoria (UPDATE)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA_UPDATE
ON CON_CONTRATO
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE con
    SET con.DT_ATUALIZACAO = SYSDATETIME(),
        con.USUARIO_ATUALIZACAO_NM = SUSER_SNAME()
    FROM CON_CONTRATO con
    INNER JOIN INSERTED i ON i.CONTRATO_ID = con.CONTRATO_ID;
END;
GO

-- Trigger de soft delete (INSTEAD OF DELETE)
CREATE TRIGGER TRG_CON_CONTRATO_SOFT_DELETE
ON CON_CONTRATO
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE con
    SET con.DELETADO_IN = 'S',
        con.DT_EXCLUSAO = SYSDATETIME(),
        con.USUARIO_EXCLUSAO_NM = SUSER_SNAME()
    FROM CON_CONTRATO con
    INNER JOIN DELETED d ON d.CONTRATO_ID = con.CONTRATO_ID;
END;
GO

-- Consultas (filtrar deletados)
SELECT * FROM CON_CONTRATO WHERE DELETADO_IN = 'N';

-- View para facilitar consultas
CREATE VIEW VW_CON_CONTRATO_ATIVOS
AS
SELECT * FROM CON_CONTRATO WHERE DELETADO_IN = 'N';
GO
```

### 3.6.4 Validação de Integridade Cascata

**Ordem de criação de objetos:**
1. Tabelas sem FKs (tabelas de domínio, base)
2. Primary Keys
3. Foreign Keys (respeitando dependências)
4. Índices (especialmente em FKs)
5. Triggers
6. Views, Stored Procedures, Functions

**Ordem de deleção (inversa):**
1. Views, Stored Procedures, Functions
2. Triggers
3. Índices (exceto PKs/UKs)
4. Foreign Keys
5. Primary Keys
6. Tabelas

```sql
-- Script de criação (ordem correta)

-- 1. Tabelas base (sem FKs)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_ID)
);

-- 2. Tabela com FKs para tabelas base
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_UF FOREIGN KEY (UF_CD) REFERENCES DOM_UF(UF_CD)
);

-- 3. Tabela com múltiplas FKs
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

-- 4. Índices em FKs
CREATE NONCLUSTERED INDEX IDX_CLI_CLIENTE_UF_CD ON CLI_CLIENTE(UF_CD);
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO ON CON_CONTRATO(TIPO_CONTRATO_ID);
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE ON CON_CONTRATO(CLIENTE_ID);

-- 5. Triggers (após todas as FKs)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA_UPDATE ON CON_CONTRATO AFTER UPDATE AS ...;
```

**Dependências circulares (evitar):**
```sql
-- ❌ PROBLEMA: A depende de B, B depende de A
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,  -- FK para B (mas B ainda não existe)
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,  -- FK para A
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- ✅ SOLUÇÃO: Criar tabelas primeiro, FKs depois
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- Adicionar FKs via ALTER TABLE
ALTER TABLE TAB_A ADD CONSTRAINT FK_A_B FOREIGN KEY (B_ID) REFERENCES TAB_B(B_ID);
ALTER TABLE TAB_B ADD CONSTRAINT FK_B_A FOREIGN KEY (A_ID) REFERENCES TAB_A(A_ID);
```

### 3.6.5 Checklist de Integridade de Dados

**Validação de Constraints:**
- [ ] Toda PK tem índice CLUSTERED ou NONCLUSTERED apropriado
- [ ] Toda FK tem índice NONCLUSTERED (Pré-Validador [V405])
- [ ] Todas as colunas obrigatórias marcadas NOT NULL
- [ ] CHECK constraints para validar valores (status, ranges, datas)
- [ ] UNIQUE constraints para business keys (CPF, CNPJ, códigos)

**Validação de Relacionamentos:**
- [ ] FKs referenciam PKs ou UKs existentes (TE074 3.2.11.11)
- [ ] Não há relacionamentos inversos (TE074 3.2.11.14)
- [ ] Relacionamentos paralelos ≤ 2 (TE074 3.2.11.15)
- [ ] Auto-relacionamentos com FKs opcionais (TE074 3.2.11.6)
- [ ] Relacionamentos N:M usam tabela associativa (TE074 3.2.11.3)

**Validação de Auditoria:**
- [ ] Tabelas transacionais com DT_CADASTRO, USUARIO_CADASTRO_NM
- [ ] Triggers UPDATE atualizam DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
- [ ] Soft delete implementado se necessário (DELETADO_IN)
- [ ] Histórico (tabela _HIST) para mudanças críticas

**Validação de Normalização:**
- [ ] Tabelas em 3NF (TE074 3.2.4)
- [ ] Desnormalização documentada e aprovada (se aplicável)
- [ ] Sem colunas repetitivas (telefone1, telefone2) - usar tabela 1:N
- [ ] Sem listas em colunas (usar tabela relacionada)

---

## PARTE 3 - Síntese Consolidada

### Conteúdo Completo da PARTE 3

Esta PARTE apresentou os fundamentos de **estruturação de tabelas e relacionamentos** no SQL Server, cobrindo:

**SUB-PARTE 3.1: Tipos de Tabelas e Normalização**
- **3.1 Tipos de Tabelas**: 6 classificações (transacional, apoio, histórico, auxiliar, log, stage)
- **3.2 Normalização**: 1NF (atomicidade), 2NF (dependência funcional completa), 3NF obrigatória (TE074 3.2.4), desnormalização controlada

**SUB-PARTE 3.2: Chaves Primárias e Estrangeiras**
- **3.3 Chaves Primárias**: Surrogate keys (BIGINT IDENTITY padrão), natural keys (UF, país), composite keys (N:M, particionamento)
- **3.4 Chaves Estrangeiras**: 16 regras TE074 3.2.11 (opcionalidade, cardinalidade, tabelas associativas, VEDAÇÕES), ON DELETE/UPDATE, índices obrigatórios [V405]

**SUB-PARTE 3.3: Relacionamentos e Integridade**
- **3.5 Relacionamentos**: 1:1 (separação dados sensíveis, especialização), 1:N (padrão mais comum), N:M (tabela associativa obrigatória), auto-relacionamentos (hierarquias)
- **3.6 Integridade de Dados**: CHECK constraints, PRIMARY KEY, UNIQUE, FOREIGN KEY, triggers auditoria (DT_CADASTRO, DT_ATUALIZACAO), soft delete

### Pontos-Chave da PARTE 3

1. **Normalização 3NF obrigatória** (TE074 3.2.4) para tabelas transacionais e de apoio
2. **Surrogate keys BIGINT IDENTITY** como padrão para PKs
3. **16 regras de relacionamento** do TE074 3.2.11 (especialmente 3.2.11.4 VEDAÇÃO, 3.2.11.6 auto-relacionamentos, 3.2.11.15 relacionamentos paralelos)
4. **Índices obrigatórios em FKs** (performance + validação Pré-Validador [V405])
5. **Tabelas associativas** para relacionamentos N:M (TE074 3.2.11.3)
6. **Auditoria completa**: DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
7. **Soft delete** preferível a DELETE físico (DELETADO_IN = 'S')

### Cross-References

**Relacionado com PARTE 2**:
- Nomenclatura de FKs: `FK_[ORIGEM]_[DESTINO]` (seção 2.4)
- Nomenclatura de PKs: `PK_[TABELA]` (seção 2.3)
- Nomenclatura de CHECKs: `CK_[TABELA]_[COLUNA]_[REGRA]` (seção 2.7)
- Índices em FKs: `IDX_[TABELA]_[COLUNA]` (seção 2.5)

**Relacionado com PARTE 4** (próxima):
- Tipos de dados para PKs: BIGINT (seção 4.1)
- Compactação de tabelas históricas: ROW/PAGE (seção 4.2)
- Particionamento de tabelas com volumetria >100M linhas/ano (seção 4.3)
- Temporal Tables para histórico automático (seção 4.5)

**Relacionado com PARTE 5**:
- Ciclo de vida de tabelas históricas (seção 5.1)
- LGPD e tabelas de dados sensíveis (seção 5.2)
- Spring Batch e tabelas auxiliares/stage (seção 5.4)
- Validação Pré-Validador [V405] FK sem índice (seção 5.6)

### Validações Pré-Validador Relacionadas

- **[V405]**: Foreign Key sem índice
- **[V901]**: Normalização 3NF não atendida
- **[V902]**: PK composta desnecessária
- **[V903]**: FK opcional na PK (violação 3.2.11.2)
- **[V904]**: Relacionamentos paralelos >2 (violação 3.2.11.15)
- **[V905]**: Relacionamentos inversos (violação 3.2.11.14)
- **[V906]**: Auto-relacionamento com FK obrigatória (violação 3.2.11.6)

---

**📊 Status da PARTE 3**: ✅ **COMPLETA (todas as 3 sub-partes)**

**Resumo Geral PARTE 3**:
- ✅ SUB-PARTE 3.1: Tipos de Tabelas (6 tipos) + Normalização (1NF-3NF)
- ✅ SUB-PARTE 3.2: Chaves Primárias (surrogate/natural/compostas) + Chaves Estrangeiras (16 regras TE074)
- ✅ SUB-PARTE 3.3: Relacionamentos (1:1, 1:N, N:M, auto-relacionamentos) + Integridade (constraints, triggers)

**Total**: ~18KB, 6 seções (3.1-3.6), 35+ exemplos SQL, 16 regras TE074 3.2.11

**Próxima PARTE**: PARTE 4 - Tipos de Dados e Otimização SQL Server

---

# PARTE 4: TIPOS DE DADOS E OTIMIZAÇÃO SQL SERVER

> **Referências Normativas**: TE074 3.2.9-3.2.12, Melhores Práticas em Modelagem

---

## 4.1 Tipos de Dados Recomendados SQL Server

### 4.1.1 Princípios de Seleção de Tipos

**Critérios de escolha**:
1. **Precisão**: Tipo reflete exatamente o domínio de dados
2. **Economia de espaço**: Menor tipo que atende aos requisitos
3. **Performance**: Tipos numéricos > strings, tipos fixos > variáveis
4. **Compatibilidade**: Facilita portabilidade entre SGBDs
5. **Manutenibilidade**: Tipos semânticos (DATE vs VARCHAR)

**TE074 3.2.12.6**: Tipos com tamanhos fixos ou sem tamanho (SMALLINT, INTEGER, TINYINT, BIGINT) devem ter campo personalizado "Tamanho" preenchido.

**TE074 3.2.12.6.3**: Tipos permitidos por SGBD documentados em ppds.caixa/Datatypes-SGBD.aspx

### 4.1.2 Identificadores Numéricos

**Padrão CAIXA**: BIGINT para PKs e FKs de tabelas transacionais.

| Tipo | Tamanho | Range | Uso CAIXA |
|------|---------|-------|-----------|
| **TINYINT** | 1 byte | 0 a 255 | Flags, contadores pequenos |
| **SMALLINT** | 2 bytes | -32,768 a 32,767 | Códigos de domínio (<30K) |
| **INT** | 4 bytes | -2.1B a 2.1B | Códigos médios, contadores |
| **BIGINT** | 8 bytes | -9.2E18 a 9.2E18 | **PKs/FKs transacionais (padrão)** |

```sql
-- ✅ CORRETO: BIGINT para PKs transacionais (volumetria alta)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,  -- ✅ Suporta bilhões de contratos
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- ✅ CORRETO: INT para tabelas de domínio (volumetria baixa)
CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,  -- ✅ Máximo 2.1B tipos (suficiente)
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_ID)
);

-- ✅ CORRETO: SMALLINT para flags/códigos pequenos
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR SMALLINT NOT NULL,  -- ✅ Max 360 parcelas (SMALLINT suficiente)
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT CK_CON_PARCELA_NUMERO_RANGE CHECK (NUMERO_PARCELA_NR BETWEEN 1 AND 360)
);

-- ✅ CORRETO: TINYINT para flags booleanos/enums pequenos
CREATE TABLE USU_USUARIO (
    USUARIO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TENTATIVAS_LOGIN_FALHAS_QT TINYINT NOT NULL DEFAULT 0,  -- ✅ 0-255 suficiente
    
    CONSTRAINT PK_USU_USUARIO PRIMARY KEY (USUARIO_ID),
    CONSTRAINT CK_USU_USUARIO_TENTATIVAS_MAX CHECK (TENTATIVAS_LOGIN_FALHAS_QT <= 10)
);

-- ❌ EVITAR: INT para PKs de alta volumetria (limite 2.1B pode ser atingido)
CREATE TABLE TRA_TRANSACAO_ERRADO (
    TRANSACAO_ID INT IDENTITY(1,1) NOT NULL,  -- ❌ Risco: 10M transações/dia = 210 dias até limite
    CONSTRAINT PK_TRA_TRANSACAO_ERRADO PRIMARY KEY (TRANSACAO_ID)
);
```

### 4.1.3 Valores Decimais e Monetários

**Regra CAIXA**: DECIMAL para valores monetários (nunca FLOAT/REAL).

| Tipo | Precisão | Uso |
|------|----------|-----|
| **DECIMAL(p,s)** | Exata | **Valores monetários, percentuais (padrão)** |
| **NUMERIC(p,s)** | Exata (sinônimo DECIMAL) | Igual a DECIMAL |
| **MONEY** | 4 decimais fixos | ❌ Evitar (limitado, problemas arredondamento) |
| **FLOAT/REAL** | Aproximada | ❌ **NUNCA para valores monetários** |

```sql
-- ✅ CORRETO: DECIMAL para valores monetários
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,       -- ✅ 15 dígitos, 2 decimais
    TAXA_JUROS_ANUAL_PC DECIMAL(7,4) NOT NULL,      -- ✅ Percentual: 7 dígitos, 4 decimais
    TAXA_CET_PC DECIMAL(7,4) NULL,                  -- ✅ Custo Efetivo Total
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO CHECK (VALOR_CONTRATO_VL > 0),
    CONSTRAINT CK_CON_CONTRATO_TAXA_RANGE CHECK (TAXA_JUROS_ANUAL_PC BETWEEN 0 AND 100)
);

-- Padrões CAIXA para DECIMAL:
-- Valores monetários: DECIMAL(15,2) - até 999.999.999.999,99 (999 bilhões)
-- Valores monetários grandes: DECIMAL(18,2) - até 999 trilhões
-- Percentuais: DECIMAL(7,4) - até 999,9999%
-- Taxas cambiais: DECIMAL(10,6) - precisão 6 casas decimais

-- ❌ EVITAR: FLOAT/REAL para valores monetários (arredondamento)
CREATE TABLE FIN_LANCAMENTO_ERRADO (
    LANCAMENTO_ID BIGINT NOT NULL,
    VALOR_LANCAMENTO_VL FLOAT NOT NULL,  -- ❌ ERRO: FLOAT tem arredondamento
    
    CONSTRAINT PK_FIN_LANCAMENTO_ERRADO PRIMARY KEY (LANCAMENTO_ID)
);

-- Demonstração do problema:
DECLARE @valor1 FLOAT = 10.35;
DECLARE @valor2 FLOAT = 10.30;
SELECT @valor1 - @valor2;  -- Retorna: 0.0500000000000007 (imprecisão!)

-- ✅ Com DECIMAL (exato):
DECLARE @valorDec1 DECIMAL(10,2) = 10.35;
DECLARE @valorDec2 DECIMAL(10,2) = 10.30;
SELECT @valorDec1 - @valorDec2;  -- Retorna: 0.05 (exato!)
```

### 4.1.4 Strings - VARCHAR vs NVARCHAR

**Regra CAIXA**: Preferir VARCHAR (menor tamanho) exceto para dados Unicode obrigatórios.

| Tipo | Codificação | Tamanho | Uso CAIXA |
|------|-------------|---------|-----------|
| **VARCHAR(n)** | ASCII/Latin1 | 1 byte/char | **Padrão** (nomes, endereços, códigos) |
| **NVARCHAR(n)** | Unicode (UTF-16) | 2 bytes/char | Dados multilíngues, emojis |
| **CHAR(n)** | ASCII fixo | n bytes | Códigos fixos (UF, status) |
| **NCHAR(n)** | Unicode fixo | 2n bytes | Raro (códigos Unicode fixos) |
| **VARCHAR(MAX)** | ASCII variável | Até 2GB | Textos grandes, JSON, XML |
| **NVARCHAR(MAX)** | Unicode variável | Até 2GB | Textos Unicode grandes |

```sql
-- ✅ CORRETO: VARCHAR para dados brasileiros (suficiente)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,           -- ✅ VARCHAR suficiente
    EMAIL_NM VARCHAR(100) NULL,                      -- ✅ ASCII
    LOGRADOURO_NM VARCHAR(200) NOT NULL,             -- ✅ Endereço
    CIDADE_NM VARCHAR(100) NOT NULL,                 -- ✅ Nome cidade
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- ✅ CORRETO: CHAR para códigos fixos
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,                          -- ✅ Sempre 2 caracteres (SP, RJ)
    UF_NM VARCHAR(50) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,             -- ✅ Sempre 1 caractere (A, C, Q)
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S'))
);

-- ✅ NVARCHAR para dados multilíngues
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,                -- ✅ Nome em português
    PRODUTO_NM_INTERNACIONAL NVARCHAR(200) NULL,     -- ✅ Unicode (chinês, árabe, etc.)
    DESCRICAO_DS VARCHAR(MAX) NULL,                  -- ✅ Texto grande português
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

-- ❌ EVITAR: NVARCHAR desnecessário (dobra tamanho)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM NVARCHAR(200) NOT NULL,  -- ❌ 400 bytes vs 200 bytes (VARCHAR)
    CPF_NR NVARCHAR(11) NOT NULL,            -- ❌ Apenas dígitos, VARCHAR suficiente
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CLIENTE_ID)
);

-- Comparação de tamanho:
-- VARCHAR(200): 200 bytes
-- NVARCHAR(200): 400 bytes (2x maior)
-- Impacto: Índices, buffer pool, backup, transferência de rede
```

**Quando usar NVARCHAR:**
1. **Dados multilíngues**: Produtos internacionais, descrições em múltiplos idiomas
2. **Emojis**: Campos que podem conter emojis (redes sociais, mensagens)
3. **Integração externa**: APIs/sistemas que exigem Unicode
4. **Compliance**: Requisitos legais de suporte a múltiplos idiomas

### 4.1.5 Datas e Horários

**Padrão CAIXA**: DATE para datas, DATETIME2(3) para timestamps.

| Tipo | Precisão | Range | Tamanho | Uso CAIXA |
|------|----------|-------|---------|-----------|
| **DATE** | Dia | 0001-01-01 a 9999-12-31 | 3 bytes | **Datas puras (padrão)** |
| **TIME(n)** | Fração de segundo | 00:00:00 a 23:59:59 | 3-5 bytes | Horários sem data |
| **DATETIME2(n)** | Fração de segundo | 0001-01-01 a 9999-12-31 | 6-8 bytes | **Timestamps (padrão)** |
| **DATETIME** | 3.33ms | 1753-01-01 a 9999-12-31 | 8 bytes | ❌ Legado (evitar) |
| **SMALLDATETIME** | 1 minuto | 1900-01-01 a 2079-06-06 | 4 bytes | ❌ Legado (evitar) |
| **DATETIMEOFFSET(n)** | Fração + timezone | 0001-01-01 a 9999-12-31 | 8-10 bytes | Dados globais (UTC) |

```sql
-- ✅ CORRETO: DATE para datas puras (nascimento, vencimento)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,                -- ✅ Apenas data (sem hora)
    DATA_CADASTRO_DT DATE NOT NULL DEFAULT GETDATE(), -- ✅ Data de cadastro
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- ✅ CORRETO: DATETIME2(3) para timestamps completos (auditoria)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,                            -- ✅ Apenas data
    DT_CADASTRO DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),     -- ✅ Timestamp preciso
    DT_ATUALIZACAO DATETIME2(3) NULL,                            -- ✅ Última atualização
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Precisão DATETIME2:
-- DATETIME2(0): 1 segundo (6 bytes)
-- DATETIME2(3): 1 milissegundo (7 bytes) - ✅ Recomendado CAIXA
-- DATETIME2(7): 100 nanosegundos (8 bytes) - Máxima precisão

-- ✅ CORRETO: DATETIMEOFFSET para dados globais
CREATE TABLE TRA_TRANSACAO_INTERNACIONAL (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_TRANSACAO_UTC_DT DATETIMEOFFSET(3) NOT NULL,  -- ✅ Timestamp + timezone
    
    CONSTRAINT PK_TRA_TRANSACAO_INTERNACIONAL PRIMARY KEY (TRANSACAO_ID)
);

-- Exemplo DATETIMEOFFSET:
INSERT INTO TRA_TRANSACAO_INTERNACIONAL (DATA_TRANSACAO_UTC_DT)
VALUES (SYSDATETIMEOFFSET());  -- '2026-01-06 14:30:25.123 -03:00'

-- ❌ EVITAR: DATETIME (legado, limitações)
CREATE TABLE LOG_EVENTO_ERRADO (
    EVENTO_ID BIGINT NOT NULL,
    DATA_EVENTO_DT DATETIME NOT NULL,  -- ❌ Precisão limitada (3.33ms), range limitado
    
    CONSTRAINT PK_LOG_EVENTO_ERRADO PRIMARY KEY (EVENTO_ID)
);

-- Problemas DATETIME:
-- 1. Precisão: 3.33ms (vs DATETIME2 com precisão de milissegundos)
-- 2. Range: 1753-01-01 (vs DATETIME2 desde 0001-01-01)
-- 3. Tamanho: 8 bytes (vs DATETIME2(3) com 7 bytes)
```

**Boas Práticas:**
1. **Datas de vencimento/nascimento**: DATE (sem necessidade de hora)
2. **Auditoria (DT_CADASTRO, DT_ATUALIZACAO)**: DATETIME2(3)
3. **Logs de aplicação**: DATETIME2(3) ou DATETIME2(7) (alta precisão)
4. **Sistemas globais**: DATETIMEOFFSET (preserva timezone)

### 4.1.6 Booleanos e Flags

**SQL Server não tem tipo BOOLEAN nativo**. Usar CHAR(1) ou BIT.

| Tipo | Tamanho | Valores | Uso CAIXA |
|------|---------|---------|-----------|
| **CHAR(1)** | 1 byte | 'S'/'N', 'A'/'I' | **Padrão CAIXA** (legibilidade) |
| **BIT** | 1 bit (agrupado) | 0/1 | Flags técnicos (menor tamanho) |

```sql
-- ✅ CORRETO: CHAR(1) para flags de negócio (padrão CAIXA)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL DEFAULT 'S',           -- ✅ S/N (legível)
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',        -- ✅ Soft delete
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',       -- ✅ Contrato principal
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_ATIVO CHECK (ATIVO_IN IN ('S', 'N')),
    CONSTRAINT CK_CON_CONTRATO_DELETADO CHECK (DELETADO_IN IN ('S', 'N')),
    CONSTRAINT CK_CON_CONTRATO_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- ✅ BIT para flags técnicos (economia de espaço)
CREATE TABLE CFG_CONFIGURACAO (
    CONFIGURACAO_ID INT IDENTITY(1,1) NOT NULL,
    CACHE_HABILITADO_IN BIT NOT NULL DEFAULT 1,      -- ✅ 0/1
    LOG_DEBUG_HABILITADO_IN BIT NOT NULL DEFAULT 0,  -- ✅ Performance flag
    COMPACTACAO_ATIVA_IN BIT NOT NULL DEFAULT 1,     -- ✅ Técnico
    
    CONSTRAINT PK_CFG_CONFIGURACAO PRIMARY KEY (CONFIGURACAO_ID)
);

-- Comparação:
-- CHAR(1): 1 byte/coluna = 3 bytes para 3 flags
-- BIT: 1 byte para até 8 flags (agrupadas pelo SQL Server)

-- Consultas:
-- CHAR(1): WHERE ATIVO_IN = 'S'  (✅ Mais legível)
-- BIT: WHERE CACHE_HABILITADO_IN = 1  (ou = 0)
```

**Recomendação**: CHAR(1) para flags de negócio (usuários entendem 'S'/'N'), BIT para flags técnicos.

### 4.1.7 Tipos Binários e JSON/XML

| Tipo | Tamanho Max | Uso |
|------|-------------|-----|
| **VARBINARY(n)** | 8000 bytes | Dados binários pequenos |
| **VARBINARY(MAX)** | 2GB | Arquivos, imagens, criptografia |
| **NVARCHAR(MAX)** | 2GB | JSON, XML |

```sql
-- ✅ Criptografia (Always Encrypted, TDE)
CREATE TABLE CLI_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,
    CPF_CRIPTOGRAFADO_BIN VARBINARY(256) NOT NULL,   -- ✅ CPF criptografado
    NUMERO_CONTA_BIN VARBINARY(256) NULL,            -- ✅ Conta bancária criptografada
    
    CONSTRAINT PK_CLI_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID)
);

-- ✅ JSON (para dados semi-estruturados)
CREATE TABLE LOG_EVENTO (
    EVENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_EVENTO_TP VARCHAR(50) NOT NULL,
    PAYLOAD_JSON NVARCHAR(MAX) NULL,                 -- ✅ JSON para dados variáveis
    
    CONSTRAINT PK_LOG_EVENTO PRIMARY KEY (EVENTO_ID),
    CONSTRAINT CK_LOG_EVENTO_JSON_VALIDO CHECK (ISJSON(PAYLOAD_JSON) = 1)  -- ✅ Valida JSON
);

-- Consulta JSON:
SELECT 
    EVENTO_ID,
    JSON_VALUE(PAYLOAD_JSON, '$.usuario') AS Usuario,
    JSON_VALUE(PAYLOAD_JSON, '$.acao') AS Acao
FROM LOG_EVENTO
WHERE JSON_VALUE(PAYLOAD_JSON, '$.nivel') = 'ERROR';

-- ✅ XML (para dados estruturados)
CREATE TABLE CFG_CONFIGURACAO_XML (
    CONFIGURACAO_ID INT IDENTITY(1,1) NOT NULL,
    CONFIGURACAO_XML XML NOT NULL,                   -- ✅ Tipo XML nativo
    
    CONSTRAINT PK_CFG_CONFIGURACAO_XML PRIMARY KEY (CONFIGURACAO_ID)
);
```

**TE074 3.2.12.6.2**: BLOB e CLOB avaliados com ABD (performance, volume).

---

## 4.2 Compactação de Dados (TE074 3.2.9)

### 4.2.1 Fundamentos de Compactação

**TE074 3.2.9.1**: Toda nova tabela tem indicação de compactação:
- **SQL Server**: DATA_COMPRESSION PAGE (padrão)
- **Oracle**: COMPRESS BASIC
- **DB2**: COMPRESS YES

**Benefícios:**
1. **Redução de espaço em disco**: 40-70% de economia
2. **Menos I/O**: Menos páginas lidas
3. **Melhor cache**: Mais dados na memória
4. **Backup menor**: Redução de tempo e espaço

**Trade-off**: CPU adicional para compactar/descompactar (geralmente compensado pelo I/O reduzido).

**TE074 3.2.9.3**: Não usar compactação requer relatório técnico ABD.

### 4.2.2 Tipos de Compactação SQL Server

| Tipo | Nível | Economia | CPU | Uso |
|------|-------|----------|-----|-----|
| **ROW** | Linha | 15-35% | Baixo | Tabelas quentes (muitos UPDATEs) |
| **PAGE** | Página | 40-70% | Médio | **Padrão CAIXA** (melhor custo-benefício) |
| **COLUMNSTORE** | Coluna | 70-90% | Alto | DW, analytics (leituras massivas) |

```sql
-- ✅ PADRÃO CAIXA: PAGE compression (melhor custo-benefício)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- ✅ ROW compression (tabelas quentes com muitas atualizações)
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    DATA_TRANSACAO_DT DATETIME2(3) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY (TRANSACAO_ID)
) WITH (DATA_COMPRESSION = ROW);

-- ✅ Compactação em índices
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_DATA_ASSINATURA
    ON CON_CONTRATO(DATA_ASSINATURA_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WITH (DATA_COMPRESSION = PAGE);

-- ✅ Compactação por partição (diferentes níveis)
CREATE TABLE TRA_TRANSACAO_PARTICIONADA (
    TRANSACAO_ID BIGINT NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,
    VALOR_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO_PARTICIONADA PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT)
WITH (
    DATA_COMPRESSION = PAGE ON PARTITIONS(1 TO 11),  -- Partições antigas: PAGE
    DATA_COMPRESSION = ROW ON PARTITIONS(12)         -- Partição atual: ROW (quente)
);

-- Alterar compactação de tabela existente
ALTER TABLE CON_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);

-- Alterar compactação de índice
ALTER INDEX IDX_CON_CONTRATO_DATA_ASSINATURA ON CON_CONTRATO
    REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 4.2.3 Análise de Compactação

```sql
-- Estimar economia de compactação (antes de aplicar)
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'CON_CONTRATO',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';

-- Resultado exemplo:
-- object_name | current_size_KB | compressed_size_KB | sample_size_current_KB | sample_size_compressed_KB
-- CON_CONTRATO | 512000         | 204800             | 51200                  | 20480
-- Economia: 60%

-- Verificar compactação atual de todas as tabelas
SELECT 
    s.name AS SchemaName,
    t.name AS TableName,
    p.partition_number AS PartitionNumber,
    p.data_compression_desc AS CompressionType,
    p.rows AS RowCount,
    CAST(SUM(a.total_pages) * 8 / 1024.0 AS DECIMAL(10,2)) AS SizeMB
FROM sys.tables t
INNER JOIN sys.schemas s ON s.schema_id = t.schema_id
INNER JOIN sys.partitions p ON p.object_id = t.object_id
INNER JOIN sys.allocation_units a ON a.container_id = p.partition_id
WHERE t.is_ms_shipped = 0
GROUP BY s.name, t.name, p.partition_number, p.data_compression_desc, p.rows
ORDER BY SizeMB DESC;
```

**Recomendações:**
1. **Tabelas transacionais**: PAGE compression (padrão)
2. **Tabelas históricas**: PAGE compression (maior economia)
3. **Tabelas de log**: ROW compression (escrita intensiva)
4. **Tabelas quentes (OLTP)**: ROW compression (menor CPU)
5. **Tabelas de analytics**: COLUMNSTORE compression

---

## 4.3 Particionamento (TE074 3.2.8)

### 4.3.1 Critérios para Particionamento

**TE074 3.2.8.1**: Critérios para particionamento:
- Volume inicial de dados
- Taxa de crescimento
- Características negociais (sazonalidade)
- Características do SGBD

**TE074 3.2.8.3**: Tabelas com > 100M linhas/ano devem ser sinalizadas no relatório ADI e consultar ABD.

**TE074 3.2.8.2**: Parecer ABD obrigatório para particionamento.

**Benefícios:**
1. **Performance de consultas**: Partition elimination (lê apenas partições necessárias)
2. **Manutenção**: REBUILD/REORGANIZE por partição
3. **Archiving**: Trocar partições antigas por tabelas de histórico
4. **Backup/Restore**: Por partição (mais rápido)

### 4.3.2 Estratégias de Particionamento SQL Server

**Particionamento por data (mais comum):**

```sql
-- 1. Criar função de partição (RANGE RIGHT = limite superior de cada partição)
CREATE PARTITION FUNCTION PF_TRANSACAO_MENSAL (DATE)
AS RANGE RIGHT FOR VALUES (
    '2025-02-01',  -- Partição 1: < 2025-02-01
    '2025-03-01',  -- Partição 2: >= 2025-02-01 AND < 2025-03-01
    '2025-04-01',  -- Partição 3: >= 2025-03-01 AND < 2025-04-01
    '2025-05-01',  -- Partição 4: >= 2025-04-01 AND < 2025-05-01
    '2025-06-01',  -- Partição 5: >= 2025-05-01 AND < 2025-06-01
    '2025-07-01',  -- Partição 6: >= 2025-07-01 AND < 2025-07-01
    '2025-08-01',
    '2025-09-01',
    '2025-10-01',
    '2025-11-01',
    '2025-12-01',
    '2026-01-01'   -- Partição 12: >= 2025-12-01 AND < 2026-01-01
);

-- 2. Criar esquema de partição (mapear partições para filegroups)
CREATE PARTITION SCHEME PS_TRANSACAO_MENSAL
AS PARTITION PF_TRANSACAO_MENSAL
ALL TO ([PRIMARY]);  -- Simplificado: todas em PRIMARY (ideal: filegroups separados)

-- 3. Criar tabela particionada
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,                 -- ✅ Coluna de particionamento
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY NONCLUSTERED (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT);

-- Clustered index na coluna de particionamento (aligned)
CREATE CLUSTERED INDEX CIX_TRA_TRANSACAO_DATA
    ON TRA_TRANSACAO(DATA_TRANSACAO_DT)
    ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT);

-- Índice não particionado (opcional, para queries que não filtram por data)
CREATE NONCLUSTERED INDEX IDX_TRA_TRANSACAO_NUMERO
    ON TRA_TRANSACAO(NUMERO_TRANSACAO_NR)
    INCLUDE (DATA_TRANSACAO_DT, VALOR_TRANSACAO_VL);
```

**Consultar dados particionados (partition elimination):**

```sql
-- ✅ Partition elimination: Lê apenas partição de dezembro 2025
SELECT * FROM TRA_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2025-12-01' 
  AND DATA_TRANSACAO_DT < '2026-01-01';

-- Verificar partições acessadas (query plan mostra "Partition Number: 12")

-- ❌ Sem filtro por data: Lê todas as partições
SELECT * FROM TRA_TRANSACAO
WHERE NUMERO_TRANSACAO_NR = '123456789';
```

### 4.3.3 Manutenção de Partições

```sql
-- Adicionar nova partição (próximo mês)
ALTER PARTITION SCHEME PS_TRANSACAO_MENSAL
    NEXT USED [PRIMARY];

ALTER PARTITION FUNCTION PF_TRANSACAO_MENSAL()
    SPLIT RANGE ('2026-02-01');

-- Arquivar partição antiga (trocar por tabela de histórico)
-- 1. Criar tabela de histórico (estrutura idêntica)
CREATE TABLE TRA_TRANSACAO_2025_01 (
    TRANSACAO_ID BIGINT NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO_2025_01 PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT),
    CONSTRAINT CK_TRA_TRANSACAO_2025_01_DATA CHECK (
        DATA_TRANSACAO_DT >= '2025-01-01' AND DATA_TRANSACAO_DT < '2025-02-01'
    )
) ON [HISTORICAL];  -- Filegroup de histórico (storage secundário)

-- 2. Trocar partição 1 pela tabela de histórico
ALTER TABLE TRA_TRANSACAO
SWITCH PARTITION 1 TO TRA_TRANSACAO_2025_01;

-- 3. Mesclar partição vazia (opcional, liberar limites)
ALTER PARTITION FUNCTION PF_TRANSACAO_MENSAL()
    MERGE RANGE ('2025-02-01');

-- Verificar estatísticas de partições
SELECT 
    OBJECT_NAME(p.object_id) AS TableName,
    p.partition_number AS PartitionNumber,
    p.rows AS RowCount,
    fg.name AS FileGroupName,
    prv.value AS PartitionBoundary
FROM sys.partitions p
INNER JOIN sys.indexes i ON i.object_id = p.object_id AND i.index_id = p.index_id
INNER JOIN sys.partition_schemes ps ON ps.data_space_id = i.data_space_id
INNER JOIN sys.partition_functions pf ON pf.function_id = ps.function_id
INNER JOIN sys.destination_data_spaces dds ON dds.partition_scheme_id = ps.data_space_id 
    AND dds.destination_id = p.partition_number
INNER JOIN sys.filegroups fg ON fg.data_space_id = dds.data_space_id
LEFT JOIN sys.partition_range_values prv ON prv.function_id = pf.function_id 
    AND prv.boundary_id = p.partition_number
WHERE OBJECT_NAME(p.object_id) = 'TRA_TRANSACAO'
ORDER BY p.partition_number;
```

### 4.3.4 Particionamento por Hash (distribuição uniforme)

**Quando usar**: Dados sem range natural (IDs, GUIDs).

```sql
-- Função de partição por HASH (4 partições)
CREATE PARTITION FUNCTION PF_CLIENTE_HASH (BIGINT)
AS RANGE LEFT FOR VALUES (
    2500000000000000000,  -- 25% dos BIGINT
    5000000000000000000,  -- 50%
    7500000000000000000   -- 75%
);  -- 4 partições: <25%, 25-50%, 50-75%, >75%

CREATE PARTITION SCHEME PS_CLIENTE_HASH
AS PARTITION PF_CLIENTE_HASH
TO (FG1, FG2, FG3, FG4);  -- 4 filegroups

-- Tabela particionada por CLIENTE_ID (hash-like distribution)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
) ON PS_CLIENTE_HASH(CLIENTE_ID);
```

**TE074 3.2.8.6**: Tabelas HISTORICO/AUXILIAR podem usar mesmo critério de particionamento da tabela principal.

---

## 4.4 Indexação Avançada

### 4.4.1 Covering Indexes (Índices de Cobertura)

**Definição**: Índice que contém **todas** as colunas necessárias para uma query (evita lookup na tabela).

```sql
-- Query frequente: Buscar contratos por cliente
SELECT NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP
FROM CON_CONTRATO
WHERE CLIENTE_ID = 12345
  AND STATUS_CONTRATO_TP = 'A';

-- ❌ Índice simples (não covering): Requer lookup
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS
    ON CON_CONTRATO(CLIENTE_ID, STATUS_CONTRATO_TP);

-- Execution plan: Index Seek + Key Lookup (caro)

-- ✅ Covering index: Todas as colunas incluídas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS_COVERING
    ON CON_CONTRATO(CLIENTE_ID, STATUS_CONTRATO_TP)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- Execution plan: Index Seek apenas (sem lookup)
```

**Ordem das colunas no índice:**
1. **WHERE (filtro)**: Colunas mais seletivas primeiro
2. **JOIN**: Colunas de junção
3. **ORDER BY**: Colunas de ordenação
4. **INCLUDE**: Colunas de retorno (não participam da chave)

### 4.4.2 Filtered Indexes (Índices Filtrados)

**Definição**: Índice que cobre apenas um **subconjunto** dos dados (WHERE clause).

```sql
-- Cenário: 95% dos contratos são ativos (STATUS = 'A'), 5% cancelados/quitados

-- ❌ Índice completo: Desperdiça espaço em contratos inativos
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_STATUS
    ON CON_CONTRATO(STATUS_CONTRATO_TP, DATA_ASSINATURA_DT);

-- ✅ Filtered index: Apenas contratos ativos (menor, mais eficiente)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVOS
    ON CON_CONTRATO(DATA_ASSINATURA_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WHERE STATUS_CONTRATO_TP = 'A' AND DELETADO_IN = 'N';

-- Query otimizada automaticamente:
SELECT * FROM CON_CONTRATO
WHERE STATUS_CONTRATO_TP = 'A' 
  AND DELETADO_IN = 'N'
  AND DATA_ASSINATURA_DT >= '2025-01-01';
-- Usa índice filtrado automaticamente

-- Casos de uso filtered indexes:
-- 1. Soft delete (WHERE DELETADO_IN = 'N')
-- 2. Registros ativos (WHERE ATIVO_IN = 'S')
-- 3. Dados recentes (WHERE DATA_CADASTRO_DT >= '2025-01-01')
-- 4. Flags específicos (WHERE TIPO_TP = 'PREMIUM')
```

### 4.4.3 Columnstore Indexes (Colunar)

**Quando usar**: Analytics, DW, queries de agregação massiva.

**❌ Não usar para**: OLTP, queries de linha única, muitas atualizações.

```sql
-- Tabela de fatos (DW/Analytics)
CREATE TABLE FAT_VENDAS (
    VENDA_ID BIGINT NOT NULL,
    DATA_VENDA_DT DATE NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    VALOR_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL
);

-- ✅ Clustered Columnstore Index (ideal para DW)
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FAT_VENDAS ON FAT_VENDAS;

-- Query analítica (billions de linhas, agregação):
SELECT 
    YEAR(DATA_VENDA_DT) AS Ano,
    MONTH(DATA_VENDA_DT) AS Mes,
    SUM(VALOR_TOTAL_VL) AS TotalVendas,
    COUNT(*) AS QtdVendas
FROM FAT_VENDAS
WHERE DATA_VENDA_DT >= '2020-01-01'
GROUP BY YEAR(DATA_VENDA_DT), MONTH(DATA_VENDA_DT)
ORDER BY Ano, Mes;

-- Performance: 10-100x mais rápido que rowstore
-- Compactação: 70-90% de economia

-- ✅ Nonclustered Columnstore (OLTP com analytics)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)  -- Rowstore (OLTP)
);

-- Columnstore adicional para analytics (operational analytics)
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_CON_CONTRATO_ANALYTICS
    ON CON_CONTRATO (DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- OLTP: Usa PK (rowstore)
SELECT * FROM CON_CONTRATO WHERE CONTRATO_ID = 12345;

-- Analytics: Usa columnstore
SELECT YEAR(DATA_ASSINATURA_DT), SUM(VALOR_CONTRATO_VL)
FROM CON_CONTRATO
GROUP BY YEAR(DATA_ASSINATURA_DT);
```

---

## 4.5 Auditoria Nativa SQL Server

### 4.5.1 Temporal Tables (Tabelas Temporais)

**SQL Server 2016+**: Histórico automático de alterações.

**Vantagens sobre triggers manuais:**
1. **Performance**: Otimizado internamente
2. **Simplicidade**: Automático (sem código)
3. **Consistência**: Sempre habilitado
4. **Queries time-travel**: AS OF, FROM...TO

```sql
-- ✅ Criar tabela com system-versioning (temporal table)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Colunas de período (gerenciadas automaticamente)
    VALID_FROM DATETIME2(3) GENERATED ALWAYS AS ROW START NOT NULL,
    VALID_TO DATETIME2(3) GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (VALID_FROM, VALID_TO),
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
)
WITH (
    SYSTEM_VERSIONING = ON (
        HISTORY_TABLE = dbo.CON_CONTRATO_HISTORY,  -- Tabela de histórico
        DATA_CONSISTENCY_CHECK = ON
    )
);

-- Sistema automaticamente:
-- 1. Cria CON_CONTRATO_HISTORY
-- 2. Popula VALID_FROM/VALID_TO
-- 3. Move versões antigas para HISTORY em cada UPDATE/DELETE

-- Inserção (automática):
INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP)
VALUES ('2026/00001', 250000.00, 'A');
-- VALID_FROM = 2026-01-06 14:30:25.123
-- VALID_TO = 9999-12-31 23:59:59.999 (current)

-- Atualização (histórico automático):
UPDATE CON_CONTRATO
SET STATUS_CONTRATO_TP = 'Q'
WHERE CONTRATO_ID = 1;

-- Sistema move versão antiga para CON_CONTRATO_HISTORY:
-- VALID_FROM = 2026-01-06 14:30:25.123
-- VALID_TO = 2026-01-06 15:45:10.456 (momento do UPDATE)

-- Nova versão em CON_CONTRATO:
-- VALID_FROM = 2026-01-06 15:45:10.456
-- VALID_TO = 9999-12-31 23:59:59.999

-- ✅ Consultar histórico (AS OF)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME AS OF '2026-01-06 14:35:00'
WHERE CONTRATO_ID = 1;
-- Retorna: STATUS = 'A' (antes do UPDATE)

-- ✅ Consultar todas as versões (ALL)
SELECT 
    CONTRATO_ID,
    NUMERO_CONTRATO_NR,
    STATUS_CONTRATO_TP,
    VALID_FROM,
    VALID_TO
FROM CON_CONTRATO
FOR SYSTEM_TIME ALL
WHERE CONTRATO_ID = 1
ORDER BY VALID_FROM DESC;

-- ✅ Consultar período (FROM...TO)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME FROM '2026-01-01' TO '2026-01-31'
WHERE CLIENTE_ID = 12345;

-- ✅ Consultar apenas alterações (BETWEEN)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME BETWEEN '2026-01-06 14:00:00' AND '2026-01-06 16:00:00'
ORDER BY VALID_FROM;
```

**Desabilitar/Habilitar System-Versioning:**

```sql
-- Desabilitar temporariamente (para manutenção em massa)
ALTER TABLE CON_CONTRATO SET (SYSTEM_VERSIONING = OFF);

-- Fazer alterações em massa...

-- Reabilitar
ALTER TABLE CON_CONTRATO SET (
    SYSTEM_VERSIONING = ON (
        HISTORY_TABLE = dbo.CON_CONTRATO_HISTORY
    )
);
```

### 4.5.2 Change Tracking (Rastreamento de Alterações)

**Quando usar**: Sincronização entre bancos, ETL incremental, cache invalidation.

**Diferença de Temporal Tables**: Change Tracking rastreia **quais linhas mudaram**, não o **valor anterior**.

```sql
-- Habilitar Change Tracking no banco
ALTER DATABASE MeuBanco
SET CHANGE_TRACKING = ON (
    CHANGE_RETENTION = 7 DAYS,      -- Manter por 7 dias
    AUTO_CLEANUP = ON
);

-- Habilitar Change Tracking na tabela
ALTER TABLE CON_CONTRATO
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = ON);  -- Rastrear quais colunas mudaram

-- Obter versão atual
DECLARE @current_version BIGINT = CHANGE_TRACKING_CURRENT_VERSION();

-- Inserções/Atualizações/Deleções...

-- Obter mudanças desde última sincronização
SELECT 
    ct.CONTRATO_ID,
    ct.SYS_CHANGE_OPERATION,  -- I=Insert, U=Update, D=Delete
    ct.SYS_CHANGE_VERSION,
    ct.SYS_CHANGE_CONTEXT,
    con.*
FROM CHANGETABLE(CHANGES CON_CONTRATO, @last_sync_version) AS ct
LEFT JOIN CON_CONTRATO con ON con.CONTRATO_ID = ct.CONTRATO_ID;

-- Uso típico (ETL incremental):
-- 1. Guardar @current_version após sync
-- 2. Próxima sync: Buscar mudanças desde @last_version
-- 3. Aplicar mudanças no destino
-- 4. Atualizar @last_version = @current_version
```

---

## 4.6 Valores Default e Computed Columns

### 4.6.1 Constraints DEFAULT

**TE074 3.2.12.5**: Cuidado com DEFAULT (perdura, pode divergir da atuação esperada em inserções futuras).

```sql
-- ✅ DEFAULT para auditoria (padrão CAIXA)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- DEFAULT para timestamps
    DT_CADASTRO DATETIME2(3) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT SYSDATETIME(),
    
    -- DEFAULT para usuário
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO DEFAULT SUSER_SNAME(),
    
    -- DEFAULT para soft delete
    DELETADO_IN CHAR(1) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Inserção (DEFAULTs aplicados automaticamente)
INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, VALOR_VL, STATUS_TP)
VALUES ('2026/00001', 250000.00, 'A');
-- DT_CADASTRO = SYSDATETIME() automaticamente
-- USUARIO_CADASTRO_NM = 'USUARIO_SQL' automaticamente
-- DELETADO_IN = 'N' automaticamente

-- ⚠️ CUIDADO: DEFAULT com regras de negócio variáveis
CREATE TABLE PED_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    TAXA_ENTREGA_VL DECIMAL(10,2) NOT NULL 
        CONSTRAINT DF_PED_PEDIDO_TAXA DEFAULT 15.00,  -- ⚠️ Taxa pode mudar!
    
    CONSTRAINT PK_PED_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID)
);

-- Problema: Se taxa de entrega mudar para R$ 20,
-- DEFAULT continua 15 (não reflete mudança de negócio)

-- ✅ MELHOR: Buscar de tabela de parâmetros
CREATE TABLE CFG_PARAMETRO (
    PARAMETRO_CD VARCHAR(50) NOT NULL,
    PARAMETRO_VALOR_VL VARCHAR(200) NOT NULL,
    CONSTRAINT PK_CFG_PARAMETRO PRIMARY KEY (PARAMETRO_CD)
);

INSERT INTO CFG_PARAMETRO VALUES ('TAXA_ENTREGA_PADRAO', '15.00');

-- Aplicação busca valor atual:
SELECT CAST(PARAMETRO_VALOR_VL AS DECIMAL(10,2))
FROM CFG_PARAMETRO
WHERE PARAMETRO_CD = 'TAXA_ENTREGA_PADRAO';
```

### 4.6.2 Computed Columns (Colunas Calculadas)

**Tipos:**
1. **Non-persisted** (virtual): Calculada em cada SELECT (não ocupa espaço)
2. **PERSISTED** (persistida): Calculada no INSERT/UPDATE, armazenada fisicamente (pode ter índice)

```sql
-- ✅ Computed column não persistida (cálculo simples)
CREATE TABLE PED_PEDIDO_ITEM (
    ITEM_ID BIGINT IDENTITY(1,1) NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    
    -- Calculated (não armazenada fisicamente)
    VALOR_TOTAL_VL AS (QUANTIDADE_QT * PRECO_UNITARIO_VL),
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (ITEM_ID)
);

-- SELECT: VALOR_TOTAL_VL calculado automaticamente
SELECT ITEM_ID, QUANTIDADE_QT, PRECO_UNITARIO_VL, VALOR_TOTAL_VL
FROM PED_PEDIDO_ITEM;

-- ✅ Computed column PERSISTIDA (permite índice)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_PRODUTOS_VL DECIMAL(15,2) NOT NULL,
    VALOR_FRETE_VL DECIMAL(15,2) NOT NULL,
    VALOR_DESCONTO_VL DECIMAL(15,2) NOT NULL,
    
    -- PERSISTED: Armazenada fisicamente (ocupa espaço, mas permite índice)
    VALOR_TOTAL_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL) PERSISTED,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Índice em computed column (requer PERSISTED)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_VALOR_TOTAL
    ON CON_CONTRATO(VALOR_TOTAL_VL);

-- Query otimizada:
SELECT * FROM CON_CONTRATO
WHERE VALOR_TOTAL_VL > 100000;
-- Usa índice em VALOR_TOTAL_VL

-- ✅ Computed column com função
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    
    -- Uppercase automático
    NOME_UPPER_NM AS (UPPER(NOME_CLIENTE_NM)) PERSISTED,
    
    -- Domínio do email
    EMAIL_DOMINIO_NM AS (
        CASE 
            WHEN EMAIL_NM IS NULL THEN NULL
            ELSE SUBSTRING(EMAIL_NM, CHARINDEX('@', EMAIL_NM) + 1, 100)
        END
    ) PERSISTED,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Buscar por domínio de email (usa computed column)
SELECT * FROM CLI_CLIENTE
WHERE EMAIL_DOMINIO_NM = 'caixa.gov.br';
```

**Quando usar PERSISTED:**
1. **Índice necessário** (computed column deve ser PERSISTED)
2. **Cálculo complexo** (evitar recalcular a cada SELECT)
3. **Agregações** (SUM, COUNT em queries frequentes)
4. **Funções determinísticas** (mesmo input = mesmo output)

**Quando NÃO usar PERSISTED:**
1. **Cálculo simples** (multiplicação, soma) - overhead desnecessário
2. **Tabelas com muitas escritas** (recalcula a cada UPDATE)
3. **Funções não determinísticas** (GETDATE(), NEWID()) - não permitido em PERSISTED

---

**📊 Status da PARTE 4**: ✅ **COMPLETA**

**Resumo PARTE 4**:
- ✅ 4.1: Tipos de Dados (BIGINT para PKs, DECIMAL para monetários, VARCHAR vs NVARCHAR, DATE/DATETIME2)
- ✅ 4.2: Compactação (PAGE padrão, ROW para quentes, economia 40-70%)
- ✅ 4.3: Particionamento (>100M linhas/ano, RANGE RIGHT/LEFT, partition elimination)
- ✅ 4.4: Indexação Avançada (covering, filtered, columnstore)
- ✅ 4.5: Auditoria Nativa (temporal tables, change tracking)
- ✅ 4.6: DEFAULT e Computed Columns (PERSISTED para índices)

**Validações TE074**:
- ✅ 3.2.9.1: Compactação PAGE obrigatória em novas tabelas
- ✅ 3.2.8.3: Tabelas >100M linhas/ano sinalizadas no ADI
- ✅ 3.2.12.5: Cuidado com DEFAULT (perdura)
- ✅ 3.2.12.6: Tipos sem tamanho (BIGINT) com campo personalizado preenchido

**Próxima PARTE**: PARTE 5 - Ciclo de Vida, Frameworks e Validações

---

# PARTE 5: CICLO DE VIDA, FRAMEWORKS E VALIDAÇÕES
## SUB-PARTE 5.1: Ciclo de Vida dos Dados e LGPD (Parte 1 de 4)

> **Objetivo desta SUB-PARTE**: Definir políticas de retenção, arquivamento, expurgo de dados e conformidade com LGPD/CR439.  
> **Abrangência**: Seções 5.1 e 5.2  
> **Base normativa**: TE074 3.2.10, CR439, OR016, Lei Geral de Proteção de Dados (Lei nº 13.709/2018)

---

## 5.1 Ciclo de Vida dos Dados (TE074 3.2.10)

### 5.1.1 Visão Geral

O **ciclo de vida dos dados** define:
- **Retenção online**: Prazo que os dados permanecem na base transacional
- **Arquivamento**: Migração para tabelas históricas/auxiliares
- **Expurgo**: Remoção definitiva após fim do ciclo de vida

**Base normativa TE074 3.2.10**:
> "Definir o ciclo de vida dos dados, considerando:  
> - O prazo máximo de retenção baseado em regras de negócio, normas externas, leis e/ou normativos;  
> - Os dados na base online são mantidos por prazo necessário e suficiente;  
> - Dados que não necessitem permanecer nas Tabelas Transacionais são migrados para Tabelas Históricas ou Auxiliares a fim de garantir performance."

**Referência PPDS**:  
📖 [Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ciclo-de-Vida-dos-Dados.aspx)

---

### 5.1.2 Retenção Online (Base Transacional)

#### Critérios para Definição de Prazo

O **prazo de retenção online** é definido pelo **gestor da informação** considerando:

| Critério | Descrição | Exemplo |
|----------|-----------|---------|
| **Regras de negócio** | Tempo necessário para consultas operacionais | Contratos ativos: até quitação |
| **Normas externas** | Legislação fiscal, trabalhista, bancária | Comprovantes fiscais: 5 anos |
| **Performance** | Impacto de grandes volumes em queries OLTP | Tabelas >100M linhas: histórico necessário |
| **Custo de armazenamento** | Equilíbrio entre disponibilidade e custo | Logs: 90 dias online, resto arquivado |

**Obrigação do modelador (TE074 3.2.10.2.1)**:
> "A equipe de desenvolvimento registra em campos apropriados no modelo de dados o que foi definido pelo gestor e, preferencialmente, informa a qual coluna está vinculada."

#### Campos Obrigatórios no PowerDesigner

**Propriedades do objeto TABLE**:
```
RETENTION_POLICY: "5 anos base online, 10 anos histórico, expurgo após" 
RETENTION_COLUMN: "DT_CADASTRO" (coluna referência para cálculo)
BUSINESS_JUSTIFICATION: "Exigência Receita Federal IN 1.700/2017"
LIFECYCLE_OWNER: "Gerente Nacional Crédito Imobiliário"
```

**Exemplo: Contratos Habitacionais**

```sql
-- Tabela transacional (contratos ativos até quitação + 90 dias)
CREATE TABLE FIN_CONTRATO_HABITACIONAL (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NULL,  -- Gatilho para migração histórico
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL DEFAULT 'A',  -- A=Ativo, Q=Quitado, C=Cancelado
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    DT_ATUALIZACAO DATETIME2,
    USUARIO_ATUALIZACAO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABITACIONAL PRIMARY KEY (CONTRATO_HABITACIONAL_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela histórica (contratos quitados há mais de 90 dias)
CREATE TABLE FIN_CONTRATO_HABITACIONAL_HIST (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NOT NULL,  -- Obrigatório no histórico
    DT_MIGRACAO_HISTORICO DATETIME2 NOT NULL DEFAULT GETDATE(),
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,
    -- Auditoria (preservada da origem)
    DT_CADASTRO DATETIME2,
    USUARIO_CADASTRO_NM VARCHAR(50),
    DT_ATUALIZACAO DATETIME2,
    USUARIO_ATUALIZACAO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABIT_HIST PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) WITH (DATA_COMPRESSION = PAGE);

-- Índice para queries por data de quitação
CREATE INDEX IX_FIN_CONTRATO_HABIT_HIST_DT_QUIT 
ON FIN_CONTRATO_HABITACIONAL_HIST (DT_QUITACAO, DT_MIGRACAO_HISTORICO);
```

**Política de ciclo de vida documentada**:
```
Retenção online: Contratos ativos (STATUS='A') + 90 dias após quitação
Arquivamento: Contratos com DT_QUITACAO < GETDATE() - 90 (migração automática mensal)
Expurgo histórico: Após 10 anos da quitação (conformidade com prazo legal contratos habitacionais)
Coluna referência: DT_QUITACAO
Responsável: Gerente Nacional Crédito Imobiliário
```

---

### 5.1.3 Arquivamento (Migração para Histórico)

#### Diferença entre Tabelas Históricas e Auxiliares

| Tipo | Sufixo | Finalidade | Cardinalidade | Exemplo |
|------|--------|------------|---------------|---------|
| **Histórica** | `_HIST` | Dados inativos (completos) | 1:N temporal | `FIN_CONTRATO_HABITACIONAL_HIST` |
| **Auxiliar** | `_AUX` | Dados de apoio (referência) | 1:1 ou 1:N | `PES_CLIENTE_DADOS_COMERCIAIS_AUX` |

**Tabela Histórica (_HIST)**:
- **Quando usar**: Armazenar versões temporais de registros inativos (após conclusão do ciclo operacional)
- **PK**: ID original + data de migração/versão
- **Conteúdo**: Cópia completa do registro transacional no momento do arquivamento
- **Particionamento**: Obrigatório se volumetria > 100M/ano (TE074 3.2.8.3)

**Tabela Auxiliar (_AUX)**:
- **Quando usar**: Separar dados de baixa frequência de acesso ou volumosos (BLOBs)
- **PK**: ID da tabela principal (relacionamento 1:1) ou ID auxiliar (1:N)
- **Conteúdo**: Atributos não essenciais para queries principais
- **Exemplo**: Dados comerciais adicionais, documentos digitalizados, metadados extensos

#### Processo de Arquivamento Automatizado

**Stored Procedure de migração (executada mensalmente)**:

```sql
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_CONTRATOS_HABITACIONAIS
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @DataCorte DATE = DATEADD(DAY, -90, CAST(GETDATE() AS DATE));
    DECLARE @RowsAffected INT;

    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- 1. Inserir contratos quitados há mais de 90 dias no histórico
        INSERT INTO FIN_CONTRATO_HABITACIONAL_HIST (
            CONTRATO_HABITACIONAL_ID, CLIENTE_ID, DT_ASSINATURA, DT_QUITACAO,
            DT_MIGRACAO_HISTORICO, VALOR_TOTAL_VL, STATUS_CD,
            DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
        )
        SELECT 
            CONTRATO_HABITACIONAL_ID, CLIENTE_ID, DT_ASSINATURA, DT_QUITACAO,
            GETDATE() AS DT_MIGRACAO_HISTORICO, VALOR_TOTAL_VL, STATUS_CD,
            DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
        FROM FIN_CONTRATO_HABITACIONAL
        WHERE STATUS_CD IN ('Q', 'C')  -- Quitado ou Cancelado
          AND DT_QUITACAO < @DataCorte;

        SET @RowsAffected = @@ROWCOUNT;

        -- 2. Remover da tabela transacional (liberação de espaço)
        DELETE FROM FIN_CONTRATO_HABITACIONAL
        WHERE STATUS_CD IN ('Q', 'C')
          AND DT_QUITACAO < @DataCorte;

        -- 3. Log de auditoria
        INSERT INTO SYS_LOG_ARQUIVAMENTO (TABELA_NM, QT_REGISTROS_MIGRADOS, DT_EXECUCAO)
        VALUES ('FIN_CONTRATO_HABITACIONAL', @RowsAffected, GETDATE());

        COMMIT TRANSACTION;

        PRINT 'Arquivamento concluído: ' + CAST(@RowsAffected AS VARCHAR(10)) + ' contratos migrados.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        
        DECLARE @ErrorMsg NVARCHAR(4000) = ERROR_MESSAGE();
        INSERT INTO SYS_LOG_ERROS (PROCESSO_NM, MENSAGEM_TX, DT_ERRO)
        VALUES ('SP_ARQUIVAR_CONTRATOS_HABITACIONAIS', @ErrorMsg, GETDATE());
        
        THROW;
    END CATCH
END;
GO
```

**SQL Server Agent Job (execução mensal)**:

```sql
EXEC msdb.dbo.sp_add_job
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';

EXEC msdb.dbo.sp_add_jobstep
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS',
    @step_name = N'Arquivar Contratos',
    @subsystem = N'TSQL',
    @command = N'EXEC SP_ARQUIVAR_CONTRATOS_HABITACIONAIS',
    @database_name = N'DB_FINANCEIRO';

EXEC msdb.dbo.sp_add_schedule
    @schedule_name = N'Primeiro_Dia_Mes',
    @freq_type = 16,  -- Mensal
    @freq_interval = 1,  -- Dia 1
    @active_start_time = 020000;  -- 02:00 AM

EXEC msdb.dbo.sp_attach_schedule
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS',
    @schedule_name = N'Primeiro_Dia_Mes';

EXEC msdb.dbo.sp_add_jobserver
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';
```

---

### 5.1.4 Expurgo (Remoção Definitiva)

**Expurgo** é a remoção definitiva de dados após o fim do ciclo de vida legal/normativo.

#### Políticas de Expurgo por Tipo de Dado

| Tipo de Dado | Prazo Legal | Retenção CAIXA | Expurgo após | Base Legal |
|--------------|-------------|----------------|--------------|------------|
| **Contratos habitacionais** | 10 anos após quitação | 10 anos | 10 anos | Código Civil Art. 205 |
| **Documentos fiscais** | 5 anos | 7 anos (segurança) | 7 anos | CTN Art. 174 |
| **Dados trabalhistas** | 30 anos | 30 anos | 30 anos | CLT Art. 11 |
| **Logs de aplicação (dev)** | N/A | 90 dias | 90 dias | Política interna |
| **Logs de aplicação (prod)** | N/A | 6 meses | 6 meses | Política interna |
| **Dados temporários (staging)** | N/A | 7 dias | 7 dias | Política interna |
| **Dados pessoais (LGPD)** | Até solicitação titular | Enquanto necessário | Após término finalidade | Lei 13.709/2018 Art. 16 |

#### Stored Procedure de Expurgo

```sql
CREATE OR ALTER PROCEDURE SP_EXPURGAR_CONTRATOS_HABITACIONAIS
    @DataCorteExpurgo DATE = NULL  -- Se NULL, calcula automaticamente (10 anos)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Cálculo automático: 10 anos antes da data atual
    IF @DataCorteExpurgo IS NULL
        SET @DataCorteExpurgo = DATEADD(YEAR, -10, CAST(GETDATE() AS DATE));

    DECLARE @RowsAffected INT;
    DECLARE @AprovacaoGestor BIT;

    -- IMPORTANTE: Expurgo requer aprovação do gestor (log manual)
    IF NOT EXISTS (
        SELECT 1 FROM SYS_APROVACAO_EXPURGO
        WHERE TABELA_NM = 'FIN_CONTRATO_HABITACIONAL_HIST'
          AND DATA_CORTE_DT = @DataCorteExpurgo
          AND STATUS_CD = 'APROVADO'
    )
    BEGIN
        RAISERROR('Expurgo não aprovado pelo gestor da informação. Processo abortado.', 16, 1);
        RETURN;
    END

    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- 1. Backup de segurança antes do expurgo (tabela de archive)
        SELECT *
        INTO FIN_CONTRATO_HABIT_HIST_ARCHIVE_20250120  -- Nome com data
        FROM FIN_CONTRATO_HABITACIONAL_HIST
        WHERE DT_QUITACAO < @DataCorteExpurgo;

        SET @RowsAffected = @@ROWCOUNT;

        -- 2. Expurgo definitivo da tabela histórica
        DELETE FROM FIN_CONTRATO_HABITACIONAL_HIST
        WHERE DT_QUITACAO < @DataCorteExpurgo;

        -- 3. Log de auditoria de expurgo (obrigatório LGPD)
        INSERT INTO SYS_LOG_EXPURGO (
            TABELA_NM, QT_REGISTROS_EXPURGADOS, DATA_CORTE_DT, 
            GESTOR_APROVADOR_NM, DT_EXECUCAO, USUARIO_EXECUCAO_NM
        )
        SELECT 
            'FIN_CONTRATO_HABITACIONAL_HIST', 
            @RowsAffected, 
            @DataCorteExpurgo,
            (SELECT GESTOR_NM FROM SYS_APROVACAO_EXPURGO 
             WHERE TABELA_NM = 'FIN_CONTRATO_HABITACIONAL_HIST' 
               AND DATA_CORTE_DT = @DataCorteExpurgo),
            GETDATE(),
            SUSER_SNAME();

        COMMIT TRANSACTION;

        PRINT 'Expurgo concluído: ' + CAST(@RowsAffected AS VARCHAR(10)) + ' contratos removidos.';
        PRINT 'Backup criado em: FIN_CONTRATO_HABIT_HIST_ARCHIVE_20250120';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
```

**Controle de aprovação de expurgo**:

```sql
CREATE TABLE SYS_APROVACAO_EXPURGO (
    APROVACAO_EXPURGO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TABELA_NM VARCHAR(100) NOT NULL,
    DATA_CORTE_DT DATE NOT NULL,  -- Remover dados anteriores a esta data
    GESTOR_NM VARCHAR(100) NOT NULL,
    JUSTIFICATIVA_TX VARCHAR(500) NOT NULL,
    STATUS_CD CHAR(10) NOT NULL,  -- PENDENTE, APROVADO, REJEITADO
    DT_SOLICITACAO DATETIME2 DEFAULT GETDATE(),
    DT_APROVACAO DATETIME2,
    DOCUMENTO_ANEXO_TX VARCHAR(200),  -- Link para documento de aprovação
    CONSTRAINT PK_SYS_APROVACAO_EXPURGO PRIMARY KEY (APROVACAO_EXPURGO_ID),
    CONSTRAINT CK_SYS_APROV_EXPURGO_STATUS CHECK (STATUS_CD IN ('PENDENTE', 'APROVADO', 'REJEITADO'))
) WITH (DATA_COMPRESSION = PAGE);
```

**Exemplo de solicitação de expurgo**:

```sql
INSERT INTO SYS_APROVACAO_EXPURGO (
    TABELA_NM, DATA_CORTE_DT, GESTOR_NM, JUSTIFICATIVA_TX, STATUS_CD
)
VALUES (
    'FIN_CONTRATO_HABITACIONAL_HIST',
    '2015-01-01',  -- Contratos quitados antes de 2015 (>10 anos)
    'João Silva - GENAC/GEHAB',
    'Expurgo de contratos habitacionais conforme prazo legal de 10 anos (CC Art. 205)',
    'APROVADO'
);
```

---

### 5.1.5 Particionamento de Tabelas Históricas

Conforme **TE074 3.2.8.6**:
> "Se uma tabela transacional possuir tabelas HISTORICO e/ou AUXILIAR também podem ser candidatas ao mesmo critério de particionamento."

**Tabelas históricas** frequentemente excedem 100M linhas/ano, requerendo **particionamento**.

#### Exemplo: Particionamento por Ano de Migração

```sql
-- 1. Partition Function (por ano de migração ao histórico)
CREATE PARTITION FUNCTION PF_CONTRATO_HIST_ANO (DATETIME2)
AS RANGE RIGHT FOR VALUES (
    '2020-01-01', '2021-01-01', '2022-01-01', 
    '2023-01-01', '2024-01-01', '2025-01-01', '2026-01-01'
);

-- 2. Partition Scheme
CREATE PARTITION SCHEME PS_CONTRATO_HIST_ANO
AS PARTITION PF_CONTRATO_HIST_ANO
TO (FG_CONTRATO_HIST_2020, FG_CONTRATO_HIST_2021, FG_CONTRATO_HIST_2022,
    FG_CONTRATO_HIST_2023, FG_CONTRATO_HIST_2024, FG_CONTRATO_HIST_2025,
    FG_CONTRATO_HIST_2026, FG_CONTRATO_HIST_FUTURO);

-- 3. Criar tabela histórica particionada
CREATE TABLE FIN_CONTRATO_HABITACIONAL_HIST (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NOT NULL,
    DT_MIGRACAO_HISTORICO DATETIME2 NOT NULL DEFAULT GETDATE(),  -- Coluna de partição
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,
    DT_CADASTRO DATETIME2,
    USUARIO_CADASTRO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABIT_HIST PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) ON PS_CONTRATO_HIST_ANO(DT_MIGRACAO_HISTORICO)
WITH (DATA_COMPRESSION = PAGE);

-- 4. Índices também particionados
CREATE INDEX IX_FIN_CONTRATO_HABIT_HIST_DT_QUIT
ON FIN_CONTRATO_HABITACIONAL_HIST (DT_QUITACAO, DT_MIGRACAO_HISTORICO)
ON PS_CONTRATO_HIST_ANO(DT_MIGRACAO_HISTORICO)
WITH (DATA_COMPRESSION = PAGE);
```

**Gerenciamento de partições anuais** (adicionar nova partição para 2027):

```sql
-- Adicionar filegroup
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_HIST_2027;
ALTER DATABASE DB_FINANCEIRO ADD FILE (
    NAME = 'FG_CONTRATO_HIST_2027_DATA',
    FILENAME = 'D:\MSSQL\DATA\DB_FINANCEIRO_CONTRATO_HIST_2027.ndf',
    SIZE = 5GB, FILEGROWTH = 1GB
) TO FILEGROUP FG_CONTRATO_HIST_2027;

-- Dividir partição (adicionar 2027)
ALTER PARTITION SCHEME PS_CONTRATO_HIST_ANO NEXT USED FG_CONTRATO_HIST_2027;
ALTER PARTITION FUNCTION PF_CONTRATO_HIST_ANO() SPLIT RANGE ('2027-01-01');
```

**Arquivamento de partições antigas** (SWITCH para tabela de archive):

```sql
-- Arquivar partição de 2020 (após 10 anos, antes do expurgo)
CREATE TABLE FIN_CONTRATO_HABIT_HIST_ARCHIVE_2020 (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    -- ... mesma estrutura da tabela principal
    CONSTRAINT PK_ARCHIVE_2020 PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) ON FG_CONTRATO_HIST_2020
WITH (DATA_COMPRESSION = PAGE);

-- SWITCH instantâneo (sem I/O de dados)
ALTER TABLE FIN_CONTRATO_HABITACIONAL_HIST
SWITCH PARTITION 1 TO FIN_CONTRATO_HABIT_HIST_ARCHIVE_2020;

-- Mesclar partição vazia
ALTER PARTITION FUNCTION PF_CONTRATO_HIST_ANO() MERGE RANGE ('2020-01-01');
```

---

## 5.2 LGPD e Proteção de Dados Sensíveis (CR439 + Lei 13.709/2018)

### 5.2.1 Classificação de Informação (OR016)

A **Orientação Normativa OR016** estabelece níveis de classificação:

| Nível | Sigla | Descrição | Exemplos | Controles |
|-------|-------|-----------|----------|-----------|
| **Público** | PUB | Informações divulgáveis externamente | Produtos bancários, taxas publicadas | Nenhum adicional |
| **Interno** | INT | Uso interno CAIXA (não confidencial) | Processos administrativos, org

anogramas | Controle de acesso básico |
| **Confidencial** | CONF | Informações estratégicas/competitivas | Planos de negócio, análises de risco | Criptografia recomendada, auditoria |
| **Restrito** | REST | Dados pessoais/sensíveis (LGPD) | CPF, dados bancários, saúde | **Criptografia obrigatória**, auditoria detalhada |

#### Mapeamento LGPD → OR016

| Tipo LGPD | Definição (Lei 13.709/2018) | Classificação OR016 | Controles Técnicos |
|-----------|------------------------------|---------------------|--------------------|
| **Dado pessoal** | Informação relacionada a pessoa identificada/identificável | **Confidencial (CONF)** | Pseudonimização, mascaramento |
| **Dado sensível** | Raça, religião, saúde, biometria, genética, orientação sexual | **Restrito (REST)** | Criptografia TDE/Always Encrypted, tabela separada |
| **Dado anonimizado** | Não permite identificação (irreversível) | **Interno (INT)** | Remoção de PII, agregação |

---

### 5.2.2 Dados Pessoais vs Dados Sensíveis

**Dados Pessoais (Art. 5º, I)**:
- Nome completo
- CPF, RG, CNH
- Endereço residencial
- E-mail, telefone
- Data de nascimento
- Dados bancários (conta, agência)
- IP address, geolocalização

**Dados Sensíveis (Art. 5º, II)** - **RESTRITO**:
- Origem racial ou étnica
- Convicção religiosa
- Opinião política
- Filiação sindical
- **Dados de saúde** (histórico médico, exames)
- **Dados biométricos** (impressão digital, reconhecimento facial)
- Dados genéticos
- Orientação sexual

---

### 5.2.3 Estratégias de Proteção de Dados Sensíveis

#### Opção 1: Tabela Separada 1:1 (RECOMENDADO para dados sensíveis)

**Princípio**: Isolar dados sensíveis em tabela dedicada com criptografia adicional.

```sql
-- Tabela principal (dados pessoais não sensíveis)
CREATE TABLE PES_CLIENTE (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_COMPLETO_NM VARCHAR(200) NOT NULL,  -- Dado pessoal (CONF)
    CPF_CD VARCHAR(11) NOT NULL,  -- Dado pessoal (CONF) - hash ou criptografia leve
    EMAIL_TX VARCHAR(100),
    TELEFONE_NR VARCHAR(15),
    ENDERECO_TX VARCHAR(300),
    CLASSIFICACAO_INFO_CD CHAR(4) DEFAULT 'CONF',  -- Metadado OR016
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_PES_CLIENTE PRIMARY KEY (CLIENTE_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela separada para dados sensíveis (1:1)
CREATE TABLE PES_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,  -- FK para PES_CLIENTE
    DADOS_SAUDE_CRIPTOGRAFADOS VARBINARY(MAX),  -- Always Encrypted ou TDE
    BIOMETRIA_DIGITAL_CRIPTOGRAFADA VARBINARY(MAX),
    ORIGEM_ETNICA_CD CHAR(2),  -- Códigos criptografados
    RELIGIAO_CD CHAR(2),
    CLASSIFICACAO_INFO_CD CHAR(4) DEFAULT 'REST',  -- Metadado OR016
    -- Auditoria específica (quem acessou dados sensíveis)
    DT_ULTIMO_ACESSO DATETIME2,
    USUARIO_ULTIMO_ACESSO_NM VARCHAR(50),
    JUSTIFICATIVA_ACESSO_TX VARCHAR(500),  -- Obrigatório para auditoria LGPD
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_PES_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_PES_CLIENTE_DADOS_SENS FOREIGN KEY (CLIENTE_ID) 
        REFERENCES PES_CLIENTE (CLIENTE_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);

-- Índice proibido em colunas criptografadas (não permite busca)
-- Busca deve ser via CLIENTE_ID ou pseudônimo
```

**Benefícios**:
- ✅ Segregação física (backup separado, criptografia diferenciada)
- ✅ Controle de acesso granular (roles diferentes para cada tabela)
- ✅ Auditoria específica para dados sensíveis
- ✅ Performance: Queries comuns não carregam dados sensíveis

---

#### Opção 2: Criptografia de Coluna (TDE + Always Encrypted)

**TDE (Transparent Data Encryption)**: Criptografia no nível do banco de dados (toda a base).

```sql
-- Habilitar TDE (requer certificado)
USE master;
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SenhaForte@CAIXA2025';
CREATE CERTIFICATE TDE_Cert WITH SUBJECT = 'TDE Certificate CAIXA';

USE DB_FINANCEIRO;
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDE_Cert;

ALTER DATABASE DB_FINANCEIRO SET ENCRYPTION ON;
```

**Always Encrypted**: Criptografia no nível da coluna (dados criptografados mesmo para DBAs).

```sql
-- Coluna criptografada (Always Encrypted - requer configuração no application)
ALTER TABLE PES_CLIENTE_DADOS_SENSIVEIS
ADD DADOS_SAUDE_TX VARCHAR(500) ENCRYPTED WITH (
    COLUMN_ENCRYPTION_KEY = CEK_DADOS_SENSIVEIS,
    ENCRYPTION_TYPE = DETERMINISTIC,  -- Permite =, mas não LIKE
    ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'
);
```

**IMPORTANTE**: Always Encrypted é transparente para aplicação via driver (Microsoft.Data.SqlClient).

---

#### Opção 3: Pseudonimização (Mascaramento Reversível)

**Pseudonimização**: Substituir identificadores diretos por pseudônimos (permite re-identificação com chave).

```sql
-- Função de pseudonimização (hash com salt)
CREATE FUNCTION dbo.FN_PSEUDONIMIZAR_CPF (@CPF VARCHAR(11))
RETURNS VARCHAR(64)
AS
BEGIN
    DECLARE @Salt VARCHAR(50) = 'CAIXA_SECRET_SALT_2025';  -- Armazenar em config segura
    RETURN CONVERT(VARCHAR(64), HASHBYTES('SHA2_256', @CPF + @Salt), 2);
END;
GO

-- Aplicar na inserção
INSERT INTO PES_CLIENTE (CLIENTE_ID, NOME_COMPLETO_NM, CPF_CD)
VALUES (1, 'João Silva', dbo.FN_PSEUDONIMIZAR_CPF('12345678901'));

-- Busca por CPF pseudonimizado
SELECT * FROM PES_CLIENTE
WHERE CPF_CD = dbo.FN_PSEUDONIMIZAR_CPF('12345678901');
```

**Limitações**:
- ❌ Busca parcial impossível (LIKE não funciona)
- ❌ Ordenação alfabética perdida
- ✅ Proteção contra acesso direto ao banco

---

#### Opção 4: Dynamic Data Masking (Mascaramento Dinâmico)

**DDM**: Mascara dados para usuários não autorizados (sem alterar dados físicos).

```sql
-- Criar coluna com máscara padrão
ALTER TABLE PES_CLIENTE
ADD CPF_MASCARADO_CD VARCHAR(11) MASKED WITH (FUNCTION = 'partial(0,"XXX.XXX.XXX-",2)');

-- Inserir dado real
INSERT INTO PES_CLIENTE (CLIENTE_ID, CPF_MASCARADO_CD)
VALUES (1, '12345678901');

-- Usuário SEM permissão UNMASK vê: XXX.XXX.XXX-01
-- Usuário COM permissão UNMASK vê: 12345678901

-- Conceder permissão para unmask
GRANT UNMASK TO [ROLE_GERENTES_CREDITO];
```

**Tipos de máscaras**:
- `default()`: Mascaramento completo (XXXX)
- `email()`: a***@domain.com
- `partial(prefix, mask, suffix)`: Personalizado
- `random(start, end)`: Valor aleatório (numérico)

---

### 5.2.4 Direito ao Esquecimento (LGPD Art. 18, VI)

**Requisito legal**: Titular pode solicitar **exclusão de dados pessoais** (15 dias para atendimento).

#### Estratégia: Soft Delete + Hard Delete (Expurgo)

```sql
-- Adicionar coluna de soft delete em todas tabelas com dados pessoais
ALTER TABLE PES_CLIENTE
ADD DATA_EXCLUSAO_LGPD DATETIME2 NULL,
    USUARIO_EXCLUSAO_LGPD_NM VARCHAR(50) NULL,
    MOTIVO_EXCLUSAO_LGPD_CD CHAR(2) NULL;  -- DT=Direito Titular, CS=Consentimento, FI=Fim Finalidade

CREATE INDEX IX_PES_CLIENTE_EXCLUSAO_LGPD 
ON PES_CLIENTE (DATA_EXCLUSAO_LGPD) 
WHERE DATA_EXCLUSAO_LGPD IS NOT NULL;

-- Stored Procedure de exclusão LGPD (soft delete)
CREATE OR ALTER PROCEDURE SP_EXCLUIR_CLIENTE_LGPD
    @ClienteID BIGINT,
    @MotivoCD CHAR(2) = 'DT'  -- DT=Direito Titular
AS
BEGIN
    UPDATE PES_CLIENTE
    SET DATA_EXCLUSAO_LGPD = GETDATE(),
        USUARIO_EXCLUSAO_LGPD_NM = SUSER_SNAME(),
        MOTIVO_EXCLUSAO_LGPD_CD = @MotivoCD
    WHERE CLIENTE_ID = @ClienteID;

    -- Soft delete em dados sensíveis
    UPDATE PES_CLIENTE_DADOS_SENSIVEIS
    SET DATA_EXCLUSAO_LGPD = GETDATE()
    WHERE CLIENTE_ID = @ClienteID;

    -- Log LGPD (obrigatório para comprovar atendimento)
    INSERT INTO SYS_LOG_EXCLUSAO_LGPD (
        TABELA_NM, REGISTRO_ID, MOTIVO_CD, DT_SOLICITACAO, DT_EXCLUSAO, USUARIO_NM
    )
    VALUES (
        'PES_CLIENTE', @ClienteID, @MotivoCD, GETDATE(), GETDATE(), SUSER_SNAME()
    );
END;
GO
```

**Queries devem filtrar soft deleted**:

```sql
-- ERRADO (retorna excluídos)
SELECT * FROM PES_CLIENTE WHERE CLIENTE_ID = 123;

-- CORRETO (filtrar soft delete)
SELECT * FROM PES_CLIENTE 
WHERE CLIENTE_ID = 123 
  AND DATA_EXCLUSAO_LGPD IS NULL;

-- Ou usar VIEW para filtrar automaticamente
CREATE VIEW VW_PES_CLIENTE_ATIVOS AS
SELECT * FROM PES_CLIENTE
WHERE DATA_EXCLUSAO_LGPD IS NULL;
```

**Hard delete (expurgo após 180 dias)**:

```sql
CREATE OR ALTER PROCEDURE SP_EXPURGAR_CLIENTES_LGPD
AS
BEGIN
    DECLARE @DataCorte DATETIME2 = DATEADD(DAY, -180, GETDATE());

    DELETE FROM PES_CLIENTE_DADOS_SENSIVEIS
    WHERE DATA_EXCLUSAO_LGPD < @DataCorte;

    DELETE FROM PES_CLIENTE
    WHERE DATA_EXCLUSAO_LGPD < @DataCorte;
END;
GO
```

---

### 5.2.5 Auditoria de Acesso a Dados Sensíveis (Rastreabilidade LGPD)

**Requisito legal**: Comprovar quem acessou/modificou dados pessoais.

#### Trigger de Auditoria para Dados Sensíveis

```sql
CREATE TABLE SYS_AUDITORIA_DADOS_SENSIVEIS (
    AUDITORIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    TABELA_NM VARCHAR(100) NOT NULL,
    REGISTRO_ID BIGINT NOT NULL,
    OPERACAO_CD CHAR(1) NOT NULL,  -- I=Insert, U=Update, D=Delete, S=Select
    USUARIO_NM VARCHAR(50) NOT NULL,
    APLICACAO_NM VARCHAR(100),  -- APP_NAME()
    HOSTNAME_NM VARCHAR(100),  -- HOST_NAME()
    IP_ADDRESS_TX VARCHAR(50),  -- Conexão
    JUSTIFICATIVA_TX VARCHAR(500),  -- Obrigatório para acesso a dados sensíveis
    VALORES_ANTERIORES_TX NVARCHAR(MAX),  -- JSON before
    VALORES_NOVOS_TX NVARCHAR(MAX),  -- JSON after
    DT_OPERACAO DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_SYS_AUDITORIA_DADOS_SENS PRIMARY KEY (AUDITORIA_ID)
) WITH (DATA_COMPRESSION = PAGE);

CREATE INDEX IX_SYS_AUDIT_DADOS_SENS_DT 
ON SYS_AUDITORIA_DADOS_SENSIVEIS (DT_OPERACAO DESC);

CREATE INDEX IX_SYS_AUDIT_DADOS_SENS_USUARIO 
ON SYS_AUDITORIA_DADOS_SENSIVEIS (USUARIO_NM, DT_OPERACAO DESC);

-- Trigger UPDATE em dados sensíveis
CREATE OR ALTER TRIGGER TRG_AUDIT_PES_CLIENTE_DADOS_SENS_UPD
ON PES_CLIENTE_DADOS_SENSIVEIS
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO SYS_AUDITORIA_DADOS_SENSIVEIS (
        TABELA_NM, REGISTRO_ID, OPERACAO_CD, USUARIO_NM, APLICACAO_NM, HOSTNAME_NM,
        VALORES_ANTERIORES_TX, VALORES_NOVOS_TX
    )
    SELECT 
        'PES_CLIENTE_DADOS_SENSIVEIS',
        i.CLIENTE_ID,
        'U',
        SUSER_SNAME(),
        APP_NAME(),
        HOST_NAME(),
        (SELECT d.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER),  -- Before
        (SELECT i.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)   -- After
    FROM inserted i
    INNER JOIN deleted d ON i.CLIENTE_ID = d.CLIENTE_ID;
END;
GO
```

---

**📊 Resumo SUB-PARTE 5.1**:

| Seção | Tópicos Principais | Validações TE074 |
|-------|-------------------|------------------|
| **5.1 Ciclo de Vida** | Retenção online, arquivamento (_HIST/_AUX), expurgo, particionamento histórico | ✅ 3.2.10.1-3.2.10.3 |
| **5.2 LGPD** | Classificação OR016 (REST/CONF), dados sensíveis vs pessoais, criptografia (TDE/Always Encrypted), pseudonimização, DDM, direito ao esquecimento, auditoria de acesso | ✅ CR439, Lei 13.709/2018 |

**Próxima SUB-PARTE**: 5.2 - Frameworks ORM (JPA/Hibernate e Entity Framework Core)

---

## SUB-PARTE 5.2: Frameworks ORM e Boas Práticas (Parte 2 de 4)

> **Objetivo desta SUB-PARTE**: Integrar padrões TE074 com frameworks JPA/Hibernate (Java) e Entity Framework Core (.NET).  
> **Abrangência**: Seção 5.3 - Mapeamento ORM  
> **Base normativa**: TE074 3.2.1-3.2.12 (nomenclatura, tipos, relacionamentos)

---

## 5.3 Frameworks ORM - Mapeamento Objeto-Relacional

### 5.3.1 Princípio Fundamental: TE074 Prevalece Sobre Convenções

**Regra Geral (TE074 3.2.16)**:
> "As convenções dos frameworks ORM são **DESABILITADAS** quando conflitarem com padrões TE074. O modelo de dados CAIXA define a estrutura física, não o framework."

#### Configurações Obrigatórias

**Java - Spring Boot (application.properties)**:
```properties
# CRÍTICO: Desabilitar auto-DDL em TODOS os ambientes
spring.jpa.hibernate.ddl-auto=none

# Validar que o modelo JPA corresponde ao banco (não cria/altera tabelas)
spring.jpa.hibernate.naming.physical-strategy=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl

# Desabilitar schema auto-generation
spring.jpa.generate-ddl=false

# Mostrar SQL (apenas dev/homolog)
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

# Dialeto específico SQL Server
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.SQLServer2012Dialect
```

**.NET - Entity Framework Core (Program.cs/Startup.cs)**:
```csharp
services.AddDbContext<CaixaDbContext>(options =>
{
    options.UseSqlServer(connectionString);
    
    // CRÍTICO: Nunca usar EnsureCreated ou Migrate em runtime
    // options.Database.EnsureCreated();  // ❌ PROIBIDO
    
    // Logging apenas em desenvolvimento
    if (env.IsDevelopment())
    {
        options.EnableSensitiveDataLogging();
        options.LogTo(Console.WriteLine, LogLevel.Information);
    }
});
```

**Migrations controladas manualmente** (não automáticas):
```bash
# .NET - Gerar migration (revisar antes de aplicar)
dotnet ef migrations add MigracaoManual_20260107 --context CaixaDbContext

# Aplicar via script SQL (não via dotnet ef database update)
dotnet ef migrations script --output Scripts/Migration_20260107.sql
```

---

### 5.3.2 JPA/Hibernate - Mapeamento Java

#### Anotações Básicas Conformes TE074

```java
package br.gov.caixa.financeiro.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Data;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Entidade JPA: Contrato Habitacional
 * Tabela física: FIN_CONTRATO_HABITACIONAL (TE074 3.2.1.1)
 * 
 * Nomenclatura:
 * - Tabela: Prefixo FIN_ + nome plural sem abreviações (TE074 3.2.1.2)
 * - PK: CONTRATO_HABITACIONAL_ID (sufixo _ID, tipo BIGINT) (TE074 3.2.3.1)
 * - Colunas: Nome descritivo + sufixo tipo (_CD, _NM, _VL, _DT, _QT)
 */
@Entity
@Table(name = "FIN_CONTRATO_HABITACIONAL")  // TE074 3.2.1.1: Nome exato da tabela
@Data  // Lombok: getters/setters/equals/hashCode/toString
public class ContratoHabitacional {

    /**
     * Chave Primária (TE074 3.2.3.1)
     * - Nome: <TABELA_SEM_PREFIXO>_ID
     * - Tipo: BIGINT (nunca INT)
     * - Estratégia: IDENTITY (SQL Server) ou SEQUENCE (Oracle/PostgreSQL)
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // SQL Server IDENTITY
    @Column(name = "CONTRATO_HABITACIONAL_ID", nullable = false)
    private Long contratoHabitacionalId;

    /**
     * FK para PES_CLIENTE (TE074 3.2.11.5)
     * - Nome coluna: CLIENTE_ID (mesmo nome da PK da tabela pai)
     * - Relacionamento ManyToOne obrigatório
     * - FetchType.LAZY para performance (TE074 recomendação)
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
        name = "CLIENTE_ID",  // TE074 3.2.11.11: Nome exato da FK
        nullable = false,
        foreignKey = @ForeignKey(name = "FK_FIN_CONTRATO_HABIT_CLIENTE")  // TE074 3.2.11.8
    )
    private Cliente cliente;

    /**
     * Código do tipo de contrato (TE074 3.2.12.4)
     * - Tipo: VARCHAR (nunca INT para enumerações)
     * - Sufixo: _CD (código)
     * - Constraint CHECK (validação banco, não apenas Java)
     */
    @Column(name = "TIPO_CONTRATO_CD", nullable = false, length = 20)
    @NotNull
    @Pattern(regexp = "^(SBPE|FGTS|CCFGTS|PROHAB)$", message = "Tipo contrato inválido")
    private String tipoContratoCd;

    /**
     * Data de assinatura (TE074 3.2.12.3)
     * - Tipo: DATE (sem hora) - mapeia para LocalDate
     * - Sufixo: _DT (data sem hora)
     * - Nunca DATETIME/DATETIME2 para datas puras
     */
    @Column(name = "DT_ASSINATURA", nullable = false)
    @NotNull
    @PastOrPresent(message = "Data assinatura não pode ser futura")
    private LocalDate dtAssinatura;

    /**
     * Data de quitação (TE074 3.2.12.3)
     * - Nullable (contrato ainda ativo)
     * - Gatilho para migração ao histórico (_HIST)
     */
    @Column(name = "DT_QUITACAO")
    private LocalDate dtQuitacao;

    /**
     * Valor total do contrato (TE074 3.2.12.1)
     * - Tipo: DECIMAL(15,2) - NUNCA FLOAT/REAL
     * - Sufixo: _VL (valor monetário)
     * - Java: BigDecimal (precisão exata)
     * - Precision 15 (trilhões), scale 2 (centavos)
     */
    @Column(name = "VALOR_TOTAL_VL", nullable = false, precision = 15, scale = 2)
    @NotNull
    @DecimalMin(value = "0.01", message = "Valor deve ser positivo")
    private BigDecimal valorTotalVl;

    /**
     * Quantidade de parcelas (TE074 3.2.12.2)
     * - Tipo: INT (quantidade é inteiro)
     * - Sufixo: _QT (quantidade)
     */
    @Column(name = "PARCELAS_QT", nullable = false)
    @NotNull
    @Min(value = 1, message = "Mínimo 1 parcela")
    @Max(value = 420, message = "Máximo 420 parcelas (35 anos)")
    private Integer parcelasQt;

    /**
     * Status do contrato (TE074 3.2.12.5)
     * - Tipo: CHAR(1) - 'A'=Ativo, 'Q'=Quitado, 'C'=Cancelado
     * - DEFAULT 'A' no banco (não apenas no Java)
     * - Sufixo: _CD (código enumerado)
     */
    @Column(name = "STATUS_CD", nullable = false, length = 1, columnDefinition = "CHAR(1) DEFAULT 'A'")
    @NotNull
    @Pattern(regexp = "^[AQC]$", message = "Status: A/Q/C")
    private String statusCd = "A";  // Default também no Java

    /**
     * Observações (TE074 3.2.12.4)
     * - Tipo: VARCHAR(500) - evitar VARCHAR(MAX)
     * - Sufixo: _TX (texto)
     * - Nullable (opcional)
     */
    @Column(name = "OBSERVACOES_TX", length = 500)
    @Size(max = 500, message = "Máximo 500 caracteres")
    private String observacoesTx;

    // ========== AUDITORIA (TE074 3.2.12.7) ==========

    /**
     * Data de cadastro (TE074 3.2.12.7)
     * - Tipo: DATETIME2 (SQL Server) - mapeia para LocalDateTime
     * - DEFAULT GETDATE() no banco
     * - Sufixo: _DT se sem hora, sem sufixo se com hora
     * - Imutável após criação
     */
    @Column(name = "DT_CADASTRO", nullable = false, updatable = false, 
            columnDefinition = "DATETIME2 DEFAULT GETDATE()")
    private LocalDateTime dtCadastro;

    /**
     * Usuário que cadastrou (TE074 3.2.12.7)
     * - Tipo: VARCHAR(50)
     * - DEFAULT SUSER_SNAME() no banco
     * - Sufixo: _NM (nome/identificador)
     * - Imutável após criação
     */
    @Column(name = "USUARIO_CADASTRO_NM", nullable = false, length = 50, updatable = false,
            columnDefinition = "VARCHAR(50) DEFAULT SUSER_SNAME()")
    private String usuarioCadastroNm;

    /**
     * Data de última atualização (TE074 3.2.12.7)
     * - Nullable (NULL se nunca atualizado)
     * - Atualizado automaticamente por trigger ou JPA @PreUpdate
     */
    @Column(name = "DT_ATUALIZACAO")
    private LocalDateTime dtAtualizacao;

    /**
     * Usuário que atualizou (TE074 3.2.12.7)
     * - Nullable (NULL se nunca atualizado)
     */
    @Column(name = "USUARIO_ATUALIZACAO_NM", length = 50)
    private String usuarioAtualizacaoNm;

    // ========== LIFECYCLE CALLBACKS ==========

    /**
     * Callback antes de inserir (preencher auditoria se não veio do banco DEFAULT)
     */
    @PrePersist
    protected void onCreate() {
        if (this.dtCadastro == null) {
            this.dtCadastro = LocalDateTime.now();
        }
        if (this.usuarioCadastroNm == null) {
            // Em produção, obter do contexto de segurança (Spring Security)
            this.usuarioCadastroNm = System.getProperty("user.name");
        }
    }

    /**
     * Callback antes de atualizar
     */
    @PreUpdate
    protected void onUpdate() {
        this.dtAtualizacao = LocalDateTime.now();
        // Em produção, obter do contexto de segurança
        this.usuarioAtualizacaoNm = System.getProperty("user.name");
    }

    // ========== EQUALS/HASHCODE (ID-based) ==========

    /**
     * Equals/HashCode baseados APENAS na PK (TE074 3.2.3.1)
     * Lombok @Data gera baseado em todos os campos - sobrescrever
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContratoHabitacional)) return false;
        ContratoHabitacional that = (ContratoHabitacional) o;
        return contratoHabitacionalId != null && 
               contratoHabitacionalId.equals(that.contratoHabitacionalId);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();  // Fixo para entities não persistidas
    }
}
```

---

#### Relacionamentos JPA (TE074 3.2.11)

**1. OneToOne (1:1) - Tabelas Auxiliares**

```java
/**
 * Exemplo: PES_CLIENTE (1:1) PES_CLIENTE_DADOS_SENSIVEIS
 * TE074 3.2.11.2: FK vai na tabela dependente (dados sensíveis)
 */

// Lado principal (PES_CLIENTE)
@Entity
@Table(name = "PES_CLIENTE")
public class Cliente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    /**
     * Relacionamento 1:1 opcional (TE074 3.2.11.2)
     * - mappedBy: FK está na outra tabela
     * - optional=true: Cliente pode não ter dados sensíveis
     * - cascade: Operações propagam para dados sensíveis
     */
    @OneToOne(mappedBy = "cliente", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private ClienteDadosSensiveis dadosSensiveis;
}

// Lado dependente (PES_CLIENTE_DADOS_SENSIVEIS)
@Entity
@Table(name = "PES_CLIENTE_DADOS_SENSIVEIS")
public class ClienteDadosSensiveis {
    @Id
    @Column(name = "CLIENTE_ID")  // PK = FK (compartilhada)
    private Long clienteId;

    /**
     * Relacionamento 1:1 obrigatório (TE074 3.2.11.2)
     * - @MapsId: Usa clienteId como PK e FK
     * - optional=false: Dados sensíveis sempre vinculados a cliente
     */
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId  // PK compartilhada
    @JoinColumn(name = "CLIENTE_ID", foreignKey = @ForeignKey(name = "FK_PES_CLIENTE_DADOS_SENS"))
    private Cliente cliente;

    @Column(name = "DADOS_SAUDE_CRIPTOGRAFADOS")
    private byte[] dadosSaudeCriptografados;
}
```

**2. ManyToOne (N:1) - Relacionamento Padrão**

```java
/**
 * Exemplo: FIN_PARCELA (N) -> FIN_CONTRATO_HABITACIONAL (1)
 * TE074 3.2.11.4: FK PARCELA.CONTRATO_HABITACIONAL_ID referencia CONTRATO.CONTRATO_HABITACIONAL_ID
 */

@Entity
@Table(name = "FIN_PARCELA")
public class Parcela {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PARCELA_ID")
    private Long parcelaId;

    /**
     * FK para FIN_CONTRATO_HABITACIONAL (TE074 3.2.11.5)
     * - Obrigatória (optional=false)
     * - FetchType.LAZY para evitar N+1 queries
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
        name = "CONTRATO_HABITACIONAL_ID",
        nullable = false,
        foreignKey = @ForeignKey(
            name = "FK_FIN_PARCELA_CONTRATO",
            foreignKeyDefinition = "FOREIGN KEY (CONTRATO_HABITACIONAL_ID) " +
                                   "REFERENCES FIN_CONTRATO_HABITACIONAL (CONTRATO_HABITACIONAL_ID) " +
                                   "ON DELETE RESTRICT"  // TE074 3.2.11.12
        )
    )
    private ContratoHabitacional contratoHabitacional;

    @Column(name = "NUMERO_PARCELA_NR", nullable = false)
    private Integer numeroParcelaNr;

    @Column(name = "VALOR_VL", nullable = false, precision = 15, scale = 2)
    private BigDecimal valorVl;
}

// Lado inverso (opcional para navegação bidirecional)
@Entity
@Table(name = "FIN_CONTRATO_HABITACIONAL")
public class ContratoHabitacional {
    // ... outros campos

    /**
     * Navegação reversa (1:N) - TE074 3.2.11.3
     * - mappedBy: FK está em Parcela
     * - cascade: DELETE cascata (se contrato deletado, deleta parcelas)
     * - orphanRemoval: Remove parcelas órfãs
     */
    @OneToMany(mappedBy = "contratoHabitacional", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Parcela> parcelas = new ArrayList<>();

    // Métodos de conveniência
    public void addParcela(Parcela parcela) {
        parcelas.add(parcela);
        parcela.setContratoHabitacional(this);
    }

    public void removeParcela(Parcela parcela) {
        parcelas.remove(parcela);
        parcela.setContratoHabitacional(null);
    }
}
```

**3. ManyToMany (N:M) - Tabela Associativa (TE074 3.2.11.3)**

```java
/**
 * Exemplo: PES_CLIENTE (N) <-> FIN_PRODUTO (M) via FIN_CLIENTE_PRODUTO
 * TE074 3.2.11.15: Relacionamentos paralelos não permitidos - usar tabela associativa
 */

@Entity
@Table(name = "PES_CLIENTE")
public class Cliente {
    @Id
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    /**
     * ManyToMany com tabela associativa explícita (TE074 3.2.11.3)
     * - @JoinTable: Define tabela intermediária FIN_CLIENTE_PRODUTO
     * - joinColumns: FK para PES_CLIENTE
     * - inverseJoinColumns: FK para FIN_PRODUTO
     */
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "FIN_CLIENTE_PRODUTO",  // Tabela associativa
        joinColumns = @JoinColumn(
            name = "CLIENTE_ID",
            foreignKey = @ForeignKey(name = "FK_FIN_CLIENTE_PROD_CLIENTE")
        ),
        inverseJoinColumns = @JoinColumn(
            name = "PRODUTO_ID",
            foreignKey = @ForeignKey(name = "FK_FIN_CLIENTE_PROD_PRODUTO")
        )
    )
    private Set<Produto> produtos = new HashSet<>();
}

@Entity
@Table(name = "FIN_PRODUTO")
public class Produto {
    @Id
    @Column(name = "PRODUTO_ID")
    private Long produtoId;

    // Lado inverso (opcional)
    @ManyToMany(mappedBy = "produtos")
    private Set<Cliente> clientes = new HashSet<>();
}

/**
 * Se tabela associativa tem atributos extras (TE074 3.2.11.15.1)
 * - Criar entidade própria para FIN_CLIENTE_PRODUTO
 */
@Entity
@Table(name = "FIN_CLIENTE_PRODUTO")
public class ClienteProduto {
    @EmbeddedId
    private ClienteProdutoId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("clienteId")
    @JoinColumn(name = "CLIENTE_ID")
    private Cliente cliente;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("produtoId")
    @JoinColumn(name = "PRODUTO_ID")
    private Produto produto;

    @Column(name = "DT_VINCULACAO", nullable = false)
    private LocalDateTime dtVinculacao;

    @Column(name = "STATUS_CD", nullable = false, length = 1)
    private String statusCd = "A";
}

@Embeddable
public class ClienteProdutoId implements Serializable {
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    @Column(name = "PRODUTO_ID")
    private Long produtoId;

    // equals/hashCode obrigatórios
}
```

**4. Auto-relacionamento (TE074 3.2.11.6)**

```java
/**
 * Exemplo: Estrutura hierárquica (gerente -> funcionários)
 * TE074 3.2.11.6: Ambas associações opcionais (primeiro/último elemento)
 */

@Entity
@Table(name = "ORG_FUNCIONARIO")
public class Funcionario {
    @Id
    @Column(name = "FUNCIONARIO_ID")
    private Long funcionarioId;

    /**
     * Auto-relacionamento opcional (TE074 3.2.11.6)
     * - opcional=true: Funcionário raiz (presidente) não tem gerente
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(
        name = "GERENTE_ID",
        foreignKey = @ForeignKey(name = "FK_ORG_FUNCIONARIO_GERENTE")
    )
    private Funcionario gerente;

    /**
     * Navegação reversa (subordinados)
     */
    @OneToMany(mappedBy = "gerente")
    private List<Funcionario> subordinados = new ArrayList<>();
}
```

---

#### Naming Strategy Personalizada (TE074 compliance)

```java
package br.gov.caixa.infrastructure.jpa;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategy;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

/**
 * Strategy personalizada para garantir TE074 3.2.1.1
 * - Nomes em UPPERCASE
 * - Sem underscores automáticos (snake_case)
 * - Usa nomes exatos das anotações @Table/@Column
 */
public class TE074PhysicalNamingStrategy implements PhysicalNamingStrategy {

    @Override
    public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        // Usar nome exato de @Table (não converter para snake_case)
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        // Usar nome exato de @Column
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalSequenceName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalSchemaName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalCatalogName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name;
    }
}
```

**Configuração no application.properties**:
```properties
spring.jpa.hibernate.naming.physical-strategy=br.gov.caixa.infrastructure.jpa.TE074PhysicalNamingStrategy
```

---

### 5.3.3 Entity Framework Core - Mapeamento .NET

#### Configuração Fluent API (Recomendado para TE074)

```csharp
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.ComponentModel.DataAnnotations;

namespace Caixa.Financeiro.Domain.Entities
{
    /// <summary>
    /// Entidade: Contrato Habitacional
    /// Tabela: FIN_CONTRATO_HABITACIONAL (TE074 3.2.1.1)
    /// </summary>
    public class ContratoHabitacional
    {
        /// <summary>
        /// PK: CONTRATO_HABITACIONAL_ID (TE074 3.2.3.1)
        /// Tipo: BIGINT IDENTITY
        /// </summary>
        public long ContratoHabitacionalId { get; set; }

        /// <summary>
        /// FK para PES_CLIENTE (TE074 3.2.11.5)
        /// </summary>
        public long ClienteId { get; set; }

        /// <summary>
        /// Tipo de contrato (TE074 3.2.12.4)
        /// Valores: SBPE, FGTS, CCFGTS, PROHAB
        /// </summary>
        [Required]
        [StringLength(20)]
        [RegularExpression(@"^(SBPE|FGTS|CCFGTS|PROHAB)$")]
        public string TipoContratoCd { get; set; }

        /// <summary>
        /// Data de assinatura (TE074 3.2.12.3)
        /// Tipo: DATE (sem hora)
        /// </summary>
        [Required]
        public DateTime DtAssinatura { get; set; }

        /// <summary>
        /// Data de quitação (opcional) (TE074 3.2.12.3)
        /// </summary>
        public DateTime? DtQuitacao { get; set; }

        /// <summary>
        /// Valor total (TE074 3.2.12.1)
        /// Tipo: DECIMAL(15,2) - NUNCA FLOAT
        /// </summary>
        [Required]
        [Range(0.01, double.MaxValue)]
        public decimal ValorTotalVl { get; set; }

        /// <summary>
        /// Quantidade de parcelas (TE074 3.2.12.2)
        /// </summary>
        [Required]
        [Range(1, 420)]
        public int ParcelasQt { get; set; }

        /// <summary>
        /// Status (TE074 3.2.12.5)
        /// A=Ativo, Q=Quitado, C=Cancelado
        /// </summary>
        [Required]
        [StringLength(1)]
        [RegularExpression(@"^[AQC]$")]
        public string StatusCd { get; set; } = "A";

        /// <summary>
        /// Observações (TE074 3.2.12.4)
        /// </summary>
        [StringLength(500)]
        public string ObservacoesTx { get; set; }

        // ========== AUDITORIA (TE074 3.2.12.7) ==========

        [Required]
        public DateTime DtCadastro { get; set; }

        [Required]
        [StringLength(50)]
        public string UsuarioCadastroNm { get; set; }

        public DateTime? DtAtualizacao { get; set; }

        [StringLength(50)]
        public string UsuarioAtualizacaoNm { get; set; }

        // ========== NAVIGATION PROPERTIES ==========

        public Cliente Cliente { get; set; }
        public ICollection<Parcela> Parcelas { get; set; } = new List<Parcela>();
    }
}
```

**Configuração Fluent API (IEntityTypeConfiguration)**:

```csharp
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Caixa.Financeiro.Infrastructure.Persistence.Configurations
{
    /// <summary>
    /// Configuração EF Core para ContratoHabitacional
    /// Implementa regras TE074 via Fluent API
    /// </summary>
    public class ContratoHabitacionalConfiguration : IEntityTypeConfiguration<ContratoHabitacional>
    {
        public void Configure(EntityTypeBuilder<ContratoHabitacional> builder)
        {
            // ========== TABELA (TE074 3.2.1.1) ==========
            builder.ToTable("FIN_CONTRATO_HABITACIONAL");

            // ========== PRIMARY KEY (TE074 3.2.3.1) ==========
            builder.HasKey(c => c.ContratoHabitacionalId)
                .HasName("PK_FIN_CONTRATO_HABITACIONAL");

            builder.Property(c => c.ContratoHabitacionalId)
                .HasColumnName("CONTRATO_HABITACIONAL_ID")
                .IsRequired()
                .UseIdentityColumn();  // SQL Server IDENTITY

            // ========== FOREIGN KEYS (TE074 3.2.11) ==========
            builder.HasOne(c => c.Cliente)
                .WithMany()
                .HasForeignKey(c => c.ClienteId)
                .HasConstraintName("FK_FIN_CONTRATO_HABIT_CLIENTE")
                .OnDelete(DeleteBehavior.Restrict);  // TE074 3.2.11.12: RESTRICT padrão

            builder.Property(c => c.ClienteId)
                .HasColumnName("CLIENTE_ID")
                .IsRequired();

            // ========== COLUNAS COM TIPO ESPECÍFICO ==========

            // VARCHAR(20) com CHECK constraint (TE074 3.2.12.4)
            builder.Property(c => c.TipoContratoCd)
                .HasColumnName("TIPO_CONTRATO_CD")
                .HasColumnType("VARCHAR(20)")
                .IsRequired()
                .HasMaxLength(20);

            // Adicionar CHECK constraint manualmente via migration
            // ALTER TABLE FIN_CONTRATO_HABITACIONAL 
            // ADD CONSTRAINT CK_FIN_CONTRATO_TIPO 
            // CHECK (TIPO_CONTRATO_CD IN ('SBPE','FGTS','CCFGTS','PROHAB'))

            // DATE sem hora (TE074 3.2.12.3)
            builder.Property(c => c.DtAssinatura)
                .HasColumnName("DT_ASSINATURA")
                .HasColumnType("DATE")
                .IsRequired();

            builder.Property(c => c.DtQuitacao)
                .HasColumnName("DT_QUITACAO")
                .HasColumnType("DATE")
                .IsRequired(false);

            // DECIMAL(15,2) para monetário (TE074 3.2.12.1)
            builder.Property(c => c.ValorTotalVl)
                .HasColumnName("VALOR_TOTAL_VL")
                .HasColumnType("DECIMAL(15,2)")
                .IsRequired();

            // INT para quantidade (TE074 3.2.12.2)
            builder.Property(c => c.ParcelasQt)
                .HasColumnName("PARCELAS_QT")
                .HasColumnType("INT")
                .IsRequired();

            // CHAR(1) com DEFAULT (TE074 3.2.12.5)
            builder.Property(c => c.StatusCd)
                .HasColumnName("STATUS_CD")
                .HasColumnType("CHAR(1)")
                .IsRequired()
                .HasMaxLength(1)
                .HasDefaultValue("A");  // DEFAULT 'A' no banco

            // VARCHAR(500) (TE074 3.2.12.4 - evitar VARCHAR(MAX))
            builder.Property(c => c.ObservacoesTx)
                .HasColumnName("OBSERVACOES_TX")
                .HasColumnType("VARCHAR(500)")
                .IsRequired(false)
                .HasMaxLength(500);

            // ========== AUDITORIA (TE074 3.2.12.7) ==========

            builder.Property(c => c.DtCadastro)
                .HasColumnName("DT_CADASTRO")
                .HasColumnType("DATETIME2")
                .IsRequired()
                .HasDefaultValueSql("GETDATE()")  // DEFAULT GETDATE()
                .ValueGeneratedOnAdd();  // Não atualizar em UPDATE

            builder.Property(c => c.UsuarioCadastroNm)
                .HasColumnName("USUARIO_CADASTRO_NM")
                .HasColumnType("VARCHAR(50)")
                .IsRequired()
                .HasMaxLength(50)
                .HasDefaultValueSql("SUSER_SNAME()")  // DEFAULT SUSER_SNAME()
                .ValueGeneratedOnAdd();

            builder.Property(c => c.DtAtualizacao)
                .HasColumnName("DT_ATUALIZACAO")
                .HasColumnType("DATETIME2")
                .IsRequired(false);

            builder.Property(c => c.UsuarioAtualizacaoNm)
                .HasColumnName("USUARIO_ATUALIZACAO_NM")
                .HasColumnType("VARCHAR(50)")
                .IsRequired(false)
                .HasMaxLength(50);

            // ========== RELACIONAMENTOS (TE074 3.2.11) ==========

            // OneToMany: Contrato -> Parcelas
            builder.HasMany(c => c.Parcelas)
                .WithOne(p => p.ContratoHabitacional)
                .HasForeignKey(p => p.ContratoHabitacionalId)
                .HasConstraintName("FK_FIN_PARCELA_CONTRATO")
                .OnDelete(DeleteBehavior.Cascade);  // DELETE CASCADE para dependentes

            // ========== ÍNDICES (TE074 3.2.11.5) ==========

            // Índice em FK (obrigatório TE074)
            builder.HasIndex(c => c.ClienteId)
                .HasDatabaseName("IX_FIN_CONTRATO_HABIT_CLIENTE");

            // Índice composto (data assinatura + status)
            builder.HasIndex(c => new { c.DtAssinatura, c.StatusCd })
                .HasDatabaseName("IX_FIN_CONTRATO_DT_ASSIN_STATUS");

            // ========== COMPACTAÇÃO (TE074 3.2.9.1) ==========
            // Configurar via migration manual:
            // CREATE TABLE ... WITH (DATA_COMPRESSION = PAGE)
        }
    }
}
```

**DbContext**:

```csharp
using Microsoft.EntityFrameworkCore;

namespace Caixa.Financeiro.Infrastructure.Persistence
{
    public class CaixaDbContext : DbContext
    {
        public CaixaDbContext(DbContextOptions<CaixaDbContext> options) : base(options) { }

        public DbSet<ContratoHabitacional> ContratosHabitacionais { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Parcela> Parcelas { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Aplicar todas as configurações IEntityTypeConfiguration
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(CaixaDbContext).Assembly);

            // Convenções globais TE074
            foreach (var entityType in modelBuilder.Model.GetEntityTypes())
            {
                // Todas PKs são BIGINT
                var primaryKey = entityType.FindPrimaryKey();
                if (primaryKey != null)
                {
                    foreach (var property in primaryKey.Properties)
                    {
                        property.SetColumnType("BIGINT");
                    }
                }

                // Todas strings VARCHAR (não NVARCHAR) exceto se Unicode explícito
                foreach (var property in entityType.GetProperties())
                {
                    if (property.ClrType == typeof(string) && !property.IsUnicode())
                    {
                        property.SetIsUnicode(false);
                    }
                }
            }
        }

        public override int SaveChanges()
        {
            AtualizarAuditoria();
            return base.SaveChanges();
        }

        public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            AtualizarAuditoria();
            return await base.SaveChangesAsync(cancellationToken);
        }

        /// <summary>
        /// Atualiza campos de auditoria automaticamente (TE074 3.2.12.7)
        /// </summary>
        private void AtualizarAuditoria()
        {
            var entries = ChangeTracker.Entries()
                .Where(e => e.State == EntityState.Added || e.State == EntityState.Modified);

            foreach (var entry in entries)
            {
                if (entry.State == EntityState.Added)
                {
                    // Preencher DT_CADASTRO e USUARIO_CADASTRO_NM se não vieram do DEFAULT
                    if (entry.Property("DtCadastro").CurrentValue == null)
                    {
                        entry.Property("DtCadastro").CurrentValue = DateTime.Now;
                    }
                    if (entry.Property("UsuarioCadastroNm").CurrentValue == null)
                    {
                        // Em produção, obter do contexto de autenticação
                        entry.Property("UsuarioCadastroNm").CurrentValue = Environment.UserName;
                    }
                }
                else if (entry.State == EntityState.Modified)
                {
                    // Atualizar DT_ATUALIZACAO e USUARIO_ATUALIZACAO_NM
                    entry.Property("DtAtualizacao").CurrentValue = DateTime.Now;
                    // Em produção, obter do contexto de autenticação
                    entry.Property("UsuarioAtualizacaoNm").CurrentValue = Environment.UserName;
                }
            }
        }
    }
}
```

---

#### Migrations Manuais (Controle de DDL)

**Gerar migration**:
```bash
dotnet ef migrations add CriacaoTabelaContratoHabitacional --context CaixaDbContext --output-dir Infrastructure/Persistence/Migrations
```

**Revisar e ajustar migration gerada** (adicionar TE074 compliance):

```csharp
using Microsoft.EntityFrameworkCore.Migrations;

public partial class CriacaoTabelaContratoHabitacional : Migration
{
    protected override void Up(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.CreateTable(
            name: "FIN_CONTRATO_HABITACIONAL",
            columns: table => new
            {
                CONTRATO_HABITACIONAL_ID = table.Column<long>(type: "BIGINT", nullable: false)
                    .Annotation("SqlServer:Identity", "1, 1"),
                CLIENTE_ID = table.Column<long>(type: "BIGINT", nullable: false),
                TIPO_CONTRATO_CD = table.Column<string>(type: "VARCHAR(20)", maxLength: 20, nullable: false),
                DT_ASSINATURA = table.Column<DateTime>(type: "DATE", nullable: false),
                DT_QUITACAO = table.Column<DateTime>(type: "DATE", nullable: true),
                VALOR_TOTAL_VL = table.Column<decimal>(type: "DECIMAL(15,2)", nullable: false),
                PARCELAS_QT = table.Column<int>(type: "INT", nullable: false),
                STATUS_CD = table.Column<string>(type: "CHAR(1)", maxLength: 1, nullable: false, defaultValue: "A"),
                OBSERVACOES_TX = table.Column<string>(type: "VARCHAR(500)", maxLength: 500, nullable: true),
                DT_CADASTRO = table.Column<DateTime>(type: "DATETIME2", nullable: false, defaultValueSql: "GETDATE()"),
                USUARIO_CADASTRO_NM = table.Column<string>(type: "VARCHAR(50)", maxLength: 50, nullable: false, defaultValueSql: "SUSER_SNAME()"),
                DT_ATUALIZACAO = table.Column<DateTime>(type: "DATETIME2", nullable: true),
                USUARIO_ATUALIZACAO_NM = table.Column<string>(type: "VARCHAR(50)", maxLength: 50, nullable: true)
            },
            constraints: table =>
            {
                table.PrimaryKey("PK_FIN_CONTRATO_HABITACIONAL", x => x.CONTRATO_HABITACIONAL_ID);
                table.ForeignKey(
                    name: "FK_FIN_CONTRATO_HABIT_CLIENTE",
                    column: x => x.CLIENTE_ID,
                    principalTable: "PES_CLIENTE",
                    principalColumn: "CLIENTE_ID",
                    onDelete: ReferentialAction.Restrict);
            });

        // ========== AJUSTES MANUAIS TE074 ==========

        // 1. Compactação PAGE (TE074 3.2.9.1)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL REBUILD WITH (DATA_COMPRESSION = PAGE);
        ");

        // 2. CHECK Constraint para TIPO_CONTRATO_CD (TE074 3.2.12.4)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL
            ADD CONSTRAINT CK_FIN_CONTRATO_TIPO
            CHECK (TIPO_CONTRATO_CD IN ('SBPE', 'FGTS', 'CCFGTS', 'PROHAB'));
        ");

        // 3. CHECK Constraint para STATUS_CD (TE074 3.2.12.5)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL
            ADD CONSTRAINT CK_FIN_CONTRATO_STATUS
            CHECK (STATUS_CD IN ('A', 'Q', 'C'));
        ");

        // 4. Índice em FK (TE074 3.2.11.5 - obrigatório)
        migrationBuilder.CreateIndex(
            name: "IX_FIN_CONTRATO_HABIT_CLIENTE",
            table: "FIN_CONTRATO_HABITACIONAL",
            column: "CLIENTE_ID")
            .Annotation("SqlServer:Include", new[] { "STATUS_CD", "DT_ASSINATURA" });  // Covering index

        // 5. Índice composto (queries comuns)
        migrationBuilder.CreateIndex(
            name: "IX_FIN_CONTRATO_DT_ASSIN_STATUS",
            table: "FIN_CONTRATO_HABITACIONAL",
            columns: new[] { "DT_ASSINATURA", "STATUS_CD" });

        // 6. Descrição da tabela (TE074 3.2.2.1 - metadados)
        migrationBuilder.Sql(@"
            EXEC sp_addextendedproperty 
                @name = N'MS_Description', 
                @value = N'Contratos habitacionais (SBPE, FGTS, CCFGTS, PROHAB) - Sistema Financeiro', 
                @level0type = N'SCHEMA', @level0name = N'dbo',
                @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL';
        ");

        // 7. Descrições de colunas principais
        migrationBuilder.Sql(@"
            EXEC sp_addextendedproperty 
                @name = N'MS_Description', 
                @value = N'Identificador único do contrato habitacional (PK)', 
                @level0type = N'SCHEMA', @level0name = N'dbo',
                @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL',
                @level2type = N'COLUMN', @level2name = N'CONTRATO_HABITACIONAL_ID';
        ");
    }

    protected override void Down(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.DropTable(name: "FIN_CONTRATO_HABITACIONAL");
    }
}
```

**Gerar script SQL (não aplicar direto)**:
```bash
dotnet ef migrations script --output Scripts/Migration_20260107_ContratoHabitacional.sql --context CaixaDbContext
```

**Aplicar manualmente via SQL Server Management Studio** (SSMS) após revisão do ABD.

---

### 5.3.4 Boas Práticas Comuns (Java + .NET)

#### DTOs (Data Transfer Objects) - Evitar Exposição de Entities

```java
// Java - DTO para API REST
@Data
public class ContratoHabitacionalDTO {
    private Long contratoHabitacionalId;
    private Long clienteId;
    private String clienteNomeCompleto;  // JOIN com PES_CLIENTE
    private String tipoContratoCd;
    private LocalDate dtAssinatura;
    private LocalDate dtQuitacao;
    private BigDecimal valorTotalVl;
    private Integer parcelasQt;
    private String statusCd;
    
    // Conversão Entity -> DTO
    public static ContratoHabitacionalDTO fromEntity(ContratoHabitacional entity) {
        ContratoHabitacionalDTO dto = new ContratoHabitacionalDTO();
        dto.setContratoHabitacionalId(entity.getContratoHabitacionalId());
        dto.setClienteId(entity.getCliente().getClienteId());
        dto.setClienteNomeCompleto(entity.getCliente().getNomeCompletoNm());
        // ... outros campos
        return dto;
    }
}
```

```csharp
// .NET - DTO para API
public class ContratoHabitacionalDTO
{
    public long ContratoHabitacionalId { get; set; }
    public long ClienteId { get; set; }
    public string ClienteNomeCompleto { get; set; }
    public string TipoContratoCd { get; set; }
    public DateTime DtAssinatura { get; set; }
    public DateTime? DtQuitacao { get; set; }
    public decimal ValorTotalVl { get; set; }
    public int ParcelasQt { get; set; }
    public string StatusCd { get; set; }

    // Conversão Entity -> DTO (manual ou AutoMapper)
    public static ContratoHabitacionalDTO FromEntity(ContratoHabitacional entity)
    {
        return new ContratoHabitacionalDTO
        {
            ContratoHabitacionalId = entity.ContratoHabitacionalId,
            ClienteId = entity.ClienteId,
            ClienteNomeCompleto = entity.Cliente?.NomeCompletoNm,
            TipoContratoCd = entity.TipoContratoCd,
            DtAssinatura = entity.DtAssinatura,
            // ... outros campos
        };
    }
}
```

#### Projeções em Queries (Performance)

```java
// Java - Spring Data JPA Projection (evitar carregar entity completa)
public interface ContratoResumo {
    Long getContratoHabitacionalId();
    String getTipoContratoCd();
    BigDecimal getValorTotalVl();
    String getClienteNomeCompletoNm();  // JOIN
}

@Repository
public interface ContratoHabitacionalRepository extends JpaRepository<ContratoHabitacional, Long> {
    
    @Query("SELECT c.contratoHabitacionalId AS contratoHabitacionalId, " +
           "       c.tipoContratoCd AS tipoContratoCd, " +
           "       c.valorTotalVl AS valorTotalVl, " +
           "       cl.nomeCompletoNm AS clienteNomeCompletoNm " +
           "FROM ContratoHabitacional c " +
           "JOIN c.cliente cl " +
           "WHERE c.statusCd = :status " +
           "ORDER BY c.dtAssinatura DESC")
    List<ContratoResumo> findResumoPorStatus(@Param("status") String status);
}
```

```csharp
// .NET - LINQ Select Projection
var contratos = await _context.ContratosHabitacionais
    .Where(c => c.StatusCd == "A")
    .Select(c => new ContratoHabitacionalDTO
    {
        ContratoHabitacionalId = c.ContratoHabitacionalId,
        TipoContratoCd = c.TipoContratoCd,
        ValorTotalVl = c.ValorTotalVl,
        ClienteNomeCompleto = c.Cliente.NomeCompletoNm
    })
    .OrderByDescending(c => c.DtAssinatura)
    .ToListAsync();
```

---

**📊 Resumo SUB-PARTE 5.2**:

| Tópico | Java (JPA/Hibernate) | .NET (EF Core) | Validações TE074 |
|--------|----------------------|----------------|------------------|
| **DDL Auto-generation** | `ddl-auto=none` | Migrations manuais | ✅ 3.2.16: TE074 prevalece |
| **Nomenclatura** | `@Table(name="...")`<br>`@Column(name="...")` | `ToTable("...")`<br>`HasColumnName("...")` | ✅ 3.2.1.1: Nomes exatos |
| **PKs** | `BIGINT IDENTITY`<br>`@GeneratedValue` | `BIGINT IDENTITY`<br>`UseIdentityColumn()` | ✅ 3.2.3.1: BIGINT, sufixo _ID |
| **FKs** | `@ManyToOne`<br>`@JoinColumn` | `HasOne().WithMany()`<br>`HasForeignKey()` | ✅ 3.2.11.5: Nome = PK da tabela pai |
| **Tipos Monetários** | `BigDecimal`<br>`@Column(precision=15, scale=2)` | `decimal`<br>`HasColumnType("DECIMAL(15,2)")` | ✅ 3.2.12.1: DECIMAL(15,2), nunca FLOAT |
| **Enumerações** | `String VARCHAR(20)` | `string VARCHAR(20)` | ✅ 3.2.12.4: VARCHAR, não INT |
| **Auditoria** | `@PrePersist`/`@PreUpdate` | `SaveChanges()` override | ✅ 3.2.12.7: DT_CADASTRO, USUARIO_CADASTRO_NM |
| **Compactação** | Migration manual `DATA_COMPRESSION=PAGE` | Migration manual `DATA_COMPRESSION=PAGE` | ✅ 3.2.9.1: PAGE obrigatória |

**Próxima SUB-PARTE**: 5.3 - Spring Batch e Modelagem Dimensional

---

## SUB-PARTE 5.3: Spring Batch e Modelagem Dimensional (Parte 3 de 4)

> **Objetivo desta SUB-PARTE**: Definir padrões para tabelas Spring Batch e modelagem dimensional (Data Warehouse).  
> **Abrangência**: Seções 5.4 e 5.5  
> **Base normativa**: TE074 3.2.1-3.2.12 aplicados a contextos específicos (batch processing e analytics)

---

## 5.4 Spring Batch - Modelagem de Tabelas Metadata

### 5.4.1 Visão Geral do Spring Batch

**Spring Batch** é um framework Java para processamento em lote (batch processing):
- **Job**: Unidade de trabalho (ex: importação mensal de contratos)
- **Step**: Etapa do job (ex: leitura CSV → processamento → escrita no banco)
- **JobRepository**: Persistência de metadados de execução

**Tabelas padrão Spring Batch** (schema original):
- `BATCH_JOB_INSTANCE`: Instâncias de jobs (unique per parameters)
- `BATCH_JOB_EXECUTION`: Execuções de jobs (status, timestamps)
- `BATCH_STEP_EXECUTION`: Execuções de steps
- `BATCH_JOB_EXECUTION_PARAMS`: Parâmetros de cada execução
- `BATCH_JOB_EXECUTION_CONTEXT`: Contexto persistente (restart)
- `BATCH_STEP_EXECUTION_CONTEXT`: Contexto de steps

**Adaptação CAIXA** (TE074 3.2.1.1):
> Prefixo obrigatório: **SPB_** (Spring Batch)  
> Nomenclatura: **SPB_JOB_INSTANCIA**, **SPB_JOB_EXECUCAO**, etc.

---

### 5.4.2 Tabelas Spring Batch Adaptadas (TE074)

#### DDL Completo - SQL Server

```sql
-- ========================================
-- 1. SPB_JOB_INSTANCIA (BATCH_JOB_INSTANCE)
-- ========================================
-- Armazena instâncias únicas de jobs
-- PK: Identificador único da instância
-- UK: Job name + hash dos parâmetros (garante unicidade)

CREATE TABLE SPB_JOB_INSTANCIA (
    JOB_INSTANCIA_ID BIGINT NOT NULL IDENTITY(1,1),  -- TE074 3.2.3.1: BIGINT, sufixo _ID
    VERSAO_NR INT NOT NULL DEFAULT 0,  -- Controle de versionamento (optimistic locking)
    JOB_NM VARCHAR(100) NOT NULL,  -- Nome do job (TE074 3.2.12.4: _NM para nome)
    JOB_KEY_TX VARCHAR(32) NOT NULL,  -- Hash MD5 dos parâmetros (unicidade)
    -- Auditoria (TE074 3.2.12.7)
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_JOB_INSTANCIA PRIMARY KEY (JOB_INSTANCIA_ID),
    CONSTRAINT UK_SPB_JOB_INST_JOB_KEY UNIQUE (JOB_NM, JOB_KEY_TX)  -- TE074 3.2.6.1: UK explícita
) WITH (DATA_COMPRESSION = PAGE);  -- TE074 3.2.9.1: Compactação obrigatória
GO

CREATE INDEX IX_SPB_JOB_INSTANCIA_JOB_NM ON SPB_JOB_INSTANCIA (JOB_NM);
GO

-- ========================================
-- 2. SPB_JOB_EXECUCAO (BATCH_JOB_EXECUTION)
-- ========================================
-- Armazena execuções de jobs (pode haver múltiplas execuções da mesma instância)
-- Uma instância pode ter várias execuções (restarts)

CREATE TABLE SPB_JOB_EXECUCAO (
    JOB_EXECUCAO_ID BIGINT NOT NULL IDENTITY(1,1),
    VERSAO_NR INT NOT NULL DEFAULT 0,
    JOB_INSTANCIA_ID BIGINT NOT NULL,  -- FK para SPB_JOB_INSTANCIA
    DT_CRIACAO DATETIME2 NOT NULL DEFAULT GETDATE(),
    DT_INICIO DATETIME2 NULL,  -- Quando job iniciou (NULL se ainda não iniciado)
    DT_FIM DATETIME2 NULL,  -- Quando job terminou
    STATUS_CD VARCHAR(10) NOT NULL DEFAULT 'STARTED',  -- COMPLETED, STARTING, STARTED, STOPPING, STOPPED, FAILED, ABANDONED, UNKNOWN
    EXIT_CODE_CD VARCHAR(20) NULL,  -- COMPLETED, FAILED, STOPPED, UNKNOWN
    EXIT_MESSAGE_TX VARCHAR(2500) NULL,  -- Mensagem de saída (erro ou sucesso)
    ULTIMA_ATUALIZACAO_DT DATETIME2 NULL,  -- Timestamp da última atualização
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_JOB_EXECUCAO PRIMARY KEY (JOB_EXECUCAO_ID),
    CONSTRAINT FK_SPB_JOB_EXEC_INSTANCIA FOREIGN KEY (JOB_INSTANCIA_ID) 
        REFERENCES SPB_JOB_INSTANCIA (JOB_INSTANCIA_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_JOB_EXEC_STATUS CHECK (STATUS_CD IN ('COMPLETED', 'STARTING', 'STARTED', 'STOPPING', 'STOPPED', 'FAILED', 'ABANDONED', 'UNKNOWN'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_JOB_EXEC_INSTANCIA ON SPB_JOB_EXECUCAO (JOB_INSTANCIA_ID);
CREATE INDEX IX_SPB_JOB_EXEC_DT_INICIO ON SPB_JOB_EXECUCAO (DT_INICIO DESC);
CREATE INDEX IX_SPB_JOB_EXEC_STATUS ON SPB_JOB_EXECUCAO (STATUS_CD, DT_INICIO DESC);
GO

-- ========================================
-- 3. SPB_JOB_PARAMETRO (BATCH_JOB_EXECUTION_PARAMS)
-- ========================================
-- Armazena parâmetros de cada execução de job
-- Relacionamento: 1 JOB_EXECUCAO -> N PARAMETROS

CREATE TABLE SPB_JOB_PARAMETRO (
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- FK composta (parte da PK)
    PARAMETRO_NM VARCHAR(100) NOT NULL,  -- Nome do parâmetro
    TIPO_CD VARCHAR(10) NOT NULL,  -- STRING, DATE, LONG, DOUBLE
    VALOR_STRING_TX VARCHAR(250) NULL,  -- Valor se tipo STRING
    VALOR_DATA_DT DATETIME2 NULL,  -- Valor se tipo DATE
    VALOR_LONG_NR BIGINT NULL,  -- Valor se tipo LONG
    VALOR_DOUBLE_NR FLOAT NULL,  -- Valor se tipo DOUBLE (único caso onde FLOAT é aceitável - compatibilidade Spring Batch)
    IDENTIFICADOR_FL CHAR(1) NOT NULL DEFAULT 'S',  -- 'S'/'N' - Se compõe a identidade do job (TE074 3.2.12.5: CHAR(1))
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_SPB_JOB_PARAMETRO PRIMARY KEY (JOB_EXECUCAO_ID, PARAMETRO_NM),  -- PK composta (TE074 3.2.3.2)
    CONSTRAINT FK_SPB_JOB_PARAM_EXEC FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_JOB_PARAM_TIPO CHECK (TIPO_CD IN ('STRING', 'DATE', 'LONG', 'DOUBLE')),
    CONSTRAINT CK_SPB_JOB_PARAM_IDENT CHECK (IDENTIFICADOR_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_JOB_PARAM_EXEC_ID ON SPB_JOB_PARAMETRO (JOB_EXECUCAO_ID);
GO

-- ========================================
-- 4. SPB_PASSO_EXECUCAO (BATCH_STEP_EXECUTION)
-- ========================================
-- Armazena execuções de steps (passos de um job)
-- Relacionamento: 1 JOB_EXECUCAO -> N PASSO_EXECUCAO

CREATE TABLE SPB_PASSO_EXECUCAO (
    PASSO_EXECUCAO_ID BIGINT NOT NULL IDENTITY(1,1),
    VERSAO_NR INT NOT NULL DEFAULT 0,
    PASSO_NM VARCHAR(100) NOT NULL,  -- Nome do step
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- FK para SPB_JOB_EXECUCAO
    DT_INICIO DATETIME2 NOT NULL DEFAULT GETDATE(),
    DT_FIM DATETIME2 NULL,
    STATUS_CD VARCHAR(10) NOT NULL DEFAULT 'STARTED',  -- COMPLETED, STARTING, STARTED, STOPPING, STOPPED, FAILED, ABANDONED, UNKNOWN
    COMMIT_COUNT_QT INT NOT NULL DEFAULT 0,  -- Quantidade de commits (TE074 3.2.12.2: _QT para quantidade)
    READ_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens lidos
    FILTER_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens filtrados
    WRITE_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens escritos
    READ_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados na leitura (erro)
    WRITE_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados na escrita (erro)
    PROCESS_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados no processamento
    ROLLBACK_COUNT_QT INT NOT NULL DEFAULT 0,  -- Quantidade de rollbacks
    EXIT_CODE_CD VARCHAR(20) NULL,
    EXIT_MESSAGE_TX VARCHAR(2500) NULL,
    ULTIMA_ATUALIZACAO_DT DATETIME2 NULL,
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_PASSO_EXECUCAO PRIMARY KEY (PASSO_EXECUCAO_ID),
    CONSTRAINT FK_SPB_PASSO_EXEC_JOB FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_PASSO_EXEC_STATUS CHECK (STATUS_CD IN ('COMPLETED', 'STARTING', 'STARTED', 'STOPPING', 'STOPPED', 'FAILED', 'ABANDONED', 'UNKNOWN'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_PASSO_EXEC_JOB_ID ON SPB_PASSO_EXECUCAO (JOB_EXECUCAO_ID);
CREATE INDEX IX_SPB_PASSO_EXEC_DT_INICIO ON SPB_PASSO_EXECUCAO (DT_INICIO DESC);
GO

-- ========================================
-- 5. SPB_JOB_CONTEXTO (BATCH_JOB_EXECUTION_CONTEXT)
-- ========================================
-- Armazena contexto de execução de job (para restart)
-- Contexto serializado em JSON/XML

CREATE TABLE SPB_JOB_CONTEXTO (
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- PK = FK (1:1 com SPB_JOB_EXECUCAO)
    CONTEXTO_CURTO_TX VARCHAR(2500) NULL,  -- Contexto pequeno (< 2500 chars)
    CONTEXTO_SERIALIZADO_TX VARCHAR(MAX) NULL,  -- Contexto completo (JSON/XML)
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    DT_ATUALIZACAO DATETIME2,
    CONSTRAINT PK_SPB_JOB_CONTEXTO PRIMARY KEY (JOB_EXECUCAO_ID),
    CONSTRAINT FK_SPB_JOB_CTX_EXEC FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- 6. SPB_PASSO_CONTEXTO (BATCH_STEP_EXECUTION_CONTEXT)
-- ========================================
-- Armazena contexto de execução de step (para restart)

CREATE TABLE SPB_PASSO_CONTEXTO (
    PASSO_EXECUCAO_ID BIGINT NOT NULL,  -- PK = FK (1:1 com SPB_PASSO_EXECUCAO)
    CONTEXTO_CURTO_TX VARCHAR(2500) NULL,
    CONTEXTO_SERIALIZADO_TX VARCHAR(MAX) NULL,
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    DT_ATUALIZACAO DATETIME2,
    CONSTRAINT PK_SPB_PASSO_CONTEXTO PRIMARY KEY (PASSO_EXECUCAO_ID),
    CONSTRAINT FK_SPB_PASSO_CTX_EXEC FOREIGN KEY (PASSO_EXECUCAO_ID) 
        REFERENCES SPB_PASSO_EXECUCAO (PASSO_EXECUCAO_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- SEQUENCES (caso não use IDENTITY)
-- ========================================
-- Spring Batch usa sequences para geração de IDs
-- SQL Server: IDENTITY é preferível (TE074), mas sequences são suportadas

CREATE SEQUENCE SEQ_SPB_JOB_INSTANCIA START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_SPB_JOB_EXECUCAO START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_SPB_PASSO_EXECUCAO START WITH 1 INCREMENT BY 1;
GO
```

---

### 5.4.3 Configuração Spring Batch (application.properties)

```properties
# ========================================
# SPRING BATCH - TABELAS PERSONALIZADAS CAIXA
# ========================================

# Prefixo das tabelas (TE074 3.2.1.2: SPB_)
spring.batch.jdbc.table-prefix=SPB_

# Schema (deixar vazio se usar schema padrão dbo)
spring.batch.jdbc.schema=

# Inicialização do schema (NEVER em produção - DDL manual)
spring.batch.jdbc.initialize-schema=never

# Isolamento transacional
spring.batch.jdbc.isolation-level-for-create=SERIALIZABLE

# ========================================
# DATASOURCE
# ========================================
spring.datasource.url=jdbc:sqlserver://localhost:1433;databaseName=DB_BATCH;encrypt=true;trustServerCertificate=true
spring.datasource.username=${DB_USER}
spring.datasource.password=${DB_PASSWORD}
spring.datasource.driver-class-name=com.microsoft.sqlserver.jdbc.SQLServerDriver

# Pool de conexões (HikariCP)
spring.datasource.hikari.maximum-pool-size=10
spring.datasource.hikari.minimum-idle=2
spring.datasource.hikari.connection-timeout=30000
```

---

### 5.4.4 Mapeamento Spring Batch (CustomBatchConfigurer)

**Classe customizada para usar nomenclatura CAIXA**:

```java
package br.gov.caixa.batch.config;

import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.repository.support.JobRepositoryFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

/**
 * Configurador customizado para usar prefixo SPB_ (TE074 3.2.1.2)
 * Sobrescreve configuração padrão do Spring Batch
 */
@Configuration
public class CaixaBatchConfigurer extends DefaultBatchConfigurer {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private PlatformTransactionManager transactionManager;

    @Override
    protected JobRepository createJobRepository() throws Exception {
        JobRepositoryFactoryBean factory = new JobRepositoryFactoryBean();
        factory.setDataSource(dataSource);
        factory.setTransactionManager(transactionManager);
        
        // Prefixo das tabelas (TE074 compliance)
        factory.setTablePrefix("SPB_");
        
        // Isolamento transacional
        factory.setIsolationLevelForCreate("ISOLATION_SERIALIZABLE");
        
        factory.afterPropertiesSet();
        return factory.getObject();
    }
}
```

**Exemplo de Job Definition**:

```java
package br.gov.caixa.batch.jobs;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import javax.sql.DataSource;
import java.math.BigDecimal;

@Configuration
@EnableBatchProcessing
public class ImportacaoContratosBatchConfig {

    @Autowired
    private JobBuilderFactory jobBuilderFactory;

    @Autowired
    private StepBuilderFactory stepBuilderFactory;

    @Autowired
    private DataSource dataSource;

    /**
     * Job: Importação mensal de contratos habitacionais
     * Nome: JOB_IMPORTACAO_CONTRATOS_MENSAL
     */
    @Bean
    public Job importacaoContratosJob() {
        return jobBuilderFactory.get("JOB_IMPORTACAO_CONTRATOS_MENSAL")
            .incrementer(new RunIdIncrementer())  // Parâmetro automático run.id
            .start(stepLeituraArquivo())
            .next(stepValidacaoDados())
            .next(stepGravacaoBanco())
            .build();
    }

    @Bean
    public Step stepLeituraArquivo() {
        return stepBuilderFactory.get("STEP_LEITURA_CSV")
            .<ContratoDTO, ContratoDTO>chunk(1000)  // Commit a cada 1000 registros
            .reader(contratoReader())
            .processor(contratoProcessor())
            .writer(contratoWriter())
            .faultTolerant()
            .skipLimit(10)  // Pula até 10 erros
            .skip(Exception.class)
            .build();
    }

    @Bean
    public FlatFileItemReader<ContratoDTO> contratoReader() {
        return new FlatFileItemReaderBuilder<ContratoDTO>()
            .name("contratoReader")
            .resource(new ClassPathResource("contratos_mensal.csv"))
            .delimited()
            .delimiter(";")
            .names("clienteId", "tipoContrato", "dtAssinatura", "valorTotal", "parcelas")
            .targetType(ContratoDTO.class)
            .build();
    }

    @Bean
    public ItemProcessor<ContratoDTO, ContratoDTO> contratoProcessor() {
        return contrato -> {
            // Validações customizadas
            if (contrato.getValorTotal().compareTo(BigDecimal.ZERO) <= 0) {
                throw new IllegalArgumentException("Valor total inválido");
            }
            return contrato;
        };
    }

    @Bean
    public JdbcBatchItemWriter<ContratoDTO> contratoWriter() {
        return new JdbcBatchItemWriterBuilder<ContratoDTO>()
            .dataSource(dataSource)
            .sql("INSERT INTO FIN_CONTRATO_HABITACIONAL " +
                 "(CLIENTE_ID, TIPO_CONTRATO_CD, DT_ASSINATURA, VALOR_TOTAL_VL, PARCELAS_QT, STATUS_CD) " +
                 "VALUES (:clienteId, :tipoContrato, :dtAssinatura, :valorTotal, :parcelas, 'A')")
            .beanMapped()
            .build();
    }

    // Steps adicionais...
}
```

---

### 5.4.5 Particionamento e Retenção (TE074 3.2.8.3, 3.2.10)

**Critério de particionamento**:
- Tabelas SPB_JOB_EXECUCAO e SPB_PASSO_EXECUCAO podem exceder **100M execuções/ano** em ambientes com muitos jobs
- **Particionamento por ano** (coluna DT_INICIO)

**Política de retenção**:
- **Desenvolvimento**: 90 dias
- **Produção**: 6 meses
- **Histórico**: Migrar para SPB_JOB_EXECUCAO_HIST após 6 meses

**Stored Procedure de arquivamento**:

```sql
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_EXECUCOES_BATCH
    @DiasRetencao INT = 180  -- 6 meses padrão
AS
BEGIN
    DECLARE @DataCorte DATETIME2 = DATEADD(DAY, -@DiasRetencao, GETDATE());

    -- Arquivar execuções antigas (apenas jobs concluídos/finalizados)
    INSERT INTO SPB_JOB_EXECUCAO_HIST 
    SELECT * FROM SPB_JOB_EXECUCAO
    WHERE DT_FIM < @DataCorte
      AND STATUS_CD IN ('COMPLETED', 'FAILED', 'STOPPED');

    -- Deletar (cascade deleta parametros, passos, contextos)
    DELETE FROM SPB_JOB_EXECUCAO
    WHERE DT_FIM < @DataCorte
      AND STATUS_CD IN ('COMPLETED', 'FAILED', 'STOPPED');
END;
GO
```

---

## 5.5 Modelagem Dimensional (Data Warehouse)

### 5.5.1 Conceitos Fundamentais

**Data Warehouse (DW)**: Repositório analítico otimizado para consultas agregadas (OLAP), não transações (OLTP).

**Diferenças OLTP vs OLAP**:

| Aspecto | OLTP (Transacional) | OLAP (Analítico/DW) |
|---------|---------------------|---------------------|
| **Objetivo** | Operações do dia-a-dia | Análises e relatórios |
| **Normalização** | 3NF (normalizado) | Desnormalizado (star/snowflake) |
| **Queries** | INSERT/UPDATE/DELETE frequentes | SELECT agregados (SUM, AVG, GROUP BY) |
| **Volumetria** | Dados recentes (online) | Histórico completo (anos) |
| **Performance** | Latência baixa (ms) | Throughput alto (milhões de linhas) |
| **Índices** | B-tree (PKs, FKs) | Columnstore, particionamento |
| **Exemplo** | FIN_CONTRATO_HABITACIONAL | FATO_CONTRATO_HABITACIONAL |

---

### 5.5.2 Nomenclatura TE074 para DW

| Tipo de Objeto | Prefixo | Exemplo | Descrição |
|----------------|---------|---------|-----------|
| **Tabela Fato** | `FATO_` | `FATO_VENDAS`, `FATO_CONTRATOS` | Métricas/medidas (valores, quantidades) |
| **Tabela Dimensão** | `DIM_` | `DIM_CLIENTE`, `DIM_TEMPO` | Atributos descritivos (quem, quando, onde) |
| **Staging** | `STG_` | `STG_VENDAS_CSV` | Área de carga inicial (raw data) |
| **Integração** | `INT_` | `INT_VENDAS_LIMPO` | Área de transformação/limpeza |
| **Data Mart** | `DM_` | `DM_VENDAS_REGIAO_SUL` | Subconjunto do DW (área específica) |

**Sufixos para colunas dimensionais/fatos**:

| Sufixo | Uso | Exemplo |
|--------|-----|---------|
| `_SK` | Surrogate Key (chave artificial da dimensão) | `CLIENTE_SK` (BIGINT IDENTITY) |
| `_NK` | Natural Key (chave de negócio original) | `CLIENTE_NK` (CPF, ID do sistema OLTP) |
| `_VL` | Valor/Medida (fato) | `VALOR_TOTAL_VL`, `RECEITA_VL` |
| `_QT` | Quantidade (fato) | `PARCELAS_QT`, `ITENS_VENDIDOS_QT` |
| `_DT` | Data (dimensão ou fato) | `DT_ASSINATURA`, `DT_VENDA` |
| `_DS` | Descrição | `CLIENTE_DS`, `PRODUTO_DS` |
| `_CD` | Código | `TIPO_CONTRATO_CD`, `REGIAO_CD` |

---

### 5.5.3 Star Schema (Esquema Estrela)

**Estrutura**:
- **1 tabela FATO** (centro): Métricas numéricas
- **N tabelas DIM** (pontas): Atributos descritivos
- **Relacionamentos**: Fato → Dimensão (N:1)

#### Exemplo: Fato Contratos Habitacionais

```sql
-- ========================================
-- DIMENSÕES
-- ========================================

-- DIM_CLIENTE (Slowly Changing Dimension Type 2)
CREATE TABLE DIM_CLIENTE (
    CLIENTE_SK BIGINT NOT NULL IDENTITY(1,1),  -- Surrogate key (TE074 3.2.3.1)
    CLIENTE_NK BIGINT NOT NULL,  -- Natural key (CLIENTE_ID do sistema OLTP)
    CPF_CD VARCHAR(11),  -- Atributo de negócio
    NOME_COMPLETO_NM VARCHAR(200),
    EMAIL_TX VARCHAR(100),
    TELEFONE_NR VARCHAR(15),
    ENDERECO_TX VARCHAR(300),
    CIDADE_NM VARCHAR(100),
    UF_CD CHAR(2),
    -- SCD Type 2 (versionamento)
    DT_INICIO_VIGENCIA DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE),  -- Quando essa versão começou
    DT_FIM_VIGENCIA DATE NULL,  -- Quando essa versão terminou (NULL = vigente)
    VERSAO_ATUAL_FL CHAR(1) NOT NULL DEFAULT 'S',  -- 'S' = versão atual, 'N' = histórica
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),  -- Quando foi carregado no DW
    CONSTRAINT PK_DIM_CLIENTE PRIMARY KEY (CLIENTE_SK),
    CONSTRAINT CK_DIM_CLIENTE_VERSAO_ATUAL CHECK (VERSAO_ATUAL_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_DIM_CLIENTE_NK ON DIM_CLIENTE (CLIENTE_NK, VERSAO_ATUAL_FL);
CREATE INDEX IX_DIM_CLIENTE_CPF ON DIM_CLIENTE (CPF_CD) WHERE VERSAO_ATUAL_FL = 'S';
GO

-- DIM_TEMPO (Dimensão de tempo pré-populada)
CREATE TABLE DIM_TEMPO (
    TEMPO_SK INT NOT NULL,  -- YYYYMMDD (ex: 20260107)
    DATA_COMPLETA_DT DATE NOT NULL,
    ANO_NR INT NOT NULL,
    MES_NR INT NOT NULL,
    DIA_NR INT NOT NULL,
    TRIMESTRE_NR INT NOT NULL,
    SEMESTRE_NR INT NOT NULL,
    DIA_SEMANA_NR INT NOT NULL,  -- 1=Domingo, 7=Sábado
    DIA_SEMANA_NM VARCHAR(20) NOT NULL,  -- 'Segunda-feira'
    MES_NM VARCHAR(20) NOT NULL,  -- 'Janeiro'
    DIA_UTIL_FL CHAR(1) NOT NULL,  -- 'S'/'N'
    FERIADO_FL CHAR(1) NOT NULL,  -- 'S'/'N'
    FERIADO_DS VARCHAR(100),  -- Nome do feriado
    ANO_MES_CD CHAR(6) NOT NULL,  -- YYYYMM (ex: 202601)
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_TEMPO PRIMARY KEY (TEMPO_SK),
    CONSTRAINT CK_DIM_TEMPO_DIA_UTIL CHECK (DIA_UTIL_FL IN ('S', 'N')),
    CONSTRAINT CK_DIM_TEMPO_FERIADO CHECK (FERIADO_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_DIM_TEMPO_DATA ON DIM_TEMPO (DATA_COMPLETA_DT);
CREATE INDEX IX_DIM_TEMPO_ANO_MES ON DIM_TEMPO (ANO_NR, MES_NR);
GO

-- DIM_TIPO_CONTRATO (Dimensão pequena - lookup)
CREATE TABLE DIM_TIPO_CONTRATO (
    TIPO_CONTRATO_SK INT NOT NULL IDENTITY(1,1),
    TIPO_CONTRATO_CD VARCHAR(20) NOT NULL UNIQUE,  -- SBPE, FGTS, CCFGTS, PROHAB
    TIPO_CONTRATO_DS VARCHAR(100) NOT NULL,  -- Descrição completa
    CATEGORIA_NM VARCHAR(50),  -- Habitacional, Comercial, etc.
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_SK)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- DIM_STATUS (Dimensão pequena - lookup)
CREATE TABLE DIM_STATUS (
    STATUS_SK INT NOT NULL IDENTITY(1,1),
    STATUS_CD CHAR(1) NOT NULL UNIQUE,  -- A, Q, C
    STATUS_DS VARCHAR(50) NOT NULL,  -- Ativo, Quitado, Cancelado
    CATEGORIA_NM VARCHAR(20),  -- Operacional, Finalizado
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_STATUS PRIMARY KEY (STATUS_SK)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- TABELA FATO
-- ========================================

CREATE TABLE FATO_CONTRATO_HABITACIONAL (
    -- Surrogate Keys (FKs para dimensões)
    CLIENTE_SK BIGINT NOT NULL,  -- FK para DIM_CLIENTE
    DT_ASSINATURA_SK INT NOT NULL,  -- FK para DIM_TEMPO (YYYYMMDD)
    DT_QUITACAO_SK INT NULL,  -- FK para DIM_TEMPO (NULL se não quitado)
    TIPO_CONTRATO_SK INT NOT NULL,  -- FK para DIM_TIPO_CONTRATO
    STATUS_SK INT NOT NULL,  -- FK para DIM_STATUS
    
    -- Degenerate Dimension (chave de negócio no fato - sem dimensão própria)
    CONTRATO_HABITACIONAL_NK BIGINT NOT NULL,  -- ID original do OLTP
    
    -- Métricas/Medidas (aditivas)
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,  -- Valor total do contrato (TE074 3.2.12.1)
    PARCELAS_QT INT NOT NULL,  -- Quantidade de parcelas
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,  -- Valor médio da parcela
    PRAZO_MESES_QT INT NOT NULL,  -- Prazo em meses
    
    -- Métricas calculadas (semi-aditivas - depende da dimensão tempo)
    JUROS_TAXA_VL DECIMAL(5,4),  -- Taxa de juros anual (ex: 0.0850 = 8.5%)
    VALOR_TOTAL_PAGO_VL DECIMAL(15,2),  -- Total pago até o momento (parcial)
    SALDO_DEVEDOR_VL DECIMAL(15,2),  -- Saldo devedor atual
    
    -- Flags (fatos binários)
    QUITADO_FL CHAR(1) NOT NULL DEFAULT 'N',  -- 'S'/'N'
    INADIMPLENTE_FL CHAR(1) NOT NULL DEFAULT 'N',  -- 'S'/'N'
    
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),  -- Quando foi carregado no DW
    DT_ATUALIZACAO DATETIME2,  -- Última atualização (para fatos mutáveis)
    
    -- Constraints
    CONSTRAINT PK_FATO_CONTRATO_HABIT PRIMARY KEY (CONTRATO_HABITACIONAL_NK),  -- PK = NK (único contrato)
    CONSTRAINT FK_FATO_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_SK) 
        REFERENCES DIM_CLIENTE (CLIENTE_SK),
    CONSTRAINT FK_FATO_CONTRATO_DT_ASSIN FOREIGN KEY (DT_ASSINATURA_SK) 
        REFERENCES DIM_TEMPO (TEMPO_SK),
    CONSTRAINT FK_FATO_CONTRATO_DT_QUIT FOREIGN KEY (DT_QUITACAO_SK) 
        REFERENCES DIM_TEMPO (TEMPO_SK),
    CONSTRAINT FK_FATO_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_SK) 
        REFERENCES DIM_TIPO_CONTRATO (TIPO_CONTRATO_SK),
    CONSTRAINT FK_FATO_CONTRATO_STATUS FOREIGN KEY (STATUS_SK) 
        REFERENCES DIM_STATUS (STATUS_SK),
    CONSTRAINT CK_FATO_CONTRATO_QUITADO CHECK (QUITADO_FL IN ('S', 'N')),
    CONSTRAINT CK_FATO_CONTRATO_INADIM CHECK (INADIMPLENTE_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

-- Índices para análises comuns
CREATE INDEX IX_FATO_CONTRATO_CLIENTE ON FATO_CONTRATO_HABITACIONAL (CLIENTE_SK);
CREATE INDEX IX_FATO_CONTRATO_DT_ASSIN ON FATO_CONTRATO_HABITACIONAL (DT_ASSINATURA_SK);
CREATE INDEX IX_FATO_CONTRATO_TIPO ON FATO_CONTRATO_HABITACIONAL (TIPO_CONTRATO_SK);
CREATE INDEX IX_FATO_CONTRATO_STATUS ON FATO_CONTRATO_HABITACIONAL (STATUS_SK);

-- Índice columnstore para queries analíticas (TE074 3.2.4.4 - DW)
CREATE NONCLUSTERED COLUMNSTORE INDEX IX_FATO_CONTRATO_COLUMNSTORE
ON FATO_CONTRATO_HABITACIONAL (
    CLIENTE_SK, DT_ASSINATURA_SK, TIPO_CONTRATO_SK, STATUS_SK,
    VALOR_TOTAL_VL, PARCELAS_QT, VALOR_PARCELA_VL, QUITADO_FL
);
GO
```

---

### 5.5.4 Slowly Changing Dimensions (SCD)

**SCD Type 1**: Sobrescrever (sem histórico)

```sql
-- Exemplo: Correção de endereço (não guardar versão antiga)
UPDATE DIM_CLIENTE
SET ENDERECO_TX = 'Rua Nova, 123',
    CIDADE_NM = 'Brasília',
    UF_CD = 'DF',
    DT_ATUALIZACAO = GETDATE()
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'S';
```

**SCD Type 2**: Versionamento (histórico completo) - **RECOMENDADO CAIXA**

```sql
-- Exemplo: Cliente mudou de cidade - criar nova versão
BEGIN TRANSACTION;

-- 1. Expirar versão atual
UPDATE DIM_CLIENTE
SET DT_FIM_VIGENCIA = CAST(GETDATE() AS DATE),
    VERSAO_ATUAL_FL = 'N'
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'S';

-- 2. Inserir nova versão
INSERT INTO DIM_CLIENTE (
    CLIENTE_NK, CPF_CD, NOME_COMPLETO_NM, EMAIL_TX, TELEFONE_NR,
    ENDERECO_TX, CIDADE_NM, UF_CD,
    DT_INICIO_VIGENCIA, DT_FIM_VIGENCIA, VERSAO_ATUAL_FL
)
SELECT 
    CLIENTE_NK, CPF_CD, NOME_COMPLETO_NM, EMAIL_TX, TELEFONE_NR,
    'Rua Nova, 123' AS ENDERECO_TX,  -- Novo endereço
    'São Paulo' AS CIDADE_NM,  -- Nova cidade
    'SP' AS UF_CD,  -- Novo UF
    CAST(GETDATE() AS DATE) AS DT_INICIO_VIGENCIA,
    NULL AS DT_FIM_VIGENCIA,  -- Vigente
    'S' AS VERSAO_ATUAL_FL
FROM DIM_CLIENTE
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'N'  -- Versão que acabou de expirar
  AND DT_FIM_VIGENCIA = CAST(GETDATE() AS DATE);

COMMIT TRANSACTION;
```

**SCD Type 3**: Colunas separadas (versão atual + anterior)

```sql
-- Exemplo: Guardar apenas última alteração
ALTER TABLE DIM_CLIENTE ADD ENDERECO_ANTERIOR_TX VARCHAR(300);
ALTER TABLE DIM_CLIENTE ADD DT_MUDANCA_ENDERECO DATE;

UPDATE DIM_CLIENTE
SET ENDERECO_ANTERIOR_TX = ENDERECO_TX,  -- Guardar anterior
    ENDERECO_TX = 'Rua Nova, 123',  -- Atualizar atual
    DT_MUDANCA_ENDERECO = GETDATE()
WHERE CLIENTE_NK = 12345;
```

---

### 5.5.5 Snowflake Schema (Normalização de Dimensões)

**Quando usar**: Dimensões muito grandes com hierarquias (ex: Geografia: País → Estado → Cidade).

```sql
-- DIM_CIDADE (normalizada)
CREATE TABLE DIM_CIDADE (
    CIDADE_SK INT NOT NULL IDENTITY(1,1),
    CIDADE_NM VARCHAR(100) NOT NULL,
    UF_SK INT NOT NULL,  -- FK para DIM_UF
    POPULACAO_QT INT,
    CONSTRAINT PK_DIM_CIDADE PRIMARY KEY (CIDADE_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- DIM_UF (normalizada)
CREATE TABLE DIM_UF (
    UF_SK INT NOT NULL IDENTITY(1,1),
    UF_CD CHAR(2) NOT NULL UNIQUE,
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_SK INT NOT NULL,  -- FK para DIM_REGIAO
    CONSTRAINT PK_DIM_UF PRIMARY KEY (UF_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- DIM_REGIAO (normalizada)
CREATE TABLE DIM_REGIAO (
    REGIAO_SK INT NOT NULL IDENTITY(1,1),
    REGIAO_CD VARCHAR(10) NOT NULL UNIQUE,  -- SUL, SUDESTE, NORDESTE, NORTE, CENTRO-OESTE
    REGIAO_NM VARCHAR(50) NOT NULL,
    CONSTRAINT PK_DIM_REGIAO PRIMARY KEY (REGIAO_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- FKs (snowflake)
ALTER TABLE DIM_CIDADE ADD CONSTRAINT FK_DIM_CIDADE_UF 
    FOREIGN KEY (UF_SK) REFERENCES DIM_UF (UF_SK);

ALTER TABLE DIM_UF ADD CONSTRAINT FK_DIM_UF_REGIAO 
    FOREIGN KEY (REGIAO_SK) REFERENCES DIM_REGIAO (REGIAO_SK);
```

**Vantagem**: Reduz redundância (nome da região não se repete em cada cidade).  
**Desvantagem**: Mais JOINs (performance), maior complexidade.

---

### 5.5.6 ETL Layers (Staging → Integration → Data Warehouse)

```sql
-- ========================================
-- LAYER 1: STAGING (STG_) - Carga bruta
-- ========================================
-- Dados extraídos "as is" de sistemas OLTP, CSVs, APIs

CREATE TABLE STG_CONTRATOS_OLTP (
    CONTRATO_ID BIGINT,  -- Sem constraints (aceita duplicados, nulos)
    CLIENTE_ID BIGINT,
    TIPO_CONTRATO VARCHAR(50),  -- Pode vir com inconsistências
    DT_ASSINATURA VARCHAR(20),  -- Texto (não validado)
    VALOR_TOTAL VARCHAR(30),  -- Texto (pode ter R$, vírgulas)
    PARCELAS VARCHAR(10),
    STATUS VARCHAR(10),
    -- Metadados de carga
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    ARQUIVO_ORIGEM_NM VARCHAR(200)
);
-- SEM compactação, SEM índices (tabela temporária, truncada a cada carga)

-- ========================================
-- LAYER 2: INTEGRATION (INT_) - Limpeza e transformação
-- ========================================
-- Dados limpos, validados, padronizados

CREATE TABLE INT_CONTRATOS_LIMPO (
    CONTRATO_ID BIGINT NOT NULL PRIMARY KEY,  -- Já validado (único)
    CLIENTE_ID BIGINT NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(20) NOT NULL,  -- Padronizado (SBPE, FGTS)
    DT_ASSINATURA DATE NOT NULL,  -- Convertido para DATE
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,  -- Limpo (sem R$, vírgulas)
    PARCELAS_QT INT NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,  -- A/Q/C
    -- Metadados
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    VALIDACAO_OK_FL CHAR(1) DEFAULT 'S'
) WITH (DATA_COMPRESSION = PAGE);

-- ========================================
-- LAYER 3: DATA WAREHOUSE (FATO_, DIM_)
-- ========================================
-- Modelo dimensional otimizado para análise (já criado acima)

-- ========================================
-- ETL PROCESS (exemplo simplificado)
-- ========================================

-- 1. Truncar staging (limpar carga anterior)
TRUNCATE TABLE STG_CONTRATOS_OLTP;

-- 2. Carregar dados brutos (BULK INSERT, SSIS, Azure Data Factory)
BULK INSERT STG_CONTRATOS_OLTP
FROM 'C:\Dados\contratos_20260107.csv'
WITH (FIELDTERMINATOR = ';', ROWTERMINATOR = '\n', FIRSTROW = 2);

-- 3. Limpar e transformar para INT_
INSERT INTO INT_CONTRATOS_LIMPO (
    CONTRATO_ID, CLIENTE_ID, TIPO_CONTRATO_CD, DT_ASSINATURA,
    VALOR_TOTAL_VL, PARCELAS_QT, STATUS_CD
)
SELECT 
    CONTRATO_ID,
    CLIENTE_ID,
    UPPER(LTRIM(RTRIM(TIPO_CONTRATO))) AS TIPO_CONTRATO_CD,  -- Limpar espaços
    TRY_CAST(DT_ASSINATURA AS DATE) AS DT_ASSINATURA,  -- Conversão segura
    TRY_CAST(REPLACE(REPLACE(VALOR_TOTAL, 'R$', ''), ',', '.') AS DECIMAL(15,2)) AS VALOR_TOTAL_VL,
    TRY_CAST(PARCELAS AS INT) AS PARCELAS_QT,
    LEFT(UPPER(STATUS), 1) AS STATUS_CD  -- Primeira letra (Ativo->A, Quitado->Q)
FROM STG_CONTRATOS_OLTP
WHERE TRY_CAST(DT_ASSINATURA AS DATE) IS NOT NULL  -- Filtrar inválidos
  AND TRY_CAST(VALOR_TOTAL AS DECIMAL(15,2)) IS NOT NULL;

-- 4. Carregar dimensões (lookup ou SCD Type 2)
-- ... (merge DIM_CLIENTE, DIM_TIPO_CONTRATO, etc.)

-- 5. Carregar fato (insert ou update)
INSERT INTO FATO_CONTRATO_HABITACIONAL (
    CLIENTE_SK, DT_ASSINATURA_SK, TIPO_CONTRATO_SK, STATUS_SK,
    CONTRATO_HABITACIONAL_NK, VALOR_TOTAL_VL, PARCELAS_QT, VALOR_PARCELA_VL
)
SELECT 
    dc.CLIENTE_SK,
    CAST(FORMAT(i.DT_ASSINATURA, 'yyyyMMdd') AS INT) AS DT_ASSINATURA_SK,
    dt.TIPO_CONTRATO_SK,
    ds.STATUS_SK,
    i.CONTRATO_ID AS CONTRATO_HABITACIONAL_NK,
    i.VALOR_TOTAL_VL,
    i.PARCELAS_QT,
    i.VALOR_TOTAL_VL / i.PARCELAS_QT AS VALOR_PARCELA_VL
FROM INT_CONTRATOS_LIMPO i
INNER JOIN DIM_CLIENTE dc ON i.CLIENTE_ID = dc.CLIENTE_NK AND dc.VERSAO_ATUAL_FL = 'S'
INNER JOIN DIM_TIPO_CONTRATO dt ON i.TIPO_CONTRATO_CD = dt.TIPO_CONTRATO_CD
INNER JOIN DIM_STATUS ds ON i.STATUS_CD = ds.STATUS_CD
WHERE i.VALIDACAO_OK_FL = 'S';
```

---

### 5.5.7 Queries Analíticas (Exemplos)

**Exemplo 1: Total de contratos por tipo e ano**

```sql
SELECT 
    dt.TIPO_CONTRATO_DS,
    t.ANO_NR,
    COUNT(*) AS CONTRATOS_QT,
    SUM(f.VALOR_TOTAL_VL) AS VALOR_TOTAL_VL,
    AVG(f.VALOR_TOTAL_VL) AS VALOR_MEDIO_VL
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_TIPO_CONTRATO dt ON f.TIPO_CONTRATO_SK = dt.TIPO_CONTRATO_SK
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
GROUP BY dt.TIPO_CONTRATO_DS, t.ANO_NR
ORDER BY t.ANO_NR DESC, CONTRATOS_QT DESC;
```

**Exemplo 2: Contratos por região (snowflake)**

```sql
SELECT 
    r.REGIAO_NM,
    t.ANO_NR,
    COUNT(*) AS CONTRATOS_QT,
    SUM(f.VALOR_TOTAL_VL) AS VALOR_TOTAL_VL
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_CLIENTE c ON f.CLIENTE_SK = c.CLIENTE_SK
INNER JOIN DIM_CIDADE cid ON c.CIDADE_NM = cid.CIDADE_NM
INNER JOIN DIM_UF u ON cid.UF_SK = u.UF_SK
INNER JOIN DIM_REGIAO r ON u.REGIAO_SK = r.REGIAO_SK
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
WHERE c.VERSAO_ATUAL_FL = 'S'  -- Apenas versão vigente do cliente
  AND t.ANO_NR >= 2024
GROUP BY r.REGIAO_NM, t.ANO_NR
ORDER BY t.ANO_NR, VALOR_TOTAL_VL DESC;
```

**Exemplo 3: Taxa de inadimplência por trimestre**

```sql
SELECT 
    t.ANO_NR,
    t.TRIMESTRE_NR,
    COUNT(*) AS CONTRATOS_TOTAL_QT,
    SUM(CASE WHEN f.INADIMPLENTE_FL = 'S' THEN 1 ELSE 0 END) AS CONTRATOS_INADIMPLENTES_QT,
    CAST(SUM(CASE WHEN f.INADIMPLENTE_FL = 'S' THEN 1 ELSE 0 END) AS DECIMAL(10,2)) / 
        NULLIF(COUNT(*), 0) * 100 AS TAXA_INADIMPLENCIA_PC
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
WHERE f.QUITADO_FL = 'N'  -- Apenas contratos ativos
GROUP BY t.ANO_NR, t.TRIMESTRE_NR
ORDER BY t.ANO_NR DESC, t.TRIMESTRE_NR DESC;
```

---

**📊 Resumo SUB-PARTE 5.3**:

| Seção | Tópicos Principais | Validações TE074 |
|-------|-------------------|------------------|
| **5.4 Spring Batch** | Prefixo SPB_, adaptação tabelas metadata, nomenclatura (_NM, _CD, _QT, _DT), particionamento >100M, retenção 90d (dev) / 6m (prod) | ✅ 3.2.1.2: Prefixo SPB_<br>✅ 3.2.3.1: PKs BIGINT<br>✅ 3.2.9.1: Compactação PAGE<br>✅ 3.2.10: Retenção definida |
| **5.5 Modelagem Dimensional** | Star schema, snowflake, FATO_ / DIM_ / STG_ / INT_, surrogate keys (_SK), natural keys (_NK), métricas (_VL, _QT), SCD Type 1/2/3, ETL layers, columnstore indexes | ✅ 3.2.1.1: Nomenclatura prefixos<br>✅ 3.2.3.1: PKs BIGINT<br>✅ 3.2.11: FKs dimensões<br>✅ 3.2.12.1: DECIMAL(15,2) monetário |

**Próxima SUB-PARTE**: 5.4 - Pré-Validador e Checklists ADI/ABD (Final)

---

## SUB-PARTE 5.4: Pré-Validador e Checklists de Aprovação (Parte 4 de 4)

> **Objetivo desta SUB-PARTE**: Garantir conformidade TE074 via validações automáticas e manuais antes da aprovação ADI/ABD.  
> **Abrangência**: Seções 5.6 e 5.7 + Síntese Consolidada PARTE 5  
> **Base normativa**: TE074 (todas as seções 3.2.1-3.2.18), processo de aprovação CAIXA

---

## 5.6 Pré-Validador PPDS (Validações Automáticas)

### 5.6.1 Visão Geral

**Ferramenta**: Pré-Validador PPDS  
**URL**: http://gestaodedados.coresp.caixa (intranet CAIXA)  
**Finalidade**: Validação automática de conformidade TE074 antes de submissão ao ADI

**Categorias de severidade**:

| Severidade | Impacto | Ação Obrigatória | Exemplos |
|------------|---------|------------------|----------|
| **CRÍTICO** | Bloqueia aprovação ADI | Correção obrigatória (0 críticas para aprovação) | Nomenclatura inválida, PK ausente, FK sem índice, tipos incompatíveis |
| **ALERTA** | Requer justificativa | Avaliar contexto e justificar se não corrigir | VARCHAR(MAX), ausência de descrições, relacionamentos N:M sem tabela associativa |
| **INFORMAÇÃO** | Orientação | Opcional (boas práticas) | Sugestão CHAR vs VARCHAR, índices adicionais, normalização |

---

### 5.6.2 Processo de Validação

**Workflow**:

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. DESENVOLVIMENTO                                              │
│    - Criar modelo PowerDesigner (.pdm)                          │
│    - Autovalidação (checklists internos)                        │
│    - Exportar PDM                                               │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 2. PRÉ-VALIDADOR                                                │
│    - Upload arquivo .pdm                                        │
│    - Execução de 100+ regras TE074                              │
│    - Geração de relatório (PDF + Excel)                         │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 3. ANÁLISE DE NÃO CONFORMIDADES                                 │
│    - Revisar CRÍTICAS (obrigatórias)                            │
│    - Revisar ALERTAS (justificar ou corrigir)                   │
│    - Revisar INFORMAÇÕES (avaliar)                              │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 4. CORREÇÕES NO MODELO                                          │
│    - Ajustar nomenclatura                                       │
│    - Adicionar PKs/FKs/índices                                  │
│    - Corrigir tipos de dados                                    │
│    - Preencher descrições                                       │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 5. RE-VALIDAÇÃO                                                 │
│    - Upload PDM corrigido                                       │
│    - Nova validação                                             │
│    - Repetir até 0 CRÍTICAS                                     │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 6. SUBMISSÃO ADI                                                │
│    - PDM validado (0 críticas)                                  │
│    - Relatório de validação anexado                             │
│    - Documentação complementar                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

### 5.6.3 Categorias de Validação

#### V001-V099: Nomenclatura

**V001: Tabelas - Prefixo Obrigatório**
- **Regra**: Tabela DEVE ter prefixo de 3 caracteres (TE074 3.2.1.2)
- **Regex**: `^[A-Z]{3}_[A-Z0-9_]+$`
- **Exemplos válidos**: `PES_CLIENTE`, `FIN_CONTRATO`, `SPB_JOB_INSTANCIA`
- **Exemplos inválidos**: `CLIENTE` (sem prefixo), `PE_CLIENTE` (prefixo 2 chars), `pes_cliente` (lowercase)
- **Severidade**: **CRÍTICO**

**V002: Colunas - Sufixo Semântico**
- **Regra**: Colunas DEVEM ter sufixo semântico (TE074 3.2.12.4)
- **Sufixos válidos**: `_ID`, `_DT`, `_VL`, `_NM`, `_DS`, `_CD`, `_QT`, `_NR`, `_TX`, `_PC`, `_FL`
- **Exceções**: PKs compostas, colunas calculadas, casos justificados
- **Exemplos inválidos**: `VALOR` (deve ser `VALOR_VL`), `NOME` (deve ser `NOME_NM`)
- **Severidade**: **CRÍTICO**

**V003: Primary Key - Nomenclatura**
- **Regra**: `PK_<NOME_TABELA>` (TE074 3.2.3.1)
- **Exemplo válido**: `PK_PES_CLIENTE`
- **Exemplo inválido**: `PK_CLIENTE`, `PRIMARY_KEY_CLIENTE`
- **Severidade**: **CRÍTICO**

**V004: Foreign Key - Nomenclatura**
- **Regra**: `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>` (TE074 3.2.11.8)
- **Exemplo válido**: `FK_FIN_CONTRATO_CLIENTE`
- **Exemplo inválido**: `FK_CONTRATO_CLIENTE`, `FK_CLIENTE`
- **Severidade**: **CRÍTICO**

**V005: Unique Key - Nomenclatura**
- **Regra**: `UK_<TABELA>_<COLUNAS>` (TE074 3.2.6.1)
- **Exemplo válido**: `UK_PES_CLIENTE_CPF`
- **Severidade**: **CRÍTICO**

**V006: Índices - Nomenclatura**
- **Regra**: `IX_<TABELA>_<COLUNAS>` ou `IX_UK_<TABELA>_<COLUNAS>` (único)
- **Exemplo válido**: `IX_FIN_CONTRATO_DT_ASSINATURA`, `IX_UK_PES_CLIENTE_EMAIL`
- **Severidade**: **ALERTA**

---

#### V101-V199: Estrutura

**V101: Primary Key - Obrigatória**
- **Regra**: Toda tabela DEVE ter PK (TE074 3.2.3.1)
- **Exceção**: Tabelas de staging (STG_), views materializadas
- **Severidade**: **CRÍTICO**

**V102: Primary Key - Tipo BIGINT**
- **Regra**: PKs DEVEM ser BIGINT (TE074 3.2.3.1)
- **Exceção**: PKs compostas, tabelas lookup pequenas (<10K linhas)
- **Severidade**: **CRÍTICO**

**V103: Foreign Key - Índice Obrigatório**
- **Regra**: Toda FK DEVE ter índice (TE074 3.2.11.5)
- **Severidade**: **CRÍTICO**

**V104: Foreign Key - Tipo Compatível**
- **Regra**: FK DEVE ter mesmo tipo da PK referenciada
- **Exemplo inválido**: FK `INT` referenciando PK `BIGINT`
- **Severidade**: **CRÍTICO**

**V105: Colunas Nullable - Validação**
- **Regra**: Colunas NOT NULL DEVEM ter DEFAULT ou justificativa
- **Exceção**: PKs, FKs obrigatórias, colunas de auditoria
- **Severidade**: **ALERTA**

---

#### V201-V299: Descrições e Metadados

**V201: Tabelas - Descrição Obrigatória**
- **Regra**: Toda tabela DEVE ter descrição em português (TE074 3.2.2.1)
- **Mínimo**: 20 caracteres
- **Conteúdo**: Finalidade, contexto de negócio
- **Severidade**: **CRÍTICO**

**V202: Colunas - Descrição Obrigatória**
- **Regra**: Colunas DEVEM ter descrição (TE074 3.2.12.4)
- **Exceção**: Colunas auditoria padrão (DT_CADASTRO, USUARIO_CADASTRO_NM)
- **Mínimo**: 10 caracteres
- **Severidade**: **CRÍTICO**

**V203: Descrições - Idioma Português**
- **Regra**: Descrições DEVEM estar em português
- **Inválido**: "Customer ID", "Order Date"
- **Válido**: "Identificador único do cliente", "Data da assinatura do contrato"
- **Severidade**: **CRÍTICO**

**V204: Descrições - Não Técnicas**
- **Regra**: Descrições DEVEM evitar jargão técnico
- **Inválido**: "FK para tabela PES_CLIENTE via CLIENTE_ID"
- **Válido**: "Cliente titular do contrato habitacional"
- **Severidade**: **ALERTA**

---

#### V301-V399: Tipos de Dados

**V301: Monetários - DECIMAL(15,2)**
- **Regra**: Valores monetários DEVEM ser DECIMAL(15,2), NUNCA FLOAT/REAL (TE074 3.2.12.1)
- **Detecção**: Sufixo `_VL` + tipo FLOAT/REAL
- **Severidade**: **CRÍTICO**

**V302: Booleanos - CHAR(1)**
- **Regra**: Flags/indicadores DEVEM ser CHAR(1), não BIT (TE074 3.2.12.5)
- **Valores**: 'S'/'N', 'A'/'I', '0'/'1'
- **Severidade**: **ALERTA**

**V303: Enumerações - VARCHAR(n)**
- **Regra**: Enumerações DEVEM ser VARCHAR (string), não INT (TE074 3.2.12.4)
- **Detecção**: Sufixo `_CD` ou `_TP` + tipo INT
- **Severidade**: **CRÍTICO**

**V304: VARCHAR(MAX) - Evitar**
- **Regra**: Evitar VARCHAR(MAX), usar tamanho específico
- **Exceção**: BLOBs textuais (JSON, XML, logs extensos)
- **Recomendação**: VARCHAR(500), VARCHAR(2000), VARCHAR(4000)
- **Severidade**: **ALERTA**

**V305: NVARCHAR - Justificativa**
- **Regra**: NVARCHAR requer justificativa (Unicode necessário?)
- **Uso válido**: Multilinguagem, caracteres especiais (chinês, árabe)
- **Preferência**: VARCHAR (metade do espaço)
- **Severidade**: **INFORMAÇÃO**

---

#### V401-V499: Otimização

**V401: Compactação - DATA_COMPRESSION = PAGE**
- **Regra**: Novas tabelas DEVEM ter compactação PAGE (TE074 3.2.9.1)
- **Exceção**: Tabelas temporárias, staging, < 1000 linhas
- **Severidade**: **CRÍTICO**

**V402: Índices - Compactação**
- **Regra**: Índices DEVEM ter mesma compactação da tabela
- **Severidade**: **ALERTA**

---

#### V501-V599: Particionamento e Volumetria

**V501: Particionamento - Volumetria > 100M**
- **Regra**: Tabelas com > 100M linhas/ano DEVEM ser sinalizadas (TE074 3.2.8.3)
- **Campo PowerDesigner**: `NUMBER` (volumetria), `ROW GROWTH RATE` (taxa crescimento)
- **Severidade**: **ALERTA**

---

#### V601-V699: Ciclo de Vida

**V601: Retenção - Definição Obrigatória**
- **Regra**: Tabelas transacionais DEVEM ter política de retenção (TE074 3.2.10)
- **Campo PowerDesigner**: `RETENTION_POLICY`, `RETENTION_COLUMN`
- **Severidade**: **ALERTA**

---

#### V701-V799: Relacionamentos

**V701: Relacionamentos N:M - Tabela Associativa**
- **Regra**: N:M DEVE usar tabela associativa, não relacionamentos paralelos (TE074 3.2.11.15)
- **Severidade**: **CRÍTICO**

**V702: DELETE CASCADE - Cuidado**
- **Regra**: ON DELETE CASCADE requer justificativa
- **Preferência**: RESTRICT (padrão)
- **Severidade**: **ALERTA**

---

### 5.6.4 Exemplo de Relatório Pré-Validador

**Arquivo**: `Relatorio_Validacao_FIN_CONTRATOS_20260107.pdf`

```
═══════════════════════════════════════════════════════════════
PRÉ-VALIDADOR PPDS - RELATÓRIO DE CONFORMIDADE TE074
═══════════════════════════════════════════════════════════════

PROJETO: Sistema Financeiro - Módulo Contratos Habitacionais
MODELO: FIN_CONTRATOS_V1.0.pdm
DATA VALIDAÇÃO: 07/01/2026 14:30:15
DESENVOLVEDOR: João Silva (C137459)

───────────────────────────────────────────────────────────────
SUMÁRIO EXECUTIVO
───────────────────────────────────────────────────────────────

Total de Objetos Validados: 15 tabelas, 187 colunas, 23 constraints
Total de Não Conformidades: 8 CRÍTICAS, 12 ALERTAS, 5 INFORMAÇÕES

STATUS: ❌ REPROVADO (Existem CRÍTICAS - correção obrigatória)

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES CRÍTICAS (8)
───────────────────────────────────────────────────────────────

[V001] Tabela sem prefixo obrigatório
  • Objeto: PARCELAS
  • Regra: TE074 3.2.1.2 - Prefixo 3 caracteres obrigatório
  • Correção: Renomear para FIN_PARCELAS
  • Impacto: Alto - Bloqueia aprovação ADI

[V102] Primary Key tipo incorreto
  • Objeto: FIN_CONTRATO_HABITACIONAL.CONTRATO_ID
  • Regra: TE074 3.2.3.1 - PK deve ser BIGINT
  • Atual: INT
  • Correção: Alterar para BIGINT
  • Impacto: Crítico - Limita capacidade futura (2B contratos)

[V103] Foreign Key sem índice
  • Objeto: FIN_PARCELAS.CONTRATO_ID (FK)
  • Regra: TE074 3.2.11.5 - FK deve ter índice
  • Correção: Criar IX_FIN_PARCELAS_CONTRATO_ID
  • Impacto: Performance - Joins lentos

[V201] Tabela sem descrição
  • Objeto: FIN_PARCELAS
  • Regra: TE074 3.2.2.1 - Descrição obrigatória
  • Correção: Adicionar descrição em português (mínimo 20 chars)
  • Impacto: Documentação - Dificulta manutenção

[V301] Tipo monetário incorreto
  • Objeto: FIN_CONTRATO.VALOR_TOTAL_VL
  • Regra: TE074 3.2.12.1 - Monetário deve ser DECIMAL(15,2)
  • Atual: FLOAT
  • Correção: Alterar para DECIMAL(15,2)
  • Impacto: Precisão - Risco de arredondamentos incorretos

[V401] Compactação ausente
  • Objeto: FIN_CONTRATO_HABITACIONAL
  • Regra: TE074 3.2.9.1 - DATA_COMPRESSION = PAGE obrigatória
  • Correção: Adicionar WITH (DATA_COMPRESSION = PAGE)
  • Impacto: Espaço - Tabela ocupará 50-70% mais espaço

[V002] Coluna sem sufixo semântico
  • Objeto: FIN_CLIENTE.NOME
  • Regra: TE074 3.2.12.4 - Sufixo obrigatório
  • Correção: Renomear para NOME_NM
  • Impacto: Padronização - Inconsistência corporativa

[V003] Primary Key nomenclatura incorreta
  • Objeto: PK_CONTRATO
  • Regra: TE074 3.2.3.1 - Formato PK_<TABELA>
  • Correção: Renomear para PK_FIN_CONTRATO_HABITACIONAL
  • Impacto: Padronização

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES ALERTAS (12)
───────────────────────────────────────────────────────────────

[V304] VARCHAR(MAX) detectado
  • Objeto: FIN_CONTRATO.OBSERVACOES_TX
  • Recomendação: Usar VARCHAR(500) ou VARCHAR(2000)
  • Justificativa: Definir tamanho máximo esperado
  • Ação: Justificar ou corrigir

[V702] DELETE CASCADE detectado
  • Objeto: FK_FIN_PARCELAS_CONTRATO
  • Regra: ON DELETE CASCADE requer justificativa
  • Recomendação: Usar RESTRICT (padrão)
  • Ação: Justificar dependência de deleção

... (outros 10 alertas)

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES INFORMAÇÕES (5)
───────────────────────────────────────────────────────────────

[V305] NVARCHAR detectado
  • Objeto: FIN_CLIENTE.EMAIL_TX
  • Recomendação: Usar VARCHAR se não houver Unicode
  • Benefício: Economia 50% espaço
  • Ação: Opcional

... (outros 4 informações)

───────────────────────────────────────────────────────────────
AÇÕES OBRIGATÓRIAS PARA APROVAÇÃO
───────────────────────────────────────────────────────────────

1. Corrigir 8 CRÍTICAS listadas acima
2. Re-validar modelo após correções
3. Justificar ou corrigir 12 ALERTAS
4. Gerar novo relatório com 0 CRÍTICAS

───────────────────────────────────────────────────────────────
PRÓXIMOS PASSOS
───────────────────────────────────────────────────────────────

1. Ajustar modelo PowerDesigner conforme correções
2. Upload novo PDM no Pré-Validador
3. Validar até 0 CRÍTICAS
4. Submeter ao ADI com relatório aprovado anexado

═══════════════════════════════════════════════════════════════
FIM DO RELATÓRIO
═══════════════════════════════════════════════════════════════
```

---

## 5.7 Checklist Final de Conformidade

### 5.7.1 Fase ADI (Arquitetura de Dados e Informação)

**Responsabilidade**: Equipe ADI (Arquitetos de Dados)  
**Prazo SLA**: 5 dias úteis (TE074 3.1.9)

#### Checklist ADI (40 itens)

**A. Conformidade Normativa** (10 itens)

- [ ] **A01**: Modelo validado pelo Pré-Validador (0 CRÍTICAS)
- [ ] **A02**: TE074 - Nomenclatura de tabelas conforme (prefixo 3 chars)
- [ ] **A03**: TE074 - Nomenclatura de colunas conforme (sufixos semânticos)
- [ ] **A04**: TE074 - Nomenclatura de constraints conforme (PK_, FK_, UK_, CK_, DF_)
- [ ] **A05**: TE074 - Todas as tabelas possuem PK
- [ ] **A06**: TE074 - PKs são BIGINT (exceto justificadas)
- [ ] **A07**: TE074 - Todas as FKs possuem índices
- [ ] **A08**: TE074 - Compactação PAGE configurada
- [ ] **A09**: TE074 - Ciclo de vida definido (RETENTION_POLICY)
- [ ] **A10**: CR439 - Conformidade LGPD (dados sensíveis identificados)

**B. Normalização e Integridade** (8 itens)

- [ ] **B01**: 3NF alcançada (ou denormalização justificada)
- [ ] **B02**: Ausência de redundâncias não justificadas
- [ ] **B03**: Relacionamentos corretos (1:1, 1:N, N:M via tabela associativa)
- [ ] **B04**: Integridade referencial garantida (FKs corretas)
- [ ] **B05**: Constraints de domínio (CHECK) adequadas
- [ ] **B06**: Unique Keys para atributos únicos de negócio
- [ ] **B07**: Ausência de colunas multivaloradas (1NF)
- [ ] **B08**: Dependências funcionais válidas

**C. Documentação** (7 itens)

- [ ] **C01**: Todas as tabelas possuem descrição em português (mínimo 20 chars)
- [ ] **C02**: Todas as colunas possuem descrição em português (mínimo 10 chars)
- [ ] **C03**: Descrições são não-técnicas (contexto de negócio)
- [ ] **C04**: Relacionamentos possuem verbos de ligação (PARENT/CHILD ROLE)
- [ ] **C05**: Metadados de volumetria preenchidos (NUMBER, ROW GROWTH RATE)
- [ ] **C06**: Classificação de informação definida (OR016)
- [ ] **C07**: Documentação complementar anexada (casos de uso, regras de negócio)

**D. Tipos de Dados** (6 itens)

- [ ] **D01**: Monetários são DECIMAL(15,2), NUNCA FLOAT
- [ ] **D02**: Datas/timestamps são DATE ou DATETIME2, não DATETIME
- [ ] **D03**: Booleanos são CHAR(1), não BIT
- [ ] **D04**: Enumerações são VARCHAR(n), não INT
- [ ] **D05**: Textos são VARCHAR (ASCII) ou NVARCHAR (Unicode justificado)
- [ ] **D06**: Evitado VARCHAR(MAX) sem justificativa

**E. Integração Corporativa** (5 itens)

- [ ] **E01**: Alinhamento com modelos corporativos (Cliente, Produto, etc.)
- [ ] **E02**: Reutilização de entidades existentes (evitar duplicação)
- [ ] **E03**: Conformidade com TE124 (Cadastro de Clientes)
- [ ] **E04**: Conformidade com TE105 (Integração SICLI)
- [ ] **E05**: Ausência de conflitos com modelos de outros sistemas

**F. Auditoria e Rastreabilidade** (4 itens)

- [ ] **F01**: Colunas de auditoria obrigatórias (DT_CADASTRO, USUARIO_CADASTRO_NM)
- [ ] **F02**: Colunas de atualização (DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM)
- [ ] **F03**: Soft delete implementado (DATA_EXCLUSAO_LGPD) quando aplicável
- [ ] **F04**: Trilhas de auditoria para dados sensíveis

---

### 5.7.2 Fase ABD (Administração de Banco de Dados)

**Responsabilidade**: Equipe ABD (DBAs)  
**Prazo SLA**: 3 dias úteis (implementação física)

#### Checklist ABD (35 itens)

**A. Performance e Otimização** (12 itens)

- [ ] **A01**: Índices em FKs criados
- [ ] **A02**: Índices em colunas de predicados frequentes (WHERE, JOIN)
- [ ] **A03**: Covering indexes avaliados (INCLUDE)
- [ ] **A04**: Filtered indexes considerados (WHERE no índice)
- [ ] **A05**: Columnstore indexes avaliados (analytics/DW)
- [ ] **A06**: Estatísticas atualizadas
- [ ] **A07**: Query plans analisados
- [ ] **A08**: Ausência de full table scans não justificados
- [ ] **A09**: Índices duplicados/redundantes removidos
- [ ] **A10**: Fill factor adequado (90-95% para read-heavy, 70-80% para write-heavy)
- [ ] **A11**: Fragmentação de índices controlada (< 30%)
- [ ] **A12**: Particionamento implementado (se volumetria > 100M/ano)

**B. Compactação e Armazenamento** (6 itens)

- [ ] **B01**: DATA_COMPRESSION = PAGE aplicada
- [ ] **B02**: Índices com mesma compactação da tabela
- [ ] **B03**: Economia de espaço validada (sp_estimate_data_compression_savings)
- [ ] **B04**: Filegroups adequados (PRIMARY, SECONDARY, INDEXES)
- [ ] **B05**: Tablespaces dimensionados corretamente
- [ ] **B06**: Crescimento automático configurado (1GB increments, não %)

**C. Particionamento** (se aplicável - 7 itens)

- [ ] **C01**: Partition Function criada (RANGE RIGHT para datas)
- [ ] **C02**: Partition Scheme mapeado para filegroups
- [ ] **C03**: Sliding window implementado (SPLIT/MERGE)
- [ ] **C04**: Partition elimination validado (queries usam coluna de partição)
- [ ] **C05**: Alinhamento de índices (partitioned aligned)
- [ ] **C06**: Manutenção de partições agendada (adicionar futuras, remover antigas)
- [ ] **C07**: SWITCH testado (archiving instantâneo)

**D. Segurança e Permissões** (5 items)

- [ ] **D01**: Schemas criados (dbo, app_user, read_only)
- [ ] **D02**: Roles definidos (db_datareader, db_datawriter, custom roles)
- [ ] **D03**: Permissões granulares (GRANT SELECT/INSERT/UPDATE/DELETE)
- [ ] **D04**: Row-level security avaliado (filtros por usuário/departamento)
- [ ] **D05**: Dynamic Data Masking aplicado (dados sensíveis)

**E. Backup e Recovery** (5 itens)

- [ ] **E01**: Backup FULL agendado (diário)
- [ ] **E02**: Backup DIFFERENTIAL agendado (a cada 6h)
- [ ] **E03**: Backup LOG agendado (a cada 15 min - FULL recovery model)
- [ ] **E04**: Restore testado (RTO < 4h, RPO < 15 min)
- [ ] **E05**: Backup offsite configurado (Azure Blob Storage, tape)

**F. Monitoramento e Alertas** (5 itens)

- [ ] **F01**: Alertas de espaço em disco (< 20% livre)
- [ ] **F02**: Alertas de bloqueios/deadlocks
- [ ] **F03**: Monitoramento de performance (CPU, I/O, memória)
- [ ] **F04**: Extended Events configurados (long-running queries)
- [ ] **F05**: SQL Server Agent Jobs criados (manutenção, arquivamento)

---

### 5.7.3 Checklist de Implementação Física (ABD)

**Etapas de Deploy** (ambiente PRD):

```sql
-- ========================================
-- CHECKLIST FÍSICO - SCRIPT DE DEPLOY
-- ========================================

-- ✅ 1. VALIDAÇÕES PRÉ-DEPLOY
-- Verificar se banco de dados existe
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DB_FINANCEIRO')
BEGIN
    RAISERROR('Banco DB_FINANCEIRO não existe. Deploy abortado.', 16, 1);
    RETURN;
END

-- Verificar espaço em disco (mínimo 50GB livres)
EXEC sp_spaceused;

-- Validar permissões do usuário executor
IF IS_SRVROLEMEMBER('sysadmin') = 0
BEGIN
    RAISERROR('Usuário não possui permissões sysadmin. Deploy abortado.', 16, 1);
    RETURN;
END

-- ✅ 2. BACKUP PRÉ-DEPLOY (obrigatório)
BACKUP DATABASE DB_FINANCEIRO
TO DISK = 'E:\BACKUP\DB_FINANCEIRO_PRE_DEPLOY_20260107_1430.bak'
WITH COMPRESSION, INIT, NAME = 'Pre-Deploy Backup';

-- ✅ 3. CRIAR FILEGROUPS (se particionamento)
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2024;
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2025;
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2026;

-- Adicionar arquivos aos filegroups
ALTER DATABASE DB_FINANCEIRO ADD FILE (
    NAME = 'FG_CONTRATO_2024_DATA',
    FILENAME = 'D:\MSSQL\DATA\DB_FINANCEIRO_CONTRATO_2024.ndf',
    SIZE = 10GB, FILEGROWTH = 1GB
) TO FILEGROUP FG_CONTRATO_2024;

-- (repetir para 2025, 2026...)

-- ✅ 4. CRIAR PARTITION FUNCTIONS E SCHEMES (se aplicável)
CREATE PARTITION FUNCTION PF_CONTRATO_ANO (DATE)
AS RANGE RIGHT FOR VALUES ('2024-01-01', '2025-01-01', '2026-01-01');

CREATE PARTITION SCHEME PS_CONTRATO_ANO
AS PARTITION PF_CONTRATO_ANO
TO (FG_CONTRATO_2024, FG_CONTRATO_2025, FG_CONTRATO_2026, FG_CONTRATO_FUTURO);

-- ✅ 5. CRIAR TABELAS (DDL completo com compactação)
CREATE TABLE FIN_CONTRATO_HABITACIONAL (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL IDENTITY(1,1),
    CLIENTE_ID BIGINT NOT NULL,
    -- ... outras colunas
    CONSTRAINT PK_FIN_CONTRATO_HABITACIONAL PRIMARY KEY (CONTRATO_HABITACIONAL_ID)
) ON PS_CONTRATO_ANO(DT_ASSINATURA)  -- Particionado
WITH (DATA_COMPRESSION = PAGE);  -- TE074 3.2.9.1

-- ✅ 6. CRIAR FOREIGN KEYS
ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT FK_FIN_CONTRATO_HABIT_CLIENTE
FOREIGN KEY (CLIENTE_ID) REFERENCES PES_CLIENTE (CLIENTE_ID)
ON DELETE RESTRICT;

-- ✅ 7. CRIAR ÍNDICES (incluindo FKs)
CREATE INDEX IX_FIN_CONTRATO_HABIT_CLIENTE
ON FIN_CONTRATO_HABITACIONAL (CLIENTE_ID)
ON PS_CONTRATO_ANO(DT_ASSINATURA)  -- Índice particionado alinhado
WITH (DATA_COMPRESSION = PAGE);

CREATE INDEX IX_FIN_CONTRATO_DT_ASSIN_STATUS
ON FIN_CONTRATO_HABITACIONAL (DT_ASSINATURA, STATUS_CD)
INCLUDE (VALOR_TOTAL_VL, PARCELAS_QT)  -- Covering index
ON PS_CONTRATO_ANO(DT_ASSINATURA)
WITH (DATA_COMPRESSION = PAGE);

-- ✅ 8. CRIAR CHECK CONSTRAINTS
ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT CK_FIN_CONTRATO_TIPO
CHECK (TIPO_CONTRATO_CD IN ('SBPE', 'FGTS', 'CCFGTS', 'PROHAB'));

ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT CK_FIN_CONTRATO_STATUS
CHECK (STATUS_CD IN ('A', 'Q', 'C'));

-- ✅ 9. ADICIONAR EXTENDED PROPERTIES (descrições)
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Contratos habitacionais (SBPE, FGTS, CCFGTS, PROHAB)', 
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Identificador único do contrato habitacional', 
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL',
    @level2type = N'COLUMN', @level2name = N'CONTRATO_HABITACIONAL_ID';

-- ✅ 10. CRIAR VIEWS (se aplicável)
CREATE VIEW VW_FIN_CONTRATOS_ATIVOS AS
SELECT 
    c.CONTRATO_HABITACIONAL_ID,
    cl.NOME_COMPLETO_NM,
    c.TIPO_CONTRATO_CD,
    c.DT_ASSINATURA,
    c.VALOR_TOTAL_VL,
    c.STATUS_CD
FROM FIN_CONTRATO_HABITACIONAL c
INNER JOIN PES_CLIENTE cl ON c.CLIENTE_ID = cl.CLIENTE_ID
WHERE c.STATUS_CD = 'A'  -- Apenas ativos
  AND c.DATA_EXCLUSAO_LGPD IS NULL;  -- Não soft deleted

-- ✅ 11. CRIAR STORED PROCEDURES (manutenção)
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_CONTRATOS_HABITACIONAIS AS
BEGIN
    -- Migração para _HIST (já mostrado anteriormente)
END;

-- ✅ 12. CRIAR SQL SERVER AGENT JOBS (agendamento)
EXEC msdb.dbo.sp_add_job @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';
-- (configuração completa já mostrada anteriormente)

-- ✅ 13. ATUALIZAR ESTATÍSTICAS
UPDATE STATISTICS FIN_CONTRATO_HABITACIONAL WITH FULLSCAN;

-- ✅ 14. RECOMPILAR ÍNDICES (se fragmentação > 30%)
ALTER INDEX ALL ON FIN_CONTRATO_HABITACIONAL REBUILD
WITH (DATA_COMPRESSION = PAGE, ONLINE = ON);

-- ✅ 15. GRANT PERMISSÕES
-- Role aplicação (INSERT/UPDATE/SELECT)
GRANT SELECT, INSERT, UPDATE ON FIN_CONTRATO_HABITACIONAL TO [ROLE_APP_FINANCEIRO];

-- Role leitura (apenas SELECT)
GRANT SELECT ON FIN_CONTRATO_HABITACIONAL TO [ROLE_LEITURA_FINANCEIRO];

-- ✅ 16. VALIDAÇÕES PÓS-DEPLOY
-- Verificar se tabela foi criada
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FIN_CONTRATO_HABITACIONAL')
BEGIN
    RAISERROR('Tabela FIN_CONTRATO_HABITACIONAL não criada. Deploy FALHOU.', 16, 1);
    -- ROLLBACK (se em transação)
    RETURN;
END

-- Verificar se compactação está ativa
SELECT 
    t.name AS Tabela,
    p.data_compression_desc AS Compactacao
FROM sys.tables t
INNER JOIN sys.partitions p ON t.object_id = p.object_id
WHERE t.name = 'FIN_CONTRATO_HABITACIONAL'
  AND p.data_compression_desc <> 'PAGE';  -- Deve ser PAGE

-- Verificar se índices em FKs foram criados
SELECT 
    fk.name AS FK_Name,
    CASE WHEN i.index_id IS NULL THEN 'AUSENTE' ELSE 'OK' END AS Status_Indice
FROM sys.foreign_keys fk
LEFT JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
LEFT JOIN sys.indexes i ON fkc.parent_object_id = i.object_id 
    AND fkc.parent_column_id = i.index_id
WHERE fk.parent_object_id = OBJECT_ID('FIN_CONTRATO_HABITACIONAL');

-- ✅ 17. BACKUP PÓS-DEPLOY (sucesso)
BACKUP DATABASE DB_FINANCEIRO
TO DISK = 'E:\BACKUP\DB_FINANCEIRO_POS_DEPLOY_20260107_1500.bak'
WITH COMPRESSION, INIT, NAME = 'Post-Deploy Backup SUCCESS';

PRINT 'Deploy concluído com sucesso!';
```

---

### 5.7.4 Checklist de Homologação (QA)

**Testes obrigatórios antes de PRD**:

- [ ] **T01**: Inserção de dados teste (100 registros)
- [ ] **T02**: Validação de constraints (CHECK, FK, UK)
- [ ] **T03**: Teste de performance (queries principais < 100ms)
- [ ] **T04**: Teste de carga (simular pico de tráfego)
- [ ] **T05**: Teste de concorrência (deadlocks, bloqueios)
- [ ] **T06**: Teste de particionamento (partition elimination)
- [ ] **T07**: Teste de arquivamento (migração para _HIST)
- [ ] **T08**: Teste de soft delete (LGPD)
- [ ] **T09**: Teste de backup/restore (RTO/RPO)
- [ ] **T10**: Teste de integração (APIs, serviços externos)

---

### 5.7.5 Documentação Final de Entrega

**Artefatos obrigatórios**:

1. **Modelo PowerDesigner** (.pdm) - validado (0 CRÍTICAS)
2. **Relatório Pré-Validador** (PDF) - aprovado
3. **DDL Scripts** (SQL) - CREATE TABLE, CREATE INDEX, etc.
4. **DML Scripts** (SQL) - INSERT dados de referência
5. **Dicionário de Dados** (Excel/PDF) - tabelas, colunas, tipos
6. **Diagrama ER** (PNG/PDF) - relacionamentos
7. **Documento de Volumetria** - estimativas, particionamento
8. **Documento de Ciclo de Vida** - retenção, arquivamento, expurgo
9. **Plano de Manutenção** - jobs, monitoramento, alertas
10. **Procedimento de Rollback** - reverter deploy em caso de falha

---

## 📊 SÍNTESE CONSOLIDADA DA PARTE 5

### Resumo Executivo

A **PARTE 5** concluiu o Guia Corporativo CAIXA de Modelagem SQL Server com os seguintes tópicos:

| SUB-PARTE | Seções | Conteúdo Principal | Tamanho |
|-----------|--------|-------------------|---------|
| **5.1** | 5.1-5.2 | Ciclo de Vida (retenção, arquivamento _HIST/_AUX, expurgo) + LGPD (dados sensíveis, criptografia, right to erasure, auditoria) | ~12KB |
| **5.2** | 5.3 | Frameworks ORM (JPA/Hibernate, Entity Framework Core, TE074 prevalece, DDL manual, auditoria automática) | ~14KB |
| **5.3** | 5.4-5.5 | Spring Batch (prefixo SPB_, 6 tabelas metadata, retenção) + Modelagem Dimensional (star/snowflake, FATO_/DIM_, SCD Type 1/2/3, ETL layers) | ~16KB |
| **5.4** | 5.6-5.7 | Pré-Validador (100+ regras TE074, 0 CRÍTICAS para aprovação) + Checklists ADI/ABD (75 itens, workflow completo) | ~14KB |

**Total PARTE 5**: ~56KB, 7 seções (5.1-5.7)

---

### Principais Validações TE074 - PARTE 5

| Regra TE074 | Seção | Validação | Criticidade |
|-------------|-------|-----------|-------------|
| **3.2.10** | 5.1 | Ciclo de vida definido (RETENTION_POLICY, coluna referência) | ✅ Obrigatório |
| **3.2.17** | 5.2 | LGPD - Dados sensíveis identificados, criptografia TDE/Always Encrypted | ✅ Obrigatório |
| **3.2.16** | 5.3 | Frameworks ORM - TE074 prevalece (ddl-auto=none, migrations manuais) | ✅ Crítico |
| **3.2.1.2** | 5.4 | Spring Batch - Prefixo SPB_ obrigatório | ✅ Crítico |
| **3.2.8.3** | 5.5 | DW - Particionamento se volumetria > 100M/ano | ✅ Obrigatório |
| **3.2.9.1** | 5.6 | Compactação PAGE obrigatória (validação V401) | ✅ Crítico |
| **3.2.2.1** | 5.7 | Descrições em português obrigatórias (validação V201-V203) | ✅ Crítico |

---

### Ferramentas e Processos - PARTE 5

**Pré-Validador PPDS**:
- URL: http://gestaodedados.coresp.caixa
- Validações: 100+ regras automáticas
- Severidades: CRÍTICO (bloqueador) / ALERTA / INFORMAÇÃO
- Aprovação: 0 CRÍTICAS obrigatório

**Workflow de Aprovação**:
```
Desenvolvimento → Pré-Validador → ADI (5 dias) → ABD (3 dias) → Homologação → Produção
```

**Checklists**:
- ADI: 40 itens (conformidade, normalização, documentação, integração)
- ABD: 35 itens (performance, compactação, particionamento, segurança, backup)
- Homologação: 10 testes obrigatórios

---

### Boas Práticas Destacadas - PARTE 5

1. **Ciclo de Vida**: Definir prazo de retenção com gestor, documentar no modelo (RETENTION_POLICY)
2. **LGPD**: Tabelas separadas 1:1 para dados sensíveis, soft delete + hard delete após 180 dias
3. **Criptografia**: TDE (nível banco) + Always Encrypted (nível coluna) para dados REST
4. **ORM**: Desabilitar auto-DDL, usar migrations manuais, TE074 prevalece sobre convenções
5. **Spring Batch**: Prefixo SPB_, retenção 90d (dev) / 6m (prod), particionamento se >100M execuções
6. **DW**: Star schema preferencial, SCD Type 2 para histórico completo, ETL em layers (STG→INT→DW)
7. **Pré-Validador**: Executar antes de submissão ADI, corrigir todas CRÍTICAS
8. **Checklist**: Revisar 75 itens (40 ADI + 35 ABD) antes de deploy produção

---

### Próximos Passos Após PARTE 5

✅ **PARTE 5 CONCLUÍDA**  
✅ **GUIA CORPORATIVO CAIXA SQL SERVER 100% COMPLETO**

**Arquivo final**: `guia-caixa-dados-sql.md`  
**Tamanho total estimado**: ~195-200KB  
**Estrutura completa**:
- PARTE 1: Fundamentos e Normas (15 seções, ~40KB)
- PARTE 2: Nomenclatura e Padronização (8 seções, ~20KB)
- PARTE 3: Estruturação de Tabelas (6 seções, ~18KB)
- PARTE 4: Tipos de Dados e Otimização (6 seções, ~22KB)
- PARTE 5: Ciclo de Vida, Frameworks e Validações (7 seções, ~56KB)

**Total**: 42 seções, 5 PARTES, conformidade 100% TE074

---

**🎯 PROJETO CONCLUÍDO COM SUCESSO! 🎉**

---

