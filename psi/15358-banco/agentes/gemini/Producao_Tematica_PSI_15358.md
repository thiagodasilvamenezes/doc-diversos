# PRODUÇÃO TEMÁTICA - PSI 15358

**Estudo de Caso:** Sistema de Atendimento Digital — SIADL  
**Função:** Coordenador de Projetos/Processos Matriz – GECPA (Capítulo Administração e Banco de Dados)

---

## 1. Introdução e Diagnóstico do Cenário Atual

O Sistema de Atendimento Digital (SIADL) constitui pilar estratégico corporativo. A volumetria atual (~12 TB, >10.000 usuários simultâneos, ~25 mil TPS) expôs severos gargalos da arquitetura relacional, refletindo sintomas clássicos de degradação em ambientes OLTP monolíticos massivos.

O diagnóstico aponta os seguintes ofensores arquiteturais:
1.  **Dados Inconsistentes:** Reflexo de modelagem lógica precária, ausência de constraints e despadronização de domínios corporativos (tipificação), infringindo a normatização técnica **TE074**.
2.  **Timeout e Lentidão Generalizada:** Gargalo de I/O em virtude de "Full Table Scans" e alto índice de *locking/blocking*. Tabelas gigantes sem isolamento de versionamento de linha geram conflitos críticos entre leituras massivas e escritas transacionais.
3.  **Aumento Exponencial e CPU/Memória Elevadas:** Crescimento das tabelas transacionais sem política de expurgo tempestiva ou divisão de *Filegroups*. A carga do *Buffer Cache* está saturada pelo armazenamento ineficiente das linhas nos discos (sem compressão).

---

## 2. Modelo de Dados Conceitual Ideal

Baseado nos princípios estabelecidos de flexibilidade e simplicidade preconizados no guia corporativo, o modelo conceitual adota a **3ª Forma Normal (3FN)** com rigor semântico.

* **CLIENTE:** Entidade matriz governante, sujeita a regras rigorosas de privacidade (*Privacy by Design* / LGPD). 
* **ATENDIMENTO:** Entidade transacional núcleo. Caracteriza a interação digital unívoca com alto tráfego.
* **TRANSACAO_ATENDIMENTO:** Entidade de cardinalidade N:1 associada ao ATENDIMENTO, registrando etapas, logs ou serviços invocados durante o fluxo (ex: simulação, formalização).
* **TIPO_STATUS_ATENDIMENTO / TIPO_CANAL:** Tabelas de Apoio (Classificadoras / Domínio) aderentes ao TE074, destinadas a estabilizar categorias, minimizando inconsistências e propiciando controle sobre as regras do SGBD sem recorrer a *hardcodes*.

A aplicação fiel da normalização (3FN) extirpa a anomalia de atualização e garante integridade absoluta dos dados na base OLTP.

---

## 3. Modelo Físico Ideal e Justificativas de Transformação

Ao declinar o modelo conceitual para o nível de SGBD (SQL Server 2025), adotamos as diretrizes do manual normativo e o padrão de nomenclatura (Anexo II - TE074). 

### Diferenças e Desnormalizações (Justificativas Físicas)
* **Colapso Pontual de Entidades:** Atributos frequentemente pesquisados em junção podem ser denormalizados para a tabela `ATENDIMENTO` para eliminar custos de JOINs pesados, visto o altíssimo custo computacional de junções com mais de 10.000 concorrentes (Trade-off: custo de armazenamento VS economia de CPU em leituras).
* **Criação de Tabelas de Histórico:** O SIADL não pode manter dados "frios" na tabela transacional. Tabelas espelho (`TB_HST_ATENDIMENTO`) serão provisionadas para receber o fluxo arquivado via rotina técnica, estipulando um ciclo de vida ágil (TE074, 3.2.10).

**Exemplo Técnico do Modelo Físico:**
* Tabela principal com colunas sufixadas adequadamente: `NU_CLIENTE` (BIGINT), `IC_STATUS` (CHAR(1)), `TS_INCLUSAO` (DATETIME2), obedecendo estritamente ao Anexo IV de Tipos de Dados da CAIXA.

---

## 4. Estratégia de Escalabilidade e Tuning (SQL Server 2025)

Dado o escopo fechado (OLTP, 12 TB, sem APIs, janela reduzida), a estabilização ocorre exclusivamente a nível de engine do SGBD e modelagem física.

### 4.1. Particionamento de Tabelas e FileGroups
Conforme exigido pelo normativo (>100mi linhas/ano), a tabela core do SIADL será alvo de **Particionamento por Data (Range Right)**.
* **Estratégia:** Uso da coluna temporal `DT_ATENDIMENTO` como Partition Key. Provisionamento de *FileGroups* e arquivos de dados granulares segmentados mensalmente.
* **Benefícios:** *Partition Elimination* (o SGBD acessa apenas o disco/filegroup do mês, economizando RAM/CPU), paralelismo de I/O e alívio do plano de execução.

### 4.2. Compressão de Dados
Implantação mandatória da cláusula `DATA_COMPRESSION = PAGE` em tabelas e índices maiores (TE074 - 3.2.9). A compressão troca milissegundos de processador por drástica redução de I/O (Leituras Lógicas) e amplia enormemente o potencial do *Buffer Cache*.

### 4.3. RCSI (Read Committed Snapshot Isolation)
Para debelar os picos de Timeout e travamentos, o banco do SIADL será convertido para RCSI.
* *Mecanismo:* O SQL Server passa a armazenar as versões antigas da linha na *tempdb* durante um UPDATE. 
* *Benefício:* Leituras não bloqueiam gravações e vice-versa. Extirpa o cenário de transações enfileiradas esperando liberação de bloqueio exclusivo.

### 4.4. Operações Online na Janela de Manutenção
Visando contornar a janela de manutenção reduzida, a reorganização de índices será feita de modo isolado por partição (`REBUILD PARTITION = N`) e, em reconstruções pesadas, faremos o uso do recurso `RESUMABLE = ON` (permite pausar o rebuild da indexação se o limite da janela de tempo for estourado, retomando no dia seguinte).

---

## 5. Estratégia Corretiva e Proativa: Crescimento Vegetativo

O crescimento dos 12 TB será mitigado proativamente com **Estratégias de Switch Partition**.
* Ao invés da onerosa operação lógica `DELETE`, o expurgo mensal moverá os dados para uma tabela staging histórica (Tabela Auxiliar) de modo instantâneo, unicamente pela manipulação de metadados (`ALTER TABLE ... SWITCH PARTITION`), preservando CPU, espaço de T-LOG e I/O.
* Integração do **Query Store** (SQL Server) para identificar, regressar e estabilizar proativamente eventuais planos de execução degradados devido à atualização do volume estatístico.

---

## 6. Governança, Fronteiras AD/DBA e Dinâmica do Time (Capítulos)

Para gerir essa arquitetura a longo prazo, o controle de evolução segue o padrão CAIXA de Capítulos e Boxes de Valor.

### 6.1. Processo de Trabalho Ágil
* **AD Time (Squad):** Atua intrinsecamente com o time de desenvolvimento (SIADL). Avalia novos requisitos, efetua análise preliminar, atualiza o *PowerDesigner* e constrói o modelo lógico e físico no ambiente de Desenvolvimento (DES).
* **AD Tático (Capítulo):** O modelo é remetido, via abertura de Demanda no **RTC**, para validação. O AD Tático aplica o **SIAGT (Pré-Validador)**, audita aderência a regras do TE074 e gera laudo sistêmico para as mudanças arquiteturais e dicionário de dados.
* **ABD (Administrador de Banco de Dados):** De posse do laudo do AD, avalia impacto no *engine* e aprova *DDLs* físicas e particionamentos. O ABD implementa as alterações nos ambientes de Desenvolvimento e Teste (TQS).
* **CEPIP:** As passagens para HMP e PRD são centralizadas, com documentação versionada originada pelo ABD.

### 6.2. Conformidade e Segurança 
Os metadados no *PowerDesigner* conterão mapeamento taxativo sobre colunas sensíveis atreladas a LGPD (Normas CR439/OR016), viabilizando mapeamento corporativo de Privacy By Design para mascaramento de dados (Data Masking) nas réplicas não-produtivas.

---

## 7. Conclusão

A arquitetura reprojetada garante aderência plena aos ditames normativos corporativos. Através da segmentação lógica robusta e tunings avançados orientados à fisicalidade do dado (Particionamento via Filegroups, Compressão de Páginas e RCSI), o SIADL passa a dispor de recursos resilientes. Aliando o controle de expurgo assíncrono à rígida trilha de governança estabelecida pelo Capítulo de Administração de Dados, encerram-se as instabilidades vigentes com fôlego técnico para os próximos ciclos de escalabilidade.
