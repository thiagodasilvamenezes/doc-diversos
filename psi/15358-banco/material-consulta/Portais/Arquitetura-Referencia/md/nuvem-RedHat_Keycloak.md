[Ir para o conteúdo](nuvem-RedHat_Keycloak.md#redhat-build-of-keycloak-rhbk)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência SSO RedHat Keycloak (RHBK) Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) SSO RedHat Keycloak (RHBK) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Índice [Introdução](nuvem-RedHat_Keycloak.md#introducao) [Topologia do RHBK](nuvem-RedHat_Keycloak.md#topologia-do-rhbk) [Componentes Principais](nuvem-RedHat_Keycloak.md#componentes-principais) [Interação do Usuário](nuvem-RedHat_Keycloak.md#interacao-do-usuario) [Autenticação](nuvem-RedHat_Keycloak.md#autenticacao) [Integração com Azure](nuvem-RedHat_Keycloak.md#integracao-com-azure) [Cluster Red Hat OpenShift](nuvem-RedHat_Keycloak.md#cluster-red-hat-openshift) [Serviços de Banco de Dados](nuvem-RedHat_Keycloak.md#servicos-de-banco-de-dados) [Integrações Externas](nuvem-RedHat_Keycloak.md#integracoes-externas) [Fluxo de Comunicação](nuvem-RedHat_Keycloak.md#fluxo-de-comunicacao) [Melhorias Propostas](nuvem-RedHat_Keycloak.md#melhorias-propostas) [Otimização de Recursos no OpenShift](nuvem-RedHat_Keycloak.md#otimizacao-de-recursos-no-openshift) [Consolidação de Aplicações](nuvem-RedHat_Keycloak.md#consolidacao-de-aplicacoes) [Uso de Serviços Gerenciados](nuvem-RedHat_Keycloak.md#uso-de-servicos-gerenciados) [Otimização de Autenticação](nuvem-RedHat_Keycloak.md#otimizacao-de-autenticacao) [Redução de Latência](nuvem-RedHat_Keycloak.md#reducao-de-latencia) [Segurança e Compliance](nuvem-RedHat_Keycloak.md#seguranca-e-compliance) [Funções dos Componentes](nuvem-RedHat_Keycloak.md#funcoes-dos-componentes) [Keycloak](nuvem-RedHat_Keycloak.md#keycloak) [Red Hat OpenShift 4](nuvem-RedHat_Keycloak.md#red-hat-openshift-4) [Azion](nuvem-RedHat_Keycloak.md#azion) [Histórico da Revisão](nuvem-RedHat_Keycloak.md#historico-da-revisao) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [Introdução](nuvem-RedHat_Keycloak.md#introducao) [Topologia do RHBK](nuvem-RedHat_Keycloak.md#topologia-do-rhbk) [Componentes Principais](nuvem-RedHat_Keycloak.md#componentes-principais) [Interação do Usuário](nuvem-RedHat_Keycloak.md#interacao-do-usuario) [Autenticação](nuvem-RedHat_Keycloak.md#autenticacao) [Integração com Azure](nuvem-RedHat_Keycloak.md#integracao-com-azure) [Cluster Red Hat OpenShift](nuvem-RedHat_Keycloak.md#cluster-red-hat-openshift) [Serviços de Banco de Dados](nuvem-RedHat_Keycloak.md#servicos-de-banco-de-dados) [Integrações Externas](nuvem-RedHat_Keycloak.md#integracoes-externas) [Fluxo de Comunicação](nuvem-RedHat_Keycloak.md#fluxo-de-comunicacao) [Melhorias Propostas](nuvem-RedHat_Keycloak.md#melhorias-propostas) [Otimização de Recursos no OpenShift](nuvem-RedHat_Keycloak.md#otimizacao-de-recursos-no-openshift) [Consolidação de Aplicações](nuvem-RedHat_Keycloak.md#consolidacao-de-aplicacoes) [Uso de Serviços Gerenciados](nuvem-RedHat_Keycloak.md#uso-de-servicos-gerenciados) [Otimização de Autenticação](nuvem-RedHat_Keycloak.md#otimizacao-de-autenticacao) [Redução de Latência](nuvem-RedHat_Keycloak.md#reducao-de-latencia) [Segurança e Compliance](nuvem-RedHat_Keycloak.md#seguranca-e-compliance) [Funções dos Componentes](nuvem-RedHat_Keycloak.md#funcoes-dos-componentes) [Keycloak](nuvem-RedHat_Keycloak.md#keycloak) [Red Hat OpenShift 4](nuvem-RedHat_Keycloak.md#red-hat-openshift-4) [Azion](nuvem-RedHat_Keycloak.md#azion) [Histórico da Revisão](nuvem-RedHat_Keycloak.md#historico-da-revisao)

# RedHat Build of Keycloak (RHBK)

## **Introdução**

Este documento descreve a arquitetura de referência para o RedHat Build of Keycloak (RHBK), detalhando os componentes principais, suas funções e as interações entre eles.

O RHBK é aplicável a todas as nuvens disponíveis, entretanto, está desenhado inicialmente para Azure nessa Arquitetura de Referência, devido a capacidade instalada.

A arquitetura proposta é uma visão de uso do produto e não aborda aspectos de migração de versão ou customizações específicas. A estratégia de uso de segurança deve ser observada na página das arquiteturas de referência correspondente.

Isso busca garantir que a estratégia de segurança e as definições de arquitetura para o uso do produto sejam consolidadas e rastreáveis.

O RHBK substituirá o RedHat Single Sign-On (SSO). Dentre os principais motivadores para a evolução das tecnologias estão:

1. Arquitetura Nativa em Nuvem: O RHBK possui arquitetura projetada especificamente para implantações em Nuvem e containers, o que melhora a eficiência e o torna mais escalável.

2. Desenho aprimorado: O RHBK possui desempenho superior ao SSO devido às otimizações na sua arquitetura e o uso de tecnologias mais recentes.

3. Configuração Simplificada: O RHBK possui configuração mais simples e intuitiva em relação ao SSO, o que facilita a implantação e o gerenciamento de identidade e acessos.

4. Suporte a protocolos: O RHBK Suporta protocolos de autenticação e autorização padrão da indústria, como OpenID Connect (OIDC) e SAML, o que garante compatibilidade com ampla gama de aplicativos e serviços.

5. Controle de Acesso Granular: O RHBK oferece controle de acesso granular, o que permite definir permissões detalhadas com base em funções e políticas, melhorando a segurança e a gestão de acessos.

6. Autenticação Multifator (MFA): O RHBK Inclui suporte nativo para autenticação multifator, adicionamento uma camada extra de segurança para os logins.

7. Integração com diretórios de usuários: O RHBK facilita a integração com diversos diretórios de usuários, como LDAP, Active Directory, além de provedores de login social, o que simplifica a gestão de identidades.

## **Topologia do RHBK**

![Diagrama O conteúdo gerado por IA pode estar incorreto.](https://arquiteturati.dep.caixa/25.06/nuvem/RedHat_Keycloak/pastadeimagens/media/image1.jpeg)

## **Componentes Principais**

### Interação do Usuário

- **Navegador** : O usuário interage com o sistema através do navegador, acessando login.caixa.gov.br.

### Autenticação

- **Gov.br** : Serviço de autenticação do governo brasileiro.

- **Autenticador** : Dispositivo ou aplicação utilizada para autenticação multifator.

### Integração com Azure

- **APP GTW PUBLICO** : Aplicação hospedada no Azure, acessível na porta 7443.

- **APP GTW PRIVADO** : Aplicação hospedada no Azure, acessível na porta 7443.

### Cluster Red Hat OpenShift

- **Namespace** : RHBK

- **Nós** : node01, node02, node03

- **Roteadores** : router default, router rhbk

- **Keycloak** : Ferramenta de gerenciamento de identidade e acesso.

### Serviços de Banco de Dados

- **Banco de Dados SQL** : Armazenamento de dados estruturados.

### Integrações Externas

- **CAIXA** : Integração com sistemas da CAIXA.

- **Oracle LDAP** : Integração com serviço de diretório LDAP da Oracle.

## **Fluxo de Comunicação**

O fluxo de comunicação entre os componentes é indicado por setas, mostrando como os dados se movem entre o usuário, serviço de autenticação, aplicações, cluster OpenShift, bancos de dados e integrações externas.

## **Melhorias Propostas**

### Otimização de Recursos no OpenShift

- **Autoescalonamento** : Configurar o autoescalonamento para ajustar automaticamente o número de pods com base na carga de trabalho.

- **Limites de Recursos** : Definir limites de CPU e memória para os pods.

### Consolidação de Aplicações

- **Aplicações no Azure** : Verificar se as duas aplicações podem ser consolidadas ou compartilhar recursos.

### Uso de Serviços Gerenciados

- **Banco de Dados** : Considerar o uso de serviços de banco de dados gerenciados, como Azure SQL Database.

### Otimização de Autenticação

- **Keycloak** : Avaliar a configuração do Keycloak para otimização de desempenho e segurança.

### Redução de Latência

- **Localização dos Serviços** : Verificar a localização dos serviços para reduzir a latência.

### Segurança e Compliance

- **Revisão de Segurança** : Realizar revisões periódicas de segurança.

## **Funções dos Componentes**

### Keycloak

- **Autenticação e Autorização** : Gerencia o processo de autenticação e controle de acesso.

- **Single Sign-On (SSO)** : Permite login único para múltiplas aplicações.

- **Integração com Provedores de Identidade** : Facilita a autenticação com gov.br.

### Red Hat OpenShift 4

- **Orquestração de Containers** : Facilita a implantação e gerenciamento de containers.

- **Plataforma de Desenvolvimento** : Suporta pipelines de CI/CD.

- **Segurança e Compliance** : Oferece isolamento de containers e RBAC.

- **Escalabilidade** : Permite escalabilidade automática das aplicações.

### Azion

- **Edge Computing** : Reduz a latência ao aproximar o processamento dos usuários finais.

- **Distribuição de Conteúdo** : Melhora a velocidade de carregamento e eficiência de custo.

- **Segurança de Aplicações e Redes** : Protege contra ameaças cibernéticas.

- **Automação de Infraestrutura** : Otimiza o desempenho das aplicações.

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 26/06/2025 | 1.0 | Criação do documento | SUART09 |

[Anterior Esteiras CI/CD](nuvem-esteirascicd.md) [Próximo Visão Geral](seguranca-seguranca.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](nuvem-RedHat_Keycloak.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
