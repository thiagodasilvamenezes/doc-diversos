[Ir para o conteúdo](microsservicos-jwt.md#validacao-offline-multitenant)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Segurança JWT Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) Segurança JWT [Segurança JWT](microsservicos-jwt.md) Índice [OAUTH2](microsservicos-jwt.md#oauth2) [JWT (JSON Web Token)](microsservicos-jwt.md#jwt-json-web-token) [JWKS (JSON Web Key Set)](microsservicos-jwt.md#jwks-json-web-key-set) [Validação Offline de Tokens](microsservicos-jwt.md#validacao-offline-de-tokens) [Como funciona a validação offline de tokens JWT?](microsservicos-jwt.md#como-funciona-a-validacao-offline-de-tokens-jwt) [Benefícios da validação offline:](microsservicos-jwt.md#beneficios-da-validacao-offline) [Contras da validação offline:](microsservicos-jwt.md#contras-da-validacao-offline) [Arquitetura de referência](microsservicos-jwt.md#arquitetura-de-referencia) [Cache local das chaves públicas do Realm/Tenant](microsservicos-jwt.md#cache-local-das-chaves-publicas-do-realmtenant) [Validação do Token](microsservicos-jwt.md#validacao-do-token) [Histórico da Revisão](microsservicos-jwt.md#historico-da-revisao) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [OAUTH2](microsservicos-jwt.md#oauth2) [JWT (JSON Web Token)](microsservicos-jwt.md#jwt-json-web-token) [JWKS (JSON Web Key Set)](microsservicos-jwt.md#jwks-json-web-key-set) [Validação Offline de Tokens](microsservicos-jwt.md#validacao-offline-de-tokens) [Como funciona a validação offline de tokens JWT?](microsservicos-jwt.md#como-funciona-a-validacao-offline-de-tokens-jwt) [Benefícios da validação offline:](microsservicos-jwt.md#beneficios-da-validacao-offline) [Contras da validação offline:](microsservicos-jwt.md#contras-da-validacao-offline) [Arquitetura de referência](microsservicos-jwt.md#arquitetura-de-referencia) [Cache local das chaves públicas do Realm/Tenant](microsservicos-jwt.md#cache-local-das-chaves-publicas-do-realmtenant) [Validação do Token](microsservicos-jwt.md#validacao-do-token) [Histórico da Revisão](microsservicos-jwt.md#historico-da-revisao)

# Validação Offline Multitenant

A Arquitetura de Identidde e Acesso define que o processo de Autenticação e Autorização deve seguir o protocolo OAUTH2 e que as validações de tokens devem ser realizadas de forma offline, através das chaves públicas dos Realms que são obtidas através de um JWKS.

## OAUTH2

O OAuth2 é um protocolo de autorização que permite a aplicações obter acesso limitado às contas de usuários em provedores de serviço HTTP, sem compartilhar credenciais diretas. Ele facilita a delegação de permissões, permitindo que usuários concedam a aplicações de terceiros direitos específicos para agir em seu nome, como ler dados ou realizar ações, através da emissão de tokens de acesso.

## JWT (JSON Web Token)

O JWT é um padrão da indústria definido pela RFC7519, que tem como objetivo transmitir ou armazenar de forma compacta e segura objetos JSON entre diferentes aplicações. Uma das vantagens dos tokens JWT é que eles podem ser validados usando uma operação criptográfica simples de forma offline. Isso é possível graças à sua estrutura: os tokens JWT são simplesmente JSON codificados e assinados. Dessa forma, qualquer cliente pode verificar a assinatura, desde que tenha acesso à parte pública/privada do conjunto de chaves usado para a assinatura (dependendo do algoritmo utilizado).

## JWKS (JSON Web Key Set)

O JWK é uma estrutura de dados JSON que representa uma chave criptográfica. O "S" em JWKS significa "Set", indicando um conjunto. O JWKS é utilizado para compartilhar chaves (geralmente chaves públicas) entre diferentes serviços, expondo assim as chaves públicas usadas pela parte assinante para todos os clientes que precisam validar assinaturas. Na prática, ao realizar a aquisição das chaves públicas, o JWKS deve ser utilizado.

## Validação Offline de Tokens

A validação de tokens de modo offline utilizando a chave pública de um realm ou tenant refere-se ao processo de verificação da assinatura de um token JWT (JSON Web Token) sem a necessidade de consultar um servidor ou serviço externo. O JWT é uma maneira compacta de representar informações entre duas partes de maneira segura. Quando se fala de autenticação e autorização, os JWTs são frequentemente usados para representar tokens de acesso e refresh tokens.

### Como funciona a validação offline de tokens JWT?

Emissão do Token: Quando um servidor emite um JWT, ele assina o token usando sua chave privada. Esta assinatura garante que o token não foi modificado desde sua emissão.

Validação Offline: Quando o JWT é recebido por um serviço ou aplicação que deseja validar o token, esse serviço pode fazer isso offline, sem ter que contatar o servidor original que emitiu o token. Para isso, o serviço utiliza a chave pública correspondente à chave privada usada para assinar o token. Se o token foi assinado com a chave privada correspondente e não foi modificado, a validação terá sucesso.

### Benefícios da validação offline:

Desempenho: Não há necessidade de realizar chamadas de rede para um servidor externo para validar o token, o que pode reduzir a latência e melhorar o tempo de resposta.

Redução da Carga no Servidor de Autenticação: O servidor que emite os tokens não é sobrecarregado com requisições constantes de validação.

Disponibilidade: Mesmo que o servidor original que emitiu o token esteja indisponível, a validação ainda pode ser realizada, garantindo a continuidade do serviço.

### Contras da validação offline:

Revogação de Tokens: Se um token for comprometido e você desejar revogá-lo, essa revogação não será imediatamente reconhecida por serviços que validam tokens offline. Você teria que esperar que o token expire ou encontrar uma maneira de informar todos os serviços sobre a revogação.

Gestão de Chaves: A manutenção e rotação segura das chaves públicas e privadas é essencial. Se uma chave privada for comprometida, os atacantes poderão emitir tokens válidos.

Complexidade Adicional: Implementar a validação offline de tokens exige uma compreensão profunda de JWTs, assinaturas digitais e gestão de chaves.

## Arquitetura de referência

A padronização no processo de desenvolvimento traz uma gama de benefícios, como maior produtividade, curva de apendizagem diminuida, menor custo, etc. Como forma de uniformizar o desenvolvimentodo processo de Autenticação e Autorização nas aplicações, foi definido um conjunto mínimo diretrizes para o desenvolvimento de novas soluções.

Estas diretrizes são aplicadas as aplicações independente da tecnologia utilizada.

### Cache local das chaves públicas do Realm/Tenant

Para a efetiva realização da validação offline de tokens, é imperativo que as aplicações mantenham um cache local contendo as chaves públicas de todos os realms declarados.

Esse cache facilita a verificação rápida da autenticidade e integridade dos tokens, sem a necessidade de consultas externas frequentes.

Além disso, esta abordagem é particularmente crucial, pois alguns provedores de identidade (IDPs) realizam uma rotação de chaves periodicamente.

Assim, ao manter um cache atualizado, a aplicação assegura não apenas uma resposta ágil, mas também se adapta às mudanças nas chaves, garantindo a segurança contínua do processo de validação.

O diagrama abaixo mostra o fluxo proposto para utilização do cache:

![Imagem](<./imagem/index-imagem-059.png>)

Descrição da imagem - [./imagem/index-imagem-059.md](<./imagem/index-imagem-059.md>)

### Validação do Token

A validação de tokens deve ser conduzida de maneira precisa e segura. Para fazer isso, ao receber um token, a aplicação deve referenciar o 'key ID' (identificador da chave) presente no próprio token.

Este 'key ID' serve como um indicador único para identificar e selecionar a chave pública correspondente armazenada no cache local da aplicação.

Usando esta chave pública selecionada, a aplicação pode então validar efetivamente a assinatura e a integridade do token, assegurando sua autenticidade e legitimidade.

O diagrama abaixo mostra o fluxo proposto para a validação do token:

![Imagem](<./imagem/index-imagem-060.png>)

Descrição da imagem - [./imagem/index-imagem-060.md](<./imagem/index-imagem-060.md>)

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 30/09/2022 | 1.0 | Criação do documento | SUART02 |
| 06/10/2023 | 1.0 | Revisão geral da documentação | SUART02 |

[Anterior Spring Boot](microsservicos-spring.md) [Próximo Quickstarts](microsservicos-quickstarts.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](microsservicos-jwt.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
