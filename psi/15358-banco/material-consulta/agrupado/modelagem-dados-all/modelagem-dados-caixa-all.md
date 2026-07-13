

*INICIO "Criterios-para-Validacao-de-Modelos-de-Dados.md"*


----


# Critérios para Validação de Modelos de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Critérios para Validação de Modelos de Dados

1. O primeiro passo na validação de um modelo de dados é a utilização da ferramenta de pré-validação localizada neste [link](http://gestaodedados.coresp.caixa/) . Sua utilização é obrigatória e pré-requisito para início da validação pela ADI. Essa ferramenta gera um relatório com erros e alertas baseadas nas validações contidas neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3%B5es-executadas-no-Pr%C3%A9-Validador.aspx) para o modelador poder avaliar as situações que se enquadrem fora das instruções normativas desta norma, considerando sempre o último modelo aprovado, de forma a não revalidar o legado já implantado. A ferramenta também gera o documento de Solicitação de Validação de Modelo de Dados pré-preenchido, insumo para o início do atendimento pelo ADI. Cabe frisar que as informações devem ser validadas pelo usuário, além de eventuais complementações que se façam necessárias.

2. Para que a demanda de validação possa ser iniciada, são necessários os insumos a seguir:

- Relatório de pré-validação sem erros ou com suas devidas justificativas;

- Solicitação de validação de modelo de dados preenchida e contendo os objetos alvo da demanda;

- Regras de negócio;

- Histórias de Usuário;

- Descrição de Interface; Os insumos abaixo não são obrigatórios, visto que nem toda demanda requer sua geração, porém podem auxiliar na validação do modelo pela ADI:

- Requisitos não-funcionais;

- Especificações Suplementares;

- Layouts de telas;

- Documento(s) legal(is);

- Documento que descreva o fluxo do processo da aplicação;

1. A Validação do Modelo de Dados na CAIXA contempla a avaliação dos seguintes critérios:

- Adequação às Normas e Padrões – adequação do modelo de dados aos normativos e padrões adotados na CAIXA;

- Técnicas de Modelagem – aderência às técnicas de modelagem de dados adotadas na CAIXA;

- Aderência às Regras de Negócio – coerência entre a documentação de requisitos, histórias de usuário ou casos de uso e o modelo de dados;

- Integração e Compartilhamento de Dados – integração com as bases compartilhadas de dados ou de outros sistemas corporativos. O modelo de dados é também validado sob a ótica da ABD para garantir a padronização dos objetos do modelo físico, a implementação e manutenção desse modelo e possibilitar o adequado comportamento de desempenho dos sistemas. Os objetos do modelo físico são padronizados com base nas instruções contidas neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx) , conforme o SGBD de implementação, e são utilizadas as melhores [práticas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Praticas.aspx) para o armazenamento e desempenho apropriado de cada objeto nesse SGBD. A Lista de Inconsistência de objetos do modelo de dados consta no neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx) .

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Criterios-para-Validacao-de-Modelos-de-Dados.md"*


*INICIO "Expressoes-Regulares-que-Definem-Objetos-Fisicos-dos.md"*


----


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


----


*FIM "Expressoes-Regulares-que-Definem-Objetos-Fisicos-dos.md"*


*INICIO "Guia-de-Padroes-e-Convencoes-na-Modelagem-e-Diagramac.md"*


----


# Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais

Thiago Bezerra Torres

COOR PROJ/PROCES MATRIZ

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais

## 1. Objetivo

Apresentar guia para orientar a elaboração, padronização e organização da construção e manutenção de diagrama para modelos de dados dimensionais de acordo com normas e padrões vigentes para o ambiente Caixa.

## 2. Definições

- Alteração Lenta – atribuída aos objetos dos sistemas transacionais, referente a tabelas mestres, cuja frequência das alterações dos dados é baixa.

- Alteração Rápida – atribuída aos objetos dos sistemas transacionais, referentes a tabelas de transações, cuja frequência das alterações dos dados é alta.

- Análise de Negócios ( *Business Analytics* - BA) – métodos e tecnologias para apoio na tomada de decisões, análise de dados, modelos estatísticos e demais métodos quantitativos.

- Área de interesse - Subconjunto de um modelo de dados, reunindo objetos afins, representando um assunto de interesse do negócio, que normalmente se refere a um recurso, produto ou atividade da empresa, sendo que cada área de interesse tem pelo menos uma tabela.

- Área de Preparação ( *Staging Area* - SA) – área de trabalho temporária que recebe as cópias dos dados dos sistemas de origem, que serão transformados e carregados para o DW ou DM através de ferramentas de ETL.

- Armazém de Dados ( *Data Warehouse* - DW) – estrutura de dados que consolida grande volume de dados de vários sistemas de origem de forma estruturada e centralizada, provendo suporte ao processo decisório organizacional.

- Armazenamento de Dados Operacionais ( *Operacional Data Store* - ODS) – são bases de dados relacionais desnormalizadas para atender necessidades analíticas de uma área de negócio para análise minuciosa dos dados. Os dados estão em sincronia com os sistemas transacionais, o mais atualizado possível. Os dados agregados podem ser extraídos sem sobrecarregar os sistemas transacionais corporativos.

- *Business Intelligence* - BI – (Inteligência de Negócios) – termo considerado como guarda-chuva para descrever um conjunto de conceitos e métodos para otimizar a tomada das decisões de negócio, usando sistemas de suporte baseados em fatos.

- Chave Natural – chave primária de uma tabela oriunda de um sistema transacional a ser considerada como uma coluna não-chave em uma Tabela Dimensão.

- Chave primária – (Primary Key (PK)) - Uma chave primária é uma coluna ou conjunto de colunas em um banco de dados que identifica(m) exclusivamente cada linha em uma tabela. Ela garante que cada linha seja única e permite a criação de relacionamentos com outras tabelas.

- Chave estrangeira – (Foreign Key (FK)) - Em bancos de dados relacionais, uma chave estrangeira (FK) é uma coluna ou conjunto de colunas em uma tabela que se refere(m) à chave primária de outra tabela (ou da mesma tabela). Ela estabelece um relacionamento entre as duas tabelas, garantindo a integridade referencial dos dados.

- Chave Substituta ( *Surrogate* ) – coluna numérica sequencial que identifica univocamente um objeto de uma Tabela Dimensão. É atribuída através de ferramentas de ETL. Normalmente referenciada como chave não negocial.

- Detalhar ( *Drill Down* ) – operação realizada em ferramentas de construção de painéis ( *dashboards* ), que objetiva detalhar uma informação agregada (menor granularidade) para informações mais detalhadas (maior granularidade).

- Diagrama Principal – Organização lógica dos objetos existentes no modelo de dados e visa garantir uma melhor leitura e entendimento das principais funções e características do modelo.

- Diagrama da área de interesse – Organização lógica de um subconjunto de objetos de um modelo de dados, reunindo objetos afins, representando um assunto de interesse do negócio, que normalmente se refere a um recurso, produto ou atividade da empresa, sendo que cada área de interesse tem pelo menos uma tabela.

- Dimensão com funções múltiplas – caracterizada por múltiplos relacionamentos entre uma Tabela Dimensão e uma Tabela Fato, provendo diversos pontos de vistas a partir de uma mesma Dimensão.

- Dimensão de alteração lenta ( *Slowly Changing Dimension* - SCD) – os dados oriundos dos sistemas transacionais não são frequentemente alterados na Tabela Dimensão ao longo do tempo.

- Dimensão de alteração lenta - tipo 1 ( *Slowly Changing Dimension* – SCD 1) – reflete as informações mais recentes na Tabela Dimensão, conforme a detecção da alteração na fonte de dados.

- Dimensão de alteração lenta - tipo 2 ( *Slowly Changing Dimension* – SCD 2) – reflete todas as versões dos dados (histórico) na Tabela Dimensão, conforme a detecção da alteração na fonte de dados.

- Dimensão de alteração lenta - tipo 3 ( *Slowly Changing Dimension* – SCD 3) – permite manter as modificações com a adição de uma nova coluna na Tabela Dimensão para armazenar o novo valor, conforme a detecção da alteração na fonte de dados.

- Dimensão de alteração rápida ( *Fast Changing Monster Dimensions* ) – os dados oriundos dos sistemas transacionais são frequentemente alterados na Tabela Dimensão ao longo do tempo, apresentando um crescimento rápido em sua volumetria.

- Dimensão de Degeneração ( *Degenerate Dimension* ) – é uma dimensão que não possui sua própria tabela de dimensão, mas sim é armazenada como um atributo dentro da tabela de Fatos. É utilizada para armazenar valores de controle de transações, números de faturas ou outros valores numéricos úteis para rastreamento, mas que não se vinculam a outras dimensões.

- Dimensão de Lixo Eletrônico ( *Junk Dimension* ) – tem como objetivo juntar diversas colunas, que estariam dispersas em diferentes Tabelas Dimensão, em uma única através de um produto cartesiano das informações das respectivas Dimensões.

- Dummy – Variável binária (0 ou 1) que indica a presença ou ausência de um determinado atributo.

- Esquema Estrela ( *Star Schema* ) – é uma abordagem de modelagem dimensional proposta por Kimball, amplamente utilizada na construção de DM, para apoio na análise de métricas de informações negociais. Essa técnica é formada por Tabelas Dimensão, que contém os dados da perspectiva de análise, e Tabela Fato que representa os eventos de um processo de negócio.

- Esquema Floco de Neve ( *Snow flake Schema* ) – extensão do modelo estrela onde as dimensões se relacionam com outras tabelas em uma estrutura normalizada, tendo como consequência o aumento das junções ( *joins* ) entre tabelas para uma seleção de dados.

- Extração, Transformação e Carga (Extraction, Transformation and Load - ETL) – processo que consiste em todas as etapas necessárias para extrair dados, transformá-los e carregá-los em um DW ou DM.

- Facteless Fact Table – Tabela Fato sem fato – Uma tabela de fatos sem fatos não contém coluna de medida. Ela contém apenas chaves de dimensão. Uma tabela de fatos sem fatos poderia armazenar observações definidas por chaves de dimensão.

- Grau de Sigilo da Informação, conforme OR016 – "A classificação da informação é obrigatória na CAIXA para todo dado e informação produzidos por ela ou sob sua custódia, independentemente do suporte ou da forma utilizada para o seu armazenamento ou transmissão".

- Inteligência de Negócios ( *Business Intelligence* - BI) – termo considerado como guarda-chuva para descrever um conjunto de conceitos e métodos para otimizar a tomada das decisões de negócio, usando sistemas de suporte baseados em fatos.

- Lago de Dados ( *Data Lake* ) – repositório centralizado de dados estruturados e não estruturados, onde podem ser armazenados dados brutos em diversos tipos de formato, como imagens, textos, vídeos e áudio.

- Mercado de Dados ( *Data Mart* - DM) – subconjunto de um DW onde os dados são estruturados por assunto e extraídos de determinadas fontes.

- Métrica Negocial - indicador quantificável que as empresas utilizam para avaliar o desempenho de suas estratégias, operações e metas. Essencialmente, são dados numéricos que ajudam a monitorar o progresso em relação aos objetivos e a identificar áreas que precisam de melhoria.

- Painéis ( *Dashboard* ) – interface que disponibiliza dados consolidados em formato tabular ou dispostos em gráficos para comparação, composição, relacionamento e estimativas. Os painéis têm a capacidade de apoiar na operação de *drill down,* permitindo visualizar os detalhes de uma métrica em diversos pontos de vista e o *drill up* , para visualizar as métricas de forma agregada.

- Sintetizar ( *Drill Up* ) – operação realizada em ferramentas de construção de painéis que objetiva agregar uma informação de maior granularidade para menor granularidade.

- Sistemas Transacionais – sistemas que processam enormes quantidades de dados corporativos. Esses sistemas são as fontes do BI onde o ETL extrai os dados brutos depositando-os na área de preparação (Staging Area – SA) e no ODS (quando existente), seguido por transformações especificadas em regras de negócio para realizar a carga no DW ou DM.

- Tabela Fato – contém os eventos representados por métricas negociais a serem analisados sobre diversos pontos de vistas, através dos relacionamentos com as Dimensões. A estrutura é formada por chaves das tabelas dimensões e os eventos, que podem estar em diferentes níveis de granularidade.

- Tabela Fato Agregada - Uma tabela fato agregada é uma tabela criada a partir de uma tabela Fato principal, onde as informações são agregadas (somas, médias etc.) para um nível mais alto de detalhe, resultando em menos linhas e mais resumo. Este tipo de tabela é utilizado para otimizar o desempenho de consultas que geralmente requerem agregações, acelerando a análise de dados.

- Tabela Fato sem fatos – (Factless Table Fact) não contém a coluna de medida para armazenar relações entre dimensões de muitos para muitos. Isso facilitará a busca em referências cruzadas e estatísticas de proporcionalidade.

- Tabela Dimensão – representa o ponto de vista de análise dos fatos. Em sua estrutura comporta uma ou mais colunas chaves de identificador exclusivo e colunas descritivas.

## 3. Fundamentos

Os modelos dimensionais estão relacionados ao conceito de Inteligência Empresarial ( *Business Intelligence* - BI) que combina análise empresarial, preparação de dados, mineração de dados, visualização de dados, ferramentas de decisão e análise estatística para propiciar às organizações a tomada de decisões baseada em dados através de consultas, relatórios e painéis personalizados ( *dashboards* ). O BI apresenta dados atuais e históricos no contexto dos negócios através de uma infraestrutura técnica adequada. Fazem parte desse contexto com o papel de armazenar dados existentes e históricos em um ou mais repositórios de dados, os *Data Warehouse* , Data Mart e, atualmente os *Data Lakes* .

De acordo com os requisitos de negócio, podem ser utilizados vários DM de diferentes assuntos ou linhas de negócio com o objetivo de construir posteriormente um DW. A estrutura de dados forma um esquema em estrela ( *Star Schema* ) a respeito de um assunto apoiado na classificação da informação assim como em projeções e tendências. Nesse sentido, Kimball (2013) propõe que os DM sejam criados primeiramente em relação ao DW, para disponibilizar rapidamente relatórios e análises voltados à um determinando assunto *(bottom-up approach* - Figura 2). O DW poderá ser criado posteriormente, a partir da junção de vários DM. Bill Inmon (1996) defende que o DW deverá ser criado antes dos DM, para prover uma visão consistente empresarial centralizada ( *top-down approach* - Figura 1).

As Figuras 1 e 2, demonstram que os dados dos DW e DM têm como origem os sistemas *Online Transaction Process* (OLTP) da corporação, que são carregados (uma cópia fidedigna) para uma área intermediária conhecida como Área de Preparação ( *Staging Area* ). Nessa camada, um processo de transformação inicia a limpeza, agregação, formação histórica e cruzamento de dados, baseados em requisitos e regras de negócio, alimentando as tabelas fatos e dimensões, que serão acessadas e analisadas através de ferramentas *Online Analytical Processing* (OLAP), tais como, Tableau, PowerBI ou Microstrategy.

## 4. Orientações de Modelagem Dimensional

#### 4.1. Geral

4.1.1. Este guia é complemento dos critérios estabelecidos no normativo MNTE156 - Modelagem de Dados Dimensional para Sistemas de Informações Gerenciais. 4.1.2. Boas práticas: o modelo dimensional não deve ser elaborado baseado em relatórios, caso contrário, a cada novo relatório que o gestor solicitar "nascerá" um novo modelo dimensional. O levantamento tem que levar em conta o processo de negócio a ser medido. 4.1.3. Para cada tabela do modelo dimensional informar o Dimensional Type (Dimension ou Fact) na “Table Properties” na ferramenta de modelagem. 4.1.4. Todos os objetos (ex: tabelas e colunas) presentes no modelo de dados dimensional devem ser descritos conceitualmente e classificados conforme o Grau de Sigilo da Informação. Atentar para a Classificação da Informação já atribuída aos objetos de dados nos sistemas de origem da solução. Não deveria informar que o grau deveria ser igual ao do sistema transacional para não ferir OR016? Descrição deveria estar na origem, no sistema transacional? 4.1.5. Indicar na descrição das tabelas Dimensões a frequência de alteração lenta ou alteração rápida e as suas necessidades negociais. 4.1.6. Indicar na descrição da tabela Fato a necessidade negocial dos eventos. 4.1.7. A estimativa inicial de quantidade de ocorrências e a taxa de crescimento anual devem ser especificadas para cada Tabela Fato e Dimensão. 4.1.8. O tempo de histórico dos dados nas bases DW/DM é definido em função da necessidade de informações do projeto, considerando um estudo de viabilidade sobre os custos envolvidos na solução. 4.1.9. Verificar se há necessidade de particionamento da(s) tabela(s) conforme MNTE074 item 3.2.8 – Particionamento da Tabela. 4.1.10. Não é permitida a utilização de triggers.

#### 4.2. Tabela Dimensão

4.2.1. Não utilizar na nomenclatura da tabela Dimensão qualquer dos termos: DIMENSAO, DIM ou similar. 4.2.2. Garantir que toda tabela Dimensão utilize uma chave primária artificial (Surrogate Key). 4.2.3. A Chave Natural é obtida da chave primária da tabela do sistema transacional. A(s) coluna(s) da Chave Natural pode(m) ser chave alternativa na tabela Dimensão. 4.2.4. A chave primária artificial (Surrogate Key) tem como objetivo melhorar a performance em consultas de recuperação, assim como nas alterações. 4.2.5. A coluna chave primária surrogate deve ser um número inteiro sequencial, sem qualquer significado negocial.

Padrão nomenclatura: Name: NU_IDENTIFICADOR_t Code: NU_IDNTR_t Onde: t é a qualificação da coluna

4.2.6. As dimensões devem ter registros padrões (dummy) na chave surrogate de forma a apoiar o critério de inexistência de valores (nulos) das chaves estrangeiras na tabela Fato. 4.2.7. Na descrição da tabela Dimensão incluir o texto:

“Inclusão de linhas com os respectivos conteúdos: -1 (menos um) = não informado, -2 (menos dois) = não encontrado, -3 (menos três) = Não se aplica.”

4.2.8. O tipo de alteração em tabela Dimensão deve ser aplicado, conforme a necessidade negocial. 4.2.9. A tabela Dimensão deve ser composta por colunas de data e hora de início e fim de vigência, data e hora de carga e um indicador da situação atual (IC_SITUACAO_ATUAL). 4.2.10. No caso de SCD Tipo 1 (Substituição), o indicador de situação atual (IC_SITUACAO_ATUAL) assume 1 significando “Atual”. 4.2.11. No caso de SCD Tipo 2 (versão), o indicador de situação atual (IC_SITUACAO_ATUAL) assume 0 significando “Antigo” ou 1 significando “Atual”. 4.2.12. Demais tipos de SCD e mediante justificativa serão submetidos à ADI para análise / aprovação. 4.2.13. Observações para PowerBI: as Dimensões com funções múltiplas, ou seja, com múltiplos relacionamentos com a Tabela Fato deverão ser replicadas para cada relacionamento, conforme necessidade de implementação. Utilizar as funções DAX do PowerBI para tratar o múltiplo relacionamento. 4.2.14. Dimensão de Lixo Eletrônico deverá ser utilizada quando houver um conjunto de colunas formado por status ou flags que poderão ser combinadas. 4.2.15. Dimensão de Degeneração deverá será utilizada nos casos de registros de zero mutabilidade. 4.2.16. A Dimensão de Degeneração é caracterizada quando a quantidade de registros e as descrições não sofrerão alterações. 4.2.17. A Dimensão de Degeneração não pode ser utilizada para filtragem. 4.2.18. A Dimensão de Degeneração só deve ser utilizada para um máximo de 7 registros. Acima disso, uma Tabela Dimensão deve ser criada. 4.2.19. A estrutura de dados da Dimensão Período deve ser composta, no mínimo, por: Chave Surrogate, Data Período, Número do Ano, Número do Mês, Número da Semana do Ano, Número do dia mês, Número do dia semana, Número do trimestre, Sigla do mês, Nome do mês, Nome do dia na semana. 4.2.20. Está em avaliação pela SUART – Arquitetura de Dados, a viabilidade de haver dimensões de uso comum, ou seja, Dimensões de uso compartilhado entre as soluções BI. 4.2.21. Sendo assim, recomenda-se as estruturas de dados (abaixo relacionadas) para as Dimensões candidatas a este conceito. Estas dimensões pertencem ao modelo de dados do SIDIM - DIM_DES_MSQ_DIMENSOES_DE_USO_COMUM_01 que contém a seguinte descrição:

“SIDIM - Sistema que recebe cargas de informações do sistema SIICO (Sistema de Informações Compartilhadas) e, quando necessário, cargas de outros sistemas transacionais. Estas cargas são efetuadas através de processo ETL (Extração, Transformação e Carga), efetuado pela ferramenta Power Center. O SIDIM contempla somente a respectiva Base de Dados cujas informações serão replicadas (processo ETL) para os sistemas BI consumidores. (origem: SIAPP - catálogo de sistemas CAIXA)”.

4.2.22. Dimensões candidatas ao uso comum existentes no modelo de dados do SIDIM:

| Coluna 1 | Coluna 2 |
| --- | --- |
| Name | Code |
| UNIDADE | DIMTD001_UNIDADE |
| PRODUTO | DIMTD002_PRODUTO |
| LOCALIDADE_GEOGRAFICA | DIMTD003_LCLDE_GEOGRAFICA |
| PERIODO | DIMTD005_PERIODO |
| SEGMENTO_NEGOCIAL | DIMTD010_SEGMENTO_NEGOCIAL |
| HORA | DIMTD011_HORA |
| CARTEIRA_SEGMENTO | DIMTD012_CARTEIRA_SEGMENTO |
| BANCO | DIMTD015_BANCO |
| AGENCIA | DIMTD016_AGENCIA |
| CONVENIO | DIMTD017_CONVENIO |

#### 4.3. Tabela Fato

4.3.1. Garantir que todos os fatos (medidas) da Tabela Fato estão na mesma Granularidade ou nível de detalhe. 4.3.2. Na nomenclatura da tabela Fato não utilizar o termo FATO ou similar. 4.3.3. Não é obrigatória a adoção de chave primária artificial (SK = surrogate key) na Tabela Fato. Se houver, esta deverá ser numérica, tipo inteiro e sequencial.

Padrão nomenclatura: Name: NU_IDENTIFICADOR_xxxx Code: NU_IDNTR_xxx Onde: xxxx é o nome associado a definição da tabela Fato.

4.3.4. A tabela Fato é formada pelas chaves estrangeiras (FK) das tabelas de Dimensões e pelo menos uma métrica negocial. Nos casos de tabela Fato com chaves estrangeiras e sem medida (Tabela Factless), as boas práticas recomendam a criação de uma coluna de medida com valor igual a 1. 4.3.5. As chaves estrangeiras (FK) devem ser mandatórias. 4.3.6. Atribuir à respectiva chave estrangeira o registro padrão (Dummy)para um Fato que não corresponda a alguma dimensão. 4.3.7. Boas Práticas: recomenda-se que a quantidade de dimensões, associadas à Tabela Fato, seja no máximo 15 dimensões. Casos excepcionais serão avaliados pela ADI – Administração de Dados e Informações.

Obs.: os relacionamentos paralelos contam como se fossem dimensões, ou seja, é a quantidade de FK que importa.

4.3.8. Todo Fato deve estar relacionado obrigatoriamente à uma dimensão de tempo (Dimensão PERIODO). 4.3.9. A Dimensão de Degeneração deve ser implementada na Fato com as respectivas colunas de descrição da dimensão. 4.3.10. As métricas da Tabela Fato devem ser implementadas como colunas numéricas, sendo a granularidade definida pelas dimensões. (métricas aditivas, não aditivas). As colunas que representam as medidas devem ser mandatórias. Exemplos 4.3.11. A tabela Fato contém a coluna de data e hora da carga realizada pelo processo de ETL.

#### 4.4. Referência

4.4.1. As associações entre Tabelas Dimensão e Tabelas Fato deverão ser respectivamente 1:N. 4.4.2. Os verbos de ligação devem ser definidos (Parent e Child Role). 4.4.3. A opção “Change Parent Allowed” não é permitida.

#### 4.5. Coluna

4.5.1. As colunas têm sua classe condizente com o tipo de coluna, conforme definido no guia [Nomenclatura de Objetos](http://ppds.caixa/?page_id=8262) do Portal de Práticas (ppds.caixa).

#### 4.6. Índice Secundário

4.6.1. Índices secundários somente são associados a Tabela Dimensão em relação a Chave Natural ou outro atributo descritivo. 4.6.2. A criação de índices é avaliada pela área responsável de Administração de Banco de Dados (ABD).

## 5. Nomenclatura e Representação Gráfica das Tabelas no Diagrama do Modelo Dimensional

#### 5.1. Nomenclatura dos Objetos

5.1.1. A padronização de nomenclatura dos objetos físicos está detalhada nos guias Nomenclatura de Objetos e Expressões Regulares que Definem Objetos Físicos dos SGBD, disponíveis no ppds.caixa, conforme especifica o MNTE074.

#### 5.2. Representação Gráfica dos Objetos e Nomenclatura de Diagramas Dimensionais

5.2.1. Seguir a representação no esquema estrela (Star Schema) ou floco de neve (Snow Flake), onde a Tabela Fato (TF) fica no centro e as Tabelas Dimensões (TD) ao redor dela, para uma melhor visualização. 5.2.2. Criar um diagrama principal que representará a área de interesse global do sistema com todas as tabelas fato, dimensões, seus respectivos relacionamentos e as tabelas de Apoio (??) (posicionadas na parte inferior da página). 5.2.3. A nomeação (Nome e Código) do diagrama principal segue a forma estabelecida no MNTE074. 5.2.4. Criar Diagramas por áreas de interesse (Subject Areas), a cada tabela Fato e suas respectivas dimensões. A nomeação (Nome e Código) do diagrama segue o formato:

SSS_t onde: SSS é a sigla do sistema e ‘t’ (texto livre) é o nome da Tabela Fato.

5.2.5. Criar um Diagrama de Subject Area específico para cada tipo de tabela de apoio. A nomeação do Diagrama da Subject Area para as tabelas de apoio segue a forma:

SSS_t, onde: SSS é a sigla do sistema e ‘t’ (texto livre) é o nome do tipo de tabela de apoio, conforme indicação no guia de Nomenclatura dos objetos.

5.2.6. Padrões de representação dos objetos nos Diagramas.

As cores de relacionamento, PK, FK, fonte e tamanho, deverão seguir a formatação do Guia de Padrões e convenções de diagramas de Modelos de Dados CAIXA aplicável aos modelos relacionais, referenciado no item 3.2.18. do [MNTE074](http://sismn.caixa/sistema/asp/ConsultaPesquisa/pdf_comum.asp?id=NTE074) (Critérios de Padronização e Organização Gráfica de Modelo De Dados).

5.2.7. As cores das tabelas Fato, Dimensões e demais tabelas de apoio seguem o padrão abaixo:

## 6. Exemplos de Aplicação dos Padrões nos Objetos do Diagrama Dimensional

### 6.1. Diagramação do Modelo de Dados Dimensional Estrela

| Nome do Modelo: | GBC_DES_SYI_BENEFICIO_CIDADAO |
| --- | --- |
| Nome do Diagrama Principal: | GBC_DIAGRAMA_PRINCIPAL |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

### 6.2. Diagramação do Modelo de Dados Dimensional Estrela com Floco de Neve

| Nome do Modelo: | IBS_DES_MSQ_PAGAMENTO_SEGURO_DESEMPREGO |
| --- | --- |
| Nome do Diagrama Principal: | IBS_DIAGRAMA_PRINCIPAL |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

### 6.3. Diagramação do Modelo de Dados Dimensional com Duas Tabelas Fato

| Nome do Modelo: | IBS_DES_MSQ_PAGAMENTO_SEGURO_DESEMPREGO |
| --- | --- |
| Nome do Diagrama Principal: | IBS_DIAGRAMA_PRINCIPAL |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

### 6.4. Diagramação e Denominação das Subject Areas do Modelo de Dados Dimensional

#### 6.4.1. Diagramação para Tabela Fato com suas Dimensões

| Nome da Tabela Fato: | PERFIL_PESSOA_PROGRAMA_SOCIAL |
| --- | --- |
| Nome do Diagrama da Subject Area: | GBC_PERFIL_PESSOA_PROGRAMA_SOCIAL |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

#### 6.4.2. Diagramação para Tabelas de Apoio

- Tipo de Tabela de Apoio: Carga (load)

| Nome do Modelo: | GBC_DES_SYI_BENEFICIO_CIDADAO |
| --- | --- |
| Nome do Diagrama da Subject Area: | GBC_TABELA_APOIO_CARGA |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

- Tipo de Tabela de Apoio: Intermediária

| Nome do Modelo: | GBC_DES_SYI_BENEFICIO_CIDADAO |
| --- | --- |
| Nome do Diagrama da Subject Area: | GBC_TABELA_APOIO_INTERMEDIARIA |
| Obs.: imagem somente com alguns objetos como exemplo. |  |

## 7. Referências

MNTE073 - Gerência de Modelos de Sistemas de Informação.

MNTE074 - Modelagem de Dados Relacional para Sistemas e Aplicativos de Negócio CAIXA.

MNTE156 - Modelagem de Dados Dimensional para Sistemas de Informações Gerenciais.

KIMBALL, Ralph; ROSS, Margy. **The Data Warehouse Toolkit** : The definitive guide to dimensional modeling. 3nd. New York: Wiley Computer Publishing, 2013.

INMON, Bill. **Building the Warehouse** . 2nd. New York: John Wiley & Sons, 1996.

Fonte: Google - Visão geral criada por IA. Modelagem Dimensional, Disponível em: [https://www.google.com.br/search?q=modelagem+dimensional](https://www.google.com.br/search?q=modelagem+dimensional) , Acesso em: 6 de junho de 2025.


----


*FIM "Guia-de-Padroes-e-Convencoes-na-Modelagem-e-Diagramac.md"*


*INICIO "Lista-de-Objetos-para-Validacao-do-Modelo-de-Dados.md"*


----


# Lista de Objetos para Validação do Modelo de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Lista de Objetos para Validação do Modelo de Dados

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| COD. | CATEGORIA | Sev |
| 1. | Tabela |  |
| 1.1. | Padronização da nomeação lógica ( NAME ) |  |
| 1.1.1. | Tabela com Nome abreviado havendo espaço suficiente para o extenso. | 1 |
| 1.1.2. | Tabela com nomeação no singular. | 1 |
| 1.1.3. | Tabela com existência de abreviaturas e siglas consagradas em desconformidade com o glossário de termos. | 1 |
| 1.1.4. | Existência de substantivo composto na tabela sem todos os termos abreviados. | 1 |
| 1.1.5. | Tabela com nomeação que causam interpretações dúbias. | 2 |
| 1.1.6. | Tabela com nomeação não utilizando verbos no particípio. | 1 |
| 1.1.7. | Tabela com o tamanho do nome lógico excedendo o limite da ferramenta case. | 1 |
| 1.1.8. | Tabela com nomeação desnecessária em língua estrangeira. | 1 |
| 1.1.9. | Tabela com nomeação em desconformidade com o gênero masculino. | 1 |
| 1.1.10. | Tabela com abreviatura e/ou eliminação do termo mais significativo. | 1 |
| 1.1.11. | Tabela com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. | 1 |
| 1.1.12. | Tabela com utilização de nomes ou siglas de unidades/sistemas da CAIXA para nomear objetos. | 1 |
| 1.1.13. | Tabela com utilização de sinônimos desnecessários. | 1 |
| 1.1.14. | Tabela com nomeação lógicos dos objetos sem relação com a nomeação dos objetos físicos. | 2 |
| 1.1.15 | Tabela com utilização de algarismos não arábicos. | 1 |
| 1.2. | Conceituação ( Comment ) |  |
| 1.2.1. | Tabela sem descrição. | 2 |
| 1.2.2. | Tabela com descrição não concisa, não clara e ambígua. | 1 |
| 1.2.3. | Tabela com descrição que contém o termo que está sendo descrito (tautologia). | 1 |
| 1.2.4. | Tabela com nomeação em língua estrangeira sem a tradução na descrição. | 1 |
| 1.3. | Regras de Modelagem |  |
| 1.3.1. | Tabela sem pelo menos 1 predicado. | 2 |
| 1.3.2. | Tabelas distintas com propriedades, colunas e relacionamentos em comum. Avaliar a possibilidade de generalização ou criação de um supertipo. | 2 |
| 1.3.3. | Tabela sem identificador. | 2 |
| 1.3.4. | Tabela não identificada de forma unívoca. | 2 |
| 1.3.5. | O identificador da tabela forte não compõe o identificador das tabelas fracas. | 2 |
| 1.3.6. | O Identificador da Tabela Associativa não está composto, no mínimo, pelos relacionamentos que o associam. | 2 |
| 1.4. | Aderência às regras de Negócio |  |
| 1.4.1. | Tabela não aderente às regras de negócio. | 2 |
| 1.4.2. | Utilização inadequada de tabela isolada. | 1 |
| 1.4.3. | Utilização inadequada de tabela solitária. | 1 |
| 1.4.4. | Utilização inadequada de tabela “Histórico”. | 1 |
| 1.4.5. | Utilização inadequada de tabela “LOG”. | 1 |
| 1.5. | Propriedades de Tabela |  |
| 1.5.1. | Tabela com quantidade estimada de ocorrências não informada. | 1 |
| 1.5.2. | Tabela com taxa de crescimento não informada. | 1 |
| 2. | Relacionamento ( FOREIGN KEY ) |  |
| 2.1. | Padronização da nomeação Lógica ( NAME ) |  |
| 2.1.1. | Ausência da indicação do rolename (papel). | 2 |
| 2.1.2. | Relacionamento com verbo não conjugado na 3ª pessoa do singular do presente do indicativo e/ou inexistência de voz ativa e passiva. | 1 |
| 2.1.3. | Ausência do verbo que define a ação no relacionamento existente entre as tabelas. | 2 |
| 2.1.4. | Nomeação do relacionamento nos dois sentidos. | 1 |
| 2.1.5. | Relacionamento de Tabela com nomeação no singular. | 1 |
| 2.2. | Regras de Modelagem |  |
| 2.2.1. | Associação entre tabelas não representada por relacionamento. | 2 |
| 2.2.2. | Relacionamento com cardinalidade M:N não resolvido. | 2 |
| 2.2.3. | Referência ao identificador de uma tabela não representada através de relacionamento. | 2 |
| 2.2.4 | Chave estrangeira sem todos os colunas de origem. | 2 |
| 2.2.5 | Relacionamento necessário não participa do identificador. | 2 |
| 2.2.6 | Existência de relacionamento redundante. | 1 |
| 2.2.7 | Redundância da coluna que foi implementado como chave estrangeira. | 2 |
| 2.2.8 | Auto Relacionamento que representa uma hierarquia sem que os dois lados estejam opcionais. | 1 |
| 2.2.9 | Utilização de coluna em hierarquia não estável ao invés de inclusão de auto relacionamento. | 1 |
| 2.2.10 | Coluna participante do identificador é redundante com relacionamento. | 2 |
| 2.3. | Aderência às regras de Negócio |  |
| 2.3.1. | Relacionamento não aderente às regras de negócio. | 2 |
| 2.3.2. | Utilização inadequada de relacionamento paralelo. | 1 |
| 2.4. | Propriedades dos Relacionamentos |  |
| 2.4.1. | Cardinalidade de associação não informada. | 2 |
| 2.4.2. | Opcionalidade de associação não informada. | 2 |
| 2.4.3. | Regra de deleção nos relacionamentos não atribuída. | 2 |
| 3. | Coluna |  |
| 3.1. | Padronização da nomeação Lógica ( NAME ) |  |
| 3.1.1. | Coluna com nome lógico abreviado havendo espaço suficiente para o extenso. | 1 |
| 3.1.2. | Coluna com o tamanho do nome lógico excedendo o limite da ferramenta case. | 1 |
| 3.1.3. | Coluna com nomeação no singular. | 1 |
| 3.1.4. | Coluna com existência de abreviaturas e siglas consagradas em desconformidade com o glossário de termos. | 1 |
| 3.1.5. | Existência de substantivo composto no coluna sem todos os termos abreviados. | 1 |
| 3.1.6. | Coluna com nomeação que causam interpretações dúbias. | 2 |
| 3.1.7. | Coluna com nomeação desnecessária em língua estrangeira. | 1 |
| 3.1.8. | Coluna com nomeação não utilizando verbos no particípio. | 1 |
| 3.1.9. | Coluna com nomeação em desconformidade com o gênero masculino. | 1 |
| 3.1.10. | Coluna com abreviatura e/ou eliminação do termo mais significativo. | 1 |
| 3.1.11. | Coluna com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. | 1 |
| 3.1.12. | Coluna com utilização de nomes ou siglas de unidades/sistemas da CAIXA para nomear objetos. | 1 |
| 3.1.13. | Coluna com utilização de sinônimos desnecessários. | 1 |
| 3.1.14. | Existência de termo redundante em relação à classe da coluna. | 1 |
| 3.1.15. | Coluna com utilização de algarismos não arábicos. | 1 |
| 3.1.16. | Ausência da classe da coluna ou classe inadequada ao nome do objeto. | 1 |
| 3.1.17. | Ausência de lista de valores permitidos para o coluna. | 2 |
| 3.2 . | Conceituação ( Comment ) |  |
| 3.2.1. | Coluna sem descrição. | 2 |
| 3.2.2. | Coluna com descrição não concisa, não clara e ambígua. | 1 |
| 3.2.3. | Coluna com descrição que contém o termo que está sendo descrito (tautologia). | 1 |
| 3.2.4. | Coluna com nomeação em língua estrangeira sem a tradução na descrição. | 1 |
| 3.3. | Regras de Modelagem |  |
| 3.3.1. | Nomeação distinta para o mesmo coluna (ou Utilização de um mesmo coluna nomeando-o distintamente). | 2 |
| 3.3.2. | Tipo e tamanho distintos para o mesmo coluna. | 2 |
| 3.3.3. | Inconsistência na definição de classe de colunas. | 1 |
| 3.4. | Aderência às regras de Negócio |  |
| 3.4.1 | Coluna não aderente às regras de negócio. | 2 |
| 3.5. | Propriedades de Colunas |  |
| 3.5.1 | Coluna com opcionalidade não informada. | 2 |
| 3.5.2 | Coluna com tipo não informado. | 2 |
| 3.5.3 | Coluna com tamanho não informado. | 2 |
| 3.5.4 | Coluna com tamanho adequado ao SGBD utilizado. | 2 |
| 4. | Chave Primária ( PRIMARY KEY/ALTERNATE KEY ) |  |
| 4.1. | Regras de Modelagem |  |
| 4.1.1. | Coluna de classe “ timestamp ” como único componente de Identificador. | 2 |
| 4.1.2. | Composto de colunas derivados. | 2 |
| 4.1.3. | Existência de inteligência nos identificadores. Isto inclui separação de faixas de código. | 1 |
| 4.1.4. | Garantia de unicidade dos identificadores de cada tabela. | 2 |
| 4.1.5. | Utilização de coluna com tipo de dado inapropriado. | 2 |
| 4.2. | Aderência às regras de Negócio |  |
| 4.2.1. | Identificador não aderente às regras de negócio. | 2 |
| 5. | Área de Interesse |  |
| 5.1. | Padronização da nomeação dos objetos |  |
| 5.1.1. | Área de interesse com nomeação no singular. | 1 |
| 5.1.2. | Área de Interesse com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. | 1 |
| 6. | Objetos Físicos |  |
| 6.1. | Padronização da nomeação dos objetos ( CODE ) |  |
| 6.1.1. | Inconformidade na nomeação de Tabela. | 1 |
| 6.1.2. | Inconformidade na nomeação de Coluna. | 1 |
| 6.1.3. | Inconformidade na nomeação de Chave Primária. | 1 |
| 7. | Modelo Compartilhado |  |
| 7.1. | Objetos do Modelo Compartilhado |  |
| 7.1.1. | Utilização de forma proprietária de objetos dos sistemas compartilhados . | 2 |
| 7.1.2. | Utilização de objetos do SICLI sem a devida autorização da área gestora. | 2 |
| 8. | Normalização |  |
| 8.1. | Regras de Modelagem |  |
| 8.1.1. | Inconformidade na 1ª FN – Existência de colunas não atômicos e/ou grupos repetitivos. | 2 |
| 8.1.2. | Inconformidade na 2ª FN – Coluna não chave não é totalmente dependente da chave primária. | 2 |
| 8.1.3. | Inconformidade na 3ª FN – Existência de relacionamentos transitivos (ciclos fechados). | 2 |

**Legenda:**

SEV = Severidade

1 – Erro de Menor Gravidade

2 – Erro de Maior Gravidade

TE = Normativo Caixa Tomo Tecnologia

Categoria: Classificação dos objetos em:

1. Tabela

2. Relacionamento

3. Coluna

4. Identificador

5. Área de Interesse

6. Objetos Físicos

7. Modelo Compartilhado

8. Normalização


----


*FIM "Lista-de-Objetos-para-Validacao-do-Modelo-de-Dados.md"*


*INICIO "Melhores-Praticas-em-Modelagem-de-Dados.md"*


----


# Melhores Práticas em Modelagem de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> Melhores Práticas em Modelagem de Dados

## 1. Chave Primária

1.1 A Chave Primária tem a função básica de garantir a integridade referencial nos relacionamentos e a unicidade das linhas na tabela.

1.2 Critérios que usamos para identificar e escolher uma PK, dentre as chaves candidatas:

- Aplicável: O valor da PK deve determinar o valor de todo e qualquer coluna da tabela – dependência funcional;

- Não Nula: O valor deve existir para cada uma das instâncias (não se permite nulidade);

- Única: O valor da PK deve garantir que cada linha da tabela seja única;

- Estável: O domínio dos valores da PK deve permanecer estável ao longo do tempo;

- Mínima: Deve haver uma única coluna ou um conjunto mínimo de colunas para tornar a PK única;

- Imutável: A PK não pode ser alterada.

1.3 Chaves Naturais não devem ser utilizadas.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Melhores-Praticas-em-Modelagem-de-Dados.md"*


*INICIO "Microsoft-SQL-Server-Uso-de-Constraint-Default.md"*


----


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


----


*FIM "Microsoft-SQL-Server-Uso-de-Constraint-Default.md"*


*INICIO "Modelagem-de-Dados-para-Sistemas-CAIXA.md"*


----


# Modelagem de Dados para Sistemas CAIXA

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> Modelagem de Dados para Sistemas CAIXA

## ÍNDEX

#### Lista de Guias de Modelagem de Dados

- [Critérios para Validação de Modelos de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Crit%C3%A9rios-para-Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx)

- [Expressões Regulares que Definem Objetos Físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx)

- [Guia de Padronização e Organização Gráfica de Modelos de Dados](https://caixa.sharepoint.com/sites/5141/SitePages/Guia_Qualificacao_Grafica.aspx)

- [Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-de-Modelagem-e-Diagramacao-Dimensional.aspx)

- [Lista de Objetos para Validação do Modelo de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx)

- [Melhores Práticas em Modelagem de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Melhores-Pr%C3%A1ticas-em-Modelagem-de-Dados.aspx)

- [Nomenclatura de Objetos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx)

- [Microsoft SQL Server - Uso de Constraint Default](https://caixa.sharepoint.com/sites/PPDS/SitePages/SQLServer-Constraint-Default.aspx)

- [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) [Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ciclo-de-Vida-dos-Dados.aspx) [Compactação](https://caixa.sharepoint.com/sites/PPDS/SitePages/Compacta%C3%A7%C3%A3o.aspx) [Expurgo](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expurgo.aspx) [Particionamento](https://caixa.sharepoint.com/sites/PPDS/SitePages/Particionamento.aspx)

- [Regras de modelagem para Frameworks Autorizados​​​​​​​](https://caixa.sharepoint.com/sites/PPDS/SitePages/Regras-de-modelagem-para-Frameworks-Autorizados.aspx) [Spring Batch](https://caixa.sharepoint.com/sites/PPDS/SitePages/Spring-Batch.aspx)

- [Validações executadas no Pré-Validador](https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3%B5es-executadas-no-Pr%C3%A9-Validador.aspx)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Modelagem-de-Dados-para-Sistemas-CAIXA.md"*


*INICIO "Nomenclatura-de-Objetos.md"*


----


# Nomenclatura de Objetos

Thiago Bezerra Torres

COOR PROJ/PROCES MATRIZ

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >>Nomenclatura de Objetos

## 1. DEFINIÇÕES GERAIS DOS OBJETOS

1.1. O nome (também chamado de nome lógico e, no PowerDesigner, *NAME* ) desses objetos não deve ser abreviado.

1.2. O código (também chamado de nome físico e, no PowerDesigner, *CODE* ) desses objetos não deve ser abreviado caso haja espaço suficiente para o extenso.

1.3. O tamanho do código do objeto fica condicionado ao SGBD utilizada para o seu registro. Na Caixa o tamanho máximo vigente está limitado a 30 caracteres

1.4. O nome e código desses objetos devem ser grafado no singular e preferencialmente no gênero masculino.

1.5. Os termos utilizados na denominação de objetos, suas abreviaturas e contextos de utilização devem estar registrados no glossário de termos.

1.6. Caso o espaço reservado para a denominação seja insuficiente, os termos são abreviados a partir da palavra menos significativa para o entendimento do conceito do objeto.

1.7. Como forma de evitarem-se ambiguidades, adota-se apenas uma abreviatura para cada termo válido.

1.8. Caso o termo pretendido não existir, cabem as avaliações constantes no item 5.

## 2. NOMENCLATURA DE TABELA

2.1. O nome de uma tabela ( *NAME* ) deve ser aquele mais apropriado para representar o fato do mundo real no contexto do negócio.

2.2. O código da tabela ( *CODE* ) é formado pelo prefixo elaborado conforme descrito na página [Expressões Regulares que definem objetos físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx) adicionando, na sequência, os termos mais significativos (determinados pelo desenvolvedor com base no negócio envolvido na funcionalidade), abreviando, se necessário.

2.2.1. Nos casos onde é necessária a eliminação de termos para a formação do código, elimina-se os termos menos significativos da direita para a esquerda.

## 3. NOMENCLATURA DE COLUNA

3.1. A estrutura de denominação para a coluna é composta pela classe abreviada da coluna (conforme item 4) e pelos termos que completam seu nome, separados por *underscore* .

3.1.1. Estrutura de nomeação da Coluna:

XX _ XXXXXXXXXXXXXXXXXXXXXXXXXX

Termos que completam seu nome

Abreviatura da classe da Coluna

- Exemplos:

NO_EMPREGADO

NU_UNIDADE

3.2. Os objetos são nomeados utilizando-se de termos que não causem interpretações dúbias.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| IC_FORMA_PAGAMENTO | à | (Correto) |
| IC_FORMA | à | (Incorreto) |

3.3. Não deve ser utilizada denominação em língua estrangeira, exceto em casos em que não exista correspondência na língua portuguesa.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| IC_SITUACAO_UNIDADE | à | (Correto) |
| IC_STATUS_UNIDADE | à | (Incorreto) |

3.4. Não é permitida a utilização de vícios de linguagem e jargão fora do contexto.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| VR_A_PAGAR | à | (Correto) |
| VR_PENDURADO | à | (Incorreto) |

3.5. Os termos que usualmente são identificados por siglas já consagradas são registrados no Glossário de Termos.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| NU_FGTS | à | (Correto) |
| NU_FUNDO_GRNTA_TEMPO_SRVCO | à | (Incorreto) |

3.6. Não são utilizados nomes ou siglas de unidades/sistemas da CAIXA para denominar objetos.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| NO_RESPONSAVEL_UNIDADE | à | (Correto) |
| NU_CONTRATO_SIEMP | à | (Incorreto) |
| NO_RESPONSAVEL_SUART | à | (Incorreto) |

3.7. A denominação é efetuada utilizando-se de verbos no particípio quando a qualificação do nome se referir a uma ação concluída.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| VR_FGTS_RECOLHIDO | à | (Correto) |
| VR_FGTS_RECOLHER | à | (Incorreto) |

3.8. O nome do objeto é formado pelas palavras mais significativas para expressar o negócio envolvido, usando separador “_”, conhecido como *underscore* , entre os termos.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| VR_CORRECAO_MONETARIA_APLICACAO |  |  |
| VR_CRCO_MONETARIA_APLICACAO | à | (Melhor prática) |
| VR_CORRECAO_MNTRA_APLICACAO | à | (Incorreto neste caso) |
| VR_CORRECAO_MONETARIA _APLCO | à | (Incorreto neste caso) |

3.8.1. Cabe salientar que esta avaliação é subjetiva e voltada ao negócio. No caso acima, os termos mais significativos no contexto aplicado, são as palavras MONETÁRIA e APLICAÇÃO.

3.9. Preposições, artigos e conjunções irrelevantes para o significado do objeto não são utilizados na denominação dos objetos.

- Exemplos:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| NU_AGENCIA_ORIGEM | à | (Correto) |
| VR_A_PAGAR | à | (Correto) |
| NU_AGENCIA_DE_ORIGEM | à | (Incorreto) |

3.10. Numerais devem ser representados por algarismos arábicos.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| PC_RENDIMENTO_GARANTIDO_2_ANO | à | (Correto) |
| PC_RENDIMENTO_GARANTIDO_II_ANO | à | (Incorreto) |

3.11. Os termos redundantes, cuja natureza já esteja embutida no identificador do objeto a que pertence ou em outro componente da estrutura, não são utilizados.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| VR_BRUTO_SALARIO | à | (Correto) |
| VR_VALOR_BRUTO_SALARIO | à | (Incorreto) |

3.12. Os sinônimos para um mesmo contexto são evitados.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| HH_FIM_JORNADA_TRABALHO | à | (Correto) |
| HH_TERMINO_JORNADA_TRABALHO | à | (Incorreto) |

## 4. CLASSE DE COLUNA

4.1. As classes das colunas utilizadas na denominação de objetos estão registradas no glossário de termos, conforme abaixo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| Discriminação | Identificador | Descrição |
| ANO | AA | Atribuída aos dados de natureza numérica que expressam o ano no calendário civil. Exemplo: AA_COMPETÊNCIA |
| ÁUDIO | AU | Atribuída aos dados que designam colunas referentes a som. Exemplo: AU_ALARME |
| CÓDIGO | CO | Identificador unívoco de um objeto, alfanumérico, formado por um ou mais colunas. Difere da sigla e do número porque o significado de cada caractere constituinte de seu(s) coluna(s), tomado isoladamente, não é de interesse da Empresa. Exemplo: CO_CHASSI_AUTOMÓVEL CO_DEPENDENTE (matrícula do empregado + número do dependente) |
| DATA | DT | Atribuída aos dados de natureza numérica que expressam o dia, mês e ano no calendário civil. Exemplo: DT_NASCIMENTO |
| DATA E HORA | DH | Atribuída aos dados de natureza datetime que expressam o dia, mês, ano, hora, minuto e segundo, sem milésimos de segundo. Exemplo: DH_ALTERACAO_REGISTRO |
| DESCRIÇÃO | DE | Atribuída aos dados cujo conteúdo, livre e em forma discursiva (não codificada), se utiliza para descrever algo associado ao objeto. Exemplo: DE_ADITIVO_CONTRATO |
| DIA | DD | Atribuída aos dados de natureza numérica que expressam o dia no calendário civil. Exemplo: DD_DEBITO |
| ENDEREÇO | ED | Atribuída aos dados de natureza textual utilizados para designar qualquer tipo de domicílio: residencial, comercial, endereço eletrônico ou endereço lógico (e-mail, conta/perfil rede social ou endereço de um arquivo). Exemplo: ED_COMERCIAL ED_EMAIL_CORPORATIVO |
| HORA | HH | Atribuída aos dados de natureza numérica que expressam uma hora em qualquer formato com ou sem precisão de minutos e/ou quaisquer outras frações. Exemplo: HH_ABERTURA |
| IMAGEM | IM | Atribuída aos dados com representação de imagem, no todo ou em parte, independente de seu formato. Exemplo: IM_ASSINATURA |
| INDICADOR | IC | Atribuída aos dados de natureza numérica ou alfanumérica cujo conteúdo obrigatório assume um de dois valores negociais possíveis. Exemplos: IC_SITUACAO_UNIDADE (A = Ativa ou I = Inativa), IC_FORMA_PAGAMENTO (1 = À vista ou 2 = À Prazo) |
| ÍNDICE | IN | Coluna numérico relativo que serve para comparação de fenômenos e situações diversas Exemplo: IN_BOLSA_VALORES |
| MÊS | MM | Atribuída aos dados de natureza numérica que expressam o mês em um calendário civil. Exemplo: MM_VENCIMENTO |
| NOME | NO | Atribuída aos dados de natureza alfabética ou alfanumérica cujo conteúdo expressa uma denominação por extenso e composta de palavras, abreviaturas ou ambas. Exemplo: NO_EMPREGADO |
| NÚMERO | NU | Atribuída aos dados de natureza numérica cuja identificação se faz por valores absolutos. Exemplo: NU_UNIDADE |
| PERCENTUAL | PC | Atribuída aos dados de natureza numérica que expressam uma parte de uma quantidade de 100 (cem) unidades. Exemplo: PC_INADIMPLENCIA |
| PESO | PS | Atribuída aos dados numéricos que expressam o peso do objeto cujo nome deve ser relacionado a uma unidade de medida a fim de que se possa expressar a real grandeza. Exemplo: PS_JOIA_GRAMA |
| PRAZO | PZ | Atribuída aos dados de natureza numérica que expressam um intervalo de tempo e cujo nome deve ser relacionado a uma unidade de medida a fim de que se possa expressar a real grandeza. Exemplo: PZ_VALIDADE |
| QUANTIDADE | QT | Atribuída aos dados de natureza numérica que determinam um conjunto de coisas e pessoas consideradas como equivalentes e suscetíveis de aumento e diminuição. Ao nomeá-los deve ser relacionado a uma unidade de medida para expressar a real grandeza, exceto quando se tratar de medida escalar do sistema decimal. Exemplo: QT_PROGRAMA |
| SÉRIE DE DADOS | SD | Classe de uso restrito utilizada somente sob autorização da ADI. Atribuída aos dados de natureza alfanumérica que podem ser multivalorados, ou não, e permitem a troca de dados (JSON, XML) entre diferentes aplicações, plataformas ou sistemas de forma padronizada. Deve obrigatoriamente ser acompanhada pelo tipo de série de dados utilizado, p.ex.: API, WS (WEBService). Exemplo: SD_RESPOSTA_API |
| SIGLA | SG | Atribuída aos dados de natureza alfabética ou alfanumérica que expressam a forma sintética de um conteúdo extenso através da redução de palavras ou expressões a letras ou sílabas iniciais. Exemplo: SG_UF |
| TIMESTAMP | TS | Atribuída aos dados de natureza numérica que representam um momento no tempo composto por data, hora, minuto, segundo e milésimo de segundo. Exemplo: TS_ATUALIZAÇAO_COTAÇAO |
| VALOR | VR | Atribuída aos dados de natureza numérica que expressam uma importância monetária. Exemplo: VR_SALÁRIO |
| VÍDEO | VI | Atribuída aos dados que designam colunas referentes a vídeo. Exemplo: VI_AGENCIA |

## 5. REGRAS DE ABREVIATURA

5.1. As abreviaturas utilizadas são as existentes no glossário de termos.

5.2. Quando um termo não for encontrado no glossário de termos, a solicitação de inclusão é encaminhada à equipe de ADI para análise.

5.3. A equipe de ADI analisa a solicitação e, em caso de deferimento, efetua a inclusão da palavra e sua respectiva abreviatura no glossário de termos obedecendo aos critérios abaixo.

5.4. A primeira e a última letra da palavra também são a primeira e a última da abreviatura.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| POSSIBILIDADE | à | P _ _ _ E |

5.5. As vogais intermediárias são eliminadas.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| P SS B L D DE | à | P _ _ _ E |

5.6. Elimina-se uma das consoantes dos dígrafos “RR e SS”.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| P S B L D DE | à | P _ _ _ E |

5.7. As consoantes restantes são utilizadas para preencher as posições da abreviatura na ordem em que aparecem na palavra original, respeitando-se o limite máximo de cinco caracteres da abreviatura.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| P S B L D DE | à | P S B L E |

5.8. A utilização da regra pode originar uma abreviatura de 3 a 5 caracteres.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 | Coluna 4 | Coluna 5 |
| --- | --- | --- | --- | --- |
| PESSOA | à | PSSA | à | PSA |
| REMESSA | à | RMSSA | à | RMSA |

5.9. Caso as palavras apresentem conflito de abreviação depois de aplicada a regra substitui-se a última consoante pela próxima consoante ainda não aproveitada, da direita para esquerda (preservando a mais significativa), repetindo enquanto persistir a colisão.

- Exemplo: para colisão das abreviaturas considere que os termos foram abreviados na ordem abaixo.

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| TRANSACAO | à | TRNSO |
| TRANSFERIDO | à | TRNDO |
| TRANSFORMACAO | à | TRNCO |
| TRANSITO | à | TRNTO |
| TRANSMISSAO | à | TRNMO |
| TRANSPORTADO | à | TRNRO |

5.10. Os termos que possuem tamanho igual ou inferior a cinco posições também são abreviados.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| NU_PRODUTO_CONTA_DEBITO | à | NU_PRDTO_CNTA_DBTO |
| NU_PRODUTO_CONTA_CREDITO | à | NU_PRDTO_CNTA_CRDO |

5.11. Caso exista uma abreviatura consagrada para um dos termos em conflito, usa–se a consagrada e aplica-se a regra de abreviatura para o outro termo.

5.12. Caso a sigla consagrada regional entre em conflito com a sigla nacional prevalecerá a de abrangência nacional sendo abreviada a regional.

5.13. Se a abreviatura resultante já existir no glossário de termos para outra palavra mesmo depois de aplicada a regra de colisão, cabe a equipe de ADI resolver o conflito.

5.14. Apenas uma abreviatura é atribuída quando o substantivo composto for grafado por uma única palavra.

5.15. Para o substantivo composto todas as palavras são abreviadas.

- Exemplo:

| Coluna 1 | Coluna 2 | Coluna 3 |
| --- | --- | --- |
| CONTRA – INDICADO | à | CNTRA_INDDO |
| MOTOTAXI | à | MTTXI |

## 6. RELACIONAMENTO

6.1. Os relacionamentos ( *Reference* ) são caracterizados através de um VERBO. Pode ser utilizado o VERBO na voz ativa e passiva para estabelecer esta conexão. Eventualmente são utilizadas locuções verbais para estabelecer estas conexões.

6.1.1. Deverão ser utilizados verbos ou locuções verbais que refletirão exatamente as regras de negócio definidas.

6.1.2. A voz ativa deve partir do sujeito da ação (verbo).

6.1.3. A voz passiva deve partir do objeto.

- Exemplo:

Voz Ativa > Cada PESSOA **utiliza** CARRO

Voz Passiva > Cada CARRO **é utilizado** por PESSOA

6.2. Como alternativa adicional para a denominação, pode-se ainda utilizar um substantivo para indicar o papel que cada tabela representa no relacionamento.

- Exemplo:

6.3. Nos casos de existência de auto relacionamento torna-se obrigatório o preenchimento de “ROLENAME”, uma vez que os objetos envolvidos pertencem ao mesmo conjunto e apenas o nome da tabela pode não ser suficiente para esclarecer os papéis envolvidos.

- Exemplo:

## 7. ÁREA DE INTERESSE

7.1. O nome da área de interesse é especificado no plural.

- Exemplo:

| Coluna 1 |
| --- |
| <Nome da Área de Interesse> |
| RECURSOS_HUMANOS |


----


*FIM "Nomenclatura-de-Objetos.md"*


*INICIO "Ciclo-de.md"*


----


# Ciclo de Vida dos Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Ciclo de Vida dos Dados

**O que é a Gestão do Ciclo de Vida dos Dados?**

Para proteger seus dados, você precisa conhecer seus dados – onde os dados são criados, armazenados, usados, adulterados e excluídos. O gerenciamento do ciclo de vida dos dados é uma abordagem baseada em políticas que gerencia o caminho dos dados ao longo de seu ciclo de vida: da criação à exclusão.

As políticas de gerenciamento do ciclo de vida dos dados ajudam as empresas a gerenciar o enorme tamanho, as variações e a velocidade dos dados recebidos. As empresas desfrutam de menores custos de armazenamento, maior desempenho comercial, maiores margens e melhor proteção de dados. No entanto, a recompensa ocorre apenas quando as políticas de ciclo de vida dos dados são bem-sucedidas.

**Ciclo de Vida dos Dados e a LGPD**

A Lei Geral de Proteção de Dados (LGPD) determina que uma pessoa natural ou jurídica, de direito público ou privado, deve deixar claro para qual finalidade utilizará dados pessoais, solicitar o consentimento de seus titulares e realizar o devido tratamento dos dados.

Entender e classificar corretamente os dados se torna um processo importante para estar em conformidade com a lei, através da implementação de políticas, processos e programas apropriados para gerenciar a forma de coletar, processar, analisar, armazenar, compartilhar, reutilizar e eliminar esses dados.

Diante desse contexto, a Gestão do Ciclo de Vida dos Dados deve ser incorporado ao negócio, considerando a finalidade do fornecimento de seus bens e serviços.

A LGPD considera como um **tratamento** todas as operações de diferentes propósitos que são realizadas com os dados pessoais dos usuários. É definido como Ciclo de Vida dos Dados o conjunto de fases em que são realizadas operações específicas com os dados do usuário, desde sua aquisição, até exclusão.

Podem ser consideradas fases do ciclo de vida:

Compreender as diferentes fases é importante para que a gestão do ciclo dentro de um negócio seja realizada sempre em conformidade com a lei através de políticas e processos adequados. Diante deste contexto, vamos conhecer a seguir os detalhes de cada uma das fases do Ciclo de Vida dos Dados:

**Coleta**

Refere-se a coleta, produção e recepção de todos os dados pessoais (Independentemente do meio utilizado, online ou documentos de papel). Os dados pessoais coletados devem obedecer ao princípio da necessidade e da finalidade.

**Processamento**

Corresponde às operações que envolvem classificação, utilização, reprodução, processamento, avaliação ou controle da informação e extração dos dados pessoais. O processamento de dados só poderá ser realizado se o tratamento estiver enquadrado no Art. 7º da LGPD.

**Análise**

A análise de dados deve levar em consideração a finalidade da coleta. Devem ser obedecidos os princípios de tratamento, com propósito legítimo, específico e explícito.

**Compartilhamento**

O compartilhamento de dados deve ser expressamente consentido pelos seus titulares. Envolve qualquer tipo de operação de transmissão, distribuição, comunicação, transferência, difusão e uso compartilhado de dados pessoais.

**Armazenamento**

Os dados pessoais devem ser armazenados e mantidos por prazos definidos, ou seja, até que a finalidade seja alcançada ou deixem de ser necessários ou pertinentes ao alcance da finalidade.

**Reutilização**

Refere-se a reutilização dos dados para alguma finalidade específica. Também deve obter um novo consentimento, visto que há mudança de finalidade.

**Eliminação**

É a operação final do ciclo, que tem como objetivo excluir um dado ou um conjunto de dados pessoais armazenados em um banco de dados.

**4 Erros da Gestão do Ciclo de Vida dos Dados**

**Erro #1: Detalhes Antes do Contexto**

As empresas tendem a comunicar o quê da política, não o porquê. A implementação de uma política de gerenciamento de ciclo de vida de dados significa que todos precisam estar envolvidos, pois cada funcionário tem um papel a desempenhar. A única maneira de isso acontecer é quando você oferece contexto sobre porque a política é importante para os negócios e como ela afetará os funcionários.

**Erro #2: Tratar Todos os Dados Como Iguais**

Os dados do cliente serão gerenciados de maneira diferente dos dados contábeis por um motivo simples: eles atendem a propósitos comerciais diferentes. A verdade é que cada conjunto de dados tem seu significado e tratá-los como uma grande entidade pode ser um erro caro.

Estabeleça os tipos de dados no estágio de coleta, mas lembre-se de que os conjuntos de dados podem pular de um tipo para outro ao longo do ciclo de vida à medida que sua utilidade é alterada. Você pode personalizar políticas de retenção, capacidade de armazenamento e métodos de exclusão para cada tipo de dados.

Por exemplo, um método de classificação popular é agrupar dados com base em seu valor para o negócio. Alguns dos tipos de dados são públicos, internos, confidenciais ou restritos, conforme classificação da informação (OR016). Cada tipo de dados terá suas políticas exclusivas para armazenamento, retenção e exclusão.

**Erro #3: Ignorar o “Humano”**

Um quarto da perda de dados é devido a erro humano. Muitas vezes, as empresas tendem a desconsiderar essa tendência, o que acaba sendo uma lição cara e dolorosa.

**Erro #4: Considerar a Exclusão Como o Fim do Jogo**

Muitas empresas operam com um equívoco de que, no final do ciclo de vida, os dados são retidos ou destruídos. Sendo que, na realidade, os dados são retidos, destruídos ou restaurados.

Os dados podem ser excluídos por erro humano, desastres naturais ou ataques cibernéticos. Os dados já descartados podem conter informações que podem ser significativas posteriormente.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Ciclo-de.md"*


*INICIO "Compactac.md"*


----


# Compactação

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Compactação

## Quais são os benefícios?

- **Tamanho:** O motivo mais óbvio para a compactação do banco de dados é a redução da área de armazenamento geral do banco de dados da organização. Dependendo da cardinalidade dos dados (extensão da repetição nos valores dos dados), a compactação pode reduzir consideravelmente o consumo de armazenamento, normalmente variando entre 20% e 60% do espaço original. Tabelas que possuem dados que ocorrem com frequência apresentam uma compactação mais eficiente;

- **Velocidade:** As operações de leitura de banco de dados podem se tornar muito mais rápidas, pois quantidades menores de dados físicos precisam ser movidas do disco para a memória. No entanto, o desempenho das operações de gravação pode ser afetado, dependendo do algoritmo de compactação;

- **Utilização de recursos:** Mais dados caberão em uma página no disco, na memória ou no buffer pool, aumentando a probabilidade de que os dados residam no cache. A compactação também resulta em grande redução nos tempos de backup/restauração.

## Quais as desvantagens?

- **Overhead de controle:** A maioria dos algoritmos de compactação cria um dicionário de codificação interno para gerenciar as palavras-chave de compactação. Quando o tamanho do objeto envolvido é pequeno , o resultado da compactação pode ser maior que os arquivos não compactados devido à criação do dicionário e/ou estruturas internas;

- **Overhead de processamento:** Para qualquer banco de dados, compactação e descompactação é uma tarefa adicional às suas operações DML/DDL regulares. Ele consome CPU/memória adicional. Portanto, a compactação deve ser utilizada quando o ganho na CPU/memória devido às leituras de página otimizadas for muito maior do que a sobrecarga de compactação;

- **Latência:** Embora a compactação possa ocorrer em paralelo como uma tarefa em segundo plano, a descompactação pode introduzir latência do lado do cliente à medida que ocorre em primeiro plano após uma consulta.

- **Efetividade:** A compactação não é recomendada quando a cardinalidade e/ou frequência dos dados é pobre , com *caracteres* não repetitivos. Para tipos de dados como dados BLOB (imagens, áudio) ou dados pré-compactados, dependendo do algoritmo de compactação, o tamanho do armazenamento pode ser reduzido ou aumentado.

Em resumo, é importante estimar a volumetria e características negociais, assim como contrapesar com o custo de processamento adicional.

## Qual o efeito da compressão nos datatypes mais comuns?

A compactação é uma função DDL que pode ser aplicada seletivamente a tabelas, índices ou partições com os comandos CREATE, ALTER e BACKUP.

A compactação de dados se aplica a esses objetos de banco de dados – *heaps* (tabelas sem índices clusterizados), índices clusterizados, índices não clusterizados, partições, views indexadas, etc.

A compactação em nível de linha (ROW Compress) converte tipos de dados de comprimento fixo em tipos de comprimento variável. Campos criados como tipos de comprimento fixo, como Char(100), podem não preencher os 100 caracteres inteiros de cada registro. Portanto, isso funciona bem para texto de tamanho fixo e campos numéricos (Char, Integer, Float). Por exemplo, armazenar 23 em uma coluna integer exigirá apenas 1 byte quando compactado em vez de todos os 4 bytes alocados. Nenhum espaço é consumido para valores NULL ou 0.

A compactação de página (Page Compress) é mais avançada. Ele invoca internamente a compactação de linha. A semelhança nos dados da página é extraída e codificada, uma coluna por vez ou todas as colunas juntas. Os dados reais são então substituídos pelos códigos. Objetos grandes (LOB) não são compactados diretamente, em vez disso eles são armazenados em uma página separada para recuperação direta.


----


*FIM "Compactac.md"*


*INICIO "Expurgo.md"*


----


# Expurgo

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Expurgo

Por expurgo deve-se entender a remoção dos dados do banco de dados online, seja para remoção definitiva, seja para movimentação para uma mídia mais barata (fitas/SSD de backup), com isso reduzindo o espaço utilizado no ambiente produtivo, aumentando o desempenho das aplicações e permitindo um uso mais eficaz da infraestrutura corporativa compartilhada.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Expurgo.md"*


*INICIO "Particionamen.md"*


----


# Particionamento

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Particionamento

## O que é particionamento?

O particionamento de banco de dados é a espinha dorsal dos modernos sistemas de gerenciamento de banco de dados distribuídos. É um processo de dividir um grande conjunto de dados em várias porções menores colocadas em estruturas diferentes. Em outras palavras, é uma maneira de particionar tabelas e índices em partes menores, para que os dados possam ser facilmente acessados e gerenciados.

- Distribui os dados em várias partições para melhorar a disponibilidade do banco de dados, a escalabilidade e o desempenho do processamento de consultas. Os dados combinados de todas as partições são iguais aos dados do banco de dados original.

- A arquitetura de partição é transparente para o aplicativo cliente, que continua interagindo com as partições de forma semelhante a um único objeto.

## Quais são os problemas solucionados?

Com o crescimento dos serviços e da base de usuários, torna-se complicado para um único servidor ou banco de dados funcionar com eficiência. Podemos experimentar um desempenho inferior com a arquitetura de um único servidor de banco de dados. Veja algumas situações que podem surgir:

- As operações do banco de dados tornam-se mais lentas;

- O servidor de banco de dados começa a ficar sem espaço em disco;

- A largura de banda da rede começa a atingir o nível de saturação.

O particionamento em um banco de dados nos ajuda a corrigir todos os desafios acima, distribuindo dados em várias partições. Cada partição pode residir na mesma máquina (co-residente) ou em máquinas diferentes (remoto). A ideia do particionamento co-residente é reduzir o tamanho dos índices individuais e a quantidade de E/S necessária para atualizar os registros. Da mesma forma, o conceito de particionamento remoto é aumentar a largura de banda de acesso aos dados com mais RAM, evitando acesso ao disco ou tendo mais interfaces de rede e canais de E/S de disco disponíveis.

## Quando particionar uma tabela?

O particionamento pode parecer útil, mas nem todos os casos exigem que particionemos os dados. Aqui estão alguns cenários em que a partição pode ser benéfica:

- Quando as tabelas são muito grandes para caber na memória;

- Tabelas transacionais. Um bom exemplo é uma tabela contendo dados históricos, onde apenas os dados do mês atual são atualizados e os dados dos outros 11 meses são somente leitura;

- Quando os dados da tabela precisam ser distribuídos entre diferentes dispositivos de armazenamento. As tarefas de consulta tornam-se mais fáceis se os dados forem distribuídos e armazenados em diferentes servidores ou sistemas.

- O tipo de particionamento adequado ao objeto deve ser avaliado considerando o fluxo de aplicação e a característica de negócio.

## Por que particionar?

1. **Melhorar a Disponibilidade:** O particionamento de banco de dados fornece independência lógica ao banco de dados particionado, garantindo a alta disponibilidade da aplicação. A partição individual pode ser gerenciada de forma independente. Por exemplo, se uma partição não estiver disponível, todas as outras partições permanecerão disponíveis para executar consultas de banco de dados com êxito. Assim, aumenta a disponibilidade do serviço, evitando um único ponto de falha para todo o conjunto de dados;

2. **Aumentar o desempenho das consultas** : o particionamento de dados melhora o desempenho do sistema. Em vez de consultar todo o banco de dados, agora o universo de consulta se limita a um componente menor, o que aumenta o desempenho do serviço. É importante entender que o particionamento deve atender à necessidade do negócio;

3. **Melhorar a segurança** : o particionamento de dados também ajuda a melhorar a segurança do sistema armazenando dados confidenciais e não confidenciais em diferentes partições. Isso pode fornecer melhor capacidade de gerenciamento e segurança desejável para dados confidenciais;

4. **Aumentar a escalabilidade** : todo hardware apresenta certas limitações de capacidade. Com o aumento do tráfego, o desempenho dos serviços diminui. O particionamento de dados aumenta a escalabilidade distribuindo a volumetria em várias partições;

5. **Facilitar o Backup e Recuperação** : Manter os dados em diferentes partições ajuda o administrador do banco de dados a realizar operações de backup e recuperação em cada partição, independentemente das outras partições. Isso pode permitir que a partição ativa do banco de dados seja disponibilizada mais cedo para que o acesso ao sistema possa continuar enquanto os dados inativos ainda estão sendo restaurados;

6. **Melhorar a capacidade de gerenciamento do banco de dados** : a divisão de tabelas e índices em unidades menores é mais gerenciável. É um tipo de abordagem “dividir e conquistar” para gerenciamento do banco de dados, no qual o trabalho de manutenção pode se concentrar em uma partição de tabela específica.

## Conclusão

O Particionamento de Dados é a espinha dorsal dos modernos sistemas de gerenciamento de dados distribuídos. O Particionamento de Dados se mostra muito eficaz para melhorar a disponibilidade, escalabilidade e desempenho do sistema.


----


*FIM "Particionamen.md"*


*INICIO "Guia-de-Modelagem-Spring-Batch.md"*


----


#INTERNO.TODOS

# Guia de Modelagem - Spring Batch

Thiago Bezerra Torres

COOR PROJ/PROCES MATRIZ

## Contextualização

A equipe de desenvolvimento é responsável por identificar junto à arquitetura a última versão homologada para uso na CAIXA e deve informar ao administrador de dados a versão a ser utilizada.

As adequações no modelo de dados devem estar de acordo com a página “Meta-data Schema”, localizada a partir da página [docs](https://docs.spring.io/spring-batch/docs/) /“número da versão”/reference/html.

Exemplo para a versão 5.0.5: [https://docs.spring.io/spring-batch/docs/5.0.5/reference/html/](https://docs.spring.io/spring-batch/docs/5.0.5/reference/html/)

## Orientações

Comentários são obrigatórios.

1. Comentários de tabelas, colunas, *sequences* e *foreign keys* ( *constraints* ) devem estar em português;

2. Devem ser baseados na [documentação oficial do *framework* Spring Batch](https://docs.spring.io/spring-batch/docs/current/reference/html/schema-appendix.html) ;

3. Devem indicar sempre que se tratam de tabelas/ *sequences* / *foreign_keys* de controle e metadados para *framework* Spring Batch.

Devem ser avaliados índices apropriados para as tabelas.

Deve ser definida política de backup e expurgo apropriada para informação das tabelas e as volumetrias associadas.

Os tipos para as colunas devem ser definidos de modo a permitir interoperabilidade entre plataformas tecnológicas de banco de dados conforme recomendações do segmento de Administradores de Banco de Dados (ABDs): IBM DB2, Microsoft SQL Server, Oracle Database, etc.

1. Devem respeitar os tipos "menores" (ocupem menos espaço) e mais performáticos.

#INTERNO.TODOS


----


*FIM "Guia-de-Modelagem-Spring-Batch.md"*


*INICIO "Regras-de.md"*


----


# Regras de modelagem para Frameworks Autorizados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Regras de modelagem para Frameworks Autorizados

## ÍNDEX

#### Lista de Guias de Regras de modelagem para Frameworks Autorizados

- [Spring Batch](https://caixa.sharepoint.com/sites/PPDS/SitePages/Spring-Batch.aspx)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Regras-de.md"*


*INICIO "S.md"*


----


# Spring Batch

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Regras de modelagem para Frameworks Autorizados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Regras-de-modelagem-para-Frameworks-Autorizados.aspx) >> Spring Batch

[Spring Batch](https://caixa.sharepoint.com/sites/5141/SitePages/Guia-de-Modelagem-Spring-Batch.aspx)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "S.md"*


*INICIO "Validacoes-executadas-no-Pre-Validador.md"*


----


# Validações executadas no Pré-Validador

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Validações executadas no Pré-Validador

Modelo:

1. Descrição do Modelo escassa ou inexistente;

2. Nome do arquivo divergente do nome/código do modelo;

3. “ *Rebuild Trigger* ” ou “ *Rebuild Trigger Dependencies* ” habilitada nas opções de modelo, sendo recomendada sua desativação;

4. Notação do modelo ( *Tools=>Model Options=>Notation* ) deve estar configurada para “ *Conceptual* “, de forma que sua leitura seja aderente à TE074;

5. Os nomes e códigos dos diagramas devem ser idênticos;

6. Pelo menos um diagrama deve possuir o mesmo nome e código que o modelo de dados, sendo este considerado o modelo físico completo;

7. Não é permitida a utilização de objetos estendidos no modelo;

8. Não é permitida a utilização de:

| Coluna 1 | Coluna 2 | Coluna 3 | Coluna 4 | Coluna 5 |
| --- | --- | --- | --- | --- |
| Business Rules | Roles | DataFormats | Domínios | Dimensões |
| Procedures | Database Packages | Abstract DataTypes | Trigger Items | Trigger Templates |
| Arquivos Anexos | Artefatos | Grupos | Join Indexes | Fatos |
| DBMSTriggers | DataSources | TestDataProfiles | ListReports | Pasta de Artefatos |

1. Restrição quanto a utilização de Sinônimos do tipo *Synonim* no modelo;

2. Caso sejam identificadas solicitações de concessão de privilégios adicionais ( *Privileges* ), direcionar a equipe a buscar o capítulo de Operações e remover do modelo;

3. Validação do Owner do modelo (DBO para SQL Server ou sigla do sistema);

4. Preenchimento da Classificação da informação.

Database:

1. Validação da nomenclatura do objeto conforme TE074.

Entidade (Table):

1. Não é permitida a utilização de *Triggers* ;

2. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

3. Entidade contém aprovação prévia com ressalva;

4. Preenchimento da Classificação da informação;

5. Tabela de outro *owner* deve estar na condição “No Generate”;

6. Owner da entidade divergente do owner do sistema ou owner do sistema fora do padrão;

7. Entidade de modelos dimensionais devem estar na condição “Generate”;

8. Entidade do owner do sistema não deve estar com “No Generate”;

9. Entidade sem owner;

10. Validação da nomenclatura do objeto conforme TE074;

11. Dimensional Type Dimension obrigatório para tipo de Tabela “TD” ou “TI”;

12. Dimensional Type Fact obrigatório para tipo de Tabela “TF” ou “TA”;

13. Entidade com quantidade estimada de ocorrências não informada;

14. Entidade com taxa de crescimento não informada;

15. Entidade sem identificador (chave primária);

16. Entidade não identificada de forma unívoca;

17. Validação do nome da constraint da entidade, caso ela esteja preenchida pelo usuário;

18. Alerta quanto ao preenchimento de Server e Client Check Constraint, considerando que a TE111 proibe a inclusão de regras de negócio no SGBD;

19. Verificação da existência de Primary Key e/ou Unique Index;

20. Inexistência de índices declarados.

Chave Primária (Primary Key):

1. Avaliação quanto a alteração de Ordem de colunas da PK, visto ser uma atividade que requer atenção;

2. Erro na nomenclatura da constraint associada à PK/AK;

3. Avaliação quanto a inexistência de colunas vinculadas à PK/AK;

4. Validação da nomenclatura do objeto conforme TE074;

5. Avaliação quanto a existência de índice secundário com as mesmas colunas da PK, sugerindo sua remoção.

Atributo (Column):

1. Alteração de Ordem de coluna somente é permitido quando da exclusão de colunas intermediárias ou com autorização da Administração de Dados do Capítulo de Operações;

2. Avaliação quanto a existência de aprovação prévia com ressalva (preenchida pelo AD);

3. Validação da nomenclatura do objeto conforme TE074;

4. Em tabelas pré-existentes que contenham dados, quando da inclusão de campos mandatórios (NOT NULL), é obrigatório informar o valor inicial a ser alimentado nos registros existentes;

5. Preenchimento da Classificação da informação;

6. Tamanho máximo efetivamente utilizado por atributos de datatypes SMALLINT, INTEGER, BIGINT, CLOB e TEXT (para análise de metadados);

7. Atributo com tipo de dado incompatível com sua classe;

8. Oracle: Como o *datatype* CLOB possui performance muito baixa, é sugerida a utilização de VARCHAR2 com tamanho <= 4000; No caso de uso do tipo BLOB, conforme diretriz arquitetural vigente, é sugerido dar preferência para armazenamento de arquivos no *Case Manager* ou *FileSystem* , visto ônus ocasionado pelo tipo BLOB no banco de dados;

9. Validação dos *datatypes* permitidos por SGBD;

10. Validação da definição do valor padrão em campos com “ *With Default* “;

11. Classe IC: Validação do nome da *constraint* da coluna; Obrigatoriedade ( *Not Null* ); Devem conter uma lista de valores válidas (boleano); Listas de valores com mais de 2 domínios são tratadas em caráter de exceção e devem ser justificadas; Listas de valores com mais de 10 domínios deve ser convertido em uma tabela de tipos; Os itens da lista de valores devem conter *labels* para cada tipo listado; Default do atributo não consta na lista de valores válidos.

12. `Segundo a TE111, não é permitida a inclusão de regra de negócio na base. Avaliar a existência e forma de utilização da Server e *Client Check Expression* ;

13. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

14. Tipo e/ou tamanho distintos para o mesmo atributo ( *datatype* ) no mesmo modelo.

Índice (Index):

1. Criação de Índices Secundários podem ser demandados via GSC diretamente ao Capítulo de Operações, sendo solicitado inserir na demanda as consultas ( *query* SQL);

2. DB2: Obrigatoriedade da existência de *Primary Key* e/ou *Unique Index* para toda tabela;

3. Validação da nomenclatura do objeto conforme TE074;

4. Inexistência de índices.

Relacionamento (Reference):

1. Validação da nomenclatura do objeto conforme TE074;

2. Divergência na definição da nomeação do reference: *FK Constraint Name, Reference Name* e *Reference Code* devem ser idênticos;

3. Objeto com “ *No Generate* ” só pode ser incluído com o aval do AD da comunidade;

4. SGBDs diferentes do SQL Server e SAP IQ: Não foi adicionado ao nome da coluna o sufixo identificador da tabela de origem;

5. SQL *Server* e SAP IQ: Não adicionar o sufixo identificador da tabela de origem ao nome da coluna;

6. Ausência do verbo que define a ação no relacionamento existente entre as entidades ( *Parent* e/ou *Child role* );

7. Nomeação do relacionamento nos dois sentidos ( *Parent* e *Child Role* não podem ser iguais);

8. Caso a opção *Change Parent Allowed* estiver habilitada, é sugerido confirmar se no relacionamento da tabela filha pode ter sua tabela pai alterada;

9. Preenchimento do campo “ *Parent key* ” na aba *Joins* com a PK da tabela pai é obrigatório;

10. Oracle: o tipo de deleção *RESTRICT* não existe. O padrão é *NO ACTION* (< *none* >);

11. Não criar *References* com: *DISABLE* ; Exceções; *RELY* ; *VALIDATE* desabilitada; Alteração na condição *DEFERRED OPTION* ; DB2: *ENFORCED* deve estar habilitado.

12. 2 relacionamentos entre duas tabelas cujos sentidos são inversos não são permitidos;

13. Também são validados os relacionamentos dentro de *Views* .

*Sequence* :

1. Validação da nomenclatura do objeto conforme TE074;

2. Ausência de definição de: *Owner* ; Ciclo; Valor Mínimo e Máximo; *Cache* ; Incremento; Valor Inicial.

3. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem).

View:

1. Ausência de *Owner* ;

2. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

3. Objeto com “ *No Generate* ” só pode ser incluído com o aval do AD da comunidade;

4. Validação da nomenclatura do objeto conforme TE074;

5. Validação de nome e código de coluna da View personalizado, quando configurado;

6. Validação da descrição de cada coluna da View.

*Tablespace* :

1. Validação da nomenclatura do objeto conforme TE074.

2. Divergência na definição da nomeação: lógico X físico.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Validacoes-executadas-no-Pre-Validador.md"*


*INICIO "Validacoes-executadas-no-Pre-Validador.md"*


----


# Validações executadas no Pré-Validador

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Validações executadas no Pré-Validador

Modelo:

1. Descrição do Modelo escassa ou inexistente;

2. Nome do arquivo divergente do nome/código do modelo;

3. “ *Rebuild Trigger* ” ou “ *Rebuild Trigger Dependencies* ” habilitada nas opções de modelo, sendo recomendada sua desativação;

4. Notação do modelo ( *Tools=>Model Options=>Notation* ) deve estar configurada para “ *Conceptual* “, de forma que sua leitura seja aderente à TE074;

5. Os nomes e códigos dos diagramas devem ser idênticos;

6. Pelo menos um diagrama deve possuir o mesmo nome e código que o modelo de dados, sendo este considerado o modelo físico completo;

7. Não é permitida a utilização de objetos estendidos no modelo;

8. Não é permitida a utilização de:

| Coluna 1 | Coluna 2 | Coluna 3 | Coluna 4 | Coluna 5 |
| --- | --- | --- | --- | --- |
| Business Rules | Roles | DataFormats | Domínios | Dimensões |
| Procedures | Database Packages | Abstract DataTypes | Trigger Items | Trigger Templates |
| Arquivos Anexos | Artefatos | Grupos | Join Indexes | Fatos |
| DBMSTriggers | DataSources | TestDataProfiles | ListReports | Pasta de Artefatos |

1. Restrição quanto a utilização de Sinônimos do tipo *Synonim* no modelo;

2. Caso sejam identificadas solicitações de concessão de privilégios adicionais ( *Privileges* ), direcionar a equipe a buscar o capítulo de Operações e remover do modelo;

3. Validação do Owner do modelo (DBO para SQL Server ou sigla do sistema);

4. Preenchimento da Classificação da informação.

Database:

1. Validação da nomenclatura do objeto conforme TE074.

Entidade (Table):

1. Não é permitida a utilização de *Triggers* ;

2. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

3. Entidade contém aprovação prévia com ressalva;

4. Preenchimento da Classificação da informação;

5. Tabela de outro *owner* deve estar na condição “No Generate”;

6. Owner da entidade divergente do owner do sistema ou owner do sistema fora do padrão;

7. Entidade de modelos dimensionais devem estar na condição “Generate”;

8. Entidade do owner do sistema não deve estar com “No Generate”;

9. Entidade sem owner;

10. Validação da nomenclatura do objeto conforme TE074;

11. Dimensional Type Dimension obrigatório para tipo de Tabela “TD” ou “TI”;

12. Dimensional Type Fact obrigatório para tipo de Tabela “TF” ou “TA”;

13. Entidade com quantidade estimada de ocorrências não informada;

14. Entidade com taxa de crescimento não informada;

15. Entidade sem identificador (chave primária);

16. Entidade não identificada de forma unívoca;

17. Validação do nome da constraint da entidade, caso ela esteja preenchida pelo usuário;

18. Alerta quanto ao preenchimento de Server e Client Check Constraint, considerando que a TE111 proibe a inclusão de regras de negócio no SGBD;

19. Verificação da existência de Primary Key e/ou Unique Index;

20. Inexistência de índices declarados.

Chave Primária (Primary Key):

1. Avaliação quanto a alteração de Ordem de colunas da PK, visto ser uma atividade que requer atenção;

2. Erro na nomenclatura da constraint associada à PK/AK;

3. Avaliação quanto a inexistência de colunas vinculadas à PK/AK;

4. Validação da nomenclatura do objeto conforme TE074;

5. Avaliação quanto a existência de índice secundário com as mesmas colunas da PK, sugerindo sua remoção.

Atributo (Column):

1. Alteração de Ordem de coluna somente é permitido quando da exclusão de colunas intermediárias ou com autorização da Administração de Dados do Capítulo de Operações;

2. Avaliação quanto a existência de aprovação prévia com ressalva (preenchida pelo AD);

3. Validação da nomenclatura do objeto conforme TE074;

4. Em tabelas pré-existentes que contenham dados, quando da inclusão de campos mandatórios (NOT NULL), é obrigatório informar o valor inicial a ser alimentado nos registros existentes;

5. Preenchimento da Classificação da informação;

6. Tamanho máximo efetivamente utilizado por atributos de datatypes SMALLINT, INTEGER, BIGINT, CLOB e TEXT (para análise de metadados);

7. Atributo com tipo de dado incompatível com sua classe;

8. Oracle: Como o *datatype* CLOB possui performance muito baixa, é sugerida a utilização de VARCHAR2 com tamanho <= 4000; No caso de uso do tipo BLOB, conforme diretriz arquitetural vigente, é sugerido dar preferência para armazenamento de arquivos no *Case Manager* ou *FileSystem* , visto ônus ocasionado pelo tipo BLOB no banco de dados;

9. Validação dos *datatypes* permitidos por SGBD;

10. Validação da definição do valor padrão em campos com “ *With Default* “;

11. Classe IC: Validação do nome da *constraint* da coluna; Obrigatoriedade ( *Not Null* ); Devem conter uma lista de valores válidas (boleano); Listas de valores com mais de 2 domínios são tratadas em caráter de exceção e devem ser justificadas; Listas de valores com mais de 10 domínios deve ser convertido em uma tabela de tipos; Os itens da lista de valores devem conter *labels* para cada tipo listado; Default do atributo não consta na lista de valores válidos.

12. `Segundo a TE111, não é permitida a inclusão de regra de negócio na base. Avaliar a existência e forma de utilização da Server e *Client Check Expression* ;

13. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

14. Tipo e/ou tamanho distintos para o mesmo atributo ( *datatype* ) no mesmo modelo.

Índice (Index):

1. Criação de Índices Secundários podem ser demandados via GSC diretamente ao Capítulo de Operações, sendo solicitado inserir na demanda as consultas ( *query* SQL);

2. DB2: Obrigatoriedade da existência de *Primary Key* e/ou *Unique Index* para toda tabela;

3. Validação da nomenclatura do objeto conforme TE074;

4. Inexistência de índices.

Relacionamento (Reference):

1. Validação da nomenclatura do objeto conforme TE074;

2. Divergência na definição da nomeação do reference: *FK Constraint Name, Reference Name* e *Reference Code* devem ser idênticos;

3. Objeto com “ *No Generate* ” só pode ser incluído com o aval do AD da comunidade;

4. SGBDs diferentes do SQL Server e SAP IQ: Não foi adicionado ao nome da coluna o sufixo identificador da tabela de origem;

5. SQL *Server* e SAP IQ: Não adicionar o sufixo identificador da tabela de origem ao nome da coluna;

6. Ausência do verbo que define a ação no relacionamento existente entre as entidades ( *Parent* e/ou *Child role* );

7. Nomeação do relacionamento nos dois sentidos ( *Parent* e *Child Role* não podem ser iguais);

8. Caso a opção *Change Parent Allowed* estiver habilitada, é sugerido confirmar se no relacionamento da tabela filha pode ter sua tabela pai alterada;

9. Preenchimento do campo “ *Parent key* ” na aba *Joins* com a PK da tabela pai é obrigatório;

10. Oracle: o tipo de deleção *RESTRICT* não existe. O padrão é *NO ACTION* (< *none* >);

11. Não criar *References* com: *DISABLE* ; Exceções; *RELY* ; *VALIDATE* desabilitada; Alteração na condição *DEFERRED OPTION* ; DB2: *ENFORCED* deve estar habilitado.

12. 2 relacionamentos entre duas tabelas cujos sentidos são inversos não são permitidos;

13. Também são validados os relacionamentos dentro de *Views* .

*Sequence* :

1. Validação da nomenclatura do objeto conforme TE074;

2. Ausência de definição de: *Owner* ; Ciclo; Valor Mínimo e Máximo; *Cache* ; Incremento; Valor Inicial.

3. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem).

View:

1. Ausência de *Owner* ;

2. Validação da descrição (inexistência, pouca informação e/ou inclusão de jargões/vícios de linguagem);

3. Objeto com “ *No Generate* ” só pode ser incluído com o aval do AD da comunidade;

4. Validação da nomenclatura do objeto conforme TE074;

5. Validação de nome e código de coluna da View personalizado, quando configurado;

6. Validação da descrição de cada coluna da View.

*Tablespace* :

1. Validação da nomenclatura do objeto conforme TE074.

2. Divergência na definição da nomeação: lógico X físico.


----


*FIM "Validacoes-executadas-no-Pre-Validador.md"*
