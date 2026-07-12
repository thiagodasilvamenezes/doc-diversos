# Refatoração

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Práticas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Praticas.aspx) >> Refatoração

**Conceito:** Desenvolvimento de software com código limpo, legível, de fácil entendimento e manutenção. Benefícios da refatoração: Melhoria no projeto de software através de um código estruturado; Código auto-explicativo, facilitando seu entendimento; Código limpo, possibilitando maior visibilidade de erros; Programação ocorre mais rápido como conseqüência.

**Descrição Principal**

“Refatoração é o processo de alteração de um sistema de software de modo que o comportamento externo do código não mude, mas que sua estrutura interna seja melhorada. É uma maneira disciplinada de aperfeiçoar o código que minimiza a chance de introdução de falhas. Em essência, quando você usa refatoração, você está melhorando o projeto do código após este ter sido escrito.” (FOWLER,1999).

A refatoração limpa o código, minimizando as chances de introduzir erros e melhora o design do código depois que ele foi escrito.

**Contexto CAIXA:** A urgência cada vez maior pela entrega de novas funcionalidades, conflita com a necessidade de revisar códigos alterados ao longo do tempo para torná-los mais simples, flexíveis e funcionais, sem uma contrapartida aparente para o negócio. Mas as técnicas de refatoração podem ajudar muito. Recomendamos que técnicas de refatoração sejam aplicadas, sempre que possível, inclusive durante o processo de codificação, de forma a sempre se gerar um código limpo e claro.

**Técnicas de refatoração (** ***refactoring*** **):**

**Dividir variável temporária** ( ***Split Temporary Variable*** )

Problema: Há uma variável temporária recebendo atribuições mais de uma vez para representar dados diferentes, e a mesma não é uma variável de loop.

Motivação: Variáveis temporárias devem representar apenas um dado durante um método, o fato de está recebendo mais de uma atribuição indica que ela possui mais de uma responsabilidade, assim, cada responsabilidade implica em uma variável temporária exclusiva. Esse problema confunde quem lê o código.

Solução: Criar uma variável temporária para cada atribuição de diferentes dados.

**Separar consulta de modificador (** ***Separate Query from Modifier*** **)**

Problema: Há um método que retorna um valor, mas também modifica o estado de um objeto.

Motivação: É uma boa idéia sinalizar claramente a diferença entre métodos com e sem efeitos colaterais. Uma boa regra a seguir é dizer que qualquer método que retorna um valor não deve ter efeitos colaterais. Porém, muitas vezes há operações que devem ser feitas em um mesmo momento por motivos de concorrência, assim, deverá existir um terceiro método que englobe a consulta e a modificação de modo que quem lê o código entenda claramente qual parte é responsável pela consulta e pela modificação.

Solução: Criar dois métodos, um para a consulta e outro para a modificação.

**AutoEncapsular Campo (** ***Self Encapsulate Field*** **)**

Problema: Há um método que acessa um campo interno à classe diretamente, porém o acoplamento a este campo está ficando inadequado.

Motivação: Uma boa prática bastante conhecida é que campos de uma classe devem ser sempre privados e só devem ser acessados por outras classes através de seus métodos de acesso. Mas, outro ponto é o acesso a esses campos dentro da própria classe. Muitos defendem que neste local é válido o acesso direto e há os que defendam que mesmo dentro da classe o acesso deve ser feito apenas pelos devidos métodos. Porém, a grande vantagem de usar métodos é que esses podem ser subscritos por subclasses para funcionarem de uma maneira específica, evitando-se assim repetição de código toda vez que a subclasse precisar desse novo comportamento.

Solução: Substituir os acessos diretos por chamadas a métodos de acesso ao campo.

**Substituir variável temporária por consulta (** ***Replace Temp with Query*** **)**

Problema: Há uma variável temporária para armazenar o resultado de uma expressão.

Motivação: O problema das variáveis temporárias é que elas só podem ser vistas no método declarado, assim encorajam construções de métodos longos ou com grandes listas de parâmetros, pois é a única maneira que se pode alcançá-las, ambas as opções são consideradas *Bad Smells* 2 (FOWLER, 1999). Substituindo-se essas variáveis por um método de consulta, esse valor é acessível por qualquer outro método da classe sem necessidade de parâmetros extras.

Solução: Substituir a variável temporária pelo próprio método que foi usado para atribuir-lhe um valor. Caso não tenha sido um método, criar um que retorne o valor da expressão. Isso deve ser aplicado se o valor da expressão não for volátil, caso contrário deve-se manter a variável temporária. Além disso, prima-se pelo bom senso do desenvolvedor, já que há situações que são mais custosas as consultas do que a variável temporária, como exemplo um método que precise acessar um banco de dados para retornar um valor.

**Substituir variável estática por parâmetro (** ***Replace Static Variable with Parameter*** **)**

Problema: há um método dependente de uma variável estática que é usada em outros contextos.

Motivação: Variáveis estáticas, também conhecidas como variáveis de classe, não devem afetar o estado ou comportamento de uma determinada instância desta classe, pois essas variáveis possuem o mesmo valor para todas as instâncias, como o nome sugere, elas são compartilhadas por todas as instâncias da classe. Isso pode causar confusão, por exemplo, quando uma instância vai usar o valor do campo estático e espera-se que esse campo esteja com um valor, porém, antes dessa utilização, outra instância seta o valor desse campo estático, o que na maioria dos casos, mudaria completamente o resultado obtido. Caso precise-se mesmo que a variável estática seja usada, é melhor analisar se ela realmente deve ser estática ao invés de um atributo de instância.

Solução: Adicionar um novo parâmetro em substituição da variável estática.

**Substituir parâmetro por método (** ***Replace Parameter with Method*** **)**

Problema: Há um objeto que invoca um método A e então passa o resultado como parâmetro para o método B, apesar de B também poder chamar o método A.

Motivação: Se um método puder de alguma outra forma obter um valor que é passado como parâmetro, ele deve fazê-lo. Longas listas de parâmetros são difíceis de entender e deve-se reduzi-las tanto quanto possível.

Solução: Remover o parâmetro de B e deixar que ele mesmo chame A.

**Decomposição condicional (** ***Decompose Conditional*** **)**

Problema: Há uma estrutura condicional complicada *[if else (if else)].*

Motivação: Umas das fontes de complexidade de um programa são suas lógicas condicionais complexas. O problema é que se sabe o que as condições estão testando, mas não se sabe o real propósito desses testes, então para eliminação desse problema faz-se uso de métodos com nomes que deixam claro a intenção do teste. Com isso, você está substituindo a declaração do que está fazendo pela declaração de porquê você está fazendo.

Solução: Extrair métodos das condições.

**Consolidar expressão condicional (** ***Consolidate Conditional Expression*** **)**

Problema: Há uma seqüência de testes condicionais que resultam no mesmo valor.

Motivação: Não se deve usar uma série de *ifs* para realizar testes condicionais que resultem na mesma ação, para isso existe os operadores lógicos AND e OR. Com a utilização destes operadores fica muito mais claro que você está fazendo na verdade uma única verificação.

Solução: Combinar a seqüência de testes em uma única expressão condicional e, se possível, extrai-la para um método.

**Consolidar fragmentos condicionais duplicados (** ***Consolidate Duplicate Conditional Fragments*** **)**

Problema: Há um fragmento de código que aparece em todos os ramos de uma expressão condicional.

Motivação: Se tem um código executado em todas as ramificações de um condicional, então certamente ele é independente da expressão. Com isso, devemos retirá-lo desta expressão, deixando mais claro o que varia e o que não varia de acordo com as condições.

Solução: Mover o código duplicado para fora da expressão.

**Encapsular** ***downcast*** [**[1]**](http://ppds.caixa/biblioteca/Agil/guidances/concepts/resources/#_ftn1) **(** ***Encapsulate Downcast*** **)**

Problema: Um método retorna um objeto que precisa fornecer *downcast* por seus solicitantes.

Motivação: *Downcasting* é uma das coisas mais inconvenientes que linguagens orientadas a objetos fortemente tipadas nos obrigam a fazer. Esse é um mal que deve ser utilizado o menos possível, ele acaba causando um trabalho extra aos clientes do método, portanto devemos fornecer o objeto mais especializado possível.

Solução: Mover o *downcast* para dentro do método.

**Introduzir variável explicativa (** ***Introduce Explaining Variable*** **)**

Problema: Há uma expressão lógica complicada.

Motivação: Expressões podem se tornar complexas e difíceis de entender. Nesse caso

Variáveis temporárias podem ser úteis para quebrá-las em algo mais fácil de compreender. Percebe-se que essa técnica soluciona o mesmo problema que a Decomposição condicional, porém ao invés de usar métodos para facilitar o entendimento, usa-se variáveis temporárias. FOWLER(1999) defende que ela só deve ser usada se realmente não puder usar Decomposição condicional, devido aos problemas com variáveis temporárias.

Solução: Colocar o resultado ou partes da expressão em uma variável temporária cujo nome explique seu propósito.

**Reduzir escopo de variável (** ***Reduce Scope of Variable*** **)**

Problema: Há uma variável temporária declarada num escopo maior do que o que ela é utilizada.

Motivação: Como visto em outras técnicas aqui apresentadas, excesso de variáveis temporárias podem nos trazer alguns problemas na compreensão de um código, assim as mesmas devem ser evitadas o máximo possível. Mas mesmo assim, nunca vamos escapar completamente desse tipo de variáveis, porém podemos melhorar o seu uso declarando-as num espaço que serão usadas independente de condições, evitando declarações de variáveis não utilizadas (que dependem de alguma condição) além do melhoramento na leitura do código devido à definição clara em que escopo essa variável é utilizada.

Solução: Reduzir o escopo da variável para deixá-la somente visível onde é usada **.**

**Remover atribuições a parâmetros (** ***Remove Assignments to Parameters*** **)**

Problema: Há um método que faz uma atribuição a um parâmetro.

Motivação: Como mostrado em Separar consulta de modificador, métodos de consulta e de modificação devem estar separados pra que fique bem claro, para os clientes dos

Métodos, que operação estão de fato realizando. Do mesmo modo acontece com atribuições a parâmetros, isso deve ser evitado, pois o intuito dos parâmetros são sempre passar informações, se o parâmetro for um objeto, o que se pode fazer é setar atributos do mesmo, mas nunca atribuir a variável que o referência um novo objeto. Isso evita confusão para quem lê o código, pois sempre se espera que o parâmetro inicie e termine o método com o mesmo valor.

Solução: Usar uma variável temporária no lugar da atribuição.

**Remover** ***flag*** **de controle (** ***Remove Control Flag*** **)**

Problema: Há uma variável que atua como uma *flag* de controle para uma série de expressões booleanas.

Motivação: *Flags* de controle são muito comuns em linguagens estruturadas, mas nas linguagens orientadas a objetos acabam sendo desnecessárias com a introdução de comando break e continue. Elas acabam tornando o código mais complexo e ocultando o real propósito da expressão condicional.

Solução: Usar artifícios como break, continue ou *return* .

**Remover dupla negação (** ***Remove Double Negative*** **)**

Problema: Há uma dupla negação condicional.

Motivação: Certamente dupla negação tem sua função em linguagem natural, mas em linguagem de programação ela só ajuda a confundir. Recomenda-se que um método que retorne um booleano tenha sempre um nome indicando um valor positivo, assim deixamos a negação desse método por conta dos operadores lógicos de negação das linguagens de programação.

Solução: Transformar a dupla negação em um único condicional positivo.

**Substituir atribuição por inicialização (** ***Replace Assignment with Initialization*** **)**

Problema: Há um código que primeiro declara uma variável e só depois lhe atribui algum valor.

Motivação: Esse problema deriva do estilo de programação estruturado, em que o programador tinha de declarar todas as variáveis que iria usar durante a função e só depois ele as utilizava. Linguagens orientadas a objetos não precisam disso, as variáveis podem e devem ser declaradas no momento em que passarão a ser úteis e agregarão algum valor ao método, antes disso só causarão problemas como linhas desnecessárias no código e variáveis fora de escopo.

Solução: Fazer uma inicialização direta da variável.

**Substituir código de erro por exceção (** ***Replace Error Code with Exception*** **)**

Problema: Há um método que retorna um código especial que indica um erro.

Motivação: Mais uma prática aprendida nas antigas linguagens de programação estruturadas. Nessas antigas linguagens não existem exceções como nas orientadas a objetos. Tratar erros através de exceções é muito mais legível, pois deixa claro o processamento que se faz quando tudo ocorre bem e o que se faz quando algo der errado, o que não acontece com códigos de erros, pois os tratamentos desses erros acabam incorporados à lógica do programa **.**

Solução: Lançar uma exceção, ao invés disso.

**Substituir valor mágico por constante simbólica (** ***Replace Magic Number with Symbolic Constant*** **)**

Problema: Há um valor literal com significado especial.

Motivação: Valores mágicos são muito antigos na computação. Muitas vezes depara-se com literais no meio de um processamento e não se sabe ao certo o porquê dele estar ali, e o pior não é isso, muitas vezes esse valor se repete várias vezes e uma possível alteração nesse valor pode causar um trabalho extra para substituí-lo pelo novo valor em todas as partes do código que o referenciam.

Observação: A tradução literal da técnica de FOWLER é substituir número mágico por constante simbólica, mas modificamos seu nome aqui, pois vemos isso acontecer não apenas com números, mas também com strings e chars.

Solução: Criar uma constante, nomeá-la de acordo com seu significado e substituir o literal por ela.

**Substituir exceção por teste (** ***Replace Exception with Test*** **)**

Problema :Há um método que gera uma exceção, em condições que poderia haver um teste primeiro.

Motivação: Exceções têm um propósito bem definido: avisam-nos que um comportamento excepcional, inesperado aconteceu. Assim, as mesmas não devem ser usadas em demasia e como substituas por testes condicionais. Se o erro pode acontecer com grande possibilidade, então deve-se testar primeiro, para que se evite o erro.

Solução: Alterar o método para fazer o teste antes da operação que gera a exceção.

**Inverter condicional (** ***Reverse Conditional*** **)**

Problema: Há um condicional que seria mais fácil de entender se seu sentido fosse invertido.

Motivação: Muitas vezes condicionais podem ser redigidos de uma forma que se torna

Difícil compreende-los. Uma negação em conjunto com uma clausula else é particularmente um desses casos. Então para se evitar essa complexidade extra inverte-se o condicional.

Solução: Inverter o sentido do condicional e reordenar as cláusulas condicionais.

**Substituir** ***array*** **por objeto (** ***Replace Array with Object*** **)**

Problema: Há um *array* ou coleção no qual os elementos não representam a mesma ideia.

Motivação: *Arrays* e coleções são estruturas de dados usadas para organizar e armazenar dados semelhantes. Freqüentemente vêem-se códigos que armazenam dados diferentes e criam convenções do tipo “o primeiro elemento é o nome, o segundo o CPF…” que não são fáceis de lembrar. Com um objeto que contenha esses campos (nome, CPF e etc.) é possível dar nomes e métodos que retornem ou modifiquem esses valores de modo que não seja preciso saber tais convenções.

Solução: Substituir o *array* ou coleção por um objeto que contenha um campo para cada elemento.

**Referências:**

FOWLER, Martin. Refactoring. Disponível em: <http://www.refactoring.com>. Acesso 05/07/2017

[[1]](http://ppds.caixa/biblioteca/Agil/guidances/concepts/resources/#_ftnref1) Em linguagens orientadas a objetos existem dois tipos de conversões ( *castings* ) entre tipos. Uma delas é a conversão ampliadora, onde um objeto mais especializado é atribuído a uma referência de um objeto mais genérico. A outra é a conversão redutora ( *downcast* ), onde uma referência a um objeto mais genérico é atribuída a um menos genérico, nesses casos é necessário explicitar o tipo para o qual se está convertendo.
