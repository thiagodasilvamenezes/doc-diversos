# Análise documental para elaboração da Produção Temática — SIADL

**Objeto:** preparação técnica para a Produção Temática do PSI nº 15358 — estudo de caso do Sistema de Atendimento Digital (SIADL).  
**Data da consolidação:** 11/07/2026.  
**Premissa de uso:** os arquivos fornecidos estão em Markdown consolidado e contêm normativos, guias de portal, orientações operacionais, guias de atuação e os dois prompts de trabalho. A análise abaixo não inventa norma inexistente; quando há extrapolação técnica, ela é marcada como **inferência técnica**.

---

## 1. Visão geral do material analisado

O conjunto documental é suficiente para sustentar uma Produção Temática forte, desde que a redação final deixe clara a diferença entre: **evidência normativa CAIXA**, **orientação de portal/guia** e **complementação técnica de SQL Server**. O eixo normativo mais forte está em TE074, TE073, TE169, TE174, OR016 e OR005. Os guias de portal complementam a aplicação prática de particionamento, compactação, expurgo, ciclo de vida, otimização de tabelas, pré-validação e atuação AD/DBA.

A leitura mostrou que a Produção Temática deve ser defendida como um problema de **arquitetura de informação e governança técnica do ativo de dados**, não apenas como tuning pontual. Os sintomas do SIADL — dados inconsistentes, timeouts, picos de CPU, memória e crescimento acelerado — se conectam diretamente a falhas de modelagem, ausência de ciclo de vida, baixa governança de qualidade, ausência de particionamento, ausência de compactação e fragilidade de domínio/integridade.

---

## 2. Inventário dos documentos

### 2.1 Arquivos-base enviados

| Arquivo analisado | Tipo | Tema principal | Assuntos secundários | Utilidade para a PT | Relevância | Observações |
|---|---|---|---|---|---|---|
| `prompt-analise-material(1).md` | Prompt orientador | Método de análise documental | Inventário, matriz de aderência, lacunas, suficiência | Define a primeira entrega solicitada pelo usuário | Alta | Exige análise por etapas antes da redação final; foi seguido como estrutura deste documento. |
| `prompt-producao-pt(1).md` | Prompt orientador | Resolução da Produção Temática PSI 15358 | Cenário SIADL, DDL problemática, 4 entregas oficiais, premissas P1–P23 | Define a segunda entrega: redação completa da PT | Alta | Contém o enunciado consolidado e decisões vinculantes: não propor microsserviços/APIs, usar TE074, TE169, TE174 e foco AD/DBA. |
| `arquivos-consulta(1).md` | Pacote consolidado | Corpus principal para consulta | TE074, TE073, TE169, TE174, OR016, OR213, OR005, portais, guias e implantação | Fonte primária consolidada para análise | Alta | É o arquivo mais útil, pois reúne normativos e guias já filtrados para a PT. |
| `normativos-banco-de-dados-all(2).md` | Pacote de normativos | Normas CAIXA relacionadas a banco/dados | CR121, OR016, OR213, TE073, TE074, TE106, TE109, TE169, TE174, TE177, TE197 etc. | Sustentação normativa | Alta | Usado para confirmar hierarquia normativa, principalmente TE074, TE073, TE169, TE174 e OR016. |
| `portais-banco-dados(2).md` | Pacote de páginas de portal | Conteúdos práticos do Capítulo e guias | Capítulo Administração e Banco de Dados, pré-validador, listas, datatypes, modelagem | Complementa o processo real de atuação | Média/Alta | Útil para dinâmica AD Time/AD Tático/ABD e orientações de processo; contém HTML exportado. |
| `diversos-banco-dados(2).md` | Pacote de orientações | Guias iniciais de ferramentas e rotinas de AD | Acesso ao repositório, check-in, dicionário, critérios, documentação AD | Apoia plano de trabalho e governança | Média | Relevante para o item (a), mas menos central que TE074/TE073. |

### 2.2 Documentos internos e seções mais relevantes encontrados no corpus

| Documento/seção incorporada | Tema | Utilidade prática na PT | Relevância | Evidência/trecho de referência |
|---|---|---|---|---|
| TE074 — Modelagem de Dados Relacional | Regra central de modelagem física e validação | Fundamenta modelo físico, nomenclatura, datatypes, particionamento, compactação, ciclo de vida, validação ADI/ABD | Alta | Finalidade de definir regras de modelagem relacional, denominação de objetos físicos e critérios de validação; seções 3.1, 3.2, 3.3 e 4. |
| TE074 §3.1 | Fundamentos de arquitetura da informação | Defender que qualidade do modelo sustenta a arquitetura de informação e reuso | Alta | Modelo deve conter apenas objetos necessários à finalidade de negócio; arquitetura de informação estrutura ativos de dados. |
| TE074 §3.2.8 | Particionamento | Justifica particionamento das tabelas massivas do SIADL | Alta | Tabelas com volume superior a 100 milhões de linhas/ano devem ser assinaladas para análise ABD; histórico/auxiliar pode seguir mesmo critério. |
| TE074 §3.2.9 | Compactação | Sustenta uso de `DATA_COMPRESSION = PAGE` para SQL Server | Alta | Para SQL Server, compactação é indicada em `WITH, DATA_COMPRESSION (PAGE)`; não uso exige relatório técnico do ABD. |
| TE074 §3.2.10 | Ciclo de vida do dado | Sustenta retenção, migração para histórico/auxiliar e expurgo | Alta | Dados online devem permanecer pelo prazo necessário e suficiente; dados não necessários em transacionais devem migrar para históricas/auxiliares. |
| TE074 §3.2.11 | Relacionamentos | Corrige a modelagem de ATENDIMENTO→CANAL e evita FK textual | Alta | Associações entre tabelas são representadas por relacionamento ou tabela associativa; é vedado definir como coluna o identificador de outra tabela no lugar do relacionamento. |
| TE074 §3.3 | Critérios de validação | Base do fluxo modelo DES → pré-validação → validação ADI → laudo | Alta | Validação pela ADI; pré-validação obrigatória; critérios incluem regra de negócio, integração, técnicas e normas/padrões. |
| TE073 | Gerência de modelos de dados | Sustenta governança de modelos, repositório e responsabilidade ADI | Alta | Modelos são geridos em repositório; ADI valida modelo, laudo e criação/manutenção em desenvolvimento. |
| TE169 | Qualificação de dados | Trata dados inconsistentes do SIADL | Alta | PrQD visa melhoria contínua; define diagnóstico, planos de qualidade, homologação e ações preventivas/corretivas. |
| TE174 | Gerenciamento de metadados | Sustenta catálogo, dicionário, linhagem e análise de impacto | Alta | Repositório centralizado de metadados com visão de negócio e técnica; responsabilidades de gestores, ADI e ABD. |
| OR016 | Tratamento da informação | Classificação, sigilo e segurança | Alta | Apoia classificação de documento_cliente, hash_dispositivo e dados bancários. |
| OR213 | Criticidade | Justifica classificar SIADL como sistema crítico | Média/Alta | Apoia priorização por impacto, disponibilidade e continuidade, embora precise ser aplicado por inferência ao cenário SIADL. |
| OR005 | Arquitetura organizacional | Relaciona capítulos, plataformas, squads e responsabilidades | Média/Alta | Sustenta atuação matricial e papel de representante de Capítulo. |
| Capítulo Administração e Banco de Dados | AD/ABD na prática | Base para fronteiras de atuação AD Time, AD Tático e ABD | Alta | AD altera modelo em DES; ABD altera SGBD em DES/TQS; AD Time atua no squad; AD Tático valida/consulta. |
| Orientações de Acionamento do Capítulo | Processo de demanda | Apoia dinâmica com o squad e acionamento formal | Média | Complementa o item (a) com fluxo operacional. |
| Orientações de Critérios de Validação | Pré-validação e qualidade de modelo | Apoia DoR/DoD e checklist | Média | Indica uso de pré-validação e critérios de avaliação. |
| Orientações de Dicionário de Dados | Documentação e semântica | Apoia glossário, descrição de colunas e metadados | Média | Ajuda a evitar campos genéricos e comentários tautológicos. |
| Particionamento.md | Guia prático de particionamento | Complementa TE074 com estratégia mensal, filegroups, function/scheme, sliding window | Alta | Reforça uso por data, partition elimination, manutenção por partição e PK incluindo chave de particionamento. |
| Compactação.md | Guia prático de compressão | Sustenta redução de espaço e melhor I/O/cache | Alta | Indica `DATA_COMPRESSION(PAGE)` no SQL Server e redução média de 40–70% de espaço, com trade-off de CPU. |
| Expurgo.md / Ciclo de Vida dos Dados.md | Retenção e arquivamento | Base para camadas quente/morno/frio e expurgo normatizado | Média/Alta | Complementa TE074 §3.2.10 com práticas de retenção, migração, rollback e auditoria. |
| Otimização de Tabelas.md | Índices, estatísticas, columnstore | Base para tuning físico do OLTP | Alta | Apresenta clustered/nonclustered, covering, filtered, columnstore, índices em FKs e manutenção. |
| Guia DBA Oracle/SQL Server/Postgre | Atuação ABD/DBA | Apoia exceções à validação ADI e atuação corretiva tempestiva | Alta | Indica que criação/alteração de índices por desempenho e alterações físicas de armazenamento não passam por validação ADI, com registro e comunicação. |
| Boas práticas para implantações | Mudança e operação | Apoia roadmap, checklist, comunicação, rollback e projeção de performance | Média | Útil para implantação com janela reduzida e operação crítica. |
| Modelo de Uso do Grafana | Observabilidade | Apoia estratégia proativa e dashboards | Média | Base para monitoramento de indicadores de banco e aplicação. |

---

## 3. Conceitos e normas extraídos dos materiais

| Conceito/orientação extraída | Documento de origem | Referência | Aplicação prática na PT | Relação com o SIADL | Como usar na resposta final |
|---|---|---|---|---|---|
| Qualidade do modelo de dados é condição para consolidar a Arquitetura da Informação | TE074 | §3.1.1–3.1.2 | Abrir a resposta defendendo que o problema é estrutural, não apenas operacional | Sintomas decorrem de modelagem frágil e baixa governança | Usar na introdução executiva e no diagnóstico. |
| Modelo deve conter apenas objetos necessários ao negócio | TE074 | §3.1.4 | Rejeitar tabelas/colunas artificiais sem regra de negócio | Evita desnormalização indevida e duplicação de dados | Usar na justificativa conceitual × físico. |
| Objetos físicos devem retratar conceito negocial e seguir nomenclatura padronizada | TE074 | §3.2.1 e Anexo II | Corrigir nomes para padrão corporativo, com prefixos de classe | DDL atual usa nomes genéricos e sem padrão CAIXA | Mostrar exemplos antes→depois. |
| Toda tabela e coluna deve ter comentário claro, não tautológico | TE074 | §3.2.2 | Incluir dicionário de dados e glossário como DoD | Reduz ambiguidade de status, canal, origem, prioridade | Usar no plano AD/DBA. |
| Tabelas >100M linhas/ano devem ter particionamento avaliado | TE074 | §3.2.8.3 | Particionar ATENDIMENTO, INTERACAO, TRANSACAO e HISTORICO | SIADL supera enormemente o gatilho | Transformar em ponto normativo central do diagnóstico. |
| Tabelas históricas/auxiliares de transacionais podem seguir mesmo particionamento | TE074 | §3.2.8.6 | Particionar TRANSACAO_HISTORICO alinhada à TRANSACAO | Histórico append-only com 10 bi e 30% a.m. | Justificar chave composta com data + id. |
| SQL Server deve registrar compactação `DATA_COMPRESSION (PAGE)` | TE074 | §3.2.9.1 | Aplicar PAGE, com exceção técnica por ABD quando necessário | Reduz I/O e uso de memória em 12 TB | Usar no modelo físico. |
| Não uso de compactação exige relatório técnico do ABD | TE074 | §3.2.9.3 | Inverter ônus: ausência de compressão precisa ser justificada | DDL atual não indica compressão | Usar como argumento de conformidade. |
| Dados online devem permanecer apenas pelo prazo necessário e suficiente | TE074 | §3.2.10.1 | Criar política quente/morno/frio e retenção por cenários | Evita crescimento vegetativo sem controle | Usar item (b). |
| Dados não necessários em transacionais devem migrar para históricas/auxiliares | TE074 | §3.2.10.1 | SWITCH/arquivo/expurgo por partição | Reduz scans e manutenção de tabelas críticas | Usar em roadmap e estratégia proativa. |
| Relacionamentos devem representar associações entre tabelas | TE074 | §3.2.11 | Trocar `ATENDIMENTO.canal VARCHAR` por FK para CANAL | Elimina inconsistência de domínio | Usar diagnóstico da DDL. |
| Validação do modelo é feita pela ADI e pré-validação é obrigatória | TE074 | §3.3 | Estruturar fluxo do modelo físico | Evita mudanças diretas sem governança | Usar plano de trabalho. |
| Validação inclui regras de negócio, integração, técnicas e normas | TE074 | §3.3.6 | Criar checklist DoR/DoD | Garante aderência à banca e CAIXA | Usar em item (a). |
| ADI valida modelo; ABD garante implementação e desempenho | TE074 | §3.3.7 e §4 | Separar fronteiras de atuação | Evita conflito entre squad, AD e DBA | Usar tabela de responsabilidades. |
| Modelos são geridos em repositório e ADI cria/valida modelos | TE073 | §3.2–3.5 | Sustentar modelo DES e repositório corporativo | Evita divergência entre DDL real e modelo | Usar em governança. |
| Processo de Qualificação de Dados busca melhoria contínua | TE169 | §1.1 e §3.1 | Criar ciclo para CLIENTE/ATENDIMENTO | Trata inconsistências com método formal | Usar em integridade e item (b). |
| Qualificação usa diagnóstico, planos de qualidade e monitoramento | TE169 | §4.1–4.4 | Definir plano de saneamento e indicadores | Evita retorno de erros após correção | Usar no roadmap. |
| Metadados possuem visão de negócio e técnica em repositório central | TE174 | §3.1.1–3.1.3 | Criar dicionário, glossário, linhagem | Permite análise de impacto antes de DDL | Usar em governança e segurança. |
| Classificação e segurança devem seguir tratamento da informação | OR016 | Norma principal e anexos | Classificar documento, hash, dados financeiros | LGPD/sigilo bancário | Usar em segurança. |
| Capítulo de Administração e Banco de Dados opera com AD e ABD | Portal do Capítulo | Página “Capítulo Administração e Banco de Dados” | Separar AD Time, AD Tático e ABD | Ajuda no item (a) da banca | Usar plano de atuação. |
| Particionamento por data permite partition elimination e manutenção granular | Guia Particionamento | Seções “Quando Particionar” e “Estratégias” | Partições mensais em tabelas massivas | Reduz scans, rebuilds e expurgo | Usar no modelo físico. |
| Sliding window por SPLIT/MERGE/SWITCH facilita arquivamento e expurgo | Guia Particionamento | Seção de manutenção | Implementar retenção sem DELETE massivo | Reduz janela de manutenção | Usar item (b). |
| Compressão PAGE pode reduzir 40–70% de espaço | Guia Compactação | Benefícios | Reduz I/O, backup e cache pressure | Mitiga memória e storage | Usar como evidência de benefício. |
| Índices covering, filtered e columnstore podem ser aplicados por perfil | Otimização de Tabelas | Seções de índices | Criar índices para extrato, atendimento aberto, limite vigente e partições frias | Reduz timeout e CPU | Usar modelo físico. |
| Criação/alteração de índices por desempenho e alterações físicas de armazenamento não passam por validação ADI | Guia DBA | Seção demandas ABD | Permite correção tempestiva pelo DBA | Ajuda resposta do item (b) | Usar sem expor caminhos/servidores. |
| Implantação deve envolver checklists, operações, projeção de desempenho e rollback | Boas práticas de implantação | Seções principais | Planejar janela reduzida, rollback e comunicação | Evita incidentes operacionais | Usar roadmap. |
| Dashboards de observabilidade apoiam operação | Modelo de Uso do Grafana | Guia de dashboard | Monitorar CPU, memória, waits, crescimento, timeouts | Sustentação proativa | Usar item (b). |

---

## 4. Requisitos da Produção Temática

| Item exigido pela PT | Tipo | O que precisa ser respondido | Evidência/material disponível | Fonte documental | Cobertura | Risco se mal atendido | Ação recomendada |
|---|---|---|---|---|---|---|---|
| Modelo conceitual ideal | Conceitual | Entidades, relacionamentos, cardinalidades, domínios, históricos, regras de negócio | Prompt de produção, TE074, guias de modelagem | Prompt-producao, TE074, Modelagem de Dados | Completo | Alto | Apresentar tabela entidade×classe×regras e Mermaid. |
| Aplicação dos conceitos da modelagem conceitual | Conceitual | Entidade forte/fraca, domínio, histórico, atributos, cardinalidade, normalização, especialização | Prompt P2; guias de modelagem | Prompt-producao, Melhores Práticas | Completo | Alto | Explicitar cada conceito aplicado ao SIADL. |
| Modelo físico ideal | Físico | DDL corrigida, tipos, PK, FK, índices, partição, compressão, segurança | TE074, Anexo II/IV, Particionamento, Compactação | TE074, guias | Completo | Alto | Usar pseudo-DDL cirúrgica das tabelas críticas. |
| Justificativa conceitual × físico | Técnico/gerencial | Explicar divergências legítimas por performance/manutenção | Prompt P3/P10/P12/P16 | Prompt-producao, TE074 | Completo | Alto | Tabela intervenção×divergência×salvaguarda. |
| Diagnóstico da DDL atual | Técnico | Identificar problemas plantados e impactos | Prompt lista 1–10; TE074 | Prompt-producao, TE074 | Completo | Alto | Fazer causa→impacto→solução. |
| Dados inconsistentes | Integridade/governança | TIMESTAMP errado, texto livre, status sem domínio, vigência | TE074, TE169 | TE074, TE169 | Completo | Alto | Vincular a PrQD/TE169 e constraints/domínios. |
| Lentidão, timeout, CPU, memória | Performance | Índices ausentes, scans, crescimento, compressão, estatísticas, Query Store | TE074, Otimização, Compactação | Guias e técnica SQL Server | Parcial/Completo | Alto | Complementar com conhecimento SQL Server. |
| Crescimento acelerado | Físico/sustentação | Projeção de linhas, particionamento, ciclo de vida | TE074 §3.2.8/3.2.10 | TE074, Particionamento, Expurgo | Completo | Alto | Mostrar projeção numérica. |
| Ambiente OLTP crítico | Arquitetura | Concorrência, RCSI, índices, disponibilidade, manutenção online | Guias + técnica SQL Server | Otimização, Boas práticas | Parcial | Médio/Alto | Marcar como complementação técnica. |
| SQL Server 2025 | Físico | Recursos de banco compatíveis com cenário | Prompt + técnica | Prompt-producao | Parcial | Médio | Evitar exagero de versão; usar recursos consolidados e validar no ambiente. |
| 12 TB de dados | Capacidade | Compressão, particionamento, filegroups, backup, ciclo de vida | TE074/Compactação/Particionamento | Guias | Completo | Alto | Relacionar a storage, I/O, backup e cache. |
| >10 mil usuários simultâneos | Performance/disponibilidade | RCSI, waits, índices, bloqueios, HA | Técnica SQL Server + Boas práticas | Guias | Parcial | Alto | Complementar com runbook e métricas. |
| 25 mil transações/min | Performance | hotspot, last-page insert, tempdb, waits, logs | Técnica SQL Server | Prompt-producao | Parcial | Alto | Justificar PK composta e OPTIMIZE_FOR_SEQUENTIAL_KEY tático. |
| Janela reduzida de manutenção | Operação | ONLINE/RESUMABLE, manutenção por partição, rollback | Particionamento, Boas práticas | Guias | Completo | Alto | Usar manutenção por partição e rolling window. |
| Fronteiras AD/DBA | Processo | O que é do AD e o que é do DBA | Portal Capítulo, TE074, TE073 | Portais, TE074, TE073 | Completo | Alto | Tabela de responsabilidades. |
| Dinâmica com desenvolvimento | Processo | DoR, DoD, refinamento, scripts, validação, homologação | Orientações, TE074 | Diversos/portais | Completo | Médio/Alto | Inserir ritos de squad. |
| Representante do Capítulo | Gerencial | Orquestrar AD Time, AD Tático, DBA, squad e governança | OR005, Portal Capítulo | OR005, Capítulo | Parcial/Completo | Médio | Usar tom de coordenador. |
| Estratégia proativa | Sustentação | Monitoramento, capacidade, índices, partições, estatísticas, qualidade | Guias e técnica | Particionamento, Compactação, Grafana | Completo | Alto | Amarrar a 5 dimensões. |
| Estratégia corretiva tempestiva | Sustentação | Runbook, DBA autônomo em índices/armazenamento, pós-mortem | Guia DBA, Boas práticas | Guia DBA | Completo | Alto | Criar fluxo incidente→correção→backlog. |
| Manutenção em desenho, arquitetura, performance, integridade, segurança, disponibilidade | Governança | Matriz de mecanismos por dimensão | TE074, TE169, TE174, OR016, Boas práticas | Corpus completo | Completo | Alto | Encerrar item (b) com matriz. |

---

## 5. Matriz de aderência entre enunciado e materiais de apoio

| Tema exigido na PT | Conceito CAIXA relacionado | Norma/guia de apoio | Evidência encontrada | Como deve aparecer na PT | Aderência | Lacunas |
|---|---|---|---|---|---|---|
| Modelagem conceitual | Arquitetura de Informação e técnica de modelagem | TE074 §3.1; guias de modelagem | Qualidade do modelo como condição para Arquitetura de Informação | Modelo ideal com entidades, relacionamentos e regras | Alta | Corpus tem mais ênfase no físico que no conceitual; complementar com teoria. |
| Modelo físico | Normas de objetos físicos, nomenclatura, datatypes | TE074 §3.2 e Anexos | Padronização, descrição, datatypes, chaves, índices | Pseudo-DDL com padrão CAIXA | Alta | Ajustar conflito entre guia por sufixo e TE074 por prefixo. |
| Particionamento | Avaliação ABD e gatilho >100M linhas/ano | TE074 §3.2.8; Particionamento.md | Critérios, data, filegroups, function/scheme, sliding window | Partições mensais em tabelas massivas | Alta | Política final de retenção depende do PO. |
| Compactação | `DATA_COMPRESSION(PAGE)` | TE074 §3.2.9; Compactação.md | Obrigatória para nova tabela; redução 40–70% no guia | PAGE por padrão, ROW/PAGE por temperatura se validado pelo ABD | Alta | Medida exata de ganho depende de teste. |
| Ciclo de vida | Retenção, histórico, auxiliar e expurgo | TE074 §3.2.10; Expurgo/Ciclo | Dados online apenas pelo necessário | Camadas quente/morno/frio, switch/archive/expurgo | Alta | Prazos precisam de gestor da informação. |
| Qualidade de dados | PrQD | TE169 | Diagnóstico, planos, homologação, ações preventivas/corretivas | Plano TE169 para CLIENTE/ATENDIMENTO | Alta | Regras de qualidade específicas dependem do negócio. |
| Metadados e linhagem | Repositório central, visão negócio/técnica | TE174 | Metadados de negócio e técnicos | Pré-requisito de análise de impacto antes de DDL | Alta | Ferramenta específica não deve ser exposta. |
| Segurança/classificação | Tratamento da informação | OR016, TE197, CR439 | Classificação e segurança da informação | Classificar documento, hash, dados financeiros; auditoria | Alta | Decisão de criptografia por campo depende de arquitetura de segurança. |
| Criticidade/disponibilidade | Sistema crítico e continuidade | OR213, Boas práticas | Criticidade e projeção de grande utilização | Sempre On/HA, RTO/RPO, rollback | Média | Valores formais RTO/RPO não fornecidos. |
| Atuação matricial | Capítulo, plataforma, squad | OR005, Portal Capítulo | AD Time, AD Tático, ABD | Plano de atuação com fronteiras e ritos | Alta | Nomes reais de unidades devem ser mantidos genéricos. |
| Observabilidade | Dashboards e implantação segura | Grafana, Boas práticas | Dashboards e comunicação operacional | Indicadores de banco, crescimento e incidentes | Média | Métricas específicas dependem do ambiente. |

---

## 6. Cobertura por tema

| Tema | Cobertura | Avaliação |
|---|---:|---|
| Modelagem conceitual | Média/Alta | O corpus traz guias de modelagem e o prompt exige profundidade. A base normativa é forte, mas conceitos como generalização/especialização e agregação exigem complementação técnica geral. |
| Modelagem física | Alta | TE074 é muito forte em objetos, nomenclatura, particionamento, compactação, ciclo de vida, datatypes, relacionamento, chave e índice. |
| SQL Server e performance | Média/Alta | Guias cobrem particionamento, compressão e índices; itens como RCSI, Query Store, waits, tempdb e Always On são complementação técnica. |
| ADs | Alta | TE073, TE074, orientações e portal do Capítulo sustentam validação, pré-validação, modelo DES, AD Time e AD Tático. |
| DBAs/ABD | Alta | TE074 e Guia DBA sustentam implementação física, desempenho, DDL, índices e exceções à validação ADI. |
| Governança | Alta | TE074, TE073, TE169, TE174, OR016 e OR005 cobrem governança do modelo, qualidade, metadados e papéis. |
| Segurança | Média/Alta | OR016, TE197 e LGPD são suficientes para classificar dados e exigir controles; escolha de mecanismo técnico exige complementação. |
| Integridade | Alta | TE074, TE169 e regras do prompt sustentam domínio, FK, checks, vigência e saneamento. |
| Disponibilidade | Média | Há boas práticas de implantação e criticidade; arquitetura HA/RTO/RPO precisa de complementação técnica. |
| Evolução de demandas | Alta | O corpus permite estruturar fluxo completo com AD/DBA/squad, pré-validação, laudo e correção tempestiva. |
| Sustentação e melhoria contínua | Alta | TE169, TE174, guias de observabilidade, particionamento, expurgo e implantação sustentam estratégia proativa/corretiva. |

---

## 7. Lacunas identificadas

| Lacuna | Por que o material é insuficiente | Impacto na PT | Material adicional recomendado | Prioridade |
|---|---|---|---|---|
| Política formal de retenção específica para atendimento/transação | TE074 diz que prazo deve vir do gestor, mas não fornece prazo para o SIADL | Sem prazo, a PT não pode fixar retenção definitiva | Norma de negócio do SIADL, tabela de temporalidade documental, requisitos legais/contábeis | Alta |
| Workload real de consultas críticas | Prompt informa sintomas e volumes, mas não traz queries, planos ou SLAs | Índices serão propostos por padrão de acesso presumido | Query Store, top queries, planos, waits, estatísticas, SLAs | Alta |
| RTO/RPO formais | Não há requisito formal de continuidade | Always On e backup serão propostos por criticidade inferida | Plano de continuidade, criticidade formal OR213, requisitos de disponibilidade | Média/Alta |
| Estratégia institucional específica para SQL Server 2025 | Corpus é mais normativo geral que versão específica | Recursos novos devem ser tratados com cautela | Caderno de arquitetura/versão suportada no ambiente CAIXA | Média |
| Regras de negócio detalhadas de estorno e status | Prompt fornece campos, não o ciclo de estados | CHECK e domínios dependem do negócio | Regras do produto/serviço, máquina de estados | Alta |
| Política de criptografia por campo | OR016/TE197 sustenta segurança, mas não define mecanismo por atributo | Pode haver escolha inadequada entre TDE, Always Encrypted e masking | Arquitetura de segurança e classificação formal de dados | Média |
| Modelo conceitual oficial do SIADL | Prompt traz entidades, mas não o modelo corporativo real | Diagrama final será idealizado | Documento de requisitos/casos de uso do SIADL | Média |
| Evidência operacional de CPU/memória | Sintomas são informados, mas sem métricas | Diagnóstico de performance será provável, não medido | PerfMon, DMVs, Grafana, waits, deadlocks | Média/Alta |

---

## 8. Organização lógica recomendada para a Produção Temática

| Seção | Objetivo | Conteúdo a usar | Fontes de apoio | Pontos obrigatórios atendidos | Observações |
|---|---|---|---|---|---|
| 1. Introdução executiva | Enquadrar problema e abordagem | Sintomas, criticidade, 4 eixos de solução | Prompt, TE074 §3.1 | Contexto e escopo | Não propor microsserviços/API. |
| 2. Diagnóstico técnico | Ligar DDL ruim aos sintomas | TIMESTAMP, canal textual, status livre, índices ausentes, sem partição/compressão | Prompt, TE074, guias | Diagnóstico, lentidão, inconsistência, crescimento | Usar tabela causa→impacto→solução. |
| 3. Modelo conceitual ideal | Demonstrar domínio de modelagem | Entidades fortes/dependentes/domínio/históricas, cardinalidades, regras | Prompt, TE074, guias | Entrega 1 | Incluir Mermaid e tabela-resumo. |
| 4. Modelo físico ideal | Propor arquitetura SQL Server | Datatypes, PK, FK, índices, partição, compressão, RCSI, segurança, HA | TE074, Particionamento, Compactação, Otimização | Entrega 2 | DDL mínimo das 4 tabelas críticas. |
| 5. Justificativas conceitual × físico | Defender divergências legítimas | Partição, PK composta, índices, histórico, compressão, temporal table | TE074, prompt P3/P10/P12 | Justificativa obrigatória | Incluir salvaguarda de integridade. |
| 6. Plano AD/DBA | Responder item (a) | Fronteiras, DoR/DoD, ritos, laudos, rollout | TE073, TE074, Portal Capítulo, Orientações | Entrega 3 | Tom de coordenador. |
| 7. Estratégia de evolução | Responder item (b) | Proativo/corretivo, monitoramento, runbook, TE169/TE174 | TE169, TE174, Particionamento, Grafana | Entrega 4 | Amarrar 5 dimensões. |
| 8. Roadmap | Mostrar viabilidade | Fases curto/médio/longo prazo, responsáveis, resultados | Boas práticas, Guia DBA | Diferencial gerencial | Evitar prometer mudança instantânea. |
| 9. Riscos e mitigadores | Demonstrar controle | Regressão, bloqueio, janela, dados, rollback | Boas práticas | Sustentação | Incluir rollback/backout. |
| 10. Conclusão | Fechar a tese | Síntese dos benefícios | Corpus todo | Coesão | Conectar sintomas às causas e solução. |

---

## 9. Avaliação final de suficiência

**Avaliação:** o material é **parcialmente suficiente para forte**, com suficiência alta nos temas normativos e de governança e necessidade de complementação técnica em detalhes avançados de SQL Server e operação real.

**Partes bem sustentadas:** modelagem física CAIXA, nomenclatura, validação de modelos, particionamento, compactação, ciclo de vida, papéis AD/ABD, governança por metadados, qualificação de dados, segurança/classificação e processo de implantação.

**Partes parcialmente sustentadas:** disponibilidade com RTO/RPO, desenho de índices por workload real, política de retenção específica, mecanismos de criptografia por campo, análise de waits e recursos específicos de SQL Server 2025.

**Partes frágeis ou sem sustentação explícita:** prazos exatos de retenção, regras de negócio de status/estorno, métricas reais de incidentes, plano formal de continuidade do SIADL, catálogo real de dados sensíveis do sistema.

**É possível redigir a versão final com o material atual?** Sim. A versão final deve declarar premissas, usar o normativo como base e separar claramente o que é norma, o que é guia e o que é inferência técnica. A redação deve evitar URLs internas, IPs, nomes de servidores e detalhes operacionais sensíveis.

---

## 10. Próximos passos recomendados

1. Redigir a PT com fluxo lógico: diagnóstico → conceitual → físico → AD/DBA → sustentação.
2. Usar TE074 como eixo central de conformidade, principalmente §3.2.8, §3.2.9 e §3.2.10.
3. Incorporar TE169 e TE174 no item (b) como governança de integridade e metadados, sem desviar do núcleo de arquitetura/performance.
4. Não fixar retenção única; apresentar cenários condicionados à decisão do gestor da informação/PO.
5. Usar pseudo-DDL mínimo, em padrão CAIXA, para demonstrar domínio sem transformar a PT em especificação completa.
6. Incluir Mermaid e arquivo auxiliar para reconstrução no Draw.io/PowerDesigner.
7. Encerrar com checklist de cobertura das quatro entregas oficiais e dos pontos técnicos críticos.
