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
