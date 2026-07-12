[Ir para o conteúdo](infraestrutura-hardware-san-ficon-as-is.md#san-storages-area-network-ficon)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência SAN FICON Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) SAN FICON [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Índice [Formalização SUART](infraestrutura-hardware-san-ficon-as-is.md#formalizacao-suart) [Topologia da Arquitetura](infraestrutura-hardware-san-ficon-as-is.md#topologia-da-arquitetura) [Características da Arquitetura](infraestrutura-hardware-san-ficon-as-is.md#caracteristicas-da-arquitetura) [Principais Recomendações de Uso](infraestrutura-hardware-san-ficon-as-is.md#principais-recomendacoes-de-uso) [Exemplo de utilização](infraestrutura-hardware-san-ficon-as-is.md#exemplo-de-utilizacao) [Demais considerações](infraestrutura-hardware-san-ficon-as-is.md#demais-consideracoes) [Glossário](infraestrutura-hardware-san-ficon-as-is.md#glossario) [Histórico da Revisão](infraestrutura-hardware-san-ficon-as-is.md#historico-da-revisao) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [Formalização SUART](infraestrutura-hardware-san-ficon-as-is.md#formalizacao-suart) [Topologia da Arquitetura](infraestrutura-hardware-san-ficon-as-is.md#topologia-da-arquitetura) [Características da Arquitetura](infraestrutura-hardware-san-ficon-as-is.md#caracteristicas-da-arquitetura) [Principais Recomendações de Uso](infraestrutura-hardware-san-ficon-as-is.md#principais-recomendacoes-de-uso) [Exemplo de utilização](infraestrutura-hardware-san-ficon-as-is.md#exemplo-de-utilizacao) [Demais considerações](infraestrutura-hardware-san-ficon-as-is.md#demais-consideracoes) [Glossário](infraestrutura-hardware-san-ficon-as-is.md#glossario) [Histórico da Revisão](infraestrutura-hardware-san-ficon-as-is.md#historico-da-revisao)

# SAN - Storages Area Network - FICON

**Assunto:** Hardware Mainframe

**Solução:** SAN - Storages Area Network - FICON

**Hardware:** BROADCOM DCX6-B

**Fabricante (s):** BROADCOM

**Objetivo:** Apresentar as informações referentes a arquitetura de referência da rede SAN FICON, com o objetivo de fornecer uma visão geral da infraestrutura de *hardware* que suporta toda a conectividade FICON para ambiente mainframe, e que é utilizada para conectar os mainframes IBM (z14, z15 e z16) aos storages (DELL PowerMax 8000), virtualizadores ORACLE VSM6 e fitotecas STORAGETEK SL8500.

## Formalização SUART

1. Número do RTC (s): 10414515, 10364237,10539330 e **13180484**

2. O que será apresentado neste documento é a nova arquitetura da rede SAN que está sendo usada para atender as demandas de processamento e armazenamento da plataformas mainframe IBM.

## Topologia da Arquitetura

1. Abaixo segue a topologia macro representando a arquitetura da rede SAN do ambiente FICON (Mainframe IBM) existente nos datacenters CTC e DTC com seus dispositivos e suas interconexões.

![Imagem](<./imagem/index-imagem-092.jpeg>)

Descrição da imagem - [./imagem/index-imagem-092.md](<./imagem/index-imagem-092.md>)

## Características da Arquitetura

1. Os modelos de Directors em uso atualmente no ambiente de SAN FICON da CAIXA que fazem a interconexão entre os storages e os mainframes são: **BROADCOM DCX-4S-B** É um director de SAN do tipo high end, para instalações com grande quantidade de dispositivos (storages, servidores, mainframes, fitotecas etc.), que utilizam a tecnologia fiber channel ou FICON para transporte dos dados, possui duas controladoras para garantir proteção, redundância e alta disponibilidade do equipamento, as velocidades das portas fiber channel podem ser de 2 8 Gbps (gigabit por segundo), pode ter até 192 portas fiber channel, abaixo temos um quadro com as informações de quantidade de equipamentos e portas deste modelo. ![Imagem](<./imagem/index-imagem-093.png>) Descrição da imagem - [./imagem/index-imagem-093.md](<./imagem/index-imagem-093.md>) A CAIXA possui atualmente 4 (quatro) directors modelo DCX-4S-B, estes equipamentos estão na SAN de Backup mainframe pois possuem portas do tipo Fiber Channel e FICON e serve para interligar os virtualizadores ORACLE VSM6, as fitotecas STORAGETEK SL8500 e os Maiframes z14 e z15, no quadro abaixo podemos ver as características de quantidade de portas de cada equipamento. **Modelo** **Qtd** **Portas** **Total portas** DCX-4S-B 4 128 1024 **BROADCOM DCX6-B** É um director de SAN do tipo high end, para instalações com grande quantidade de dispositivos (storages, servidores, mainframes, fitotecas etc.), que utilizam a tecnologia fiber channel e FICON para transporte dos dados, possui duas controladoras para garantir proteção, redundância e alta disponibilidade do equipamento, as velocidades das portas fiber channel podem ser de 8, 16 e 32 Gbps (gigabit por segundo), pode ter até 512 portas fiber channel ou 384 portas FICON, abaixo temos um quadro com as informações de quantidade de equipamentos e portas deste modelo. ![Imagem](<./imagem/index-imagem-094.png>) Descrição da imagem - [./imagem/index-imagem-094.md](<./imagem/index-imagem-094.md>) A CAIXA possui atualmente 20 (vinte) directors modelo DCX6-B, no quadro abaixo podemos ver as características de quantidade de portas de cada equipamento. **Modelo** **Qtd** **Portas** **Total portas** DCX6-B 16 288 4.608 DCX6-B 4 384 1.536

## Principais Recomendações de Uso

1. A rede SAN do ambiente FICON serve para interligar os storages PowerMax 8000 e VMAX 450F, virtualizadores ORACLE VSM6, fitotecas STORATEK SL8500 com os mainframe IBM (z14, z15 e z16).

## Exemplo de utilização

1. Interligar os Storage DELL PowerMax 8000 e VMAX 450F a um mainframe z15 ou z16.

2. Interligar um mainframe z15 ou z16 a uma fitoteca ORACLE SL8500.

3. Interligar dois storages DELL PowerMax 8000 entre os sites CTC e DTC para fins de replicação de dados.

4. Interligar dois storages DELL VMAX 450F entre os sites CTC e DTC para fins de replicação de dados.

## Demais considerações

1. Sempre que houver qualquer mudança na arquitetura proposta ou atualização de tecnologia este documento deve ser atualizado para refletir o ambiente real da CAIXA.

## Glossário

1. Controladora -- É a unidade autônoma contendo processamento, memoria, cache, portas de acesso a front-end e back-end e é responsável pelo gerenciamento, controle, acesso a discos, proteção, compressão e desduplicação entre outras tarefes importantes executadas em um subsistema de discos.

2. DWDM (Dense Wavelength Division Multiplexing ou Multiplexação Densa por Divisão de Comprimento de Onda) -- é uma tecnologia que, basicamente, usa diversos lasers para transmitir múltiplos comprimentos de onda de luz simultaneamente, multiplexando os sinais em uma única fibra óptica, e na CAIXA a utilizamos para criar uma rede de baixa latência que interliga os dois datacenters (DTC e CTC).

3. Director SAN -- É um equipamento de grande porte que permite a interconexão entre os Storages e os Servidores utilizando como meio físico de transporte a fibra optica através do protocolo Fiber Channel. Normalmente os Directors são utilizados como o CORE da rede SAN (Storage Area network).

4. FC (Fiber Channel) - É uma tecnologia de comunicação de alta velocidade que é utilizada em armazenamento de dados em rede e é utilizada principalmente para interligar servidores a sistemas de armazenamento do tipo SAN (Storage Area Network). Apesar do nome, e de ser utilizar principalmente fibras ópticas, o Fibre Channel também pode ser utilizado com cabeamento metálico.

5. FICON (Fiber Connection) - É uma tecnologia de comunicação de alta velocidade que é utilizada em armazenamento de dados em rede e é utilizada principalmente para interligar mainframes IBM System a sistemas de armazenamento do tipo SAN (Storage Area Network).

6. Front-End -- São as portas Fiber Channel utilizadas para conectar os storages aos directors da rede SAN, e são elas as portas por onde trafegam os dados entre os storages e os servidores.

7. GBIC ou SFP -- São transceivers que convertem um sinal de luz em sinal elétricos e servem para conectar os cabos de fibra optica que ligam os Storages aos Directors e Switches.

8. ICL (Inter Chassis Link) -- É uma conexão direta entre dois Directors utilizando cabos e placas especificas para estas finalidades e possuem uma largura de banda muito grande e próxima ou igual a largura de banda total do Director.

9. ISL (Inter Switch Link) -- É uma conexão direta entre dois Switches ou Directors utilizando cabos de fibras opticas e portas de acesso a hosts.

10. LUN (Logical Unit) -- Unidade de disco logica disponibilizada por um storge para ser utilizado por um servidor (host).

11. Processadores -- São responsáveis por executar todas as instruções de acesso a discos, controles, proteções, compressão e desduplicação entre outras tarefas executadas pelas controladoras.

12. SAN (Storage Area Network) -- É uma rede de alta velocidade (16 Gbps) e baixíssima latência (da ordem de microssegundos), que utiliza como meio físico a fibra optica e o protocolo Fiber Channel e é utilizada para fazer a comunicação entre os Storages e os Servidores.

13. Storages -- São subsistemas de armazenamento em disco podendo utilizar discos mecânicos (HDDs) ou drives de estado sólido (SSDs), vejamos abaixo os principais componentes de um Storage.

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 30/06/2022 | 1.0 | Criação do documento | Carlos André Porto de Souza |

[Anterior Open Bloco](infraestrutura-hardware-openblock.md) [Próximo Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](infraestrutura-hardware-san-ficon-as-is.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
