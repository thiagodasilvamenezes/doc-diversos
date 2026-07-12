**Guia de Atuação ABD ORACLE Bancário**

**Processo Padrão Não Produção**

Objetivo:

Orientar o profissional ABD Não-Produção nos processos, ferramentas e características do ORACLE do ambiente BANCÁRIO no que tange aos ambientes DES/TQS (Implementação Física e Modelo de Dados).

.

# **Sumário**

[**1** **PORTIFOLIO ORACLE BANCARIO** [3](#portifolio-oracle-bancario)](#portifolio-oracle-bancario)

[**1.1** **EXADATA** [3](#exadata)](#exadata)

[**1.2 SPARC** [3](#sparc)](#sparc)

[**2 PROCESSO DE SOLICITAÇÃO E INSUMOS** [4](#processo-de-solicitação-e-insumos)](#processo-de-solicitação-e-insumos)

[**3 MODELO DE DADOS E IMPLEMENTAÇÃO** [5](#modelo-de-dados-e-implementação)](#modelo-de-dados-e-implementação)

[**3.1 OWNER:** [5](#owner)](#owner)

[**3.2 TABLESPACE:** [5](#tablespace)](#tablespace)

[**3.3 DATAFILE** [6](#datafile)](#datafile)

[**3.4 INDICES:** [6](#indices)](#indices)

[**3.5 TABELAS** [7](#_Toc161401375)](#_Toc161401375)

[**3.6 COLUNAS:** [7](#colunas)](#colunas)

[**3.7 PRIMARY KEY:** [8](#primary-key)](#primary-key)

[**3.8 SEQUENCE** [8](#sequence)](#sequence)

[**3.9 ALTERNATE KEY:** [9](#alternate-key)](#alternate-key)

[**3.10 CHECK CONSTRAINT:** [9](#check-constraint)](#check-constraint)

[**3.11 FOREIGN KEY:** [10](#foreign-key)](#foreign-key)

[**3.12 VIEW MATERIALIZADA:** [10](#view-materializada)](#view-materializada)

[**3.12 VIEW:** [10](#view)](#view)

[**3.13 STORED PROCEDURE:** [11](#stored-procedure)](#stored-procedure)

[**3.14 FUNCTION:** [11](#function)](#function)

[**3.15 PACKAGE:** [12](#package)](#package)

[**4 ENTREGÁVEIS** [13](#entregáveis)](#entregáveis)

[**4.1 SYSOUT** [13](#sysout)](#sysout)

[**4.1 POWER DESIGNER** [13](#power-designer)](#power-designer)

[**4.3 GIT** [14](#git)](#git)

# **PORTIFOLIO ORACLE BANCARIO** 

> (posição de março/2024)

## **EXADATA**

![Imagem](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-001.emf>)

Descrição da imagem - [./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-001.md](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-001.md>)

## **1.2 SPARC**

![Imagem](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-002.emf>)

Descrição da imagem - [./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-002.md](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-002.md>)

#  **2 PROCESSO DE SOLICITAÇÃO E INSUMOS**

- Abertura da requisição pelo solicitante da mudança Não-Produção no GSC (https://servicos.caixa/), no seguinte caminho: \\ Centralizadoras de Tecnologia da Informação \\ Suporte a Infraestrutura de TI- Não Produção \\ Suporte à Banco de Dados;

- As requisições para o segmento Bancário deverão ser abertas selecionando o campo Segmento na opção “Bancário/SP”;

- Atentar a indicação do ambiente: DESENVOLVIMENTO/TQS/ETC, verificando se há indicação de outros ambientes diferentes deste, onde deverá ser executada a demanda simultaneamente;

- A requisição deverá ter anexada o documento de Validação Modelo de Dados para objetos que são validados pelo ADI, este deve ser claro e completo ou solicitar nova versão com esta finalidade;

- O modelo contido no repositório Power Designer deve estar atualizado previamente pelo ADI com os itens contidos no documento de Validação Modelo de Dados;

<!-- -->

- Atentar aos procedimentos que deve ser adotado quanto aos dados existentes;

# 

# 

# 

# 

# 

# **3 MODELO DE DADOS E IMPLEMENTAÇÃO**

- O modelo de dados do POWER DESIGNER é utilizado exclusivamente para o ambiente de DESENVOLVIMENTO, não existindo atualização ou uso do modelo de TQS/HMP/PRD.

- Realizar os ajustes físicos necessários no modelo de dados de acordo com o padrão da TE074(atualmente na versão 25) e melhores práticas descritas abaixo para cada objeto;

- A implantação deve ser efetuada no host local gerando sysout sequencial no mesmo;

## **3.1 OWNER:** 

<table style="width:100%;">
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">Zzz</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
</tbody>
</table>

- Tablespace – Associar a alocação de dados;

- Quotas – Definir os valores de alocação;

- Profile - default;

## **3.2 TABLESPACE:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TS</strong>xxnnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">xx</td>
<td><p>DT – Dados</p>
<p>IX - Índices</p></td>
</tr>
</tbody>
</table>

- Tamanho Inicial- Efetuar alocação inicial conforme a volumetria estimada;

- Readequação periódica – Efetuar análise e adequação de tamanho conforme o crescimento real;

## **3.3 DATAFILE**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>TS</strong>xxnnn_999.DBF</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">xx</td>
<td><p>DT – Dados</p>
<p>IX - Índices</p></td>
</tr>
</tbody>
</table>

- Solicitar espaço físico no host/ASM

- Alocar no host junto aos demais .DBF ou ASM

## **3.4 INDICES:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;"><strong>IX</strong>_zzz<strong>TB</strong>nnn_99</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

- Plano de acesso - Atestar e analisar individualmente;

<!-- -->

- Indice Desnecessários - Analisar adequação dos demais índices associados a tabela com a intenção de reaproveitamento e redução;

<span id="_Toc161401375" class="anchor"></span>**3.5 TABELAS:**

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
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">t</td>
<td>t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de termos do <em>Power Designer</em>.<br />
No “nome” do objeto será utilizado o termo definido e por extenso;<br />
No “código”, seguindo as definições gerais de <a href="https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx">nomenclatura de objetos</a> e, sendo necessário, será utilizado a abreviação contida na definição do termo no glossário.</td>
</tr>
</tbody>
</table>

- Tablespace - Alocar a tablespace da sigla;

- Particionamento / Expurgo – Analisar volume e acessos;

- Role - Associar se existir;

## **3.6 COLUNAS:**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">aa_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">t</td>
<td>t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de termos do <em>PowerDesigner</em>.<br />
No “nome” do objeto será utilizado o termo definido e por extenso;<br />
No “código”, seguindo as definições gerais de <a href="https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx">nomenclatura de objetos</a> e, sendo necessário, será utilizado a abreviação contida na definição do termo no glossário.</td>
</tr>
<tr>
<td style="text-align: center;">aa</td>
<td style="text-align: center;">Classe de coluna conforme glossário de termos.</td>
</tr>
</tbody>
</table>

- Posicionamento – No caso de solicitação de criação de atributo novo, seja ele null ou not null com default, que esteja localizado no meio da tabela, mover para o final da tabela, corrigindo a sua posição no modelo de dados e colocando ressalva no laudo;

- Data Type - Adequar o data type a necessidade real do dado e colocar ressalva em caso de alteração do item validado;

## **3.7 PRIMARY KEY:**

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;"><strong>PK</strong>_zzz<strong>TB</strong>nnn</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

- Tablespace – Alocar a primary key na tablespace de índices;

- Plano de Acesso - Analisar a ordem das colunas da primary key;

- Massa de dados - Em caso de solicitação de conservação atentar a implantação e em caso de impossibilidade acordar junto aos desenvolvedores.

## **3.8 SEQUENCE**

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
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições</td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">T</td>
<td>t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de termos do <em>PowerDesigner</em>.<br />
No “nome” do objeto será utilizado o termo definido e por extenso;<br />
No “código”, seguindo as definições gerais de <a href="https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx">nomenclatura de objetos</a> e, sendo necessário, será utilizado a abreviação contida na definição do termo no glossário.</td>
</tr>
</tbody>
</table>

- Parâmetros físicos - Adequar ao uso proporcional da aplicação;

- Role - Associar se existir.

## **3.9 ALTERNATE KEY:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;"><strong>AK</strong>_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">t</td>
<td>t – Texto livre onde deverão ser utilizados apenas termos constantes no glossário de termos do <em>PowerDesigner</em>.<br />
No “nome” do objeto será utilizado o termo definido e por extenso;<br />
No “código”, seguindo as definições gerais de <a href="https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx">nomenclatura de objetos</a> e, sendo necessário, será utilizado a abreviação contida na definição do termo no glossário.</td>
</tr>
</tbody>
</table>

- Tablespace - Associar a AK a tablespace de índices;

- Plano de Acesso – Analisar o novo índice associado a AK;

- Massa de dados - Em caso de solicitação de conservação atentar a implantação e em caso de impossibilidade acordar junto aos desenvolvedores.

## **3.10 CHECK CONSTRAINT:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">bb_zzz<strong>TB</strong>nnn _9</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">Zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
</tr>
<tr>
<td style="text-align: center;">Bb</td>
<td><p>CC - Validação de coluna.</p>
<p>CT - Validação de tabela – usado quando existe mais de uma coluna.</p></td>
</tr>
<tr>
<td style="text-align: center;">9</td>
<td>Sequencial de “0” a “9”</td>
</tr>
<tr>
<td style="text-align: center;">Nnn</td>
<td><p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
</tbody>
</table>

- *Condição - Refletir condição fidedigna para geração de script no repositório;*

- Massa de dados - Em caso de solicitação de conservação atentar a implantação e em caso de impossibilidade acordar junto aos desenvolvedores.

## **3.11 FOREIGN KEY:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;"><strong>FK</strong>_t1_t2</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">T1</td>
<td>Nome da tabela filha – Primeiras 8 posições – “zzztbnnn”</td>
</tr>
<tr>
<td style="text-align: center;">T2</td>
<td>Nome da tabela pai – Primeiras 8 posições – “zzztbnnn”</td>
</tr>
</tbody>
</table>

- Massa de dados - Em caso de solicitação de conservação atentar a implantação e em caso de impossibilidade acordar junto aos desenvolvedores.

## **3.12 VIEW MATERIALIZADA:** 

<table style="width:100%;">
<colgroup>
<col style="width: 14%" />
<col style="width: 85%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;"><blockquote>
<p>zzz<strong>VM</strong>nnn_t</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;"><blockquote>
<p>Zzz</p>
</blockquote></td>
<td><blockquote>
<p>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</p>
</blockquote></td>
</tr>
<tr>
<td style="text-align: center;">nnn</td>
<td><blockquote>
<p>Sequencial “001” a “999” e “AAA” a “ZZZ” identificador da tabela.</p>
</blockquote>
<p>§ Tratando-se de tabelas de extração ou temporárias, o primeiro “n” deverá ser X ou T, respectivamente.</p>
<p>§Opcionalmente, o primeiro “n” é usado para indicar a área de interesse do modelo de dados da qual a tabela deriva.</p></td>
</tr>
<tr>
<td style="text-align: center;">T</td>
<td>Texto livre. Deverão ser utilizadas as regras de abreviação segundo a o SIAGT e o tamanho do campo deverá respeitar as limitações das Ferramentas de Modelagem homologadas pela CAIXA e a versão do SGBD utilizado.</td>
</tr>
</tbody>
</table>

- SQL Executável – Catalogar após ateste individual da query;

- Análise de performance – Avaliar método de carga e query;

- Role -Associar se existir;

## **3.12 VIEW:** 

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>VM</strong>nnn_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
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

- SQL Executável – Catalogar após ateste individual da query;

- Role -Associar se existir;

## **3.13 STORED PROCEDURE:** 

Necessita de autorização (TE111)

Este objeto não dever ser inserido no modelo de dados.

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
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
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

- *Owner -Revisar a alocação para sigla;*

- *Sysout– Compilar com sysout contendo os erros para retorno ao solicitante*;

- Role -Associar se existir;

## **3.14 FUNCTION:** 

Necessita de autorização (TE111)

Este objeto não dever ser inserido no modelo de dados.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzz<strong>FN</strong>999_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
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

- *Owner -Revisar a alocação para sigla;*

- *Sysout– Compilar com sysout contendo os erros para retorno ao solicitante*;

- Role -Associar se existir;

## **3.15 PACKAGE:** 

Necessita de autorização (TE111)

Este objeto não dever ser inserido no modelo de dados.

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr>
<th colspan="2" style="text-align: center;">zzzPC999_t</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">zzz</td>
<td>Aliás de Sistema, cuja limitação de número caracteres será definida pela tecnologia adotada. Em caso de aplicações para dispositivos móveis, zzz será o Alias da aplicação, (AP adicionado de caracteres que identifiquem sua finalidade), podendo conter 5 posições.</td>
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

- *Owner -Revisar a alocação para sigla;*

- *Sysout– Compilar com sysout contendo os erros para retorno ao solicitante*;

- Role -Associar se existir;

# **4 ENTREGÁVEIS** 

## **4.1 SYSOUT**

- Disponibilizar sysout das implementações em host local e armazenamento no padrão sequencial abaixo:

![Imagem](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-003.png>)

Descrição da imagem - [./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-003.md](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-003.md>)

## **4.1 POWER DESIGNER**

- Efetuar Check-in do modelo de dados com as atualizações constando o número do item de trabalho que originou a adequação;

> ![Imagem](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-004.png>)
>
> Descrição da imagem - [./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-004.md](<./imagem/Guia de atuação ABD ORACLE  Site SP (1) 1-imagem-004.md>)

## **4.3 GIT**

- *Disponibilizar script da DDL implantada no GIT;*

- *Disponibilizar* laudo do ABD(RAT) detalhando todos os itens solicitados, os itens implementados na base e/ou alterado no modelo e as ressalvas, caso existam.
