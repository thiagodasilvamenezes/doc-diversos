[Ir para o conteúdo](infraestrutura-transmissao_arquivos.md#arquitetura-para-transmissao-de-arquivos)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Transmissão de Arquivos Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) [CICS WS](integracoes-cicsws.md) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura Transmissão de Arquivos [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) Índice [B2B](infraestrutura-transmissao_arquivos.md#b2b) [Objetivo](infraestrutura-transmissao_arquivos.md#objetivo) [Características da Arquitetura](infraestrutura-transmissao_arquivos.md#caracteristicas-da-arquitetura) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura) [Principais Recomendações de uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso) [Troca de arquivos entre Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos) [Troca de arquivos entre Sistemas Corporativos e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos-e-entidades-externas) [Troca de arquivos entre Gestores da Informação e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-gestores-da-informacao-e-entidades-externas) [Troca de arquivos entre Gestores da informação e Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-gestores-da-informacao-e-sistemas-corporativos) [Troca de arquivos entre unidades e entidades externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-unidades-e-entidades-externas) [Exemplos de utilização](infraestrutura-transmissao_arquivos.md#exemplos-de-utilizacao) [Exemplo de swagger](infraestrutura-transmissao_arquivos.md#exemplo-de-swagger) [Demais considerações](infraestrutura-transmissao_arquivos.md#demais-consideracoes) [File Gateway](infraestrutura-transmissao_arquivos.md#file-gateway) [Características da Arquitetura](infraestrutura-transmissao_arquivos.md#caracteristicas-da-arquitetura_1) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura_1) [Principais Recomendações de uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso_1) [CONNECT:DIRECT](infraestrutura-transmissao_arquivos.md#connectdirect) [Objetivo](infraestrutura-transmissao_arquivos.md#objetivo_1) [Características arquiteturais](infraestrutura-transmissao_arquivos.md#caracteristicas-arquiteturais) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura_2) [Principais Recomendações de Uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso_2) [Troca de arquivos entre Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos_1) [Troca de arquivos entre Sistemas Corporativos de Plataforma Alta e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos-de-plataforma-alta-e-entidades-externas) [Troca de arquivos entre unidades e entidades externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-unidades-e-entidades-externas_1) [Tecnologias em descontinuidade](infraestrutura-transmissao_arquivos.md#tecnologias-em-descontinuidade) [Definições, acrônimos e abreviações](infraestrutura-transmissao_arquivos.md#definicoes-acronimos-e-abreviacoes) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [B2B](infraestrutura-transmissao_arquivos.md#b2b) [Objetivo](infraestrutura-transmissao_arquivos.md#objetivo) [Características da Arquitetura](infraestrutura-transmissao_arquivos.md#caracteristicas-da-arquitetura) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura) [Principais Recomendações de uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso) [Troca de arquivos entre Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos) [Troca de arquivos entre Sistemas Corporativos e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos-e-entidades-externas) [Troca de arquivos entre Gestores da Informação e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-gestores-da-informacao-e-entidades-externas) [Troca de arquivos entre Gestores da informação e Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-gestores-da-informacao-e-sistemas-corporativos) [Troca de arquivos entre unidades e entidades externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-unidades-e-entidades-externas) [Exemplos de utilização](infraestrutura-transmissao_arquivos.md#exemplos-de-utilizacao) [Exemplo de swagger](infraestrutura-transmissao_arquivos.md#exemplo-de-swagger) [Demais considerações](infraestrutura-transmissao_arquivos.md#demais-consideracoes) [File Gateway](infraestrutura-transmissao_arquivos.md#file-gateway) [Características da Arquitetura](infraestrutura-transmissao_arquivos.md#caracteristicas-da-arquitetura_1) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura_1) [Principais Recomendações de uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso_1) [CONNECT:DIRECT](infraestrutura-transmissao_arquivos.md#connectdirect) [Objetivo](infraestrutura-transmissao_arquivos.md#objetivo_1) [Características arquiteturais](infraestrutura-transmissao_arquivos.md#caracteristicas-arquiteturais) [Topologia da Arquitetura](infraestrutura-transmissao_arquivos.md#topologia-da-arquitetura_2) [Principais Recomendações de Uso](infraestrutura-transmissao_arquivos.md#principais-recomendacoes-de-uso_2) [Troca de arquivos entre Sistemas Corporativos](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos_1) [Troca de arquivos entre Sistemas Corporativos de Plataforma Alta e Entidades Externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-sistemas-corporativos-de-plataforma-alta-e-entidades-externas) [Troca de arquivos entre unidades e entidades externas](infraestrutura-transmissao_arquivos.md#troca-de-arquivos-entre-unidades-e-entidades-externas_1) [Tecnologias em descontinuidade](infraestrutura-transmissao_arquivos.md#tecnologias-em-descontinuidade) [Definições, acrônimos e abreviações](infraestrutura-transmissao_arquivos.md#definicoes-acronimos-e-abreviacoes)

# Arquitetura para Transmissão de Arquivos

## B2B

**Assunto:** Centralizado Multiplataforma Software

**Solução:** TRANSMISSÃO DE ARQUIVOS

**Nome do Software:** *IBM STERLING B2B INTEGRATOR*

**Fabricante:** IBM

**Contrato de Garantia e/ou Suporte:** 13164/2019

### Objetivo

Software de transmissão de arquivos que permite a automação de processos e comunicações de negócios entre dois ou mais sistemas ou entidades externas à Caixa.

### Características da Arquitetura

Fornece uma plataforma flexível, disponível no local ou por meio de cloud híbrida, que suporta a transformação de dados e a maioria dos protocolos de comunicação.

Fornece suporte de contêiner certificado e atinge alta disponibilidade para operações com IBM Sterling Global Mailbox.

Permite reduzir os custos ao realizar a consolidação em uma única plataforma e automatizar os processos de B2B oferecendo governança, aderência aos padrões e visibilidade para esses processos.

### Topologia da Arquitetura

![Figura 1: Topologia B2B](<./imagem/index-imagem-002.png>)

Descrição da imagem - [./imagem/index-imagem-002.md](<./imagem/index-imagem-002.md>)

### Principais Recomendações de uso

#### Troca de arquivos entre Sistemas Corporativos

A troca de arquivos entre sistemas ocorre para processamento massivo de informações, quando não há a possibilidade da integração online.

Entre Sistemas de Plataforma Alta, caso exista a necessidade de validação ou transformação do arquivo.

Entre Sistemas de Plataforma Baixa ou entre Sistemas de Plataforma Alta e Baixa, em qualquer cenário deverá ser utilizado o B2B.

#### Troca de arquivos entre Sistemas Corporativos e Entidades Externas

Troca de arquivos com clientes/parceiros externos em qualquer cenário na plataforma baixa e na plataforma alta, caso haja a necessidade de validação ou transformação do arquivo.

#### Troca de arquivos entre Gestores da Informação e Entidades Externas

As trocas de arquivos entre Gestores da Informação e Entidades Externas, ocorrerão após a identificação e autenticação do usuário em área logada.

Para casos excepcionais, os Gestores da Informação deverão seguir as normas definidas na TE213 - GESTÃO DE RISCOS DE TI

#### Troca de arquivos entre Gestores da informação e Sistemas Corporativos

As trocas de arquivos entre Gestores da Informação e Sistemas Corporativos, ocorrerão após a identificação e autenticação do usuário em área logada.

Para casos excepcionais, os Gestores da Informação deverão seguir as normas definidas na TE213 - GESTÃO DE RISCOS DE TI

#### Troca de arquivos entre unidades e entidades externas

Não é autorizado.

Para casos excepcionais, os Gestores da Informação deverão seguir as normas definidas na TE213 - GESTÃO DE RISCOS DE TI.

### Exemplos de utilização

Informações que o desenvolvedor deve buscar para a conexão de acordo com protocolo utilizado:

- Connect: usuário, node remoto, porta, caminho para catalogar (opcional). Válido para envio e para captura.

- SFTP: ip/porta, usuário, senha e caminho para catalogar, opcionalmente, chave pública.

- FTPS: a mesma coisa do sftp trocando chave pública por certificado.

- Webdav: DNS, usuário, senha e caminho para get.

- MQSeries: usuário, senha, ip, queueManeger, canal, fila ou tópico (dependendo da necessidade).

- NFS: compartilhamento (FQDN) e mount point no SO.

- HTTP: geralmente tem um swagger*

- API: necessário enviar token no HEADER com realm INTERNET ou INTRANET, o BODY pode ser JSON ou form-data, dependendo do projeto.

#### Exemplo de *swagger*

```
swagger
:
"2.0"
i
nf
o
:
versio
n
:
"0.0.0.1"
t
i
tle
:
"SIGIC"
basePa
t
h
:
"/app/sigic/api"
ta
gs
:
-
na
me
:
"/api/integracao/b2b"
pa
t
hs
:
/i
nte
gracao/b
2
b/regis
trar
-e
n
vio
:
pos
t
:
ta
gs
:
-
"/api/integracao/b2b"
summary
:
"Registrar o envio de arquivo QUOD pelo B2B"
descrip
t
io
n
:
""
opera
t
io
n
Id
:
"registrarEnvio"
co
nsu
mes
:
-
"application/json"
produces
:
-
"application/json"
parame
ters
:
-
i
n
:
"body"
na
me
:
"body"
descrip
t
io
n
:
"Dados do envio"
required
:
true
schema
:
$re
f
:
"#/definitions/TransmissaoEnvioDTO"
-
na
me
:
"Authorization"
i
n
:
"header"
descrip
t
io
n
:
"Token de acesso"
required
:
true
respo
nses
:
200
:
descrip
t
io
n
:
"Dados registrados com sucesso"
405
:
descrip
t
io
n
:
"Valor inválido"
de
f
i
n
i
t
io
ns
:
Tra
ns
missaoE
n
vioDTO
:
t
ype
:
"object"
proper
t
ies
:
id
:
t
ype
:
"integer"
f
orma
t
:
"int64"
descrip
t
io
n
:
"Id da remessa"
d
t
CriacaoArquivo
:
t
ype
:
"string"
f
orma
t
:
"date-time"
descrip
t
io
n
:
"Momento de criação do arquivo"
icSi
tua
caoProcessame
nt
o
:
t
ype
:
"string"
descrip
t
io
n
:
"Situação do processamento"
```

### Demais considerações

O B2B não fará validações de campos ou regras de negócio.

As validações serão feitas através do JAR desenvolvido pela comunidade responsável pela aplicação.

O JAR desenvolvido retornará um RETURN CODE e uma mensagem de texto. O RETURN CODE igual a ‘0’ (zero) indicará que o arquivo foi validado com sucesso e o B2B entregará o arquivo ao destinatário. Caso o JAR entregue o RETURN CODE diferente de ‘0’ (zero), o B2B devolverá para o remetente um arquivo com mesmo nome do arquivo transmitido e extensão .ERR que conterá o return code no header e até 100 linhas de 80 posições detalhando o erro, estes, fornecidos opcionalmente pelo jar validador.

## File Gateway

Software de transmissão de arquivos que permite a automação de processos e comunicações de negócios entre dois ou mais sistemas ou entidades externas à Caixa.

### Características da Arquitetura

O SFG funciona com templates já configurados, facilitando a reutilização e diminuindo o tempo de atendimento das demandas de negócio, não sendo necessário acionar a fábrica para criar um Bussines Process - BP para transmissão de arquivos entre sistemas da CAIXA ou entidades externas.

É indicado para transmissões simples que NÃO possuam regras de negócio complexas para serem validadas através de Bussines Process.

Atividades básicas como checksum (verificar integridade) do arquivo, antivírus e compactação e descompactação também podem ser realizadas pelo File Gateway.

Permite usar os mesmos protocolos de transmissão que o B2B utiliza.

### Topologia da Arquitetura

![Figura 1: Topologia B2B](<./imagem/index-imagem-003.png>)

Descrição da imagem - [./imagem/index-imagem-003.md](<./imagem/index-imagem-003.md>)

### Principais Recomendações de uso

Recomendado para as transmissões de arquivos que NÃO envolvam a implementação de regras de negócio ou somente atividades simples como compactação, descompactação, antivírus, checagem de integridade do arquivo, etc.

## CONNECT:DIRECT

**Assunto:** Centralizado Multiplataforma Software

**Solução:** TRANSMISSÃO DE ARQUIVOS

**Nome do Software:** *IBM CONNECT:DIRECT FOR Z/OS*

**Fabricante:** IBM

**Contrato de Garantia e/ou Suporte:** 13164/2019

### Objetivo

Software de transmissão de arquivos otimizado para alto volume, segurança e com entrega garantida de arquivos para sistemas corporativos da plataforma mainframe.

### Características arquiteturais

O Connect:Direct é um software que oferece transferências de arquivos ponto a ponto altamente seguras, destinado a operação autônoma 24 horas por dia e 7 dias por semana. Fornece entrega garantida, alto volume e troca de dados segura dentro e entre sistemas corporativos e entidades externas. Ele é otimizado para alto desempenho e taxa de transferência e move arquivos contendo qualquer tipo de dados (texto, EDI, binário, conteúdo digital, imagem) em várias plataformas, sistemas de arquivos distintos e mídias distintas.

Possui os seguintes benefícios:

- Previsibilidade - garante a entrega por meio de agendamento automatizado, reinício do ponto de verificação e recuperação / nova tentativa automática. Se uma transmissão de dados for interrompida, a transmissão tenta reiniciar em um intervalo predefinido por um período configurado. Todas as atividades e estatísticas são registradas para que haja trilhas de auditoria verificáveis de todas as ações.

- Segurança - garante que as informações do cliente permaneçam privadas por meio de um protocolo proprietário e oferece segurança básica por meio de autenticação e proxies de usuário. Suporta uma solução criptográfica abrangente (IBM Connect: Direct Secure Plus) que fornece autenticação mútua forte usando certificados X.509, criptografia de dados SSL e TLS e verificação de integridade de dados.

- Desempenho - Lida com as cargas mais exigentes, de grandes volumes de arquivos pequenos a arquivos de terabytes.

### Topologia da Arquitetura

Cada transferência de arquivos envolve um servidor IBM Connect: Direct local e um remoto (também conhecido como nós). Os dois servidores trabalham juntos para realizar o trabalho em um relacionamento ponto a ponto. O servidor que inicia a conexão é o nó primário (PNODE) da conexão e o servidor que recebe a conexão é o nó secundário (SNODE). Um servidor IBM Connect: Direct pode gerenciar várias conexões simultâneas com outros servidores IBM Connect: Direct e pode atuar como PNODE e SNODE.

![Figura 2: Topologia Connect](<./imagem/index-imagem-004.png>)

Descrição da imagem - [./imagem/index-imagem-004.md](<./imagem/index-imagem-004.md>)

### Principais Recomendações de Uso

#### Troca de arquivos entre Sistemas Corporativos

A troca de arquivos entre sistemas ocorre para processamento massivo de informações, quando não há a possibilidade da integração online.

Entre Sistemas de Plataforma Alta caso não exista a necessidade de validação ou transformação do arquivo.

#### Troca de arquivos entre Sistemas Corporativos de Plataforma Alta e Entidades Externas

Troca de arquivos com clientes/parceiros externos na plataforma alta, caso não haja a necessidade de validação ou transformação do arquivo.

#### Troca de arquivos entre unidades e entidades externas

Não é autorizado.

## Tecnologias em descontinuidade

- PELICAN

- SIGDB

## Definições, acrônimos e abreviações

| Termo | Definição |
| --- | --- |
| B2B | IBM Sterling B2B Integrator |
| RETURN CODE | Código de retorno de um processamento |
| JAR | É um arquivo compactado usado para distribuir um conjunto de classes Java, um aplicativo java, ou outros itens como imagens, XMLs, entre outros. É usado para armazenar classes compiladas e metadados associados que podem constituir um programa. |
| Connect:Direct | IBM Connect:Direct for z/OS |

[Anterior Kafka com Spring](eventos-kafka-spring.md) [Próximo Exadata](infraestrutura-exadata.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](infraestrutura-transmissao_arquivos.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
