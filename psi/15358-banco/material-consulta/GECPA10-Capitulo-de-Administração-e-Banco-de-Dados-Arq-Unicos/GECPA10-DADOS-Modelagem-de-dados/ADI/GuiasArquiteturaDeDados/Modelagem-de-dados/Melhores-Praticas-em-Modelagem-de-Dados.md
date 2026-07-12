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
