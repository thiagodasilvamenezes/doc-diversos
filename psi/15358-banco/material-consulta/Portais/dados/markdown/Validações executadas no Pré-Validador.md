# Validações executadas no Pré-Validador

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Validações executadas no Pré-Validador - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Validações-executadas-no-Pré-Validador.aspx)

## Contexto

Este documento detalha as **validações automáticas** executadas pela ferramenta **Pré-Validador de Modelos de Dados** (http://gestaodedados.coresp.caixa), conforme **TE074**, incluindo critérios, mensagens de erro e processo de correção.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **Pré-Validador** - http://gestaodedados.coresp.caixa
- **Fluxo de Aprovação** - ADI → ABD

## O Que é o Pré-Validador

### Definição

**Pré-Validador** é uma ferramenta web interna da CAIXA que **valida automaticamente modelos de dados** (arquivos PDM do PowerDesigner) contra as normas da **TE074**.

**Objetivo**: Identificar **não-conformidades** antes da submissão para aprovação ADI/ABD.

### Acesso

**URL**: http://gestaodedados.coresp.caixa (rede CAIXA)

**Perfil requerido**: Desenvolvedor, Arquiteto de Dados, DBA

### Workflow de Validação

```
1. Desenvolvedor cria modelo no PowerDesigner (PDM - Physical Data Model)
   ↓
2. Upload do arquivo .pdm no Pré-Validador
   ↓
3. Ferramenta executa validações automáticas (TE074)
   ↓
4. Relatório gerado (PDF/Excel) com não-conformidades
   ↓
5. Desenvolvedor corrige modelo no PowerDesigner
   ↓
6. Re-upload e validação até 0 não-conformidades CRÍTICAS
   ↓
7. Submissão para ADI (Arquitetura de Dados e Informação)
   ↓
8. Aprovação ADI + ABD
   ↓
9. Implementação em banco de dados
```

## Categorias de Validação

### Classificação de Severidade

**CRÍTICO**: **Bloqueia aprovação ADI/ABD**. Deve ser corrigido obrigatoriamente.

**ALERTA**: **Não bloqueia**, mas requer justificativa documentada.

**INFORMAÇÃO**: Sugestões de melhorias, não obrigatório corrigir.

### Categorias Validadas

1. **Nomenclatura** (tabelas, colunas, constraints, índices)
2. **Chaves Primárias** (presença, nomenclatura)
3. **Chaves Estrangeiras** (nomenclatura, relacionamentos)
4. **Colunas** (sufixos, tipos de dados, descrições)
5. **Índices** (nomenclatura, unicidade)
6. **Constraints** (nomenclatura, regras de negócio)
7. **Descrições** (português, completude)
8. **Compactação** (habilitada para tabelas grandes)
9. **Particionamento** (critérios de volumetria)
10. **Lifecycle** (políticas de retenção)

## Validações de Nomenclatura

### Validação 001: Nome de Tabela (Regex)

**Regra TE074 (3.2.1.1)**: Tabelas devem seguir padrão `^[A-Z]{3}_[A-Z0-9_]+$`

**Exemplos VÁLIDOS**:
- `PES_PESSOA`
- `CON_CONTRATO`
- `POI_TRILHA_AUDITORIA`
- `TAB_MUNICIPIO`

**Exemplos INVÁLIDOS**:
- `Pessoa` → **CRÍTICO**: Nome não segue padrão TE074 (falta prefixo, lowercase)
- `PESPESSOA` → **CRÍTICO**: Falta separador `_` entre prefixo e nome
- `PE_PESSOA` → **CRÍTICO**: Prefixo deve ter exatamente 3 caracteres
- `PES_pessoa` → **CRÍTICO**: Nome deve ser uppercase

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'Pessoa': Nome não conforme TE074 3.2.1.1. 
Padrão esperado: {3-char-prefix}_{NOME_DESCRITIVO}
Exemplo: PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Properties → General → Name
-- Antes: Pessoa
-- Depois: PES_PESSOA
```

### Validação 002: Nome de Coluna (Sufixos)

**Regra TE074 (3.2.1.2)**: Colunas devem ter sufixo conforme tipo de dado.

**Sufixos Obrigatórios**:
- `_ID`: Identificadores (INT, BIGINT)
- `_DT`: Datas/timestamps (DATE, DATETIME, DATETIME2)
- `_VL`: Valores monetários (DECIMAL, NUMERIC)
- `_QT`: Quantidades (INT, DECIMAL)
- `_PC`: Percentuais (DECIMAL)
- `_NM`: Nomes (VARCHAR, NVARCHAR)
- `_DS`: Descrições (VARCHAR, NVARCHAR, TEXT)
- `_IN`: Indicadores/flags (CHAR(1))
- `_TP`: Tipos/categorias (VARCHAR)
- `_NR`: Números (CPF, CNPJ, telefone - VARCHAR)

**Exemplos INVÁLIDOS**:
- `NOME` (VARCHAR) → **CRÍTICO**: Falta sufixo `_NM` (esperado: `NOME_NM` ou `NOME_COMPLETO_NM`)
- `DATA_NASCIMENTO` (DATE) → **CRÍTICO**: Falta sufixo `_DT` (esperado: `DATA_NASCIMENTO_DT`)
- `VALOR` (DECIMAL) → **CRÍTICO**: Falta sufixo `_VL` (esperado: `VALOR_VL` ou `VALOR_CONTRATO_VL`)
- `ATIVO` (CHAR(1)) → **CRÍTICO**: Falta sufixo `_IN` (esperado: `ATIVO_IN`)

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.NOME': Nome não conforme TE074 3.2.1.2.
Tipo de dado: VARCHAR(200)
Sufixo esperado: _NM (nomes)
Sugestão: Renomear para 'NOME_COMPLETO_NM'
```

**Correção**:
```sql
-- PowerDesigner: Table → Columns → Name
-- Antes: NOME
-- Depois: NOME_COMPLETO_NM
```

### Validação 003: Nome de Primary Key

**Regra TE074 (3.2.11.1)**: PKs devem seguir padrão `PK_<NOME_TABELA>`

**Exemplos VÁLIDOS**:
- `PK_PES_PESSOA`
- `PK_CON_CONTRATO`
- `PK_POI_TRILHA_AUDITORIA`

**Exemplos INVÁLIDOS**:
- `PK_Pessoa` → **CRÍTICO**: Deve ser `PK_PES_PESSOA` (uppercase)
- `PRIMARY_KEY_PESSOA` → **CRÍTICO**: Padrão deve ser `PK_<TABELA>`
- `PESSOA_PK` → **CRÍTICO**: Prefixo `PK_` deve vir antes

**Mensagem de Erro**:
```
[CRÍTICO] Constraint PK 'PRIMARY_KEY_PESSOA' na tabela 'PES_PESSOA': 
Nome não conforme TE074 3.2.11.1.
Nome esperado: PK_PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Table → Keys → Primary Key → Name
-- Antes: PRIMARY_KEY_PESSOA
-- Depois: PK_PES_PESSOA
```

### Validação 004: Nome de Foreign Key

**Regra TE074 (3.2.11.2)**: FKs devem seguir padrão `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>`

**Exemplos VÁLIDOS**:
- `FK_CON_CONTRATO_PES_PESSOA` (Contrato → Pessoa)
- `FK_POI_AUDITORIA_POI_USUARIO` (Auditoria → Usuario)

**Exemplos INVÁLIDOS**:
- `FK_CONTRATO_PESSOA` → **CRÍTICO**: Faltam prefixos das tabelas
- `FK_PESSOA` → **CRÍTICO**: Deve incluir nome da tabela origem
- `FK_CON_CONTRATO_PESSOA` → **CRÍTICO**: Tabela destino deve incluir prefixo (`PES_PESSOA`)

**Mensagem de Erro**:
```
[CRÍTICO] Constraint FK 'FK_CONTRATO_PESSOA' na tabela 'CON_CONTRATO': 
Nome não conforme TE074 3.2.11.2.
Origem: CON_CONTRATO, Destino: PES_PESSOA
Nome esperado: FK_CON_CONTRATO_PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Table → References → Name
-- Antes: FK_CONTRATO_PESSOA
-- Depois: FK_CON_CONTRATO_PES_PESSOA
```

### Validação 005: Nome de Índice

**Regra TE074 (3.2.1.3)**: Índices devem seguir padrão:
- Único: `IDX_UK_<TABELA>_<COLUNAS>`
- Não-único: `IDX_<TABELA>_<COLUNAS>`

**Exemplos VÁLIDOS**:
- `IDX_PES_PESSOA_CPF_NR` (índice único em CPF)
- `IDX_UK_PES_PESSOA_CPF_NR` (alternativa com UK)
- `IDX_CON_CONTRATO_STATUS_IN` (índice não-único em Status)

**Exemplos INVÁLIDOS**:
- `IX_PESSOA_CPF` → **CRÍTICO**: Deve ser `IDX_PES_PESSOA_CPF_NR`
- `INDEX_STATUS` → **CRÍTICO**: Falta padrão `IDX_<TABELA>_`

**Mensagem de Erro**:
```
[CRÍTICO] Índice 'IX_PESSOA_CPF' na tabela 'PES_PESSOA': 
Nome não conforme TE074 3.2.1.3.
Tipo: Único
Nome esperado: IDX_UK_PES_PESSOA_CPF_NR (ou IDX_PES_PESSOA_CPF_NR se único via constraint)
```

### Validação 006: Nome de Sequence (Oracle)

**Regra TE074 (3.2.1.4)**: Sequences devem seguir padrão `SEQ_<TABELA>_ID`

**Exemplos VÁLIDOS**:
- `SEQ_PES_PESSOA_ID`
- `SEQ_CON_CONTRATO_ID`

**Exemplos INVÁLIDOS**:
- `SEQ_PESSOA` → **CRÍTICO**: Falta sufixo `_ID`
- `PESSOA_SEQ` → **CRÍTICO**: Prefixo `SEQ_` deve vir antes

## Validações de Estrutura

### Validação 101: Presença de Primary Key

**Regra TE074 (3.2.11.1)**: **Toda tabela deve ter PK**.

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'PES_ENDERECO': Não possui Primary Key.
TE074 3.2.11.1 exige PK em todas as tabelas.
```

**Correção**:
```sql
-- Adicionar PK no PowerDesigner:
-- Table → Keys → Primary Key → Add
-- Selecionar coluna (ex: ENDERECO_ID)
```

### Validação 102: Coluna PK sem IDENTITY/Sequence

**Regra TE074 (3.2.11.1)**: PKs surrogate devem usar IDENTITY (SQL Server) ou Sequence (Oracle).

**Mensagem de Erro**:
```
[ALERTA] Coluna PK 'PESSOA_ID' na tabela 'PES_PESSOA': 
Não configurada como IDENTITY (SQL Server) ou associada a Sequence (Oracle).
Recomendação: Habilitar auto-increment.
```

**Correção**:
```sql
-- PowerDesigner (SQL Server): 
-- Column → Properties → Identity → Yes

-- PowerDesigner (Oracle):
-- Criar Sequence: SEQ_PES_PESSOA_ID
-- Associar à coluna via trigger ou DEFAULT NEXT VALUE
```

### Validação 103: Foreign Key sem Constraint

**Regra TE074 (3.2.11.2)**: Relacionamentos devem ter constraint FK declarada.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'CON_CONTRATO.PESSOA_ID' parece ser FK (nome termina em _ID), 
mas não possui constraint FK declarada.
Tabela destino provável: PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner:
-- Table CON_CONTRATO → References → New Reference
-- Parent Table: PES_PESSOA
-- Foreign Key Columns: PESSOA_ID → PESSOA_ID
-- Name: FK_CON_CONTRATO_PES_PESSOA
```

### Validação 104: FK sem Índice

**Regra TE074 (3.2.11.2)**: Colunas FK devem ter índice (performance de JOINs).

**Mensagem de Erro**:
```
[ALERTA] Coluna FK 'CON_CONTRATO.PESSOA_ID': Não possui índice.
Recomendação: Criar IDX_CON_CONTRATO_PESSOA_ID para melhorar performance de JOINs.
```

**Correção**:
```sql
-- PowerDesigner:
-- Table CON_CONTRATO → Indexes → New Index
-- Columns: PESSOA_ID
-- Name: IDX_CON_CONTRATO_PESSOA_ID
```

### Validação 105: Coluna Nullable sem Justificativa

**Regra TE074 (3.2.12)**: Colunas importantes não devem ser nullable sem justificativa.

**Mensagem de Erro**:
```
[ALERTA] Coluna 'PES_PESSOA.CPF_NR': Definida como nullable.
CPF é dado crítico, considere tornar NOT NULL.
```

**Correção**:
```sql
-- PowerDesigner:
-- Column CPF_NR → Properties → Mandatory: Yes
```

## Validações de Descrições

### Validação 201: Tabela sem Descrição

**Regra TE074 (3.2.1.1)**: **Todas as tabelas** devem ter descrição em **português**.

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'PES_PESSOA': Descrição ausente ou vazia.
TE074 exige descrição em português para todas as tabelas.
Exemplo: "Cadastro de pessoas físicas e jurídicas do sistema."
```

**Correção**:
```sql
-- PowerDesigner:
-- Table → Properties → Comment
-- Inserir: "Cadastro de pessoas físicas e jurídicas, incluindo clientes, funcionários e fornecedores."
```

### Validação 202: Coluna sem Descrição

**Regra TE074 (3.2.1.2)**: **Todas as colunas** devem ter descrição em **português**.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.CPF_NR': Descrição ausente ou vazia.
TE074 exige descrição em português para todas as colunas.
Exemplo: "CPF da pessoa (11 dígitos, sem formatação)."
```

**Correção**:
```sql
-- PowerDesigner:
-- Column CPF_NR → Properties → Comment
-- Inserir: "Número do CPF (Cadastro de Pessoa Física), composto por 11 dígitos numéricos, armazenado sem formatação (pontos/hífen)."
```

### Validação 203: Descrição em Inglês

**Regra TE074 (3.2.1)**: Descrições devem ser em **português do Brasil**.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'PES_PESSOA': Descrição parece estar em inglês.
Descrição atual: "Person table for customer registration"
TE074 exige descrições em português.
```

**Correção**:
```sql
-- Antes: "Person table for customer registration"
-- Depois: "Cadastro de pessoas físicas e jurídicas, incluindo clientes, funcionários e fornecedores."
```

### Validação 204: Descrição Genérica

**Regra**: Descrições devem ser **específicas e informativas**.

**Mensagem de Erro**:
```
[INFORMAÇÃO] Coluna 'PES_PESSOA.NOME_NM': Descrição genérica.
Descrição atual: "Nome"
Sugestão: Expandir para "Nome completo da pessoa física ou razão social da pessoa jurídica."
```

## Validações de Tipos de Dados

### Validação 301: Tipo de Dado Incompatível com Sufixo

**Regra TE074 (3.2.12)**: Tipo de dado deve corresponder ao sufixo da coluna.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.DATA_NASCIMENTO_DT': 
Tipo de dado VARCHAR(10) incompatível com sufixo _DT.
Esperado: DATE ou DATETIME2
```

**Correção**:
```sql
-- PowerDesigner:
-- Column DATA_NASCIMENTO_DT → Data Type: DATE (ou DATETIME2 se incluir hora)
```

### Validação 302: Uso de FLOAT para Valores Monetários

**Regra TE074 (3.2.12)**: Valores monetários devem usar DECIMAL(15,2), **nunca FLOAT**.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'CON_CONTRATO.VALOR_VL': 
Tipo FLOAT inadequado para valores monetários.
Risco: Erros de arredondamento.
Correção obrigatória: Alterar para DECIMAL(15,2)
```

**Correção**:
```sql
-- PowerDesigner:
-- Column VALOR_VL → Data Type: DECIMAL(15,2)
```

### Validação 303: Tamanho de VARCHAR Excessivo

**Regra**: Evitar VARCHAR(MAX) quando tamanho máximo conhecido.

**Mensagem de Erro**:
```
[ALERTA] Coluna 'PES_PESSOA.NOME_NM': 
Tipo VARCHAR(MAX) pode impactar performance.
Recomendação: Definir tamanho máximo (ex: VARCHAR(200) para nomes).
```

**Correção**:
```sql
-- PowerDesigner:
-- Column NOME_NM → Data Type: VARCHAR(200)
```

### Validação 304: CHAR vs VARCHAR

**Regra**: Usar CHAR para colunas de tamanho fixo, VARCHAR para variável.

**Mensagem de Erro**:
```
[INFORMAÇÃO] Coluna 'PES_PESSOA.UF_SG': 
Tipo VARCHAR(2) pode ser otimizado para CHAR(2).
UF tem tamanho fixo (2 caracteres).
```

**Correção**:
```sql
-- PowerDesigner:
-- Column UF_SG → Data Type: CHAR(2)
```

## Validações de Compactação

### Validação 401: Tabela Grande sem Compactação

**Regra TE074 (3.2.9)**: Tabelas novas devem ter compactação habilitada (PAGE).

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'POI_TRILHA_AUDITORIA': 
Compactação não configurada.
TE074 3.2.9 exige DATA_COMPRESSION = PAGE para novas tabelas (SQL Server).
```

**Correção**:
```sql
-- PowerDesigner (SQL Server):
-- Table → Properties → Physical Options → Extended Attributes
-- Adicionar: DATA_COMPRESSION = PAGE

-- DDL gerado:
CREATE TABLE POI_TRILHA_AUDITORIA (
    ...
) WITH (DATA_COMPRESSION = PAGE);
```

### Validação 402: Índice sem Compactação

**Regra TE074 (3.2.9)**: Índices em tabelas grandes devem ter compactação.

**Mensagem de Erro**:
```
[ALERTA] Índice 'IDX_POI_AUDITORIA_DATA_EVENTO_DT' na tabela 'POI_TRILHA_AUDITORIA': 
Compactação não configurada.
Recomendação: DATA_COMPRESSION = PAGE para economizar espaço.
```

**Correção**:
```sql
-- DDL:
CREATE INDEX IDX_POI_AUDITORIA_DATA_EVENTO_DT 
    ON POI_TRILHA_AUDITORIA(DATA_EVENTO_DT)
    WITH (DATA_COMPRESSION = PAGE);
```

## Validações de Particionamento

### Validação 501: Tabela Grande sem Particionamento

**Regra TE074 (3.2.8)**: Tabelas com volumetria > 100M linhas/ano devem ser particionadas.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'POI_TRILHA_AUDITORIA': 
Volumetria estimada > 100M linhas/ano.
TE074 3.2.8 recomenda particionamento.
Ação: Avaliar particionamento mensal por DATA_EVENTO_DT.
```

**Correção**:
```sql
-- Documentar decisão:
-- 1. Implementar particionamento (criar partition function/scheme)
-- 2. OU justificar não-aplicabilidade (ex: dados temporários com expurgo rápido)
```

## Validações de Lifecycle

### Validação 601: Tabela sem Política de Retenção

**Regra TE074 (3.2.10)**: Tabelas transacionais devem ter política de retenção/expurgo.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'POI_TRILHA_AUDITORIA': 
Política de retenção não documentada.
TE074 3.2.10 exige definição de:
- Período de retenção (ex: 24 meses)
- Procedimento de expurgo (soft delete, archiving, hard delete)
```

**Correção**:
```sql
-- PowerDesigner:
-- Table → Properties → Comment
-- Adicionar seção:
-- "RETENÇÃO: Dados mantidos por 24 meses. Após esse período, migrar para tabela histórica POI_TRILHA_AUDITORIA_HIST e comprimir."
```

## Validações de Relacionamentos

### Validação 701: Relacionamento N:M sem Tabela Associativa

**Regra TE074**: Relacionamentos N:M devem usar tabela associativa.

**Mensagem de Erro**:
```
[CRÍTICO] Relacionamento N:M entre 'PES_PESSOA' e 'CON_PRODUTO' 
sem tabela associativa.
Ação obrigatória: Criar tabela CON_PESSOA_PRODUTO com FKs para ambas tabelas.
```

**Correção**:
```sql
-- PowerDesigner:
-- Criar tabela: CON_PESSOA_PRODUTO
-- Colunas: PESSOA_ID (FK → PES_PESSOA), PRODUTO_ID (FK → CON_PRODUTO)
-- PK composta: (PESSOA_ID, PRODUTO_ID)
```

### Validação 702: Cascade Delete Perigoso

**Regra**: ON DELETE CASCADE deve ser usado com cautela.

**Mensagem de Erro**:
```
[ALERTA] FK 'FK_CON_CONTRATO_PES_PESSOA' configurada com ON DELETE CASCADE.
Risco: Deletar pessoa pode deletar todos os contratos automaticamente.
Recomendação: Avaliar se ON DELETE RESTRICT é mais seguro.
```

**Correção**:
```sql
-- PowerDesigner:
-- Reference → Delete Rule: Restrict (ao invés de Cascade)
```

## Relatório do Pré-Validador

### Formato do Relatório

**Outputs**:
- **PDF**: Relatório formatado para impressão/aprovação
- **Excel**: Planilha com detalhes de cada não-conformidade (filtros, ordenação)

### Estrutura do Relatório

**Seções**:
1. **Resumo Executivo**:
   - Total de objetos validados (tabelas, colunas, constraints, índices)
   - Total de não-conformidades (CRÍTICO, ALERTA, INFORMAÇÃO)
   - Taxa de conformidade (% de regras atendidas)

2. **Não-Conformidades CRÍTICAS** (bloqueia aprovação):
   - Código da validação (ex: V001, V101, V201)
   - Objeto afetado (tabela, coluna, constraint)
   - Mensagem de erro
   - Correção sugerida
   - Referência TE074

3. **Não-Conformidades ALERTA** (não bloqueia, requer justificativa):
   - Mesmo formato das CRÍTICAS

4. **Informações** (sugestões de melhoria):
   - Otimizações de performance
   - Boas práticas adicionais

### Exemplo de Relatório (Excel)

| ID | Severidade | Tipo | Objeto | Mensagem | Correção | TE074 |
|----|------------|------|--------|----------|----------|-------|
| V001 | CRÍTICO | Nomenclatura | Tabela: Pessoa | Nome não conforme TE074 3.2.1.1. Padrão esperado: {3-char}_{NOME} | Renomear para PES_PESSOA | 3.2.1.1 |
| V002 | CRÍTICO | Nomenclatura | Coluna: Pessoa.NOME | Falta sufixo _NM | Renomear para NOME_COMPLETO_NM | 3.2.1.2 |
| V101 | CRÍTICO | Estrutura | Tabela: Endereco | Não possui Primary Key | Criar PK_PES_ENDERECO em ENDERECO_ID | 3.2.11.1 |
| V201 | CRÍTICO | Descrição | Tabela: PES_PESSOA | Descrição ausente | Adicionar descrição em português | 3.2.1.1 |
| V301 | CRÍTICO | Tipo de Dado | Coluna: Contrato.VALOR_VL | FLOAT inadequado para monetário | Alterar para DECIMAL(15,2) | 3.2.12 |
| V401 | CRÍTICO | Compactação | Tabela: POI_TRILHA_AUDITORIA | Sem compactação | Habilitar DATA_COMPRESSION = PAGE | 3.2.9 |
| V104 | ALERTA | Performance | Coluna: FK Contrato.PESSOA_ID | FK sem índice | Criar IDX_CON_CONTRATO_PESSOA_ID | 3.2.11.2 |
| V303 | ALERTA | Tipo de Dado | Coluna: Pessoa.NOME_NM | VARCHAR(MAX) excessivo | Definir tamanho: VARCHAR(200) | - |
| V501 | ALERTA | Particionamento | Tabela: POI_TRILHA_AUDITORIA | Volumetria > 100M, avaliar particionamento | Criar particionamento mensal | 3.2.8 |
| V304 | INFORMAÇÃO | Otimização | Coluna: Pessoa.UF_SG | VARCHAR(2) pode ser CHAR(2) | Alterar para CHAR(2) | - |

## Workflow de Correção

### Passo 1: Análise do Relatório

1. Ordenar por severidade (CRÍTICO primeiro)
2. Agrupar por tipo (Nomenclatura, Estrutura, Descrição, etc.)
3. Identificar correções rápidas vs complexas

### Passo 2: Correções no PowerDesigner

**Nomenclatura**:
- Renomear objetos (tabelas, colunas, constraints, índices)
- Aplicar padrões TE074

**Estrutura**:
- Adicionar PKs faltantes
- Criar FKs omitidas
- Adicionar índices em FKs

**Descrições**:
- Preencher Comments em português
- Detalhar colunas críticas (CPF, CNPJ, valores monetários)

**Tipos de Dados**:
- Corrigir FLOAT → DECIMAL
- Ajustar tamanhos VARCHAR
- Aplicar sufixos corretos

**Compactação**:
- Habilitar DATA_COMPRESSION = PAGE (Extended Attributes)

### Passo 3: Regenerar e Re-validar

1. Salvar modelo corrigido no PowerDesigner
2. Fazer upload novamente no Pré-Validador
3. Verificar redução de não-conformidades
4. Repetir até **0 CRÍTICAS**

### Passo 4: Submissão ADI/ABD

**Critério de Aprovação**:
- **0 não-conformidades CRÍTICAS**
- **ALERTAS justificados** (documentar no modelo ou em documento anexo)

**Exemplo de Justificativa**:
```
[ALERTA] V501: Tabela POI_TRILHA_AUDITORIA sem particionamento

JUSTIFICATIVA:
Volumetria atual: 50M linhas
Crescimento estimado: 30M linhas/ano
Política de expurgo: 12 meses (hard delete mensal)
Decisão: Não particionar neste momento. Reavaliar em 2027 se volumetria exceder 100M.
Aprovado por: João Silva (Arquiteto ADI) - 2026-01-15
```

## Checklist Pré-Submissão

### Antes de Submeter ao Pré-Validador
- [ ] Modelo físico (PDM) criado no PowerDesigner
- [ ] SGBD configurado corretamente (SQL Server, Oracle, DB2)
- [ ] Nomenclatura aplicada (3-char prefix, sufixos)
- [ ] PKs criadas em todas as tabelas
- [ ] FKs declaradas para todos os relacionamentos
- [ ] Índices criados em colunas FK
- [ ] Descrições em português (tabelas e colunas)
- [ ] Tipos de dados corretos (DECIMAL para valores, DATE para datas)
- [ ] Compactação configurada (DATA_COMPRESSION = PAGE)

### Após Validação
- [ ] Relatório gerado (PDF/Excel)
- [ ] Todas não-conformidades CRÍTICAS corrigidas
- [ ] Não-conformidades ALERTA justificadas (se aplicável)
- [ ] Modelo re-validado (0 CRÍTICAS)
- [ ] DDL gerado e revisado
- [ ] Documentação atualizada (políticas de retenção, particionamento)

### Submissão ADI
- [ ] PDM final anexado
- [ ] Relatório Pré-Validador (0 CRÍTICAS) anexado
- [ ] Justificativas para ALERTAS documentadas
- [ ] DDL gerado anexado
- [ ] Diagrama ER exportado (PDF/PNG)
- [ ] Solicitação via ferramenta de workflow (RTC, Jira, etc.)

## FAQ - Perguntas Frequentes

### 1. O Pré-Validador gera DDL?

**Não**. O Pré-Validador **apenas valida** o modelo contra TE074. DDL deve ser gerado pelo **PowerDesigner** (Database → Generate Database).

### 2. Posso ter ALERTAS no relatório final?

**Sim**, desde que **justificados**. CRÍTICAS bloqueiam aprovação, ALERTAS não.

### 3. Como validar modelos Oracle?

Configurar SGBD como Oracle no PowerDesigner. Pré-Validador aplicará regras específicas (sequences, COMPRESS(BASIC), etc.).

### 4. Pré-Validador valida scripts SQL diretamente?

**Não**. Apenas arquivos PDM (PowerDesigner). Para validar scripts DDL, usar PowerDesigner Reverse Engineering (Script → PDM).

### 5. Como configurar compactação no PowerDesigner?

**SQL Server**:
- Table → Properties → Physical Options → Extended Attributes
- Add: `DATA_COMPRESSION = PAGE`

**Oracle**:
- Table → Properties → Physical Options → Tablespace Options
- Add: `COMPRESS BASIC` (ou `COMPRESS ADVANCED`)

### 6. Posso desabilitar validações específicas?

**Não**. Todas as validações TE074 são obrigatórias. Não-conformidades devem ser **corrigidas** ou **justificadas**.

### 7. Quanto tempo leva a validação?

**Varia por tamanho do modelo**:
- Modelos pequenos (<50 tabelas): 1-2 minutos
- Modelos médios (50-200 tabelas): 5-10 minutos
- Modelos grandes (>200 tabelas): 15-30 minutos

### 8. Pré-Validador substitui revisão ADI/ABD?

**Não**. É uma **validação preliminar** que acelera o processo. Revisão humana ADI/ABD continua necessária.

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Ferramenta**: http://gestaodedados.coresp.caixa  
**Normas relacionadas**: TE074 (todas seções)
