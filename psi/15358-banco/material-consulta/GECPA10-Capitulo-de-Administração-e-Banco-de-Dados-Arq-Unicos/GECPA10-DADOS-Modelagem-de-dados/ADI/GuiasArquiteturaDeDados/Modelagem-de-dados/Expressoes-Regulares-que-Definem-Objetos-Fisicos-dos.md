# Expressões Regulares que Definem Objetos Físicos dos SGBD

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Expressões Regulares que Definem Objetos Físicos dos SGBD

**1** Os nomes dos objetos físicos devem ser grafados em maiúsculo, não se utilizando caracteres especiais com exceção do *underscore* .

**2** Para nomear os objetos físicos dos SGBD DB2, SAP ASE, SAP IQ, SQLSERVER, ORACLE e POSTGRESQL os padrões a serem utilizados são os constantes na tabela abaixo.

**2.1** Nos SGBD *SAP ASE,* *Oracle e PostgreSQL* , para a criação de *databases* de extração, este deverá ser criado no padrão definido na tabela abaixo.

**2.2** Nos SGBD *SAP ASE, SAP IQ* , *SQL SERVER,* *Oracle e PostgreSQL* , para a criação de mais de uma *Foreign* *Key* , deve ser acrescentado “_n” ao padrão definido, ficando a seguinte composição “FK_t1_t2_n”.

**2.3** No SGBD *DB2* , *Oracle e PostgreSQL* , para a criação de *Sequence* que não esteja vinculada a nenhuma tabela, a variável “nnn” não poderá ser repetida em relação ao número da tabela, ficando a seguinte composição “zzzSQnnn”.

**2.3.1** O mesmo se aplica para o tipo de dado *Serial* no SGBD *PostgreSQL* .

**2.4** No SGBD SQLSERVER, quando há definição de valor default (para coluna), a Default Constraint Name, na aba Microsoft, fica a seguinte composição: “DF_zzzTBnnn_aa_t”.

| Coluna 1 | Coluna 2 | Coluna 3 | Coluna 4 | Coluna 5 | Coluna 6 | Coluna 7 |
| --- | --- | --- | --- | --- | --- | --- |
|  | DB2 | SAP ASE | SQL SERVER | ORACLE | SAP IQ | PostgreSQL |
| Alternate Key | N/A | AK _zzz TB nnn_n | AK _zzz TB nnn_n | AK _zzz TB nnn_n | N/A | AK _zzz TB nnn_n |
| Column | aa_t | aa_t | aa_t | aa_t | aa_t | aa_t |
| Context | N/A | N/A | N/A | zzz CT 999_t | N/A | N/A |
| Check Constraint | zzzn C nnn | bb_zzz TB nnn _9 | bb_zzz TB nnn _9 | bb_zzz TB nnn _9 | N/A | bb_zzz TB nnn _9 |
| Dbspace | N/A | N/A | N/A | N/A | zzz DS _vv999 | N/A |
| Database | zzz DB 999 | zzz DB 999 | zzz DB 999 | N/A | zzz DB 999 | N/A |
| Data Base file | N/A | N/A | zzz DB 999_ DATA 99. MDF | N/A | zzz DS _vv999 | N/A |
| Datafile | N/A | N/A | N/A | zzz TS xxnnn_999. DBF | N/A | N/A |
| Device | N/A | zzz DV yy999.syb | N/A | N/A | N/A | N/A |
| Domain | N/A | N/A | N/A | N/A | zzz UD _t | N/A |
| Foreign Key | zzzn F nnn | FK _t1_t2 | FK _t1_t2 | FK _t1_t2 | FK_t1_t2 | FK _t1_t2 |
| Function | zzz FN 999_t | N/A | zzz FN 999_t | zzz FN 999_t | zzz FN 999_t | zzz FN 999_t |
| Group | N/A | zzz GP _t | N/A | N/A | N/A | zzz GP _t |
| Index | zzzn I nnn | IX _zzz TB nnn_99 | IX _zzz TB nnn_99 | IX _zzz TB nnn_99 | IX _uu_c | IX _zzz TB nnn_99 |
| Owner | zzz | DBO | DBO (preferencial) ou zzz | zzz | zzz | zzz |
| Owner da View | ssszzz ou zzz do sistema que utilizará a view | zzz do sistema que utilizará a view | zzz do sistema que utilizará a view | zzz do sistema que utilizará a view | zzz do sistema que utilizará a view | zzz do sistema que utilizará a view |
| Package | N/A | N/A | N/A | zzzPCnnn_t | N/A | N/A |
| Primary Key | zzz PK nnn | PK _zzz TB nnn | PK _zzz TB nnn | PK _zzz TB nnn | PK _zzz TB nnn | PK _zzz TB nnn |
| Profile | N/A | N/A | N/A | PR _t | N/A | N/A |
| Segment | N/A | zzz SG yy999 | N/A | N/A | N/A | N/A |
| Sequence | zzz SQ nnn_t | N/A | zzz SQ nnn_t | zzz SQ nnn_t | N/A | zzz SQ nnn_t |
| Server/ Instância/ Serviço | ssun | SYB sss99 | SQL sss99 | ORA sss99 | SYI sss99 | POS sss99 |
| Stored Procedure | zzz SP 999_t | zzz SP 999_t | zzz SP 999_t | zzz SP 999_t | zzz SP 999_t | N/A |
| Table | zzz TB nnn_t | zzz TB nnn_t | zzz ww nnn_t | zzz TB nnn_t | zzzwwnnn_t | zzz TB nnn_t |
| Tablespace | zzz TS nnn | N/A | N/A | zzz TS xxnnn | N/A | zzz TS xxnnn |
| Transaction log File | N/A | N/A | zzz DB 999_LOG99. LDF | N/A | N/A | N/A |
| Trigger | zzzn T nnn | zzzTBnnn_gggnn | zzzTBnnn_gggnn | zzzTBnnn_gggnn | N/A | zzzTBnnn_gggnn |
| Unique Key | zzzn U nnn | N/A | N/A | N/A | zzzn U nnn | N/A |
| User_Defined datatype | N/A | zzz UD _t | zzz UD _t | zzz UD _t | zzz UD _t | zzz UD _t |
| View | zzz VW nnn_t | zzz VW nnn_t | zzz VW nnn_t | zzz VW nnn_t | zzz VW nnn_t | zzz VW nnn_t |
| View Materializada | N/A | N/A | N/A | zzz VM nnn_t | N/A | N/A |

**Legenda:**

| Coluna 1 | Coluna 2 |
| --- | --- |
| aa | Classe de coluna conforme glossário de termos. |
| bb | Podendo assumir: |
| CC CT | Validação de coluna. Validação de tabela – usado quando existe mais de uma coluna |
| ggg | Indicador do tipo de trigger, podendo assumir: |
| BTI BTU BTD ATI ATU ATD | “trigger” de “before insert” “trigger” de “before update” “trigger” de “before delete” “trigger” de “after insert” “trigger” de “after update” “trigger” de “after delete” |
| N/A | Não se aplica. |
| n | Sequencial “0” a “9” e “A” a “Z”. |
| nn | Sequencial “00” a “99” e “AA” a “ZZ”. |
| nnn | Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela. § Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente. § Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva. |
| ss | Mnemônico da sigla da unidade da área de sistemas podendo assumir: |
| DB CS DS | CEPTI/SP CEPTI/BR CEPTI/RJ |
| sss | Indicador do ambiente para o qual o servidor é utilizado, podendo assumir: |
| DES TQS HMP PRD | Servidor de desenvolvimento. Servidor de testes Servidor de homologação. Servidor de produção. |
| t | t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de termos do PowerDesigner . No “nome” do objeto será utilizado o termo definido e por extenso; No “código”, seguindo as definições gerais de nomenclatura de objetos e, sendo necessário, será utilizado a abreviação contida na definição do termo no glossário. |
| t1 | Nome da tabela filha – Primeiras 8 posições – “zzztbnnn” |
| t2 | Nome da tabela pai – Primeiras 8 posições – “zzztbnnn” |
| u | Podendo assumir: |
| D H P S T | Desenvolvimento Homologação Produção Suporte Teste |
| uu | Podendo assumir: |
| HG | “High group” |
| LF | “Low Fast” |
| NG | “High non group” |
| CM | “Compare” |
| WD | indexar palavras chaves em colunas CHAR e VARCHAR |
| vv | Podendo assumir: ma = main (dados/índices/log) tm = temporary |
| ww | Podendo assumir: |
| TD – Constante identificadora da tabela Dimensão TF – Constante identificadora da tabela de Fato TA – Constante identificadora da tabela Agregado TI – Constante identificadora da tabela Auxiliar de Importação TL – Constante identificadora da tabela Auxiliar de Load TR – Constante identificadora da tabela Intermediária TT – Constante identificadora da tabela Temporária auxiliar TQ – Constante identificadora da tabela Erro e Qualidade TB – Constante identificadora da tabela |  |
| xx | Podendo assumir: |
| DT IX DL DP IP | Dados Índices – Opcional Dados – LOB – Opcional Dados Particionados – Opcional Índices Particionados – Opcional |
| yy | Podendo assumir – Opcional |
| DT IX LG | Dados – “Data” Índices – “Index” Log – “Log” |
| zzz | Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições. |
| 9 | Sequencial de “0” a “9” |
| 99 | Sequencial de “00” a “99” |
| 999 | Sequencial de “000” a “999” |
