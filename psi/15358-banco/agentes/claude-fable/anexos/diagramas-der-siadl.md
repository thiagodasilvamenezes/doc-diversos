# ANEXO — Especificação dos Diagramas do SIADL (para construção no Draw.io ou PowerDesigner)

Este anexo descreve integralmente os diagramas referenciados na PT, com todas as informações necessárias para construção visual na ferramenta de preferência (Draw.io ou SAP PowerDesigner).

---

## Diagrama 1 — Modelo Conceitual Proposto (DER)

**Notação:** James Martin (pé-de-galinha). **Idioma:** português, entidades no singular.

### Entidades e atributos principais

| Entidade | Tipo visual | Atributos a exibir |
|---|---|---|
| CLIENTE | Retângulo (forte) — superentidade | número do cliente (ID), nome, número do documento (único), tipo de pessoa, situação (domínio), segmento (domínio), data/hora de cadastro |
| PESSOA_FISICA | Subentidade (triângulo/seta de especialização para CLIENTE) | data de nascimento, sexo |
| PESSOA_JURIDICA | Subentidade | natureza jurídica, data de constituição |
| CONTA | Retângulo (forte) | número da conta (ID), número (único), tipo (domínio), situação (domínio), data de abertura |
| ATENDIMENTO | Retângulo | número do atendimento (ID), data/hora de abertura, data/hora de fechamento (opcional), situação (domínio), prioridade (domínio) |
| INTERACAO_ATENDIMENTO | Retângulo de cantos duplos (fraca) | número da interação (ID), tipo (domínio), data/hora, origem (domínio), conteúdo resumido |
| TRANSACAO | Retângulo | número da transação (ID), data/hora, valor, tipo (domínio), situação corrente (domínio) |
| TRANSACAO_HISTORICO | Retângulo de cantos duplos (fraca, histórica) | número do evento (ID), data/hora do evento, situação anterior, situação nova, origem do evento |
| LIMITE_CONTA | Retângulo (dependente, temporal) | número do limite (ID), tipo de limite (domínio), valor, data início vigência, data fim vigência (opcional) |
| DISPOSITIVO_CLIENTE | Retângulo (dependente) | número do dispositivo (ID), tipo, sistema operacional, identificador técnico (único), data do vínculo, situação |
| CANAL | Retângulo pequeno (domínio) | número do canal (ID), nome, tipo, situação |
| Demais domínios (TIPO_TRANSACAO, SITUACAO_TRANSACAO, TIPO/SITUACAO_ATENDIMENTO, PRIORIDADE, TIPO_LIMITE) | Retângulos pequenos agrupados na borda do diagrama | código (ID), nome |

### Relacionamentos (com cardinalidade e verbo)

| De | Para | Cardinalidade | Verbo | Observação |
|---|---|---|---|---|
| CLIENTE | CONTA | 1:N (0..N) | possui | |
| CLIENTE | ATENDIMENTO | 1:N (0..N) | abre | |
| CLIENTE | DISPOSITIVO_CLIENTE | 1:N (0..N) | vincula | |
| CLIENTE | PESSOA_FISICA / PESSOA_JURIDICA | especialização **total e exclusiva** | é especializado em | Exibir com triângulo de generalização; anotar {total, exclusiva} |
| CONTA | TRANSACAO | 1:N (0..N) | realiza | |
| CONTA | LIMITE_CONTA | 1:N (1..N) | recebe | Regra anotada: vigências não sobrepostas por tipo; máx. 1 vigente |
| ATENDIMENTO | INTERACAO_ATENDIMENTO | 1:N (1..N) | é detalhado por | Relacionamento identificador (entidade fraca) |
| CANAL | ATENDIMENTO | 1:N (0..N) | origina | **Novo** — substitui atributo textual |
| CANAL | TRANSACAO | 1:N (0..N) | origina | |
| TRANSACAO | TRANSACAO_HISTORICO | 1:N (1..N) | gera | Relacionamento identificador; anotar {append-only} |
| Domínios | Transacionais correspondentes | 1:N | classifica/qualifica | |

### Instruções de construção

1. **Draw.io:** usar a shape library "Entity Relation"; entidades fortes com borda simples, fracas com borda dupla; especialização com triângulo rotulado "é um"; cardinalidades na notação pé-de-galinha (traço = 1, círculo = 0, pé-de-galinha = N); anotações de regra em retângulos tracejados ligados por linha pontilhada.
2. **PowerDesigner:** criar CDM (Conceptual Data Model); entidades e herança (Inheritance) para CLIENTE→PF/PJ marcando *complete* e *mutually exclusive*; relacionamentos com verbos nas duas direções (voz ativa/passiva); domínios como entidades com estereótipo `<<domínio>>`; validar com Check Model antes de gerar o LDM/PDM.
3. **Layout sugerido:** CLIENTE ao centro-esquerda; CONTA abaixo; cadeia ATENDIMENTO→INTERACAO à direita; cadeia TRANSACAO→HISTORICO abaixo de CONTA; CANAL e domínios na borda direita; PF/PJ acima de CLIENTE.
4. **Não incluir** o relacionamento direto CLIENTE→INTERACAO_ATENDIMENTO (removido por redundância transitiva — decisão registrada na PT, seção 3.2).

---

## Diagrama 2 — Topologia Física das Tabelas Massivas (opcional, seção 4 da PT)

Diagrama de blocos mostrando:

- **Eixo horizontal:** linha do tempo em partições mensais (`PF_MENSAL`);
- **Camadas:** partições quentes (0–3 meses, compressão ROW, filegroup FG_DADOS) → mornas (PAGE) → frias (PAGE, FG_HIST) → seta de `SWITCH OUT` para "Arquivo" → seta para "Expurgo/Anonimização (LGPD)" com cadeado;
- **Quatro faixas** (uma por tabela): SDL_TRANSACAO, SDL_TRANSACAO_HISTORICO, SDL_ATENDIMENTO, SDL_INTERACAO_ATENDIMENTO;
- **Anotações:** "índices alinhados à partição", "rolling window mensal: SPLIT futuro / SWITCH+MERGE passado", "manutenção ONLINE por partição".

**Draw.io:** shapes retangulares coloridas por temperatura (vermelho/amarelo/azul/cinza) com setas de fluxo; legenda de cores obrigatória.

---

## Diagrama 3 — Fluxo de trabalho AD × DBA × Squad (seção 6 da PT)

Raia (swimlane) com 3 pistas — Squad, AD, DBA — e o fluxo: Refinamento (DoR) → Modelagem conjunta → Pré-validação → Validação/Laudo → Projeto físico → Revisão de scripts → Homologação com baseline → Implantação (DoD) → Observabilidade 72h → Ritos periódicos/comitê.

**Draw.io:** template "Cross-Functional Flowchart"; decisões (laudo aprovado?) como losangos; loop de retorno ao squad em caso de adequações.
