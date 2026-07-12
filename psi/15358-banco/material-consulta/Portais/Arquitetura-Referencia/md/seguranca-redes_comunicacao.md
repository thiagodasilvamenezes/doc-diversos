[Ir para o conteúdo](seguranca-redes_comunicacao.md#seguranca-de-redes-e-comunicacao)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Segurança de Redes e Comunicação Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) Segurança de Redes e Comunicação [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) Índice [1 - Firewall](seguranca-redes_comunicacao.md#1-firewall) [2 - IDS/IPS](seguranca-redes_comunicacao.md#2-idsips) [3 - Proxy](seguranca-redes_comunicacao.md#3-proxy) [4 - CASB](seguranca-redes_comunicacao.md#4-casb) [5 - Anti DDoS](seguranca-redes_comunicacao.md#5-anti-ddos) [6 - NPB - Network Packet Broker](seguranca-redes_comunicacao.md#6-npb-network-packet-broker) [7 - Network Security Policy Configuration](seguranca-redes_comunicacao.md#7-network-security-policy-configuration) [8 - Acesso Remoto](seguranca-redes_comunicacao.md#8-acesso-remoto) [9 - Clean Pipe](seguranca-redes_comunicacao.md#9-clean-pipe) [10 - SASE (Security Access Service Edge)](seguranca-redes_comunicacao.md#10-sase-security-access-service-edge) [11 - CAPTCHA (Completely Automated Public Turing test to tell Computers and Humans Apart)](seguranca-redes_comunicacao.md#11-captcha-completely-automated-public-turing-test-to-tell-computers-and-humans-apart) [12 - NDR – Network Detection and Response](seguranca-redes_comunicacao.md#12-ndr-network-detection-and-response) [13 - NAC – Network Detection and ResponseNetwork Access Control](seguranca-redes_comunicacao.md#13-nac-network-detection-and-responsenetwork-access-control) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [1 - Firewall](seguranca-redes_comunicacao.md#1-firewall) [2 - IDS/IPS](seguranca-redes_comunicacao.md#2-idsips) [3 - Proxy](seguranca-redes_comunicacao.md#3-proxy) [4 - CASB](seguranca-redes_comunicacao.md#4-casb) [5 - Anti DDoS](seguranca-redes_comunicacao.md#5-anti-ddos) [6 - NPB - Network Packet Broker](seguranca-redes_comunicacao.md#6-npb-network-packet-broker) [7 - Network Security Policy Configuration](seguranca-redes_comunicacao.md#7-network-security-policy-configuration) [8 - Acesso Remoto](seguranca-redes_comunicacao.md#8-acesso-remoto) [9 - Clean Pipe](seguranca-redes_comunicacao.md#9-clean-pipe) [10 - SASE (Security Access Service Edge)](seguranca-redes_comunicacao.md#10-sase-security-access-service-edge) [11 - CAPTCHA (Completely Automated Public Turing test to tell Computers and Humans Apart)](seguranca-redes_comunicacao.md#11-captcha-completely-automated-public-turing-test-to-tell-computers-and-humans-apart) [12 - NDR – Network Detection and Response](seguranca-redes_comunicacao.md#12-ndr-network-detection-and-response) [13 - NAC – Network Detection and ResponseNetwork Access Control](seguranca-redes_comunicacao.md#13-nac-network-detection-and-responsenetwork-access-control)

# Segurança de Redes e Comunicação

O conjunto de soluções de proteção à datacenters engloba:

- Firewall/Application Firewall,

- IDS/IPS (Intrusion Detection/Prevention System)

- CASB (Cloud Access Security Broker)

- Anti DDoS

- Proxy

- Acesso Remoto

- Clean Pipe

- SASE (Secure Access Service Edge)

- Captcha (Completely Automated Public Turing test to tell Computers and Humans Apart)

- NDR (Network Detection and Response)

As soluções trabalham integradas, proporcionando: - Detecção e bloqueio de acessos maliciosos - Detecção e bloqueio de ataques de negação de serviço - Geração de eventos para o correlacionador de eventos - Acesso seguro a sistemas e informações disponíveis na nuvem - Proteção dos usuários externos ao acessarem serviços na Internet.

**Arquitetura de Referência:**

![Visão Geral](<./imagem/index-imagem-151.png>)

Descrição da imagem - [./imagem/index-imagem-151.md](<./imagem/index-imagem-151.md>)

**Camada de Segurança em Nuvem**

- 100% das aplicações expostas na internet

- Resiliência com alta disponibilidade

- Serviço de DNSSEC, primário e secundário na nuvens

**Camada de Segurança nas Operadoras**

- Bloqueio de origem desconhecida

- Clean pipe com regras definidas automatizadas

**Camada de Segurança On-premise**

- Segurança adicional para conexões extranet(parceiros)

- AntiDDos dedicado com desvio de tráfego malicioso para nuvem

- Appliances modernos com features que adicionam segurança na rede

- DNS interno que pode ser utilizado como contigência da nuvem

**Camada de Segurança de Aplicação**

- Desafio customizado na aplicação ativado por parâmetro quando identificada a necessidade de uso

### 1 - Firewall

A solução de Firewall tem por objetivo garantir que somente as conexões permitidas sejam estabelecidas com o ambiente de TI Caixa. A partir de regras definidas na solução é possível definir as origens e destinos autorizados, considerando-se endereços IPs e protocolos. O firewall de próxima geração (Next Generation Firewall) agrega ainda funcionalidades de combate a vulnerabilidade, intrusão e malware.

**Situação atual:** Firewall tradicional.

**Situação alvo:** Aquisição de Next Generation Firewall com capacidade compatível com a nova realidade de serviços da Caixa. (Em prospecção)

### 2 - IDS/IPS

Solução que atua na detecção e prevenção contra diversos ataques de intrusão. O IPS atua de forma complementar ao Firewall, podendo ser embarcado no firewall ou ser um componente autônomo. Assim como o firewall, o IPS também possui uma evolução denominada Next Generation IPS, que agrega funcionalidades avançadas, não encontradas no IPS convencional.

**Situação atual:** Existe IPS, porém apenas em uma entrada.

**Situação alvo:** Next Generation IPS dedicado e dimensionado para a realidade de negócio da Caixa. (Em prospecção)

### 3 - Proxy

A solução de proxy atua como um intermediário entre a rede interna e a Internet, possibilitando a conversão dos endereços internos em endereços reconhecidos na Internet, além de funcionalidades como: filtro de páginas web, baseado na política corporativa de acesso à Internet; antimalware para impedir que o acesso à internet cause uma infecção na rede.

**Situação atual:** Solução em produção defasada tecnologicamente.

**Situação alvo:** Nova solução adquirida, em processo de implantação.

### 4 - CASB

Cloud Access Security Broker (CASB) é uma solução que fica entre a infraestrutura interna e a nuvem, e tem como objetivos principais apresentar visibilidade do tráfego em trânsito para fora da organização como também do tráfego para aplicações hospedadas na nuvem.

**Situação atual:** Microsoft Defender for Cloud Apps. Uso restrito mediante autorização GECMI/SUART.

### 5 - Anti DDoS

O Anti DDoS combate ataques de negação de serviço. A solução, também, é capaz de deter ataques automatizados não baseados em volumetria.

**Situação atual:** Não existe appliance dedicado AntiDDos (camada 3). Somente disponível em serviço de segurança em nuvem contratada e no serviço de clean pipe das operadoras.

**Situação alvo:** Solução híbrida, contemplando recursos on-premise e quando identificado algum tráfego malicioso o mesmo é tratado na nuvem desonerando a rede interna. (Em prospecção)

### 6 - NPB - Network Packet Broker

Um NPB (Network Packet Broker) é um dispositivo que otimiza o fluxo de tráfego entre conexões TAP e SPAN, ferramentas de monitoramento, segurança e aceleração de rede. Mantendo um mapeamento de portas de muitas para muitas (M:M), o NPB pode direcionar o tráfego de rede de forma eficiente, e os filtros podem ser aplicados para otimizar o uso da largura de banda na rede.

**Situação atual:** Não existe na CAIXA.

**Situação alvo:** Solução será adquirida e implantada.

### 7 - Network Security Policy Configuration

Uma solução de Network Security Policy Configuration permite um gerenciamento centralizado e fácil das configurações dos ativos de segurança, em especial dos firewalls.

**Situação atual:** Não existe na CAIXA. (Em prospecção)

### 8 - Acesso Remoto

Uma solução de Acesso Remoto permite o acesso dos colaboradores, a partir da Internet, à rede Interna da CAIXA, com segurança, facilidade e bom desempenho.

**Situação atual:** Solução de VPN da CISCO.

**Situação alvo:** Solução de acesso remoto, independente de VPN, que garanta um acesso seguro, boa experiência para o usuário e boa performance.

### 9 - Clean Pipe

O Clean Pipe é uma solução de mitigação parcial de DDoS para empresas on-line e sites de missão crítica que exigem proteção em tempo real contra ataques volumétricos DDoS.

**Situação atual:** Serviço contratado nas operadoras Embratel e Algar.

**Situação alvo:** Regras implementadas com bloqueios automatizados.

### 10 - SASE (Security Access Service Edge)

SASE, que significa Secure Access Service Edge, é uma arquitetura de rede que combina recursos de rede com recursos de segurança nativos da nuvem, como gateways da web seguros, agentes de segurança de acesso à nuvem, firewalls e acesso à rede de confiança zero. Essas funcionalidades são fornecidas a partir da nuvem e geralmente são fornecidas como um serviço.

**Situação atual:** Serviço contratado da empresa Azion.

### 11 - CAPTCHA (Completely Automated Public Turing test to tell Computers and Humans Apart)

CAPTCHA é um acrônimo da expressão "Completely Automated Public Turing test to tell Computers and Humans Apart" (teste de Turing público completamente automatizado para diferenciação entre computadores e humanos), um teste de desafio cognitivo utilizado como ferramenta antispam. Como o teste é administrado por um computador, em contraste ao teste de Turing padrão que é administrado por um ser humano, este teste é na realidade corretamente descrito como um teste de Turing reverso.

**Situação atual:** Serviço será fornecido pela empresa Azion na camada do SASE.

## 12 - NDR – Network Detection and Response

Solução projetada para detectar ameaças cibernéticas que trafegam na rede, usa Machine Learning com análise de dados, baseando-se em modelos de comportamento construídos ao examinar continuamente o tráfego para identificar padrões anômalos. Incorpora funcionalidade de resposta, gera alertas para auxiliar a investigação de incidentes e neutralização de ameaças.

**Situação Atual:** Em prospecção

## 13 - NAC – Network Detection and ResponseNetwork Access Control

O Network Access Control (NAC) é a Solução de segurança de rede que permite controlar o acesso de dispositivos na infraestrutura de rede da CAIXA, para verificar se os elementos que solicitam acesso à rede satisfazem determinados critérios de segurança, como atualizações de software, configurações de segurança e conformidade com políticas de segurança, antes de permitir que sejam conectados, afim de proteger a rede contra ameaças externas e internas, como malware, vírus e ataques de hackers, oferecendo monitoramento e gerenciamento dos ativos.

O Network Access Control (NAC) está posicionado em vários pontos da arquitetura da rede de forma a atender as necessidades de segurança.

**Situação atual:** A Solução CISCO ISE instalada em dois cluster segregados no CTC para suportar a rede cabeada e no DTC, para suportar a rede VPN, ambos sem balanceamento de carga e contingência.

**Situação alvo:** Solução de NAC implantada na CAIXA de alta disponibilidade com redundância intrasite e intersites (CTC/DTC).

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 18/08/2023 | 1.2 | Revisão abordagem CDN | Marcelo Lima |
| 31/01/2023 | 1.1 | Revisão c/inclusão da solução NAC | Marcelo Lima |
| 28/11/2022 | 1.0 | Revisão | Renato Fontinele Viana |

[Anterior Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Próximo Segurança de Nuvem](seguranca-nuvem.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](seguranca-redes_comunicacao.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
