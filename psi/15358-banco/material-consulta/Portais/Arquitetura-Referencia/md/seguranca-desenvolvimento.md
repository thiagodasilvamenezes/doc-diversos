[Ir para o conteúdo](seguranca-desenvolvimento.md#ciclo-de-vida-de-desenvolvimento-de-software-sdlc)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Segurança no Desenvolvimento de Software Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) Segurança no Desenvolvimento de Software [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) Índice [Arquitetura Atual](seguranca-desenvolvimento.md#arquitetura-atual) [Arquitetura de Referência](seguranca-desenvolvimento.md#arquitetura-de-referencia) [1 - Análise de Segurança Estática - SAST (Static Application Security Testing)](seguranca-desenvolvimento.md#1-analise-de-seguranca-estatica-sast-static-application-security-testing) [2 - Gerenciamento de Dependências - SCA (Software Composition Analysis)](seguranca-desenvolvimento.md#2-gerenciamento-de-dependencias-sca-software-composition-analysis) [3 - Scan de Vulnerabilidade de Ambiente](seguranca-desenvolvimento.md#3-scan-de-vulnerabilidade-de-ambiente) [Autenticado:](seguranca-desenvolvimento.md#autenticado) [Não Autenticado:](seguranca-desenvolvimento.md#nao-autenticado) [4 - Assinatura de Código](seguranca-desenvolvimento.md#4-assinatura-de-codigo) [5 - KeyVaults](seguranca-desenvolvimento.md#5-keyvaults) [6 - Análise de Segurança Dinâmica - DAST (Dynamic Application Security Testing)](seguranca-desenvolvimento.md#6-analise-de-seguranca-dinamica-dast-dynamic-application-security-testing) [7 - PenTest](seguranca-desenvolvimento.md#7-pentest) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [Arquitetura Atual](seguranca-desenvolvimento.md#arquitetura-atual) [Arquitetura de Referência](seguranca-desenvolvimento.md#arquitetura-de-referencia) [1 - Análise de Segurança Estática - SAST (Static Application Security Testing)](seguranca-desenvolvimento.md#1-analise-de-seguranca-estatica-sast-static-application-security-testing) [2 - Gerenciamento de Dependências - SCA (Software Composition Analysis)](seguranca-desenvolvimento.md#2-gerenciamento-de-dependencias-sca-software-composition-analysis) [3 - Scan de Vulnerabilidade de Ambiente](seguranca-desenvolvimento.md#3-scan-de-vulnerabilidade-de-ambiente) [Autenticado:](seguranca-desenvolvimento.md#autenticado) [Não Autenticado:](seguranca-desenvolvimento.md#nao-autenticado) [4 - Assinatura de Código](seguranca-desenvolvimento.md#4-assinatura-de-codigo) [5 - KeyVaults](seguranca-desenvolvimento.md#5-keyvaults) [6 - Análise de Segurança Dinâmica - DAST (Dynamic Application Security Testing)](seguranca-desenvolvimento.md#6-analise-de-seguranca-dinamica-dast-dynamic-application-security-testing) [7 - PenTest](seguranca-desenvolvimento.md#7-pentest)

# Ciclo de Vida de Desenvolvimento de Software (SDLC)

O processo de desenvolvimento de software precisa contemplar as verificações de segurança em todas as etapas.

O conceito de *security-by-design* se expressa na preocupação com a segurança em cada etapa do processo.

Atualmente, o desenvolvimento de software segue o conceito de DevOps, ou seja, Desenvolvimento e Operações seguindo um fluxo complementar e integrado.

Como forma de agregar segurança nesse fluxo, surgiu o conceito de Dev **Sec** Ops. Ou seja, em cada etapa uma ação deve ser feita para garantir a segurança.

![teste](<./imagem/index-imagem-137.png>)

Descrição da imagem - [./imagem/index-imagem-137.md](<./imagem/index-imagem-137.md>)

## Arquitetura Atual

![teste](<./imagem/index-imagem-138.png>)

Descrição da imagem - [./imagem/index-imagem-138.md](<./imagem/index-imagem-138.md>)

## Arquitetura de Referência

![teste](<./imagem/index-imagem-139.png>)

Descrição da imagem - [./imagem/index-imagem-139.md](<./imagem/index-imagem-139.md>)

## 1 - Análise de Segurança Estática - SAST (Static Application Security Testing)

Solução usada pelas equipes de desenvolvimento e de operação de segurança, com o objetivo de identificar vulnerabilidades nos códigos das aplicações e assim poder corrigi-los ainda na fase de desenvolvimento, portanto, antes da implantação em produção, momento em que tais vulnerabilidades poderiam ser exploradas.

Na análise SAST, ou análise estática, a solução examina o próprio código fonte, enquanto na análise DAST, ou dinâmica, a análise é feita sobre a aplicação em execução.

**Situação atual** : - Solução Fortify, da Microfocus, adquirida em 2019, atendendo os requisitos atuais. - Solução Sonar Qube, Open-Source.

**Situação alvo** : - Melhora na performance das análises. - Uso de plugin na IDE.

## 2 - Gerenciamento de Dependências - SCA (Software Composition Analysis)

O processo de análise dos componentes de software busca vulnerabilidades nos componentes terceiros utilizados pelos softwares e analisa o licenciamento das bibliotecas incoporporadas ao projeto.

Essa ação previne que componentes maliciosos sejam incorporados nas versões em produção.

**Situação atual** : - Sem solução contratada.

**Situação alvo** : - Solução de SCA vinculada ao processo de Gestão de Dependências no momento da Build e conectada a IDE dos desenvolvedores.

## 3 - Scan de Vulnerabilidade de Ambiente

O scanner de vulnerabilidade é um processo que realiza a análise nos ambientes, redes, servidores de aplicação, containers, aplicações etc. em busca de identificar vulnerabilidades conhecidas.

O processo pode ocorrer com scans autenticados e não autenticados.

#### Autenticado:

As varreduras autenticadas permitem que o scanner acesse diretamente os ativos baseados em rede usando protocolos administrativos remotos, como SSH ou protocolo de área de trabalho remota (RDP) e autentique usando as credenciais do sistema fornecidas.

Isso permite que o scanner acesse dados de baixo nível, como serviços específicos e detalhes de configuração do sistema operacional do host.

Ele pode fornecer informações detalhadas e precisas sobre o sistema operacional e o software instalado, incluindo problemas de configuração e patches de segurança ausentes.

#### Não Autenticado:

Os scans não autenticados são um método que podem resultar em um alto número de falsos positivos e não pode fornecer informações detalhadas sobre o sistema operacional dos ativos e o software instalado.

Esse método é normalmente utilizado para realizar a varredura de forma externa a infraestrutura corporativa.

**Situação atual** : - Solução OpenVAS, Open-source, realiza varredura em ambiente interno de forma não obrigatória.

**Situação alvo** : - Aquisição de solução com capacidade de realizar varredura interna, externa, autêntica e não autenticada. - Integração a pipeline de CI/CD com análise obrigatória na Build e de forma contínua no ambiente de produção.

## 4 - Assinatura de Código

O processo de assinatura de código objetiva garantiar a autenticidade dos códigos e artefatos gerados e impedir alterações indevidas.

Esse processo é baseado em criptografia assimétrica, onde o artefato é assinado com a chave privada e pode ser validado com a chave pública correspondente ao par.

Os artefatos e dependências podem ser assinados e validados no módulo de gerenciamento de dependências e durante o processo de execução da aplicação por meio de uma ferramenta RASP *(Runtime Application Self-Protection)* .

**Situação atual** : - Assinatura de aplicativos móveis.

**Situação alvo** : - Assinatura de artefatos e demais componentes críticos.

## 5 - KeyVaults

Descrito na Arquitetura de Referência de [Criptografia](seguranca-criptografia.md) .

## 6 - Análise de Segurança Dinâmica - DAST (Dynamic Application Security Testing)

O DAST é um teste de “caixa preta” que busca encontrar vulnerabilidades e brechas de segurança em um aplicativo em execução, injetando códigos e dados maliciosas para identificar possíveis fragilidades como SQL injection ou Cross-Site Scripting (XSS), etc.

As soluções de DAST conseguem detectar:

- Validação dos inputs da solução

- Problemas de autenticação

- Erros de configuração do servidor

As ferramentas DAST permitem varreduras no lado do cliente e no lado do servidor sem precisar do código-fonte ou da estrutura na qual o aplicativo é construído.

Esse tipo de solução complementa a análise SAST (Static Application Security Testing), usada no processo de desenvolvimento, buscando identificar vulnerabilidades em aplicações.

**Situação atual** : - Solução Microfocus Fortify com 4 licenças sem uso.

**Situação alvo** : - Aquisição ou expansão de licenças para integrar a esteira de desenvolvimento.

## 7 - PenTest

Solução usada para "forçar" o acesso ao ambiente de TI Caixa, simulando a ação de atacantes. Assim como a solução de análise de código, a solução de intrusão visa identificar vulnerabilidades existentes em ambiente e aplicações.

A solução atua "disparando" diversos tipos de ataques similares àqueles originados em ferramentas maliciosas normalmente usadas por pessoas mal intencionadas que buscam obter acesso indevido a sistemas de TI. O nível de força do ataque pode ser definido na solução, podendo ir desde uma simples inspeção até uma tentativa real de invasão.

**Situação atual** : - Soluções atendem aos requisitos atuais.

**Situação alvo** : - Avaliar novas ferramentas que acelerem os testes de segurança em aplicações.

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 30/10/2022 | 1.0 | Revisão | Túlio César Faria Pinto |

[Anterior Operações de Segurança](seguranca-operacoes.md) [Próximo Segurança de Dados e Endpoints](seguranca-dados_endpoints.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](seguranca-desenvolvimento.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
