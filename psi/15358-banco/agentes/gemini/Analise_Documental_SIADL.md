# Análise Documental para Elaboração da Produção Temática — SIADL

## 1. Visão geral do material analisado
O material analisado abrange uma vasta gama de normativos e guias práticos da CAIXA, orientados à arquitetura, segurança e modelagem de dados. Os documentos cobrem desde regras rigorosas de nomenclatura (TE074) e classificação da informação (OR016), até as estratégias avançadas de particionamento físico no Microsoft SQL Server e os papéis bem definidos de Administração de Dados (AD Tático e Time) e Banco de Dados (ABD) no modelo ágil corporativo.

A qualidade do material é profunda e técnica, suficiente para fundamentar decisões arquiteturais em ambientes de missão crítica (OLTP, 12 TB, alta concorrência).

## 2. Inventário dos documentos

| Arquivo/Origem | Tipo | Tema Principal | Utilidade para a Produção Temática | Relevância |
|---|---|---|---|---|
| **TE074** | Normativo | Modelagem Relacional | Padrões de objetos físicos, compactação (PAGE), tipos de dados e particionamento de tabelas. | **Alta** |
| **Particionamento.md** | Guia PPDS | Particionamento no SQL Server | Código e fundamentos de particionamento (FileGroups, Range Right, Switch Partition). | **Alta** |
| **Capítulo AD/DBA** | Guia de Organização | Papéis e Fronteiras | Define o workflow entre AD Tático, AD Time, ABD e CEPIP na CAIXA. | **Alta** |
| **CR439 e OR016** | Normativo | LGPD e Sigilo | Sustentação das decisões de segurança, privacidade e classificação de dados sensíveis. | Média |
| **Guias Ferramentas** | Manuais | SIAGT, RTC e PowerDesigner | Aponta como é feito o fluxo de aprovação via SIAGT (pré-validador) e Dicionário de Dados. | Média |
| **CR121 / OR005** | Normativo | Cadastros e Estrutura | Informações sobre gestão de Produtos e organograma da CAIXA. | Baixa |

## 3. Conceitos e normas extraídos dos materiais

| Conceito Extraído | Documento Fonte | Aplicação na Produção Temática | Relação com SIADL |
|---|---|---|---|
| **Particionamento Range Right** | Particionamento.md / TE074 | Desenho físico para grandes tabelas de transação. | Soluciona o crescimento acelerado, otimizando I/O e manutenção em tabela grande (12 TB). |
| **Compressão de Dados (PAGE)** | TE074 (Item 3.2.9) | Definição padrão no script SQL de tabelas volumosas. | Reduz o consumo de CPU e RAM no SIADL. |
| **Papéis AD vs DBA** | Capítulo de AD | Modelagem do fluxo de trabalho de desenvolvimento. | Define como as mudanças no modelo do SIADL serão concebidas e implantadas nos ambientes (DES, TQS, HMP, PRD). |
| **Padrão Nomenclatura** | TE074 (Anexo II) | Nomenclatura do Modelo Físico ideal. | Padronizar atributos (ex: sufixos `_DT`, `_VL`, `_IC`). |
| **Expurgo via Switch Partition** | Particionamento.md | Proposta de crescimento vegetativo sustentável. | Arquivar dados antigos de forma instantânea, sem afetar o Lock do banco. |

## 4. Requisitos da Produção Temática

| Item Exigido | Tipo do Requisito | Evidência/Material de Apoio | Grau de Cobertura | Ação Recomendada |
|---|---|---|---|---|
| Diagnóstico de problemas | Técnico/Performance | Particionamento.md (tabelas grandes, I/O, Lock) | Parcial (inferência de DBA) | Justificar locks e full table scans causados por tabelas sem particionamento. |
| Modelo Conceitual e Físico | Conceitual/Físico | TE074 (Regras, Nomenclaturas) | Parcial (inferência negocial) | Criar entidades lógicas para Atendimento e Cliente, normatizadas em 3FN. |
| Justificativa de diferenças | Físico | TE074 (Tabelas de apoio, histórico, desempenho) | Completo | Justificar desnormalizações e criação de particionamento. |
| Estratégia SQL Server (12TB) | Físico/Tuning | Particionamento.md / TE074 | Completo | Aplicar particionamento, indexação alinhada, e Page Compression. |
| Interação AD e DBA | Governança | Capítulo de Administração / Acionamento | Completo | Descrever AD Time, AD Tático e ABD e o uso de SIAGT / RTC. |
| Manutenção / Crescimento | Sustentação | Particionamento (Split, Merge, Switch) | Completo | Especificar expurgo periódico por Switch Partition para arquivamento. |

## 5. Matriz de aderência entre enunciado e materiais de apoio

| Tema Exigido | Norma/Conceito de Apoio | Como aparecerá na PT | Grau de Aderência |
|---|---|---|---|
| **Estratégia OLTP 25k TPS** | Inferência Técnica (RCSI, Índices online) | Resolução de timeouts habilitando RCSI (Read Committed Snapshot Isolation) no SQL 2025. | **Média** (faltam guias específicos de tuning OLTP nos arquivos, necessita bagagem do candidato). |
| **Particionamento 12 TB** | TE074 e Guia PPDS de Particionamento | Aplicação prática com criação de FileGroups mensais e `Partition Scheme`. | **Alta** |
| **Fronteiras e Dinâmica AD/DBA** | Guias do Portal de Práticas e Acionamento | Workflow: AD Time desenha em DES; AD Tático pré-valida no SIAGT; ABD cria DDL em DES/TQS; CEPIP implanta em PRD. | **Alta** |
| **Governança e Nomenclatura** | TE074, OR016 | Uso de siglas padronizadas e dicionário de dados (PowerDesigner). | **Alta** |
| **Privacidade de Dados** | CR439 / Guia Privacy By Design | Citação ao tratamento de dados pessoais (Lei Geral de Proteção de Dados) no dicionário. | **Alta** |

## 6. Cobertura por tema

* **Modelagem Conceitual:** Normativos citam 3FN e James Martin. Boa base teórica, falta apenas o caso de negócio a ser inferido pelo candidato.
* **Modelagem Física:** Excelente cobertura via TE074 (nomenclaturas, domains permitidos) e Guia de Particionamento.
* **SQL Server e Performance:** Excelente base para particionamento. Necessário inferir outros tunings do SQL Server 2025 (como *Query Store* e *RCSI*).
* **ADs e DBAs:** Muito bem coberto. Divisão clara de papéis e uso de RTC, SIAGT e PowerDesigner.
* **Governança, Segurança, Integridade:** Bem suportado pela TE074 e normas LGPD (CR439). Uso de pré-validador obriga integridade do dicionário corporativo.
* **Sustentação e Evolução:** Tratado de forma exata pelo Guia de Particionamento (Switch Partition para expurgo rápido) e controle de demanda RTC.

## 7. Lacunas identificadas

| Tema/Requisito | Por que é insuficiente | Recomendação de Abordagem Técnica | Prioridade |
|---|---|---|---|
| **Tuning Fino (RCSI, Query Store, Wait Stats)** | Documentos abordam apenas particionamento físico, sem focar em *engine tuning* do SQL 2025. | O candidato deve inferir configurações a nível de banco (RCSI) e uso de métricas DMVs baseadas em sua experiência sênior. | Alta |
| **Estrutura de Entidades SIADL** | O caso omite a estrutura completa atual do banco (dá apenas "Cliente"). | Criar um modelo hipotético realista e robusto de Atendimento Digital (Entidades: Atendimento, Transacao, Status). | Alta |

## 8. Organização lógica recomendada para a Produção Temática

A redação da PT deverá seguir o seguinte fluxo estruturado para impressionar a banca:
1.  **Visão Executiva e Diagnóstico:** Identificação clara das dores (Bloqueios, I/O, Ausência de Expurgo).
2.  **Arquitetura de Solução Físico/Conceitual:** Apresentação da modelagem, desnormalização controlada, tipos padronizados (TE074).
3.  **Tuning e Performance em Alta Concorrência:** Exploração do Microsoft SQL Server 2025 (Particionamento Mensal, Compressão de Páginas, RCSI).
4.  **Gestão de Mudanças e Estratégia AD/DBA:** Utilizando o workflow corporativo (PowerDesigner -> SIAGT -> RTC -> AD Tático -> ABD -> CEPIP).
5.  **Políticas de Retenção e Crescimento Vegetativo:** Expurgo técnico moderno usando metadados (`SWITCH PARTITION`).

## 9. Avaliação final de suficiência
Os materiais analisados são **Suficientes e Estratégicos** para responder mais de 80% das exigências da Produção Temática focada nos padrões corporativos (fluxos e nomenclaturas). As seções ligadas especificamente ao tuning de engine relacional (timeout, CPU) dependem de inferência direta do candidato (experiência em SQL Server), sendo perfeitamente viável formular uma solução vencedora através da junção dos normativos com a expertise prévia exigida no edital.

## 10. Próximos passos recomendados
1. Iniciar a redação da **Produção Temática Final**.
2. Criar uma simulação de tabelas do contexto "Atendimento Digital" que respeitem o Anexo II e IV do TE074.
3. Formular scripts pontuais demonstrativos de Particionamento e Compressão no formato SQL Server 2025.
