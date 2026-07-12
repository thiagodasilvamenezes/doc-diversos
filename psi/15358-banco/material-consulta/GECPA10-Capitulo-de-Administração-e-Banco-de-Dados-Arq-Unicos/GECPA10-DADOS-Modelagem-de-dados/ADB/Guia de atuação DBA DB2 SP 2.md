**Guia de Atuação DBA DB2 Site SP**

Objetivo:

Orientar o profissional DBA nos processos, ferramentas e características do DB2 do site São Paulo no que tange aos ambientes DES/TQS (implementação e modelo).

.

> **Índice**

[1.1. Partições e Instâncias: [5](#_Toc90481760)](#_Toc90481760)

[1.2. Address Space DB2. [6](#_Toc90481761)](#_Toc90481761)

[1.2.1. Adress Space DB2 de Desenvolvimento: [6](#_Toc90481762)](#_Toc90481762)

[1.2.2. Address Space DB2 de TQS: [6](#_Toc90481763)](#_Toc90481763)

[2. Acesso ao TSO de Desenvolvimento SP – Somente através do SOLVE: [7](#_Toc90481764)](#_Toc90481764)

[2.1. Opções para cadastramento no SOLVE: [7](#_Toc90481765)](#_Toc90481765)

[2.1.1. Partição DSP1 - TSO de Desenvolvimento SP – D1: L TSOD1 ou L a720. [7](#_Toc90481766)](#_Toc90481766)

[2.1.2. Partição DSP2 - TSO de Desenvolvimento SP – D2: L TSOD2 [7](#_Toc90481767)](#_Toc90481767)

[3. Profiles de TSO utilizadas : [8](#_Toc90481768)](#_Toc90481768)

[3.1. A profile de TSO IKJSBD00 é utilizada somente pela equipe de DBAs. [8](#_Toc90481769)](#_Toc90481769)

[3.2. A profile de TSO IKJDES00 é utilizada pelas equipes de desenvolvimento. [8](#_Toc90481770)](#_Toc90481770)

[3.3. A profile de TSO IKJSUP00 é utilizada pela equipe de suporte. [8](#_Toc90481771)](#_Toc90481771)

[4. MENU PRINCIPAL - Acessar a opção G – “Produtos DBA” . [9](#_Toc90481772)](#_Toc90481772)

[4.1. Menu Produtos DBA: [9](#_Toc90481773)](#_Toc90481773)

[5. Data Sets. [10](#_Toc90481774)](#_Toc90481774)

[5.1. Data set individual de trabalho: [10](#_Toc90481775)](#_Toc90481775)

[5.2. Data set de trabalho da equipe de DBA/SP: [10](#_Toc90481776)](#_Toc90481776)

[5.3. Data set DCLGEN dos sistemas: [10](#_Toc90481777)](#_Toc90481777)

[5.4. Data set de DBRM: [12](#_Toc90481778)](#_Toc90481778)

[5.5. Data set para schedule do CONTROL-M: [12](#_Toc90481779)](#_Toc90481779)

[5.6. Data set profiles de RACF: [12](#_Toc90481780)](#_Toc90481780)

[6. Modelo de JOBNAME utilizado pela equipe DBA/SP: [12](#_Toc90481781)](#_Toc90481781)

[7. Control-M. [13](#_Toc90481782)](#_Toc90481782)

[7.1. Painel Control-M com as schedules da equipe DBA/SP : [13](#_Toc90481783)](#_Toc90481783)

[8. REXX disponíveis para utilização dos DBAs: [14](#_Toc90481784)](#_Toc90481784)

[8.1. TSO DCLGEN: [14](#_Toc90481785)](#_Toc90481785)

[8.1.1. Padrão de sysin para DCLGEN de SP: [15](#_Toc90481786)](#_Toc90481786)

[8.1.2. Padrão de sysin para DCLGEN para os sistemas: ART, FIX e GPB: [15](#_Toc90481787)](#_Toc90481787)

[8.1.3. Padrão de sysin para DCLGEN para os sistemas CLI [15](#_Toc90481788)](#_Toc90481788)

[8.1.4. Não há um padrão de sysin para DCLGEN do sistema ACL [16](#_Toc90481789)](#_Toc90481789)

[8.2. TSO REBIND [16](#_Toc90481790)](#_Toc90481790)

[9. Collections, Planos e Packages para as aplicações. [17](#_Toc90481791)](#_Toc90481791)

[9.1. Collections DB2. [17](#_Toc90481792)](#_Toc90481792)

[9.2. Packages DB2. [17](#_Toc90481793)](#_Toc90481793)

[9.2.1. Exemplo do comando Bind Package para um Programa Online [17](#_Toc90481794)](#_Toc90481794)

[9.2.2. Exemplo do comando Bind Package para um Programa BATCH [18](#_Toc90481795)](#_Toc90481795)

[9.3. Planos DB2. [18](#_Toc90481796)](#_Toc90481796)

[9.3.1. Exemplo de Bind Plan para um Programa Online: [18](#_Toc90481797)](#_Toc90481797)

[9.3.2. Exemplo de Bind Plan para um Programa Batch: [19](#_Toc90481798)](#_Toc90481798)

[10. PLAN_TABLES dos sistemas de aplicação: [19](#_Toc90481799)](#_Toc90481799)

[11. Etapas para atendimento de demandas, no ambiente DES/DBD0 [20](#_Toc90481800)](#_Toc90481800)

[11.1. Requisição deve estar aberta no GSC. [20](#_Toc90481801)](#_Toc90481801)

[11.2. Verificação dos insumos necessários quando há a validação da ADI. [20](#_Toc90481802)](#_Toc90481802)

[11.3. Baixar a versão do modelo (PWD) de desenvolvimento identificado no Documento de Validação de Modelo de Dados. [20](#_Toc90481803)](#_Toc90481803)

[11.4. Utilizar a TE074 – Anexo \|\| para denominação dos objetos físicos de dados [21](#_Toc90481804)](#_Toc90481804)

[11.5. Realizar as alterações/padronizações no modelo de dados dos parâmetros necessários para implementação física no ambiente de Desenvolvimento; [21](#_Toc90481805)](#_Toc90481805)

[11.6. Gerar o scrips para implementação física no ambiente DES, a partir do modelo de dados de desenvolvimento. \*\* [21](#_Toc90481806)](#_Toc90481806)

[11.7. Executar os scripts no DBD0. [21](#_Toc90481807)](#_Toc90481807)

[11.8. Executar Reorg/Runstats/checkdata (se necessário). [21](#_Toc90481808)](#_Toc90481808)

[11.9. Rebind dos pakages dos programas que utilizam os objetos envolvidos na manutenção. [21](#_Toc90481809)](#_Toc90481809)

[11.10. Subir para repositório o modelo de dados atualizado (versionado), quando o DBA realizar qualquer alteração no modelo. [21](#_Toc90481810)](#_Toc90481810)

[11.11. Gerar relatório de atendimento; [21](#_Toc90481811)](#_Toc90481811)

[11.12. Concluir a REQ/WO. [21](#_Toc90481812)](#_Toc90481812)

[12. Etapas para atendimento de demandas, no ambiente TQS/DBDQ [21](#_Toc90481813)](#_Toc90481813)

[12.1. Requisição deve estar aberta no GSC. [21](#_Toc90481814)](#_Toc90481814)

[12.2. Não é obrigatório nenhum insumo, a alteração solicitada pode ser descrita na [21](#_Toc90481815)](#_Toc90481815)

[REQ . [21](#_Toc90481816)](#_Toc90481816)

[12.3. Gerar o script necessário para a manutenção, a partir do DB2 de Desenvolvimento – DBD0 [22](#_Toc90481817)](#_Toc90481817)

[12.4. Implementar as alterações no DBDQ [22](#_Toc90481818)](#_Toc90481818)

[12.5. Gerar Relatório de atendimento [22](#_Toc90481819)](#_Toc90481819)

[12.6. Concluir a REQ. [22](#_Toc90481820)](#_Toc90481820)

[13. Parâmetros utilizados para implementação física no site SP [22](#_Toc90481821)](#_Toc90481821)

[13.1.1. DATABASE [22](#_Toc90481822)](#_Toc90481822)

[13.1.2. TABLESPACE [22](#_Toc90481823)](#_Toc90481823)

[13.1.3. INDEX [23](#_Toc90481824)](#_Toc90481824)

Ambiente DB2 – Desenvolvimento / SP.

1.  <span id="_Toc90481760" class="anchor"></span>Partições e Instâncias:

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-001.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-001.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-001.md>)

2.  <span id="_Toc90481761" class="anchor"></span>Address Space DB2.

    1.  <span id="_Toc90481762" class="anchor"></span>Adress Space DB2 de Desenvolvimento:

> **DSP1 - DBD0 (IP: 10.192.224.58 Porta: 2905)**
>
> DBD0DBM1
>
> DBD0DIST
>
> DBD0IRLM
>
> DBD0MSTR
>
> **DSP2 – DBD2 (IP: 10.192.224.72 Porta: 2905)**
>
> DBD2DBM1
>
> DBD2DIST
>
> DBD2IRLM
>
> DBD2MSTR

2.  <span id="_Toc90481763" class="anchor"></span>Address Space DB2 de TQS:

> **DSP1 – DBD3 (IP: 10.192.225.76 Porta: 2909)**
>
> DBD3DBM1
>
> DBD3DIST
>
> DBD3IRLM
>
> DBD3MSTR
>
> **DSP2 – DBD4 (IP: 10.192.225.78 Porta: 2909)**
>
> DBD4DBM1
>
> DBD4DIST
>
> DBD4IRLM
>
> DBD4MSTR

1.  <span id="_Toc90481764" class="anchor"></span>Acesso ao TSO de Desenvolvimento SP – Somente através do SOLVE:

    1.  <span id="_Toc90481765" class="anchor"></span>Opções para cadastramento no SOLVE:

        1.  <span id="_Toc90481766" class="anchor"></span>Partição DSP1 - TSO de Desenvolvimento SP – D1: L TSOD1 ou L a720.

        2.  <span id="_Toc90481767" class="anchor"></span>Partição DSP2 - TSO de Desenvolvimento SP – D2: L TSOD2

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-002.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-002.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-002.md>)

**“Todas as atividades de Administração de Banco de Dados/ SP podem ser realizadas através da opção - TSO de Desenvolvimento SP – D1”.**

2.  <span id="_Toc90481768" class="anchor"></span>Profiles de TSO utilizadas :

    1.  <span id="_Toc90481769" class="anchor"></span>A profile de TSO IKJSBD00 é utilizada somente pela equipe de DBAs.

    2.  <span id="_Toc90481770" class="anchor"></span>A profile de TSO IKJDES00 é utilizada pelas equipes de desenvolvimento.

    3.  <span id="_Toc90481771" class="anchor"></span>A profile de TSO IKJSUP00 é utilizada pela equipe de suporte.

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-003.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-003.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-003.md>)

3.  <span id="_Toc90481772" class="anchor"></span>MENU PRINCIPAL - Acessar a opção G – “Produtos DBA” .

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-004.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-004.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-004.md>)

1.  <span id="_Toc90481773" class="anchor"></span>Menu Produtos DBA:

> Este menu traz todos os produtos disponíveis para utilização dos DBAs
>
> ![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-005.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-005.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-005.md>)

4.  <span id="_Toc90481774" class="anchor"></span>Data Sets.

    1.  <span id="_Toc90481775" class="anchor"></span>Data set individual de trabalho:

> Cxxxxxx.DES.CNTL
>
> Pxxxxxx.DES.CNTL
>
> Onde: Cxxxxxx e Pxxxxxx é a matrícula do empregado / prestador.

2.  <span id="_Toc90481776" class="anchor"></span>Data set de trabalho da equipe de DBA/SP:

DES.SBD.V00.BOOK

DES.SBD.V00.CLIST

DES.SBD.V00.COBOL

DES.SBD.V00.DBRM

DES.SBD.V00.DCLGEN

DES.SBD.V00.JCL

DES.SBD.V00.LIB

DES.SBD.V00.PROC

DES.SBD.V00.SYSIN

3.  <span id="_Toc90481777" class="anchor"></span>Data set DCLGEN dos sistemas:

> **DES.sss.V00.DCLGEN(yyyyyyyy)**
>
> Onde:
>
> sss -\> sistema
>
> yyyyyyyy -\> 8 primeiras posições com o nome da tabela
>
> Exemplo: Tabela DDA.DDATBN01_TITULO_DDA
>
> **DES.DDA.V00.DCLGEN(DDATBN01)**
>
> **<u>\
> Exceções:</u>**
>
> Sistemas antigos (**OWNER** da tabela com 5 posições)
>
> **SI**sss. sss**XTB**nn
>
> DCLGEN:
>
> **DES.sss.V00.DCLGEN(sssTBnn2)**
>
> Onde:
>
> sss -\> sistema
>
> TB ou VW -\> fixo

nn-\> sequencial

> 2 -\> fixo
>
> Exemplo: Tabela **SIABE.ABEXTB01CTAACERTO**
>
> **DES.ABE.V00.DCLGEN(ABETB012)**
>
> ou
>
> **SI**sss.sss**TB**nnn
>
> DCLGEN:
>
> **DES.sss.V00.DCLGEN(sssTnnn2)**
>
> Onde:
>
> sss -\> sistema
>
> T ou W -\> fixo

nnn-\> sequencial

> 2 -\> fixo
>
> Exemplo: Tabela SIABE.ABETB087_MOTIVO_PRMSO_ACSO
>
> **DES.ABE.V00.DCLGEN(ABET0872)**

4.  <span id="_Toc90481778" class="anchor"></span>Data set de DBRM:

> DES.xxx.V00.DBRM(zzzzzzzz)
>
> Onde:
>
> xxx -\> sistema
>
> zzzzzzz -\> nome do programa
>
> Exemplo: DES.ABE.V00.DBRM(ABEPB019)

5.  <span id="_Toc90481779" class="anchor"></span>Data set para schedule do CONTROL-M:

> Para schedule dos JOBS da equipe DBA/SP utilizar o PDS:

DES.CTMD1.SCHEDULE (SBDDMZ01)

6.  <span id="_Toc90481780" class="anchor"></span>Data set profiles de RACF:

> SEGHD.ROT.REDEADB.Dddmmaa
>
> Obs: Todos os dias a segurança disponibiliza um arquivo com as profiles de RACF definidas para o DB2.
>
> Exemplo:
>
> \| MDSNTB \| DBD0.JAD.JAD\*.DELETE \| DESJAD \| READ \|
>
> \| MDSNTB \| DBD0.JAD.JAD\*.INSERT \| DESJAD \| READ \|
>
> \| MDSNTB \| DBD0.JAD.JAD\*.SELECT \| DESJAD \| READ \|
>
> \| MDSNTB \| DBD0.JAD.JAD\*.UPDATE \| DESJAD \| READ \|

5.  <span id="_Toc90481781" class="anchor"></span>Modelo de JOBNAME utilizado pela equipe DBA/SP:

**//SBDxxxxx** JOB (**SBD,SP,72664,09,30),**'SBD',REGION=0M,TIME=1440,

// CLASS=K,MSGCLASS=X,MSGLEVEL=(1,1),NOTIFY=&SYSUID

6.  <span id="_Toc90481782" class="anchor"></span>Control-M.

Rotinas diárias/semanais da equipe DBA são scheduladas no Control-M:

> Exemplos:
>
> SBDCMTSB = Imagecopy dos tablespaces das aplicações.
>
> SBDCMUPD=Atualização das estatísticas DB2 (sysibm) com os dados de produção.
>
> SBDCMPRD= Cópia do catálogo de Produção (owner PRD).
>
> SBDCMHMP=Cópia do catálogo de Homologação (owner HMP).

1.  <span id="_Toc90481783" class="anchor"></span>Painel Control-M com as schedules da equipe DBA/SP :

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-006.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-006.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-006.md>)

![Imagem](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-007.png>)

Descrição da imagem - [./imagem/Guia de atuação DBA DB2 SP 2-imagem-007.md](<./imagem/Guia de atuação DBA DB2 SP 2-imagem-007.md>)

7.  <span id="_Toc90481784" class="anchor"></span>REXX disponíveis para utilização dos DBAs:

    1.  <span id="_Toc90481785" class="anchor"></span>TSO DCLGEN:

> Para execução das DCLGENs de um sistema, digitar na linha de comando do TSO:
>
> **TSO DCLGEN xxx**
>
> Onde: xxx = sigla do sistema.
>
> Ao executar a REXX um JOB “SBDDxxxG” é submetido para geração de todas as DCLGEN do sistema informado.
>
> **Exceção:**
>
> **Não utilizar esta REXX para os sistemas desenvolvidos em outro site e migrados para São Paulo: ART, FIX, GPB, ACL e CLI.**

1.  <span id="_Toc90481786" class="anchor"></span>Padrão de sysin para DCLGEN de SP:

> DCLGEN TABLE(DDA.DDATBN01_TITULO_DDA)
>
> LIBRARY(DES.DDA.V00.DCLGEN(DDATBN01))
>
> ACTION(REPLACE)
>
> LANGUAGE(COBOL)
>
> STRUCTURE(DDATBN01)
>
> APOST

2.  <span id="_Toc90481787" class="anchor"></span>Padrão de sysin para DCLGEN para os sistemas: ART, FIX e GPB:

> DCLGEN TABLE(SIART.ARTTB001_APLICACAO)
>
> LIBRARY(DES.ART.V00.DCLGEN(ARTT0012))
>
> ACTION(REPLACE)
>
> LANGUAGE(COBOL)
>
> **NAMES(WT001-)**
>
> STRUCTURE(ARTT0012)
>
> APOST
>
> **COLSUFFIX(YES)**
>
> **Obs:** **Utilização dos parâmetros COLSUFFIX e NAMES.**

3.  <span id="_Toc90481788" class="anchor"></span>Padrão de sysin para DCLGEN para os sistemas CLI

> A equipe do SICLI (RJ) sempre encaminha a DCLGEN utilizada para atualização.
>
> DCLGEN TABLE(CLI.CLITBA50_FUNCAO_RSPNL_CARTEIRA)
>
> LIBRARY(DES.CLI.V00.DCLGEN(CLITBA50))
>
> ACTION(REPLACE)
>
> LANGUAGE(COBOL)
>
> NAMES(VWA50-)
>
> STRUCTURE(CLITBA50)
>
> APOST
>
> COLSUFFIX(YES)

4.  <span id="_Toc90481789" class="anchor"></span>Não há um padrão de sysin para DCLGEN do sistema ACL

> Para as novas tabelas, sempre utilizar o padrão dos sistemas de SP (item 8.1.1)
>
> Quando solicitado manutenção em qualquer tabela do ACL, devemos verificar se a DCLGEN utilizada apresenta “sulfixo” nas variáveis host.
>
> EX:
>
> 01 ACLTB107.
>
> 10 CO-APLIC-107 PIC X(7).
>
> 10 NU-TP-OPER-107 PIC S9(4) USAGE COMP.
>
> 10 NO-APLICACAO-107 PIC X(30).
>
> 10 NO-APELIDO-APLIC-107 PIC X(6).
>
> 10 IC-PRINCIPAL-107 PIC X(1).

2.  <span id="_Toc90481790" class="anchor"></span>TSO REBIND

> **TSO REBIND xxx Ex: TSO REBIND ABE**
>
> Onde: xxx = sigla do sistema.
>
> Para execução de REBIND dos packages inválidos de um determinado sistema.
>
> Execução de Rebind de planos inválidos de sistema informado – TSO REBIND xxx.

8.  <span id="_Toc90481791" class="anchor"></span>Collections, Planos e Packages para as aplicações.

    1.  <span id="_Toc90481792" class="anchor"></span>Collections DB2.

> COLCO001 -\> Todos os programas Online
>
> COLCB001 -\> Todos os programas Batch
>
> xxxCG001 -\> programas Coolgen (Onde: xxx sigla do sistema coolgen)

2.  <span id="_Toc90481793" class="anchor"></span>Packages DB2.

> Para cada programa compilado é gerado um bind package, conforme sysin abaixo exemplificado:

1.  <span id="_Toc90481794" class="anchor"></span>Exemplo do comando Bind Package para um Programa Online

> **BIND PACKAGE(COLCO001)**
>
> **MEM(DDAPO001)**
>
> QUAL(DDA)
>
> OWNER(DESDDA)
>
> LIB('END.SPD.TESTE.DBRM')
>
> SQLERROR(NOPACKAGE)
>
> VALID(B)
>
> ISOL(CS)
>
> REL(D)
>
> CURRENTD(N)
>
> EXPL(NO)
>
> ACTION(REPLACE)
>
> DEGREE(1)
>
> KEEPDYNAMIC(N) **....**

2.  <span id="_Toc90481795" class="anchor"></span>Exemplo do comando Bind Package para um Programa BATCH

> **BIND PACKAGE(COLCB001)**
>
> **MEM(DDAPB001)**
>
> QUAL(DDA)
>
> OWNER(DESDDA)
>
> LIB('END.SPD.TESTE.DBRM')
>
> SQLERROR(NOPACKAGE)
>
> VALID(B)
>
> ISOL(CS)
>
> REL(D)
>
> CURRENTD(N)
>
> EXPL(NO)
>
> ACTION(REPLACE)
>
> Para sub-rotinas BATCH / ONLINE são gerados dois packages um para COLCO001 e outro para COLCB001.
>
> COLCB001 DDABB400 DESDDA 2020-08-24-08.47
>
> COLCO001 DDABB400 DESDDA 2020-08-24-08.47

3.  <span id="_Toc90481796" class="anchor"></span>Planos DB2.

> Para cada programa compilado é gerado um bind plan, conforme sysin abaixo exemplificado:

1.  <span id="_Toc90481797" class="anchor"></span>Exemplo de Bind Plan para um Programa Online:

> **BIND PLAN(DDAPO001)**
>
> QUAL(DDA)
>
> OWNER(DESDDA)
>
> **PKL(\*.COLCO001.\* \*.**PROCCOL.\*)
>
> NODEFER(PREPARE)
>
> VALID(B)
>
> ISOL(CS)
>
> CACHE(0)
>
> ACQ(U)
>
> REL(D)
>
> EXPL(N)
>
> CURRENTD(N)
>
> ACTION(REPLACE)
>
> RETAIN
>
> DEGREE(1)
>
> SQLR(D)
>
> DISC(E)
>
> KEEPDYNAMIC(N) .....

2.  <span id="_Toc90481798" class="anchor"></span>Exemplo de Bind Plan para um Programa Batch:

**BIND PLAN(DDAPB001)**

> QUAL(DDA)
>
> OWNER(DESDDA)

**PKL(\*.COLCB001.\* \*.PROCCOL.\*)**

> NODEFER(PREPARE)
>
> VALID(B)
>
> ISOL(CS)
>
> CACHE(0)
>
> ACQ(U)
>
> REL(D)
>
> EXPL(N)
>
> CURRENTD(N)
>
> ACTION(REPLACE)
>
> RETAIN
>
> DEGREE(1)
>
> SQLR(D) ...

9.  <span id="_Toc90481799" class="anchor"></span>PLAN_TABLES dos sistemas de aplicação:

Para cada sistema é criado uma PLAN_TABLE

Exemplos:

DESABE. PLAN_TABLE

DESACC. PLAN_TABLE

DESACL. PLAN_TABLE

10. <span id="_Toc90481800" class="anchor"></span>Etapas para atendimento de demandas, no ambiente DES/DBD0

    1.  <span id="_Toc90481801" class="anchor"></span>Requisição deve estar aberta no GSC.

> Todas as demandas de implementação nas bases de dados de DES devem ser solicitadas via servico.caixa, com a abertura de REQ.

2.  <span id="_Toc90481802" class="anchor"></span>Verificação dos insumos necessários quando há a validação da ADI.

> PPDS: Solicitação de Validação do Modelo de Dados (\*\* não obrigatório)
>
> PPDS: Documento Validação Modelo de Dados (ADI) ;
>
> \*\* necessário reconstruir a fronteira AD / DBA para que haja um consenso das demandas que não necessitam do laudo da ADI. (ex: alteração na regra de deleção, criação de índice único)

3.  <span id="_Toc90481803" class="anchor"></span>Baixar a versão do modelo (PWD) de desenvolvimento identificado no Documento de Validação de Modelo de Dados.

> \*\*caso seja identificado alguma divergência entre o laudo e o modelo referenciado, a REQ deve ser colocada em pendência para esclarecimento e se necessário a confecção/anexo de uma nova versão do laudo de validação.

4.  <span id="_Toc90481804" class="anchor"></span>O DBA deve utilizar a TE074 ( Anexo 2 ) para denominação dos objetos físicos de dados e <span id="_Toc90481805" class="anchor"></span>realizar as alterações dos parâmetros necessários para implementação física no ambiente de Desenvolvimento; \*\*

5.  <span id="_Toc90481806" class="anchor"></span>Gerar o scrips para implementação física no ambiente DES, a partir do modelo de dados de desenvolvimento.

6.  <span id="_Toc90481807" class="anchor"></span>Executar os scripts no DBD0.

7.  <span id="_Toc90481808" class="anchor"></span>Executar Reorg/Runstats/checkdata (se necessário).

8.  <span id="_Toc90481809" class="anchor"></span>Rebind dos pakages dos programas que utilizam os objetos envolvidos na manutenção.

9.  <span id="_Toc90481810" class="anchor"></span>Subir para repositório o modelo de dados atualizado (versionado), quando o DBA realizar qualquer alteração no modelo.

10. <span id="_Toc90481811" class="anchor"></span>Gerar relatório de atendimento;

11. <span id="_Toc90481812" class="anchor"></span>Concluir a REQ/WO.

<!-- -->

11. <span id="_Toc90481813" class="anchor"></span>Etapas para atendimento de demandas, no ambiente TQS/DBDQ

    1.  <span id="_Toc90481814" class="anchor"></span>Requisição deve estar aberta no GSC.

> Todas as demandas de implementação nas bases de dados de TQS devem ser solicitadas via servico.caixa, com a abertura de REQ.

2.  <span id="_Toc90481815" class="anchor"></span>Não é obrigatório nenhum insumo, a alteração solicitada pode ser descrita na

> <span id="_Toc90481816" class="anchor"></span>REQ .

3.  <span id="_Toc90481817" class="anchor"></span>Gerar o script necessário para a manutenção, a partir do DB2 de Desenvolvimento – DBD0

4.  <span id="_Toc90481818" class="anchor"></span>Implementar as alterações no DBDQ

5.  <span id="_Toc90481819" class="anchor"></span>Gerar Relatório de atendimento

6.  <span id="_Toc90481820" class="anchor"></span>Concluir a REQ.

<!-- -->

12. <span id="_Toc90481821" class="anchor"></span>Parâmetros utilizados para implementação física no site SP

    1.  <span id="_Toc90481822" class="anchor"></span>DATABASE

> CREATE DATABASE JADDB001
>
> **BUFFERPOOL BP2**
>
> **INDEXBP BP3**
>
> CCSID EBCDIC
>
> STOGROUP JADSG001;
>
> COMMIT;

2.  <span id="_Toc90481823" class="anchor"></span>TABLESPACE

> CREATE TABLESPACE JADTSH44
>
> IN JADDB001
>
> USING STOGROUP JADSG001
>
> PRIQTY 48 SECQTY 48
>
> ERASE NO
>
> FREEPAGE 0 PCTFREE 10 FOR UPDATE 0
>
> GBPCACHE CHANGED
>
> TRACKMOD YES
>
> **MAXPARTITIONS 1**
>
> LOGGED
>
> **DSSIZE 4 G**
>
> **SEGSIZE 32**
>
> **BUFFERPOOL BP2**
>
> LOCKSIZE ANY
>
> LOCKMAX SYSTEM
>
> CLOSE YES
>
> COMPRESS NO
>
> CCSID EBCDIC

3.  <span id="_Toc90481824" class="anchor"></span>INDEX

> CREATE **UNIQUE** INDEX JAD.JAD1IH44
>
> ON JAD.JADTBH44_HSTRO_ARQVO_RECEBIDO
>
> (DT_MOVIMENTO ASC,
>
> NU_REMESSA ASC,
>
> SG_SSTMA_ORGM_P09 ASC,
>
> TS_MANUTENCAO ASC)
>
> USING STOGROUP JADSG001
>
> PRIQTY -1 SECQTY -1
>
> ERASE NO
>
> FREEPAGE 0 PCTFREE 10
>
> GBPCACHE CHANGED
>
> **CLUSTER (\*\* identificar qual é o índice cluster)**
>
> COMPRESS NO
>
> INCLUDE NULL KEYS
>
> **BUFFERPOOL BP3**
>
> CLOSE YES
>
> COPY NO
>
> DEFER NO
>
> DEFINE YES
>
> PIECESIZE 2 G;
>
> COMMIT;
