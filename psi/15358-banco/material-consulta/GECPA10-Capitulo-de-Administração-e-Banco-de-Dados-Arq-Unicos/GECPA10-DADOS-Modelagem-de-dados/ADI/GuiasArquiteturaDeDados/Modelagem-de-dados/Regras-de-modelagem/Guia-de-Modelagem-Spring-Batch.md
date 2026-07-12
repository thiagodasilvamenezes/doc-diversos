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
