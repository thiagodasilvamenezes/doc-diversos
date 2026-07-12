**Guia de Atuação DBA DB2 Site BSB**

**Sistemas Fora do Padrão**

Objetivo:

Orientar o profissional DBA nos processos e características específicas dos sistemas DB2 do site Brasília que fogem ao padrão de implementação e/ou evolução de modelos, quer sejam, ACI(TAH), AOI, ARA, DEC(DEO), EMP, FDL, GEL, ICO(ICR), LCE, OPI, PCS, PLD, SPL e SRH.

**Índice**

[SIACI (SITAH) [3](#_Toc91686022)](#_Toc91686022)

[SIAOI [3](#_Toc91686023)](#_Toc91686023)

[SIARA [6](#_Toc91686024)](#_Toc91686024)

[SIDEC (SIDEO) [7](#_Toc91686025)](#_Toc91686025)

[SIemp [7](#_Toc91686026)](#_Toc91686026)

[SIFDL [8](#_Toc91686027)](#_Toc91686027)

[SIGEL [9](#_Toc91686028)](#_Toc91686028)

[SIICO (ICR) [9](#_Toc91686029)](#_Toc91686029)

[SILCE [10](#_Toc91686030)](#_Toc91686030)

[SIOPI [10](#_Toc91686031)](#_Toc91686031)

[SIPCS [11](#_Toc91686032)](#_Toc91686032)

[SIPLD [13](#_Toc91686033)](#_Toc91686033)

[SISPL [14](#_Toc82716938)](#_Toc82716938)

[SISRH [15](#_Toc91686035)](#_Toc91686035)

<span id="_Toc91686022" class="anchor"></span>SIACI (SITAH)

- **Histórico**

> O SIACI é um sistema legado de tratamento de arquivos habitacionais. Com o crescimento desta área de negócio há alguns anos a Caixa vendeu a parte de administração de habitação para a Datamec e o restante do sistema que permaneceu na empresa foi reenquadrado como SITAH (Transmissão de Arquivos da Habitação).

- **Especificidade**

> Embora a parte que permaneceu na Caixa tenha sido reenquadrada como SITAH, seus objetos de banco de dados continuaram sendo referenciados com a sigla ACI a fim de evitar a manutenção dos aplicativos, porém os nomes dos modelos utilizam a sigla TAH.

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD1
>
> **Database**: ACIDB001
>
> **Modelo**: TAH_DES_DB2_ACI_ADMINISTRA_CREDITO_IMOBILIARIO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD2
>
> **Database**: ACIDB001
>
> **Modelo**: TAH_TQS_DB2_ACI_ADMINISTRA_CREDITO_IMOBILIARIO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão
>
> Quanto ao processo de implementação de banco e atualização de modelo de dados, o SIACI (SITAH) segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD.

<span id="_Toc91686023" class="anchor"></span>SIAOI

- **Histórico**

> O SIAOI (Sistema de Administração de Operações Imobiliárias) foi criado para assumir o papel de administração da habitação que foi vendido para a Datamec (ainda não foi realizada toda a internalização). Por se tratar de solução adquirida, seus objetos de banco não seguem o padrão estipulado na TE074 além de possuírem ambientes que vão além do padrão DES, TQS, HMP e PRD.

- **Especificidade**

> **<u>Tabela e Tablespace</u>**
>
> Pelo fato do nome das tabelas do SIAOI não seguirem o padrão da TE074, a correspondência entre tabela e tablespace é de responsabilidade da equipe de desenvolvimento. Assim, todas as criações de novas tabelas devem ter especificado no modelo ou no PPDS qual o tablespace correspondente. Ressaltamos que o nome dos tablespaces seguem o padrão da TE074.
>
> Exemplos:
>
> OWNER TABELA DATABASE TABLESPACE
>
> AOI ADM_AGENCIA AOIDB001 AOITS001
>
> AOI ADM_ARV_TELA_FUNC AOIDB001 AOITS002
>
> AOI ADM_ARVORE AOIDB001 AOITS003
>
> AOI ADM_ARVORE_TELA AOIDB001 AOITS004
>
> AOI ADM_CAMPO_QUESTAO AOIDB001 AOITS005
>
> AOI ADM_CONFIG_INTERF AOIDB001 AOITS006
>
> **<u>Ambientes</u>**
>
> O SIAOI possui databases em 7 instâncias no ambiente não-produção, detalhadas abaixo:

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD1
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_DES_DB2_CSD1_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD2
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_TQS_DB2_CSD1_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão

- **<u>TGE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_TGE_DB2_CSD6_CREDITO_IMOBILIARIO_MNTO_2
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>DE1</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDA
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_DE1_DB2_CSDA_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>DE2</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDB
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_DE2_DB2_CSDB_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>MIG</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD3
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_MIG_DB2_CSD3_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>MI2</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD4
>
> **Database**: AOIDB001
>
> **Modelo**: AOI_MI2_DB2_CSD4_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIAOI segue o processo padrão de Brasília.
>
> **<u>DCLGEN</u>**:
>
> Devido à maioria das tabelas do SIAOI não seguirem a nomenclatura estabelecida na TE074, a DCLGEN deste sistema possui uma regra específica: o nome do tablespace onde está a tabela é que identifica o nome do membro no dataset assim como o nome da estrutura, trocando o TS pelo TB.
>
> Exemplo: Para a tabela AOI.CNT_AVISO que está implementada no tablespace AOIDB001.AOITSA84 a definição da DCLGEN ficaria como abaixo:
>
> *1 SOURCE TABLE NAME ===\> CNT_AVISO*
>
> *2 TABLE OWNER ..... ===\> AOI*
>
> *4 DATA SET NAME ... ===\> 'DES.AOI.V00.DCLGEN(AOITBA84)'*
>
> *8 STRUCTURE NAME .. ===\> AOITBA84*

<span id="_Toc91686024" class="anchor"></span>SIARA

- **Histórico**

> O SIARA (Sistema de Avaliação de Risco e Apuração de Crédito) possuía uma base original (ARADB001) extremamente volumosa prejudicando o desempenho do processamento diário, semanal, mensal e anual. Optou-se pela criação de uma base de histórico (ARADB002) mantendo-se o acesso online por parte do gestor e enxugando a base original para melhoria do desempenho das rotinas padrão.

- **Especificidade**

> O SIARA possui uma base original (ARADB001) e uma base histórica (ARADB002) tanto no ambiente DES (CSD1) quanto no ambiente TQS (CSD2).
>
> Este sistema segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD quanto ao processo de implementação de banco e atualização de modelo de dados.
>
> Além destes ambientes, possui também um banco e modelo de dados de teste na instância CSD6, detalhado abaixo:

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD1
>
> **Database**: ARADB001 E ARADB002
>
> **Modelo**: ARA_DES_DB2_AVALIACAO_RISCO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD2
>
> **Database**: ARADB001 E ARADB002
>
> **Modelo**: ARA_TQS_DB2_AVALIACAO_RISCO_1
>
> **Insumos/Processo/Documento de validação**: Segue o processo padrão

- **<u>TCF</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: ARADB001
>
> **Modelo**: ARA_TCF_DB2_AVALIACAO_RISCO_1
>
> **Processo**: Não devem ser aceitas manutenções do SIARA em TGE (CSD6). Quando terminar o processo de teste será solicitada a exclusão do banco.

<span id="_Toc91686025" class="anchor"></span>SIDEC (SIDEO)

- **Histórico**

> O sistema de conta corrente original (SIDEC) é batch. No site de Brasília foi criado um módulo online do sistema que também foi chamado de SIDEC, porém com o tempo começaram a ocorrer problemas devido a mesma nomenclatura. Optou-se então por mudar a sigla para (SIDEO – SIDEC ONLINE).

- **Especificidade**

> Embora a sigla tenha sido alterada para DEO, seus objetos de banco de dados continuaram sendo referenciados com a sigla DEC a fim de evitar a manutenção dos aplicativos.

Quanto ao processo de implementação de banco e atualização de modelo de dados, o

SIDEO segue o padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS

(HTSOD1 – D1DF – CSD2), HMP e PRD.

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD1
>
> **Database**: DECDB001
>
> **Modelo**: DEC_DES_DB2_CSD1_DEPOSITO_CONTABILIDADE_1
>
> **Insumos / Processo / Documento de validação**: Segue o processo padrão

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD2
>
> **Database**: DECDB001
>
> **Modelo**: DEC_TQS_DB2_CSD1_DEPOSITO_CONTABILIDADE_1
>
> **Insumos / Processo / Documento de validação**: Segue o processo padrão
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIDEO segue o processo padrão de Brasília.

<span id="_Toc91686026" class="anchor"></span>SIemp

- **Histórico**

> O SIEMP (Sistema de Empréstimos) possui, além dos ambientes do processo padrão (DES, TQS, HMP e PRD), o ambiente de TGE (Teste do Gestor). Este ambiente foi criado primeiramente para este sistema devido à necessidade de se realizar testes segregados e concorrentes com os que estavam em curso nos ambientes de TQS e HMP, para validação pela área gestora.

- **Especificidade**

<!-- -->

- **<u>TGE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: EMPDB001
>
> **Modelo**: EMP_TGE_DB2_EMPRESTIMO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

Quanto ao processo de implementação de banco e atualização de modelo de dados, o SIEMP segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD. A gerência de configuração e mudança do ambiente TGE é de controle da equipe de desenvolvimento.

<span id="_Toc91686027" class="anchor"></span>SIFDL

- **Histórico**

> O SIFDL (Sistema de Fidelização), à época de sua criação, foi solicitado pela equipe de desenvolvimento que permanecesse nas mesmas bases de PRE e REL que o SIPCS, a fim de compartilharem os mesmos estágios de desenvolvimento e processos devido à afinidade entre os dois sistemas. Apesar de, para o SIPCS, os ambientes terem sido denominados PRE e REL para o FDL correspondem a DES e TQS.

- **Especificidade**

<!-- -->

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDD
>
> **Database**: FDLDB001
>
> **Modelo**: FDL_DES_DB2_FIDELIZACAO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de desenvolvimento DES (HTSOD1 – D1DF – CSD1).

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDB
>
> **Database**: FDLDB001
>
> **Modelo**: FDL_TQS_DB2_FIDELIZACAO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2)
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIFDL segue o processo padrão de Brasília.

<span id="_Toc91686028" class="anchor"></span>SIGEL

- **Histórico**

> A partição D2DF foi criada devido à necessidade da equipe de Loterias em utilizar o Websphere. Tal ferramenta requeria uma configuração de ambiente específica que poderia impactar os demais sistemas instalados na D1DF, por isso optou-se por criar uma nova partição na qual foram criados os ambientes de TQS (CSD4) e TGE (CSD3) para os sistemas de Loterias, entre eles o SIGEL (Sistema de Gestão de Loterias).

- **Especificidade**

> O SIGEL segue o processo padrão de Brasília para a implementação de banco e atualização de modelo de dados para o ambiente DES (HTSOD1 – D1DF – CSD1).
>
> Para o ambiente TQS, segue o descrito abaixo:

- **<u>TQS</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD4
>
> **Database**: GELDB001
>
> **Modelo**: GEL_TQS_DB2_GESTAO_LOTERIAS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIGEL segue o processo padrão de Brasília.

<span id="_Toc91686029" class="anchor"></span>SIICO (ICR)

- **Histórico**

> O SIICO (Sistema de Informações Corporativas) de Brasília foi criado a partir do SIICO do Rio de Janeiro (mudança realizada pela equipe AD de Brasília). Assim os dois sistemas possuem estruturas diferentes apesar de terem a mesma sigla. Para atender a carga do SIICO de Brasília, criou-se o SIICR (base intermediária) que recebe diariamente a carga dos dados do SIICO do Rio de Janeiro e em seguida os dados são processados para atualização no SIICO de Brasília.

- **Especificidade**

> O SIICO segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD quanto ao processo de implementação de banco e atualização de modelo de dados.
>
> O SIICR segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (NÃO IMPLEMENTADO), HMP (NÃO IMPLEMENTADO) e PRD quanto ao processo de implementação de banco e atualização de modelo de dados.

- **Outros**

> Às sextas-feiras ocorre a carga dos dados do SIICO de PRD para o ambiente DES (CSD1). A equipe responsável por qualquer manutenção tanto no sistema como dados (movimentação para outras instâncias do DB2 de desenvolvimento) de Brasília é a CEDESRJ333.

<span id="_Toc91686030" class="anchor"></span>SILCE

- **Histórico**

> A partição D2DF foi criada devido à necessidade da equipe de Loterias em utilizar o Websphere. Tal ferramenta requeria uma configuração de ambiente específica que poderia impactar os demais sistemas instalados na D1DF, por isso optou-se por criar uma nova partição na qual foram criados os ambientes de TQS (CSD4) e TGE (CSD3) para os sistemas de Loterias, entre eles o SILCE (Sistema de Loterias em Canais Eletrônicos).

- **Especificidade**

> O SILCE segue o processo padrão de Brasília para a implementação de banco e atualização de modelo de dados para o ambiente DES (HTSOD1 – D1DF – CSD1).
>
> Para o ambiente TQS, segue o descrito abaixo:

- **<u>TQS</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD4
>
> **Database**: LCEDB001 E LCEDB002
>
> **Modelo**: LCE_TQS_DB2_LOTERIA_CANAL_ELETRONICO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Tendo em vista o acesso ao DB2 ser via Java o SILCE não possui DCLGEN.
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SILCE segue o processo padrão de Brasília.

<span id="_Toc91686031" class="anchor"></span>SIOPI

- **Histórico**

> O SIOPI (Sistema de Operações Imobiliárias), no decorrer do processo de desenvolvimento, necessitou de outros ambientes para implementação de mudanças em paralelo.

- **Especificidade**

> Quanto ao processo de implementação de banco e atualização de modelo de dados, o SIOPI segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD.
>
> Além destes, ele possui mais dois ambientes de desenvolvimento detalhados abaixo:

- **<u>DE2</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: OPIDB001
>
> **Modelo**: OPI_DE2_DB2_CSD6_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>DE3</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDA
>
> **Database**: OPIDB001
>
> **Modelo**: OPI_DE3_DB2_CSDA_CREDITO_IMOBILIARIO_MNTO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIOPI segue o processo padrão de Brasília.

<span id="_Toc91686032" class="anchor"></span>SIPCS

- **Histórico**

> O SIPCS (Sistema de Processamento de Cartões de Credito e Serviços) foi adquirido com o objetivo de absorver a administração tecnológica de cartões de crédito pela Caixa. Por se tratar de solução adquirida, seus objetos de banco originais não seguem o padrão estipulado na TE074 além de possuírem ambientes que vão além do padrão DES, TQS, HMP e PRD.

- **Especificidade**

> **<u>Tabela e Tablespace</u>**
>
> Por ter sido um sistema internalizado pela Caixa, parte de suas tabelas estão fora do padrão da TE074, sendo nomeadas como MPDT\*. Contudo, o respectivo tablespace permanece no padrão da TE074, como PCSTS\*. Independentemente de estarem no padrão ou não, todos os objetos de banco de dados do SIPCS passam pela validação da ADI, no que lhe é pertinente, que ocorre para o ambiente PRE e não DES.
>
> **<u>Ambiente</u>**
>
> O SIPCS segue um fluxo diferenciado dos outros sistemas. A instância inicial, validada pela ADI, é a CSDD, chamada de PRE. As outras instâncias são alteradas conforme controle de configuração e mudança da equipe de desenvolvimento.

- **<u>PRE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDD
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo**: PCS_PRE_DB2_CSDD_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de desenvolvimento DES (HTSOD1 – D1DF – CSD1).

- **<u>REL</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo**: PCS_REL_DB2_CSDB_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>DES</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD1
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo**: PCS_DES_DB2_CSD1_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>TQS</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD2
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo**: PCS_TQS_DB2_CSD2_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).

- **<u>COD</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSDA
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo**: PCS_COD_DB2_CSDA_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_2
>
> **Insumos**:
>
> \- Nome e versão do modelo de PRE que servirá como base para o atendimento **<u>ou</u>** modelo de dados que contém a(s) alteração(ões) solicitada(s);
>
> \- PPDS de Solicitação de Validação
>
> **Processo**: Não é necessária validação pela ADI e nem que esteja implementado em outro ambiente para que se faça atualização no ambiente de teste de conceito físico (COD) ou a equipe pode solicitar que seja realizada a atualização a partir de alguma outra instância utilizada pelo PCS (se for o caso, **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2))

- **<u>TGE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: PCSDB001 – Base Original
>
> PCSDB003 – Tabelas Stage
>
> PCSDB004 – Tabelas de Histórico
>
> **Modelo** PCS_TGE_DB2_CSD6_PROCESSAMENTO_DE_CARTOES_E_SERVICOS_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIPCS segue o processo padrão de Brasília.
>
> **<u>DCLGEN</u>**:
>
> Mesmo para as tabelas MPDT\*, que não seguem a nomenclatura estabelecida na TE074, a DCLGEN deste sistema segue a regra do processo padrão, mantendo-se o nome MPDT\* na identificação do membro do dataset, como *source table name* e *structure name*.
>
> Exemplo: Para a tabela PCS.MPDT043 que está implementada no tablespace PCSDB001.PCSTS043 a definição da DCLGEN ficaria como abaixo:
>
> *1 SOURCE TABLE NAME ===\> MPDT043*
>
> *2 TABLE OWNER ..... ===\> PCS*
>
> *4 DATA SET NAME ... ===\> 'DES.PCS.V00.DCLGEN(MPDT043)'*
>
> *8 STRUCTURE NAME .. ===\> MPDT043*

<span id="_Toc91686033" class="anchor"></span>SIPLD

- **Histórico**

> O SIPLD (Sistema de Prevenção a Lavagem de Dinheiro) possui, além dos ambientes do processo padrão (DES, TQS, HMP e PRD), o ambiente de TGE (Teste do Gestor). Este ambiente foi criado devido à necessidade de se realizar testes segregados e concorrentes com os que estavam em curso nos ambientes de TQS e HMP, para validação pela área gestora.

- **Especificidade**

Quanto ao processo de implementação de banco e atualização de modelo de dados, o SIEMP segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD.

Além destes, ele possui o ambiente de teste do gestor detalhado abaixo:

- **<u>TGE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: PLDDB001
>
> **Modelo**: PLD_TGE_DB2_LAVAGEM_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SIPLD segue o processo padrão de Brasília.

<span id="_Toc82716938" class="anchor"></span>SISPL

- **Histórico**

> O ambiente D2DF foi devido à necessidade da equipe de Loterias em utilizar o Websphere. Tal ferramenta requeria uma configuração de ambiente específica que poderia impactar os demais sistemas instalados na D1DF, por isso optou-se por criar uma nova partição na qual foram criados os ambientes de TQS (CSD4) e TGE (CSD3) para os sistemas de Loterias, entre eles o SISPL (Sistema de Serviços de Processamentos Lotéricos).

- **Especificidade**

> O SISPL segue o processo padrão de Brasília para a implementação de banco e atualização de modelo de dados para o ambiente DES (HTSOD1 – D1DF – CSD1).
>
> Para o ambiente TQS, segue o descrito abaixo:

- **<u>TQS</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD4
>
> **Database**: SPLDB001
>
> **Modelo**: SPL_DES_DB2_PROCESSAMENTO_LOTERICO_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Além destes, ele possui o ambiente de teste do gestor, detalhado abaixo:

- **<u>TGE</u>**

> **Partição**: D2DF (HTSOD2 - 7.72)
>
> **Instância**: CSD3
>
> **Database**: SPLDB001
>
> **Modelo**: SPL_TGE_DB2_PROCESSAMENTO_LOTERICO_V1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SISPL segue o processo padrão de Brasília.

<span id="_Toc91686035" class="anchor"></span>SISRH

- **Histórico**

> O modelo “View fora do padrão” corresponde às views criadas nas tabelas do próprio SISRH (Sistema de Recursos Humanos) quando foi implementado nos anos de 1990. Houve a conversão do banco para o padrão atual definido na TE074, porém foram mantidas as views evitando a manutenção dos aplicativos.

- **Especificidade**

> Nas solicitações da equipe sempre são relacionadas as views que devem ser alteradas nos dois modelos.
>
> Quanto ao processo de implementação de banco e atualização de modelo de dados, o SISRH segue o processo padrão de Brasília para os ambientes DES (HTSOD1 – D1DF – CSD1), TQS (HTSOD1 – D1DF – CSD2), HMP e PRD
>
> Além destes, ele possui o ambiente de teste do gestor detalhado abaixo:

- **<u>TGE</u>**

> **Partição**: D1DF (HTSOD1 - 7.22)
>
> **Instância**: CSD6
>
> **Database**: SRHDB001
>
> **Modelos**: SRH_TGE_DB2_RECURSOS_HUMANOS_2
>
> SRH_TGE_DB2_VIEW_FORA_PADRAO_D2004_01_30_1
>
> **Insumos / Processo / Documento de validação**: O mesmo do processo padrão para o ambiente de TQS (HTSOD1 – D1DF – CSD2).
>
> Para a atualização de modelo de dados para os ambientes HMP e PRD, o SISRH segue o processo padrão de Brasília.
