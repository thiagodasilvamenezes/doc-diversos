# ‘Controle do Documento

Informação do Documento

|  |  |  |  |
|----|----|----|----|
| N<sup>o</sup> Versão do Doc: | 05 | Data da Versão do Doc: | 21/03/2024 |
| Preparado Por: | Alessandra Barbarino | Data de Preparação: | 08/11/2021 |
| Revisado Por: | Alessandra Barbarino | Data da Revisão: | 21/03/2024 |

# 1. Introdução 

Esse documento tem por objetivo apresentar as informações necessárias para que os DBAs da

CESOB011-NPRD possam, fazendo uso do mesmo, acessar o ambiente Social ( RJ ) e gerar, por exemplo, uma DDL para os ambientes de DESE, TQS, HMP e PRD. Tal documento foi preparado visando o atendimento aos RDBMS SQL Server, Oracle e Postgree ( HAWQ ). Esse documento possibilitará também, identificar as permissões necessárias que o DBA deva ter para poder fazer tal atendimento.

**2. Infraestrutura**

<table style="width:98%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr>
<th colspan="4"><strong>SQL SERVER - Desenvolvimento</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
<td>Versão</td>
</tr>
<tr>
<td>SRJDEDADNT030</td>
<td>10.116.92.87</td>
<td>SQLDES01</td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>SRJDEDADNT024</td>
<td>10.116.93.114</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>SRJDEDADNT029</td>
<td>10.116.93.151</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>CRJDEDADNT009</td>
<td>10.116.100.127</td>
<td></td>
<td>1433</td>
<td>Sql Server 2019</td>
</tr>
<tr>
<td colspan="4"><strong>SQL SERVER - TQS</strong></td>
<td></td>
</tr>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
<td>Versão</td>
</tr>
<tr>
<td>SRJTQDADNT0003</td>
<td>10.116.28.45</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>CRJTQDADNT010</td>
<td>10.116.29.228</td>
<td></td>
<td>1433</td>
<td>Sql Server 2019</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 36%" />
<col style="width: 14%" />
<col style="width: 41%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr>
<th colspan="4" style="text-align: center;">ORACLE Exadata - Desenvolvimento</th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>INSTANCIA</td>
<td>Porta</td>
</tr>
<tr>
<td>SSH:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>cnpexdadvm01clu01.extra.caixa.gov.br</td>
<td>10.116.101.1</td>
<td>orad01sc1, orad02sc1, orad03sc1, orad04sc1</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm02clu01.extra.caixa.gov.br</td>
<td>10.116.101.2</td>
<td>orad01sc2, orad02sc2, orad03sc2, orad04sc2</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm03clu01.extra.caixa.gov.br</td>
<td>10.116.101.3</td>
<td>orad01sc3, orad02sc3, orad03sc3, orad04sc3</td>
<td>1521</td>
</tr>
<tr>
<td>VIP’s:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td>10.116.101.4</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.5</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.6</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td>SCAN:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td>10.116.101.7</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.8</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.9</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td colspan="4">ORACLE Exadata - TQS</td>
</tr>
<tr>
<td>cnpexdadvm02clu02.extra.caixa.gov.br</td>
<td>10.116.33.1</td>
<td>orat01sc1, orat02sc1</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm03clu02.extra.caixa.gov.br</td>
<td>10.116.33.2</td>
<td>orat01sc2, orat02sc2</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm04clu02.extra.caixa.gov.br</td>
<td>10.116.33.3</td>
<td>orat01sc3, orat02sc3</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>VIP’s</td>
<td>10.116.33.4</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.5</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.6</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>SCAN</td>
<td>10.116.33.7</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.8</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.9</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
</tbody>
</table>

Instancias definidas dentro do ambiente EXADATA de Desenvolvimento:

ORAD01SC 🡪 Contempla as antigas instancias ORADES01 e ORADES02

ORAD02SC 🡪 Ferramenta B2B

ORAD03SC 🡪 Ferramenta Control Center

ORAD04SC 🡪 Sistemas SSO e SISET

 

Instancias definidas dentro do ambiente EXADATA de TQS:

ORAT01SC 🡪 Contempla a instância ORATQS01

ORAT02SC 🡪 Sistemas SSO e SISET

<table style="width:80%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 14%" />
<col style="width: 23%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th colspan="4">POSTGREE (HAWQ) - Desenvolvimento</th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
</tr>
<tr>
<td>srjdeaprlx0023.des.dtc.caixa</td>
<td>10.116.84.227</td>
<td>sildc</td>
<td>8132</td>
</tr>
</tbody>
</table>

3\. Permissionamento

3.1 Acesso ao RDBMS

> Para acesso as Bases de Dados, é necessário abertura de FICUS, via GSC, solicitando as permissões abaixo:

| SQL SERVER     | ORACLE    | POSTGREE        |
|----------------|-----------|-----------------|
| Role: sysadmin | Role: DBA | Role: SuperUser |

3.2 Acesso ao SO

> Para acesso aos servidores de Banco de Dados relacionados no item 2, é necessário abrir FICUS via GSC, solicitando as permissões abaixo:

| SQL SERVER | ORACLE | POSTGREE |
|----|----|----|
| Perfil de admin no servidor SRJDEDADNTXXX (xx.xxx.xx.xxx) para o usuário desenvolvimento\Pxxxxxx. | Acesso ao usuário Pxxxxxx e conceder grant de dba, sysdba para no banco Oracle ORAXXXX localizado no servidor ds0000vxxxx | Não se aplica. |

**4. Processo para os ambientes DES – (implementação e modelo)**

- Uma característica importante do Site Rio de Janeiro é que possuímos e mantemos modelos somente para o ambiente de Desenvolvimento;

- A base para o trabalho nos outros ambientes (TQS, HMP e PRD) será sempre a DDL gerada e testada no ambiente de Desenvolvimento (DES);

- Um ponto importante é sempre observar o padrão de nomes das DDLs e os nomes dos “owner’s” das Views e Sequences em cada ambiente;

- A demanda sempre passa pela validação do ADI com exceção dos seguintes casos:

  - Criação e alteração de índices por problemas de desempenho;

  - Criação e alteração de Sequences;

  - Alteração de definições físicas de armazenamento (ex: particionamento de tabelas ou tablespaces, de índices, etc).

> **4.1 Demandas recebidas pela equipe ABD**
>
> **4.1.1 Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados (opcional se a demanda passou pelo ADI e obrigatória quando a demanda vem direto para o ABD);

- PPDS: Documento de Validação Modelo de Dados (ADI) - Objetos Aprovados – **somente cobrado se passou pelo ADI;**

- Nome e número da versão do modelo de desenvolvimento correspondente à demanda passada pela validação do ADI atualizado no repositório unificado de São Paulo (PowerDesigner);

- Quando não houver validação do ADI a equipe de projeto baixa e altera a última versão do modelo do repositório o enviando-a diretamente para o ABD.

> **4.1.2 Processo**
>
> **4.1.2.1 Validação dos requisitos para atendimento**

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servicos.caixa), no seguinte caminho: Registro da solicitação --\>

Tecnologia da Informação e Comunicação (Subcategorias) --\>

Centralizadoras de Tecnologia da Informação (Subcategorias) --\>

Suporte à Infraestrutura de TI - Não produção --\>

Suporte à Banco de dados

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Em toda requisição do GSC deverá estar explicitada de forma clara e completa:

<!-- -->

- Indicação do ambiente. Ex: DESENVOLVIMENTO;

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a requisição (ex: DES, TQS, HMP e PRD);

<!-- -->

- Os arquivos PPDS de Solicitação de Validação do Modelo de Dados (opcional) e PPDS de Validação Modelo de Dados (ADI), devem ser anexados à requisição quando for o caso;

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados.

- Nome e número da versão do modelo de desenvolvimento correspondente à validação da ADI atualizada no repositório unificada de SP deve ser informada na requisição (pode estar tanto no laudo da ADI quanto no texto da própria requisição);

- Verificar, quando for o caso, se todas as solicitações que constam no PPDS de Solicitação de Validação constam como aprovadas no laudo da ADI, no que lhe é pertinente;

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (ex: explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Baixar a versão informada do modelo e verificar se constam nela todas as manutenções aprovadas no laudo da ADI;

- Verificar a volumetria dos itens requeridos para analisar uma possível necessidade de particionamento de tabelas ou tablespaces;

> **4.1.2.2 Preparação do modelo para implementação**

- Realizar os ajustes físicos necessários no modelo de dados **de acordo com o padrão da TE074** e melhores práticas descritas abaixo;

- Os ajustes físicos ligados as opções de armazenamento de Tablespaces, Tabelas e Índices são atualizados no modelo pelos DBAs;

- Nomenclatura dos itens a serem verificados no modelo, conforme a padronização especificada na TE074 – Anexo II Denominação de Objetos Físicos (Observação: para este documento foi utilizada a versão 19 do manual normativo);

5\. Diretório Compartilhado – DDL’s de DES e TQS

Depois que a DDL foi aplicada nos ambientes de DES e TQS, para qualquer SGBD da baixa plataforma, a mesma deve ser incluída ( “versionada” ) no caminho abaixo:

[<u>\\10.116.18.75\estruturas\RJ\CEDES_DES</u>](file://10.116.18.75/estruturas/RJ/CEDES_DES)

![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.png>)

Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.md>)

> Cada pasta SGBD é separada pela sigla do sistema.
>
> Ex: (Sql Server)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.md>)
>
> Ex: (Oracle)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.md>)
>
> Ex: (PostGree)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.md>)
>
> Dentro de cada pasta de sistema, possui outra pasta com o número da REQ atendida ou a data do atendimento. A mesma deve possuir o PPDS de validação do AD ( com os objetos aprovados ), bem com o arquivo contendo a DDL aplicada no ambiente.
>
> Ex: (Sql Server)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.md>)
>
> Ex: (Oracle)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.md>)
>
> Ex: (PostGree)

![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.png>)

Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.md>)

6\. Diretório Compartilhado – DDL’s para HMP e/ou PRD

(passagem para outro ambiente)

Quando for solicitado, via GSC, a confecção da DDL para HMP e/ou PRD, a mesma deve ser preparada a partir da DDL de DES ou TQS, observado as possíveis diferenças que possam existir entre os ambientes. Resumindo, a DDL deve ser preparada observando- se a DDL integral do ambiente destino e a mesma deve ser disponibilizada no diretório compartilhado com a CEPTIRJ:

[<u>\\10.116.18.75\estruturas\RJ\TQS\DDL</u>](file://10.116.18.75/estruturas/RJ/TQS/DDL)

7\. Nomenclatura DDL

> Toda e qualquer DDL disponibilizada para os ambientes de HMP e PRD possuem um padrão de nome para serem enviados para os demais ambientes:

ORACLE:

> ORA.\[sigla_sistema\]0001.\[num da REQ\].\[versão da ddl\].SQL\[ambiente\].sql

EX: ORA.SGF0001.REQ000051374857.V1.SQLPRD.sql

ORA.SGF0001.REQ000051374857.V2.SQLHMP.sql

SQL SERVER:

> SQL.\[sigla_sistema\]0001.\[num da REQ\].\[versão da ddl\].SQL\[ambiente\].sql

EX: SQL.CRB0001.REQ000051374856.V1.SQLPRD.sql

SQL.CRB0001.REQ000051374856.V2.SQLHMP.sql

Ao responder o atendimento na requisição, não esquecer de informar o caminho e o nome do arquivo no formato acima especificado.

Ex:

DDL disponibilizada no caminho:

\\10.116.18.75\estruturas\RJ\TQS\DDL

Arquivo: SQL.CSD0001.REQ000051674447.V1.SQLPRD.sql

8\. Arquivo TNSNAMES.ora (Oracle)

Segue abaixo o arquivo de configuração ( TNSNAMES ) para acesso às instancias Oracle exadata do Segmento Social ( RJ ):

ORAD01SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad01sc)

)

)

ORAD02SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad02sc)

)

)

ORAD03SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad03sc)

)

)

ORAD04SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad04sc)

)

)

ORAT01SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan2)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orat01sc)

)

)

ORAT02SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan2)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orat02sc)

)

)
