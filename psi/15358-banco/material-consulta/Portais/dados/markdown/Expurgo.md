# Expurgo

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Expurgo - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expurgo.aspx)

## Contexto

Este documento aborda as diretrizes para **expurgo de dados**, incluindo políticas de retenção, processos de exclusão e conformidade regulatória, conforme **TE074** (seção 3.2.10) e legislação aplicável.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - Seção 3.2.10: Ciclo de vida dos dados
- **LGPD** - Lei Geral de Proteção de Dados (Lei nº 13.709/2018)
- **TE079** - Segurança da Informação
- **Normas de Auditoria Interna**
- **Políticas de Compliance Corporativo**

## Definição de Expurgo

**Expurgo** é o processo controlado e irreversível de **remoção definitiva de dados** de ambientes corporativos, executado após o término do período de retenção obrigatório ou quando não há mais necessidade de negócio para manutenção dos dados.

### Diferença entre Expurgo e Arquivamento

| Aspecto | Arquivamento | Expurgo |
|---------|-------------|---------|
| **Finalidade** | Preservar dados históricos com acesso eventual | Eliminar dados permanentemente |
| **Reversibilidade** | Reversível (dados podem ser restaurados) | **Irreversível** |
| **Armazenamento** | Dados movidos para storage de longo prazo | Dados deletados fisicamente |
| **Acesso** | Acesso restrito, mas disponível | Sem acesso (dados inexistentes) |
| **Custo** | Mantém custo de storage | Elimina custo de armazenamento |

## Princípios do Expurgo

### 1. Legalidade e Conformidade

- Respeitar períodos de retenção legais e regulatórios
- Conformidade com LGPD (direito ao esquecimento)
- Atender requisitos de auditoria interna/externa
- Documentar justificativas de expurgo

### 2. Minimização de Dados

- Manter apenas dados necessários
- Expurgar dados obsoletos ou sem propósito
- Reduzir riscos de vazamento de dados antigos

### 3. Controle e Rastreabilidade

- Todas operações de expurgo devem ser auditadas
- Logs de expurgo imutáveis
- Aprovações formais obrigatórias
- Rastreabilidade completa

### 4. Segurança na Exclusão

- Exclusão física (não apenas lógica)
- Prevenção de recuperação de dados expurgados
- Limpeza de backups (conforme política)

## Políticas de Retenção

### Definição de Período de Retenção

O **período de retenção** é definido por:

1. **Legislação aplicável**:
   - Código Civil
   - Código Tributário Nacional
   - Normas específicas do setor (habitação, crédito, etc.)

2. **Requisitos de negócio**:
   - Necessidades operacionais
   - Análise histórica
   - Business Intelligence

3. **Gestão do dado**:
   - Responsabilidade do gestor de cada domínio de dados
   - Aprovação ADI/Compliance

### Períodos de Retenção Típicos

| Tipo de Dado | Período Mínimo | Base Legal |
|--------------|----------------|------------|
| **Dados fiscais/tributários** | 5 anos | CTN Art. 173 |
| **Documentos contábeis** | 5 anos | Código Civil Art. 1.194 |
| **Contratos habitacionais** | Até liquidação + 10 anos | Específico CAIXA |
| **Dados de auditoria** | 5-10 anos | Normas internas |
| **Logs de acesso** | 6 meses - 2 anos | LGPD/TE079 |
| **Dados de clientes inativos** | Conforme LGPD | Lei 13.709/2018 |

### Exceções à Retenção

Dados podem ser retidos além do prazo mínimo quando:

- Processo judicial em andamento (suspende expurgo)
- Investigação interna/externa ativa
- Decisão judicial específica
- Necessidade regulatória superveniente

## Processo de Expurgo

### Etapa 1: Identificação de Dados Elegíveis

**Critérios de Elegibilidade**:
1. Dados que atingiram fim do período de retenção
2. Dados sem dependências ativas
3. Dados sem processos judiciais vinculados
4. Dados sem bloqueios regulatórios

**Query SQL - Exemplo de Identificação**:
```sql
-- Identificar registros elegíveis para expurgo
SELECT 
    t.REGISTRO_ID,
    t.DATA_CRIACAO_DT,
    t.DATA_INATIVACAO_DT,
    DATEDIFF(YEAR, t.DATA_INATIVACAO_DT, GETDATE()) AS AnosInativo
FROM POI_TABELA_EXEMPLO t
WHERE t.ATIVO_IN = 'N'
  AND DATEDIFF(YEAR, t.DATA_INATIVACAO_DT, GETDATE()) >= 5  -- 5 anos de retenção
  AND NOT EXISTS (
      SELECT 1 FROM POI_PROCESSO_JUDICIAL pj 
      WHERE pj.REGISTRO_ID = t.REGISTRO_ID AND pj.STATUS_TP = 'ATIVO'
  );
```

### Etapa 2: Validação e Aprovação

**Responsabilidades**:

1. **Gestor do Dado**:
   - Valida lista de dados elegíveis
   - Confirma ausência de necessidade de negócio
   - Aprova expurgo

2. **Compliance/Jurídico**:
   - Valida conformidade com retenção legal
   - Verifica ausência de impedimentos legais
   - Aprova do ponto de vista regulatório

3. **ABD (Administração de Banco de Dados)**:
   - Valida impacto técnico
   - Planeja execução
   - Executa expurgo

**Workflow de Aprovação**:
```
Gestor do Dado → Compliance → ADI → ABD → Execução
```

### Etapa 3: Arquivamento Preventivo (Opcional)

Antes do expurgo, considerar:

1. **Exportação de dados** para arquivo histórico (compliance)
2. **Armazenamento em mídia imutável** (WORM - Write Once Read Many)
3. **Criptografia de arquivos** exportados
4. **Documentação de exportação**

**Exemplo - Exportação para arquivo**:
```sql
-- Exportar dados antes do expurgo
SELECT *
INTO ARQUIVO_EXPURGO_20260106
FROM POI_TABELA_EXEMPLO
WHERE <critérios de expurgo>;
```

### Etapa 4: Execução do Expurgo

**Tipos de Expurgo**:

#### Expurgo Lógico (Soft Delete)
- Flag de exclusão lógica
- Dados permanecem fisicamente
- **Não é expurgo verdadeiro** (apenas inativação)

```sql
UPDATE POI_TABELA_EXEMPLO
SET EXCLUIDO_IN = 'S',
    DATA_EXCLUSAO_DT = GETDATE()
WHERE <critérios>;
```

#### Expurgo Físico (Hard Delete)
- Remoção física do banco de dados
- **Irreversível**
- Recomendado para compliance LGPD

```sql
DELETE FROM POI_TABELA_EXEMPLO
WHERE <critérios>;
```

#### Expurgo com Histórico
- Dados movidos para tabela histórica antes de expurgo
- Permite rastreabilidade sem manter dados completos

```sql
-- 1. Inserir em histórico
INSERT INTO POI_TABELA_EXEMPLO_HIST_EXPURGO 
    (REGISTRO_ID, DATA_EXPURGO_DT, USUARIO_EXPURGO)
SELECT 
    REGISTRO_ID, 
    GETDATE(), 
    SYSTEM_USER
FROM POI_TABELA_EXEMPLO
WHERE <critérios>;

-- 2. Expurgar da tabela principal
DELETE FROM POI_TABELA_EXEMPLO
WHERE <critérios>;
```

### Etapa 5: Validação Pós-Expurgo

**Checklist de Validação**:
- [ ] Quantidade de registros expurgados conforme esperado
- [ ] Integridade referencial mantida (FKs)
- [ ] Backups atualizados (sem dados expurgados)
- [ ] Logs de auditoria gerados
- [ ] Notificação aos stakeholders

**Query de Validação**:
```sql
-- Verificar registros remanescentes
SELECT COUNT(*) AS RegistrosRemanescentes
FROM POI_TABELA_EXEMPLO
WHERE <critérios de expurgo>;  -- Deve retornar 0
```

### Etapa 6: Auditoria e Documentação

**Documentação Obrigatória**:
1. **Relatório de Expurgo**:
   - Data de execução
   - Quantidade de registros expurgados
   - Critérios utilizados
   - Responsável pela execução
   - Aprovadores

2. **Log de Auditoria**:
   - Trilha completa da operação
   - Usuários envolvidos
   - Timestamps de cada etapa

3. **Certificado de Destruição**:
   - Documento formal atestando expurgo
   - Assinado por gestor e compliance

## Expurgo e LGPD

### Direito ao Esquecimento

A LGPD garante aos titulares o **direito à eliminação de dados pessoais** tratados com consentimento ou quando não há mais finalidade.

**Prazo de Atendimento**: 15 dias (conforme ANPD)

**Processo**:
1. Titular solicita exclusão via canal LGPD
2. DPO (Data Protection Officer) valida solicitação
3. Verifica exceções (obrigação legal, exercício de direito)
4. Executa expurgo ou informa justificativa de retenção

### Dados Sensíveis

**Prioridade máxima** para expurgo de:
- Dados raciais/étnicos
- Convicções religiosas
- Opiniões políticas
- Dados de saúde
- Dados biométricos
- Dados genéticos

**Período de retenção**: Mínimo necessário

### Anonimização como Alternativa

Em vez de expurgo, considerar **anonimização** quando:
- Dados necessários para estatísticas agregadas
- Pesquisas históricas
- Business Intelligence
- **Irreversibilidade garantida** (não é pseudonimização)

## Automação de Expurgo

### Jobs Automatizados

**Exemplo - SQL Server Agent Job**:
```sql
CREATE PROCEDURE SP_EXPURGO_AUTOMATICO
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Log de início
    INSERT INTO POI_LOG_EXPURGO (INICIO_DT, STATUS_TP)
    VALUES (GETDATE(), 'INICIADO');
    
    DECLARE @RegistrosExpurgados INT;
    
    -- Executar expurgo
    DELETE FROM POI_TABELA_EXEMPLO
    WHERE ATIVO_IN = 'N'
      AND DATEDIFF(YEAR, DATA_INATIVACAO_DT, GETDATE()) >= 5;
    
    SET @RegistrosExpurgados = @@ROWCOUNT;
    
    -- Log de conclusão
    UPDATE POI_LOG_EXPURGO
    SET FIM_DT = GETDATE(),
        STATUS_TP = 'CONCLUIDO',
        REGISTROS_EXPURGADOS_QT = @RegistrosExpurgados
    WHERE STATUS_TP = 'INICIADO'
      AND FIM_DT IS NULL;
END;
```

**Agendamento**:
- Frequência: Mensal/Trimestral
- Janela: Fora do horário de pico
- Monitoramento: Alertas em caso de falha

### Validações Automáticas

Antes da execução automática:
1. Verificar ausência de processos judiciais
2. Validar período de retenção
3. Confirmar aprovações registradas
4. Verificar integridade referencial

## Tratamento de Backups

### Expurgo em Backups

**Desafio**: Dados expurgados do banco produtivo podem permanecer em backups antigos.

**Estratégias**:

1. **Política de Retenção de Backups**:
   - Alinhar com política de expurgo
   - Backups mais antigos que período de retenção devem ser destruídos

2. **Backup Incremental Após Expurgo**:
   - Forçar novo backup full após expurgo
   - Expurgar backups anteriores ao expurgo

3. **Notação de Backups Expurgados**:
   - Marcar backups que contêm dados expurgados
   - Impedir restauração acidental

### Restauração de Dados Expurgados

**Política**: Dados expurgados **NÃO devem ser restaurados**, exceto:
- Ordem judicial específica
- Erro comprovado no processo de expurgo
- Aprovação excepcional de Compliance + Jurídico

## Indicadores de Expurgo

### KPIs de Monitoramento

1. **Volume de Dados Expurgados**:
   - Registros expurgados/mês
   - GB liberados

2. **Tempo de Retenção Médio**:
   - Tempo médio entre inativação e expurgo

3. **Taxa de Conformidade**:
   - % de dados expurgados dentro do prazo

4. **Solicitações LGPD Atendidas**:
   - Quantidade e tempo médio de atendimento

### Dashboard de Expurgo

**Métricas Recomendadas**:
- Total de registros elegíveis para expurgo
- Registros expurgados no mês
- Economia de storage (GB)
- Pendências de aprovação
- Solicitações LGPD em aberto

## Casos Especiais

### Dados de Auditoria

**Exceção**: Logs de auditoria têm período de retenção **estendido** (5-10 anos) por requisitos regulatórios.

**Não expurgar**: Logs de acesso, trilhas de auditoria de operações críticas.

### Dados de Processos Judiciais

**Bloqueio automático**: Dados vinculados a processos judiciais ativos **não podem ser expurgados**.

**Liberação**: Somente após encerramento definitivo do processo.

### Dados Históricos Estatísticos

**Anonimização preferível**: Para dados usados em análises estatísticas, preferir anonimização ao expurgo.

## Checklist de Expurgo

### Preparação
- [ ] Política de retenção definida e aprovada
- [ ] Dados elegíveis identificados
- [ ] Validação de ausência de impedimentos legais
- [ ] Aprovações de gestor e compliance obtidas

### Execução
- [ ] Backup preventivo realizado (se aplicável)
- [ ] Script de expurgo validado em ambiente de testes
- [ ] Janela de execução agendada
- [ ] Notificações aos stakeholders enviadas

### Validação
- [ ] Quantidade de registros expurgados verificada
- [ ] Integridade referencial mantida
- [ ] Logs de auditoria gerados
- [ ] Backups antigos tratados

### Documentação
- [ ] Relatório de expurgo gerado
- [ ] Certificado de destruição emitido
- [ ] Trilha de auditoria completa
- [ ] Comunicação de conclusão aos aprovadores

## Referências e Ferramentas

- **TE074** - Seção 3.2.10 (Ciclo de vida dos dados)
- **LGPD** - Lei 13.709/2018
- **ANPD** - Autoridade Nacional de Proteção de Dados
- **Workflow RTC** - Aprovação de expurgos
- **Ferramentas de anonimização** - Conforme padrões corporativos

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.10), LGPD, TE079
