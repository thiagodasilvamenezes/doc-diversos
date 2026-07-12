# Programação por Pares

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Práticas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Praticas.aspx) >> Programação por Pares

**Conceito:** Promove a permanente inspeção de código que ocorre durante a sua prática, reduzindo a incidência dos bugs no sistema que está sendo produzido. Além disso, a programação em par ajuda os desenvolvedores a criarem soluções mais simples, mais rápidas de implementar e mais fáceis de manter. Isso ocorre em grande parte devido à oportunidade de dialogar e trocar ideias sobre programas que estejam sendo desenvolvidos.

**Descrição:** **Programação em par (** ***Pair Programming*** **)**

Programação em par é um estilo de programação em que dois programadores trabalham lado a lado em um computador, continuamente colaborando no mesmo código, algoritmo ou teste. Essa prática assegura que a produção de software seja revisada por ao menos outro programador, resultando em melhores projetos, testes e código. Essa técnica também auxilia na comunicação entre os projetistas e no compartilhamento de conhecimento entre os membros da equipe, promovendo a troca de conhecimento e aprendizado, melhorando o nível de programação da equipe. Os pares devem trocar seus membros entre si, assim todos são beneficiados com o conhecimento específico de cada membro. A formação de pares deve ser dinâmica. Por exemplo: uma dupla que trabalhou pela parte da manhã vai ter cada um de seus integrantes formando novas duplas à tarde. *“Quando há olhos suficientes, todos os erros são óbvios” – Eric S. Raymond*

A programação em par é uma forma eficaz de reduzir a incidência de *bugs* em um sistema. Isso se deve em grande parte às visões complementares que atuam durante o uso dessa prática. Quando dois desenvolvedores estão programando em par, um deles está com as mãos no teclado e no mouse. O outro está sentado ao lado, olhando para a mesma tela e preocupado em resolver o mesmo problema. Ambos estão trabalhando juntos na solução, embora apenas um esteja com as mãos no teclado. Eles conversam o tempo todo e trocam ideias sobre a solução.

A pessoa que está conduzindo o teclado (condutor) tem um campo de observação diferente do seu parceiro. Quem digita, normalmente está olhando sobretudo para a linha que está editando e adjacências. O navegador, por sua vez, tem uma visão mais ampla e olha não apenas a linha que está sendo editada, mas também o restante do código que aparece na tela. Ao fazer isso, ele acaba tendo uma visão complementar que frequentemente revela problemas que o condutor não percebe com a mesma rapidez.

Usando uma metáfora para ilustrar essa questão, imagine que uma pessoa está dirigindo um carro, enquanto outra está no carona. A pessoa que dirige tem uma visão geral das redondezas, mas foca a maior parte do tempo no carro adiante. Existe uma preocupação constante em não deixar o carro atingir o que está à frente, e isso exige atenção constante. Já a pessoa que está no carona, também observa que há um carro adiante, mas tem menos preocupação com essa questão. Por isso, acaba olhando mais para as redondezas, vê a paisagem com mais tranquilidade e tem condições de sinalizar problemas que o motorista só detectaria mais adiante. Por exemplo, em função de sua visão complementar, o carona pode alertar o motorista para que mude para outra faixa, visto que aquela na qual se encontram está fechada algumas centenas de metros à frente e o condutor ainda não teve condições de notar isso. Essa visão complementar, quando trazida para o código, permite que o navegador atue mais como um estrategista, olhando para o código como um todo e identificando problemas que passam despercebidos para quem está mais preocupado com a linha que está sendo digitada.

Gerald Weiberg, no livro [*The Psychology of Computer Programming*](http://www.geraldmweinberg.com/Bookstuff/Each_Book/Psychology.html) (1971) diz o seguinte: “programadores, se deixados por conta própria, ignoram os erros mais gritantes, os quais qualquer pessoa seria capaz de detectar instantaneamente”. Isso se deve a um princípio bastante estudado na psicologia [chamado](https://caixa.sharepoint.com/sites/PPDS/SitePages/Chamado.aspx) dissonância cognitiva. Como programadores, temos tendência de acreditar que aquilo que escrevemos está certo. Somos capazes de reler uma linha de código, que contém um erro de digitação e não enxergá-lo, mesmo depois de ler a mesma linha inúmeras vezes. Trata-se de uma pequena (e desagradável) peça que o cérebro nos prega. Contudo, um pequeno erro que passe despercebido para o condutor, normalmente é notado pelo navegador por ter uma visão complementar que não é afetada pela dissonância cognitiva de seu colega.

**Contexto CAIXA:** Algumas equipes internalizadas da CAIXA praticam, ainda que timidamente, a programação em par.

**Quando Usar:** [Programação em par](http://www.devmedia.com.br/implementando-pair-programming-em-sua-equipe/1694) é uma boa prática, normalmente utilizada por times que adotam o [*Extreme Programming (XP)*](http://www.devmedia.com.br/introducao-ao-extreme-programming-xp/29249) *.* É uma prática polêmica, que diz que todo o código produzido por um time deve ser produzido em duplas. Esse tempo duplicado de esforço de programação, embora possa parecer um *overhead* , frequentemente se paga de duas formas: maior compartilhamento de conhecimento e oxigenação da funcionalidade, pois uma pessoa que ingresse no par, com uma visão ainda não viciada, muitas vezes consegue perceber formas melhores e bem mais rápidas de solucionar o problema. Além do que equipes que trabalham em par conseguem reduzir drasticamente a inserção de defeitos em seus códigos e o consequente retrabalho decorrente disso. O *The Economists, Laurie Williams* da *University of Utah in Salt Lake City* , apresentou um estudo que demonstra que a produção na programação por par é apenas 15% menor do que soma da produção de dois programadores, contudo contém 15% a menos de erros.

***Programação em Par não é para todos, nem para todas as situações,** porém, a programação em par **cria sinergia** : Duas pessoas vão frequentemente entregar um código mais integrado, testado e sem defeitos, trabalhando juntas […]. A Programação em par é uma das melhores formas de se atingir os benefícios de revisões de código […]* . .(Mary e Tom Poppendieck, “Implementing Lean Software Development”)

**Como Usar:**

Passos a serem observados na adoção da programação em par:

1. **Comece com uma tarefa bem definida antes de se sentar** . A tarefa deve ser algo que o par tenha confiança em completar em uma hora ou duas. Por exemplo, dar manutenção em uma tabela inserindo novos códigos e inserir comentários de histórico no código de acesso ao banco de dados.

2. **Dediquem-se a um pequeno objetivo de cada vez** , algo que possam completar em alguns minutos. Verbalizar o problema para a outra pessoa pode ajudar na concentração de ambos. Garante também que ambos saibam o que estão fazendo no momento.

3. **Escreva primeiro o teste unitário, antes de escrever a implementação** , pois isto ajuda a definir e compreender o próximo micro objetivo (“Fazer este teste ter sucesso”), uma vez que ambos visualizam o código.

4. **Confie e apoie seu parceiro** . Quando estiver pilotando, complete o micro objetivo o mais rápido possível, ignorando problemas maiores. Confie no observador para ser sua rede de segurança.

Quando for o observador, leia o que o piloto estiver escrevendo, enquanto ele escreve. Seu objetivo é revisão de código, e o observador deve ter atenção total, tentando deixar nada passa. Pense sobre problemas e *bugs* , pontos maiores, e maneira de simplificar ou melhorar o projeto. Traga à tona erros e trechos de difícil leitura de maiores e ideias para melhorias. Armazene essas pequenas tarefas para depois, de modo que o piloto possa se concentrar na tarefa presente. Por exemplo, se observar que o código atual não testa um *input* nulo, anote em um pedaço de papel “colocar teste de *input* nulo no teste unitário”.

Quando for o observador, não dite código. O piloto deve estar pensando em como completar a tarefa atual, não ficar simplesmente digitando passivamente. Como o observador, você deve explorar o fato de que não precisa implementar pequenos detalhes, você pode e deve pensar em alto nível. Dizer “Esta parte parece certa, que tal tratar o caso em que recebemos um ponteiro nulo agora?” é melhor do que dizer, “Ok, agora digite ‘if (s == NULL) { return …'”

5. Gerenciem o foco juntos. Pelos mais diversos motivos, um dos desenvolvedores pode estar mais focado do que o outro em determinados momentos. Caso isso se torne um problema, o mais focado deve chamar a responsabilidade e expor a situação, propondo uma solução. Pode ser muito complicado esperar que seu companheiro recupere o foco sozinho, e perder o seu foco por causa dele também não vai ajudar em nada. Existem técnicas que podem a resolver situações de falta de foco, mas o par deve conversar sobre a melhor solução.

6. Mantenham a sincronia. Enquanto trabalham em dupla, os desenvolvedores podem, gradativamente, perder a sincronia, ficando nebuloso o que o parceiro está fazendo, ou qual a tarefa atual, mas isso é normal. Quando ocorrer, simplesmente retomem a sincronia, pois a chave para uma boa dupla é uma sincronização frequente, uma vez a perda da sincronia é questão de minutos ou segundos. Passar mais de 5 minutos dessincronizados significa que ambos estariam melhor codificando sozinhos, porque é a sincronia frequente que cria a sinergia da dupla. Se você tem mais contexto ou facilidade, tenha a sensibilidade para perceber isso e adapte seu ritmo ao do seu colega. Pare e explique quantas vezes for necessário. Se você tem menos contexto, deixe isso claro. Interrompa a atividade para pedir que seu colega lhe explique o que ele está fazendo e o porquê. Comunicação é essencial.

Quando possível, diga o que vai fazer antes de fazê-lo. Melhor ainda, peça a seu parceiro, por exemplo, “podemos escrever o teste para nulo agora?” Algumas vezes, você tem que escrever um trecho de código para entender seu raciocínio, e você pode dizer: “eu vou digitar isto aqui para você ver se é uma boa ideia.” Mantenha esse tipo de questionamento a menos de um por minuto.

Quando seu parceiro perguntar se você concorda com algo, como “será que devemos escrever o teste para nulo agora?” ou “eu acho que este método pode ser removido agora, você não concorda?”, diga sim ou não imediatamente.

É normal passar o teclado para lá e para cá frequentemente. Por exemplo, algumas vezes é muito mais fácil dizer algo digitando do que verbalmente. Deixe o observador pegar o teclado e digitar, em seguida, pode pegá-lo de volta, ou deixar o observador dirigir, o que fizer mais sentido no momento.

7. Seja especialmente cortês , como, por exemplo, agradecendo quando seu parceiro apontar um erro. Quando for apontar erros, faça de modo gentil, para evitar ofender a outra pessoa. Erros e sua subsequente correção são normais em programação, não uma prova de que alguém não sabe programar. Como o observador, deixe o piloto terminar uma linha antes de apontar um erro, pois a maioria das pessoas acha irritante ser corrigida enquanto digita.

8. **Celebre** . Quando completar uma tarefa ou superar problemas, por exemplo, quando um teste passar, dê ao outro um cumprimento. Se estiverem se cumprimentando cada vez que um teste falhar, vocês estarão entrando realmente no clima de programação colaborativa e projeto orientado a testes.

9. **Troquem de papéis frequentemente** , pelo menos uma vez a cada meia hora. Isto mantém ambos engajados, em sintonia com os detalhes de baixo nível e alto também. E digitar o tempo todo pode cansar, pois é difícil manter a vigilância necessária para o observador por mais de meia hora. Trocar de papéis descansa os dedos e recarrega as baterias.

Geralmente, aquele no par que se sente mais confortável com o ambiente de desenvolvimento tende naturalmente a centralizar o *driving* , em parte porque o outro geralmente tem a sensação que vai prejudicar o ritmo do pareamento ao fazer o *driving* . O lado ruim é que quem está menos acostumado vai continuar assim ao final da experiência. Assim, definir um intervalo de tempo de troca de *driving* pode ajudar a balancear isso.

10. **Passe o contexto adequadamente.** Na hora de passar o contexto, é importante se certificar de que ambos no par usam um vocabulário comum e conhecido. É horrível tentar entender o sentido de uma frase sem saber o significado de algumas palavras que a compõem. Procure explicar de maneira simples e direta, desenhando diagramas caso necessário. Se ajudar, traga outra pessoa da equipe que você acha que pode explicar os conceitos de uma maneira melhor.

11. **Evitem trabalhar sozinhos** . Às vezes um dos desenvolvedores pode precisar se ausentar por um tempo. Nesse caso tente esperá-lo voltar. Procure fazer outra coisa nesse tempo que ajude o projeto ou a empresa, ou aproveite para usar esse intervalo para fazer coisas não relacionadas ao trabalho. Claro, fatores como senso de urgência e a situação da iteração devem ser levados em conta; se for inviável deixar a atividade parada continue sem seu par, mas não deixe de passar o contexto do que foi feito durante sua ausência quando ele voltar.

12. **Procurem intercalar momentos de concentração e descontraçã** o . Foco é fundamental, mas seu excesso é prejudicial. Pessoas não são robôs que conseguem trabalhar 8 horas ou mais de maneira ininterrupta. Façam intervalos periódicos e deixem o trabalho completamente de lado durante eles. Procurem fazer coisas juntos, como descobrir e conversar sobre um assunto em comum, jogar videogame ou sair para tomar um café.

13. **Saiba lidar com as divergências** . As divergências acontecem o tempo todo durante o pareamento e, nesses momentos, é muito importante dentro de cada par ouvir o outro completamente e expor suas opiniões de maneira serena e respeitosa, sem ser arrogante. Deixe o ego de lado, aceite o desafio de permanecer humilde e evitar discussões improdutivas. Tentar enxergar o problema do ponto de vista do seu colega pode lhe ajudar a perceber algo que você não estava levando em consideração. Deixe a competição de lado, você não precisa ter razão em tudo. Se por acaso houver um conflito de soluções, chamar um terceiro colega para votar em uma delas pode ajudar.

14. **Esteja disposto a aprender e a ensinar** . Mesmo que seja seu primeiro dia de projeto, tenha consciência de que você pode contribuir mesmo não sabendo de muita coisa. Da mesma forma, se você já tem bastante tempo de projeto e está pareando com alguém que entrou agora, abra espaço para que a outra pessoa contribua também. Faça as perguntas certas, apresente os conceitos gradativamente e conduza seu par à solução de maneira sutil.

***15.*** **Troquem** ***feedbacks*** **.** Quando terminarem de parear, procurem dar *feedbacks* um ao outro enquanto as percepções estão frescas na memória. Não precisa ser nada muito formal; uma conversa de 15-30 minutos pode ser suficiente para expor para seu colega como foi a experiência de parear com ele, o que ele deve continuar fazendo, o que ele pode melhorar, etc. Caso não tenham a oportunidade, escrevam notas sobre seu par em algum lugar para que os feedbacks possam ser trocados em outro momento oportuno.

***Dicas***

- Planejem: Sentem-se antes de começar e discutam os pontos onde a dupla pode trocar. Uma mesa retangular funciona melhor, pois o monitor pode ser virado e o teclado passado ao lado (ao contrário de mobília curva e ergonômica).

- Se a dupla não for de igual experiência, o mais experiente deve tomar o papel de mentor e observador, ou a dupla não será harmoniosa.

- A pessoa com menos conhecimento deve ficar ao teclado, para garantir que o novato fique engajado e por dentro de tudo. Você aprende mais usando seus dedos e escrevendo o código do que observando um colega mais experiente trabalhar.

- Prefira *desktops* a *laptops* , pois seu tamanho reduzido e a dificuldade de ver a tela de lado dificultam, mas não tornam a tarefa impossível. Um truque é fazer o observador sentar mais atrás do piloto, do que do lado.

- Não discuta sobre problemas de arquitetura ou coisas triviais, como a indentação dos colchetes. Essas coisas devem ser decididas antes de formar o par.

**Referências** :

10-ways-improve-your-pairing-experience disponível em [https://www.thoughtworks.com/pt/insights/blog/10-ways-improve-your-pairing-experience](https://www.thoughtworks.com/pt/insights/blog/10-ways-improve-your-pairing-experience) em novembro/2017.

*TEAM SPIRIT,* Agility counts disponível em [http://www.economist.com/node/779429](http://www.economist.com/node/779429) em novembro/2017.

Williams, Laurie (2003). *Pair Programming Illuminated.* Addison-Wesley. [ISBN 0-201-74576-3](https://pt.wikihow.com/Especial:Fontes_de_livros/0201745763) .
