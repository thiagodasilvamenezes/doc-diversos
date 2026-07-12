# PROMPT — Resolução da Produção Temática PSI 15358 (SIADL)

> Prompt para uso em LLM (Claude/GPT/Gemini). Baseado no documento oficial: `Formulario_de_orientacao_e_elaboracao_da_Producao_Tematica_PSI_Coordenador_Matriz.md`.

---

## PAPEL

Atue como **especialista sênior** com 20+ anos de experiência em:

- Administração de Dados (AD) e Administração de Banco de Dados (DBA) em instituição financeira de grande porte;
- Modelagem de dados conceitual, lógica e física (notação James Martin, normalização, modelagem temporal);
- Arquitetura e tuning de **Microsoft SQL Server** em ambiente **OLTP crítico de altíssima concorrência** (particionamento, índices, RCSI, Query Store, Always On, compressão, estatísticas);
- Governança de dados, qualidade de dados, metadados e conformidade (LGPD, sigilo bancário);
- Coordenação técnica de capítulos/plataformas com squads ágeis em estrutura matricial.

Você escreve como **coordenador técnico** que assina a proposta perante uma banca avaliadora: tom institucional, tecnicamente profundo, decisões sempre justificadas e amarradas ao cenário.

---

## TAREFA

Elaborar a **resolução completa** da Produção Temática do **PSI nº 15358** — função **Coordenador de Projetos/Processos Matriz**, unidade **GECPA** (Capítulo de Administração e Banco de Dados).

**Tema:** Estudo de Caso do Sistema de Atendimento Digital — SIADL.

**Formato (conforme edital):** documento técnico em PDF; extensão **sugerida** de até 10 páginas; fonte Arial tamanho 12. Adicionalmente (diretriz de qualidade, não exigência do edital): fluxo lógico contínuo (cada seção alimenta a seguinte), tabelas para organizar raciocínio e código SQL mínimo (apenas o essencial para demonstrar domínio).

---

## CONTEXTO COMPLETO DO ESTUDO DE CASO

### Situação

O SIADL é um sistema corporativo de atendimento digital de uma instituição financeira, usado por milhões de clientes diariamente. Nos últimos meses passou a apresentar: **dados inconsistentes; lentidão generalizada; timeout em operações críticas; crescimento acelerado de tabelas transacionais; aumento de incidentes operacionais; picos de CPU; consumo excessivo de memória**. A diretoria identificou que os principais problemas estão no ambiente de banco de dados relacional. O candidato atua como **coordenador técnico** responsável por diagnosticar e propor soluções estruturais nos modelos de dados **conceitual e físico**.

### Arquitetura

- Microsoft **SQL Server 2025**, ambiente **OLTP crítico**;
- ~**12 TB** de dados; > **10 mil usuários simultâneos**; ~**25 mil transações/minuto**;
- **Não possui integração com APIs e microsserviços** (não propor migração para microsserviços/APIs!);
- **Janela reduzida de manutenção**.

### Entidades e volumetria

| Entidade | Descrição | Atributos informados | Volume | Crescimento | Perfil |
|---|---|---|---|---|---|
| CLIENTE | Dados cadastrais PF/PJ, entidade central | nome, documento, data_cadastro, status_cliente, segmento | ~100 mi | 10% a.a. | Dado mestre, baixa alteração, alta consulta/junção |
| CONTA | Contas vinculadas a clientes | id_cliente, numero_conta, tipo_conta, data_abertura, status_conta | ~500 mi | 20% a.a. | Alta cardinalidade por cliente, dependência transacional |
| ATENDIMENTO | Solicitações, reclamações, serviços | id_cliente, canal, data_abertura, data_fechamento, status_atendimento, prioridade | ~800 mi | **20% a.m.** | Alta inserção e atualização |
| INTERACAO_ATENDIMENTO | Histórico granular do atendimento | id_atendimento, tipo_interacao, data_hora, origem, conteudo_resumido | ~1 bi | **20% a.m.** | Múltiplas interações por atendimento |
| TRANSACAO | Operações financeiras das contas | id_conta, data_hora_transacao, valor, tipo_transacao, status_transacao, id_canal | ~4 bi | **30% a.m.** | OLTP pesado, alta concorrência |
| CANAL | Domínio de canais | descricao_canal, tipo_canal, status_canal | ~10 | estável | Sem particionamento |
| DISPOSITIVO_CLIENTE | Dispositivos p/ autenticação, segurança, antifraude | id_cliente, tipo_dispositivo, sistema_operacional, hash_dispositivo, data_vinculo | ~150 mi | 10% a.a. | Segurança/antifraude |
| LIMITE_CONTA | Limites operacionais com vigência temporal | id_conta, tipo_limite, valor_limite, data_inicio_vigencia, data_fim_vigencia | ~1 bi | 20% a.a. | Dados temporais |
| TRANSACAO_HISTORICO | Histórico de mudança de estado das transações | id_transacao, data_evento, status_anterior, status_novo, origem_evento | ~10 bi | **30% a.m.** | **Append-only**, baixíssima atualização |

### DDL atual implementada (analise-a criticamente — ela contém problemas plantados)

```sql
CREATE TABLE CLIENTE (
    id_cliente BIGINT PRIMARY KEY,
    nome_cliente VARCHAR(150) NOT NULL,
    documento_cliente VARCHAR(20) NOT NULL UNIQUE,
    data_cadastro TIMESTAMP NOT NULL,
    status_cliente VARCHAR(20) NOT NULL,
    segmento VARCHAR(30) NOT NULL
);
CREATE TABLE CANAL (
    id_canal INT PRIMARY KEY,
    descricao_canal VARCHAR(80) NOT NULL,
    tipo_canal VARCHAR(30) NOT NULL,
    status_canal VARCHAR(20) NOT NULL
);
CREATE TABLE CONTA (
    id_conta BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    numero_conta VARCHAR(30) NOT NULL UNIQUE,
    tipo_conta VARCHAR(30) NOT NULL,
    data_abertura TIMESTAMP NOT NULL,
    status_conta VARCHAR(20) NOT NULL,
    CONSTRAINT fk_conta_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE ATENDIMENTO (
    id_atendimento BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    canal VARCHAR(30) NOT NULL,                -- texto livre, não referencia CANAL!
    data_abertura TIMESTAMP NOT NULL,
    data_fechamento TIMESTAMP NULL,
    status_atendimento VARCHAR(20) NOT NULL,
    prioridade VARCHAR(20) NOT NULL,
    CONSTRAINT fk_atendimento_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE INTERACAO_ATENDIMENTO (
    id_interacao BIGINT PRIMARY KEY,
    id_atendimento BIGINT NOT NULL,
    tipo_interacao VARCHAR(30) NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    origem VARCHAR(30) NOT NULL,
    conteudo_resumido VARCHAR(500) NULL,
    CONSTRAINT fk_interacao_atendimento FOREIGN KEY (id_atendimento) REFERENCES ATENDIMENTO(id_atendimento)
);
CREATE TABLE DISPOSITIVO_CLIENTE (
    id_dispositivo BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    tipo_dispositivo VARCHAR(30) NOT NULL,
    sistema_operacional VARCHAR(30) NOT NULL,
    hash_dispositivo VARCHAR(128) NOT NULL UNIQUE,
    data_vinculo TIMESTAMP NOT NULL,
    CONSTRAINT fk_dispositivo_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);
CREATE TABLE LIMITE_CONTA (
    id_limite BIGINT PRIMARY KEY,
    id_conta BIGINT NOT NULL,
    tipo_limite VARCHAR(30) NOT NULL,
    valor_limite DECIMAL(18,2) NOT NULL,
    data_inicio_vigencia TIMESTAMP NOT NULL,
    data_fim_vigencia TIMESTAMP NULL,
    CONSTRAINT fk_limite_conta FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta),
    CONSTRAINT ck_valor_limite CHECK (valor_limite >= 0)
);
CREATE TABLE TRANSACAO (
    id_transacao BIGINT PRIMARY KEY,
    id_conta BIGINT NOT NULL,
    id_canal INT NOT NULL,
    data_hora_transacao TIMESTAMP NOT NULL,
    valor DECIMAL(18,2) NOT NULL,
    tipo_transacao VARCHAR(30) NOT NULL,
    status_transacao VARCHAR(20) NOT NULL,
    CONSTRAINT fk_transacao_conta FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta),
    CONSTRAINT fk_transacao_canal FOREIGN KEY (id_canal) REFERENCES CANAL(id_canal),
    CONSTRAINT ck_valor_transacao CHECK (valor > 0)
);
CREATE TABLE TRANSACAO_HISTORICO (
    id_transacao_historico BIGINT PRIMARY KEY,
    id_transacao BIGINT NOT NULL,
    data_evento TIMESTAMP NOT NULL,
    status_anterior VARCHAR(20) NOT NULL,
    status_novo VARCHAR(20) NOT NULL,
    origem_evento VARCHAR(30) NOT NULL,
    CONSTRAINT fk_hist_transacao FOREIGN KEY (id_transacao) REFERENCES TRANSACAO(id_transacao)
);
```

---

## O QUE A BANCA PEDE (desafio oficial — 4 entregas obrigatórias)

1. **Modelo de dados conceitual ideal** — aplicando **todos** os conceitos da modelagem conceitual;
2. **Modelo de dados físico ideal** — e, caso o físico precise divergir do conceitual em função do contexto, **justificar cada intervenção individualmente**;
3. **(a) Plano de trabalho para atuação de ADs e DBAs** — como representante do Capítulo de Administração e Banco de Dados na Plataforma de Desenvolvimento, explicitando **fronteiras de atuação** e **dinâmica de interação com o time de desenvolvimento**, visando máxima efetividade e sinergia no squad;
4. **(b) Estratégia de evolução das demandas de banco de dados** — atuação **proativa sempre que possível** e **corretiva de forma tempestiva** frente ao crescimento vegetativo, mantendo o banco adequado em **desenho/arquitetura, performance, integridade, segurança e disponibilidade**.

---

## INSTRUÇÕES DE PROFUNDIDADE TÉCNICA (grau avançado — não negociável)

### Na análise crítica da DDL, identifique e trate explicitamente, no mínimo:

1. **`TIMESTAMP` usado para datas de negócio** — no SQL Server, `TIMESTAMP` é sinônimo depreciado de `ROWVERSION` (contador binário de versão de linha, **não armazena data/hora**). Todas as colunas `data_*` estão semanticamente quebradas → causa direta de "dados inconsistentes". Correção: `DATETIME2(n)` com precisão justificada, `DATE` quando não houver hora;
2. **`ATENDIMENTO.canal VARCHAR(30)`** — texto livre em vez de FK para a tabela de domínio CANAL (que existe e é referenciada por TRANSACAO): inconsistência de grafia, redundância, quebra do domínio;
3. **Status como `VARCHAR(20)` em todas as tabelas** — sem domínio/constraint, repetido bilhões de vezes (custo de armazenamento e buffer): propor tabelas de domínio ou `TINYINT` + CHECK/FK;
4. **Ausência total de particionamento** nas 4 tabelas massivas (ATENDIMENTO, INTERACAO_ATENDIMENTO, TRANSACAO, TRANSACAO_HISTORICO) — projete o crescimento composto (30% a.m. ≈ ×23 em 12 meses) e demonstre insustentabilidade;
5. **PKs clustered em `id BIGINT` sequencial** nas tabelas de altíssima inserção — hotspot de *last-page insert* (contenção de latch PAGELATCH_EX); discutir alternativas (chave composta data+id alinhada à partição, OPTIMIZE_FOR_SEQUENTIAL_KEY);
6. **Ausência de estratégia de índices** — nenhum índice não clusterizado declarado: consultas críticas (extrato por conta+período, atendimento por cliente, limite vigente) forçam scan;
7. **`CHECK (valor > 0)` em TRANSACAO** — impede estornos/ajustes negativos? Discutir regra de negócio;
8. **LIMITE_CONTA sem garantia de não-sobreposição de vigência** — propor índice único filtrado (`WHERE data_fim_vigencia IS NULL`) e/ou validação;
9. **Ausência de colunas de auditoria** (quem/quando incluiu/alterou) e de classificação de dados sensíveis (LGPD/sigilo bancário: documento_cliente, hash_dispositivo);
10. **Sem estratégia para append-only** — TRANSACAO_HISTORICO (10 bi) tratada como tabela comum.

### No modelo conceitual, aplique explicitamente:

- Entidades **fortes × fracas/dependentes**; entidades de **domínio**; entidades **históricas**; classificação em **dados mestres, transacionais, operacionais, históricos e de domínio**;
- **Cardinalidades** completas (1:N, opcionalidade) em todos os relacionamentos, nomeados por verbo;
- **Regras de negócio** por entidade (unicidade, ciclo de vida/máquina de estados, vigência temporal sem sobreposição, imutabilidade do histórico);
- Correção conceitual: **CANAL relacionado também a ATENDIMENTO** (substituindo o atributo textual);
- Tabela-resumo: entidade × classe × responsabilidade × relacionamentos/cardinalidades × regras principais.

### No modelo físico, contemple obrigatoriamente:

- **Tipos corrigidos** (DATETIME2/DATE; DECIMAL para valores; TINYINT para domínios; ROWVERSION apenas onde houver concorrência otimista real);
- **Particionamento por faixa de data (mensal)** nas 4 massivas, com *rolling window* (SPLIT/MERGE/SWITCH), filegroups e alinhamento de índices;
- **Estratégia de índices**: clustered justificado, nonclustered cobrindo consultas críticas (com INCLUDE), **índices filtrados** (limite vigente, atendimentos abertos), avaliação de **columnstore** para partições frias/consulta analítica;
- **Compressão** (ROW quente, PAGE morno/frio) e **arquivamento** com camadas **quente/morno/frio** + expurgo normatizado;
- **RCSI** (READ_COMMITTED_SNAPSHOT) para contenção leitura×escrita, com dimensionamento de tempdb;
- **Estatísticas incrementais** por partição + Query Store; manutenção **ONLINE/RESUMABLE** por partição compatível com a janela reduzida;
- **Segurança**: TDE, Dynamic Data Masking / Always Encrypted para dados sensíveis, SQL Audit, privilégio mínimo;
- **Disponibilidade**: Always On AG, réplica legível para descarga (relatórios/CHECKDB), RTO/RPO;
- **Pseudo-DDL resumida** das tabelas mais relevantes (TRANSACAO, TRANSACAO_HISTORICO, LIMITE_CONTA, ATENDIMENTO) destacando o "antes → depois";
- Nomenclatura corporativa CAIXA quando exemplificar (prefixos de classe: `NU_`, `CO_`, `DT_`, `DH_`, `VR_`, `IC_`, `DE_`, `QT_`; tabelas `TB_`).

### Na justificativa conceitual × físico (exigência explícita da banca):

- Tabela: intervenção física × o que diverge do conceitual × justificativa (performance/escalabilidade/manutenção/disponibilidade) × salvaguarda de integridade;
- Incluir: particionamento (não altera o conceito), PK composta alinhada à partição, segregação física do histórico, índices "redundantes" necessários, compressão, **desnormalizações controladas aceitas** (ex.: status corrente na TRANSACAO além da trilha no HISTORICO) **e desnormalizações rejeitadas** (ex.: repetir dados de cliente na transação) com o porquê;
- Princípio: físico diverge por necessidade medida, nunca por atalho — toda divergência documentada no modelo.

### No plano de ADs e DBAs (item a):

- **Tabela de fronteiras**: dimensão × responsabilidade do AD (modelo conceitual/lógico, padronização, nomenclatura, glossário, qualidade, regras de negócio, governança, linhagem/catálogo, impactos negociais, apoio desde o refinamento) × responsabilidade do DBA (modelo físico, DDL, performance, índices, particionamento, capacidade, backup/restore, alta disponibilidade, segurança física/lógica, monitoramento, tuning, manutenção, execução controlada em produção);
- **Dinâmica com o squad**: participação no refinamento, avaliação prévia de impacto, **Definition of Ready** para demandas com impacto em dados, **Definition of Done** para mudanças de banco, revisão de scripts, plano de rollback, testes de performance, homologação técnica, observabilidade, ritos periódicos;
- Referenciar o fluxo corporativo quando fizer sentido: modelo DES no PowerDesigner, pré-validação, solicitação de validação, laudo do AD (aprovado/com adequações/com ressalvas/não aprovado);
- Papel do coordenador: garantir sinergia, remover conflitos de fronteira, medir efetividade.

### Na estratégia de evolução (item b):

- **Proativo**: monitoramento contínuo (CPU, memória/PLE, I/O, locks, waits, deadlocks, timeouts), indicadores de crescimento por tabela/partição com projeção × capacidade, revisão periódica de índices (ausentes × não usados), atualização de estatísticas, análise de planos (Query Store, regressões), testes de carga, baselines formais, gestão de capacidade, rolling de partições, expurgo/arquivamento normatizado, comitê técnico de evolução do modelo, priorização de débitos técnicos;
- **Corretivo tempestivo**: runbook de incidentes (waits → plano → objeto → mudança recente), papéis definidos, pós-mortem alimentando o backlog preventivo;
- Amarrar cada mecanismo às 5 dimensões pedidas: **desenho/arquitetura, performance, integridade, segurança, disponibilidade**.

---

## ESTRUTURA DE SAÍDA OBRIGATÓRIA (fluxo lógico)

1. **Título** + identificação (tema, PSI, cenário hipotético);
2. **Introdução executiva** — contexto, sintomas correlacionados às causas estruturais, abordagem em eixos;
3. **Diagnóstico técnico da situação atual** — análise crítica da DDL (item a item, causa → impacto → direção de solução) + projeção de volumetria;
4. **Modelo conceitual ideal** — descrição textual + tabela-resumo + regras de negócio;
5. **Modelo físico ideal** — diretrizes + pseudo-DDL antes/depois + estratégias (partição, índice, compressão, arquivamento, segurança, disponibilidade);
6. **Justificativa das intervenções conceitual × físico** — tabela de divergências justificadas;
7. **Plano de trabalho ADs e DBAs (item a)** — fronteiras + dinâmica com squad + ritos;
8. **Estratégia de evolução (item b)** — proativa + corretiva + indicadores + ciclos;
9. **Roadmap de implantação** (fases, ações, responsáveis, resultados) — *diferencial: não exigido pelo edital, mas reforça a visão gerencial de coordenador*;
10. **Riscos e mitigadores** (tabela) — *diferencial: não exigido pelo edital*;
11. **Conclusão executiva** — síntese amarrando solução ↔ sintomas ↔ sustentabilidade.

---

## PREMISSAS DE CONSTRUÇÃO (decisões consolidadas — respostas do candidato às 20 perguntas de assertividade)

Estas premissas foram deliberadas previamente e SÃO VINCULANTES para a redação. Não as contrarie.

### P1 — Nível de profundidade e peso das entregas
As 4 entregas têm importância equivalente. Em cada uma: entregar primeiro o **básico esperado por todos** (cobertura completa do pedido) e, em seguida, **expandir com o diferencial de profissional sênior** (soluções acima da média, visão de coordenador, sempre amarradas à estratégia de evolução). Conhecimento avançado + visão gerencial em todas as seções.

### P2 — "Todos os conceitos da modelagem conceitual" = cobertura integral
Abordar do simples ao específico, de forma coesa: entidade forte/fraca/dependente, entidade de domínio, entidade histórica/associativa, atributos (simples, compostos, derivados), cardinalidade e opcionalidade, **generalização/especialização (CLIENTE PF × PJ via `segmento`)**, agregação, normalização (até 3FN, padrão CAIXA), regras de negócio, ciclo de vida das entidades, separação mestre/transacional/operacional/histórico/domínio. Nada de lista superficial: cada conceito aplicado ao SIADL.

### P3 — Divergências conceitual × físico: NÃO inventar (possível pegadinha)
Justificar divergências **apenas SE existirem de fato**, baseadas no padrão do segmento e nas normas CAIXA. Se não houver divergência real em algum ponto, não criar artificialmente. É permitido (e desejável) registrar **considerações/alertas de perigos** que podem LEVAR a divergências se não forem observados.

### P4 — Diagrama atual oficial (não contradizer)
O diagrama do enunciado contém: CLIENTE 1:N CONTA; CLIENTE 1:N ATENDIMENTO; CLIENTE 1:N DISPOSITIVO_CLIENTE; **CLIENTE 1:N INTERACAO_ATENDIMENTO** (relacionamento direto que NÃO está no texto — avaliar redundância/derivação via ATENDIMENTO no modelo ideal); CONTA 1:N TRANSACAO; CONTA 1:N LIMITE_CONTA; ATENDIMENTO 1:N INTERACAO_ATENDIMENTO; TRANSACAO 1:N TRANSACAO_HISTORICO; CANAL 1:N TRANSACAO. **ATENDIMENTO NÃO se relaciona com CANAL no modelo atual** (usa atributo textual `canal`) — essa é uma correção a propor.

### P5 — Elementos visuais obrigatórios
Todo diagrama deve ser representado visualmente: (1) no documento principal, criar em **Mermaid/markdown**; (2) após cada diagrama, referenciar um **arquivo auxiliar** com a descrição completa e todas as informações para reconstruí-lo no **Draw.io ou PowerDesigner**; (3) quando não for possível desenhar em markdown, colocar apenas a referência ao arquivo **em destaque visual (cor vermelha ou fonte grande)**.

### P6 — TIMESTAMP: análise ancorada na norma CAIXA
Tratar o `TIMESTAMP` comparando com o que o **TE074/Anexo IV define para SQL Server** (DATETIME2 é o tipo correto para data+hora; ROWVERSION não recomendado — usar colunas DH). A crítica é normativa e técnica: mencionar a não aderência e propor a alteração.

### P7 — Crescimento 30% a.m.: questionar E propor solução para os dois cenários
Postura de coordenador: **questionar a premissa junto ao negócio** (validar se há gravação redundante/log excessivo) E propor solução para ambos os casos — se o dado estiver errado (saneamento da geração) e se estiver correto (solução de infra/estruturação/remodelagem de consultas para reduzir transações), citando padrões de solução consagrados para problemas semelhantes.

### P8 — Retenção: decisão do gestor/PO, apresentar CENÁRIOS
Não fixar uma política única. Apresentar análise condicional: "caso 90 dias → ...", "caso 12 meses → ...", com implicações de cada horizonte (storage, janela, backup), deixando explícito que a decisão é do **gestor da informação/PO** e o papel técnico é instrumentar os cenários.

### P9 — Estornos (CHECK valor > 0): comparar abordagens
Apresentar as abordagens (transação de estorno como novo registro de tipo específico mantendo o CHECK × valores negativos removendo o CHECK), com prós/contras de cada, indicando **o que é praticado comercialmente** no mercado financeiro (estorno como evento novo, preservando imutabilidade e trilha contábil) como recomendação.

### P10 — Índice clustered das massivas: composta como definitiva, paliativo como tático
Apresentar as duas alternativas com trade-offs. **Recomendação: chave clustered composta (data, id) alinhada à partição** como solução arquitetural definitiva (pré-requisito para SWITCH OUT; contrapartida: altera PKs, FKs, índices, consultas e TRANSACAO_HISTORICO). **OPTIMIZE_FOR_SEQUENTIAL_KEY = mitigação tática/emergencial** (estanca o hotspot de last-page insert enquanto a reestruturação é desenvolvida; não substitui particionamento nem habilita expurgo por SWITCH). Visão em fases: apagar o incêndio agora (operação), consertar a planta depois (arquitetura). Desenho físico detalhado e implantação sob responsabilidade do ABD.

### P11 — SQL Server 2025: citar recursos novos
Pode e deve citar recursos novos da versão quando melhorarem a solução (tempdb, IQP, columnstore etc.), com precisão técnica.

### P12 — LIMITE_CONTA: opção A com temporal table como complemento de auditoria
**Vigência de negócio (application-time) ≠ versionamento de sistema (system-time)** — misturá-los é erro conceitual grave. Manter vigência aplicativa (`data_inicio_vigencia`/`data_fim_vigencia`) + **índice único filtrado** garantindo um único vigente por tipo. Citar o **item 3.2.7 do TE074** (tabela temporal é padrão CAIXA) e recomendar **system-versioned temporal table estritamente para auditoria/conformidade** (quem mudou o limite e quando), isolando o histórico das consultas transacionais. Conversão completa para temporal table: mencionar como alternativa com impactos (volume 1 bi+, operação, semântica), decisão a validar por ABD/comitê. **Confirmado no corpus**: o guia de modelagem do portal traz exemplo oficial de `SYSTEM_VERSIONING = ON (HISTORY_TABLE = ...)` com `PERIOD FOR SYSTEM_TIME` — usar essa sintaxe como referência.

### P13 — Nomenclatura CAIXA: apontar não aderência e mostrar o correto
Citar explicitamente que a DDL atual **não adere às normas e nomenclatura CAIXA** (TE074/Anexo II) e apresentar como ficaria correto (TB_, NU_, CO_, DT_, DH_, VR_, IC_, DE_, QT_), no formato antes → depois.

### P14 — Fluxo de validação de modelos: citar sem detalhar
Mencionar o fluxo (modelo DES → pré-validação → solicitação de validação → laudo do AD) como estrutura de governança do plano, **sem entrar em detalhes operacionais internos** (sem URLs, sem nomes de ferramentas internas específicas além do essencial).

### P15 — Papéis: nomenclatura do enunciado + mecânica do mundo real
Usar "ADs e DBAs" (termos da prova; não inventar papéis), mas descrever a atuação do AD em **duas frentes complementares**: atuação **no squad** (modelagem ágil junto aos desenvolvedores) e atuação **no capítulo** (validação técnica, aderência aos normativos como TE074, emissão de laudos). DBA/ABD entra na implementação física e homologação. Maturidade organizacional sem extrapolar o enunciado.

### P16 — Diagnóstico como auditoria de conformidade normativa
Citar **explicitamente os itens 3.2.8 e 3.2.9 do TE074** como régua objetiva: TRANSACAO projeta ~94 bi linhas/ano → supera em ~940× o gatilho de 100 milhões de linhas/ano (3.2.8.3); o critério se estende a TRANSACAO_HISTORICO (3.2.8.6); **compressão PAGE é o default normativo** para SQL Server (3.2.9.1) e a NÃO compressão é que exige relatório técnico do ABD (3.2.9.3). Transformar "fere boas práticas" em "**descumpre item X do normativo**" — argumento de especialista sênior. **Reforços confirmados no corpus (guias do portal)**: particionar por TEMPO (ano/mês) com validação do ABD; compressão PAGE reduz **40–70% de espaço** com melhor I/O e cache; ciclo de vida com estágios (ativo → histórico → arquivo → expurgo/anonimização LGPD) automatizado por jobs — usar esses números e o modelo de estágios na proposta.

### P16-bis — Exceções à validação ADI (ouro para o item b)
O guia de atuação DBA confirma que **NÃO passam por validação ADI**: criação/alteração de índices por problemas de desempenho; sequences; e alterações de definições físicas de armazenamento (particionamento de tabelas/índices). Usar isso na estratégia corretiva do item (b): o DBA tem **autonomia formal para atuação tempestiva de performance** (índice emergencial, ajuste físico) sem o ciclo completo de validação de modelo — mantendo registro e comunicação ao AD para sincronização posterior do modelo físico.

### P17 — TE169/TE174: controles normativos dentro da estratégia (nem frase solta, nem eixo principal)
Incorporar explicitamente, vinculados aos sintomas: **TE169 (qualificação de dados)** ancora a dimensão "integridade" — ciclo definição→medição→análise→melhoria nas entidades com inconsistência confirmada (CLIENTE, ATENDIMENTO), com papéis de gestor da informação, AD e ABD. **TE174 (metadados/linhagem)** como **pré-requisito de segurança antes de cada DDL estrutural** — análise de impacto "onde é usado" protegendo sistemas consumidores. O núcleo do item (b) permanece em arquitetura/performance/integridade/segurança/disponibilidade; TE169/TE174 elevam de "tuning de banco" para estratégia de governança do ativo de dados.

### P18 — Equilíbrio texto × tabelas
Ambos são valorizados; o critério soberano é **coesão da informação**. Texto discursivo para raciocínio/justificativa, tabelas para densidade comparativa. Ajustável em iterações.

### P19 — SQL a incluir
Além da pseudo-DDL antes→depois das 4 tabelas principais, incluir: **partition function/scheme**, **índice único filtrado**, e **política de manutenção** (exemplos de REBUILD ONLINE/RESUMABLE por partição, estatísticas incrementais).

### P20 — Tom de coordenador: aplicar TODAS as estratégias
Decisões em primeira pessoa; premissas declaradas explicitamente (premissa explícita é defensável, implícita é lacuna); priorização por risco×impacto; critérios de sucesso mensuráveis.

### P21 — ATENÇÃO: conflito de nomenclatura entre fontes do corpus
O guia "Modelagem de Dados para Sistemas CAIXA" (portal) descreve nomenclatura por **sufixos** (`_ID`, `_DT`, `_VL`, `_NM`...), enquanto o **TE074/Anexo II oficial** define **prefixos de classe** (`NU_`, `DT_`, `DH_`, `VR_`, `NO_`, `IC_`, `CO_`...). **O normativo TE074/Anexo II é a fonte autoritativa** — usar prefixos de classe na pseudo-DDL proposta. Não misturar os dois padrões.

### P22 — Fluxo em 3 fases e SLA como estrutura do plano (item a)
O corpus confirma o workflow: **Fase 1 Desenvolvimento** (modelo no PowerDesigner + pré-validador + solicitação de validação) → **Fase 2 AD** (validação de conformidade TE074, normalização 3FN, classificação OR016/LGPD, laudo) → **Fase 3 ABD/DBA** (análise de performance e volumetria, decisão de particionamento/compactação, índices, geração de DDL, deploy DEV→TQS→HOM→PRD). Usar essa espinha dorsal no plano do item (a), citando de forma genérica (sem URLs/IPs internos). SLAs baseados em contagem de objetos existem (UAM/Anexo V) — mencionar dimensionamento de prazo por volumetria de objetos.

### P23 — Implantação e monitoramento (item b)
Apoiar a estratégia em práticas corporativas confirmadas: princípios de boas práticas de implantação (checklists, comunicação com gestores, envolvimento de operações, **projeção de performance para cenários de grande utilização**, preparação antecipada de infraestrutura) e **Grafana como ferramenta de dashboards/observabilidade** já praticada no ambiente. Rollback/backout formal como parte do rito de mudança.

---

## DIRETRIZES DE QUALIDADE

- **Cada proposta deve referenciar um problema concreto do SIADL** (nada genérico);
- Fluxo lógico: diagnóstico fundamenta o conceitual, que fundamenta o físico, que fundamenta a operação;
- Tom de **coordenador técnico** — decide, justifica, prioriza e assume riscos calculados;
- Tabelas para densidade; SQL mínimo e cirúrgico;
- **Vedado pelo enunciado**: propor migração para microsserviços/APIs (o SIADL não possui essas integrações);
- **Recomendado (prudência, não consta do edital)**: tratar como cenário hipotético, evitar citar nomes de sistemas/estruturas internas reais não públicos e respeitar a extensão sugerida de 10 páginas;
- Demonstrar as três visões: **conceitual (AD), física (DBA) e gerencial (coordenador)**.

---

## MATERIAIS DE CONSULTA (usar para aderência ao padrão corporativo)

### Núcleo normativo — `material-consulta\Arquivo\arquivos-md\`

- `normativos\TE074\` — Modelagem de dados relacional + Anexo II (nomenclatura por prefixos de classe — **fonte autoritativa**, ver P21) + Anexo IV (datatypes — DATETIME2 obrigatório no SQL Server) + Anexo V (UAM/prazos) + Anexo VI (lista de validação);
- `normativos\TE073\` — Gerência de modelos de dados (modelo DES, PowerDesigner, validação);
- `normativos\TE169\` — Processo de qualidade de dados; `normativos\TE174\` — Metadados;
- `normativos\TE197\` — Tabelas de log (particionamento de histórico, ref. TE074/3.2.6.1.2);
- `OR005221.md` — Estrutura organizacional (capítulos × plataformas × squads);
- `normativos\OR213\` — Criticidade (classificar o SIADL como crítico); `normativos\OR016\` — Tratamento da informação;
- `portais\Capítulo-Administração-e-Banco-de-Dados.md` — papéis AD Tático / AD Time / ABD;
- `diversos\Orientacoes_Iniciais_*.md` — acionamento do capítulo, critérios de validação, pré-validador, dicionário.

### Guias do portal de dados (critérios PPDS) — `material-consulta\Portais\dados\markdown\`

- `Particionamento.md`, `Compactação.md`, `Expurgo.md`, `Ciclo de Vida dos Dados.md`, `Otimização de Tabelas.md` — critérios detalhados que o TE074 delega ao portal (partition function por data, PAGE com 40–70% de redução, estágios de ciclo de vida, jobs de expurgo);
- `Modelagem de Dados para Sistemas CAIXA.md`, `guia-caixa-dados-sql.md`, `Melhores Práticas em Modelagem de Dados.md` — workflow 3 fases, temporal tables com SYSTEM_VERSIONING, SLA, PK/FK/constraints (**atenção ao conflito de nomenclatura — P21**);
- `Microsoft SQL Server - Uso de Constraint Default.md`, `Regras de modelagem para Frameworks Autorizados.md`, `Critérios para Validação de Modelos de Dados.md`, `Validações executadas no Pré-Validador.md`, `Nomenclatura_Objetos.md`.

### Guias de atuação do Capítulo — `material-consulta\GECPA10-...-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\`

- `ADB\Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ.md` — atuação do DBA multi-SGBD, **exceções à validação ADI** (P16-bis), fluxo de DDL e ambientes DES→TQS→HOM→PRD (usar SEM citar IPs/servidores/caminhos internos);
- `ADI\GuiasArquiteturaDeDados\` — arquitetura de dados, critérios de validação, melhores práticas, otimização de tabelas (Particionamen/Compactac/Expurgo/Ciclo-de);
- `Capitulo-de-Administracao-e-Banco-de-Dados.md`, `ADI-Ambiente-Nao-Producao.md`.

### Guias de implantação e operação — `material-consulta\GUIAS\Implantacao\md\`

- `Boas práticas para implantações.md` — 5 princípios (checklists, comunicação, operações, projeção de performance, preparação antecipada);
- `Modelo de Uso do Grafana.md` — observabilidade/dashboards para o item (b);
- `Atividades e atores do contexto de implantação.md`, `CE-SUGTI-*.md`, `CE-GEPAS-0031-2021.md` — ritos, atores e comunicados de gestão de mudança.

### Regras de uso do corpus

1. Priorize **normativos (TE/OR/CR)** sobre guias de portal em caso de divergência (ver P21);
2. **Nunca copie** para a PT: URLs internas, IPs, nomes de servidores, caminhos de rede, nomes de sistemas internos específicos — use descrições genéricas ("ferramenta corporativa de modelagem", "repositório de DDL homologado");
3. Use os fatos numéricos extraídos (100 mi linhas/ano; PAGE 40–70%; estágios de ciclo de vida; 3 fases de workflow) como evidência normativa no diagnóstico e na proposta.

## SAÍDA E ORGANIZAÇÃO DE ARQUIVOS

- Salvar a resolução e eventuais artefatos auxiliares em: `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\agentes\<nome-do-agente>\`;
- Antes de redigir, **faça um planejamento (todo list) cobrindo todas as 4 entregas e todos os pontos deste prompt — e não pule nenhum**;
- Ao final, apresente um **checklist de cobertura** confirmando que cada exigência da banca e cada instrução de profundidade foi contemplada.
