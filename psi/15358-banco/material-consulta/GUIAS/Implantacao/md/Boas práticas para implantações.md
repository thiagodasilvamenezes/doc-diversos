# Boas práticas para implantações

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Capítulos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Capitulos.aspx) >> [Integração e Implantações](https://caixa.sharepoint.com/sites/PPDS/SitePages/CapitulosIntegracaoImplantacoes.aspx) >> Boas práticas para implantações

**Esta página reune um conjunto de boas práticas para implantações, recomendadas pelo mercado e pela experiência das Comunidades.**

O objetivo é **reduzir riscos** , **evitar rollbacks desnecessários** e **aumentar a taxa de sucesso das mudanças em produção** .

As principais boas práticas são:

- Atenção aos detalhes – implantações incompletas geram rollbacks (backouts) desnecessários

- Manter os gestores informados e atualizados sobre o horário das implantações

- Envolver o/a Líder de Operações nas implantações o quanto antes

- Disponibilidade e Desempenho – realizar projeções para cenários de grande utilização

- Adiantar a implantação da infraestrutura e dos elementos que suportam a mudança

**Atenção aos detalhes:**

**implantações incompletas geram rollbacks desnecessários**

Implantações exigem cuidado extremo com detalhes. Uma configuração esquecida, um passo não executado ou um artefato ausente podem comprometer toda a mudança.

Quando isso ocorre, o procedimento padrão é o **rollback (backout)** , ou seja, desfazer tudo o que foi implantado. Isso resulta em:

- perda de tempo da equipe

- desperdício de esforço de planejamento

- necessidade de abrir e executar uma nova mudança

Evitar rollbacks começa com **atenção aos detalhes** , uso de checklists e validação cuidadosa de cada etapa da implantação.

**​​​​​​Manter os gestores informados e atualizados sobre o horário das implantações**

| Coluna 1 |
| --- |
| Política atual: toda Mudança precisa ser validada pelo gestor. Caso contrário, é feito o rollback (backout) da Mudança. |

Ao participar do planejamento das Mudanças os gestores se organizam para realizar a validação no horário combinado.

No entanto, durante as implantações é natural que surpresas podem ocorrer. **O problema nasce quando não mantemos os gestores informados sobre essas alterações para que eles possam também se replanejar** .

Assim, quando a equipe tenta entrar em contato com o gestor “fora” do horário combinado, pode acontecer de este não estar disponível, o que levaria ao rollback (backout) da Mudança!

Todo o trabalho de planejamento da Mudança, bem como o trabalho de implantação seriam jogados no lixo.

Tudo isto pode ser evitado caso a equipe **entre em contato com o Gestor de forma proativa** *caso haja alteração no horário esperado para finalização da Mudança* .

## Envolver o/a Líder de Operações nas implantações o quanto antes

Uma das responsabilidades do Líder de Operações é promover a disponibilidade dos serviços da sua Comunidade.

**Mas fica mais difícil zelar pela disponibilidade se o Líder de Operações não sabe o que está entrando em Produção.**

Infelizmente pelo reduzido número de colegas nesse perfil, não é possível ao Líder acompanhar todas as Mudanças.

Porém é possível que eles acompanhem as mais relevantes.

Cabe aos times identificarem quando fazê-lo:

- É um novo serviço?

- É uma funcionalidade que afeta o caminho crítico do serviço?

- Há inserção de grande massa de usuários?

Mas isto não é fácil. Dadas as pressões do dia-a-dia alguns times têm esquecido de envolver os Líderes de Operação. Porém é possível e a Comunidade deve ter este envolvimento como parte de sua cultura.

## **Disponibilidade e Desempenho – realizar projeções para os cenários de grande utilização**

A Infraestrutura é projetada para suportar determinada quantidade de acessos e usuários.

É um equilíbrio delicado:

- uma infraestrutura em excesso gera custos desnecessários;

- uma escassez de infraestrutura gera indisponibilidades e baixo desempenho no serviço, o que é sentido pelos usuários.

**Mas importante lembrar:** a solução precisa ser performática! De nada adianta aumentar a infraestrutura, gastando-se milhares de reais em poder de processamento, licenças, entre outros, se a aplicação não performa bem. Não há infraestrutura que suporte!

Então como projetar os cenários de uso?

O objetivo número #1 é encontrar a **quantidade máxima de acessos simultâneos** .

Ou seja, o pico de utilização.

Observação: a quantidade de usuários não é o mais importante. Eu posso ter uma base grande de usuários, porém com uso raro. Enquanto que por outro lado, posso ter uma base pequena de usuários, mas que utilizam a aplicação diariamente. Às vezes mais uma vez ao dia.

Para calcularmos a quantidade máxima de acessos simultâneos, precisamos lançar mão dos insumos abaixo. Cada insumo da lista será descrito em mais detalhes mais à frente.

- Considerar o uso simultâneo. O número total de usuários é apenas base para cálculo

- Considerar o tempo de resposta das chamadas para as principais funcionalidades (ex: login e caminho crítico)

- Considerar também a curva de aumento do tempo de resposta versus aumento da quantidade de chamadas simultâneas

- Projetar o uso ao longo das horas do dia, dos dias da semana e dias específicos ao mês

- Usar como benchmark aplicações cujo comportamento do usuário se assemelham à aplicação estudada

Abaixo são as informações que precisam ser coletadas junto ao Gestor. Lembrando que o Gestor muitas vezes não terá estas informações de imediato. Mas é preciso trabalhar junto com o Gestor para que estas informações sejam obtidas. Uma opção é utilizar aplicações semelhantes como benchmark. Para as informações que não temos, precisaremos inferir. E quanto menor a quantidade de inferências, melhor.

- Quantidade total de usuários

- Janela diária de uso normal

- Percentual da base de usuários que utilizam a solução (diariamente, semanalmente ou mensalmente)

- Horários de pico

**EXEMPLO DE CÁLCULO**

Abaixo as informações do nosso exemplo:

- O aplicativo servirá cerca de **2.000.000** de usuários.

- A janela de uso majoritário é entre **9h e 22h** .

- Cerca de **30%** dos usuários utilizam o aplicativo **uma vez por semana** .

- Cerca de **20%** dos usuários utilizam o aplicativo **mais de uma vez por semana** .

- Os usuários raramente utilizam a aplicação mais de uma vez por dia.

- A aplicação é utilizada **todos os dias da semana** , sem um dia de maior uso.

- Os horários de pico são das **12h às 14h** e das **19h às 21h** .

- Cerca de **70%** dos usuários do dia utilizam a aplicação **nos horários de pico** .

Uma vez obtidas as informações, passamos a projetar o cenário.

**Vamos às contas:**

**A)** ***Acesso semanal***

- 2.000.000 × 30% que acessam uma vez = **600.000 acessos por semana**

- 2.000.000 × 20% que acessam duas vezes = **400.000 usuários × 2 acessos = 800.000 acessos por semana**

Total de acessos semanais: **600.000 + 800.000 = 1.400.000 acessos por semana**

**B)** ***Acesso diário*** 1.400.000 ÷ 7 = **200.000 acessos por dia**

**C)** ***Acesso nos horários de pico*** 200.000 × 70% = **140.000 acessos nos horários de pico**

**C1) Minutos de horário de pico** 12h–14h e 19h–21h = **4 horas = 240 minutos**

**D)** ***Acessos por minuto*** 140.000 ÷ 240 ≈ **583 acessos por minuto**

**Observação:** Como essa distribuição não é linear, podem existir minutos com picos mais elevados. Para uma projeção conservadora, consideramos o dobro desse valor.

Acessos por minuto considerando variações: 583 × 2 ≈ **1.166 acessos por minuto**

***Acessos por segundo*** 1.166 ÷ 60 ≈ **19 acessos por segundo**

**TESTES**

A pergunta que os testes precisam responder é: **Qual o tempo de resposta da aplicação com aproximadamente 19 acessos por segundo?**

Percebam: para evitar enfileiramento, a aplicação deve manter **tempo médio de resposta próximo ou inferior a 1 segundo** . Caso o tempo de resposta aumente, a quantidade de acessos simultâneos cresce, pois chamadas antigas permanecem em processamento enquanto novas requisições chegam.

Esse efeito de acúmulo gera uma **“bola de neve”** , que pode levar à degradação severa do desempenho e à indisponibilidade da aplicação.

​​​​​​​Ilustramos abaixo esse efeito:

Num primeiro momento a aplicação responde bem a uma chamada, com tempo de resposta < 200 milissegundos. (em **verde** a chamada já respondida, e em **azul** as chamadas em andamento)

Num segundo momento, já com 4 acessos simultâneos, já percebemos tempos de resposta acima de 500 milissegundos. (repare que as barras azuis estão mais largas)

Temos agora 5 acessos simultâneos, já percebemos tempos de resposta acima de 500 milissegundos. Começamos a ter uma lentidão. Ainda não incomoda os usuários, mas ela é percebida.

Com a deterioração da aplicação, os tempos de resposta superam 1,5 segundos. Com isto, a quantidade de acessos simultâneos aumenta consideravelmente (para 14!). Isto não ocorreu por recebermos mais acessos, mas pela própria lentidão da aplicação que demora a liberar os primeiros e faz os últimos aguardarem ( **cenário de enfileiramento** ). Os últimos usuários que tentaram realizar a transação estão tendo uma péssima experiência, percebendo **tempos de resposta acima de 2 segundos** .

**Adiantar a implantação da infraestrutura e elementos que suportem a mudança**

Quanto menor a quantidade de atividades a serem realizadas durante uma Mudança, maior sua chance de sucesso.

Assim, quando possível, é uma boa prática adiantar, através de mudanças ou tarefas anteriores, atividades que podem ser executadas de forma assíncrona com a mudança de software.

Exemplos são:

- criação de usuário de serviço

- criação de regras de firewall

- geração de certificados

Tais atividades quando feitas no mesmo momento da janela de mudança, além de adicionar complexidade, também tomam precioso tempo da janela. E a política de implantação rege que se a Mudança não couber dentro da janela delimitada, é feito o backout (rollback) do que foi realizado.

Neste caso, todo o trabalho empregado para a realização da mudança é desperdiçado, sendo necessário o envio de uma nova mudança.

Vamos evitar isso!

A equipe (dev team, líderes técnicos e de operação) deve identificar as atividades assíncronas à mudança principal e enviar essas atividades para execução prévia!

Planeje bem com a equipe e teremos mais mudanças com sucesso!​​​​​​​
