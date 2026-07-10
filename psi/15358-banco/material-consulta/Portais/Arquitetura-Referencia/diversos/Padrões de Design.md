Boas práticas no Design de Código

    As práticas aqui apresentadas são completamente aderentes e fortemente recomendadadas para terem seu uso amplamente utilizado em todas as plataformas de desenvolvimento utilizadas pela Caixa - plataforma Java (Quarkus e Spring) e plataforma .NET

Arquitetura de Software e Design de Software

Enquanto a arquitetura de software é responsável pelo arcabouço(definição de frameworks, requisitos de segurança, qualidade, integração, etc) e infraestrutura de alto nível(container, servidor, etc) de um software, o design do software é responsável pelos padrões do código (responsabilidades de classes, complexidade de classes, extensibilidade de clasess, etc).

Ou seja, o processo de design de software deve ocorrer em uma etapa posterior a definição da arquitetura de software, sendo responsável por definições em um contexto micro(interno aos componentes) que são essenciais para a qualidade interna do software. O design de software deve contemplar os componentes individuais do software e como eles se relacionam entre si.
Princípios de Design de Software

Um bom design de software tem como pilares alguns príncípios que devem sempre ser buscados, sendo eles:
Simplicidade:

A complexidade aumenta o uso de recursos, os gastos com manutenção e os desafios associados ao desenvolvimento de software. O conceito de simplicidade determina que cada parte do software possa ser modificada e usada de forma independente com seu próprio módulo para tornar seu código fácil de usar. Escolha o caminho simples sempre que possível.
Modularidade:

Dividir seu projeto em partes facilita a realização de suas metas. Isso é conhecido como modularidade e também é um tema comum nas metodologias Ágil, permitindo que você use sprints para finalizar recursos ou tarefas específicos, um de cada vez.
Integralidade:

Seu software deve ser completo. Ele deve ser construído para ser adequado e atender aos requisitos do seu projeto.
Antecipação de mudanças:

Quando e onde for possível, você deve criar seu software se preparando para mudanças e antecipando requisitos diferentes daquilo que é necessário hoje. Embora seja impossível prever totalmente o futuro, os melhores desenhos de software consideram o futuro e se preparam.
Abstração:

O desenho do software deve ser capaz de montar um plano, incluindo informações relevantes e excluindo aquelas que não são imediatamente relevantes. Portanto, seu plano provavelmente não especificará todos os detalhes exatos, mas usará abstração.
Acoplamento:

Toda mudança gera impacto. É improvável que o design de software consiga conceber um cenário de zero impacto, porém é de suma importância que o desenho do software sempre que possível seja feito proorizando o baixo acoplamento de forma a permitir que alterações em uma parte do software sejam feitas sem afetar significativamente outras partes.
S.O.L.I.D

O S.O.L.I.D é um conjunto de 5(cinco) princípios de design de software que visam facilitar o desenvolvimento, tornando os softwares mais fáceis de manter e estender.

Esses princípios podem ser aplicados a qualquer linguagem orientada a objetos estando dessa forma aderente as arquiteturas de software da Caixa.

Os princípios do S.O.L.I.D possibilitam escrever códigos mais limpos, separando responsabilidades, diminuindo acoplamentos, facilitando na refatoração e estimulando o reaproveitamento do código.
Single Responsibility Principle(Princípio da responsabilidade única):

Significa que cada classe deve ter um único objetivo, uma responsabilidade e um motivo para mudar. ‌
Open Closed Principle(Princípio do aberto/fechado):

Uma classe deve ser aberta para extensão, mas fechada para modificação. Em palavras simples, você poderá adicionar mais funcionalidades à classe, mas não editar as funções atuais de maneira a quebrar o código existente que a usa.
Liskov Substitution Principle(Princípio da substituição de Liskoov):

Esse princípio orienta a usar a herança de uma maneira que não interrompa a lógica do aplicativo em nenhum momento. Portanto, se uma classe filha chamada herdar de uma classe pai, a classe filha não deve replicar uma funcionalidade da classe pai de uma maneira que altere o comportamento da classe pai.
Interface Segregation Principle(Princípio da segregação de interface):

Simplesmente, como uma classe pode implementar várias interfaces, estruture o código de forma que uma classe nunca seja obrigada a implementar uma função que não é importante para o seu propósito. Portanto, categorize as interfaces.
Dependency Inversion Principle(Princípio da inversão de dependência):

Desacoplar o código é importante para a testabilidade e a modularidade. Em outras palavras, se uma determinada classe "A" depende da classe "B", a instanciação do objeto "B" deve vir de fora da classe "A".
Boas Práticas de Design
Estrutura de pacotes

Os pacotes de um software devem ser agrupados tendo com base os dois modelos de organização mais conhecidos e utilizados no mercado: por layer(camada) ou por feature(recursos).
Package by layer:

Os pacotes fazem referência às camadas da aplicação, geralmente apontando as responsabilidades destas camadas. Essa abordagem tem como vantagem a simplicidade de implementação e de entendimento, trás uma boa visão técnica do projeto.

Mas como desvantagem, essa abordagem não é boa em grande escala, a medida que o projeto cresce pode ficar complicado de organizar e encontrar o código, além disso não permite uma boa coesão, visto que para que as camadas sejam acessíveis devem expor muito de si, permitindo uso incorreto das implementações.
Package by feature:

Os pacotes fazem referência a um recurso de negócio. Esta abordagem permite uma alta coesão dos recursos, visto que todas as camadas dele pertence a um pacote e somente o que é necessário é deixado público.

A estrutura do projeto permite ter uma visão das funcionalidades do sistema, permite um crescimento mais sustentável a medida que a base de código aumenta.

Porém sua desvantagem é sua curva de aprendizagem, já que para este modelo é necessário bom conhecimento do negócio, além disso o escopo dessa abordagem é simples e com poucas regras, o que gera muita dúvida na implementação e pode gerar padrões diferentes de projeto para projeto, podendo ser um problema para novos desenvolvedores ou para projetos que múltiplos times atuam
Simplicidade

O padrão KISS ( keep it simple, stupid or keep it stupid simple), fala exatamente como manter as coisas simples, portanto, a simplicidade deve ser uma meta fundamental no design e a complexidade desnecessária deve ser evitada.

Além desse padrão existe um princípio da Programação Extrema chamado You aren’t gonna need it - YAGNI, ou seja, você não vai precisar disso. Este princípio afirma que uma funcionalidade não deve ser adicionada até que se faça necessária, deixando claro que prever a necessidade de algo e adicionar na aplicação só o torna complexo e atrapalha o design da aplicação.
Exceções

Existem 3 tipos de Throwables: exceções verificadas, exceções não verificadas que são de runtime e erros.
Exceções verificadas:

O chamador do método que lança a exception verificada é obrigado a tratar ela ou propagá-la. Existe uma enorme discussão sobre o uso delas dentro da comunidade, pelo Clean Code é considerada uma má prática o desenvolvimento delas em aplicações, salvo casos no desenvolvimento de bibliotecas críticas. Pelo Effective Java a orientação é de que sejam utilizadas em contextos que permitam o chamador do método se recuperar, porém é frisado que o seu uso seja com sabedoria.
Exceções não verificadas - Runtime:

Exceções de runtime devem ser utilizadas para indicar erros de programação, por exemplo quando alguma condição pré estabelecida não foi executada. Todas as exceptions não verificadas devem herdar direta ou indiretamente de RuntimeException.
Exceções não verificadas - Error:

Não existe nada na especificação Java informando sobre o uso de Error, porém é considerada como uso da JVM. Dada adoção disso pela comunidade não considere criar filhas da classe Error.

Para uma correta utilização dos tipos de exceção, alguns princípios devem ser considerados:

    Enriqueça suas exceções: as exceções são classes e muitos acabam se esquecendo disso e implementando apenas mensagem nas exceções, é importante implementarmos informações que indiquem dados de quando, como e onde ocorreu o problema, além disso em caso de exceções verificadas é importante que a exceção informe dados que permitam o chamador tratar esse problema.Além disso é importante que a mensagem da exception traga todas as informações sobre os dados dela.

    Priorize o uso das exceções existentes no Java: existem muitas, que abrangem a maioria dos cenários no desenvolvimento de software. Ter esse uso permite que todos conheçam o problema gerado de maneira mais padronizada, além da reutilização de código existente. Porém não é considerada uma boa prática usar diretamente Exception, RuntimeException, Throwable ou Error, pois trataria de maneira genérica o erro, visto que elas são classes utilizadas por todas as outras exceptions.

    Evite lançar exceptions que não tem relação com o contexto da execução: o ideal neste caso é que sejam capturadas estas exceções e seja lançada uma exception que tenha relação com o contexto, além disso deve-se verificar se a exceção criada requer dados da exceção capturada, como por exemplo em casos de depuração. Esta prática é conhecida como Tradução da Exceção. Padronize seu tratamento de exceptions em apis: apesar de não termos uma convenção a RFC 7807 tem orientações importantes que vale a pena aplicar no tratamento de respostas de erros. ( ver https://tools.ietf.org/html/rfc7807)

Pair Programing(Programação em pares) - Extreme Programing

Pair Programing permite não só o nivelamento do time, como permite que um design seja construído com mais qualidade.

Pontos de vista diferentes auxiliam para que problemas de design sejam identificados e corrigidos rapidamente, além de pensar em soluções mais amplas.

Isso porque cada programador tem um background diferente de experiências, o que permite juntando elas obter um resultado melhor.

É muito importante que sejam realizadas rotações entre os pares, para melhor a disseminação de conhecimento e para que haja mudança de pontos de vista sobre o design.
Code Review E Merge Request

Code Review também possibilita nivelamento do time. Isso permite que todos entendam os problemas e estruturas existentes no contexto que trabalham e isso abre a possibilidade de através desse entendimento, conseguirem identificar os problemas e apresentar melhorias.

Além de permitir aumento do conhecimento técnico do time, o code review permite identificar e corrigir problemas rapidamente.

Para que um CR seja bem feito, é importante que haja uma boa descrição na abertura de um Merge Request, coloque as tarefas, épicos relacionados a mudança, os motivos das decisões tomadas, referências, impactos no produto e no design da aplicação.

O ideal é que quem ler a descrição entenda o contexto e motivos pelos quais algumas decisões foram tomadas ou quais abordagens foram verificadas antes da solução ser implementada.

Deve-se entender o porquê da solução e não impor a solução que tida como a mais adequada, a intenção é que a proposta de mudança faça sentido e não porque é preferência de quem revisou o código.
Documentação

Uma boa prática é que a documentação esteja no projeto para o desenvolvedor, quanto menos locais para gerenciar, melhor para manter atualizado. Por isso é importante que o projeto tenha um README com informações do projeto como, descrição, funcionalidades, status do projeto, deploy da aplicação, como executar localmente, como executar testes, tecnologias envolvidas no projeto, acessos, links externos, qualquer informação que seja importante para quem está trabalhando no projeto saber.
Conigurações

Devemos entender que hardcode não é uma opção e que inviabiliza muitas coisas no projeto. Devemos ter a prática de externalizar as configurações da aplicação, facilitando modificações necessárias sem a necessidade de realizar deploy na aplicação. Informações fixas bloqueiam melhorias no design de software. Externalização de configurações é uma das premissas dos "12 fatores" que são detalhados na arquitetura de microsserviço.
Code Style

Code Style é uma ótima forma de manter o padrão no desenvolvimento do código e isso impacta na construção e evolução do design da aplicação, além de garantir uma ótima qualidade.

Code Style é um conjunto de padrões de codificação de uma linguagem, abrangendo itens como formatação, convenções e regras de codificação.
Ferramentas de analíse estática

Ferramentas de análise estática de código utilizam os parâmetros de code style para analisar o código em tempo de desenvolvimento, garantindo um mínimo de padrão entre os projetos.

Algumas ferramentas como Sonar, Checkstyle, Findbugs são utilizadas para análises de código e evita que problemas simples cheguem a etapa de Code Review.

Além disso é importante que durante o Code Review práticas que podem ser adicionadas ao Code Style da empresa sejam adicionadas nos arquivos de configuração destas ferramentas para facilitar que o problema seja identificado em tempo de desenvolvimento.
Boas Práticas de Escalibidade
Cache de dados de natureza imutável ou pouco alterável:

O banco de dados deve ser utilizado somente quando necessário. Isso significa não abrir conexões ou iniciar transações, ou fazer consultas toda vez que for necessário obter dados que são imutáveis ou tem um intervalo de atualizações muito grande, para esses casos considere o uso de cache.

Cache diminui significativamente a carga em banco de dados.
Pool de conexões HTTP

--> Colocar a imagem C:\Desenvolvimento\Analise\Arquitetura-Referencia\diversos\image\image1.png


Padrões de Projeto referenciados.
Strangler application pattern (código fonte)

Consiste em refatorações no monólito de maneira incremental. Os microsserviços trabalham em conjunto ao sistema legado até o momento em que todas as funcionalidades forem migradas e o sistema legado for descontinuado.

Quanto mais externas ou secundárias forem as funcionalidades a serem migradas, menor será a complexidade porque existirão menos acoplamentos.

Por outro lado, quanto mais a migração se aproxima de funcionalidades do core do sistema, mais difícil tende a ser migração por conta de um alto nível de dependências.


--> Colocar a imagem C:\Desenvolvimento\Analise\Arquitetura-Referencia\diversos\image\image2.png

Conforme o padrão define, durante toda a fase de transição do monolito legado para o ecossistema de microsserviços, os dois mundos devem coexistir e poderem ser intercambiáveis para na execução de uma função de negócio, porém funcionando sempre como uma caixa preta para o cliente, ou seja, o cliente deve conhecer apenas um contrato público(interface) utilizado para chamar o sistema, mas não deve ter noção se quem responderá será o monolito legado ou algum dos microsserviços extraído, assim como não deve conhecer os protocolos de comunicação usados internamente pelo sistema.

A essa interface pública que faz o papel tanto de roteador quanto de adaptador/conversor de formatos de mensagens (parâmetros recebidos) se dá o nome de Camada Anti Corrupção (ACL)

--> Colocar a imagem C:\Desenvolvimento\Analise\Arquitetura-Referencia\diversos\image\image3.png

Change Data Ownership (banco de dados)

Quando microsserviço é extraído do monólito, se for identificado um conjunto de dados que deveriam pertencer a ele deve-se movê-los para uma nova base de dados e fazer o monólito consumir esses dados do microsserviço ao invés de acessar diretamente a base de dados.

Durante as fases do processo de migração, caso ocorra a necessidade de reverter as chamadas de clientes para uma funcionalidade já extraída para um microsserviço, deve ser possível realizar replicação do banco do monolito para o banco do microsserviço.

--> Colocar a imagem C:\Desenvolvimento\Analise\Arquitetura-Referencia\diversos\image\image4.png


Estratégia de desacoplamento digital de sistemas legados

Objetivando o maior percentual de sucesso nas ações de modernização, passos fundamentais devem ser utilizados como guias.

    Novas aplicações devem ser criadas em ambiente de nuvem, seguindo a nova arquitetura de referência digital.

    Novas funcionalidades não devem ser adicionadas ao legado. Manutenções corretivas podem continuar acontecendo enquanto o legado estiver operacional.

    Fazendo uso de Domain Driven Design, modelos de domínio e contextos delimitados do domínio devem ser definidos, ou seja, deve ser criada uma modularização do monolito legado baseada nas intenções do negócio.

    Extrair do legado cada um dos contextos delimitados do domínio utilizando em conjunto os padrões de projeto Strangler application pattern (código fonte) e Change Data Ownership (banco de dados)

    As extrações devem ser iniciadas pelos contextos do domínio mais secundários e que possam ser extraídos de forma independente. Os contextos do domínio principais e mais críticos do monolito legado devem ser extraídos somente nas últimas etapas da modernização do sistema.

    A comunicação entre os sistemas deve passar a ser padronizada. No cenário atual não existe uma interface padrão de comunicação sejam eles de alta ou baixa plataforma. No processo de modernização, os sistemas devem se comunicar utilizando protocolo REST para comunicação síncrona e Mensageria (Filas/Tópicos/Streams) para comunicação assíncrona. Deve-se sempre priorizar a comunicação assíncrona através do uso de EDA (Event Driven Architect) em detrimento da comunicação síncrona.

    Fluxos de transacionais tratados como um único passo no monolito legado, passam a ser divididos em pequenos e coesos subfluxos que são executados de forma independente pelos microsserviços responsáveis. Esses subfluxos são unidos através do padrão de projeto SAGA.
