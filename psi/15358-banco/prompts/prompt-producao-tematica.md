Atue como especialista sênior em Administração de Dados, Administração de Banco de Dados, modelagem de dados corporativa, arquitetura de banco de dados SQL Server, performance OLTP, governança técnica e coordenação de times em ambiente corporativo financeiro.

Sua tarefa é elaborar a resolução completa de uma Produção Temática para processo seletivo interno, com linguagem técnica, objetiva, coesa, institucional e adequada ao ambiente corporativo da CAIXA.

Contexto da Produção Temática

A Produção Temática refere-se ao PSI nº 15358, para a função de Coordenador de Projetos/Processos Matriz, unidade GECPA.

O tema é: Estudo de Caso do Sistema de Atendimento Digital — SIADL.

O SIADL é um sistema corporativo de atendimento digital de uma instituição financeira, utilizado por milhões de clientes diariamente. Nos últimos meses, passou a apresentar:

Dados inconsistentes;
Lentidão generalizada da aplicação;
Timeout em operações críticas;
Crescimento acelerado de tabelas transacionais;
Aumento de incidentes operacionais;
Picos de CPU;
Consumo excessivo de memória.

A diretoria identificou que os principais problemas estão relacionados ao ambiente de banco de dados relacional do SIADL.

O candidato atuará como coordenador técnico responsável por diagnosticar os problemas e propor soluções estruturais nos modelos de dados conceitual e físico.

Arquitetura atual

Considere as seguintes características do SIADL:

Banco de dados relacional corporativo Microsoft SQL Server 2025;
Ambiente OLTP crítico;
Aproximadamente 12 TB de dados;
Mais de 10 mil usuários simultâneos;
Processamento médio de 25 mil transações por minuto;
Não possui integração com APIs e microsserviços;
Janela reduzida para manutenção.
Objetos atuais do SIADL

Considere as seguintes entidades e características:

CLIENTE
Entidade central de dados cadastrais. Volume de aproximadamente 100 milhões de registros, crescimento anual de 10%, baixa taxa de alteração e alto volume de consultas e junções.
CONTA
Contas vinculadas a clientes. Volume de aproximadamente 500 milhões de registros, crescimento anual de 20%, alta cardinalidade por cliente e forte dependência transacional.
ATENDIMENTO
Registra solicitações, reclamações e serviços. Volume de aproximadamente 800 milhões de registros, crescimento de 20% ao mês, alta taxa de inserção e atualização.
INTERACAO_ATENDIMENTO
Histórico granular das interações de atendimento. Volume de aproximadamente 1 bilhão de registros, crescimento de 20% ao mês.
TRANSACAO
Operações financeiras das contas. Volume de aproximadamente 4 bilhões de registros, crescimento de 30% ao mês, alta concorrência e criticidade OLTP.
CANAL
Tabela de domínio com aproximadamente 10 registros.
DISPOSITIVO_CLIENTE
Dispositivos vinculados aos clientes. Volume de aproximadamente 150 milhões de registros, crescimento anual de 10%, uso em segurança e antifraude.
LIMITE_CONTA
Limites operacionais por conta, com vigência temporal. Volume de aproximadamente 1 bilhão de registros, crescimento anual de 20%.
TRANSACAO_HISTORICO
Histórico de alterações de estado das transações. Volume de aproximadamente 10 bilhões de registros, crescimento de 30% ao mês, append-only e baixa atualização.
DDL atual

Considere que a DDL atual possui problemas técnicos e deve ser analisada criticamente, especialmente quanto a:

Uso inadequado do tipo TIMESTAMP no SQL Server para datas de negócio;
Possível ausência de padronização entre atributos, domínios e relacionamentos;
Falta de particionamento para tabelas massivas;
Ausência de estratégia explícita de índices;
Necessidade de tratamento de dados históricos e append-only;
Possível necessidade de normalização, domínios, regras de integridade, chaves estrangeiras, restrições e auditoria;
Riscos de performance em ambiente OLTP de altíssima concorrência;
Riscos de manutenção com janela reduzida;
Crescimento acelerado das tabelas TRANSACAO, TRANSACAO_HISTORICO, ATENDIMENTO e INTERACAO_ATENDIMENTO.
Objetivo da resposta

Elabore uma proposta técnica e gerencial completa, estruturada como um documento técnico de até 10 páginas, em linguagem adequada para banca avaliadora, contemplando obrigatoriamente:

1. Introdução executiva

Apresente o contexto, os sintomas, a criticidade do SIADL e a abordagem proposta para tratar os problemas de dados, performance, integridade, segurança, disponibilidade e governança.

2. Diagnóstico técnico inicial

Analise os principais problemas prováveis do modelo atual, considerando:

Volumetria;
Crescimento vegetativo;
Concorrência;
Modelo conceitual;
Modelo físico;
Integridade referencial;
Tipos de dados;
Índices;
Particionamento;
Estatísticas;
Manutenção;
Dados históricos;
Governança de mudanças;
Segurança e rastreabilidade.

Não se limite a listar problemas. Explique causa, impacto e direcionamento de solução.

3. Modelo de dados conceitual ideal

Apresente o modelo conceitual ideal do SIADL, aplicando conceitos de modelagem conceitual:

Entidades;
Relacionamentos;
Cardinalidades;
Atributos principais;
Regras de negócio;
Entidades fortes e dependentes;
Entidades de domínio;
Entidades históricas;
Ciclo de vida das entidades;
Separação entre dados mestres, transacionais, operacionais, históricos e de domínio.

Explique textualmente o modelo conceitual e apresente uma tabela com as entidades, responsabilidades, cardinalidades e principais regras.

Considere, por exemplo:

CLIENTE 1 CONTA;
CLIENTE 1 ATENDIMENTO;
CLIENTE 1 DISPOSITIVO_CLIENTE;
CONTA 1 TRANSACAO;
CONTA 1 LIMITE_CONTA;
ATENDIMENTO 1 INTERACAO_ATENDIMENTO;
TRANSACAO 1 TRANSACAO_HISTORICO;
CANAL 1 TRANSACAO;
Avaliar a necessidade de CANAL também se relacionar com ATENDIMENTO, substituindo o atributo textual “canal” por chave de domínio.
4. Modelo físico ideal

Proponha um modelo físico adequado para SQL Server 2025 em ambiente OLTP crítico, considerando:

Tipos de dados corretos;
Uso de DATETIME2 em vez de TIMESTAMP para datas de negócio;
Uso de ROWVERSION apenas quando houver necessidade de controle de concorrência;
Chaves primárias;
Chaves estrangeiras;
Constraints;
Índices clustered e nonclustered;
Índices compostos;
Índices filtrados quando aplicável;
Particionamento por data nas tabelas massivas;
Compressão;
Arquivamento;
Estratégia para dados quentes, mornos e frios;
Estratégia para tabelas append-only;
Estatísticas e manutenção;
Isolamento transacional;
Segurança;
Auditoria;
Disponibilidade.

Apresente uma proposta de DDL ou pseudoddl resumida para as principais tabelas, destacando as alterações mais relevantes.

5. Justificativa das intervenções entre modelo conceitual e físico

Explique quando o modelo físico precisa se afastar do modelo conceitual por razões de performance, escalabilidade, manutenção ou disponibilidade.

Justifique, por exemplo:

Particionamento físico de tabelas transacionais sem alterar o conceito negocial;
Criação de tabelas históricas e políticas de arquivamento;
Índices redundantes fisicamente necessários para consultas críticas;
Separação entre dados quentes e históricos;
Uso de compressão para dados frios;
Desnormalizações controladas, se realmente necessárias, sempre justificadas;
Evitar desnormalização indevida que comprometa integridade.
6. Plano de trabalho para atuação de ADs e DBAs

Elabore um plano de trabalho gerencial para atuação do Capítulo de Administração e Banco de Dados dentro da plataforma de desenvolvimento.

Explique claramente as fronteiras de atuação:

Administradores de Dados — ADs

Responsáveis por:

Modelo conceitual e lógico;
Padronização de entidades, atributos, domínios e nomenclaturas;
Qualidade e significado dos dados;
Regras de negócio;
Governança de dados;
Linhagem, catálogo e glossário;
Avaliação de impactos negociais;
Apoio aos squads desde o refinamento das demandas.
Administradores de Banco de Dados — DBAs

Responsáveis por:

Modelo físico;
Performance;
Índices;
Particionamento;
Capacidade;
Backup e restore;
Alta disponibilidade;
Segurança física e lógica do banco;
Monitoramento;
Tuning;
Estratégia de manutenção;
Execução controlada de mudanças em produção.
Dinâmica com o squad

Descreva como ADs, DBAs, desenvolvedores, arquitetura, segurança, negócio e operação devem interagir:

Participação no refinamento;
Avaliação prévia de impacto;
Definition of Ready para demandas com impacto em dados;
Definition of Done para mudanças de banco;
Revisão de scripts;
Plano de rollback;
Testes de performance;
Homologação técnica;
Observabilidade;
Gestão de riscos;
Ritos periódicos de acompanhamento.
7. Estratégia de evolução das demandas de banco de dados

Elabore uma estratégia proativa e corretiva para manter o banco adequado ao comportamento atual da solução.

A estratégia deve contemplar:

Monitoramento contínuo de performance;
Indicadores de crescimento das tabelas;
Indicadores de CPU, memória, I/O, locks, waits, deadlocks e timeouts;
Revisão periódica de índices;
Atualização de estatísticas;
Análise de planos de execução;
Gestão de capacidade;
Estratégia de particionamento;
Expurgo e arquivamento controlado;
Gestão de dados históricos;
Testes de carga;
Baselines de performance;
Comitê técnico de evolução do modelo;
Priorização de débitos técnicos;
Processo de mudança controlada;
Atuação preventiva antes da degradação;
Atuação corretiva tempestiva em incidentes.
8. Roadmap de implantação

Monte um roadmap em fases, por exemplo:

Fase 1: diagnóstico, baselines, identificação de gargalos e riscos;
Fase 2: correções emergenciais de maior impacto e baixo risco;
Fase 3: revisão de modelo conceitual e lógico;
Fase 4: reestruturação física, particionamento, índices e histórico;
Fase 5: automação, monitoramento, governança e melhoria contínua.

Para cada fase, informe objetivo, principais ações, responsáveis e resultados esperados.

9. Riscos e mitigadores

Inclua uma tabela de riscos com mitigadores, considerando:

Indisponibilidade;
Regressão de performance;
Inconsistência de dados;
Falhas de scripts;
Janela reduzida de manutenção;
Crescimento acima do previsto;
Impacto em sistemas consumidores;
Falta de alinhamento entre AD, DBA e desenvolvimento.
10. Conclusão

Finalize com uma conclusão executiva, reforçando que a solução proposta combina:

Correção estrutural do modelo;
Otimização física do banco;
Governança de dados;
Atuação coordenada de ADs e DBAs;
Monitoramento contínuo;
Melhoria de performance, integridade, segurança e disponibilidade;
Sustentabilidade da evolução do SIADL.
Diretrizes de qualidade da resposta

A resposta deve:

Ser técnica, mas compreensível para banca avaliadora;
Ter tom de coordenador técnico;
Não ser genérica;
Relacionar cada proposta aos problemas do SIADL;
Demonstrar visão conceitual, física e gerencial;
Evitar excesso de código SQL;
Usar tabelas para organizar o raciocínio;
Ter encadeamento lógico;
Ser adequada a um documento técnico em PDF de até 10 páginas;
Não fugir do enunciado;
Não propor mudança para microsserviços ou APIs, pois o enunciado informa que o SIADL não possui integração com APIs e microsserviços;
Priorizar soluções viáveis para ambiente OLTP crítico, com 12 TB, alta concorrência e janela reduzida de manutenção.
Formato de saída desejado

Gere a resposta final com a seguinte estrutura:

Título
Introdução executiva
Diagnóstico técnico
Modelo conceitual ideal
Modelo físico ideal
Justificativa das intervenções físicas
Plano de atuação de ADs e DBAs
Estratégia de evolução e sustentação do banco
Roadmap de implantação
Riscos e mitigadores
Conclusão

A resposta deve estar pronta para ser utilizada como base da Produção Temática final.

Caso prescise de salvar arquivos e ou organizar salvar em F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\agentes\claude-fable\auxiliar

faça um planejamento para que todos os pontos sejam contemplados e não pule nada

Arquivos para consulta materiais:
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\all\diversos-banco-dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\all\normativos-banco-de-dados-all.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\all\portais-banco-dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Acesso_Repositorio_Dados_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Acionamento_Capitulo_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_CheckModel_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Como_realizar_Check_In_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_ConfiguracaoFerramenta_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Consulta_Responsabilizacao_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Criterios_Validacao_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Dicionario_Dados_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Documentacao_AD_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\Orientacoes_Iniciais_Engenharia_Reversa_v1.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\diversos\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\CR121\CR121.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\CR121\markdown_anexos\ANEXO I - Guia Rapido SIICO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\CR121\markdown_anexos\ANEXO II - Categorias de Segmento Operacional Subsegmento Operacional e Operacao.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\CR121\markdown_anexos\ANEXO III - Categorias de Atributos dos Produtos.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\CR439\CR439_com_anexos.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo I - Guia Rapido - Tratamento da Informacao.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo II - Principais Hipoteses de Sigilo e Embasamento Legal.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo III - Modelo Termo de Compromisso de Manutencao de Sigilo - TCMS.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo IV - Check List para Classificar a Informacao CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo VI - Tabela de Equivalencia - Classificacao Extinta X Classificacao Vigente.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\markdown_anexos\Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR016\OR016.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR213\markdown_anexos\ANEXO I_Guia rapido Avaliacao de criticidade.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\OR213\OR213.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE060\TE060.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE073\markdown_anexos\Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE073\TE073.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO I - Guia Rapido - Modelagem de dados relacional para sistemas e aplicativos de negocio CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO II - NOMENCLATURA DE OBJETOS.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\markdown_anexos\ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE074\TE074.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO I - GUIA RAPIDO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO II - RESOLUCAO DE PROBLEMAS ESPECIFICOS.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO III - GERACAO DE MASSAS DE TESTE PARA O AMBIENTE DE DESENVOLVIMENTO-HOMOLOGACAO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO IV - DISPONIBILIZACAO DE TABELAS EM AMBIENTE DE QUALIFICACAO DE DADOS.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO V - DISPONIBILIZACAO DE ARQUIVOS PARA RESOLUCAO DE PROBLEMAS POR PRAZO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO VI - DISPONIBILIZACAO DE ARQUIVOS DE LOG A GECMI.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\markdown_anexos\ANEXO VII - DISPONIBILIZACAO DE ARQUIVOS AOS GESTORES DA INFORMACAO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE106\TE106.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo I - Guia rapido - Informacoes compartilhadas da CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo II - Fluxo da gestao dos modelos compartilhados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo III - Areas de interesse do modelo de dados compartilhado.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo IV - Descricao das areas de interesse.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo V - Tipos de entidade que necessitam de previa autorizacao do gestor da informacao para compartilha.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\markdown_anexos\Anexo VI - Classificacao das informacoes.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE109\TE109.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE111\markdown_anexos\Anexo I - Guia Rapido - Padroes Arquiteturais CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE111\TE111.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE124\markdown_anexos\Anexo I_Guia rapido_Gestao e Integracao Cadastro CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE124\TE124.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE156\anexos_markdown\Anexo I – Guia Rápido - Modelagem de dados dimensional para sistemas de informações gerenciais.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE156\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE156\TE156.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE160\anexos_markdown\Anexo I – Guia Rápido - Migração de sistemas departamentais para a TI.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE160\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE160\TE160.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE169\anexos_markdown\Anexo I – Guia Rápido - Processo de Qualidade de Dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE169\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE169\TE169.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE172\anexos_markdown\Anexo I – Guia Rápido - Diretrizes para uso da ferramenta de ETL - Extração, Transformação e Carga de dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE172\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE172\TE172.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\anexos_markdown\Anexo I – Guia Rápido - Diretrizes para gerenciamento de metadados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\anexos_markdown\Anexo II - Gerenciamento de metadados - Modelo de dados de sistema CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\anexos_markdown\Anexo III - Carga de metadados de modelo de dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\anexos_markdown\Anexo IV – Gerenciamento de metadados de demais recursos dos sistemas CAIXA.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE174\TE174.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE177\anexos_markdown\TE177_GuiaRapido_v030.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE177\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE177\TE177.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE184\anexos_markdown\Anexo I - Guia Rápido - Arquitetura da informação.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE184\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE184\TE184.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE191\anexos_markdown\Anexo I - Guia rápido SOLICITAÇÃO DE CRIAÇÃO DE USUÁRIO DE SERVIÇO.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE191\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE191\TE191.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE197\README.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\normativos\TE197\TE197.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\authorize.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Capítulo-Administração-e-Banco-de-Dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Conheça-os-sistemas-compartilhados---Caixa.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Datatypes-permitidos-por-Sistema-Gerenciador-de-Banco-de-Dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Fundamentos-de-banco-de-dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Guia-de-Modelagem---Spring-Batch.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Guia-de-Padrões-e-Convenções-na-Modelagem-e-Diagramação-de-Modelos-de-Dados-Dimensionais.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Lista-de-Objetos-para-Validação-do-Modelo-de-Dados.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Processo-de-Validação-de-Modelo-de-Dados---Cálculo-de-Estimativa-de-Prazo-de-Atendimento.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\resources.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\TokenFactoryIframe.md
F:\Desenvolvimento\repositorio\gh-thiago\doc-diversos\psi\15358-banco\material-consulta\Arquivo\arquivos-md\portais\Validações-executadas-no-Pré-Validador.md