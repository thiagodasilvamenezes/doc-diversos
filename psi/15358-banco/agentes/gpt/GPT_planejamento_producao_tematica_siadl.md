# Planejamento da Produção Temática — SIADL / PSI 15358 / GECPA

## Objetivo

Este documento apresenta um planejamento de cobertura para garantir que a Produção Temática do SIADL contemple todos os itens exigidos no enunciado, sem lacunas, com encadeamento técnico, gerencial e institucional.

A produção deve ser construída como um documento técnico-executivo, adequado a processo seletivo interno, com linguagem objetiva, coesa e compatível com o ambiente corporativo da CAIXA.

---

## 1. Estratégia geral da resposta

A Produção Temática deve ser organizada em três eixos integrados:

| Eixo | Objetivo na resposta |
|---|---|
| Técnico-conceitual | Demonstrar domínio de modelagem conceitual, entidades, relacionamentos, cardinalidades, regras de negócio, domínios e ciclo de vida dos dados. |
| Técnico-físico / SQL Server | Propor intervenções viáveis para ambiente OLTP crítico: tipos de dados corretos, índices, particionamento, compressão, arquivamento, estatísticas, isolamento, segurança e disponibilidade. |
| Gerencial / coordenação | Demonstrar atuação como coordenador técnico: organizar ADs, DBAs, squad, arquitetura, segurança, negócio e operação, com governança, ritos, riscos e roadmap. |

A resposta deve evitar parecer apenas uma lista de soluções. Cada ponto precisa seguir a lógica:

**Problema identificado → causa provável → impacto no SIADL → solução proposta → responsável / governança → resultado esperado.**

---

## 2. Orçamento de páginas sugerido

Como o documento final deve caber em até 10 páginas, a distribuição ideal seria:

| Seção | Peso sugerido | Tamanho aproximado |
|---|---:|---:|
| Título + Introdução executiva | Médio | 0,75 página |
| Diagnóstico técnico | Alto | 1,5 página |
| Modelo conceitual ideal | Alto | 1,25 página |
| Modelo físico ideal | Alto | 1,75 página |
| Justificativa das intervenções físicas | Médio | 0,75 página |
| Plano de atuação de ADs e DBAs | Alto | 1 página |
| Estratégia de evolução e sustentação | Alto | 1 página |
| Roadmap de implantação | Médio | 0,75 página |
| Riscos e mitigadores | Médio | 0,75 página |
| Conclusão | Baixo | 0,25 página |

Total estimado: **9,5 a 10 páginas**.

---

## 3. Matriz de rastreabilidade dos itens obrigatórios

| Item do enunciado | Onde deve aparecer | Conteúdo obrigatório para não deixar lacuna |
|---|---|---|
| 1. Introdução executiva | Início do documento | Contexto do SIADL, criticidade, sintomas, impacto negocial, abordagem combinando diagnóstico, correção estrutural, tuning físico, governança, segurança e continuidade. |
| 2. Diagnóstico técnico inicial | Seção “Diagnóstico técnico” | Volumetria, crescimento, concorrência, modelo conceitual/físico, integridade, tipos de dados, índices, particionamento, estatísticas, manutenção, histórico, governança, segurança e rastreabilidade. |
| 3. Modelo conceitual ideal | Seção própria + tabela | Entidades, relacionamentos, cardinalidades, atributos principais, entidades fortes/dependentes/domínio/históricas, ciclo de vida, separação entre dados mestres, transacionais, operacionais, históricos e domínio. |
| 4. Modelo físico ideal | Seção própria + pseudoddl | DATETIME2, ROWVERSION quando aplicável, PK, FK, constraints, índices, particionamento, compressão, arquivamento, dados quentes/mornos/frios, append-only, estatísticas, isolamento, segurança, auditoria e disponibilidade. |
| 5. Justificativa das intervenções físicas | Após modelo físico | Explicar diferenças entre modelo conceitual e físico: particionamento, histórico, arquivamento, índices redundantes, compressão, separação quente/frio, desnormalização controlada. |
| 6. Plano de trabalho ADs e DBAs | Seção gerencial | Fronteiras de atuação entre AD e DBA, dinâmica com squad, DoR, DoD, revisão de scripts, rollback, testes, homologação técnica, observabilidade, riscos e ritos. |
| 7. Estratégia de evolução das demandas | Seção de sustentação | Monitoramento contínuo, indicadores, waits, locks, deadlocks, timeouts, crescimento, índices, estatísticas, planos, capacidade, expurgo, histórico, baselines, comitê técnico e débitos técnicos. |
| 8. Roadmap de implantação | Tabela por fases | Fases 1 a 5: diagnóstico, ações emergenciais, revisão conceitual/lógica, reestruturação física, automação/governança/melhoria contínua. |
| 9. Riscos e mitigadores | Tabela de riscos | Indisponibilidade, regressão, inconsistência, falha de script, janela reduzida, crescimento, impacto em consumidores, desalinhamento AD/DBA/dev. |
| 10. Conclusão | Final | Reforçar solução integrada: modelo, banco, governança, AD/DBA, monitoramento, performance, integridade, segurança, disponibilidade e sustentabilidade. |

---

## 4. Planejamento detalhado por seção

## 4.1 Título

Usar um título institucional, direto e alinhado ao caso:

**Proposta Técnica e Gerencial para Reestruturação do Modelo de Dados e Otimização do Banco Relacional do SIADL**

Subtítulo sugerido:

**Produção Temática — PSI nº 15358 — Coordenador de Projetos/Processos Matriz — GECPA**

---

## 4.2 Introdução executiva

Objetivo da seção: abrir o texto com visão de coordenador técnico.

Deve conter obrigatoriamente:

| Ponto | Como abordar |
|---|---|
| Criticidade | SIADL como sistema corporativo OLTP crítico, milhões de clientes, 10 mil usuários simultâneos e 25 mil transações/minuto. |
| Sintomas | Dados inconsistentes, lentidão, timeout, CPU, memória, crescimento acelerado e incidentes. |
| Diagnóstico macro | Problemas ligados ao modelo de dados, desenho físico, ausência de particionamento, índices, histórico e governança. |
| Direcionamento | Combinar curto prazo, médio prazo e melhoria contínua. |
| Tom institucional | Proposta coordenada entre AD, DBA, desenvolvimento, arquitetura, segurança, negócio e operação. |

Frase-chave que deve aparecer:

> A solução não deve se limitar a ajustes pontuais de performance, mas tratar a causa estrutural: governança do modelo, integridade dos dados, desenho físico adequado ao volume e sustentação contínua do comportamento transacional.

---

## 4.3 Diagnóstico técnico

Esta é uma das seções mais importantes. Deve ser organizada por dimensão, não por tabela isolada.

| Dimensão | Diagnóstico esperado | Direcionamento de solução |
|---|---|---|
| Volumetria | TRANSACAO, TRANSACAO_HISTORICO, ATENDIMENTO e INTERACAO_ATENDIMENTO têm crescimento incompatível com modelo físico simples. | Particionamento, arquivamento, índices por padrão de acesso e separação quente/morno/frio. |
| Concorrência | 25 mil transações/minuto geram contenção, locks, waits, deadlocks e timeouts. | Índices seletivos, transações curtas, isolamento adequado, revisão de FK e plano de execução. |
| Modelo conceitual | Possível mistura de dados mestres, transacionais, históricos e domínios. | Reorganizar entidades por responsabilidade e ciclo de vida. |
| Modelo físico | Falta de particionamento, estratégia de índice e compressão. | Clustered index adequado, particionamento por data, nonclustered compostos e manutenção incremental. |
| Tipos de dados | Uso inadequado de TIMESTAMP para datas de negócio. | Substituir por DATETIME2; ROWVERSION apenas para controle de concorrência. |
| Integridade | Ausência ou fragilidade de PK, FK, UNIQUE, CHECK e domínios. | Reforçar integridade referencial e regras declarativas. |
| Históricos | TRANSACAO_HISTORICO é append-only e não deve ser tratado como tabela transacional comum. | Particionar, comprimir, limitar índices, arquivar e consultar por data/transação. |
| Estatísticas | Estatísticas desatualizadas prejudicam plano de execução. | Atualização controlada, incremental e monitorada. |
| Segurança | Dados financeiros e cadastrais exigem rastreabilidade e controle. | Privilégio mínimo, auditoria, trilha, mascaramento quando aplicável e segregação de acesso. |
| Governança | Mudanças sem avaliação prévia geram inconsistência e risco. | DoR, DoD, laudo técnico, versionamento, aprovação AD/DBA e rollback. |

---

## 4.4 Modelo conceitual ideal

Objetivo: mostrar que a solução não começa pelo índice, mas pelo significado correto dos dados.

A seção deve conter:

### Separação por natureza do dado

| Natureza | Entidades |
|---|---|
| Dados mestres | CLIENTE, CANAL |
| Dados transacionais | CONTA, TRANSACAO, ATENDIMENTO |
| Dados operacionais/de segurança | DISPOSITIVO_CLIENTE |
| Dados temporais | LIMITE_CONTA |
| Dados históricos | TRANSACAO_HISTORICO, INTERACAO_ATENDIMENTO |
| Dados de domínio | CANAL e possíveis domínios de tipo, situação, status e origem |

### Relacionamentos obrigatórios

| Relacionamento | Cardinalidade |
|---|---|
| CLIENTE → CONTA | 1:N |
| CLIENTE → ATENDIMENTO | 1:N |
| CLIENTE → DISPOSITIVO_CLIENTE | 1:N |
| CONTA → TRANSACAO | 1:N |
| CONTA → LIMITE_CONTA | 1:N |
| ATENDIMENTO → INTERACAO_ATENDIMENTO | 1:N |
| TRANSACAO → TRANSACAO_HISTORICO | 1:N |
| CANAL → TRANSACAO | 1:N |
| CANAL → ATENDIMENTO | 1:N |

A relação **CANAL → ATENDIMENTO** deve substituir o atributo textual “canal”, reduzindo inconsistência e fortalecendo o uso de domínio controlado.

### Tabela conceitual obrigatória

| Entidade | Natureza | Responsabilidade | Relacionamentos | Regras principais |
|---|---|---|---|---|
| CLIENTE | Mestre | Cadastro do cliente | 1:N CONTA, ATENDIMENTO, DISPOSITIVO | Deve ser único, estável e reutilizável. |
| CONTA | Transacional | Vínculo financeiro do cliente | N:1 CLIENTE, 1:N TRANSACAO, LIMITE | Alta cardinalidade, integridade obrigatória com CLIENTE. |
| ATENDIMENTO | Operacional | Solicitação, reclamação ou serviço | N:1 CLIENTE, N:1 CANAL, 1:N INTERACAO | Controla ciclo de vida do atendimento. |
| INTERACAO_ATENDIMENTO | Histórica operacional | Histórico granular | N:1 ATENDIMENTO | Preferencialmente append-only. |
| TRANSACAO | Transacional crítica | Operação financeira | N:1 CONTA, N:1 CANAL, 1:N HISTORICO | Alta concorrência e rastreabilidade. |
| TRANSACAO_HISTORICO | Histórica append-only | Alterações de estado | N:1 TRANSACAO | Não deve sofrer atualização ordinária. |
| CANAL | Domínio | Origem/canal da operação | 1:N TRANSACAO e ATENDIMENTO | Evita texto livre e inconsistência. |
| DISPOSITIVO_CLIENTE | Segurança | Dispositivos vinculados | N:1 CLIENTE | Apoia antifraude e rastreabilidade. |
| LIMITE_CONTA | Temporal | Limites por vigência | N:1 CONTA | Vigência sem sobreposição indevida. |

---

## 4.5 Modelo físico ideal

Objetivo: traduzir o modelo conceitual para uma estrutura SQL Server adequada ao volume.

Checklist obrigatório:

| Tema | Decisão planejada |
|---|---|
| Datas | Usar `DATETIME2(3)` ou `DATETIME2(7)` para datas de negócio. |
| TIMESTAMP | Não usar para data; no SQL Server, usar `ROWVERSION` apenas para concorrência otimista. |
| Chaves | PKs numéricas estáveis; FKs explícitas; UNIQUE para chaves negociais. |
| Constraints | `CHECK`, `NOT NULL`, domínio por FK e validação de vigência. |
| Índices | Clustered index alinhado ao acesso e particionamento; nonclustered compostos para consultas críticas. |
| Particionamento | Por data de negócio/criação nas tabelas massivas. |
| Append-only | TRANSACAO_HISTORICO e INTERACAO_ATENDIMENTO com poucos índices e compressão progressiva. |
| Compressão | Page compression para dados frios; avaliar row/page conforme uso. |
| Arquivamento | Estratégia quente, morna e fria. |
| Estatísticas | Atualização incremental e monitorada, principalmente em partições recentes. |
| Isolamento | Avaliar `READ_COMMITTED_SNAPSHOT`, reduzir bloqueios e manter consistência. |
| Segurança | Segregação de permissões, auditoria, mínimo privilégio e mascaramento quando aplicável. |
| Disponibilidade | Mudanças por fases, online quando possível, rollback e janela controlada. |

### Pseudoddl resumida

```sql
DT_CRIACAO DATETIME2(3) NOT NULL,
DT_ATUALIZACAO DATETIME2(3) NULL,
RV_CONTROLE ROWVERSION,
CONSTRAINT FK_TRANSACAO_CONTA FOREIGN KEY (...),
CONSTRAINT CK_TRANSACAO_VALOR CHECK (VR_TRANSACAO >= 0)
```

Para tabelas massivas, indicar:

```sql
PARTITION FUNCTION PF_TRANSACAO_DT (...)
PARTITION SCHEME PS_TRANSACAO_DT (...)
```

Para histórico:

```sql
TRANSACAO_HISTORICO
- append-only
- particionada por DT_EVENTO
- compressão em partições antigas
- índices mínimos por ID_TRANSACAO + DT_EVENTO
```

---

## 4.6 Justificativa das intervenções físicas

Esta seção deve deixar claro que o modelo físico pode se afastar do modelo conceitual sem alterar o significado negocial.

| Intervenção | Justificativa |
|---|---|
| Particionamento | Não muda o conceito de TRANSACAO; apenas organiza fisicamente para manutenção, expurgo, consulta e carga. |
| Histórico separado | Preserva rastreabilidade sem sobrecarregar tabela operacional. |
| Índices redundantes | Podem ser necessários para consultas críticas, desde que monitorados e justificados. |
| Compressão de dados frios | Reduz I/O e armazenamento em dados pouco alterados. |
| Separação quente/morno/frio | Permite manter OLTP rápido e histórico acessível. |
| Desnormalização controlada | Só aceitar quando comprovada por plano de execução, teste de carga e sem comprometer integridade. |
| Evitar desnormalização indevida | Em ambiente financeiro, integridade e rastreabilidade prevalecem sobre ganhos aparentes. |

---

## 4.7 Plano de atuação de ADs e DBAs

Esta seção deve demonstrar aderência institucional e clareza de fronteiras entre papéis.

| Papel | Responsabilidades na Produção Temática |
|---|---|
| AD / ADI | Modelo conceitual e lógico, entidades, atributos, domínios, nomenclatura, glossário, qualidade, significado, regras de negócio, linhagem, impacto negocial e apoio ao squad desde o refinamento. |
| DBA / ABD | Modelo físico, índices, particionamento, tuning, capacidade, backup/restore, alta disponibilidade, segurança, monitoramento, manutenção, execução controlada e validação de desempenho. |
| Squad | Implementar mudanças aderentes ao modelo aprovado, ajustar consultas, reduzir transações longas, participar de testes e corrigir causas aplicacionais. |
| Arquitetura | Garantir aderência à arquitetura corporativa, padrões técnicos e evolução sustentável. |
| Segurança | Validar controles de acesso, auditoria, LGPD, rastreabilidade e privilégio mínimo. |
| Operação | Acompanhar implantação, janelas, incidentes, rollback, monitoramento e sustentação. |
| Negócio | Validar significado dos dados, regras, impacto operacional e prioridades. |

### Dinâmica obrigatória

| Momento | Ação |
|---|---|
| Refinamento | AD e DBA participam antes da solução técnica ser fechada. |
| Definition of Ready | Demanda só entra se tiver impacto em dados mapeado, entidades afetadas, volumetria e riscos. |
| Desenvolvimento | Scripts versionados, revisão técnica, aderência ao modelo. |
| Homologação técnica | Teste funcional, integridade, carga, concorrência e plano de execução. |
| Definition of Done | Modelo atualizado, scripts aprovados, rollback, evidências, métricas e monitoramento. |
| Produção | Implantação controlada, observabilidade e acompanhamento pós-mudança. |

---

## 4.8 Estratégia de evolução e sustentação do banco

Objetivo: mostrar que a solução não termina na implantação.

| Frente | Indicadores / práticas |
|---|---|
| Performance | CPU, memória, I/O, waits, locks, deadlocks, timeouts, duração média, throughput. |
| Crescimento | Registros/dia, GB/mês, crescimento por tabela, projeção 6/12/24 meses. |
| Índices | Uso, fragmentação, duplicidade, custo de escrita, índices ausentes e obsoletos. |
| Estatísticas | Atualização incremental, amostragem adequada, foco em partições recentes. |
| Planos | Query Store, planos regressivos, parameter sniffing, consultas críticas. |
| Capacidade | Armazenamento, memória, tempdb, IOPS, crescimento de logs. |
| Histórico | Política de retenção, arquivamento, compressão e expurgo controlado. |
| Testes | Testes de carga, concorrência, regressão e comparação com baseline. |
| Governança | Comitê técnico periódico, backlog de débitos, critérios de priorização e aceite. |
| Incidentes | Atuação corretiva com causa raiz, plano de ação e prevenção de recorrência. |

---

## 4.9 Roadmap de implantação

| Fase | Objetivo | Ações principais | Responsáveis | Resultado esperado |
|---|---|---|---|---|
| 1. Diagnóstico e baseline | Entender causa raiz | Coletar volumetria, waits, CPU, I/O, planos, índices, locks, crescimento e incidentes | DBA, AD, operação, squad | Mapa de gargalos e riscos priorizados |
| 2. Correções emergenciais | Reduzir impacto operacional | Ajustar índices críticos, estatísticas, consultas, locks, jobs e parâmetros de manutenção | DBA, squad, operação | Redução de timeout e incidentes |
| 3. Revisão conceitual/lógica | Corrigir estrutura negocial | Revisar entidades, domínios, cardinalidades, dados históricos, canal e integridade | AD, negócio, arquitetura | Modelo validado e padronizado |
| 4. Reestruturação física | Adequar SQL Server ao volume | Particionamento, compressão, arquivamento, índices, constraints, isolamento e histórico | DBA, AD, squad, operação | Banco escalável e sustentável |
| 5. Automação e melhoria contínua | Sustentar evolução | Monitoramento, baselines, comitê técnico, indicadores, Check Model, revisão periódica | Coordenação, AD, DBA, operação | Governança contínua e prevenção de degradação |

---

## 4.10 Riscos e mitigadores

| Risco | Impacto | Mitigador |
|---|---|---|
| Indisponibilidade em produção | Paralisação de operações críticas | Janela controlada, execução faseada, rollback testado, mudança online quando possível. |
| Regressão de performance | Aumento de timeout e incidentes | Teste de carga, baseline, Query Store, homologação técnica. |
| Inconsistência de dados | Perda de confiabilidade | Constraints, FK, validação prévia, saneamento e trilha de auditoria. |
| Falha de script | Erro estrutural em produção | Revisão AD/DBA, versionamento, dry-run, rollback e segregação por ambiente. |
| Janela reduzida | Mudança incompleta ou arriscada | Estratégia incremental, particionamento planejado e priorização por impacto. |
| Crescimento acima do previsto | Saturação de storage, I/O e manutenção | Gestão de capacidade, projeção e arquivamento contínuo. |
| Impacto em sistemas consumidores | Quebra de consultas ou relatórios | Análise de impacto, comunicação e compatibilidade controlada. |
| Desalinhamento AD/DBA/dev | Soluções conflitantes | Ritos periódicos, DoR/DoD, parecer técnico e governança do capítulo. |
| Excesso de índices | Lentidão em escrita | Monitorar uso, custo de manutenção e eliminar redundâncias. |
| Expurgo indevido | Perda de histórico/auditoria | Política de retenção aprovada, arquivamento validado e trilha de execução. |

---

## 5. Checklist final de não omissão

Antes de redigir a versão final, validar se o texto responde “sim” para todos os itens abaixo:

| Checklist | Validação |
|---|---|
| Citou SIADL, PSI nº 15358, GECPA e papel de coordenador técnico? |  |
| Explicou os sintomas e a criticidade do ambiente OLTP? |  |
| Relacionou lentidão, timeout, CPU e memória com causas prováveis no banco? |  |
| Tratou volumetria e crescimento de todas as tabelas críticas? |  |
| Corrigiu o uso de TIMESTAMP para DATETIME2/ROWVERSION? |  |
| Propôs modelo conceitual com entidades, relacionamentos e cardinalidades? |  |
| Incluiu CANAL como domínio relacionado a TRANSACAO e ATENDIMENTO? |  |
| Separou dados mestres, transacionais, operacionais, históricos e domínio? |  |
| Propôs PK, FK, constraints, índices e particionamento? |  |
| Tratou TRANSACAO_HISTORICO como append-only? |  |
| Incluiu dados quentes, mornos e frios? |  |
| Incluiu compressão, arquivamento e expurgo controlado? |  |
| Incluiu estatísticas, manutenção e análise de planos? |  |
| Tratou isolamento transacional, locks, waits e deadlocks? |  |
| Incluiu segurança, auditoria e rastreabilidade? |  |
| Explicou por que o físico pode se afastar do conceitual? |  |
| Separou claramente papéis de AD e DBA? |  |
| Incluiu dinâmica com squad, arquitetura, segurança, negócio e operação? |  |
| Incluiu DoR, DoD, revisão de scripts, rollback e homologação técnica? |  |
| Incluiu estratégia preventiva e corretiva de evolução? |  |
| Incluiu roadmap por fases com objetivo, ações, responsáveis e resultados? |  |
| Incluiu riscos e mitigadores? |  |
| Concluiu reforçando modelo, performance, governança, AD/DBA e sustentabilidade? |  |
| Não propôs microsserviços ou APIs? |  |
| Manteve linguagem técnica, institucional e objetiva? |  |

---

## 6. Ordem recomendada para redigir a versão final

1. Escrever primeiro o diagnóstico, porque ele define a lógica das soluções.
2. Montar a tabela do modelo conceitual, garantindo que todos os relacionamentos obrigatórios apareçam.
3. Construir o modelo físico, limitando SQL ao essencial.
4. Redigir a justificativa conceitual x físico, para mostrar maturidade técnica.
5. Escrever plano AD/DBA e sustentação, reforçando visão de coordenação.
6. Fechar com roadmap, riscos e conclusão.
7. Fazer revisão final pelo checklist, item a item.

---

## 7. Observações para a redação final

- Manter linguagem técnica, mas compreensível para banca avaliadora.
- Evitar excesso de código SQL.
- Relacionar cada proposta aos sintomas do SIADL.
- Não propor mudança para microsserviços ou APIs, pois o enunciado informa que o SIADL não possui integração com APIs e microsserviços.
- Priorizar soluções viáveis para ambiente OLTP crítico, com 12 TB, alta concorrência e janela reduzida de manutenção.
- Demonstrar visão de coordenador técnico, articulando diagnóstico, solução, governança, riscos e sustentação.
