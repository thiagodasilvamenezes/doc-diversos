**Guia de Atuação DBA DB2 Site RJ**

**Processo Padrão**

Objetivo:

Orientar o profissional DBA nos processos, ferramentas e características do DB2 do site Rio de Janeiro no que tange aos ambientes DES (implementação e modelo), TQS (implementação) e HMP/PRD (disponibilização de DDLs).

.

**Índice**

1.  **Ambiente DB2**

    1.  **Partições e Instâncias**

    2.  **Autorizações necessárias**

    3.  **Navegação pelo TSO de Rio de Janeiro**

    4.  **Data sets**

2.  **Processo para o ambiente DES – DSD0 e DSND (implementação e modelo)**

    1.  **Demandas**

        1.  **Insumos**

        2.  **Processo**

3.  **Processo para o ambiente TQS – DSDH e DSNH (implementação)**

    1.  **Insumos**

    2.  **Processo**

4.  **Processo para o ambiente HMP**

    1.  **Insumos**

    2.  **Processo**

5.  **Processo para o ambiente PRD**

    1.  **Insumos**

    2.  **Processo**

6.  **DCLGEN**

7.  **Dúvidas quanto às práticas de implementação no site Rio de Janeiro**

<!-- -->

1.  **Ambiente DB2**

    1.  **Partições e Instâncias**

Abaixo apresentamos uma representação gráfica das partições e instâncias DB2 no site Rio de Janeiro, posição de Março de 2024:

![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-001.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-001.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-001.md>)

![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-002.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-002.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-002.md>)

OBS: O DBA de desenvolvimento deve restringir sua atuação aos ambientes **DSD0 e DSDH (Partição RJD2 ou RJD1 ) e DSND e DSNH (Partição RJP4).**

2.  **Autorizações necessárias**

> Todos os recursos abaixo são necessários para execução do trabalho:

\- Acesso a partição RJD2 via TSO (opção 7.48);

.. Procedure : IKJCEF08

.. Size : 61.440

\- Acesso a partição RJP4 via TSO (opção 8.34);

.. Procedure : IKJCEF08

.. Size : 61.440

\- Acesso a partição RJD1 ( opção 7.a5 )

.. Procedure : IKJCEF08

.. Size : 61.440

> \- Acesso as instâncias DB2 de DES e TQS destas partições via **DB2 Admin** (opção D3);
>
> \- Acesso as instâncias DB2 de DES e TQS destas partições via o **DB2I** - Db2 Interface (opção G.1.12 ou D4);

\- Acesso aos datasets SUPB.\*\*;

> \- Acesso ao grupo do RACF DESSUPBD;

GROUP=DESSUPBD AUTH=USE CONNECT-OWNER=DESSUPBD

\- Acesso ao repositório unificado de São Paulo do PowerDesigner onde ficam os modelos de dados.

3.  **Navegação pelo TSO do Rio de Janeiro**

> Para acesso via TSO/RJ à Partição RJD2 (DES/TQS) utilizar a opção 7.48 do Solve.
>
> Para acesso via TSO/RJ à Partição RJD1(DES/TQS) utilizar a opção 7.a5 do Solve.
>
> Para acesso via TSO/RJ à Partição RJP4 (DES/TQS) utilizar a opção 8.34 do Solve.
>
> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-003.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-003.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-003.md>)
>
> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-004.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-004.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-004.md>)
>
> Todos os recursos abaixo podem ser acessados ao digitá-los na linha COMANDO:

- Partição RJD2 (DES/TQS) – Sub-systems:

- DSD0 ( Desenvolvimento )

- DSDH ( TQS )

- DSD1 (BI )

- DSQ0 ( Qualificação de Dados )

<!-- -->

- Option D4 ou G.1.12 (DB2I - DB2 Interactive)

- Option D3 (DBADMIN – DB2 Administration Tool)

- Option G.1.3.4 (Data Set List Utility – Acesso aos Data Sets)

- Option G4 ;ST (ou TSO SDSF; ST)

- Option S8 ; MainView

> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-005.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-005.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-005.md>)

- Partição RJD1 (DES/TQS) – Sub-systems:

- 

- DSDA (Desenvolvimento ) = DSD2

- DSHB ( TQS ) = DSH0

- Option D4 ou G.1.12 (DB2I - DB2 Interactive)

- Option D3 (DBADMIN – DB2 Administration Tool)

- Option G.1.3.4 (Data Set List Utility – Acesso aos Data Sets)

- Option G4 ;ST (ou TSO SDSF; ST)

- Option S8 ; MainView

- ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-006.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-006.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-006.md>)

- PARTIÇÃO RJP4 (DES/TQS/GER/PRD) – Instâncias: DSND, DSNH, DSNG e DSNP

<!-- -->

- Option D4 ou G.1.12 (DB2I - DB2 Interactive)

- Option D12 (DBADMIN – DB2 Administration Tool)

- Option G.1.3.4 (Data Set List Utility – Acesso aos Data Sets)

- Option G4 ; ST (ou TSO SDSF; ST)

- Option S8 ; MainView

![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-007.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-007.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-007.md>)

1.  **Data Sets**

> xxxxxx = userid ou nome abreviado do DBA

- PDS onde se armazena as DDLs geradas:

<!-- -->

- SUPB.DSS0.V01.DDL (DDL’s / Entrada para o SPUFI)

- SUPB.DSS0.V01.DDL.FUG ((DDL’s do sistema FUG / Entrada para o SPUFI)

- Padrão de nomes para as DDLs geradas:

> zzzXnnnn

<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 90%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>X</strong>nnnn</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">X</td>
<td><p>Ambiente onde a DDL será aplicada:</p>
<p><strong>D</strong> -&gt; DES , <strong>H</strong>-&gt; TQS , <strong>M</strong>-&gt; HMP e <strong>P</strong>-&gt; PRD</p></td>
</tr>
<tr>
<td style="text-align: center;">nnnn</td>
<td>Sequencial de “0000” a “9999”</td>
</tr>
</tbody>
</table>

Exemplo: SGR**D**0001

- Data Set de saída do SPUFI, exemplos:

<!-- -->

- SUPB.xxxxxx.SYSOUT.SPUFI

- Cxxxxx ou Pxxxx.SPUFI.DB2

<!-- -->

- Data Set de trabalho:

<!-- -->

- SUPB.xxxxxx.\*.\*.\*.\*

- DES.SUPB.ZZZ.\*.\*

<!-- -->

- PDS aonde disponibilizamos para a equipe da Produção as DDLs para HMP e PRD:

<!-- -->

- SUPB.V00.DDL

<!-- -->

- PDS que contém copias das DDLs dos bancos DB2 dos ambientes DES, TQS, HMP e PRD:

<!-- -->

- DES -\> SUPB.V00.DDL.BANCOS.DES

- TQS -\> SUPB.V00.DDL.BANCOS.HML

- HMP -\> SUPB.V00.DDL.BANCOS.HMP

- PRD -\> SUPB.V00.DDL.BANCOS.PRD

> OBS: Pode-se verificar através destes arquivos as DDLs dos ambientes HMP e PRD, as quais o DBA de Desenvolvimento não tem acesso diretamente.
>
> Cada ambiente possui também 30 versões mais antigas destes datasets.

2.  **Processo para os ambientes DES – DSD0 e DSND (implementação e modelo)**

- Uma característica importante do Site Rio de Janeiro é que possuímos e mantemos modelos somente para o ambiente de Desenvolvimento;

- A base para o trabalho nos outros ambientes (TQS, HMP e PRD) será sempre a DDL gerada e testada no ambiente de Desenvolvimento (DES);

- Um ponto importante é sempre observar o padrão de nomes das DDLs e os nomes dos “owner’s” das Views e Sequences em cada ambiente;

- A demanda sempre passa pela validação do ADI com exceção dos seguintes casos:

  - Criação e alteração de índices por problemas de desempenho;

  - Criação e alteração de Sequences;

  - Alteração de definições físicas de armazenamento (ex: particionamento de Tablespace, de índices, etc).

  1.  **Demandas recebidas pela equipe ABD**

      1.  **Insumos**

<!-- -->

- PPDS: Solicitação de Validação do Modelo de Dados (opcional se a demanda passou pelo ADI e obrigatória quando a demanda vem direto para o ABD);

- PPDS: Documento de Validação Modelo de Dados (ADI) - Objetos Aprovados – **somente cobrado se passou pelo ADI;**

- Nome e número da versão do modelo de desenvolvimento correspondente à demanda passada pela validação do ADI atualizado no repositório unificado de São Paulo (PowerDesigner);

- Quando não houver validação do ADI a equipe de projeto baixa e altera a última versão do modelo do repositório o enviando-a diretamente para o ABD.

  1.  **Processo**

      1.  **Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servicos.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Em toda requisição do GSC deverá estar explicitada de forma clara e completa:

<!-- -->

- Indicação do ambiente. ex:DESENVOLVIMENTO;

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a requisição (ex: DES, TQS, HMP e PRD);

<!-- -->

- Os arquivos PPDS de Solicitação de Validação do Modelo de Dados (opcional) e PPDS de Validação Modelo de Dados (ADI), devem ser anexados à requisição quando for o caso;

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados.

- Nome e número da versão do modelo de desenvolvimento correspondente à validação da ADI atualizada no repositório unificada de SP deve ser informada na requisição (pode estar tanto no laudo da ADI quanto no texto da própria requisição);

- Verificar, quando for o caso, se todas as solicitações que constam no PPDS de Solicitação de Validação constam como aprovadas no laudo da ADI, no que lhe é pertinente;

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (ex: explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Baixar a versão informada do modelo e verificar se constam nela todas as manutenções aprovadas no laudo da ADI;

- Verificar a volumetria dos itens requeridos para analisar uma possível necessidade de particionamento (PBR) de tabelas;

OBS: Não sendo PBR obrigatoriamente todo Tablespace deverá ser PBG.

1.  **Preparação do modelo para implementação**

- Realizar os ajustes físicos necessários no modelo de dados **de acordo com o padrão da TE074** e melhores práticas descritas abaixo;

- Os ajustes físicos ligados as opções de armazenamento de Tablespaces, Tabelas e Índices são atualizados no modelo pelos DBAs;

- Nomenclatura dos itens a serem verificados no modelo, conforme a padronização especificada na TE074 – Anexo II Denominação de Objetos Físicos (Observação: para este documento foi utilizada a versão 19 do manual normativo);

<!-- -->

- **DATABASE**:

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>DB</strong>nnn</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada.Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td>Sequencial de “000” a “999”</td>
</tr>
</tbody>
</table>

> *CREATE DATABASE zzzDBnnn*
>
> *BUFFERPOOL BP10*
>
> *INDEXBP BP11*
>
> *STOGROUP zzzSGnnn*
>
> *OBS:* Cada sistema tem seu próprio storage group zzzSGnnn.

- **TABLESPACE**:

> Caso o Tablespace não tenha sido definido, criá-lo conforme orientações abaixo;
>
> Cada Tablespace comporta somente uma tabela.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>TS</strong>nnn</td>
</tr>
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

> **EXEMPLO:**
>
> *CREATE TABLESPACE zzzTSnnn*
>
> *IN zzzDBnnn*
>
> *USING STOGROUP zzzSGnnn*
>
> *PRIQTY -1 SECQTY -1*
>
> *FREEPAGE 0 PCTFREE 5 FOR UPDATE 0*
>
> *GBPCACHE CHANGED*
>
> *TRACKMOD YES*
>
> *MAXPARTITIONS 2* \* *(ou NUMPARTS n)*
>
> *LOGGED*
>
> *DSSIZE 64 G*
>
> *SEGSIZE 32*
>
> *BUFFERPOOL BP10 (BP8K\_, BP16K\_, BP32K\_)*
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

- **INDICES**:

> Caso o índice único da primary key não tenha sido definido, criá-lo conforme orientações abaixo;
>
> No caso de índice da UNIQUE KEY, verificar observação naquele item específico.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzn<strong>I</strong>nnn</td>
</tr>
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

> *CREATE UNIQUE INDEX zzz.zzznInnn*
>
> *ON zzz.zzzTBnnn_EXEMPLO*
>
> *(NU_EXEMPLO_COLUNA ASC)*
>
> *PARTITIONED\**
>
> *USING STOGROUP SGDDB201*
>
> *PRIQTY -1 SECQTY -1*
>
> *FREEPAGE 0 PCTFREE 5*
>
> *GBPCACHE CHANGED*
>
> *CLUSTER\*\**
>
> *COMPRESS NO*
>
> *BUFFERPOOL BP11 (BP8K\_, BP16K\_, BP32K\_)*
>
> *DEFER NO*
>
> *DEFINE YES*
>
> *PIECESIZE 2 G;*
>
> \* caso o *Tablespace* seja do tipo PBR e não tenha sido definido o *option* do índice a equipe de projeto deverá ser questionada se os índices deverão ser ou não particionados;
>
> \*\* caso não seja especificado, o índice da *primary key* será definido explicitamente como *cluster.*

- **TABELAS:**

> Cada Tablespace comporta somente uma tabela.
>
> TABLESPACE – sempre associar a tabela ao seu respectivo tablespace na opção Physical Options das propriedades da tabela no modelo de dados;
>
> PARTICIONAMENTO – caso a tabela esteja definida como particionada, verificar se a definição está completa, coerente com o tablespace e sem erro de execução.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>TB</strong>nnn_t</td>
</tr>
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

> *CREATE TABLE zzz.zzzTBnnn_EXEMPLO*

- **COLUNAS:**

> NOME – Não pode conter mais do que 30 caracteres. No caso de colunas do tipo VARCHAR, o limite são 25 caracteres. Caso o nome da coluna ultrapasse este limite, avaliar (dependendo de ocorrências desta situação) se a demanda deve ser devolvida para a equipe de desenvolvimento, para que esta entre em contato com a ADI para correção. No caso de devolução da demanda, a ADI deve corrigir o modelo de dados no repositório unificado de São Paulo (PowerDesigner) e então a equipe de desenvolvimento deve informar à ABD, via GSC, o novo número da versão do modelo de dados que consta no repositório unificado de São Paulo (PowerDesigner) correspondente à correção;
>
> POSICIONAMENTO – No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, na hora da implementação física o mesmo será colocado ao final.

- **PRIMARY KEY:**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>PK</strong>nnn</td>
</tr>
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

> *CONSTRAINT zzzPKnnn*
>
> *PRIMARY KEY (NU_EXEMPLO_COLUNA)*

- **SEQUENCE**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>SQ</strong>nnn_t</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
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

> *SET CURRENT SQLID=’zzz’*
>
> *CREATE SEQUENCE **XXX**zzz.zzz**SQ**nnn_SEQUENCE_EXEMPLO AS*

- ***XXX** refere-se ao ambiente onde a Sequence está sendo criada, ou seja, DES, TQS, HMP ou PRD;*

- *Quando a chave primária da tabela for um número seqüencial sempre deverá ser definida uma Sequence para gerar este número para esta tabela. Esta Sequence será sempre no formato zzzSQnnn.*

- *Quando a Sequence for criada para qualquer outro atributo da tabela deverá seguir o padrão : zzzSQnnn_nome-da-coluna.*

> OBS: Normalmente definimos o CACHE como 20 (default). Na ocorrência da Sequence ser utilizada em processo massivo de INSERT, rever esse parâmetro.

- **UNIQUE KEY**:

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzn<strong>U</strong>nnn</td>
</tr>
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

> *CONSTRAINT zzznUnnn*
>
> *UNIQUE (NU_EXEMPLO_COLUNA, NU_EXEMPLO_COLUNA2)*
>
> No caso de utilização de UNIQUE KEY, para que tanto a chave única quanto o índice único correspondente sejam apresentados no Preview do PowerDesigner é necessário que as seguintes ações sejam realizadas:

- Ao baixar o modelo do repositório unificado de São Paulo (PowerDesigner), ir na opção Generate Database 🡪 Options , selecionar a opção “Create alternate key” e clicar em “Aplicar”;

- Criar o índice único correspondente à unique key caso já não esteja criado;

- No Index Properties 🡪 Columns o campo “Columns definition” deverá estar marcado como None (o índice único correspondente à unique key NÃO deverá estar vinculado à unique key);

- Tais ações são necessárias devido à uma limitação da ferramenta PowerDesigner que não apresenta a DDL quando a unique key está vinculada à algum índice.

<!-- -->

- **ALTERNATE KEY**:

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzAKnnn</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> *CONSTRAINT zzzAKnnn*
>
> *UNIQUE (NU_EXEMPLO_COLUNA, NU_EXEMPLO_COLUNA2)*

- **CHECK CONSTRAINT**: O Check de domínio somente é definido se o seu escopo for de ordem binária ou seja, se os valores pertencentes ao domínio for restrito a dois.

> **Ex**: ( V -\> Verdadeiro ou F -\> Falso; 0 ou 1 ; S -\> Sim ou N-\> Não ).
>
> Se o domínio tiver mais do que 2 valores deverá, obrigatoriamente, que ser definida uma tabela, evitando assim a necessidade de geração de DDLs quando da atualização dessa lista de valores.
>
> COMPATIBILIDADE COM O TIPO DO ATRIBUTO;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzn<strong>C</strong>nnn</td>
</tr>
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

> *CONSTRAINT zzznCnnn CHECK (IC_EXEMPLO_COLUNA IN ('S', 'N'))*

- **COLUNA IDENTITY**: Não é utilizada no site do Rio de Janeiro para evitar erros no uso do utilitário LOAD, evitando assim a renumeração das chaves. Dessa forma damos preferencia ao uso de SEQUENCE.

- **RELACIONAMENTO**:

> COMPATIBILIDADE COM O TIPO DOS ATRIBUTOS DA PK OU UK DA TABELA PAI;

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzn<strong>F</strong>nnn</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">n</td>
<td>Seqüencial “0” a “9” e “A” a “Z”.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva</p></td>
</tr>
</tbody>
</table>

> Exemplo:
>
> *ALTER TABLE zzz.zzzTBnnn_EXEMPLO FOREIGN KEY zzznFnnn*
>
> *(NU_EXEMPLO_COLUNA2)*
>
> *REFERENCES zzz.zzzTB002_TESTE*
>
> *(NU_TESTE_COLUNA)*
>
> *ON DELETE RESTRICT ENFORCED;*

- **VIEWS:**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>VW</strong>nnn_t</td>
</tr>
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

> *CREATE VIEW **XXX**zzz.zzzVWnnn_EXEMPLO AS*
>
> *SELECT \* FROM zzz.zzzTBnnn_EXEMPLO;*

- ***XXX** refere-se ao ambiente onde a View está sendo criada, ou seja, DES, TQS, HMP ou PRD.*

> ***OBS:** Reparar que a View é sempre definida com SELECT \*.*

- **TRIGGER**:

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzzn<strong>T</strong>nnn</td>
</tr>
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

> *CREATE TRIGGER zzz.zzznTnnn*

- **STORED PROCEDURE**:

- 

> Necessita de autorização (TE111).

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<tbody>
<tr>
<td colspan="2">zzz<strong>SP</strong>999_t</td>
</tr>
<tr>
<td style="text-align: center;">zzz</td>
<td>Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td>Sequencial de “000” a “999”.</td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

> *CREATE PROCEDURE zzz.zzzSPnnn_TESTE*

1.  **Implementação no banco**

- Para a geração da DDL a partir do modelo do PowerDesigner, observar se na opção GENERATE DATABASE 🡪 Options estão “marcados” todos os objetos necessários à manutenção (inclusive ALTERNATE KEY, PRIMARY KEY, entre outros, que costumam não ser gerados na DDL por não estarem marcados);

- Sempre realizar as alterações no banco a partir da DDL gerada e customizada a partir do modelo para garantirmos que foram definidas sem erros;

- **Salvar sempre** a DDL customizada que será aplicada ao banco no PDS SUPB.DSS0.V01.DDL ou no SUPB.DSS0. V01.DDL .FUG (este ultimo somente no caso do sistema FUG), observando sempre o padrão de nome e o versionamento correto de cada ambiente (DES,TQS,HMP e PRD);

- Para criar uma DDL nova com a numeração correta deve sempre adicionar mais um ao número, sequencialmente, a partir da ultima criada por sistema em DES e manter este mesmo número para as versões correspondentes de TQS, HMP e PRD; alterando o nome e conteúdo de cada uma conforme o padrão para cada ambiente.

Exemplo: SGR**D**0001, a próxima será SGR**D**0002 para DES e SGR**H**0002 para TQS.

- Se documenta como comentário no início da DDL o dia de sua aplicação para DES e TQS, bem como os números da requisição (REQ) e da ordem de trabalho (WO) do serviços.caixa;

- Implementação para <u>BANCOS NOVOS</u>:

  - Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner;

  - Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável;

  - Criação de DCLGEN (No site Rio de Janeiro a responsabilidade de criar DCLGEN é da equipe de Projeto e não do DBA);

  - Os planos e PACKAGEs são criados via ENDEVOR pelo elemento do tipo BIND gerado pela equipe de Projetos; não sendo uma responsabilidade do DBA do Rio de Janeiro;

  - Os nomes das Collection’s dos sistemas seguem o seguinte padrão:

> zzzCB001 – Collection batch;
>
> zzzCO001 – Collection online;
>
> OBS: Cada Sistema possui a sua própria Collection Online e Batch.

- Criar a PLAN_TABLE e as demais tabelas DSN\_\* utilizando como modelo a DDL do Banco **DSNPLSGR**;

> *Exemplo:*
>
> *CREATE TABLE XXXzzz.PLAN_TABLE*

- ***XXX** refere-se ao ambiente onde está sendo criada, ou seja, DES ou TQS;*

  - Realizar RUNSTATS dos objetos do banco;

  - Caso tenha sido realizado algum ajuste no modelo de dados, será necessário consolidar no repositório unificado de São Paulo (PowerDesigner);

  - No momento da consolidação deve ser marcada a opção “Freeze after checking”. Opcionalmente, conforme a necessidade, marcar ou desmarcar a opção “Check out after check in”. Deverá ser informado no campo “Comment” o número da requisição correspondente;

> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.md>)

- Responder na requisição o nome da DDL aplicada, se o modelo foi alterado e versionado no repositório do Power Designer e as ressalvas, caso existam;

<!-- -->

- Implementação para <u>OBJETOS EXISTENTES</u>:

<!-- -->

- Criar os objetos conforme a DDL gerada pelo modelo PowerDesigner;

- Caso no momento da execução da DDL ocorram erros, acertar o modelo de dados até que a DDL que consta no modelo esteja íntegra e executável;

- Realizar RUNSTATS apenas dos objetos que sofreram manutenção;

- Realizar REBIND dos packages que utilizam o(s) objeto(s);

> OBS: Normalmente fazemos o REBIND de todas as packages do sistema
>
> EX: REBIND PACKAGE(PBSCB001.\*) EXPLAIN(YES) FLAG(C)
>
> REBIND PACKAGE(PBSCO001.\*) EXPLAIN(YES) FLAG(C)

- Caso tenha sido realizado algum ajuste no modelo de dados do repositório unificado de São Paulo (PowerDesigner), será necessário consolidá-lo no repositório;

- No momento da consolidação deve ser marcada a opção “Freeze after checking”. Opcionalmente, conforme a necessidade, marcar ou desmarcar a opção “Check out after check in”. Deverá ser informado no campo Comment o número da requisição correspondente;

> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-008.md>)

- Responder na requisição o nome da DDL aplicada em Desenvolvimento. Caso o modelo tenha sofrido alteração, informar que o mesmo foi versionado no repositorio do PowerDesigner. Caso tenha sido requisitada a geração de DDL para outros ambientes ( TQS, HMP ou PRD ), informar também o nome das DDLs. Colocar também as ressalvas, caso existam.

  1.  **Resultado do Atendimento do DBA**

> Após o atendimento da Solicitação ( seja a mesma proveniente do GSC ( REQ ) seja ainda via RTC ), o DBA deverá verificar quanto aos seguintes registros:

1.  Registrar no GIT ( ddl_bd )

> Na ocorrência do atendimento envolver a geração e/ou a implementação de uma DDL, deverão ser criados dois documentos no GIT. Um para a salva-guarda da DDL e outro para o registro do RAT ( Relatorio de Atendimento Tecnico ).
>
> Na ocorrência do atendimento não envolver a geração de uma DDL, somente deverá ser criado o RAT ( Relatorio de Atendimento Tecnico ), de forma a documentar o atendimento do DBA.

2.  Registrar no PDM ( do PowerDesigner)

> É importante salientar que, de forma a documentarmos a localização física do banco de dados bem como mantermos tal localização sempre atualizada, devemos ( sempre que procedermos a alguma implementação física ) atualizar no PDM do sistema em referência, as seguintes informações:
>
> Power Designer
>
> Fazer CHECK OUT do Modelo em referencia
>
> Click com o botão direito do mouse no nome do PDM.
>
> Properties
>
> Selecionar na Aba superior DEFINITION
>
> Selecionar na Aba inferior DESCRIPTION ( Ver foto abaixo ).
>
> ![Imagem](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-009.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-009.md](<./imagem/Guia de atuação DBA DB2 Site RJ-21-03-2024 Revisado-imagem-009.md>)
>
> Inserir nessa tela conforme abaixo.
>
> <u>Exemplo para uma base DB2:</u>
>
> Sistema: SIPBS
>
> SGBD: DB2
>
> Ambiente: DES
>
> Host Scan / IP: 10.216.80.110
>
> Porta: 448
>
> Service Name: RJKDB2DSD0
>
> <u>Exemplo para uma base Oracle:</u>
>
> Sistema: SISNS
>
> SGBD: Oracle
>
> Ambiente: DES
>
> Host Scan / IP: scan-oradesbr05.extra.caixa.gov.br
>
> Porta: 1521
>
> Service Name: CDBD07NGPDB003

3.  **Processo para o ambiente TQS – DSDH ou DSNH (implementação)**

    1.  **Insumos**

- O número da Requisição do “servicos.caixa” ou o numero do RTC do trabalho de implementação que foi realizado no ambiente de Desenvolvimento. Utiliza-se esta informação para identificar qual o nome da DDL que foi aplicada no ambiente de Desenvolvimento. Em algumas situações a equipe informa o nome da DDL que foi aplicada em Desenvolvimento.

  1.  **Processo**

      1.  **Validação dos requisitos para atendimento**

<!-- -->

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servicos.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Toda requisição deverá explicitar:

<!-- -->

- Indicação do ambiente: TQS;

- Indicação da requisição atendida para o ambiente DES ou ainda o nome da DDL que foi aplicada em Desenvolvimento;

- Verificar se há indicação de outros ambientes diferente de TQS, onde deverá ser executada a demanda simultaneamente (ex: HMP, PRD);

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Verificar se as manutenções solicitadas para o ambiente TQS encontram-se implementadas no ambiente de desenvolvimento.

  1.  **Preparação da DDL para implementação no banco**

<!-- -->

- Para a geração da DDL de TQS sempre se basear na DDL de desenvolvimento realizando os ajustes do ambiente necessários (ex: Owner das Views).

- Verificar se existem DDLs anteriores que não foram aplicadas em TQS cujos objetos sejam os mesmos ou se relacionem com os objetos da DDL que foi solicitada a aplicação.

- OBSERVAR as instruções da equipe de desenvolvimento, na requisição a respeito das linhas existentes nas tabelas;

- Realizar a atualização no banco;

- Realizar RUNSTATS do objeto;

- Realizar REBIND dos PLANOS e PACKAGES que utilizam o objeto;

OBS: Normalmente fazemos o REBIND de todas as packages do sistema

EX: REBIND PACKAGE(PBSCB001.\*) EXPLAIN(YES) FLAG(C)

REBIND PACKAGE(PBSCO001.\*) EXPLAIN(YES) FLAG(C)

- Responder na requisição o nome da DDL aplicada em TQS. Caso tenha sido requisitado à geração da DDL dos outros ambientes (HMP e/ou PRD), informe também o nome das DDLs bem como a ordem de aplicação caso seja mais do que uma. Colocar também as ressalvas, caso existam.

4.  **Processo para o ambiente HMP**

    1.  **Insumos**

- O número da Requisição do “servicos.caixa” ou o numero do RTC do trabalho de implementação que foi realizado no ambiente de Desenvolvimento ou ainda o nome da DDL que foi aplicada em Desenvolvimento ou TQS. Utiliza-se esta informação para identificar qual o nome da DDL que foi aplicada no ambiente de Desenvolvimento.

  1.  **Processo**

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servicos.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Toda requisição deverá explicitar:

<!-- -->

- Indicação do ambiente: HMP;

- Indicação da requisição atendida para o ambiente TQS ou o nome da DDL que foi aplicada em Desenvolvimento ou TQS;

- Verificar se há indicação de aplicação para ambiente diferente de HMP, onde deverá ser executada a demanda simultaneamente (ex: PRD);

<!-- -->

- Verificar se as manutenções solicitadas para o ambiente HMP encontram-se implementadas no banco de TQS;

- No Site do Rio de Janeiro os DBAs de Desenvolvimento não atuam diretamente no ambiente de HMP;

- A atuação se limita a criação e disponibilização da DDL de HMP;

- Cria-se a DDL com nome no formato padrão de HMP. ( zzzMnnnn );

- A DDL de HMP é criada a partir da DDL que se encontra em TQS no PDS SUPB.DSS0.V01.DDL. O DBA analisa a DDL e verifica a sua compatibilidade com a estrutura existente em HMP. Essa estrutura é obtida através do acesso ao PDS SUPB.V00.DDL.BANCOS.HMP ( aonde reside a DDL integral do Sistema cujo atendimento esta sendo realizado ). A DDL é confeccionada e salva nos PDS’s SUPB.DSS0.V01.DDL e SUPB.V00.DDL. (este ultimo dataset é utilizado para fazer a comunicação (passagem) das DDLs com os DBAs de Produção ).

5.  **Processo para o ambiente PRD**

    1.  **Insumo**

    - O numero da Requisição do “servicos.caixa” ou o numero do RTC do trabalho de implementação que foi realizado no ambiente de Desenvolvimento ou ainda o nome da DDL que foi aplicada em Desenvolvimento ou TQS. Utiliza-se esta informação para identificar qual o nome da DDL que foi aplicada no ambiente de Desenvolvimento.

    2.  **Processo**

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servico.caixa), no seguinte caminho: Tecnologia da Informação e Comunicação (Subcategorias) --\> Centralizadoras de Tecnologia da Informação (Subcategorias) --\> CETAD - Suporte Não-Produção --\> Suporte à Banco de Dados;

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Toda requisição deverá explicitar:

<!-- -->

- Indicação do ambiente: PRD;

- Indicação da requisição atendida para o ambiente HMP ou o nome da DDL que foi aplicada em Denvolvimento, TQS ou HMP;

<!-- -->

- Verificar se as manutenções solicitadas para o ambiente PRD encontram-se implementadas no banco de HMP;

- No Site do Rio de Janeiro os DBAs de Desenvolvimento não atuam diretamente no ambiente de PRD;

- A atuação se limita a criação e disponibilização da DDL de PRD;

- Cria-se a DDL com nome no formato padrão de PRD. ( zzzPnnnn );

- A DDL de PRD é criada a partir da DDL que se encontra em HMP no PDS SUPB.DSS0.V01.DDL. O DBA analisa a DDL e verifica a sua compatibilidade com a estrutura existente em PRD. Essa estrutura é obtida através do acesso ao PDS SUPB.V00.DDL.BANCOS.PRD ( aonde reside a DDL integral do Sistema cujo atendimento esta sendo realizado ). A DDL é confeccionada e salva nos PDS’s SUPB.DSS0.V01.DDL e SUPB.V00.DDL. (este ultimo dataset é utilizado para fazer a comunicação (passagem) das DDLs com os DBAs de Produção ).

6.  **DCLGEN**

- A geração da DCLGEN não é uma tarefa atribuída é ao grupo de DBAs de Desenvolvimento do Site do Rio de Janeiro. Tal responsabilidade é atribuída à equipe de Sistemas da Comunidade

7.  **Dúvidas quanto às práticas de implementação no site Rio de Janeiro**

- No Site do Rio de Janeiro não existe a atividade de manutenção dos modelos de TQS, HMP e PRD. Todo o trabalho é sempre iniciado a partir das definições do modelo de DES;

- Parte do trabalho dos DBAs de Desenvolvimento do Rio de Janeiro é disponibilizar as DDLs já prontas para os ambientes HMP e PRD no PDS SUPB.V00.DDL. A equipe de produção (CEPTIRJ) não acessa os modelos do Repositório do PowerDesigner;

- Cada Tablespace comporta somente uma tabela;

- O nome da coluna não pode conter mais do que 30 caracteres. No caso de colunas do tipo VARCHAR, o limite são 25 caracteres;

- No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, sempre o movemos para o final da tabela.

- A produção é a responsável pelos cálculos de projeto físico e revisão dos parâmetros de ambiente das DDLs de HMP e PRD. No que se refere ao particionamento PBR, os DBAs de desenvolvimento definem junto com a equipe de Projeto esse particionamento.
