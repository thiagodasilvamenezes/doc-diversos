# Desenvolvimento Orientado Por Comportamento

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Práticas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Praticas.aspx) >> Desenvolvimento Orientado Por Comportamento

**Objetivo**

O objetivo do Desenvolvimento Orientado por Comportamento ou *Behaviour Driver Development* (BDD) é integrar regras de negócios através de testes automáticos que focam no comportamento do software, ou seja, o intuito do BDD é escrever testes automáticos baseado em cenários de negócio do sistema e conforme o sistema vai sendo construído esses testes devem passar a garantir que o sistema está se comportando da maneira esperada. Encorajar a colaboração entre desenvolvedores, setores de qualidade e pessoas não técnicas ou de negócios num projeto de software ágil. Melhorar a comunicação entre as equipes de desenvolvimento e testes, aumentando o compartilhamento de conhecimento entre elas.

**Descrição**

Através do uso de linguagem **ubíqua** são escritos testes de forma que qualquer pessoa do projeto consiga compreender sem necessariamente precisar ter um domínio técnico.

O foco em BDD é a linguagem e as interações usadas no processo de desenvolvimento de software. Desenvolvedores que se beneficiam destas técnicas escrevem os testes em sua língua nativa em combinação com a linguagem ubíqua ( *Ubiquitous Language* ). Isso permite que eles foquem em por que o código deve ser criado, ao invés de detalhes técnicos, e ainda possibilita uma comunicação eficiente entre as equipes de desenvolvimento e testes. 1

O BDD não dispensa o uso de Histórias de Usuário. Os cenários são vinculados hierarquicamente abaixo das histórias do *Backlog* do Produto. As histórias possuem a estrutura padrão descrita abaixo:

**Como um** <papel>, **eu posso** <ação com o sistema> **para que** <benefício externo>

Devido ao alto grau de detalhamento dos cenários, estes abrangem as regras de negócio e os critérios de aceitação das histórias de usuário, não havendo necessidade de outros artefatos associados para a descrição destes aspectos.

A estrutura de um teste BDD é baseado em 3 definições:

Dado que ( ***Given*** ): Descrição das condições para o cenário ocorrer Quando ( ***When*** ): Descrição das ações que devem ocorrer quando o cenário for executado Então ( ***Then*** ): Descrição que dos resultados esperados caso o cenário seja executado com sucesso.

Essa metodologia não é obrigatória, mas é largamente utilizada pelos desenvolvedores do mundo todo que adotam o BDD. É baseado nesses três princípios ( *Given,When,Then* ) que os cenários são desenvolvidos.

Exemplo de como seria descrição de um comportamento do sistema no formato de BDD:

**Cenário** : Saque da conta corrente **Dado** que eu tenha na conta corrente 500,00 reais **Quando** eu sacar 100,00 reais **Então** Meu saldo deveria ser de 400,00 reais.

No desenvolvimento baseado em BDD há um outro princípio largamente utilizado dentre os desenvolvedores do mundo todo, a maioria adota a implementação da interface de usuário primeiro, pois é baseado na interface que as funcionalidades são contadas e pontuadas, dessa forma os fluxos descritos no desenvolvimento podem ser acompanhados pelas interfaces.

Em BDD outra prática fortemente recomendada é a geração de uma documentação baseada no comportamento dos testes, auxiliando os desenvolvedores, analistas e gestores na organização dos requisitos e correção dos defeitos gerados ao longo do desenvolvimento.

Atualmente existem no mercado vários *frameworks* que facilitam a construção de testes usando essa metodologia, alguns deles são: [C *ucumber*](https://cucumber.io/) *,* [*SpecFlow*](http://www.specflow.org/) *,* [*Jbehave*](http://jbehave.org/) *,* [*Kahlan*](https://github.com/kahlan/kahlan) *,* [*Jasmine*](http://jasmine.github.io/) entre outros. Essas ferramentas são responsáveis por interpretar o teste escrito e esses testes devem falhar caso o sistema não esteja se comportando da maneira esperada.

O uso do BDD é recomendável, pois ele usa testes como requisito, torna os testes mais elegantes e de fácil interpretação por pessoas de negócio, diminui o tempo de escrita de casos de teste, é também considerado uma documentação executável e os testes gerados são baseados em critério de aceite.

**Contexto CAIXA:**

Na CAIXA houve um trabalho experimental sobre o uso do BDD no extinto PEDeS (desenvolvimento descentralizado), tendo como objetivo a apresentação dos pontos positivos e negativos da técnica e principalmente os ganhos obtidos para o projeto aplicado e o BDD foi adotado de forma definitiva naqueles projetos. Contudo o uso dos *frameworks* para a construção de testes ainda não foi adotado.

**Quando Usar:**

Sempre que se utilizar o cenário ágil e conhecimento da metodologia de BDD estiver disponível na equipe de desenvolvimento é recomendável a utilização da mesma.

**Como Usar:**

Uma equipe praticante de BDD, ao decidir implementar uma nova funcionalidade, trabalha em conjunto com os usuários e outras partes interessadas para definir as histórias e cenários do que os usuários esperam dessa funcionalidade. Os usuários ajudam a definir um conjunto de exemplos concretos que ilustram resultados que a nova funcionalidade deve fornecer. Esses exemplos são criados utilizando um vocabulário comum e podem ser facilmente compreendidos pelos usuários finais e membros da equipe de desenvolvimento de software, e geralmente são expressos usando **Cenário** ( *Scenario* ), **Dado** ( *Given* ), **Quando** ( *When* ) e **Então** ( *Then* ).

Vejamos a **Figura 1** que mostra os passos do BDD utilizado pela equipe neste exemplo para especificação da nova funcionalidade.

**Figura 1** . Os passos do BDD

Com base no BDD, a equipe identifica e especifica o seguinte objetivo de negócio, definindo –o com um exemplo concreto. Observe:

**Cenário:** Transferir dinheiro para uma conta poupança **Dado** que eu tenho uma conta corrente com 1000.00 **E** que eu tenho uma conta de poupança com 2.000,00 **Quando** eu transferir 500,00 a partir de minha conta corrente para a minha conta poupança **Então** eu deveria ter 500,00 em minha conta corrente **E** eu deveria ter 2.500,00 em minha conta poupança

Depois de especificada a nova funcionalidade, sempre que possível estes exemplos concretos são automatizados sob a forma de especificações executáveis, que tanto valida o software quanto fornece uma documentação atualizada, técnica e funcional. Há diversas ferramentas e frameworks que apoiam esta fase do BDD, transformando esses requisitos em testes automatizados que ajudam a orientar o desenvolvedor para que a nova funcionalidade seja desenvolvida corretamente e dentro do prazo.

**Referências:**

SOARES, [Ismael](http://www.devmedia.com.br/space/ismael-soares) (Disponível em [http://www.devmedia.com.br/desenvolvimento-orientado-por-comportamento-bdd/21127](http://www.devmedia.com.br/desenvolvimento-orientado-por-comportamento-bdd/21127) – Consultado em 21/10/2021)

ARCANJO, Brendo Felipe Rodrigues ( Disponível em [https://www.devmedia.com.br/desenvolvimento-orientado-a-comportamento-bdd-com-cucumber/33547](https://www.devmedia.com.br/desenvolvimento-orientado-a-comportamento-bdd-com-cucumber/33547) – Consultado em 21/10/2021)

VICENTE, Guilherme de Oliveira – Introdução ao BDD – 23/01/2014 – (Disponível em [http://dextra.com.br/blog/introducao-ao-bdd/](http://dextra.com.br/blog/introducao-ao-bdd/) – Consultado em 21/10/2021)

HELM, Rafael e WILD, Daniel – Histórias de Usuário – Como testar? BDD! – 3ª edição – publicada em novembro de 2014

BAPTISTA, Guilherme – Qual a diferença entre BDD e TDD? – 04/06/2016 – [http://blog.locaweb.com.br/artigos/metodologias-ageis/diferenca-entre-bdd-tdd/](http://blog.locaweb.com.br/artigos/metodologias-ageis/diferenca-entre-bdd-tdd/) – Consultado em 21/10/2021

SPONTON, Emanuelle Bernardo – Escrita de Testes Funcionais utilizando Semântica BDD – 21/10/2021 – [https://www.matera.com/blog/escrita-de-testes-funcionais-utilizando-semantica-bdd/](https://www.matera.com/blog/escrita-de-testes-funcionais-utilizando-semantica-bdd/) – Consultado em 01/06/2017

TELES, Vinícius Manhães – Aprenda sobre Desenvolvimento Ágil de Software – 02/10/2016 – Disponível em: [http://www.desenvolvimentoagil.com.br/](http://www.desenvolvimentoagil.com.br/) – Consultado em 21/10/2021
