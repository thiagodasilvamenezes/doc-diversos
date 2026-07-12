# Microsoft SQL Server - Uso de Constraint Default

Jaqueline Teodoro Bastos

COORDENADOR DE TI

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Microsoft SQL Server - Uso de Constraint Default

Quando há definição de um valor default para algum atributo, o SQL Server gera internamente um constraint do tipo “DF”, e quando não é definido um nome para essa constraint, o SGBD gera internamente um nome “aleatório”, como por exemplo: [ ***DF__PBFTB001___IC_RI__09FE775D]*** .

Na figura abaixo, vemos a tela referente a tabela DBO.PDMTB009_PENDENCIA_CDSTL_ESTDE que possui destacados dois atributos com valor default que não tiveram as constraints tipo DF nomeadas:

- NU_PENDENCIA_CADASTRAL_ESTDE

- TS_PENDENCIA_CADASTRAL

Nessa situação, conforme exposto no parágrafo inicial, o SQL Server irá nomear automaticamente as constraints geradas.

Segue abaixo exemplo para configuração para configuração no Power Designer e a DDL gerada a partir desta definição, conforme estabelecido no item 2.4 do guia de [Expressões Regulares que Definem Objetos Físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/sitepages/express%C3%B5es-regulares-que-definem-objetos-f%C3%ADsicos-dos-sgbd.aspx) :

1. No Power Designer selecione a coluna com valor default e vá na aba **Microsoft** :

2. Abra a aba Microsoft e inclua o nome da constraint tipo DF conforme o seguinte padrão: DF_XXXTBnnn_NOMEATRIBUTO onde XXX é a sigla do sistema e nnn é o número da tabela.

3. Com a criação da constraint default manualmente a ddl ficará da seguinte forma:

| /*==============================================================*/ /* Table: PDMTB009_PENDENCIA_CDSTL_ESTDE*/ /*==============================================================*/ create table DBO.PDMTB009_PENDENCIA_CDSTL_ESTDE ( NU_PENDENCIA_CADASTRAL_ESTDE bigintnot null constraint DF_PDMTB009_NU_PENDENCIA_CADASTRAL_ESTDE default (next value for DBO.PDMSQ009_NU_PNDNA_CDSTL_ESTDE), NU_SITUACAO_CDSTL_ESTDE bigintnot null, NU_TPO_PENDENCIAtinyintnot null, TS_PENDENCIA_CADASTRAL datetime2(2)not null constraint DF_PDMTB009_TS_PENDENCIA_CADASTRAL default getdate(), TS_PENDENCIA_RESOLUCAO datetime2(2)null, constraint PK_PDMTB009 primary key (NU_PENDENCIA_CADASTRAL_ESTDE) ) go |
| --- |
