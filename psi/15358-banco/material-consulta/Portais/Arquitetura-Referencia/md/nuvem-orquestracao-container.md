[Ir para o conteúdo](nuvem-orquestracao-container.md#orquestracao-de-conteineres-servico-gerenciado-kubernetesk8s)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Orquestração de container Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) Orquestração de container [Orquestração de container](nuvem-orquestracao-container.md) Índice [Orquestração de Contêineres: Serviço Gerenciado Kubernetes(K8s)](nuvem-orquestracao-container.md#orquestracao-de-conteineres-servico-gerenciado-kubernetesk8s) [Master Node](nuvem-orquestracao-container.md#master-node) [API Server](nuvem-orquestracao-container.md#api-server) [Scheduller](nuvem-orquestracao-container.md#scheduller) [etcd](nuvem-orquestracao-container.md#etcd) [Controller](nuvem-orquestracao-container.md#controller) [Worker *Node*](nuvem-orquestracao-container.md#worker-node) [Kuberlet](nuvem-orquestracao-container.md#kuberlet) [Kube-proxy](nuvem-orquestracao-container.md#kube-proxy) [Pod](nuvem-orquestracao-container.md#pod) [Container](nuvem-orquestracao-container.md#container) [Sobre o Serviço Gerenciado de Kubernetes na CAIXA](nuvem-orquestracao-container.md#sobre-o-servico-gerenciado-de-kubernetes-na-caixa) [Azure Kubernetes Service (AKS)](nuvem-orquestracao-container.md#azure-kubernetes-service-aks) [Rede para Serviço de Kubernetes na CAIXA](nuvem-orquestracao-container.md#rede-para-servico-de-kubernetes-na-caixa) [Limites máximos para clusters Kubernetes na CAIXA](nuvem-orquestracao-container.md#limites-maximos-para-clusters-kubernetes-na-caixa) [Acima desses limites, deverá ser criado um novo cluster Kubernetes.](nuvem-orquestracao-container.md#acima-desses-limites-devera-ser-criado-um-novo-cluster-kubernetes) [Histórico da Revisão](nuvem-orquestracao-container.md#historico-da-revisao) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [Orquestração de Contêineres: Serviço Gerenciado Kubernetes(K8s)](nuvem-orquestracao-container.md#orquestracao-de-conteineres-servico-gerenciado-kubernetesk8s) [Master Node](nuvem-orquestracao-container.md#master-node) [API Server](nuvem-orquestracao-container.md#api-server) [Scheduller](nuvem-orquestracao-container.md#scheduller) [etcd](nuvem-orquestracao-container.md#etcd) [Controller](nuvem-orquestracao-container.md#controller) [Worker *Node*](nuvem-orquestracao-container.md#worker-node) [Kuberlet](nuvem-orquestracao-container.md#kuberlet) [Kube-proxy](nuvem-orquestracao-container.md#kube-proxy) [Pod](nuvem-orquestracao-container.md#pod) [Container](nuvem-orquestracao-container.md#container) [Sobre o Serviço Gerenciado de Kubernetes na CAIXA](nuvem-orquestracao-container.md#sobre-o-servico-gerenciado-de-kubernetes-na-caixa) [Azure Kubernetes Service (AKS)](nuvem-orquestracao-container.md#azure-kubernetes-service-aks) [Rede para Serviço de Kubernetes na CAIXA](nuvem-orquestracao-container.md#rede-para-servico-de-kubernetes-na-caixa) [Limites máximos para clusters Kubernetes na CAIXA](nuvem-orquestracao-container.md#limites-maximos-para-clusters-kubernetes-na-caixa) [Acima desses limites, deverá ser criado um novo cluster Kubernetes.](nuvem-orquestracao-container.md#acima-desses-limites-devera-ser-criado-um-novo-cluster-kubernetes) [Histórico da Revisão](nuvem-orquestracao-container.md#historico-da-revisao)

# Orquestração de container

## **Orquestração de Contêineres: Serviço Gerenciado Kubernetes(K8s)**

O *Kubernetes* é uma plataforma, disponibilizado pelo Google, para o gerenciamento de cargas de trabalho em contêineres.

Importante destacar que a solução é um projeto de código aberto que se tornou o padrão atual da indústria para a execução de cargas de trabalho de forma distribuída em grande escala, focando na portabilidade e capacidade de expansão da infraestrutura.

Os principais fornecedores de nuvem possuem seus próprios orquestradores de contêineres, todos baseados na plataforma K8s.

Apresentamos abaixo a estrutura básica de um ambiente K8s, onde temos dois ambientes de trabalho ( *worker node* ) gerenciados por uma entidade de controle denominada *master node* .

![Imagem](<./imagem/index-imagem-110.png>)

Descrição da imagem - [./imagem/index-imagem-110.md](<./imagem/index-imagem-110.md>)

### ***Master Node***

Gerência o cluster K8s e representa ponto único para todas as atividades administrativas.

Pode existir mais de um master node, em um ambiente de alta disponibilidade, porém deverá existir um *node* líder para exercer toda operação.

### ***API Server***

Executa todas as tarefas administrativas do master node.

O *API Server* recebe comandos *REST* valida as requisições, processa e as executa.

### ***Scheduller***

Gerência a agenda de execução dos diferentes *workers* nodes.

Possui as informações de carga de cada nó e considera a qualidade de serviço exigida para o serviço e outros parâmetros como gatilho para o agendamento do serviço, pode controlar o fluxo de trabalho no nível de cada Pod.

### **etcd**

É responsável pelo armazenamento compartilhado das informações críticas do cluster K8s.

Contém os dados de configuração e metadados necessários para manter a execução e orquestração da plataforma.

### ***Controller***

Agente que controla de forma contínua o estado dos objetos do cluster K8s.

### ***Worker* *Node** *

Virtualização de um servidor físico para execução de aplicações.

Nessa entidade que ocorre o acesso do mundo externo (usuários finais).

As aplicações são executadas em grupos de containers denominadas de Pods, que são controlados pelo master node.

### ***Kuberlet***

Agente executado em cada *worker* *node* para comunicação com o master node.

Recebe as definições de cada Pod e seus respectivos contêineres.

### ***Kube-proxy***

Agente executado em cada *worker* *node* .

Funciona como um *proxy* de rede selecionando as rotas de cada serviço executado no Pod.

### **Pod**

É a menor parte que a ser configurada e "deployável".

Todos os diferentes contêineres executados dentro do Pod compartilham as mesmas definições de arquivos, conexões e demais recursos compartilhados.

### ***Container***

Pacote de software, recursos e elementos necessários para execução completa de uma solução em qualquer tipo de ambiente.

O contêiner deve virtualizar o sistema operacional e demais recursos para ser portável tanto em um data center privado, como em uma nuvem pública.

## **Sobre o Serviço Gerenciado de Kubernetes na CAIXA**

O gerenciamento de um cluster K8s em geral é padronizado e portável entre diversos ambientes de nuvem.

Na CAIXA deve-se adotar, tanto para nuvem pública, quanto para nuvens privadas o serviço de gerenciamento K8s da seguinte forma:

1. Preferencialmente o gerenciador nativamente fornecido e suportado pelo provedor da nuvem que hospeda o cluster K8s.

2. No caso de soluções adquiridas, que possuam a obrigatoriedade de utilização de um determinado gerenciador K8s, para manutenção do suporte e garantia da solução, pode ser utilizado o gerenciador do fabricante da solução.

No caso do ambiente de nuvem *on premises* , onde a CAIXA criou o seu próprio ambiente, deve-se adotar como padrão o *Azure Kubernete Service* (AKS).

A utilização do AKS busca simplificar ainda mais a utilização do K8s e usufruir do suporte prestado pelo fornecedor quando o ambiente criado utiliza o virtualizador Hyper-V e sistema operacional base Windows Server.

![Imagem](<./imagem/index-imagem-111.png>)

Descrição da imagem - [./imagem/index-imagem-111.md](<./imagem/index-imagem-111.md>)

Apesar da virtualização do servidor com Windows Server, os elementos do AKS possuem o LINUX como sistema operacional, implementação amplamente conhecida de um cluster K8s.

Para um suporte completo da solução é necessário atentar para a utilização de hardwares homologados pela Microsoft.

Abaixo seguem os hardwares utilizados pela CAIXA e homologados pelo fornecedor:

![Imagem](<./imagem/index-imagem-112.png>)

Descrição da imagem - [./imagem/index-imagem-112.md](<./imagem/index-imagem-112.md>)

Configuração mínima necessária:

- X64 de no mínimo 1.4GHz

- Intel VT ou AMD-V

- 32 GB de memória

## **Azure Kubernetes Service (AKS)**

O serviço gerenciado da Microsoft utiliza as mesmas ferramentas de gestão da nuvem pública no ambiente *on premises* .

Pode-se criar um AKS cluster utilizando o Azure CLI ( *command line interface* ), Azure Portal ou Azure PowerShell.

![Imagem](<./imagem/index-imagem-113.png>)

Descrição da imagem - [./imagem/index-imagem-113.md](<./imagem/index-imagem-113.md>)

A plataforma suportada pela Microsoft segue os mesmos princípios de um cluster padrão K8s.

Obs: Diferenciais de nomenclatura entre o cluster K8s padrão e o AKS:

*Control plane* : equivale ao *master node* .

Nodes: equivale ao *worker node* .

## **Rede para Serviço de Kubernetes na CAIXA**

**Rede CNI** 1. Cada pod obtém um endereço IP da sub-rede e pode ser acessado diretamente, esses endereços IP devem ser exclusivos em todo o seu espaço de rede. 2. Cada nó tem um parâmetro de configuração para o número máximo de pods aos quais ele dá suporte. 3. O número equivalente de endereços IP por nó é então reservado antecipadamente. Essa abordagem pode levar à exaustão do endereço IP ou à necessidade de recriar os clusters em uma sub-rede maior, conforme as demandas de aplicativo aumentam, portanto, o planejamento é importante.

1. Não é utilizado NAT, o endereço de origem para o tráfego dentro da rede virtual é o IP do pod, O tráfego externo à rede virtual ainda é de NATs para o IP primário do nó.

**Rede Kubenet** 1. Apenas os worker nodes recebem um endereço IP roteável. Os pods usam NAT para se comunicarem com outros recursos fora do cluster AKS. Essa abordagem reduz o número de endereços IP que você precisa reservar no espaço de rede para uso dos pods. 2. Os worker nodes recebem um endereço IP de uma sub-rede da rede virtual. 3. Os Pods recebem um endereço IP de um espaço de endereço logicamente diferente da sub-rede da rede virtual dos worker nodes. 4. A NAT (Conversão de Endereços de Rede) é configurada para que os Pods possam alcançar recursos na rede virtual. 5. O endereço IP de origem do tráfego é convertido no endereço IP primário do nó.

| Rede Privada do Cluster K8s |  | Total de IPs por rede | Total por cluster |
| --- | --- | --- | --- |
| Rede para worker nodes | Bloco /24, por cluster | 251 | 251 |
| Aplicativos (Pods) | 192.168.0.0/16 | 65.000 | 62.750 |
| Serviços (Pods) | 10.245.0.0/22 | 1.024 | 1.020 |

- **As redes 192.168.0.0/16 e 10.245.0.0/22 são reaproveitadas em cada cluster Kubernetes.**

- **A rede 10.245.0.0/22 foi reservada pelo time de engenharia de redes para ser de uso exclusivo por clusters Kubernetes.**

## **Limites máximos para clusters Kubernetes na CAIXA**

Com estas definições e reservas de endereçamentos de rede, a infraestrutura de Kubernetes na CAIXA permitirá atendimento dos seguintes critérios:

- Cada cluster Kubernetes possuirá no máximo 250 worker nodes;

- Cada worker node pode executar no máximo 250 PODs;

- Assim, cada cluster de Kubernetes terá no máximo 62.750 PODs

A rede de aplicativos, permite um total de 65.000 endereços únicos para os PODs, sendo possível executar 250 PODs por workder node, assim, existe um limite de 250 worker nodes por cada cluster Kubernetes.

### **Acima desses limites,** deverá ser criado um novo cluster **Kubernetes.**

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 30/09/2022 | 1.0 | Criação do documento | SUART09 |
| 18/07/2023 | 2.0 | Atualização com as redes reservadas para cluster | SUART09 |

[Anterior Uso restrito](nuvem-avd.md) [Próximo Power BI Embedded](nuvem-power.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](nuvem-orquestracao-container.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
