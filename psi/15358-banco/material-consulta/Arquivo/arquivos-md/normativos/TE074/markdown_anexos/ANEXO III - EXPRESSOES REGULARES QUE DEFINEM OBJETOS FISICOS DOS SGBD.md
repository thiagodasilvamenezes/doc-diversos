# TE074 - ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD

**Arquivo de origem:** `ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD.pdf`

**Total de páginas:** 4

---


## Página 1

#PUBLICO 
TE 074 
 
 
1 / 4 
 
ANEXO III – EXPRESSÕES REGULARES QUE DEFINEM OBJETOS FÍSICOS DOS SGBD 
 
1          Os nomes dos objetos físicos devem ser grafados em maiúsculo, não se utilizando caracteres especiais com 
exceção do underscore. 
2          Para nomear os objetos físicos dos SGBD DB2, SAP ASE, SAP IQ, SQLSERVER, ORACLE e POSTGRESQL 
os padrões a serem utilizados são os constantes na tabela abaixo. 
2.1        Nos SGBD SAP ASE, Oracle e PostgreSQL, para a criação de databases de extração, este deverá ser criado 
no padrão definido na tabela abaixo. 
2.2        Nos SGBD SAP ASE, SAP IQ, SQL SERVER, Oracle e PostgreSQL, para a criação de mais de uma Foreign 
Key, deve ser acrescentado “_n” ao padrão definido, ficando a seguinte composição “FK_t1_t2_n”.  
2.3        No SGBD DB2, Oracle e PostgreSQL, para a criação de Sequence que não esteja vinculada a nenhuma 
tabela, a variável “nnn” não poderá ser repetida em relação ao número da tabela, ficando a seguinte composição 
“zzzSQnnn”. 
2.3.1     Esta regra também se aplica para o tipo de dado Serial no SGBD PostgreSQL. 
2.4        No SGBD SQLSERVER, quando há definição de valor default (para coluna), a Default Constraint Name, na 
aba Microsoft, fica a seguinte composição: “DF_zzzTBnnn_aa_t”. 
 
  
DB2 
SAP ASE 
SQL SERVER ORACLE 
SAP IQ 
PostgreSQL 
Alternate Key 
N/A 
AK_zzzTBnnn_
n 
AK_zzzTBnnn_n AK_zzzTBnnn_n 
N/A 
AK_zzzTBnnn
_n 
Column 
aa_t 
aa_t 
aa_t 
aa_t 
aa_t 
aa_t 
Context 
N/A 
N/A 
N/A 
zzzCT999_t 
N/A 
N/A 
Check 
Constraint 
zzznCnnn 
bb_zzzTBnnn 
_9 
bb_zzzTBnnn _9 bb_zzzTBnnn _9 
N/A 
bb_zzzTBnnn 
_9 
Dbspace 
N/A 
N/A 
N/A 
N/A 
zzzDS_vv999 
N/A 
Database 
zzzDB999 
zzzDB999 
zzzDB999 
N/A 
zzzDB999 
N/A 
Data Base file 
N/A 
N/A 
zzzDB999_DAT
A99.MDF 
N/A 
zzzDS_vv999 
N/A 
Datafile 
N/A 
N/A 
N/A 
zzzTSxxnnn_99
9.DBF 
N/A 
N/A 
Device 
N/A 
zzzDVyy999.sy
b 
N/A 
N/A 
N/A 
N/A 
Domain 
N/A 
N/A 
N/A 
N/A 
zzzUD_t 
N/A 
Foreign Key 
zzznFnnn 
FK_t1_t2 
FK_t1_t2 
FK_t1_t2 
FK_t1_t2 
FK_t1_t2 
Function 
zzzFN999_t 
N/A 
zzzFN999_t 
zzzFN999_t 
zzzFN999_t 
zzzFN999_t 
Group 
N/A 
zzzGP_t 
N/A 
N/A 
N/A 
zzzGP_t 
Index 
zzznInnn 
IX_zzzTBnnn_
99 
IX_zzzTBnnn_9
9 
IX_zzzTBnnn_9
9 
IX_uu_c 
IX_zzzTBnnn_
99 
Owner 
zzz 
DBO 
DBO 
(preferencial) ou 
zzz 
zzz 
zzz 
zzz 
Owner da 
View 
ssszzz  ou zzz
  
zzz 
zzz 
zzz 
zzz 
zzz 
Package 
N/A 
N/A 
N/A 
zzzPCnnn_t 
N/A 
N/A 
Primary Key 
zzzPKnnn 
PK_zzzTBnnn 
PK_zzzTBnnn 
PK_zzzTBnnn 
PK_zzzTBnnn PK_zzzTBnnn



## Página 2

#PUBLICO 
TE 074 
 
 
2 / 4 
 
Profile 
N/A 
N/A 
N/A 
PR_t 
N/A 
N/A 
Segment 
N/A 
zzzSGyy999 
N/A 
N/A 
N/A 
N/A 
Sequence 
zzzSQnnn_t 
N/A 
zzzSQnnn_t 
zzzSQnnn_t 
N/A 
zzzSQnnn_t 
Server/ 
Instância/ 
Serviço 
ssun 
SYBsss99 
SQLsss99 
ORAsss99 
SYIsss99 
POSsss99 
Stored 
Procedure 
zzzSP999_t 
zzzSP999_t 
zzzSP999_t 
zzzSP999_t 
zzzSP999_t 
N/A 
Table 
zzzTBnnn_t 
zzzTBnnn_t 
zzzwwnnn_t 
zzzTBnnn_t 
zzzwwnnn_t 
zzzTBnnn_t 
Tablespace 
zzzTSnnn 
N/A 
N/A 
zzzTSxxnnn 
N/A 
zzzTSxxnnn 
Transaction 
log File 
N/A 
N/A 
zzzDB999_LOG
99.LDF 
N/A 
N/A 
N/A 
Trigger 
zzznTnnn 
zzzTBnnn_ggg
nn 
zzzTBnnn_gggn
n 
zzzTBnnn_gggn
n 
N/A 
zzzTBnnn_ggg
nn 
Unique Key 
zzznUnnn 
N/A 
N/A 
N/A 
zzznUnnn 
N/A 
User_Defined 
datatype 
N/A 
zzzUD_t 
zzzUD_t 
zzzUD_t 
zzzUD_t 
zzzUD_t 
View 
zzzVWnnn_t 
zzzVWnnn_t 
zzzVWnnn_t 
zzzVWnnn_t 
zzzVWnnn_t 
zzzVWnnn_t 
View Materiali
zada 
N/A 
N/A 
N/A 
zzzVMnnn_t 
N/A 
N/A 
Legenda:  
aa 
Classe de coluna conforme glossário de termos. 
bb 
Podendo assumir: 
CC 
CT 
Validação de coluna. 
Validação de tabela – usado quando existe mais de uma coluna 
ggg 
Indicador do tipo de trigger, podendo assumir: 
BTI 
BTU 
BTD 
ATI 
ATU 
ATD 
“trigger” de “before insert” 
“trigger” de “before update” 
“trigger” de “before delete” 
“trigger” de “after insert” 
“trigger” de “after update” 
“trigger” de “after delete” 
N/A 
Não se aplica. 
n 
Sequencial “0” a “9” e “A” a “Z”. 
nn 
Sequencial “00” a “99” e “AA” a “ZZ”. 
nnn 
Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela. 
§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, 
respectivamente.



## Página 3

#PUBLICO 
TE 074 
 
 
3 / 4 
 
§ Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de 
dados da qual a tabela deriva. 
ss 
Mnemônico da sigla da unidade da área de sistemas podendo assumir: 
DB 
CS 
DS 
CEPTI/SP 
CEPTI/BR 
CEPTI/RJ 
sss 
Indicador do ambiente para o qual o servidor é utilizado, podendo assumir: 
DES 
TQS 
HMP 
PRD 
Servidor de desenvolvimento. 
Servidor de testes 
Servidor de homologação. 
Servidor de produção. 
t 
t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de 
termos do PowerDesigner. 
No “nome” do objeto será utilizado o termo definido e por extenso; 
No “código”, seguindo as definições gerais de ANEXO II - Nomenclatura de Objetos e, 
sendo necessário, será utilizado a abreviação contida na definição do termo no 
glossário. 
t1 
Nome da tabela filha – Primeiras 8 posições – “zzztbnnn” 
t2 
Nome da tabela pai – Primeiras 8 posições – “zzztbnnn” 
u 
Podendo assumir: 
D 
H 
P 
S 
T 
Desenvolvimento 
Homologação 
Produção 
Suporte 
Teste 
uu 
Podendo assumir: 
HG 
“High group” 
LF 
“Low Fast” 
NG 
“High non group” 
CM 
“Compare” 
WD 
indexar palavras chaves em colunas CHAR e VARCHAR 
vv 
Podendo assumir: 
ma = main (dados/índices/log) 
tm = temporary 
ww 
Podendo assumir: 
TD – Constante identificadora da tabela Dimensão 
TF – Constante identificadora da tabela de Fato 
TA – Constante identificadora da tabela Agregado 
TI – Constante identificadora da tabela Auxiliar de Importação



## Página 4

#PUBLICO 
TE 074 
 
 
4 / 4 
 
TL – Constante identificadora da tabela Auxiliar de Load 
TR – Constante identificadora da tabela Intermediária 
TT – Constante identificadora da tabela Temporária auxiliar 
TQ – Constante identificadora da tabela Erro e Qualidade 
TB – Constante identificadora da tabela 
xx 
Podendo assumir: 
DT 
IX 
DL 
DP 
IP 
Dados 
Índices – Opcional 
Dados – LOB – Opcional 
Dados Particionados – Opcional 
Índices Particionados – Opcional 
yy 
Podendo assumir – Opcional 
DT 
IX 
LG 
Dados – “Data” 
Índices – “Index” 
Log – “Log” 
zzz 
Alias de Sistema, cuja limitação de número caracteres será definida pela tecnologia 
adotada. 
Para o Owner da View é o Alias do sistema que utilizará a view. 
Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP 
adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições. 
9 
Sequencial de “0” a “9” 
99 
Sequencial de “00” a “99” 
999 
Sequencial de “000” a “999”

