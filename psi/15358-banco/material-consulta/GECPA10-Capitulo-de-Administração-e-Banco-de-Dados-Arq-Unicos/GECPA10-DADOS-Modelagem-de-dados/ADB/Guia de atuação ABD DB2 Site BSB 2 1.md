**Guia de Atuação ABD DB2 Site BSB**

**Processo Padrão**

Objetivo:

Orientar o profissional ABD nos processos, ferramentas e características do DB2 do site Brasília no que tange aos ambientes DES/TQS (implementação e modelo) e HMP/PRD (modelo).

.

**Índice**

**1. [Ambiente DB2](#_Ref89123349)....................................................................................................4**

**1.1. [Partições e Instâncias](#_Ref89123358)......................................................................................4**

**1.2. [Navegação pelo TSO de Brasília](#_Ref89123362)......................................................................5**

**1.3. [Data Sets](#_Ref89123366).............................................................................................................6**

**2. [Processo para o ambiente DES – CSD1 (implementação e modelo)](#_Ref89123375)............6**

**2.1. [Demandas que passam pela ADI](#_Ref89123382)......................................................................6**

**2.1.1. [Insumos](#_Ref89123388).............................................................................................................6**

**2.1.2. [Processo](#_Ref89123392).............................................................................................................6**

**2.1.2.1. [Validação dos requisitos para atendimento](#_Ref89123398)........................................6**

**2.1.2.2. [Preparação do modelo para implementação](#_Ref89123402).......................................7**

**2.1.2.3. [Implementação no banco](#_Ref89123406)....................................................................16**

**2.2. [Demandas que vão direto para o ABD](#_Ref89123412)...........................................................20**

**2.2.1. [Insumos](#_Ref89123428)...........................................................................................................20**

**2.2.2. [Processo](#_Ref89123423)...........................................................................................................21**

**2.2.2.1. [Validação dos requisitos para atendimento](#_Ref89123436)......................................21**

**2.2.2.2. [Preparação do modelo para implementação](#_Ref89123440).....................................22**

**2.2.2.3. [Implementação no banco](#_Ref89123445)....................................................................31**

**3. [Processo para o ambiente TQS – CSD2 (implementação e modelo)](#_Ref89123452)..........32**

**3.1. [Insumos](#_Ref89123458)..........................................................................................................32**

**3.2. [Processo](#_Ref89123462)...........................................................................................................33**

**3.2.1.1. [Validação dos requisitos para atendimento](#_Ref89123469)......................................33**

**3.2.1.2. [Preparação do modelo para implementação](#_Ref89123473).....................................34**

**3.2.1.3. [Implementação no banco](#_Ref89123478)....................................................................34**

**4. [Processo para o ambiente HMP (modelo)](#_Ref89123488).....................................................38**

**4.1. [Insumos](#_Ref89123493)............................................................................................................38**

**4.2. [Processo](#_Ref89123500)...........................................................................................................39**

**4.2.1.1. [Validação dos requisitos para atendimento](#_Ref89123505)......................................39**

**4.2.1.2. [Preparação do modelo](#_Ref89123509).........................................................................40**

**4.2.1.3. [Consolidação do modelo](#_Ref89123513).....................................................................40**

**5. [Processo para o ambiente PRD (modelo)](#_Ref89123521).....................................................42**

**5.1. [Insumos](#_Ref89123525)..........................................................................................................42**

**5.2. [Processo](#_Ref89123531)...........................................................................................................43**

**5.2.1.1. [Validação dos requisitos para atendimento](#_Ref89123538)......................................43**

**5.2.1.2. [Preparação do modelo](#_Ref89123542).........................................................................44**

**5.2.1.3. [Consolidação do modelo](#_Ref89123546).....................................................................44**

**6. [DCLGEN](#_Ref89122023)............................................................................................................46**

**7. [Dúvidas quanto às práticas de implementação no site Brasília](#_Ref89123555).................47**

1.  <span id="_Ref89123349" class="anchor"></span>**Ambiente DB2**

    1.  <span id="_Ref89123358" class="anchor"></span>**Partições e Instâncias**

Abaixo apresentamos uma representação gráfica das partições e instâncias DB2 no site Brasília, posição de Novembro/2021:

![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-001.png>)

Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-001.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-001.md>)

<table>
<colgroup>
<col style="width: 13%" />
<col style="width: 21%" />
<col style="width: 2%" />
<col style="width: 16%" />
<col style="width: 13%" />
<col style="width: 22%" />
<col style="width: 8%" />
</colgroup>
<thead>
<tr>
<th colspan="3" style="text-align: center;"><strong>D1DF</strong></th>
<th> </th>
<th colspan="3" style="text-align: center;"><strong>D2DF</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Instância</td>
<td>IP</td>
<td>Porta</td>
<td> </td>
<td>Instância</td>
<td>IP</td>
<td>Porta</td>
</tr>
<tr>
<td>CSD1</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5021</td>
<td> </td>
<td>CSD3</td>
<td>10.192.224.100</td>
<td style="text-align: right;">5021</td>
</tr>
<tr>
<td>CSD2</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5023</td>
<td> </td>
<td>CSD4</td>
<td>10.192.224.102</td>
<td style="text-align: right;">5031</td>
</tr>
<tr>
<td>CSD6</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5025</td>
<td> </td>
<td>CSDQ</td>
<td>10.192.224.100</td>
<td style="text-align: right;">5051</td>
</tr>
<tr>
<td>CSDA</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5051</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr>
<td>CSDB</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5029</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr>
<td>CSDD</td>
<td>10.192.224.76</td>
<td style="text-align: right;">5033</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</tbody>
</table>

2.  <span id="_Ref89123362" class="anchor"></span>**Navegação pelo TSO de Brasília**

> Para acesso à Partição D1DF (HTSOD1) – Opção 7.22 do Solve
>
> Para acesso à Partição D2DF (HTSOD2) – Opção 7.72 do Solve
>
> Todos os recursos abaixo podem ser acessados ao digitá-los na linha OPTION:

- Partição D1DF (HTSOD1) – Instâncias: CSD1, CSD2, CSD6, CSD9, CSDA, CSDB, CSDC, CSDD e CSDE

<!-- -->

- Option I.2.2 (DB2I - DB2 Interactive)

- Option I.2.1 (DBADMIN – DB2 Administration Tool)

- Option C34 (Data Set List Utility – Acesso aos Data Sets) I

- Option CS;ST (SDSF STATUS)

<!-- -->

- PARTIÇÃO D2DF (HTSOD2) – Instâncias: CSD3, CSD4, CSD5, CSD7, CSDF, CSDG e CSDQ

<!-- -->

- Option I.2.2 (DB2I - DB2 Interactive)

- Option I.2.1 (DBADMIN – DB2 Administration Tool)

- Option C34 (Data Set List Utility – Acesso aos Data Sets)

- Option CS;ST (SDSF STATUS)

  1.  <span id="_Ref89123366" class="anchor"></span>**Data Sets**

> CKKKKKK = userid do ABD

- PDS de trabalho:

<!-- -->

- DES.DBD.CKKKKKK.BDX0.UTIL (JCL’s)

- DES.DBD.CKKKKKK.BDX0.DDL (DDL’s / Entrada para o SPUFI)

<!-- -->

- Data Set de saída do SPUFI:

<!-- -->

- DES.DBD.CKKKKKK.BDX0.SPUFI

<!-- -->

- Data Set de trabalho:

<!-- -->

- DBD.MZ.BBX0.CKKKKKK.\*.\*.\*.\*

2.  <span id="_Ref89123375" class="anchor"></span>**Processo para o ambiente DES – CSD1 (implementação e modelo)**

    1.  <span id="_Ref89123382" class="anchor"></span>**Demandas que passam pela ADI**

        1.  <span id="_Ref89123388" class="anchor"></span>**Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados;

- PPDS: Documento de Validação Modelo de Dados (ADI) ;

- Nome e número da versão do modelo de desenvolvimento correspondente à validação da ADI atualizado no repositório unificado de São Paulo (PowerDesigner);

  1.  <span id="_Ref89123392" class="anchor"></span>**Processo**

      1.  <span id="_Ref89123398" class="anchor"></span>**Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Brasília deverão ser abertos selecionando no campo Segmento a opção “Negocial/Brasília”;

- Os arquivos PPDS: Solicitação de Validação do Modelo de Dados e PPDS: Documento de Validação Modelo de Dados (ADI) devem ser anexados à requisição;

- Nome e número da versão do modelo de desenvolvimento correspondente à validação da ADI atualizado no repositório unificado de SP (PowerDesigner) deve ser informado na requisição (pode estar tanto no laudo da ADI quanto no texto da própria requisição);

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados e na requisição de forma clara e completa:

<!-- -->

- Indicação do ambiente: DESENVOLVIMENTO;

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente (DE1, DE2, PRE, COD, REL, TQS, TGE, MIG, MI2...);

<!-- -->

- Verificar se todas as solicitações que constam no PPDS de Solicitação de Validação constam como aprovadas no laudo da ADI, no que lhe é pertinente;

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Baixar a versão informada do modelo e verificar se constam todas as manutenções aprovadas no laudo da ADI;

- Verificar a volumetria para uma possível necessidade de particionamento de tabelas;

  1.  <span id="_Ref89123402" class="anchor"></span>**Preparação do modelo para implementação**

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074 e melhores práticas descritas abaixo;

- Nomenclatura dos itens a serem verificados no modelo, conforme a padronização especificada na TE074 – Anexo II Denominação de Objetos Físicos (Observação: para este documento foi utilizada a versão 19 do manual normativo);

<!-- -->

- **DATABASE**:

NOME

<table style="width:100%;">
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>DB</strong>999</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">999</td>
<td>Sequencial de “000” a “999”</td>
</tr>
</tbody>
</table>

> *CREATE DATABASE KKKDB001*
>
> *BUFFERPOOL BP10*
>
> *INDEXBP BP11*
>
> *STOGROUP SGDDB201*

- **TABLESPACE**:

> Caso o tablespace não tenha sido definido, criá-lo conforme orientações abaixo.
>
> Cada tablespace comporta somente uma tabela.
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento; Caso a informação não conste, utilizar o padrão

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TS</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE TABLESPACE KKKTS001*
>
> *IN KKKDB001*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *FREEPAGE 0 PCTFREE 5 FOR UPDATE 0*
>
> *GBPCACHE CHANGED*
>
> *TRACKMOD YES*
>
> *MAXPARTITIONS 2 (ou NUMPARTS\* x)*
>
> *LOGGED*
>
> *DSSIZE 64 G*
>
> *SEGSIZE 32*
>
> *BUFFERPOOL BP10 (ou BP32K2)*
>
> *LOCKSIZE ANY*
>
> *LOCKMAX SYSTEM*
>
> *COMPRESS NO*
>
> *DEFINE YES*
>
> *MAXROWS 255;*
>
> \* caso exista a definição do critério de particionamento no *physical options* da tabela

- **TABLESPACE LOB** (suportado pelo PowerDesigner**)**:

> Caso o tablespace não tenha sido definido, criá-lo conforme orientações abaixo.
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento; Caso a informação não conste, utilizar o padrão

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>L</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial “1” a “9” e “A” a “Z” identificando o sequencial associado ao atributo LOB da tabela. Serão criados tantos tablespaces quanto a quantidade de atributos LOB da tabela.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE LOB TABLESPACE KKK1L032*
>
> *IN KKKDB001*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *ERASE NO*
>
> *GBPCACHE CHANGED*
>
> *DSSIZE 4 G*
>
> *BUFFERPOOL BP10*
>
> *LOCKSIZE LOB*
>
> *CLOSE YES*
>
> *COMPRESS NO*
>
> *DEFINE YES;*

- **INDICES**:

> Caso o índice único da primary key não tenha sido definido, criá-lo conforme orientações abaixo.
>
> No caso de índice da UNIQUE KEY, verificar observação naquele item específico.
>
> OWNER
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento, unique, cluster; Caso a informação não conste, utilizar o padrão.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>I</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE UNIQUE INDEX KKK.KKK1I001*
>
> *ON KKK.KKKTB001_EXEMPLO*
>
> *(NU_EXEMPLO_COLUNA ASC)*
>
> *PARTITIONED\**
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *FREEPAGE 0 PCTFREE 0*
>
> *GBPCACHE CHANGED*
>
> *CLUSTER\*\**
>
> *COMPRESS NO*
>
> *BUFFERPOOL BP11*
>
> *DEFER NO*
>
> *DEFINE YES*
>
> *PIECESIZE 2 G;*
>
> \* caso o *tablespace* seja do tipo PBR e não tenha sido definido o *option* do índice a equipe deverá ser questionada se os índices deverão ser ou não particionados;
>
> \*\* caso não seja especificado, o índice da *primary key* será definido como *cluster*

- **TABELAS:**

> Cada tablespace comporta somente uma tabela.
>
> OWNER
>
> NOME
>
> DATABASE
>
> TABLESPACE – sempre associar a tabela ao seu respectivo tablespace na opção Physical Options das propriedades da tabela no modelo de dados.
>
> PARTICIONAMENTO – caso a tabela esteja definida como particionada, verificar se a definição está completa, coerente com o tablespace e sem erro de execução.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TB</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE TABLE KKK.KKKTB001_EXEMPLO*

- Para tabela do tipo LOB (AUXILIARY TABLE), bem como para o respectivo índice, a DDL deve ser elaborada pelo ABD e colocada na aba *end script* da tabela principal no PowerDesigner:

> *CREATE AUXILIARY TABLE KKK.KKKTB001_LOB_1*
>
> *IN KKKDB001.KKK1L001*
>
> *STORES KKK.KKKTB001_EXEMPLO APPEND NO COLUMN DE_EXEMPLO;*
>
> *CREATE UNIQUE INDEX KKK.KKK1X001*
>
> *ON KKK.KKKTB032_LOB_1*
>
> *PADDED*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *ERASE NO*
>
> *FREEPAGE 0 PCTFREE 0*
>
> *GBPCACHE CHANGED*
>
> *COMPRESS NO*
>
> *BUFFERPOOL BP11*
>
> *CLOSE NO*
>
> *COPY YES*
>
> *DEFINE YES*
>
> *PIECESIZE 4 G;*

- **COLUNAS:**

> NOME – Não pode conter mais do que 30 caracteres. No caso de colunas do tipo VARCHAR, o limite são 25 caracteres. Caso o nome da coluna ultrapasse este limite a demanda deve ser devolvida para a equipe de desenvolvimento para que esta entre em contato com a ADI para correção. A ADI deve corrigir o modelo de dados no repositório unificado de São Paulo (PowerDesigner) e então a equipe de desenvolvimento deve informar à ABD, via GSC, o novo número da versão do modelo de dados que consta no repositório unificado de São Paulo (PowerDesigner) correspondente à correção. Não realizamos a abreviação e/ou atualização do nome no repositório unificado de São Paulo (PowerDesigner), mesmo que a equipe informe o novo nome na requisição.
>
> POSICIONAMENTO – No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, sempre o movemos para o final da tabela, corrigimos a sua posição no modelo de dados e colocamos a observação no laudo informando sobre isso;
>
> \* Aceitamos atributo null com default;

- **PRIMARY KEY:**

> NOME
>
> COMPATIBILIDADE COM UM ÍNDICE ÚNICO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>PK</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKKPK001*
>
> *PRIMARY KEY (NU_EXEMPLO_COLUNA)*

- **SEQUENCE**

> NOME

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>SQ</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado</td>
</tr>
</tbody>
</table>

> *SET CURRENT SQLID=’KKK’*
>
> *CREATE SEQUENCE KKK.KKK**SQ**001_SEQUENCE_EXEMPLO AS*

- **UNIQUE KEY**:

> NOME
>
> COMPATIBILIDADE COM UM ÍNDICE ÚNICO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>U</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKK1U001*
>
> *UNIQUE (NU_EXEMPLO_COLUNA, NU_EXEMPLO_COLUNA2)*
>
> No caso de utilização de UNIQUE KEY, para que tanto a chave única quanto o índice único correspondente sejam apresentados no Preview do PowerDesigner é necessário que as seguintes ações sejam realizadas:

- Ao baixar o modelo do repositório unificado de São Paulo (PowerDesigner), ir na opção Generate Database 🡪 Options , selecionar a opção “Create alternate key” e clicar em “Aplicar”.

- Criar o índice único correspondente à unique key caso já não esteja criado;

- No Index Properties 🡪 Columns o campo “Columns definition” deverá estar marcado como None (o índice único correspondente à unique key NÃO deverá estar vinculado à unique key).

- Tais ações são necessárias devido à uma limitação da ferramenta PowerDesigner que não apresenta a DDL quando a unique key está vinculada à algum índice.

<!-- -->

- **CHECK CONSTRAINT**:

> NOME
>
> COMPATIBILIDADE COM O TIPO DO ATRIBUTO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>C</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKK1C001 CHECK (IC_EXEMPLO_COLUNA IN ('S', 'N'))*

- **COLUNA IDENTITY**: sempre deverá ser definido como GENERATED BY DEFAULT AS IDENTITY

> *(NU_COLUNA_EXEMPLO DECIMAL(9, 0) NOT NULL*
>
> *GENERATED BY DEFAULT*
>
> *AS IDENTITY*
>
> *(START WITH 1, INCREMENT BY 1, CACHE 20, NO CYCLE,*
>
> *NO ORDER, MAXVALUE 999999999, MINVALUE 1)*

- **RELACIONAMENTO**:

> NOME
>
> COMPATIBILIDADE COM O TIPO DOS ATRIBUTOS DA PK OU UK DA TABELA PAI;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>F</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *ALTER TABLE KKK.KKKTB001_EXEMPLO FOREIGN KEY KKK2F001*
>
> *(NU_EXEMPLO_COLUNA2)*
>
> *REFERENCES KKK.KKKTB002_TESTE*
>
> *(NU_TESTE_COLUNA)*
>
> *ON DELETE RESTRICT ENFORCED;*

- **VIEWS:**

> OWNER
>
> SQL CORRETO E EXECUTÁVEL (testado);

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>VW</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE VIEW KKK.KKKVW003_EXEMPLO*

- **TRIGGER**:

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>T</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *CREATE TRIGGER KKK.KKK1T001*

- **STORED PROCEDURE**:

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>SP</strong>999_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">999</td>
<td>Sequencial de “000” a “999”.</td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE PROCEDURE KKK.KKKSP001_TESTE*

1.  <span id="_Ref89123406" class="anchor"></span>**Implementação no banco**

- Para a geração da DDL a partir do modelo do PowerDesigner, observar se na opção GENERATE DATABASE 🡪 Options estão “marcados” todos os objetos necessários à manutenção (inclusive ALTERNATE KEY, PRIMARY KEY, entre outros, que costumam não ser gerados na DDL por não estarem marcados);

- Sempre realizar as alterações no banco a partir da DDL gerada pelo modelo para garantirmos que foram definidas sem erros;

- Implementação para <u>BANCOS NOVOS</u>:

  - Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner

  - Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável.

  - Criar DCLGEN (verificar o padrão no item [**<u>6</u>**](#_Ref89122023)) ;

  - Criar os planos que serão utilizados: KKKBATCH, KKKPLAN;

> Para programas batch utilizar o plano KKKBATCH;
>
> Para programas online utilizar o plano KKKPLAN;
>
> O nome da Collection do sistema segue o mesmo padrão do nome do plano

<table style="width:87%;">
<colgroup>
<col style="width: 41%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><em>BIND PLAN(KKKBATCH)</em></p>
<p><em>QUAL(KKK)</em></p>
<p><em>OWNER(KKK)</em></p>
<p><em>PKL(KKKBATCH.*)</em></p>
<p><em>NODEFER(PREPARE)</em></p>
<p><em>VALID(R)</em></p>
<p><em>ISOL(RR)</em></p>
<p><em>CACHE(256)</em></p>
<p><em>ACQ(U)</em></p>
<p><em>REL(C)</em></p>
<p><em>EXPL(N)</em></p>
<p><em>CURRENTD(Y)</em></p>
<p><em>ACTION(REPLACE)</em></p>
<p><em>RETAIN</em></p>
<p><em>DEGREE(1)</em></p>
<p><em>SQLR(D)</em></p>
<p><em>DISC(E)</em></p>
<p><em>KEEPDYNAMIC(N)</em></p>
<p><em>REOPT(NONE)</em></p>
<p><em>ENCODING(500)</em></p>
<p><em>IMMEDWRITE(N)</em></p>
<p><em>ROUNDING(HALFEVEN)</em></p>
</blockquote></th>
<th><blockquote>
<p><em>BIND PLAN(KKKPLAN)</em></p>
<p><em>QUAL(KKK)</em></p>
<p><em>OWNER(KKK)</em></p>
<p><em>PKL(KKKPLAN.*)</em></p>
<p><em>NODEFER(PREPARE)</em></p>
<p><em>VALID(R)</em></p>
<p><em>ISOL(RR)</em></p>
<p><em>CACHE(256)</em></p>
<p><em>ACQ(U)</em></p>
<p><em>REL(C)</em></p>
<p><em>EXPL(N)</em></p>
<p><em>CURRENTD(Y)</em></p>
<p><em>ACTION(REPLACE)</em></p>
<p><em>RETAIN</em></p>
<p><em>DEGREE(1)</em></p>
<p><em>SQLR(D)</em></p>
<p><em>DISC(E)</em></p>
<p><em>KEEPDYNAMIC(N)</em></p>
<p><em>REOPT(NONE)</em></p>
<p><em>ENCODING(500)</em></p>
<p><em>IMMEDWRITE(N)</em></p>
<p><em>ROUNDING(HALFEVEN)</em></p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- Criar a PLAN_TABLE necessária ao Eccox conforme exemplo abaixo

> *CREATE TABLE KKK.PLAN_TABLE*

- Realizar RUNSTATS dos objetos do banco;

- Caso tenha sido realizado algum ajuste no modelo de dados do repositório unificado de São Paulo (PowerDesigner), será necessário consolidá-lo no repositório, quantas vezes forem necessárias até que todas as alterações estejam efetivadas;

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente;

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

<!-- -->

- Implementação para <u>OBJETOS EXISTENTES</u>:

<!-- -->

- Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner

- Observar, no momento da manutenção de objetos já existentes, se não há relacionamentos ou VIEWS de outros sistemas associados, sendo assim esses deverão ser recriados.

- Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável;

- Criar DCLGEN (verificar o padrão no item [**<u>6</u>**](#_Ref89122023));

- Realizar RUNSTATS apenas dos objetos que sofreram manutenção;

- Realizar CHECKDATA se necessário;

- Realizar REBIND dos packages que utilizam o(s) objeto(s);

- Caso tenha sido realizado algum ajuste no modelo de dados do repositório unificado de São Paulo (PowerDesigner), será necessário consolidá-lo no repositório, quantas vezes forem necessárias até que todas as alterações estejam efetivadas;

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente;

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

  1.  <span id="_Ref89123412" class="anchor"></span>**Demandas que vão direto para o ABD**

      1.  <span id="_Ref89123428" class="anchor"></span>**Insumos**

<!-- -->

- PPDS: Solicitação de Validação do Modelo de Dados;

- Modelo de dados da equipe de desenvolvimento que contém a(s) alteração(ões) solicitada(s);

  1.  <span id="_Ref89123423" class="anchor"></span>**Processo**

      1.  <span id="_Ref89123436" class="anchor"></span>**Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Brasília deverão ser abertos selecionando no campo Segmento a opção “Negocial/Brasília”;

- Os arquivos PPDS: Solicitação de Validação do Modelo de Dados e Modelo de dados da equipe de desenvolvimento que contém a(s) alteração(ões) solicitada(s) devem ser anexados na requisição;

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados e na requisição de forma clara e completa:

<!-- -->

- Indicação do ambiente: DESENVOLVIMENTO;

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente (DE1, DE2, PRE, COD, REL, TQS, TGE, MIG, MI2...);

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Baixar a versão mais recente do modelo de dados de desenvolvimento que consta no repositório unificado de São Paulo (PowerDesigner) para realizar o merge com o modelo da equipe de desenvolvimento que foi anexado na requisição;

- “ Mergear” as atualizações do modelo fornecido pela equipe de desenvolvimento para o modelo de desenvolvimento (versão mais recente que consta no repositório unificado de São Paulo - PowerDesigner) tantas vezes quantas forem necessárias até que todas as alterações solicitadas tenham sido migradas;

- Verificar a volumetria para uma possível necessidade de particionamento de tabelas.

  1.  <span id="_Ref89123440" class="anchor"></span>**Preparação do modelo para implementação**

<!-- -->

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074 e melhores práticas descritas abaixo;

- Nomenclatura dos itens a serem verificados no modelo, conforme a padronização especificada na TE074 – Anexo II Denominação de Objetos Físicos (Observação: para este documento foi utilizada a versão 19 do manual normativo);

<!-- -->

- **DATABASE**:

NOME

<table style="width:100%;">
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>DB</strong>999</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">999</td>
<td>Sequencial de “000” a “999”</td>
</tr>
</tbody>
</table>

> *CREATE DATABASE KKKDB001*
>
> *BUFFERPOOL BP10*
>
> *INDEXBP BP11*
>
> *STOGROUP SGDDB201*

- **TABLESPACE**:

> Caso o tablespace não tenha sido definido, criá-lo conforme orientações abaixo.
>
> Cada tablespace comporta somente uma tabela.
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento; Caso a informação não conste, utilizar o padrão

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TS</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE TABLESPACE KKKTS001*
>
> *IN KKKDB001*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *FREEPAGE 0 PCTFREE 5 FOR UPDATE 0*
>
> *GBPCACHE CHANGED*
>
> *TRACKMOD YES*
>
> *MAXPARTITIONS 2 (ou NUMPARTS\* x)*
>
> *LOGGED*
>
> *DSSIZE 64 G*
>
> *SEGSIZE 32*
>
> *BUFFERPOOL BP10 (ou BP32K2)*
>
> *LOCKSIZE ANY*
>
> *LOCKMAX SYSTEM*
>
> *COMPRESS NO*
>
> *DEFINE YES*
>
> *MAXROWS 255;*
>
> \* caso exista a definição do critério de particionamento no *physical options* da tabela

- **TABLESPACE LOB** (suportado pelo PowerDesigner**)**:

> Caso o tablespace não tenha sido definido, criá-lo conforme orientações abaixo.
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento; Caso a informação não conste, utilizar o padrão

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>L</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial “1” a “9” e “A” a “Z” identificando o sequencial associado ao atributo LOB da tabela. Serão criados tantos tablespaces quanto a quantidade de atributos LOB da tabela.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE LOB TABLESPACE KKK1L032*
>
> *IN KKKDB001*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *ERASE NO*
>
> *GBPCACHE CHANGED*
>
> *DSSIZE 4 G*
>
> *BUFFERPOOL BP10*
>
> *LOCKSIZE LOB*
>
> *CLOSE YES*
>
> *COMPRESS NO*
>
> *DEFINE YES;*

- **INDICES**:

> Caso o índice único da primary key não tenha sido definido, criá-lo conforme orientações abaixo.
>
> No caso de índice da UNIQUE KEY, verificar observação naquele item específico.
>
> OWNER
>
> NOME
>
> OPTIONS - observar se está completo e sem erros de execução, particionamento, unique, cluster; caso a informação não conste, utilizar o padrão.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">Zzzn<strong>I</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CREATE UNIQUE INDEX KKK.KKK1I001*
>
> *ON KKK.KKKTB001_EXEMPLO*
>
> *(NU_EXEMPLO_COLUNA ASC)*
>
> *PARTITIONED\**
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *FREEPAGE 0 PCTFREE 0*
>
> *GBPCACHE CHANGED*
>
> *CLUSTER\*\**
>
> *COMPRESS NO*
>
> *BUFFERPOOL BP11*
>
> *DEFER NO*
>
> *DEFINE YES*
>
> *PIECESIZE 2 G;*
>
> \* caso o *tablespace* seja do tipo PBR e não tenha sido definido o *option* do índice a equipe deverá ser questionada se os índices deverão ser ou não particionados;
>
> \*\* caso não seja especificado, o índice da *primary key* será definido como *cluster*

- **TABELAS:**

> Cada tablespace comporta somente uma tabela.
>
> OWNER
>
> NOME
>
> DATABASE
>
> TABLESPACE – sempre associar a tabela ao seu respectivo tablespace na opção Physical Options das propriedades da tabela no modelo de dados
>
> PARTICIONAMENTO – caso a tabela esteja definida como particionada, verificar se a definição está completa, coerente com o tablespace e sem erro de execução

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TB</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE TABLE KKK.KKKTB001_EXEMPLO*

- Para tabela do tipo LOB (AUXILIARY TABLE), bem como para o respectivo índice, a DDL deve ser elaborada pelo ABD e colocada na aba *end script* da tabela principal no PowerDesigner:

> *CREATE AUXILIARY TABLE KKK.KKKTB001_LOB_1*
>
> *IN KKKDB001.KKK1L001*
>
> *STORES KKK.KKKTB001_EXEMPLO APPEND NO COLUMN DE_EXEMPLO;*
>
> *CREATE UNIQUE INDEX KKK.KKK1X001*
>
> *ON KKK.KKKTB032_LOB_1*
>
> *PADDED*
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY 48 SECQTY 48*
>
> *ERASE NO*
>
> *FREEPAGE 0 PCTFREE 0*
>
> *GBPCACHE CHANGED*
>
> *COMPRESS NO*
>
> *BUFFERPOOL BP11*
>
> *CLOSE NO*
>
> *COPY YES*
>
> *DEFINE YES*
>
> *PIECESIZE 4 G;*

- **COLUNAS:**

> NOME – Não pode conter mais do que 30 caracteres. No caso de colunas do tipo VARCHAR, o limite são 25 caracteres. Caso o nome da coluna ultrapasse este limite a demanda deve ser devolvida para a equipe de desenvolvimento para que esta entre em contato com a ADI para correção. A ADI deve corrigir o modelo de dados no repositório unificado de São Paulo (PowerDesigner) e então a equipe de desenvolvimento deve informar à ABD, via GSC, o novo número da versão do modelo de dados que consta no repositório unificado de São Paulo (PowerDesigner) correspondente à correção. Não realizamos a abreviação e/ou atualização do nome no repositório unificado de São Paulo (PowerDesigner), mesmo que a equipe informe o novo nome na requisição.
>
> POSICIONAMENTO – No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, sempre o movemos para o final da tabela, corrigimos a sua posição no modelo de dados e colocamos a observação no laudo informando sobre isso;
>
> \* Aceitamos atributo null com default;

- **PRIMARY KEY:**

> NOME
>
> COMPATIBILIDADE COM UM ÍNDICE ÚNICO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>PK</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKKPK001*
>
> *PRIMARY KEY (NU_EXEMPLO_COLUNA)*

- **SEQUENCE**

> NOME

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>SQ</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado</td>
</tr>
</tbody>
</table>

> *SET CURRENT SQLID=’KKK’*
>
> *CREATE SEQUENCE KKK.KKK**SQ**001_SEQUENCE_EXEMPLO AS*

- **UNIQUE KEY**:

> NOME
>
> COMPATIBILIDADE COM UM ÍNDICE ÚNICO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>U</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKK1U001*
>
> *UNIQUE (NU_EXEMPLO_COLUNA, NU_EXEMPLO_COLUNA2)*
>
> No caso de utilização de UNIQUE KEY, para que tanto a chave única quanto o índice único correspondente sejam apresentados no Preview do PowerDesigner é necessário que as seguintes ações sejam realizadas:

- Ao baixar o modelo do repositório unificado de São Paulo (PowerDesigner), ir na opção Generate Database 🡪 Options , selecionar a opção “Create alternate key” e clicar em “Aplicar”;

- Criar o índice único correspondente à unique key caso já não esteja criado;

- No Index Properties 🡪 Columns o campo “Columns definition” deverá estar marcado como None (o índice único correspondente à unique key NÃO deverá estar vinculado à unique key);

- Tais ações são necessárias devido à uma limitação da ferramenta PowerDesigner que não apresenta a DDL quando a unique key está vinculada à algum índice;

<!-- -->

- **CHECK CONSTRAINT**:

> NOME
>
> COMPATIBILIDADE COM O TIPO DO ATRIBUTO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>C</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT KKK1C001 CHECK (IC_EXEMPLO_COLUNA IN ('S', 'N'))*

- **COLUNA IDENTITY**: sempre deverá ser definido como GENERATED BY DEFAULT AS IDENTITY

> *(NU_COLUNA_EXEMPLO DECIMAL(9, 0) NOT NULL*
>
> *GENERATED BY DEFAULT*
>
> *AS IDENTITY*
>
> *(START WITH 1, INCREMENT BY 1, CACHE 20, NO CYCLE,*
>
> *NO ORDER, MAXVALUE 999999999, MINVALUE 1)*

- **RELACIONAMENTO**:

> NOME
>
> COMPATIBILIDADE COM O TIPO DOS ATRIBUTOS DA PK OU UK DA TABELA PAI;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>F</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *ALTER TABLE KKK.KKKTB001_EXEMPLO FOREIGN KEY KKK2F001*
>
> *(NU_EXEMPLO_COLUNA2)*
>
> *REFERENCES KKK.KKKTB002_TESTE*
>
> *(NU_TESTE_COLUNA)*
>
> *ON DELETE RESTRICT ENFORCED;*

- **VIEWS:**

> OWNER
>
> SQL CORRETO E EXECUTÁVEL (testado);

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>VW</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE VIEW KKK.KKKVW003_EXEMPLO*

- **TRIGGER**:

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzn<strong>T</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Sequencial“0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *CREATE TRIGGER KKK.KKK1T001*

- **STORED PROCEDURE**:

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>SP</strong>999_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">999</td>
<td>Sequencial de “000” a “999”.</td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE PROCEDURE KKK.KKKSP001_TESTE*

1.  <span id="_Ref89123445" class="anchor"></span>**Implementação no banco**

- Para a geração da DDL a partir do modelo do PowerDesigner, observar se na opção GENERATE DATABASE 🡪 Options estão “marcados” todos os objetos necessários à manutenção (inclusive ALTERNATE KEY, PRIMARY KEY, entre outros, que costumam não ser gerados na DDL por não estarem marcados);

- Observar, no momento da manutenção de objetos já existentes, se não há relacionamentos ou VIEWS de outros sistemas associados, sendo assim esses deverão ser recriados;

- Sempre realizar as alterações no banco a partir da DDL gerada pelo modelo para garantirmos que foram definidas sem erros;

- Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner

- Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável.

- Criar DCLGEN (verificar o padrão no item [**<u>6</u>**](#_Ref89122023));

- Realizar RUNSTATS apenas dos objetos que sofreram manutenção

- Realizar CHECKDATA se necessário;

- Realizar REBIND dos packages que utilizam o(s) objeto(s);

- Caso tenha sido realizado algum ajuste no modelo de dados do repositório unificado de São Paulo (PowerDesigner), será necessário consolidá-lo no repositório, quantas vezes forem necessárias até que todas as alterações estejam efetivadas.

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

3.  <span id="_Ref89123452" class="anchor"></span>**Processo para o ambiente TQS – CSD2 (implementação e modelo)**

    1.  <span id="_Ref89123458" class="anchor"></span>**Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados

- Nome e número da versão do modelo de desenvolvimento que servirá como base para o atendimento

  1.  <span id="_Ref89123462" class="anchor"></span>**Processo**

      1.  <span id="_Ref89123469" class="anchor"></span>**Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados

- Os atendimentos para o site Brasília deverão ser abertos selecionando no campo Segmento a opção “Negocial/Brasília”

- O arquivo PPDS: Solicitação de Validação do Modelo de Dados deve ser anexado na requisição

- Nome e número da versão do modelo que consta no repositório unificado de SP (PowerDesigner) e que deverá servir como base para promoção das alterações solicitadas na requisição.

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados e na requisição de forma clara e completa:

<!-- -->

- Indicação do ambiente: TQS

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente (DE1, DE2, PRE, COD, REL, TGE, MIG, MI2...)

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Caso não seja criação de nova base em TQS, baixar a versão mais recente do modelo de dados de TQS que consta no repositório unificado de São Paulo (PowerDesigner) para realizar o merge com a versão do modelo de desenvolvimento que consta no repositório unificado de São Paulo (PowerDesigner) que foi informada na requisição;

- Caso não seja criação de nova base em TQS , “ mergear” as atualizações do modelo de desenvolvimento para o modelo TQS tantas vezes quantas forem necessárias até que todas as alterações solicitadas tenham sido migradas;

- Verificar se as manutenções solicitadas para o ambiente TQS encontram-se implementadas no ambiente de desenvolvimento

- Verificar se o modelo de desenvolvimento está idêntico ao banco de desenvolvimento (checar cada detalhe);

- Verificar se a manutenção solicitada está compatível com a atual estrutura do ambiente TQS;

  1.  <span id="_Ref89123473" class="anchor"></span>**Preparação do modelo para implementação**

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074 e melhores práticas descritas abaixo;

<!-- -->

- **UNIQUE KEY**:

> No caso de utilização de UNIQUE KEY, verificar se a opção “Create alternate key” está marcada no modelo de TQS (Generate Database 🡪 Options).

1.  <span id="_Ref89123478" class="anchor"></span>**Implementação no banco**

- Para a geração da DDL a partir do modelo do PowerDesigner, observar se na opção GENERATE DATABASE 🡪 Options estão “marcados” todos os objetos necessários à manutenção (inclusive ALTERNATE KEY, PRIMARY KEY, entre outros, que costumam não ser gerados na DDL por não estarem marcados);

- Sempre realizar as alterações no banco a partir da DDL gerada pelo modelo para garantirmos que foram definidas sem erros;

<!-- -->

- Implementação para <u>BANCOS NOVOS</u>:

  - Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner

  - Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável.

  - Criar os planos que serão utilizados: KKKBATCH, KKKPLAN;

> Para programas batch utilizar o plano KKKBATCH;
>
> Para programas online utilizar o plano KKKPLAN;
>
> O nome da Collection do sistema segue o mesmo padrão do nome do plano

<table style="width:87%;">
<colgroup>
<col style="width: 41%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><em>BIND PLAN(KKKBATCH)</em></p>
<p><em>QUAL(KKK)</em></p>
<p><em>OWNER(KKK)</em></p>
<p><em>PKL(KKKBATCH.*)</em></p>
<p><em>NODEFER(PREPARE)</em></p>
<p><em>VALID(R)</em></p>
<p><em>ISOL(RR)</em></p>
<p><em>CACHE(256)</em></p>
<p><em>ACQ(U)</em></p>
<p><em>REL(C)</em></p>
<p><em>EXPL(N)</em></p>
<p><em>CURRENTD(Y)</em></p>
<p><em>ACTION(REPLACE)</em></p>
<p><em>RETAIN</em></p>
<p><em>DEGREE(1)</em></p>
<p><em>SQLR(D)</em></p>
<p><em>DISC(E)</em></p>
<p><em>KEEPDYNAMIC(N)</em></p>
<p><em>REOPT(NONE)</em></p>
<p><em>ENCODING(500)</em></p>
<p><em>IMMEDWRITE(N)</em></p>
<p><em>ROUNDING(HALFEVEN)</em></p>
</blockquote></th>
<th><blockquote>
<p><em>BIND PLAN(KKKPLAN)</em></p>
<p><em>QUAL(KKK)</em></p>
<p><em>OWNER(KKK)</em></p>
<p><em>PKL(KKKPLAN.*)</em></p>
<p><em>NODEFER(PREPARE)</em></p>
<p><em>VALID(R)</em></p>
<p><em>ISOL(RR)</em></p>
<p><em>CACHE(256)</em></p>
<p><em>ACQ(U)</em></p>
<p><em>REL(C)</em></p>
<p><em>EXPL(N)</em></p>
<p><em>CURRENTD(Y)</em></p>
<p><em>ACTION(REPLACE)</em></p>
<p><em>RETAIN</em></p>
<p><em>DEGREE(1)</em></p>
<p><em>SQLR(D)</em></p>
<p><em>DISC(E)</em></p>
<p><em>KEEPDYNAMIC(N)</em></p>
<p><em>REOPT(NONE)</em></p>
<p><em>ENCODING(500)</em></p>
<p><em>IMMEDWRITE(N)</em></p>
<p><em>ROUNDING(HALFEVEN)</em></p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- Realizar RUNSTATS dos objetos do banco

- Consolidar o novo modelo de TQS na pasta correspondente ao sistema no repositório unificado de São Paulo (PowerDesigner), atentando-se para a alteração do nome.

> Exemplo:
>
> De: KKK_DES_DB2_SISTEMA_EXEMPLO \_1
>
> Para: KKK_TQS_DB2_SISTEMA_EXEMPLO_1

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

<!-- -->

- Implementação para <u>OBJETOS EXISTENTES</u>:

<!-- -->

- Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner

- Observar, no momento da manutenção de objetos já existentes, se não há relacionamentos ou VIEWS de outros sistemas associados, sendo assim esses deverão ser recriados;

- Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável.

- Realizar RUNSTATS apenas dos objetos que sofreram manutenção

- Realizar CHECKDATA se necessário;

- Realizar REBIND dos packages que utilizam o(s) objeto(s);

- Consolidar o modelo de TQS alterado no repositório unificado de São Paulo (PowerDesigner), quantas vezes forem necessárias até que todas as alterações estejam efetivadas.

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

4.  <span id="_Ref89123488" class="anchor"></span>**Processo para o ambiente HMP (modelo)**

    1.  <span id="_Ref89123493" class="anchor"></span>**Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados

- Nome e número da versão do modelo de desenvolvimento ou TQS que servirá como base para o atendimento

  1.  <span id="_Ref89123500" class="anchor"></span>**Processo**

      1.  <span id="_Ref89123505" class="anchor"></span>**Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados

- Os atendimentos para o site Brasília deverão ser abertos selecionando no campo Segmento a opção “Negocial/Brasília”

- O arquivo PPDS: Solicitação de Validação do Modelo de Dados deve ser anexado na requisição

- Nome e número da versão do modelo de desenvolvimento ou TQS que consta no repositório unificado de SP (PowerDesigner) e que deverá servir como base para promoção das alterações solicitadas na requisição.

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados e na requisição de forma clara e completa:

<!-- -->

- Indicação do ambiente: HOMOLOGAÇÃO

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente (DE1, DE2, PRE, COD, REL, TGE, MIG, MI2...)

<!-- -->

- Caso não seja criação de novo modelo em HMP, baixar a versão informada na requisição do modelo de dados de desenvolvimento ou TQS que consta no repositório unificado de São Paulo (PowerDesigner) para realizar o merge com a versão mais recente do modelo de HMP que consta no repositório unificado de São Paulo (PowerDesigner);

- “ Mergear” as atualizações do modelo de DESENVOLVIMENTO/TQS para o modelo HMP tantas vezes quantas forem necessárias até que todas as alterações solicitadas tenham sido migradas;

- Verificar se as manutenções solicitadas para o modelo HMP encontram-se implementadas no banco de desenvolvimento ou TQS;

- Verificar se o modelo de desenvolvimento ou TQS está idêntico ao respectivo banco de dados (checar cada detalhe);

  1.  <span id="_Ref89123509" class="anchor"></span>**Preparação do modelo**

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074 e melhores práticas descritas abaixo;

<!-- -->

- **UNIQUE KEY**:

> No caso de utilização de UNIQUE KEY, verificar se a opção “Create alternate key” está marcada no modelo de HMP (Generate Database 🡪 Options).

1.  <span id="_Ref89123513" class="anchor"></span>**Consolidação do modelo**

- Implementação para <u>BANCOS NOVOS</u>:

  - Consolidar o novo modelo de HMP na pasta correspondente ao sistema no repositório unificado de São Paulo (PowerDesigner), atentando-se para a renomeação do nome do modelo de dados.

> Exemplo:
>
> De: KKK_DES_DB2_SISTEMA_EXEMPLO \_1
>
> Para: KKK_HMP_DB2_SISTEMA_EXEMPLO_1

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

<!-- -->

- Implementação para <u>OBJETOS EXISTENTES</u>:

<!-- -->

- Consolidar o modelo de HMP alterado no repositório unificado de São Paulo (PowerDesigner), quantas vezes forem necessárias até que todas as alterações estejam efetivadas.

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

5.  <span id="_Ref89123521" class="anchor"></span>**Processo para o ambiente PRD (modelo)**

    1.  <span id="_Ref89123525" class="anchor"></span>**Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados

- Nome e número da versão do modelo de desenvolvimento, TQS ou HMP que servirá como base para o atendimento

  1.  <span id="_Ref89123531" class="anchor"></span>**Processo**

      1.  <span id="_Ref89123538" class="anchor"></span>**Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados

- Os atendimentos para o site Brasília deverão ser abertos selecionando no campo Segmento a opção “Negocial/Brasília”

- O arquivo PPDS: Solicitação de Validação do Modelo de Dados deve ser anexado na requisição

- Nome e número da versão do modelo de desenvolvimento, TQS ou HMP que consta no repositório unificado de SP (PowerDesigner) e que deverá servir como base para promoção das alterações solicitadas na requisição.

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados e na requisição de forma clara e completa:

<!-- -->

- Indicação do ambiente: PRODUÇÃO

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente (DE1, DE2, PRE, COD, REL, TGE, MIG, MI2...)

<!-- -->

- Caso não seja criação de novo modelo em PRD, baixar a versão informada na requisição do modelo de dados de desenvolvimento, TQS ou HMP que consta no repositório unificado de São Paulo (PowerDesigner) para realizar o merge com a versão mais recente do modelo de PRD que consta no repositório unificado de São Paulo (PowerDesigner);

- “ Mergear” as atualizações do modelo de desenvolvimento, TQS ou HMP para o modelo PRD tantas vezes quantas forem necessárias até que todas as alterações solicitadas tenham sido migradas;

- Verificar se as manutenções solicitadas para o modelo PRD encontram-se implementadas no banco de desenvolvimento ou TQS (caso tenham sido informados como origem);

- Verificar se o modelo de desenvolvimento ou TQS está idêntico ao respectivo banco de dados (caso tenham sido informados como origem) - checar cada detalhe;

  1.  <span id="_Ref89123542" class="anchor"></span>**Preparação do modelo**

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074 e melhores práticas descritas abaixo;

<!-- -->

- **UNIQUE KEY**:

> No caso de utilização de UNIQUE KEY, verificar se a opção “Create alternate key” está marcada no modelo de PRD (Generate Database 🡪 Options).

1.  <span id="_Ref89123546" class="anchor"></span>**Consolidação do modelo**

- Implementação para <u>BANCOS NOVOS</u>:

  - Consolidar o novo modelo de PRD na pasta correspondente ao sistema no repositório unificado de São Paulo (PowerDesigner), atentando-se para a renomeação do nome do modelo de dados.

> Exemplo:
>
> De: KKK_DES_DB2_SISTEMA_EXEMPLO \_1
>
> Para: KKK_PRD_DB2_SISTEMA_EXEMPLO_1

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

<!-- -->

- Implementação para <u>OBJETOS EXISTENTES</u>:

<!-- -->

- Consolidar o modelo de PRD alterado no repositório unificado de São Paulo (PowerDesigner), quantas vezes forem necessárias até que todas as alterações estejam efetivadas.

- No momento da consolidação, deve ser desmarcada a opção “Check out after check in” e marcada a opção “Freeze after checking”. Também deverá ser informado no campo Comment “ABD”, matrícula e número da requisição correspondente.

> ![Imagem](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md](<./imagem/Guia de atuação ABD DB2 Site BSB 2 1-imagem-002.md>)

- Gerar o laudo do ABD detalhando o quê foi solicitado, o quê foi implementado na base e/ou alterado no modelo e as ressalvas, caso existam. Salvar o laudo na respectiva pasta do sistema na VOB ADB e anexá-lo à requisição no momento da conclusão;

6.  <span id="_Ref89122023" class="anchor"></span>**DCLGEN**

- O dataset de DCLGEN é composto pela seguinte regra:

DES.KKK.Vyy.DCLGEN (KKKNNzzz)

Onde:

- KKK é o alias do sistema,

- yy é uma variável numérica, geralmente 00

- nn é TB para tabela ou VW para view

- zzz é o identificador do objeto

<!-- -->

- Em suma, o nome do membro do dataset é composto pelas oito primeiras posições do nome da tabela/view

> Exemplo:

*1 SOURCE TABLE NAME ===\> ICOTBU24_UNIDADE*

*2 TABLE OWNER ..... ===\> ICO*

*3 AT LOCATION ..... ===\>*

*4 DATA SET NAME ... ===\> 'DES.ICO.V00.DCLGEN(ICOTBU24)'*

*5 DATA SET PASSWORD ===\>*

*6 ACTION .......... ===\> REPLACE*

*7 COLUMN LABEL .... ===\> NO*

*8 STRUCTURE NAME .. ===\> ICOTBU24*

*9 FIELD NAME PREFIX ===\>*

*10 DELIMIT DBCS .... ===\> YES*

*11 COLUMN SUFFIX ... ===\> NO*

*12 INDICATOR VARS .. ===\> NO*

*13 ADDITIONAL OPTIONS===\> NO*

- Alguns exemplos de bibliotecas DCLGENs no site Brasília (posição Novembro/2021):

DES.AEF.V00.DCLGEN

DES.ARA.V00.DCLGEN

DES.GEC.V00.DCLGEN

DES.OPI.V00.DCLGEN

- A equipe de desenvolvimento é responsável por copiar a DCLGEN para o ENDEVOR;

7.  <span id="_Ref89123555" class="anchor"></span>**Dúvidas quanto às práticas de implementação no site Brasília**

- O owner dos objetos é a sigla do sistema com três dígitos, ex.: PON.PONVW057_EQP_VIRTL; ICO.ICOTBU24_UNIDADE;

- Cada tablespace comporta somente uma tabela.

- O nome da coluna não pode conter mais do que 30 caracteres. No caso de colunas do tipo VARCHAR, o limite são 25 caracteres. Caso o nome da coluna ultrapasse este limite a demanda deve ser devolvida para a equipe de desenvolvimento para que esta entre em contato com a ADI para correção. A ADI deve corrigir o modelo de dados no repositório unificado de São Paulo (PowerDesigner) e então a equipe de desenvolvimento deve informar à ABD, via GSC, o novo número da versão do modelo de dados que consta no repositório unificado de São Paulo (PowerDesigner) correspondente à correção. Não realizamos a abreviação e/ou atualização do nome no repositório unificado de São Paulo (PowerDesigner), mesmo que a equipe informe o novo nome na requisição.

- No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, sempre o movemos para o final da tabela, corrigimos a sua posição no modelo de dados e colocamos a observação no laudo informando sobre isso;

- Aceitamos atributo null com default;

- Manipulação de dados nos ambientes não-produção só é realizada caso a tabela/atributo não exista em produção; caso a tabela/atributo exista em produção, deve-se considerar uma alteração que não envolva a manipulação do dado (exemplo: alteração de campo de smallint para char, etc)
