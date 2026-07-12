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
