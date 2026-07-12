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
