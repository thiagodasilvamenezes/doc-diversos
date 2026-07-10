# Compactação

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Compactação - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Compactação.aspx)

## Contexto

Este documento aborda as diretrizes para **compactação de dados** conforme estabelecido na **Norma TE074** (seção 3.2.9).

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - **Seção 3.2.9**: Compactação de dados
  - Aplicação obrigatória para novas tabelas
  - Configurações específicas por SGBD

## Diretrizes de Compactação por SGBD

### Microsoft SQL Server

**Tipo de Compactação**: `DATA_COMPRESSION(PAGE)`

```sql
CREATE TABLE [dbo].[NomeTabela]
(
    -- colunas
)
WITH (DATA_COMPRESSION = PAGE);
```

**Características**:
- Compressão em nível de página (recomendado)
- Melhor relação custo-benefício entre economia de espaço e performance
- Aplicável a tabelas e índices
- Definido em propriedades físicas no PowerDesigner

### Oracle Database

**Tipo de Compactação**: `COMPRESS(BASIC)`

```sql
CREATE TABLE nome_tabela
(
    -- colunas
)
COMPRESS BASIC;
```

**Características**:
- Compressão básica para tabelas OLTP
- Para tabelas de consulta/histórico: considerar `COMPRESS FOR QUERY`
- Para Archive: `COMPRESS FOR ARCHIVE`

### IBM DB2

**Tipo de Compactação**: `COMPRESS(YES)`

```sql
CREATE TABLE nome_tabela
(
    -- colunas
)
COMPRESS YES;
```

**Características**:
- Compressão automática de linhas
- Dicionário de compressão gerenciado automaticamente

## Quando Aplicar Compactação

### Obrigatório

1. **Novas tabelas** (conforme TE074 3.2.9.1)
   - Todas as tabelas criadas após vigência da norma
   - Validação realizada pelo pré-validador

2. **Tabelas históricas**
   - Dados migrados de ambientes transacionais
   - Acesso menos frequente

3. **Tabelas com grande volumetria**
   - Acima de 100 milhões de registros/ano
   - Tabelas particionadas

### Opcional (Avaliar com ABD)

- Tabelas transacionais de alta volumetria
- Tabelas de log/auditoria
- Tabelas temporais

## Benefícios da Compactação

### Economia de Espaço
- Redução de 40-70% no espaço em disco (média)
- Menor necessidade de backup storage
- Redução de custos de infraestrutura

### Performance
- **Melhorias**:
  - Menos I/O físico (menos páginas lidas)
  - Melhor aproveitamento de cache/memória
  - Redução de tempo em operações de leitura sequencial

- **Impactos**:
  - Leve overhead de CPU para compressão/descompressão
  - Inserções/atualizações podem ter pequeno impacto

## Implementação no PowerDesigner

### SQL Server

1. Propriedades da tabela → **Physical Options**
2. Habilitar `DATA_COMPRESSION`
3. Selecionar tipo: `PAGE` (recomendado)

### Oracle

1. Propriedades da tabela → **Storage**
2. Campo `Compress`: `BASIC`

### DB2

1. Propriedades da tabela → **Storage**
2. Opção `Compress`: `YES`

## Monitoramento e Validação

### Verificar Taxa de Compressão (SQL Server)

```sql
SELECT 
    OBJECT_NAME(object_id) AS TableName,
    data_compression_desc AS CompressionType
FROM sys.partitions
WHERE index_id IN (0,1)
  AND data_compression > 0;
```

### Verificar Economia de Espaço (SQL Server)

```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo', 
    @object_name = 'NomeTabela', 
    @index_id = NULL, 
    @partition_number = NULL, 
    @data_compression = 'PAGE';
```

## Procedimentos

### Solicitação de Implementação

1. **Equipe de Desenvolvimento**:
   - Define compactação no modelo lógico/físico (PowerDesigner)
   - Valida modelo no pré-validador
   - Inclui compactação no DDL de criação

2. **ADI (Administração de Dados)**:
   - Valida conformidade com TE074
   - Aprova modelo via workflow RTC

3. **ABD (Administração de Banco de Dados)**:
   - Implementa DDL em ambiente produtivo
   - Valida performance pós-implementação
   - Monitora impacto em operações

### Alteração em Tabelas Existentes

Para aplicar compactação em tabelas já existentes:

1. **Análise de Impacto**:
   - Avaliar volumetria atual
   - Estimar tempo de conversão
   - Verificar janela de manutenção

2. **Aprovação**:
   - Submeter solicitação via RTC para ABD
   - Justificar necessidade (economia de espaço, performance)

3. **Execução**:
   - ABD agenda execução
   - Operação pode ser online (SQL Server Enterprise) ou offline

## Validações e Conformidade

### Pré-Validador

O pré-validador de modelos (`http://gestaodedados.coresp.caixa`) verifica:
- Presença de opção de compactação em novas tabelas
- Tipo de compactação adequado ao SGBD
- Conformidade com TE074 3.2.9

### Checklist de Conformidade

- [ ] Compactação definida em novas tabelas
- [ ] Tipo de compactação adequado ao SGBD
- [ ] Opção incluída no PowerDesigner
- [ ] DDL gerado contém cláusula de compactação
- [ ] ABD validou impacto de performance

## Referências Adicionais

- TE074 - Seção 3.2.9 (Compactação)
- TE074 - Seção 3.2.8 (Particionamento - complementar)
- Documentação PowerDesigner - Physical Options
- Workflow RTC para validação de modelos

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Norma relacionada**: TE074 - Seção 3.2.9
