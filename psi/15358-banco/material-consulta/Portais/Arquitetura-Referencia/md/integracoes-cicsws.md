[Ir para o conteúdo](integracoes-cicsws.md#cics-ws)

Esta não é a documentação atual das arquiteturas de referência. [**Clique aqui para ir para a versão atual.**](https://arquiteturati.dep.caixa/latest)

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência CICS WS Inicializando a pesquisa [Introdução](index.md) [Aplicação](api-api.md) [Infraestrutura](infraestrutura-transmissao_arquivos.md) [Nuvem](nuvem-infraestrutura_nuvem.md) [Segurança](seguranca-seguranca.md) [Dados](dados-introducao.md) [Telecom](telecom-telecom.md) [Linhas de Negócio](frontend-plataforma-unificada.md) [Departamental](departamental-departamental.md)

**#INTERNO.TODOS**

[![logo](<./imagem/index-imagem-001.png>) Descrição da imagem - [./imagem/index-imagem-001.md](<./imagem/index-imagem-001.md>)](index.md) Arquiteturas de Referência Introdução Introdução [Introdução](index.md) [Notas da versão](notas-versao.md) Aplicação Aplicação API API [Visão Geral](api-api.md) [Swagger](api-swagger.md) [Desenvolvimento CAIXA](desenvolvimento-caixa.md) [Boas práticas MAVEN](dependencias.md) Logs Logs [Geração de Logs](logs-logs.md) [Consumo e monitoração de Log](logs-consumo-logs.md) Integrações Integrações [Visão Geral](integracoes-integracoes.md) CICS WS [CICS WS](integracoes-cicsws.md) Índice [1) CRIAR PASTAS no z/OS UNIX (JCL)](integracoes-cicsws.md#1-criar-pastas-no-zos-unix-jcl) [2) CRIAR BOOK REQUEST E RESPONSE](integracoes-cicsws.md#2-criar-book-request-e-response) [CRIAR BOOKS](integracoes-cicsws.md#criar-books) [Exemplo book legado:](integracoes-cicsws.md#exemplo-book-legado) [3) CRIAR TRANSAÇÃO CICS ASSOCIADA AO DFHPIDSH](integracoes-cicsws.md#3-criar-transacao-cics-associada-ao-dfhpidsh) [4) CRIAR PIPELINE](integracoes-cicsws.md#4-criar-pipeline) [5) CRIAR E EXECUTAR JCL DFHLS2WS](integracoes-cicsws.md#5-criar-e-executar-jcl-dfhls2ws) [5.1) Criar o JCL DFHLS2WS](integracoes-cicsws.md#51-criar-o-jcl-dfhls2ws) [5.2) Executar o JCL DFHLS2WS](integracoes-cicsws.md#52-executar-o-jcl-dfhls2ws) [6) INSTALAR WEBSERVICE](integracoes-cicsws.md#6-instalar-webservice) [7) TESTAR WSDL](integracoes-cicsws.md#7-testar-wsdl) [8) TESTAR WEBSERVICE NO SOAPUI](integracoes-cicsws.md#8-testar-webservice-no-soapui) [9) PLATAFORMA DISTRIBUÍDA JAVA](integracoes-cicsws.md#9-plataforma-distribuida-java) [10) USUÁRIO DE SERVIÇO](integracoes-cicsws.md#10-usuario-de-servico) [11) INFRA](integracoes-cicsws.md#11-infra) [MATERIAL DE REFERÊNCIA](integracoes-cicsws.md#material-de-referencia) [Histórico da Revisão](integracoes-cicsws.md#historico-da-revisao) Padrões de Arquitetura e Design Padrões de Arquitetura e Design [Padrões de Design](cleanArchitecture-design.md) [Desacoplamento Digital](cleanArchitecture-desacoplamento.md) [Clean Architecture](cleanArchitecture-cleanArchitecture.md) [DDD - Domain-Driven Design](cleanArchitecture-domainDrivenDesign.md) [Quickstarts](cleanArchitecture-repositorioProjetos.md) Microsserviços Microsserviços [Visão Geral](microsservicos-microsservicos.md) [Java Microprofile](microsservicos-microprofile.md) [Spring Boot](microsservicos-spring.md) [Segurança JWT](microsservicos-jwt.md) [Quickstarts](microsservicos-quickstarts.md) [Arquitetura .NET](microsservicos-arquitetura.md) Mobilidade Mobilidade Uso geral Uso geral [Visão Geral](mobilidade-mobilidade.md) [Archetype](mobilidade-archetype.md) Uso restrito Uso restrito [Nova Arquitetura de Mobilidade](mobilidade-mobilidade-v2.md) [Segurança para Aplicativos Móveis](mobilidade-mobilidade_seguranca.md) Frontend Frontend Uso geral Uso geral [Sigle Page Applications](frontend-spa.md) [Quickstarts](frontend-quickstarts.md) Uso restrito Uso restrito Micro Frontends Micro Frontends [Arquitetura](frontend-microfrontend.md) [Guia para desenvolvimento](frontend-guia-desenvolvimento-mf.md) [Processamento Batch](batch-spring-batch.md) [RPA](rpa-rpa.md) [ZOS Connect](zOSconnect.md) Eventos Eventos Uso restrito Uso restrito [Kafka](eventos-kafka.md) [Kafka com Quarkus](eventos-kafka-quarkus.md) [Kafka com Spring](eventos-kafka-spring.md) Infraestrutura Infraestrutura [Transmissão de Arquivos](infraestrutura-transmissao_arquivos.md) [Exadata](infraestrutura-exadata.md) [Sincronismo de Tempo](infraestrutura-sincronismo_tempo.md) Software Software [Java Development Kit](infraestrutura-software-uso-jdk.md) Hardware Hardware [Open Bloco](infraestrutura-hardware-openblock.md) [SAN FICON](infraestrutura-hardware-san-ficon-as-is.md) Backup Multiplataforma Backup Multiplataforma [Uso geral](infraestrutura-hardware-backup-multiplataforma-as-is.md) [Uso futuro](infraestrutura-hardware-backup-multiplataforma-to-be.md) SAN OPEN SAN OPEN [Uso geral](infraestrutura-hardware-san-open-as-is.md) [Uso futuro](infraestrutura-hardware-san-open-to-be.md) Uso restrito Uso restrito [SIACI](infraestrutura-unisys.md) Nuvem Nuvem [Infraestrutura](nuvem-infraestrutura_nuvem.md) Azure Virtual Desktop Azure Virtual Desktop [Uso restrito](nuvem-avd.md) [Orquestração de container](nuvem-orquestracao-container.md) [Cosmos DB](https://arquiteturati.dep.caixa/25.06/nuvem/cosmos.md) [Power BI Embedded](nuvem-power.md) [Key Vault](nuvem-key-vault.md) [Esteiras CI/CD](nuvem-esteirascicd.md) [SSO RedHat Keycloak (RHBK)](nuvem-RedHat_Keycloak.md) Segurança Segurança [Visão Geral](seguranca-seguranca.md) [Criptografia](seguranca-criptografia.md) [Identidade e Gestão de Acessos](seguranca-identidade.md) [Operações de Segurança](seguranca-operacoes.md) [Segurança no Desenvolvimento de Software](seguranca-desenvolvimento.md) [Segurança de Dados e Endpoints](seguranca-dados_endpoints.md) [Segurança de Redes e Comunicação](seguranca-redes_comunicacao.md) [Segurança de Nuvem](seguranca-nuvem.md) Casos de uso Especiais Casos de uso Especiais [Visão Geral](seguranca-casos_de_uso.md) [Openbanking](seguranca-casos_uso-openbanking.md) [Segurança de APIs](seguranca-casos_uso-seguranca_api.md) [Integração com parceiros usando protocolo Openid Connect-OAuth 2.0](seguranca-casos_uso-integracao_parceiros_openid.md) [Segurança do novo ATM](seguranca-casos_uso-novo_atm.md) Dados Dados [Diretrizes](dados-introducao.md) Bancos de Dados Bancos de Dados [Gateway de dados](dados-gateway.md) Relacional Relacional [Oracle](dados-banco_de_dados-oracle-oracle.md) NoSQL NoSQL Cache In Memory Cache In Memory [Visão Geral](dados-banco_de_dados-nosql-cache-in-memory-db-cache-in-memory.md) [Replicado](../../dados/banco_de_dados/nosql/cache-in-memory/replicado/db-cache-in-memory-replicado/index.html) Uso Restrito Uso Restrito [Distribuído](../../dados/banco_de_dados/nosql/cache-in-memory/distribuido/db-cache-in-memory-distribuido/index.html) Gestão de Arquitetura de Dados Gestão de Arquitetura de Dados Uso restrito Uso restrito [Metadados](dados-governanca_de_dados-metadados.md) [PowerDesign](dados-governanca_de_dados-powerdesign.md) Integração Integração Uso geral Uso geral [ETL](dados-etl_oracle_data_pump.md) Big Data Big Data [Big Data e Analytics](dados-big_data-big_data_e_analytics-visao_arquitetura.md) Telecom Telecom [Visão Geral](telecom-telecom.md) [Switching Datacenter](telecom-switching_datacenter.md) [Azure](telecom-azure.md) [Rede 1](telecom-rede1.md) [Rede 2](telecom-rede2.md) [Rede 3](telecom-rede3.md) [Rede 4](telecom-rede4.md) [Rede 5](telecom-rede5.md) [Rede 6](telecom-rede6.md) [Rede 7](telecom-rede7.md) [Rede Comutada Corporativa (SDLAN)](telecom-rede-local.md) [Financeira](telecom-financeira.md) [Web Proxy](telecom-webproxy.md) Call Center em Nuvem Call Center em Nuvem [Uso restrito](telecom-call_center_nuvem.md) WiFi WiFi [Uso futuro](telecom-wifi.md) Balanceamento Balanceamento [Uso futuro](telecom-Balanceamento.md) Interconexões Multicloud Interconexões Multicloud [Uso futuro](telecom-interconexoes_multicloud.md) SDWAN SDWAN [Uso futuro](telecom-sdwan.md) Contact Center Contact Center [Uso futuro](telecom-contact.md) [Segmentação e Microssegmentação](telecom-micro.md) [DNS](telecom-dns.md) [Mesa de Operações](telecom-mesa-operacoes.md) Linhas de Negócio Linhas de Negócio Canais Físicos Canais Físicos [Plataforma unificada de agências](frontend-plataforma-unificada.md) [Dossiê Digital](linhas_negocio-canais_fisicos-dossie_digital.md) Contabilidade Integrada Contabilidade Integrada [Uso Geral](linhas_negocio-contabilidade_integrada-contabilidade_integrada.md) Departamental Departamental [Arquitetura Tecnológica para Departamental](departamental-departamental.md)

Índice [1) CRIAR PASTAS no z/OS UNIX (JCL)](integracoes-cicsws.md#1-criar-pastas-no-zos-unix-jcl) [2) CRIAR BOOK REQUEST E RESPONSE](integracoes-cicsws.md#2-criar-book-request-e-response) [CRIAR BOOKS](integracoes-cicsws.md#criar-books) [Exemplo book legado:](integracoes-cicsws.md#exemplo-book-legado) [3) CRIAR TRANSAÇÃO CICS ASSOCIADA AO DFHPIDSH](integracoes-cicsws.md#3-criar-transacao-cics-associada-ao-dfhpidsh) [4) CRIAR PIPELINE](integracoes-cicsws.md#4-criar-pipeline) [5) CRIAR E EXECUTAR JCL DFHLS2WS](integracoes-cicsws.md#5-criar-e-executar-jcl-dfhls2ws) [5.1) Criar o JCL DFHLS2WS](integracoes-cicsws.md#51-criar-o-jcl-dfhls2ws) [5.2) Executar o JCL DFHLS2WS](integracoes-cicsws.md#52-executar-o-jcl-dfhls2ws) [6) INSTALAR WEBSERVICE](integracoes-cicsws.md#6-instalar-webservice) [7) TESTAR WSDL](integracoes-cicsws.md#7-testar-wsdl) [8) TESTAR WEBSERVICE NO SOAPUI](integracoes-cicsws.md#8-testar-webservice-no-soapui) [9) PLATAFORMA DISTRIBUÍDA JAVA](integracoes-cicsws.md#9-plataforma-distribuida-java) [10) USUÁRIO DE SERVIÇO](integracoes-cicsws.md#10-usuario-de-servico) [11) INFRA](integracoes-cicsws.md#11-infra) [MATERIAL DE REFERÊNCIA](integracoes-cicsws.md#material-de-referencia) [Histórico da Revisão](integracoes-cicsws.md#historico-da-revisao)

# CICS WS

O objetivo deste documento é mostrar como disponibilizar um programa COBOL para ser consumido pela baixa plataforma, através de web service CICS.

Para disponibilizar um programa COBOL online através de Web Service Cics, siga os passos abaixo:

### 1) CRIAR PASTAS no z/OS UNIX (JCL)

As seguintes pastas devem ser criadas no z/OS Unix: /u/webservices/ / /config /u/webservices/ / /shelf/ /u/webservices/ / /wsbind/ /u/webservices/ / /wslog/ /u/webservices/ / /tmp/ Para criar as pastas, copie o JCL que está em DES.SUD.V00.LIB.SAMPLE(WSCMKDIR), alterar o parâmetro e submeter o job. Informar o sistema e o nome do pipeline nos parâmetros, em letras minúsculas: SISTEMA=’sixxx’ => sistema xxx PIPELINE= ‘xxxspipe’ => nome sugerido para o pipeline soap do sistema xxx JCL template => DES.SUD.V00.LIB.SAMPLE(WSCMKDIR)

```
//
DESMKDIR
JOB
(
DES
,
SP
,
72664
,
09
,
30
),
'XXXWSC'
,
REGION
=
0
M
,
//
TIME
=
1440
,
MSGLEVEL
=
(
1
,
1
),
MSGCLASS
=
T
,
CLASS
=
N
,
NOTIFY
=&
SYSUID
//*********************************************************************
//* SCRIPT PARA CRIAR AS PASTAS NO Z/OS UNIX PARA USO
//* WEB SERVICE CICS
//*********************************************************************
//
PROCLIB
JCLLIB
ORDER
=
DES
.
V01
.
PROC
//
JOBLIB
DD
DSN
=
DES
.
TESTEB
.
LINKLIB
,
DISP
=
SHR
//
DD
DSN=END.SPD.TQS00.LOAD,DISP=SHR
//
DD
DSN=END.SPD.HOMOL.LOAD,DISP=SHR
//
DD
DSN=END.V01.LOAD,DISP=SHR
//*********************************************************************
//* PARAMETROS
//* INFORMAR OS PARAMETROS EM LETRAS MINUSCULAS
//* SISTEMA EM SET SISTEMA='sixxx'
//* PIPELINE EM SET PIPELINE='xxxspipe'
//*********************************************************************
//
PARM
EXPORT SYMLIST=(SISTEMA,PIPELINE) // SET SISTEMA='sixxx' // SET PIPELINE='xxxspipe'
//*********************************************************************
//* EXECUTA SHELL SCRIPT Z/OS UNIX - CRIACAO DA PASTA DO SISTEMA
//* no path /u/webservices/
//* VISUALIZE AS MENSAGENS DO SCRIPT NA SYSOUT DO JOB - STDOUT MKDIR
//*********************************************************************
//
MKDIR
EXEC
PGM
=
BPXBATCH
,
//
PARM
=
'SH /u/webservices/scripts/scmkdir.sh &SISTEMA &PIPELINE'
//
STDIN
DD
DUMMY
//
STDOUT
DD
SYSOUT
=
*
//
STDERR
DD
SYSOUT
=
*
//*
```

Submeta o job. As mensagens geradas pelo script das pastas geradas, pode ser visualizada na SYSOUT: DD STDOUT step MKDIR

Exemplo

JCL exemplo do sistema SISUD => DES.SUD.V00.LIB.SAMPLE(SUDMKDIR)

### 2) CRIAR BOOK REQUEST E RESPONSE

Obter as seguintes informações do programa ou rotina COBOL, que será disponibilizado com o web service Cics:

- PGMNAME: Nome do programa

- Funcionalidade do programa

- PGMINT: Tipo COMMAREA ou CHANNEL

- Book(s)

Exemplo

PGMNAME: SUDPOT01 => DES.SUD.V00.LIB.SAMPLE(SUDPOT01) Funcionalidade do programa: testesudpot01 PGMINT: CommonArea Book: SUDWIT01 => DES.SUD.V00.LIB.SAMPLE(SUDWIT01)

#### CRIAR BOOKS

Atenção

Os books criados não podem conter: - Caracteres especiais, exceto - (hífen/traço) - REDEFINES - VALUE é ignorado

**Programa novo:** os books de entrada e saída devem conter apenas os campos necessários.

**Programa legado:** que utiliza book único, devem ser criados books de entrada e saída com o mesmo tamanho do original. No book de entrada, substituir os campos de saída por FILLER. No book de saída, substituir os campos de entrada por FILLER. Veja exemplo a seguir*.

**Programa que usa vários containeres:** Deve ser gerado um book para cada container. Isto não será abordado neste tutorial.

Mais informações podem ser obtidas em [COBOL to XML schema mapping](https://www.ibm.com/support/knowledgecenter/SSGMCP_5.4.0/applications/developing/web-services/dfhws_cobol2wsdl.html)

##### Exemplo book legado:

Neste exemplo, os books serão gerados a partir do book legado. Criar book para cada chamada (entrada e saída). Retirar os caracteres :, não pode ter REDEFINES, VALUE é ignorado. Desmembrar este book.

**Book original do legado:**

```
*-----
-----------------------------------------------------------*
* SUDW
SYYY
-
BOOK
*
*-----
-----------------------------------------------------------*
02
:
SUDWSYYY
:
-
AREA
.
03
:
SUDWSYYY
:
-
ENTRADA
.
05
:
SUDWSYYY
:
-
NU-CONTA
PIC 9(012)
.
05
:
SUDWSYYY
:
-
DT-MOVIMENTO
PIC 9(008)
.
03
:
SUDWSYYY
:
-
SAIDA
.
05
:
SUDWSYYY
:
-
NU-CPF-TITULAR
PIC 9(011)
.
05
:
SUDWSYYY
:
-
NU-TIPO-PESSOA
PIC 9(001)
.
05
:
SUDWSYYY
:
-
IC-TIPO-CONTA
PIC 9(002)
.
```

Neste exemplo, foram criados dois books:

**Book de entrada (REQMEM):** Os campos da saída foram substituídos por FILLER Sugestão: renomear o item principal do book como REQUEST e retirar o prefixo do book no nome dos campos

```
*-----
-----------------------------------------------------------*
* SUDW
IYYY
-
BOOK
ENTRADA
DESMEMBRADO
PARA
WEB
SERVICE
CICS
*
*-----
-----------------------------------------------------------*
02
REQUEST
.
03
ENTRADA
.
05
NU-CONTA
PIC 9(012)
.
05
DT-MOVIMENTO
PIC 9(008)
.
03
FILLER
PIC X(014)
.
```

**BOOK SAÍDA (RESPMEM):** Os campos da entrada foram substituídos por FILLER Sugestão: renomear o item principal do book como RESPONSE e retirar o prefixo do book no nome dos campos

```
*-----
-----------------------------------------------------------*
* SUDW
IYYY
-
BOOK
ENTRADA
DESMEMBRADO
PARA
WEB
SERVICE
CICS
*
*-----
-----------------------------------------------------------*
02
RESPONSE
.
03
FILLER
PIC X(020)
.
03
SAIDA
.
05
NU-CPF-TITULAR
PIC 9(011)
.
05
NU-TIPO-PESSOA
PIC 9(001)
.
05
IC-TIPO-CONTA
PIC 9(002)
.
```

Dica

Para facilitar a contagem das posições, existe a seguinte opção no TSO: TSOSPDES G – Produtos FE - Tool Kit Desenvolvimento 13 - BE Converte BOOK COBOL

### 3) CRIAR TRANSAÇÃO CICS ASSOCIADA AO DFHPIDSH

Solicitar criação da Transação Cics. Criar uma nova transação Cics para o webservice, no AOR e outra transação no TOR.

Exemplo:

| Transaction definitions | AOR | TOR |  |  |
| --- | --- | --- | --- | --- |
| Name | SUDW | SUDW |  |  |
| Version | 1 | 2 |  |  |
| Description | TESTE SISUD WEBSERVICE -AOR- DES-TQS- DFHPIDSH | TESTE SISUD WEBSERVICE -TOR- DES-TQS- DFHPIDSH |  |  |
| First program name | DFHPIDSH | DFHPIDSH |  |  |
| Size in bytes of transaction work area (TWA) | ' 0' | ' 0' |  |  |
| Transaction profile | DFHCICST | DFHCICST |  |  |
| Default application partition set |  |  |  |  |
| Enabled status | Enabled | Enabled |  |  |
| Primed storage allocation | ' 0' | ' 0' |  |  |
| Task data location | Any | Any |  |  |
| Task data key | User | User |  |  |
| Storage clearance status | No | No |  |  |
| Runaway timeout value | SYSTEM | SYSTEM |  |  |
| Shutdown run status | Disabled | Disabled |  |  |
| Transaction isolation option | No | No |  |  |
| Bridge exit name |  |  |  |  |
| Remote attributes |  |  |  |  |
| Dynamic routing option | No | Yes |  |  |
| Dynamic routing status | No | Yes |  |  |
| Remote system name |  |  |  |  |
| Remote transaction name |  | SUDW |  |  |
| Transaction routing profile | DFHCICSS | DFHCICSS |  |  |
| Queueing on local system | N_a | N_a |  |  |
| Scheduling |  |  |  |  |
| Transaction priority | ' 1' | ' 1' |  |  |
| Transaction class number | NO | NO |  |  |
| Transaction class name | DFHCLASS | DFHCLASS |  |  |
| Aliases |  |  |  |  |
| Alias name for transaction |  |  |  |  |
| Transaction initiation |  |  |  |  |
| Alternate name (in hex) for initiating transaction |  |  |  |  |
| APPC partner transaction name |  |  |  |  |
| Alternate partner transaction name (in hex) |  |  |  |  |
| Recovery |  |  |  |  |
| Deadlock timeout value | NO | NO |  |  |
| Transaction restart facility | No | No |  |  |
| System purgeable option | No | No |  |  |
| Purgeable for terminal error option | No | No |  |  |
| Transaction dump option | Yes | Yes |  |  |
| Trace transaction activity option | Yes | Yes |  |  |
| Suppress user data in trace entries | No | No |  |  |
| Object transaction service (OTS) timeout (HHMMSS) | NO | NO |  |  |
| Indoubt attributes |  |  |  |  |
| CICS failure action | Backout | Backout |  |  |
| In-doubt wait option | Yes | Yes |  |  |
| In-doubt wait time (days) | ' 0' | ' 0' |  |  |
| In-doubt wait time (hours) | ' 0' | ' 0' |  |  |
| In-doubt wait time (minutes) | ' 0' | ' 0' |  |  |
| In-doubt failure processing action | Backout | Backout |  |  |
| Security |  |  |  |  |
| Resource security checking | No | No |  |  |
| Command level security option | No | No |  |  |
| External security manager option | N_a | N_a |  |  |
| Transaction security value | ' 1' | ' 1' |  |  |
| Resource security value | ' 0' | ' 0' |  |  |
| INSTALAR |  |  |  |  |
| Resource group | GRADES GRATQS | GRTDES GRTQS |  |  |

### 4) CRIAR PIPELINE

Caso ainda não exista, a criação do Pipeline deve ser solicitada para a equipe de suporte

Informar: Nome do pipeline, path e arquivo do config, path do shelf, path do wsbind que foram gerados no item 1

Será incluído e instalado no grupo CICS WEB DESENVOLVIMENTO: DES – GROUP GRCODWB TQS – GROUP GRCQWAOR Exemplo de criação e instalação de PIPELINE, através da ferramenta CMAS (somente equipe suporte tem acesso):

![Exemplo de criação e instalação de PIPELINE](<./imagem/index-imagem-025.png>)

Descrição da imagem - [./imagem/index-imagem-025.md](<./imagem/index-imagem-025.md>)

![Exemplo de criação e instalação de PIPELINE](<./imagem/index-imagem-026.png>)

Descrição da imagem - [./imagem/index-imagem-026.md](<./imagem/index-imagem-026.md>)

### 5) CRIAR E EXECUTAR JCL DFHLS2WS

DFHLS2WS é um programa utilitário do CICS que gera os reursos URIMAP, WEBSERVICE (wsbind, wsdl), conforme parâmetros informados. DFHWS2LS: LS = Language Structure (Cobol), 2 = To, WS = WSDL

#### 5.1) Criar o JCL DFHLS2WS

Copiar o JCL que está em DES.SUD.V00.LIB.SAMPLE(WSCLS2WS) e alterar os parâmetros. job. Exemplo: DES.SUD.V00.LIB.SAMPLE(SUDLST01)

```
//DESL
ST01
JOB
(
DES
,
SP
,
72664
,
09
,
30
),
'SUDWSC'
,
REGION
=
0
M
,
// TIM
E
=
1440
,
MSGLEVEL
=
(
1
,
1
),
MSGCLASS
=
T
,
CLASS
=
N
,
NOTIFY
=
&
SYSUID
//PROC
LIB
JCLLIB
ORDER
=
DES
.
V01
.
PROC
//
LS2WS
EXEC
DFHLS2WS
,
TMPDIR
=
'/u/webservices/sisud/sudspipe/tmp'
,
// TMP
FILE
=
'LS2WS'
//INPU
T
.
SYSUT1
DD
*
#-----
----------------------------------------------------------------
#
# ENTR
ADA
#
#-----
----------------------------------------------------------------
#
#
MAPPIN
G-LEVEL
=
4
.
3
MINIMU
M-RUNTIME-LEVEL
=
CURRENT
# -->
biblioteca
de
books
PDSLIB
=//
END
.
SPD
.
TESTE
.
BOOK
# -->
books
de
entrada
e
saida
REQMEM
=
SUDWIT01
RESPME
M
=
SUDWOT01
# -->
tipo
de
interface
PGMINT
=
COMMAREA
# -->
programa
LANG=C
OBOL
PGMNAME
=
SUDPOT01
# -->
transacao
TRANSACTION
=
SUDW
# -->
atributos
do
Web
Service
SOAP
REQUES
T-NAMESPACE
=*
https
:
//
caixa
.
gov
.
br
/
sisud
/
testesudpot01
/
req
RESPON
SE-NAMESPACE
=*
https
:
//
caixa
.
gov
.
br
/
sisud
/
testesudpot01
/
resp
URI
=/
sisud
/
testesudpot01
OPERATION-NAME
=
testesudpot01
WSDL-NAMESPACE
=
https
:
//
caixa
.
gov
.
br
/
sisud
/
testesudpot01
SOAPVE
R
=
1
.
1
# -->
encoding
do
WSDL
WSDLCP
=
UTF-8
# -->
omitir
espacos
em
branco
nas
strings
de
saida
do
XML
de
resposta
CHAR-V
ARYING
=
COLLAPSE
# -->
executar
syncpoint
SYNCON
RETURN
=
YES
#-----
----------------------------------------------------------------
#
# SAID
A
(
WSDL
E
BIND
)
#
#-----
----------------------------------------------------------------
#
# WSBI
ND
=/
u
/
webservices
/
sisud
/
sudspipe
/
wsbind
/
testesudpot01
.
wsbind
WSDL
=/
u
/
webservices
/
sisud
/
sudspipe
/
wsbind
/
testesudpot01
.
wsdl
LOGFILE
=/
u
/
webservices
/
sisud
/
sudspipe
/
wslog
/
testesudpot01
.
log
#-----
----------------------------------------------------------------
#
# DICA
S
:
#
# - IN
STALACAO
DO
WEBSERVICE
:
#
# O PI
PELINE
deve
estar
criado
#
# O WE
BSERVICE
sera
instalado
qdo
o
CICS
inicializar
no
dia
seguinte
#
# Se d
esejar
instalar
antes
disso
,
sera
preciso
entrar
nos
CICS
#
# (CIC
DAWB1
,
CICDTWB1
,
CICDAWB2
,
CICDTWB2
)
e
executar
o
comando
#
# CEMT
PERFORM
PIPE
(
sudspipe
)
SCAN
#
#
#
# - CO
NSULTAR
WEBSERVICE
NO
CICS
:
#
# exec
utar
o
comando
CEMT
I
WEBS
PIPE
(
sudspipe
)
#
#
#
# - CO
NSULTAR
O
WSDL
NO
BROWSER
(
CHROME
ou
FIREFOX
),
digitando
#
# http
s
:
//
cicsweb
.
des
.
caixa
:
32587
/
sisud
/
testesudpot01
/
?
wsdl
#
# info
rme
usuário
e
senha
#
#
#
# - TE
STAR
ACESSANDO
SERVICO
NA
FERRAMENTA
SOAPUI
:
#
# Em I
nitial
WSDL
,
informar
#
# http
s
:
//
cicsweb
.
des
.
caixa
:
32587
/
sisud
/
testesudpot01
?
wsdl
#
# depo
is
alterar
my-server
:
my-port
por
cicsweb
.
des
.
caixa
:
32587
#
# usar
Basic
authentication
,
informando
usuário
e
senha
#
#-----
----------------------------------------------------------------
#
```

#### 5.2) Executar o JCL DFHLS2WS

Submeter o job O resultado é exibido na sysout do job e também é gravado no arquivo .log na pasta u/webservices/sixxx/xxxspipe/wslog/ Obs.: Se ocorrer o seguinte erro FSUM1004 Cannot change to directory . Onde C112233 é sua matrícula, significa que o usuário ainda não tem pasta criada no z/OS Unix Executar o script de criação da pasta do usuário através do seguinte JCL:

```
//DESL
S2WS
JOB
(
DES
,
SP
,
72664
,
09
,
30
),
'D02WSC'
,
REGION
=
0
M
,
// TIM
E
=
1440
,
MSGLEVEL
=
(
1
,
1
),
MSGCLASS
=
T
,
CLASS
=
N
,
NOTIFY
=
&
SYSUID
//PROC
LIB
JCLLIB
ORDER
=
DES
.
V01
.
PROC
//*
//*---
----------------------------------------------------------------*
//* WE
B
SERVICE
CICS
*
//*---
----------------------------------------------------------------*
//*
//*********************************************************************
//* CR
IAR
PASTA
DO
USUARIO
NO
Z
/
OS
UNIX
*
//*---
----------------------------------------------------------------*
//* O
seguinte
erro
acontece
quando
não
existir
a
pasta
do
usuário
*
//* FS
UM1004
Cannot
change
to
directory
</
U
/
C123456
>
.
*
//* No
step
PARMUSER
,
substituir
o
usuario
'c123456'
*
//*---
----------------------------------------------------------------*
//PARM
USER
EXPORT
SYMLIST
=
(
USUARIO
)
// SET
USUARIO
=
'c123456'
//*---
----------------------------------------------------------------*
//MKUS
ER
EXEC
PGM
=
BPXBATCH
,
// PAR
M
=
'SH /u/webservices/scripts/scmkuser.sh &USUARIO'
//STDI
N
DD
DUMMY
//STDO
UT
DD
SYSOUT
=*
//STDE
RR
DD
SYSOUT
=*
//*
```

### 6) INSTALAR WEBSERVICE

A instalação do WEBSERVICE é feita automaticamente na reciclagem do CICS, que ocorre uma vez ao dia. Neste caso é necessário aguardar até o dia seguinte. Caso deseje instalar antes disso, então acesse o CICS e execute o seguinte comando: CEMT PERFORM PIPE( ) SCAN Exemplo: Entrar nos CICS de desenvolvimento CICDAWB1, CICDTWB1, CICDAWB2, CICDTWB2 e executar CEMT PERFORM PIPE(SUDSPIPE) SCAN

Resultando em:

PERFORM PIPE(SUDSPIPE) SCAN STATUS: RESULTS Pip(SUDSPIPE) Sca SYSID=AWB1 APPLID=CICDAWB1 RESPONSE: NORMAL TIME: 23.55.12 DATE: 20/11/20 PF 1 HELP 3 END 5 VAR 7 SBH 8 SFH 9 MSG 10 SB 11 SF SF

Obs.: Para verificar se o WEBSERVICE foi instalado, execute o seguinte commando: CEMT I WEBS PIPE(SUDSPIPE)

Resultando em:

I WEBS PIPE(SUDSPIPE) STATUS: RESULTS - OVERTYPE TO MODIFY Webs(testesudpot01 ) Pip(SUDSPIPE) Ins Ccs(00000) Uri($353550 ) Pro(SUDPOT01) Com Xopsup Xopdir I WEBS PIPE(SUDSPIPE) RESULT - OVERTYPE TO MODIFY Webservice(testesudpot01) Pipeline(SUDSPIPE) Validationst( Novalidation ) State(Inservice) Ccsid(00000) Urimap($353550) Program(SUDPOT01) Pgminterface(Commarea) Xopsupportst(Xopsupport) Xopdirectst(Xopdirect) Mappinglevel(4.3) Minrunlevel(4.3) Datestamp(20201120) Timestamp(23:53:55) Container() Wsdlfile(/u/webservices/sisud/sudspipe/wsbind/testesudpot01.wsdl) Archivefile() + Wsbind(/u/webservices/sisud/sudspipe/wsbind/testesudpot01.wsbind) SYSID=AWB1 APPLID=CICDAWB1 TIME: 23.56.57 DATE: 20/11/20

### 7) TESTAR WSDL

No navegador web (Mozilla Firefox ou Chrome), digite a url do serviço criado, seguida de ?wsdl

https://cicsweb.des.caixa:32587/sisud/testesudpot01?wsdl informe seu usuário e senha da rede

![Exemplo de teste WSDL](<./imagem/index-imagem-027.png>)

Descrição da imagem - [./imagem/index-imagem-027.md](<./imagem/index-imagem-027.md>)

![Exemplo de teste WSDL](<./imagem/index-imagem-028.png>)

Descrição da imagem - [./imagem/index-imagem-028.md](<./imagem/index-imagem-028.md>)

### 8) TESTAR WEBSERVICE NO SOAPUI

Na ferramenta SOAPUI

Clique em SOAP

Na janela New SOAP Project:

Project Name: informe o nome do projeto Initial WSDL: informe a url do wsdl serviço criado https://cicsweb.des.caixa:32587/sisud/testesudpot01?wsdl

![Exemplo SoapUI](<./imagem/index-imagem-029.png>)

Descrição da imagem - [./imagem/index-imagem-029.md](<./imagem/index-imagem-029.md>)

Se aparecer a janela Basic Authentication, informe seu usuário e senha da rede

![Exemplo SoapUI](<./imagem/index-imagem-030.png>)

Descrição da imagem - [./imagem/index-imagem-030.md](<./imagem/index-imagem-030.md>)

Na pasta do projeto, clicar em Request 1

![Exemplo SoapUI](<./imagem/index-imagem-031.png>)

Descrição da imagem - [./imagem/index-imagem-031.md](<./imagem/index-imagem-031.md>)

Na janela Request, alterar http://my-server:my-port por https://cicsweb.des.caixa:32587

![Exemplo SoapUI](<./imagem/index-imagem-032.png>)

Descrição da imagem - [./imagem/index-imagem-032.md](<./imagem/index-imagem-032.md>)

![Exemplo SoapUI](<./imagem/index-imagem-033.png>)

Descrição da imagem - [./imagem/index-imagem-033.md](<./imagem/index-imagem-033.md>)

Inserir os dados de entrada (em >?<) Clicar no botão de Submeter (triangulo verde)

![Exemplo SoapUI](<./imagem/index-imagem-034.png>)

Descrição da imagem - [./imagem/index-imagem-034.md](<./imagem/index-imagem-034.md>)

Após submeter, os dados de response (dados de saída), serão apresentados mas…

![Exemplo SoapUI](<./imagem/index-imagem-035.png>)

Descrição da imagem - [./imagem/index-imagem-035.md](<./imagem/index-imagem-035.md>)

Caso a resposta seja 401 Basic Authentication Basic, clicar em Auth … Em Authorization, escolher Add New Authorization … Na janela Add Authorization, em Type escolher Basic ...

![Exemplo SoapUI](<./imagem/index-imagem-036.png>)

Descrição da imagem - [./imagem/index-imagem-036.md](<./imagem/index-imagem-036.md>)

Informe seu usuário e senha da rede e depois clique no triangulo verde para executar

![Exemplo SoapUI](<./imagem/index-imagem-037.png>)

Descrição da imagem - [./imagem/index-imagem-037.md](<./imagem/index-imagem-037.md>)

Atenção: Lembre-se de alterar a senha no SOAPUI quando a senha de rede for alterada. Finalmente, a resposta do web service é mostrada !

![Exemplo SoapUI](<./imagem/index-imagem-038.png>)

Descrição da imagem - [./imagem/index-imagem-038.md](<./imagem/index-imagem-038.md>)

### 9) PLATAFORMA DISTRIBUÍDA JAVA

Gere o web service client, importando o wsdl através do wsimport. Serão geradas as seguintes classes

![Exemplo Plataforma Distribuída - Java](<./imagem/index-imagem-039.png>)

Descrição da imagem - [./imagem/index-imagem-039.md](<./imagem/index-imagem-039.md>)

Se necessitar expor como API RESTFUL, gerar web service REST e expor no API Manager.

### 10) USUÁRIO DE SERVIÇO

O usuário de serviço do sistema deve ser configurado no servidor Jboss. Para testes unitários na máquina do desenvolvedor Java, pode ser utilizado Basic Authentication, usuário e senha da rede.

### 11) INFRA

Mainframe: Cics Plataforma Distribuída: Java, Jboss

### MATERIAL DE REFERÊNCIA

[Creating a SOAP web service](https://www.ibm.com/support/knowledgecenter/SSGMCP_5.4.0/applications/developing/web-services/dfhws_create_app.html) [DFHLS2WS: high-level language to WSDL conversion](https://www.ibm.com/support/knowledgecenter/SSGMCP_5.4.0/applications/developing/web-services/dfhws_ls2ws.html) Criação de usuário de serviço: [TE191 - USUÁRIO DE SERVIÇO -PADRÕES PARA CRIAÇÃO, GERENCIAMENTO E USO](http://sismn.caixa/sistema/asp/ConsultaPesquisa/pdf_comum.asp?id=NTE191)

## Histórico da Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 23/11/2020 | 1.0 | Criação do tutorial | SUART02 |
| 05/03/2021 | 2.0 | Substituir DES.SUD.V00.LIB.SAMPLE por DES.SUD.V00.LIB.SAMPLE, acerto books e soapui, inclusão itens 10,11,12 | SUART02 |
| 25/10/2023 | 2.1 | Revisão do tutorial | SUART02 |

[Anterior Visão Geral](integracoes-integracoes.md) [Próximo Padrões de Design](cleanArchitecture-design.md)

2020 © Caixa Econômica Federal. Todos os direitos reservados. - [Preferências de cookies](integracoes-cicsws.md#__consent)

Made with

[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

Cookies. Usamos cookies para reconhecer suas visitas e preferências, bem como para medir a eficácia de nossa documentação. Com seu consentimento, você está nos ajudando a melhorar nossa documentação.
