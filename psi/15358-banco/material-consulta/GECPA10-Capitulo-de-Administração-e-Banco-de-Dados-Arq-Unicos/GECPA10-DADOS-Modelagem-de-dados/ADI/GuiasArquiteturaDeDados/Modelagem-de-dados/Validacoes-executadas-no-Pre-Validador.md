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
