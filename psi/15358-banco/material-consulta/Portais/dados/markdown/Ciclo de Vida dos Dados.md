# Ciclo de Vida dos Dados

> **Nota**: Este documento foi exportado de uma página SharePoint (`Ciclo de Vida dos Dados.htm`). 
> O arquivo HTML original contém conteúdo renderizado dinamicamente via JavaScript, o que impede a extração automática do conteúdo completo.

## Contexto

Este documento faz parte do **Portal de Práticas para Desenvolvimento de Software** da CAIXA e aborda as diretrizes para o ciclo de vida dos dados conforme referenciado na **Norma TE074** (seção 3.2.10).

## Referências Relacionadas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - Seção 3.2.10: Ciclo de vida dos dados
  - Políticas de retenção de dados
  - Migração transacional → histórico

## Conteúdo a ser preenchido

Para completar este documento, recomenda-se:

1. **Acessar a página original no SharePoint** e copiar o conteúdo manualmente
2. **Consultar a seção 3.2.10 da TE074** que descreve os requisitos para ciclo de vida dos dados:
   - Definição obrigatória de políticas de retenção
   - Regras para migração de dados transacionais para tabelas históricas
   - Critérios de expurgo baseados em regras de negócio
   - Gestão de volumetria e performance

## Estrutura Esperada

Baseado na norma TE074, o conteúdo deve abordar:

### 1. Definição de Políticas de Retenção
- Responsabilidade do gestor do dado
- Alinhamento com requisitos de negócio
- Conformidade regulatória

### 2. Tipos de Dados por Ciclo de Vida

#### Dados Transacionais (Operacionais)
- Dados ativos em uso frequente
- Performance otimizada para operações CRUD
- Período de retenção definido

#### Dados Históricos
- Dados migrados de tabelas transacionais
- Acesso menos frequente
- Estratégias de compactação aplicadas
- Particionamento por período (se aplicável)

#### Dados Auxiliares/Temporais
- Dados de suporte a processos
- Ciclo de vida curto
- Expurgo automatizado

### 3. Processos de Migração
- Critérios para migração transacional → histórico
- Janelas de execução
- Validação de integridade pós-migração
- Rollback em caso de falhas

### 4. Expurgo de Dados
- Políticas de expurgo por tipo de dado
- Requisitos legais e regulatórios
- Processos de arquivamento antes do expurgo
- Aprovações necessárias (ABD/ADI)

### 5. Monitoramento e Auditoria
- Rastreabilidade de operações de ciclo de vida
- Logs de migração e expurgo
- Indicadores de volumetria

### 6. Conformidade
- TE074 (Modelagem de Dados)
- TE079 (se aplicável - segurança)
- Legislações específicas (LGPD, etc.)

---

## Instruções para Atualização

1. Acesse: [Portal PPDS - Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/apps/SitePages/...)
2. Copie o conteúdo estruturado da página
3. Substitua esta seção pelo conteúdo real
4. Mantenha a formatação Markdown para consistência

---

**Última atualização**: ${new Date().toISOString().split('T')[0]}  
**Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
**Norma relacionada**: TE074 - Seção 3.2.10
