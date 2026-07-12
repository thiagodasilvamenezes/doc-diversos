[Ir para o conteúdo](logs-consumo-logs.md#consumo-e-monitoramento-de-logs)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Consumo e monitoração de Log Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) Consumo e monitoração de Log [Consumo e monitoração de Log](logs-consumo-logs.md) Índice [1.Objetivo](logs-consumo-logs.md#1objetivo) [Introdução](logs-consumo-logs.md#introducao) [App Insights](logs-consumo-logs.md#app-insights) [Consumo de logs Via App Insights](logs-consumo-logs.md#consumo-de-logs-via-app-insights) [Monitoração de aplicações via Log Digital](logs-consumo-logs.md#monitoracao-de-aplicacoes-via-log-digital) [Graylog](logs-consumo-logs.md#graylog) [Consumo de Logs via Graylog](logs-consumo-logs.md#consumo-de-logs-via-graylog) [Topologia da Estrutura](logs-consumo-logs.md#topologia-da-estrutura) [Descrição de Uso da Esteira GrayLog:](logs-consumo-logs.md#descricao-de-uso-da-esteira-graylog) [Input de Logs](logs-consumo-logs.md#input-de-logs) [Stream de Logs](logs-consumo-logs.md#stream-de-logs) [Visualização dos Logs](logs-consumo-logs.md#visualizacao-dos-logs) [API para extração de dados do GrayLog](logs-consumo-logs.md#api-para-extracao-de-dados-do-graylog) [Controle de Autenticação de Usuários](logs-consumo-logs.md#controle-de-autenticacao-de-usuarios) [Restrição no uso de dados de logs](logs-consumo-logs.md#restricao-no-uso-de-dados-de-logs) [Histórico da Revisão](logs-consumo-logs.md#historico-da-revisao) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [1.Objetivo](logs-consumo-logs.md#1objetivo) [Introdução](logs-consumo-logs.md#introducao) [App Insights](logs-consumo-logs.md#app-insights) [Consumo de logs Via App Insights](logs-consumo-logs.md#consumo-de-logs-via-app-insights) [Monitoração de aplicações via Log Digital](logs-consumo-logs.md#monitoracao-de-aplicacoes-via-log-digital) [Graylog](logs-consumo-logs.md#graylog) [Consumo de Logs via Graylog](logs-consumo-logs.md#consumo-de-logs-via-graylog) [Topologia da Estrutura](logs-consumo-logs.md#topologia-da-estrutura) [Descrição de Uso da Esteira GrayLog:](logs-consumo-logs.md#descricao-de-uso-da-esteira-graylog) [Input de Logs](logs-consumo-logs.md#input-de-logs) [Stream de Logs](logs-consumo-logs.md#stream-de-logs) [Visualização dos Logs](logs-consumo-logs.md#visualizacao-dos-logs) [API para extração de dados do GrayLog](logs-consumo-logs.md#api-para-extracao-de-dados-do-graylog) [Controle de Autenticação de Usuários](logs-consumo-logs.md#controle-de-autenticacao-de-usuarios) [Restrição no uso de dados de logs](logs-consumo-logs.md#restricao-no-uso-de-dados-de-logs) [Histórico da Revisão](logs-consumo-logs.md#historico-da-revisao)

# Consumo e Monitoramento de Logs.

## 1.Objetivo

Este documento fornece orientações e definições para o monitoramento e consumo de logs.

O objetivo deste documento é nivelar o conhecimento sobre monitoramento e consumo de logs, apresentar as definições para os ambientes, fomentar a qualidade, consistência e manutenibilidade das aplicações e pacificar discussões quanto a padrões e melhores práticas.

## Introdução

O consumo de logs na CAIXA ocorre através de esteiras pré definidas a depender das necessidades específicas de cada aplicação.

A seguir serão apresentados os cenários para aplicações utilizando o AppInsights ou o GrayLog.

Será necessário junto a área de operações a definição de uma política de retenção dos logs conforme necessidades de cada aplicação.

## App Insights

**Público Alvo:** Equipes de Desenvolvimento e Equipe de Operações

O Application Insights é uma ferramenta de APM e monitoramento que faz parte do Azure Monitor.

Desenvolvedores e DevOps podem usar o Application Insights para:

- Detectar automaticamente anomalias no desempenho.

- Diagnosticar problemas usando ferramentas de análise avançadas.

- Melhorar continuamente o desempenho e a usabilidade das aplicações.

### Consumo de logs Via App Insights

O detalhamento das configurações necessárias para as aplicações utilizarem o AppInsights podem ser encontradas no link abaixo:

[Configuração do Application Insights no JBoss (VM e Container) - Overview (devops.caixa)](https://devops.caixa/projetos/Caixa/_wiki/wikis/Caixa.wiki/211/Configura%C3%A7%C3%A3o-do-Application-Insights-no-JBoss-(VM-e-Container))

As configurações serão realizadas no servidor pela equipe de operações sem necessidade de alteração na aplicação.

Para aplicações Java 8 ou superior a utilização do Log Digital é recomendada.

O AppInsights visa realizar a monitoração das várias camadas ou visões dos serviços fornecidos pela Caixa.

A visão das aplicações é dividida em camadas que nada mais é a organização das visões dos envolvidos no consumo de serviços fornecidos por sistemas na Caixa.

As camadas estão divididas em:

- clientes Caixa (Camada 1)

- equipes de desenvolvimento e operação (Camada 2)

- equipes de monitoração (Camada 3).

Para o consumo de logs o foco será na camada 2:

- A camada 02, denominada dados, tem o foco em fornecer dados de telemetria das aplicações e serviços fornecidos. Tempos, disponibilidades e falhas, serão evidenciados nesta camada.

Segue abaixo uma visão de arquitetura da solução de consumo utilizando o App Insights para uma visão de aplicação e serviços.

![Imagem](<./imagem/index-imagem-019.png>)

Descrição da imagem - [./imagem/index-imagem-019.md](<./imagem/index-imagem-019.md>)

A visão dos operadores será o ponto onde todos os dados e medições das camadas serão agrupados, podendo este detalhar dados de uma camada especifica ou ter uma visão geral de todas as camadas.

O gestor imediato do usuário da comunidade autoriza no acesso lógico o acesso ao grupo de aplicações. O Acesso realizado pelo Azure Portal [https://portal.azure.com/](https://portal.azure.com/) para acesso a aplicação App Insights e realiza a visualização do log.

Dentro da ferramenta App Insights será possível acompanhar os ambientes de produção e não produção.

A utilização do App Insights fornece uma visão mais ampla apresentando informações que não podem ser disponibilizadas em logs.

## Monitoração de aplicações via Log Digital

Publico alvo da monitoração: equipe de operações

A equipe de monitoração irá usar um conjunto de ferramentas para monitorar as aplicações/serviços quanto a sua efetividade de TI e negócio.

![Imagem](<./imagem/index-imagem-020.png>)

Descrição da imagem - [./imagem/index-imagem-020.md](<./imagem/index-imagem-020.md>)

A efetividade de TI para o Log Digital entrega o percentual de transações que foram bem sucedidas e que não houve erros que caracterizem erros de infraestrutura. Exemplos: timeout de um serviço, erros internos no servidor.

A efetividade de negócio entrega o percentual de transações que foram bem sucedidas e que não houve erros negociais. Exemplo: Concessão de empréstimo sem uma avaliação prévia de risco, execução de transferência sem saldo disponível.

A equipe de monitoração vai atuar no monitoramento dos sistemas, serviços e ativos de rede e responsável por publicar a existência de um problema. A partir desse ponto uma equipe de atendimento com conhecimento sobre o problema identificado trabalha na resolução, podendo caso necessário acionar as equipes de desenvolvimento necessárias.

O Log Digital é voltado para o monitoramento do ponto de vista de TI e trabalha com amostragem de mensagens enviadas pelas aplicações.

Visões negociais e analíticas devem ser são obtidas através do big data.

## Graylog

Para aplicações Java, existe a possibilidade do consumo de logs através do [GrayLog](http://www.graylog.org) esteira legado.

O Graylog é uma ferramenta para extração e centralização dados de LOG de servidores.

As informações coletadas pelo Graylog são exibidas em um dashboard, que propicia a analise via interface web.

### Consumo de Logs via Graylog

Foi criada uma estrutura de cluster da ferramenta Graylog para centralização de logs de aplicação do ambiente de PRD da CEPTIBR.

A URL de acesso: [http://logcentralizado.caixa](http://logcentralizado.caixa)

### Topologia da Estrutura

A seguir segue a topologia atual da esteira:

![Imagem](<./imagem/index-imagem-021.png>)

Descrição da imagem - [./imagem/index-imagem-021.md](<./imagem/index-imagem-021.md>)

### Descrição de Uso da Esteira GrayLog:

Para centralização de logs de aplicação na esteira é necessário a execução de um serviço para comunicação remota ao cluster Graylog, para tanto faz-se o uso do logstash que tem as seguntes funções:

- Mantém um serviço em execução para envio de logs para os servidores remotos do cluster graylog.

- Faz a leitura do arquivo de logs a partir das regras de input do arquivo de configuração.

- Filtra o conteudo das linhas de log de acordo com as regras dos filtros (GROK) definidos.

- Envia as linhas de logs tratadas para os servidores remotos do cluster Graylog via UDP, através das regras definidas na sessão output do arquivo de configuração.

A partir deste ponto, nos servidores Graylog as mensagens são consumidas pelos Inputs GELF configurados na porta padrão 1514. O Graylog recebe estas mensagens, que passam pelos streams configurados na ferramenta e classificam as mensagens na base do ElasticSearch de acordo com a regra de entrada definida no mesmo (Ex: contém o nome do sistema SISXXX ou o nome do Módulo de um sistema).

A partir da definição das mensagens por streams, as mensagens podem ser visualizadas em tempo real na tela que consolida todas as mensagens de log sistema classificado na stream. Cada campo mapeado na filtragem se torna um campo indexado no banco elastic search permitindo a consulta e filtragem agrupada pelos campos através de consultas personalizadas e que podem ser salvas para uso futuro.

### Input de Logs

O input é o processo responsável por consumir as mensagens de log enviadas e consolida-las no Graylog. Neste processo, um input recebe a mensagem e classifica de acordo com a regra definida na entrada do stream.

Por padrão foi adotado o stream do tipo GELF na porta 1514 para tratamento de mensagens para a baixa plataforma

No caso de indisponibilidade da plataforma Graylog para receber os streams de inputs enviados pelas aplicações, as aplicações não são impactadas em sua disponibilidade/estabilidade.

### Stream de Logs

Os streams são utilizados para categorizar e separar as mensagens recebidas pelo Input. Por padrão, a regra de classificação do stream toma por base o nome do sistema ou módulo presente em campo GELF específico da mensagem.

A tela de cada stream é a mesma de pesquisa geral (aba search), mas afeta apenas as mensagens classificadas para o referido stream.

### Visualização dos Logs

A ferramenta graylog permite a visualização das ocorrências de log de forma mais amigável e estratégica na forma de dashboad.

![Imagem](<./imagem/index-imagem-022.jpg>)

Descrição da imagem - [./imagem/index-imagem-022.md](<./imagem/index-imagem-022.md>)

### API para extração de dados do GrayLog

A ferramenta Graylog permite a extração dos dados dos dashboards, dos streams e dos alertas a partir de várias APIs configuráveis, sendo a principal nativa no padrão REST. Estas APIs podem ser configuradas de modo passivo e ativo, dependendo da necessidade de integração desejada. A porta padrão de acesso à API é a http 12900.

- Documentação: [http://docs.graylog.org/en/latest/index.html](http://docs.graylog.org/en/latest/index.html)

### Controle de Autenticação de Usuários

O GrayLog é integrado com o LDAP, deste modo todos os usuários cadastrados naquela base de acesso têm permissão de login para a página principal da ferramenta. As roles configuradas no GrayLog são definidas a partir dos objetos de stream e dashboard criados internamente.

## Restrição no uso de dados de logs

É Proibida a de criação de transações negociais consumindo dados das tabelas de trilha de auditoria ou logs dos sistemas transacionais, considerando que essas tabelas não possuem essa finalidade e a criação de qualquer índice pode afetar diretamente a solução como um todo.

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 05/09/2022 | 1.0 | Criação do documento | SUART02 |

[Anterior Geração de Logs](logs-logs.md) [Próximo Visão Geral](integracoes-integracoes.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](logs-consumo-logs.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
