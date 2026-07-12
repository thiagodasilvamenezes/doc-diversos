# Particionamento

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Particionamento

## O que é particionamento?

O particionamento de banco de dados é a espinha dorsal dos modernos sistemas de gerenciamento de banco de dados distribuídos. É um processo de dividir um grande conjunto de dados em várias porções menores colocadas em estruturas diferentes. Em outras palavras, é uma maneira de particionar tabelas e índices em partes menores, para que os dados possam ser facilmente acessados e gerenciados.

- Distribui os dados em várias partições para melhorar a disponibilidade do banco de dados, a escalabilidade e o desempenho do processamento de consultas. Os dados combinados de todas as partições são iguais aos dados do banco de dados original.

- A arquitetura de partição é transparente para o aplicativo cliente, que continua interagindo com as partições de forma semelhante a um único objeto.

## Quais são os problemas solucionados?

Com o crescimento dos serviços e da base de usuários, torna-se complicado para um único servidor ou banco de dados funcionar com eficiência. Podemos experimentar um desempenho inferior com a arquitetura de um único servidor de banco de dados. Veja algumas situações que podem surgir:

- As operações do banco de dados tornam-se mais lentas;

- O servidor de banco de dados começa a ficar sem espaço em disco;

- A largura de banda da rede começa a atingir o nível de saturação.

O particionamento em um banco de dados nos ajuda a corrigir todos os desafios acima, distribuindo dados em várias partições. Cada partição pode residir na mesma máquina (co-residente) ou em máquinas diferentes (remoto). A ideia do particionamento co-residente é reduzir o tamanho dos índices individuais e a quantidade de E/S necessária para atualizar os registros. Da mesma forma, o conceito de particionamento remoto é aumentar a largura de banda de acesso aos dados com mais RAM, evitando acesso ao disco ou tendo mais interfaces de rede e canais de E/S de disco disponíveis.

## Quando particionar uma tabela?

O particionamento pode parecer útil, mas nem todos os casos exigem que particionemos os dados. Aqui estão alguns cenários em que a partição pode ser benéfica:

- Quando as tabelas são muito grandes para caber na memória;

- Tabelas transacionais. Um bom exemplo é uma tabela contendo dados históricos, onde apenas os dados do mês atual são atualizados e os dados dos outros 11 meses são somente leitura;

- Quando os dados da tabela precisam ser distribuídos entre diferentes dispositivos de armazenamento. As tarefas de consulta tornam-se mais fáceis se os dados forem distribuídos e armazenados em diferentes servidores ou sistemas.

- O tipo de particionamento adequado ao objeto deve ser avaliado considerando o fluxo de aplicação e a característica de negócio.

## Por que particionar?

1. **Melhorar a Disponibilidade:** O particionamento de banco de dados fornece independência lógica ao banco de dados particionado, garantindo a alta disponibilidade da aplicação. A partição individual pode ser gerenciada de forma independente. Por exemplo, se uma partição não estiver disponível, todas as outras partições permanecerão disponíveis para executar consultas de banco de dados com êxito. Assim, aumenta a disponibilidade do serviço, evitando um único ponto de falha para todo o conjunto de dados;

2. **Aumentar o desempenho das consultas** : o particionamento de dados melhora o desempenho do sistema. Em vez de consultar todo o banco de dados, agora o universo de consulta se limita a um componente menor, o que aumenta o desempenho do serviço. É importante entender que o particionamento deve atender à necessidade do negócio;

3. **Melhorar a segurança** : o particionamento de dados também ajuda a melhorar a segurança do sistema armazenando dados confidenciais e não confidenciais em diferentes partições. Isso pode fornecer melhor capacidade de gerenciamento e segurança desejável para dados confidenciais;

4. **Aumentar a escalabilidade** : todo hardware apresenta certas limitações de capacidade. Com o aumento do tráfego, o desempenho dos serviços diminui. O particionamento de dados aumenta a escalabilidade distribuindo a volumetria em várias partições;

5. **Facilitar o Backup e Recuperação** : Manter os dados em diferentes partições ajuda o administrador do banco de dados a realizar operações de backup e recuperação em cada partição, independentemente das outras partições. Isso pode permitir que a partição ativa do banco de dados seja disponibilizada mais cedo para que o acesso ao sistema possa continuar enquanto os dados inativos ainda estão sendo restaurados;

6. **Melhorar a capacidade de gerenciamento do banco de dados** : a divisão de tabelas e índices em unidades menores é mais gerenciável. É um tipo de abordagem “dividir e conquistar” para gerenciamento do banco de dados, no qual o trabalho de manutenção pode se concentrar em uma partição de tabela específica.

## Conclusão

O Particionamento de Dados é a espinha dorsal dos modernos sistemas de gerenciamento de dados distribuídos. O Particionamento de Dados se mostra muito eficaz para melhorar a disponibilidade, escalabilidade e desempenho do sistema.
