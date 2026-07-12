# Arquivos Utilizados na Criação da Produção Temática — PSI 15358 (SIADL)

Lista de todos os arquivos consultados/utilizados na elaboração de `PT_SIADL_final.md`, organizados por finalidade.

---

## 1. Enunciado oficial (fonte primária)

| Arquivo                                                                                                    | Uso                                                                                                                                                 |
| ---------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `material-consulta\Formulario_de_orientacao_e_elaboracao_da_Producao_Tematica_PSI_Coordenador_Matriz.md` | Enunciado completo: contexto, arquitetura, entidades/volumetria, DDL atual, desafio do candidato (4 entregas), formato (PDF, 10 páginas, Arial 12) |

## 2. Prompt e apoio à construção

| Arquivo                               | Uso                                                                                                                        |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `prompts\prompt-producao-pt.md`     | Prompt final com as 23 premissas vinculantes (P1–P23), estrutura de saída e regras de uso do corpus                      |
| `perguntas-pt\perguntas-copilot.md` | 20 perguntas de assertividade + respostas do candidato + perguntas reformuladas (10, 12, 15, 16, 17) — base das premissas |

## 3. Normativos — `material-consulta\Arquivo\arquivos-md\normativos\`

| Arquivo                                                                                                      | Uso na PT                                                                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `TE074\TE074.md`                                                                                           | Itens 3.2.7 (tabela temporal), 3.2.8 (particionamento — gatilho 100 mi linhas/ano, extensão a HISTORICO), 3.2.9 (compressão PAGE default; exceção exige relatório do ABD), 3.2.6.1.2 (log) — base da auditoria de conformidade (§2) |
| `TE074\markdown_anexos\ANEXO II - NOMENCLATURA DE OBJETOS.md`                                              | Prefixos de classe (NU_, NO_, DT_, DH_, VR_, IC_, CO_, DE_, QT_...) usados na DDL proposta (§4.4) — fonte autoritativa de nomenclatura (P21)                                                                                              |
| `TE074\markdown_anexos\ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md`                                        | DATETIME2 como tipo correto para SQL Server; ROWVERSION não recomendado para datas — fundamenta o achado nº 1 do diagnóstico                                                                                                            |
| `TE074\markdown_anexos\ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md`                              | SLA por contagem de objetos — dimensionamento de prazos no plano AD/DBA (§6.2)                                                                                                                                                            |
| `TE074\markdown_anexos\ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md`                   | Checklist de validação do AD                                                                                                                                                                                                              |
| `TE073\TE073.md`                                                                                           | Gerência de modelos (modelo DES, PowerDesigner, nomenclatura de modelos, fases de validação) — fluxo 3 fases (§6.2)                                                                                                                    |
| `TE073\markdown_anexos\Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md` | Complemento do fluxo de validação                                                                                                                                                                                                         |
| `TE169\TE169.md`                                                                                           | Processo de qualificação de dados (ciclo definição→medição→análise→melhoria, AQD, papéis) — dimensão integridade do item (b) (§7.1)                                                                                           |
| `TE174\TE174.md`                                                                                           | Metadados, linhagem, análise de impacto "onde é usado" — pré-requisito de DDL estrutural (§7.1, risco nº 7)                                                                                                                           |
| `TE197\TE197.md`                                                                                           | Tabelas de log — tratamento de TRANSACAO_HISTORICO                                                                                                                                                                                         |
| `OR016\OR016.md`                                                                                           | Classificação da informação — dados sensíveis LGPD/sigilo (§2.2 achado 10, §4.1)                                                                                                                                                    |
| `OR213\OR213.md`                                                                                           | Avaliação de criticidade — SIADL como sistema crítico                                                                                                                                                                                   |
| `OR005221.md` (em `Arquivo\arquivos-md\`)                                                                | Estrutura organizacional — fronteiras capítulo × plataforma × squad (§6)                                                                                                                                                               |

## 4. Portal do Capítulo e orientações — `material-consulta\Arquivo\arquivos-md\`

| Arquivo                                                      | Uso na PT                                                                                                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `portais\Capítulo-Administração-e-Banco-de-Dados.md`    | Papéis AD Tático / AD Time / ABD — base das "duas frentes" do AD (§6.1, premissa P15); padrões (James Martin, 3FN, Privacy by Design) |
| `diversos\Orientacoes_Iniciais_Acionamento_Capitulo_v1.md` | Como squads acionam o capítulo — dinâmica do §6.2                                                                                      |
| `diversos\Orientacoes_Iniciais_Criterios_Validacao_v1.md`  | Critérios de validação do AD — Fase 2 do fluxo                                                                                         |
| `diversos\Orientacoes_Iniciais_CheckModel_v1.md`           | Pré-validação de modelos                                                                                                                |
| `diversos\Orientacoes_Iniciais_Dicionario_Dados_v1.md`     | Dicionário de dados obrigatório — DoD (§6.2)                                                                                           |
| `diversos\Orientacoes_Iniciais_Documentacao_AD_v1.md`      | Documentação do AD                                                                                                                       |

## 5. Guias do portal de dados (critérios PPDS) — `material-consulta\Portais\dados\markdown\`

| Arquivo                                                 | Uso na PT                                                                                                       |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `Particionamento.md`                                  | Particionar por tempo (ano/mês); validação do ABD; partition function por data — §4.2                      |
| `Compactação.md`                                    | PAGE obrigatória em tabelas novas; 40–70% de redução — §2.2 achado 5, §4.1                               |
| `Expurgo.md`                                          | Regras de expurgo/anonimização LGPD com jobs — §4.7                                                         |
| `Ciclo de Vida dos Dados.md`                          | Estágios ativo→histórico→arquivo→expurgo — cenários de retenção (§4.7)                                |
| `Otimização de Tabelas.md`                          | Consolidação dos critérios de otimização                                                                   |
| `Modelagem de Dados para Sistemas CAIXA.md`           | Workflow 3 fases, laudo, responsabilidades AD/ABD, SLA — §6 (com ressalva P21 sobre nomenclatura por sufixos) |
| `guia-caixa-dados-sql.md`                             | Sintaxe de temporal table (SYSTEM_VERSIONING), tipos SQL Server — §4.5                                        |
| `Melhores Práticas em Modelagem de Dados.md`         | DECIMAL para valores, DATETIME2, VARCHAR vs NVARCHAR — §4.1                                                   |
| `Microsoft SQL Server - Uso de Constraint Default.md` | Constraints DEFAULT nomeadas (DF_) — colunas de auditoria (§4.4)                                              |
| `Critérios para Validação de Modelos de Dados.md`  | Critérios da Fase 2                                                                                            |
| `Validações executadas no Pré-Validador.md`        | Pré-validação automática — §6.2                                                                           |
| `Nomenclatura_Objetos.md`                             | Apoio de nomenclatura (subordinado ao TE074/Anexo II)                                                           |

## 6. Guias de atuação do Capítulo — `material-consulta\GECPA10-...-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\`

| Arquivo                                                                                            | Uso na PT                                                                                                                                                                                                                                                |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ADB\Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ.md`                                              | **Exceções à validação ADI** (índices por desempenho, sequences, ajustes físicos) — autonomia formal do DBA no corretivo tempestivo (§6.1, §7.2 / P16-bis); fluxo de DDL e ambientes DES→TQS→HOM→PRD (usado sem citar IPs/servidores) |
| `ADI\GuiasArquiteturaDeDados\Arquitetura-de-Dados.md`                                            | Papéis e responsabilidades da arquitetura de dados                                                                                                                                                                                                      |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Criterios-para-Validacao-de-Modelos-de-Dados.md` | Critérios de validação (versão do capítulo)                                                                                                                                                                                                         |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Melhores-Praticas-em-Modelagem-de-Dados.md`      | Boas práticas de modelagem                                                                                                                                                                                                                              |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Modelagem-de-Dados-para-Sistemas-CAIXA.md`       | Workflow e responsabilidades (espelho do item 5)                                                                                                                                                                                                         |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Particionamen.md`          | Critérios de particionamento (espelho)                                                                                                                                                                                                                  |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Compactac.md`              | Critérios de compactação (espelho)                                                                                                                                                                                                                    |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Expurgo.md`                | Critérios de expurgo (espelho)                                                                                                                                                                                                                          |
| `ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Ciclo-de.md`               | Ciclo de vida (espelho)                                                                                                                                                                                                                                  |
| `Capitulo-de-Administracao-e-Banco-de-Dados.md`                                                  | Estrutura do capítulo                                                                                                                                                                                                                                   |

## 7. Guias de implantação e operação — `material-consulta\GUIAS\Implantacao\md\`

| Arquivo                                                 | Uso na PT                                                                                                                   |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `Boas práticas para implantações.md`               | 5 princípios (checklists, comunicação, operações, projeção de performance, preparação antecipada) — §6.2 e §7.1 |
| `Modelo de Uso do Grafana.md`                         | Grafana como padrão de dashboards/observabilidade — monitoramento do §7.1                                                |
| `Atividades e atores do contexto de implantação.md` | Atores e atividades de implantação — homologação técnica e DoD                                                        |

## 8. Arquivos gerados (produtos)

| Arquivo                                                 | Descrição                                                                                                          |
| ------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `agentes\claude-fable\PT_SIADL_final.md`              | Produção Temática final (11 seções)                                                                             |
| `agentes\claude-fable\anexos\diagramas-der-siadl.md`  | Especificação dos 3 diagramas (DER conceitual, topologia física, fluxo AD×DBA×Squad) para Draw.io/PowerDesigner |
| `agentes\claude-fable\auxiliar\PT_SIADL_resolucao.md` | Versão preliminar (base do prompt genérico anterior)                                                               |

---

**Caminho base:** `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\`
**Data de geração:** 11/07/2026

---

## 9. Tabela consolidada — caminho completo × descrição

| caminho_completo | descrição_resumida |
|---|---|
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Formulario_de_orientacao_e_elaboracao_da_Producao_Tematica_PSI_Coordenador_Matriz.md` | Enunciado oficial da PT (contexto, DDL, 4 entregas, formato) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\prompts\prompt-producao-pt.md` | Prompt final com 23 premissas vinculantes (P1–P23) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\perguntas-pt\perguntas-copilot.md` | 20 perguntas de assertividade + respostas do candidato |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\TE074.md` | Normativo de modelagem relacional (particionamento 3.2.8, compressão 3.2.9, temporal 3.2.7) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO II - NOMENCLATURA DE OBJETOS.md` | Prefixos de classe de atributos (NU_, DT_, DH_, VR_...) — fonte autoritativa |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md` | Datatypes por SGBD (DATETIME2 obrigatório no SQL Server) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md` | SLA de atendimento por contagem de objetos (UAM) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md` | Checklist de objetos para validação de modelo |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE073\TE073.md` | Gerência de modelos de dados (modelo DES, PowerDesigner, validação) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE073\markdown_anexos\Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md` | Guia rápido do fluxo de gerência de modelos |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE169\TE169.md` | Processo de qualificação de dados (ciclo qualidade, AQD) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\TE174.md` | Gerenciamento de metadados (linhagem, análise de impacto) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE197\TE197.md` | Tabelas de log (tratamento de históricos) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\OR016.md` | Tratamento/classificação da informação (LGPD, sigilo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR213\OR213.md` | Avaliação de criticidade de sistemas |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\OR005221.md` | Estrutura organizacional (capítulos × plataformas × squads) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Capítulo-Administração-e-Banco-de-Dados.md` | Portal do Capítulo (papéis AD Tático / AD Time / ABD) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Acionamento_Capitulo_v1.md` | Como squads acionam o Capítulo de Dados |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Criterios_Validacao_v1.md` | Critérios de validação de modelos pelo AD |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_CheckModel_v1.md` | Pré-validação de modelos (Check Model) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Dicionario_Dados_v1.md` | Dicionário de dados obrigatório |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Documentacao_AD_v1.md` | Documentação produzida pelo AD |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Particionamento.md` | Critérios PPDS de particionamento (por tempo, validação ABD) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Compactação.md` | Critérios PPDS de compactação (PAGE, 40–70% redução) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Expurgo.md` | Regras de expurgo/anonimização (LGPD, jobs) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Ciclo de Vida dos Dados.md` | Estágios do ciclo de vida (ativo→histórico→arquivo→expurgo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Otimização de Tabelas.md` | Consolidação dos critérios de otimização de tabelas |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Modelagem de Dados para Sistemas CAIXA.md` | Workflow 3 fases, laudo, responsabilidades AD/ABD, SLA |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\guia-caixa-dados-sql.md` | Guia SQL Server (temporal tables, tipos, constraints) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Melhores Práticas em Modelagem de Dados.md` | Boas práticas (DECIMAL, DATETIME2, VARCHAR) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Microsoft SQL Server - Uso de Constraint Default.md` | Constraints DEFAULT nomeadas (DF_) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Critérios para Validação de Modelos de Dados.md` | Critérios de validação (versão portal) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Validações executadas no Pré-Validador.md` | Validações automáticas do pré-validador |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Portais\dados\markdown\Nomenclatura_Objetos.md` | Nomenclatura de objetos (subordinada ao TE074/Anexo II) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADB\Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ.md` | Atuação do DBA multi-SGBD; exceções à validação ADI; fluxo DDL DES→TQS→HOM→PRD |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Arquitetura-de-Dados.md` | Papéis e responsabilidades da arquitetura de dados |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Criterios-para-Validacao-de-Modelos-de-Dados.md` | Critérios de validação (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Melhores-Praticas-em-Modelagem-de-Dados.md` | Boas práticas de modelagem (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Modelagem-de-Dados-para-Sistemas-CAIXA.md` | Workflow de modelagem (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Particionamen.md` | Critérios de particionamento (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Compactac.md` | Critérios de compactação (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Expurgo.md` | Critérios de expurgo (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\ADI\GuiasArquiteturaDeDados\Modelagem-de-dados\Otimizacao-de-Tabelas\Ciclo-de.md` | Ciclo de vida do dado (versão capítulo) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GECPA10-Capitulo-de-Administração-e-Banco-de-Dados-Arq-Unicos\GECPA10-DADOS-Modelagem-de-dados\Capitulo-de-Administracao-e-Banco-de-Dados.md` | Estrutura do Capítulo de Administração e Banco de Dados |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GUIAS\Implantacao\md\Boas práticas para implantações.md` | 5 princípios de implantação (checklists, rollback, projeção de performance) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GUIAS\Implantacao\md\Modelo de Uso do Grafana.md` | Grafana como padrão de dashboards/observabilidade |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\GUIAS\Implantacao\md\Atividades e atores do contexto de implantação.md` | Atores e atividades do processo de implantação |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\agentes\claude-fable\PT_SIADL_final.md` | **Produto:** Produção Temática final (11 seções) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\agentes\claude-fable\anexos\diagramas-der-siadl.md` | **Produto:** especificação dos 3 diagramas (Draw.io/PowerDesigner) |
| `F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\agentes\claude-fable\auxiliar\PT_SIADL_resolucao.md` | **Produto:** versão preliminar da resolução |
