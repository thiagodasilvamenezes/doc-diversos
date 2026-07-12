[Ir para o conteúdo](cleanArchitecture-desacoplamento.md#diretrizes)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Desacoplamento Digital Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) Desacoplamento Digital [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) Índice [Diretrizes](cleanArchitecture-desacoplamento.md#diretrizes) [Objetivos das ações de desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#objetivos-das-acoes-de-desacoplamento-digital-de-sistemas-legados) [Alvo das ações de desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#alvo-das-acoes-de-desacoplamento-digital-de-sistemas-legados) [Benefícios do desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#beneficios-do-desacoplamento-digital-de-sistemas-legados) [Referências](cleanArchitecture-desacoplamento.md#referencias) [Domain Driven Design (DDD)](cleanArchitecture-desacoplamento.md#domain-driven-design-ddd) [Event Driven Architect (EDA)](cleanArchitecture-desacoplamento.md#event-driven-architect-eda) [Padrão SAGA](cleanArchitecture-desacoplamento.md#padrao-saga) [Padrões de Projeto referenciados.](cleanArchitecture-desacoplamento.md#padroes-de-projeto-referenciados) [Strangler application pattern (código fonte)](cleanArchitecture-desacoplamento.md#strangler-application-pattern-codigo-fonte) [Change Data Ownership (banco de dados)](cleanArchitecture-desacoplamento.md#change-data-ownership-banco-de-dados) [Estratégia de desacoplamento digital de sistemas legados](cleanArchitecture-desacoplamento.md#estrategia-de-desacoplamento-digital-de-sistemas-legados) [Histórico da Revisão](cleanArchitecture-desacoplamento.md#historico-da-revisao) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [Diretrizes](cleanArchitecture-desacoplamento.md#diretrizes) [Objetivos das ações de desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#objetivos-das-acoes-de-desacoplamento-digital-de-sistemas-legados) [Alvo das ações de desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#alvo-das-acoes-de-desacoplamento-digital-de-sistemas-legados) [Benefícios do desacoplamento digital de sistemas legados.](cleanArchitecture-desacoplamento.md#beneficios-do-desacoplamento-digital-de-sistemas-legados) [Referências](cleanArchitecture-desacoplamento.md#referencias) [Domain Driven Design (DDD)](cleanArchitecture-desacoplamento.md#domain-driven-design-ddd) [Event Driven Architect (EDA)](cleanArchitecture-desacoplamento.md#event-driven-architect-eda) [Padrão SAGA](cleanArchitecture-desacoplamento.md#padrao-saga) [Padrões de Projeto referenciados.](cleanArchitecture-desacoplamento.md#padroes-de-projeto-referenciados) [Strangler application pattern (código fonte)](cleanArchitecture-desacoplamento.md#strangler-application-pattern-codigo-fonte) [Change Data Ownership (banco de dados)](cleanArchitecture-desacoplamento.md#change-data-ownership-banco-de-dados) [Estratégia de desacoplamento digital de sistemas legados](cleanArchitecture-desacoplamento.md#estrategia-de-desacoplamento-digital-de-sistemas-legados) [Histórico da Revisão](cleanArchitecture-desacoplamento.md#historico-da-revisao)

# Desacoplamento Digital

**Importante:** O Desacoplamento Digital se encontra em uma fase inicial de estudos/avaliação e não deve ser implementada sem a avaliação e direcionamentos da SUART. Havendo entendimento que ela se encaixa nas necessidades de seu sistema, a SUART deve ser acionada.

## Diretrizes

- Desacoplamento **:** As funções do aplicativo devem ser dissociadas ao redor dos domínios de negócios com funções interagindo com base em mensagens padronizadas e estado, em vez de integrações profundas;

- [DDD (Domain Driven Design)](cleanArchitecture-domainDrivenDesign.md) : O *DDD* é uma abordagem de modelagem de *software* que segue práticas para facilitar a implementação de regras complexas e delimitar as fronteiras de contextos de negócio.

- [Nuvem](nuvem-infraestrutura_nuvem.md) : As soluções devem ser construídas utilizando padrões que permitam a sua execução em ambiente de multinuvem.

- [Microsserviços](microsservicos-microsservicos.md) : Consiste em construir aplicações desmembrando-as em serviços independentes. Estes serviços se comunicam entre si usando interfaces bem definidas e promovem grande agilidade em times de desenvolvimento.

- [Arquitetura baseada em eventos](eventos-kafka.md) : Padrão arquitetural que reduz o acoplamento e proporciona maior flexibilidade e otimização do uso das informações. Usa eventos para acionamento e comunicação entre serviços desacoplados e é comum em aplicações modernas criadas com microsserviços.

## Objetivos das ações de desacoplamento digital de sistemas legados.

- Competitividade: lançamento de novos produtos e serviços com velocidade compatível com os principais concorrentes e *fintechs* ;

- Agilidade: Utilizar padrões e componentes que proporcionem a agilidade permitindo a organização de equipes menores e com maior potencial de entrega.

- Resiliência: Aplicações devem estar preparadas para responder e se recuperar de falhas quando elas ocorrerem, também precisam incorporar recursos de monitoramento da integridade do serviço.

- Manutenibilidade: Facilidade, precisão, segurança e economia na execução de ações de manutenção das aplicações.

- Escalabilidade: Aplicações devem ter a capacidade de continuar a funcionar bem quando seu contexto é alterado em tamanho ou volume para atender à necessidade de um usuário

## Alvo das ações de desacoplamento digital de sistemas legados.

Prioritariamente, os sistemas alvo da ação de modernização serão novas aplicações e os sistemas legados de plataforma alta ( *Mainframe* ), contudo qualquer sistema que tenha sido desenvolvido utilizando uma arquitetura monolítica e que possua um conjunto de características que o defina como um sistema legado, estará elegível para a ação de desacoplamento.

## Benefícios do desacoplamento digital de sistemas legados.

- Redução do tempo e risco de desenvolvimento ( *time-to-market* )

- Aumento da disponibilidade do software

- Oportunidade de experimentar diferentes tecnologias

## Referências

### Domain Driven Design (DDD)

O *Domain-Driven Design* , também conhecido pela sigla *DDD* , fornece uma estrutura para tomada de decisões, combinando práticas de design e desenvolvimento de software.

Centrada na lógica de negócios, ou domínio da aplicação, sua ideia básica propõe, por meio de uma coleção de padrões e princípios de design, auxiliar todo o ciclo do desenvolvimento, para construir aplicações que reflitam o real entendimento dos processos e regras do negócio.

O *DDD* está além da forma de pensar, desenhar e desenvolver o software, ela afeta a forma como as decisões de construir um software são tomadas.

### Event Driven Architect (EDA)

Em sua forma mais pura, um microsserviço deverá ter baixo acoplamento e comunicar-se idealmente utilizando *Event-driven Architecture. EDA (Event-driven Architecture)* implementa basicamente a natureza de comunicação assíncrona.

*EDA* é um *Design Pattern* arquitetural onde a comunicação entre os componentes é modelada usando eventos para realizar notificações de mudança de estado dos componentes (microsserviços) e com isso promovendo o baixo acoplamento.

Esta interação se limita ao envio de eventos por parte dos microsserviços, para um *Event Bus* (Barramento de Eventos) devendo em seguida ser despachado para todos os componentes inscritos em um tópico/fila.

Eventos são publicados por certos tipos de componentes ( *Publishers* ) e recebidos por outros ( *Subscribers* ), de forma que, tanto o *Publisher* quanto o *Subscriber* não conhecem a identidade um do outro ficando esta tarefa encarregada ao *Broker* .

### Padrão SAGA

O padrão SAGA conta com duas estratégias: Coreografia e Orquestração.

A orquestração trabalha delegando a um "orquestrador" o poder de organizar o fluxo de execução, centralizando as chamadas dos microsserviços em pequenos passos cada chamada é feita de forma sequencial, aguardando sempre a finalização de uma para começar outra. Ao falhar qualquer chamada, seja por erros sistêmicos ou regras de negócio o próprio orquestrador faz o *rollback* , chamando novamente cada serviço que completou sua ação para reverter sua parte (ações compensatórias).

Na coreografia a ideia é distribuir a responsabilidade da execução da operação entre os seus participantes, isso consiste numa estratégia de comunicação assíncrona utilizando um barramento de mensagens ( *message broker* ) como canal de publicação e subscrição para os eventos da Saga ( *EDA* ).

Esse barramento de mensagens também garante a entrega dos eventos prezando pela integridade dos dados, dessa forma, ao invés de um orquestrador invocar os serviços para executar a operação, isso é feito pelos próprios participantes da Saga através da criação e consumo de eventos.

![Diagrama Descrição gerada automaticamente](<./imagem/index-imagem-040.png>)

Descrição da imagem - [./imagem/index-imagem-040.md](<./imagem/index-imagem-040.md>)

### Padrões de Projeto referenciados.

#### Strangler application pattern (código fonte)

Consiste em refatorações no monólito de maneira incremental. Os microsserviços trabalham em conjunto ao sistema legado até o momento em que todas as funcionalidades forem migradas e o sistema legado for descontinuado.

Quanto mais externas ou secundárias forem as funcionalidades a serem migradas, menor será a complexidade porque existirão menos acoplamentos.

Por outro lado, quanto mais a migração se aproxima de funcionalidades do core do sistema, mais difícil tende a ser migração por conta de um alto nível de dependências.

![Interface gráfica do usuário Descrição gerada automaticamente com confiança média](<./imagem/index-imagem-041.png>)

Descrição da imagem - [./imagem/index-imagem-041.md](<./imagem/index-imagem-041.md>)

Conforme o padrão define, durante toda a fase de transição do monolito legado para o ecossistema de microsserviços, os dois mundos devem coexistir e poderem ser intercambiáveis para na execução de uma função de negócio, porém funcionando sempre como uma caixa preta para o cliente, ou seja, o cliente deve conhecer apenas um contrato público(interface) utilizado para chamar o sistema, mas não deve ter noção se quem responderá será o monolito legado ou algum dos microsserviços extraído, assim como não deve conhecer os protocolos de comunicação usados internamente pelo sistema.

A essa interface pública que faz o papel tanto de roteador quanto de adaptador/conversor de formatos de mensagens (parâmetros recebidos) se dá o nome de Camada Anti Corrupção ( *ACL* )

![Imagem](<./imagem/index-imagem-042.png>)

Descrição da imagem - [./imagem/index-imagem-042.md](<./imagem/index-imagem-042.md>)

#### Change Data Ownership (banco de dados)

Quando microsserviço é extraído do monólito, se for identificado um conjunto de dados que deveriam pertencer a ele deve-se movê-los para uma nova base de dados e fazer o monólito consumir esses dados do microsserviço ao invés de acessar diretamente a base de dados.

Durante as fases do processo de migração, caso ocorra a necessidade de reverter as chamadas de clientes para uma funcionalidade já extraída para um microsserviço, deve ser possível realizar replicação do banco do monolito para o banco do microsserviço.

![Diagrama Descrição geradaautomaticamente](<./imagem/index-imagem-043.png>)

Descrição da imagem - [./imagem/index-imagem-043.md](<./imagem/index-imagem-043.md>)

## Estratégia de desacoplamento digital de sistemas legados

Objetivando o maior percentual de sucesso nas ações de modernização, passos fundamentais devem ser utilizados como guias.

- Novas aplicações devem ser criadas em ambiente de nuvem, seguindo a nova arquitetura de referência digital.

- Novas funcionalidades não devem ser adicionadas ao legado. Manutenções corretivas podem continuar acontecendo enquanto o legado estiver operacional.

- Fazendo uso de *Domain Driven Design* , modelos de domínio e contextos delimitados do domínio devem ser definidos, ou seja, deve ser criada uma modularização do monolito legado baseada nas intenções do negócio.

- Extrair do legado cada um dos contextos delimitados do domínio utilizando em conjunto os padrões de projeto *Strangler application pattern* (código fonte) e *Change Data Ownership* (banco de dados)

- As extrações devem ser iniciadas pelos contextos do domínio mais secundários e que possam ser extraídos de forma independente. Os contextos do domínio principais e mais críticos do monolito legado devem ser extraídos somente nas últimas etapas da modernização do sistema.

- A comunicação entre os sistemas deve passar a ser padronizada. No cenário atual não existe uma interface padrão de comunicação sejam eles de alta ou baixa plataforma. No processo de modernização, os sistemas devem se comunicar utilizando protocolo *REST* para comunicação síncrona e Mensageria (Filas/Tópicos/ *Streams* ) para comunicação assíncrona. Deve-se sempre priorizar a comunicação assíncrona através do uso de *EDA* ( *Event Driven Architect* ) em detrimento da comunicação síncrona.

- Fluxos de transacionais tratados como um único passo no monolito legado, passam a ser divididos em pequenos e coesos subfluxos que são executados de forma independente pelos microsserviços responsáveis. Esses subfluxos são unidos através do padrão de projeto SAGA.

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 20/03/2023 | 1.0 | Criação do documento | SUART02 |

[Anterior Padrões de Design](cleanArchitecture-design.md) [Próximo Clean Architecture](cleanArchitecture-cleanArchitecture.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](cleanArchitecture-desacoplamento.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
