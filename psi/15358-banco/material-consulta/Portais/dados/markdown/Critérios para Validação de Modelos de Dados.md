# Critérios para Validação de Modelos de Dados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Critérios para Validação de Modelos - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Critérios%20para%20Validação%20de%20Modelos%20de%20Dados.aspx)

## Contexto

Este documento estabelece os **critérios de validação** que modelos de dados devem atender antes da implementação em ambientes produtivos, conforme diretrizes da **TE074** e processos da **ADI** (Administração de Dados).

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **TE079** - Segurança da Informação
- **TE105** - Integração e Compartilhamento de Dados
- **TE109** - Controle de Versão
- **TE124** - Governança de Dados
- **ISO/IEC 11179** - Registro de Metadados

## Categorias de Validação

### 1. Validações Estruturais

#### 1.1 Nomenclatura de Objetos

**Tabelas**:
- [ ] Prefixo de sistema adequado (3 caracteres)
- [ ] Nome descritivo em português
- [ ] Sem caracteres especiais (exceto _)
- [ ] Máximo de caracteres respeitado (SGBD específico)

**Colunas**:
- [ ] Nome descritivo em português
- [ ] Padrão de nomenclatura consistente
- [ ] Sufixos adequados para tipos (DT, VL, ID, etc.)

**Constraints**:
- [ ] PK: `PK_<NomeTabela>`
- [ ] FK: `FK_<TabelaOrigem>_<TabelaDestino>`
- [ ] UK: `UK_<NomeTabela>_<Colunas>`
- [ ] CK: `CK_<NomeTabela>_<Regra>`

#### 1.2 Chaves Primárias

- [ ] Toda tabela possui PK definida
- [ ] PK identifica univocamente cada registro
- [ ] Nome da constraint segue padrão
- [ ] Tipo de dados adequado (INT, BIGINT, UNIQUEIDENTIFIER)

#### 1.3 Chaves Estrangeiras

- [ ] Todas FKs possuem constraint nomeada
- [ ] Ações referênciais definidas (CASCADE, SET NULL, RESTRICT)
- [ ] Evitado uso de DISABLE/NOVALIDATE (Oracle)
- [ ] Cardinalidade e opcionalidade corretas
- [ ] Papéis de relacionamento (parent/child) documentados

#### 1.4 Integridade Referencial

- [ ] Todos relacionamentos possuem FK física
- [ ] Constraints de verificação (CHECK) para domínios limitados
- [ ] Valores DEFAULT apropriados
- [ ] Campos obrigatórios (NOT NULL) corretamente identificados

### 2. Validações de Normalização

#### 2.1 Terceira Forma Normal (3NF)

- [ ] Modelo em 3NF obrigatória (TE074 3.2.4)
- [ ] Eliminação de dependências transitivas
- [ ] Eliminação de dependências parciais
- [ ] Justificativa documentada para desnormalizações

#### 2.2 Redundância de Dados

- [ ] Ausência de colunas repetidas
- [ ] Dados derivados/calculados minimizados
- [ ] Justificativa para dados replicados (performance)

### 3. Validações de Metadados

#### 3.1 Descrições (Comments)

- [ ] **Tabelas**: descrição obrigatória em português (TE074 3.2.2)
- [ ] **Colunas**: descrição obrigatória em português
- [ ] Descrições claras e completas
- [ ] Glossário de negócio aderente

#### 3.2 Propriedades do Modelo

- [ ] Nome do modelo: `<SISTEMA>_DIAGRAMA_PRINCIPAL`
- [ ] OWNER = DBO (SQL Server)
- [ ] DBMS definido corretamente
- [ ] Versão do modelo documentada

### 4. Validações de Volumetria e Performance

#### 4.1 Particionamento

- [ ] Tabelas com 100M+ registros/ano avaliadas para particionamento (TE074 3.2.8.3)
- [ ] Estratégia de particionamento definida (RANGE, LIST, HASH)
- [ ] Aprovação ABD para particionamento

#### 4.2 Compactação

- [ ] Novas tabelas com compactação habilitada (TE074 3.2.9.1)
- [ ] Tipo de compactação adequado ao SGBD:
  - SQL Server: `DATA_COMPRESSION(PAGE)`
  - Oracle: `COMPRESS(BASIC)`
  - DB2: `COMPRESS(YES)`

#### 4.3 Índices

- [ ] Índices para colunas de FK (quando apropriado)
- [ ] Índices para colunas de busca frequente
- [ ] Evitar sobre-indexação
- [ ] Índices únicos para constraints UK

### 5. Validações de Ciclo de Vida

#### 5.1 Política de Retenção

- [ ] Política de retenção definida (TE074 3.2.10)
- [ ] Responsável pelo dado identificado (gestor)
- [ ] Critérios de migração para histórico definidos
- [ ] Regras de expurgo documentadas

#### 5.2 Tipos de Tabelas

**Tabelas Transacionais (Negociais)**:
- [ ] Dados operacionais de alta frequência
- [ ] Performance otimizada

**Tabelas de Apoio (Support)**:
- [ ] Dados de referência/domínio
- [ ] Baixa volatilidade

**Tabelas Históricas**:
- [ ] Estrutura compatível com origem
- [ ] Compactação aplicada
- [ ] Particionamento por período (se aplicável)

### 6. Validações de Segurança

#### 6.1 Dados Sensíveis

- [ ] Campos sensíveis identificados (CPF, CNPJ, senhas)
- [ ] Estratégia de criptografia definida (se aplicável)
- [ ] Conformidade com LGPD
- [ ] Mascaramento de dados em ambientes não-produtivos

#### 6.2 Controle de Acesso

- [ ] Perfis de acesso definidos (RBAC)
- [ ] Conformidade com TE079
- [ ] Auditoria de acessos configurada

### 7. Validações de Integração

#### 7.1 Compartilhamento de Dados

- [ ] Conformidade com TE105 (integração)
- [ ] Conformidade com TE124 (governança)
- [ ] APIs públicas vs privadas identificadas
- [ ] Contratos de dados documentados

#### 7.2 ETL/Migração

- [ ] Mapeamento de origem → destino definido
- [ ] Transformações documentadas
- [ ] Validações de qualidade implementadas

### 8. Validações de Documentação

#### 8.1 Documentação do Modelo

- [ ] Diagrama ER completo e legível
- [ ] Dicionário de dados atualizado
- [ ] Regras de negócio documentadas
- [ ] Glossário de termos

#### 8.2 Rastreabilidade

- [ ] Versionamento no RTC/Git
- [ ] Histórico de alterações documentado
- [ ] Responsáveis identificados

## Ferramentas de Validação

### Pré-Validador de Modelos

**URL**: `http://gestaodedados.coresp.caixa`

**Validações Automatizadas**:
1. Nomenclatura de objetos
2. Presença de descrições
3. Chaves primárias obrigatórias
4. Compactação em novas tabelas
5. Conformidade com padrões TE074

**Processo**:
1. Exportar modelo do PowerDesigner (.pdm)
2. Submeter ao pré-validador
3. Revisar relatório de validação
4. Corrigir inconformidades
5. Revalidar até aprovação

### PowerDesigner - Validação Manual

1. **Model → Check Model** (F4)
   - Valida integridade estrutural
   - Detecta FK órfãs
   - Verifica constraints

2. **Model → Generate Report**
   - Documentação completa
   - Dicionário de dados

## Workflow de Aprovação

### Etapa 1: Desenvolvimento

1. Modelagem conceitual/lógica
2. Modelo físico no PowerDesigner
3. Autovalidação com Check Model
4. Exportação DDL

### Etapa 2: Pré-Validação

1. Submissão ao pré-validador
2. Correção de inconformidades
3. Revalidação até 100% conforme

### Etapa 3: Validação ADI

1. Abertura de solicitação no RTC
2. ADI revisa modelo:
   - Conformidade normativa
   - Qualidade de metadados
   - Aderência a padrões corporativos
3. ADI aprova ou solicita ajustes

### Etapa 4: Implementação ABD

1. ABD recebe modelo aprovado
2. Executa DDL em ambiente alvo
3. Valida implementação física
4. Documenta objetos criados

## Checklist Completo de Validação

### Estrutural
- [ ] Nomenclatura padronizada
- [ ] PKs em todas tabelas
- [ ] FKs com constraints
- [ ] Descrições completas

### Normalização
- [ ] 3NF obrigatória
- [ ] Desnormalizações justificadas

### Performance
- [ ] Particionamento avaliado
- [ ] Compactação aplicada
- [ ] Índices adequados

### Metadados
- [ ] Comments em todos objetos
- [ ] Modelo nomeado corretamente
- [ ] OWNER = DBO (SQL Server)

### Ciclo de Vida
- [ ] Política de retenção definida
- [ ] Tipo de tabela classificado

### Segurança
- [ ] Dados sensíveis identificados
- [ ] Controle de acesso definido

### Integração
- [ ] Conformidade TE105/TE124
- [ ] Contratos de integração

### Documentação
- [ ] Diagrama ER completo
- [ ] Dicionário de dados
- [ ] Versionamento no RTC

### Ferramentas
- [ ] Validação no pré-validador: 100%
- [ ] PowerDesigner Check Model: OK
- [ ] Aprovação ADI via RTC
- [ ] Implementação ABD confirmada

## Não Conformidades Comuns

### Críticas (Impedem Aprovação)

1. **Ausência de PK**
2. **Nomenclatura fora do padrão**
3. **Descrições ausentes**
4. **Modelo não em 3NF (sem justificativa)**
5. **Compactação não definida (novas tabelas)**

### Médias (Requerem Ajuste)

1. FK sem constraint nomeada
2. Índices ausentes em FKs
3. Política de retenção não definida
4. Documentação incompleta

### Baixas (Recomendações)

1. Descrições genéricas
2. Glossário incompleto
3. Histórico de versões não detalhado

## Referências e Links

- **Pré-Validador**: http://gestaodedados.coresp.caixa
- **RTC Workflow**: Sistema de solicitações ADI/ABD
- **PowerDesigner Repository**: Repositório corporativo de modelos
- **TE074**: Norma completa de modelagem
- **ISO/IEC 11179**: Padrão internacional de metadados

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE105, TE109, TE124, ISO/IEC 11179
