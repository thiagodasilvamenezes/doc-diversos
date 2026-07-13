# Orientações da GECPA10 - Novo formato CNPJ alfanumérico_v5

> Fonte: `Orientações da GECPA10 - Novo formato CNPJ alfanumérico_v5.pdf`

> Páginas: 6


---

## Página 1

Novo formato de CNPJ alfanumérico

Orientações da GECPA10

Capítulo de Administração de Dados e Banco de Dados

Versão 5.0


---

## Página 2

### 1. Em virtude da alteração do tipo de dado (data type) do CNPJ de numérico para

alfanumérico, o Capítulo de Dados e Banco de Dados sugere algumas alternativas e

esclarece como regra geral (recomendada):

Cada coluna deve indicar o que realmente é por definição. Portanto, em soluções novas

onde é possível a existência de número do CPF ou número do CNPJ, ou seja, a

ocorrência de um impede a ocorrência do outro (mutuamente excludentes), serão criadas

duas colunas:

NU_CPF (numérico 11 posições) - Opcional

CO_CNPJ (alfanumérico 14 posições) – Opcional

1.1 Vide Anexo I (DRN - Documento de Requisitos do Negócio CNPJ Alfanumérico) para

obter todas as informações que serão impactadas pela alteração do CNPJ para

alfanumérico, cujo conteúdo é derivado do CNPJ, como o ISPB e o ISelic, que terão a

partir de julho de 2026, letras e números em sua composição.

### 2. Alteração em coluna existente vai demandar, basicamente, três ajustes nos sistemas que

utilizam o CNPJ, após a realização de uma análise de impacto:

- 

Adaptação nas interfaces internas e externas para “receber” e “ler” o CNPJ

alfanumérico.

- 

Adaptação nos bancos de dados para armazenar este novo formato.

- 

Incorporação da nova rotina para o cálculo do Dígito Verificador.

Nesse sentido, seguem algumas orientações do Capítulo de Dados e Banco de Dados

sobre a adequação do tipo de dado do CNPJ nos Bancos de Dados Relacionais.

2.1 Aplicações que possuem tabelas com uma única coluna para armazenar ora CPF, ora

CNPJ, no formato numérico devem analisar a possibilidade de criar uma nova coluna

alfanumérica , mantendo a coluna numérica para migração programada dos dados. A

coluna numérica poderá coexistir com a nova coluna alfanumérica até a verificação do

funcionamento correto do sistema, podendo a coluna numérica ser dropada num segundo

momento.

2.1.1 Para os SGBDs (DB2 e Oracle) que não permitem alteração direta na coluna, a nova

coluna alfanumérica será criada como mandatória (NOT NULL) com a opção “WITH

## DEFAULT”.

2.1.1.1.

As colunas com o tipo de dado CHAR/VARCHAR serão carregadas com brancos

para as linhas pré-existentes na tabela.

##### 2.1.2. Em casos excepcionais em que a equipe de desenvolvimento decida manter a coluna

para armazenar ora CPF, ora CNPJ, ajustando apenas o tipo de dado será necessária

a inclusão da coluna da classe IC (indicador) para indicar se o conteúdo da coluna é

um CPF ou CNPJ.

REF1. Para tabelas que possuem como chave primária (PK – Primary Key) colunas

numéricas contendo CNPJ, há alguns critérios que precisam ser levados em

consideração, antes do planejamento da estratégia que será adotada na alteração

do tipo de dado para alfanumérico:

Elaborado por

Capítulo de Administração de Dados e Banco de Dados (GECPA10)

Data: 02/10/2025


---

## Página 3

- 

Quantidade de tabelas filhas que herdam a PK com a coluna CNPJ numérica como FK

ou PK/FK, caso haja.

- 

A volumetria da tabela.

- 

A quantidade de programas, views e interfaces internas e externas relacionadas à coluna

CNPJ compartilhada de ou consumida por outros sistemas.

##### 2.1.3. Se a equipe de desenvolvimento entender que o momento é propício para

alteração da coluna CNPJ como chave primária, uma nova coluna será criada para

compor a chave artificial (surrogate) e outra nova coluna alfanumérica para o CNPJ ,

mantendo a coluna numérica para migração programada dos dados.

2.1.3.1.

A coluna numérica poderá coexistir com a nova coluna alfanumérica até a

verificação do funcionamento correto do sistema, podendo ser dropada num segundo

momento. Deverá ser realizada uma análise de impacto das tabelas filhas envolvidas

para efetuar o ajuste das chaves estrangeiras (Foreing Key - FK) bem como as tabelas

de apoio.

2.2.

A validação do CNPJ é feita via cálculo de DV ou via API da Receita Federal, uma

vez que a utilização de funções/triggers no banco de dados (por meio de SQL) para

realizar o cálculo do DV onera o banco de dados.

2.3.

As alterações de modelo de dados devem ser encaminhadas via Acionamento do

Capítulo de Dados através do serviço “Validação de Modelo de Dados”, conforme

necessidades abaixo:

##### 2.3.1. Inclusão de uma nova coluna CNPJ (alfanumérico)

Propriedades da coluna no PowerDesigner

## “NAME”: CO_CNPJ

## “CODE”: CO_CNPJ

##### 2.3.2. Alteração de coluna CNPJ: de numérico para alfanumérico

Propriedades da coluna no PowerDesigner

De: NAME/CODE: NU_CNPJ (Numérico)

Para: NAME/CODE: CO_CNPJ (Alfanumérico)

##### 2.3.2.1. Caso não seja possível a alteração do CODE em função de gerar impacto na manutenção do

sistema, permite-se, a partir de justificativa técnica formalizada no Acionamento do Capítulo

de Dados, a permanência do CODE, ajustando-se o NAME para a classe correta da coluna:

De: NAME/CODE: NU_CNPJ (Numérico)

Para: NAME: CO_CNPJ

CODE: NU_CNPJ (Alfanumérico)

2.4.

A Administração de Banco de Dados orienta:

##### 2.4.1. Os tipos de dados CHAR ou VARCHAR serão analisados de acordo com a

característica do SGBD (Sistema Gerenciador de Banco de Dados) e se a coluna

possui apenas o CNPJ ou CPF/CNPJ juntos. Para suporte nesse item, consultar a

equipe de Banco de Dados.

Elaborado por

Capítulo de Administração de Dados e Banco de Dados (GECPA10)

Data: 02/10/2025


---

## Página 4

##### 2.4.2. A Administração de Banco de Dados recomenda que em casos onde a coluna recebe

apenas dado de CNPJ, utilizar o tipo de dado CHAR, exceto o SGBD Oracle, uma

vez que tem alocação estática e apresenta melhor performance para indexação em

detrimento do tipo de dado VARCHAR que possui alocação dinâmica. O tipo de dado

adequado será analisado de acordo com as especificidades de cada SGBD.

2.4.2.1.

Determinação da Administração de Banco de Dados da relação dos tipos de

dados por SGBD:

Oracle: VARCHAR2(14)

Microsoft SQL Server: CHAR (14)

## IBM DB2: CHAR(14)

PostgreSQL: CHAR(14)

Sybase: CHAR(14)

OBS: Quando o dígito verificador for armazenado em outra coluna distinta, o tamanho

do CNPJ alfanumérico será CHAR (12) e o DV será no formato numérico (2). Ex:

NU_DV_CNPJ = Numérico (2).

##### 2.4.3. A coluna com o novo tipo de dado será dropada/recriada ou alterada diretamente no

Banco de Dados dependendo da volumetria da tabela.

2.4.3.1.

A grande maioria dos SGBDs (Oracle, Sybase, DB2) não permite alteração

direta de coluna, o que implica na necessidade de criação de uma nova coluna para

o CNPJ alfanumérico. As equipes de desenvolvimento devem se planejar e

desenvolver o processo de conversão, quando necessário, bem como a migração dos

dados de acordo com a estratégia da aplicação.

No momento da migração ou conversão da coluna numérica para alfanumérica

preencher com zeros à esquerda até completar o tamanho de 14.

2.4.3.2.

Os SGBDs SQL Server e PostgreSQL permitem alteração direta do tipo de

dado da coluna numérica para alfanumérica. Entretanto no SQL Server é necessário

executar as funções CAST/CONVERT para conversão dos dados referentes à coluna

alterada.

##### 2.4.4. Tratamento de colunas com CNPJ numérico que compõe a PK de uma tabela

2.4.4.1.

Cabe a equipe de Desenvolvimento em conjunto com a Administração de

Banco de Dados avaliar tecnicamente o impacto da alteração ou não da coluna CNPJ

na PK da tabela.

2.4.4.2.

A criação de uma nova coluna CNPJ alfanumérico será no final da tabela bem

como nas tabelas filhas (FKs). A equipe de desenvolvimento atualiza a nova coluna

CNPJ com os dados existentes na coluna CNPJ da PK em todas as tabelas

envolvidas. A equipe de desenvolvimento sinaliza para a equipe de Administração de

Banco de Dados (ABD) sobre a conclusão da atualização dos dados na nova coluna.

##### 2.4.5. Os seguintes critérios devem ser identificados para definição da estratégia de

manutenção no Banco de Dados

2.4.5.1.

Quanto aos cenários:

Elaborado por

Capítulo de Administração de Dados e Banco de Dados (GECPA10)

Data: 02/10/2025


---

## Página 5

- 

Coluna comum (não faz parte de PK).

- 

Coluna faz parte da PK mas não tem filhas.

- 

Coluna faz parte da PK com pelo menos uma filha.

- 

Coluna faz parte de índice secundário.

- 

Coluna é compartilhada (view/ componente/ interface/ propagação/ outro)

consumida por outros sistemas.

- 

Coluna é consumida (view/ componente/ interface/ propagação/ outro) de

outros sistemas.

2.4.5.2.

Quanto a volumetria.

2.4.5.3.

Quanto a complexidade e volume de aplicações impactadas.

2.4.5.4.

Quanto ao nível de disponibilidade operacional.

2.4.5.5.

Quanto a disponibilidade de janela de manutenção.

##### 2.4.6. Independentemente

das

orientações

estabelecidas,

cabe

à

equipe

de

desenvolvimento a prerrogativa de definir a estratégia mais apropriada, observando a

viabilidade técnica das áreas envolvidas.

##### 2.4.7. A equipe de desenvolvimento deve estar ciente que o mesmo procedimento adotado

no ambiente de desenvolvimento deverá ser adotado no ambiente produtivo.

Elaborado por

Capítulo de Administração de Dados e Banco de Dados (GECPA10)

Data: 02/10/2025


---

## Página 6

## ANEXO I

Referência: Documento de Requisitos do Negócio CNPJ Alfanumérico

![Imagem página 6](<./imagem/Orientações da GECPA10 - Novo formato CNPJ alfanumérico_v5-imagem-001.png>)

Descrição da imagem - [./imagem/Orientações da GECPA10 - Novo formato CNPJ alfanumérico_v5-imagem-001.md](<./imagem/Orientações da GECPA10 - Novo formato CNPJ alfanumérico_v5-imagem-001.md>)

Elaborado por

Capítulo de Administração de Dados e Banco de Dados (GECPA10)

Data: 02/10/2025
