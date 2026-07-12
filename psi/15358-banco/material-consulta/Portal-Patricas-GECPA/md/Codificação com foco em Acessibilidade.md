# Codificação com foco em Acessibilidade

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Capítulos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Capitulos.aspx) >> [Capítulo de Codificação](https://caixa.sharepoint.com/sites/Desenvolvedores) >> Codificação com foco em Acessibilidade

**Introdução**

A acessibilidade digital é um princípio fundamental no desenvolvimento de soluções de TI, especialmente em ambientes públicos, onde o acesso universal aos serviços é um direito garantido por lei. O documento OR179 estabelece requisitos mínimos que devem ser observados para garantir que sistemas e aplicações sejam acessíveis a todos os cidadãos, incluindo pessoas com deficiência.

## **Definições para entender melhor a Acessibilidade**

- **eMAG** : O Modelo de Acessibilidade em Governo Eletrônico é um conjunto de recomendações que devem ser seguidas para que não existam barreiras digitais nas páginas web, e com isso, as oportunidades de acesso aos serviços e informações do governo sejam as mesmas para todos os brasileiros, quer tenham alguma deficiência ou não. ( [Link](https://emag.governoeletronico.gov.br/) )

- **WCAG** (Web Content Accessibility Guidelines): Conjunto de diretrizes internacionais criado pelo W3C para garantir que conteúdos web sejam acessíveis a todos, incluindo pessoas com deficiência. Ele se baseia em quatro princípios: perceptível, operável, compreensível e robusto. O modelo brasileiro eMAG adapta essas diretrizes para o contexto do governo eletrônico no Brasil.( [Link](https://www.w3.org/WAI/translations/#pt-BR) )

- **Scrum** : Aplicado como uma metodologia ágil voltada principalmente para projetos de tecnologia da informação, mas também pode ser usada em outras áreas que demandam entregas rápidas, colaborativas e adaptáveis.( [Link](https://www.scrum.org/) )

- **Cartilha de Codificação dos Padrões Web em Governo Eletrônico** (ePWG): resultado do Projeto Padrões Web em Governo Eletrônico e-PWG, do Programa de Governo Eletrônico do Governo Federal (www.governoeletronico.gov.br) - que fornece recomendações de boas práticas na área digital, com o objetivo de aprimorar a comunicação, o fornecimento de informações e serviços prestados por meios eletrônicos pelos órgãos do Governo Federal. ( [Link](https://epwg.governoeletronico.gov.br/cartilha-codificacao.html) )

## **Metodologias para Desenvolvimento Acessível**

A adoção de metodologias ágeis e centradas no usuário é essencial para garantir a acessibilidade desde as fases iniciais do desenvolvimento. Faça o levantamento de requisitos considerando a acessibilidade, e realize o acompanhamento contínuo da conformidade sempre levando em conta os manuais normativos vigentes.

- Exemplo: Durante a etapa de ideação no desenho da ideia, incluir, se possível, PCDs para validar necessidades específicas.

## **Boas Práticas no Ciclo de Desenvolvimento**

- **Planejamento** : Incluir requisitos de acessibilidade desde a fase de levantamento.

- **Design** : Aplicar princípios de design universal, descritos com mais detalhes na página do Capítulo de UX: [Guia-Design-Acessivel-Principal](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-Design-Acessivel.aspx) .

- **Desenvolvimento** : Seguir padrões indicados sobre acessibilidade. Exemplo: eMAG.

- **Testes** : Validar acessibilidade em cada sprint. Realizar testes com leitores de tela. Exemplos de leitores de tela: NVDA e VoiceOver. Validar contraste e navegação por teclado em cada entrega.

- **Documentação** : Registrar conformidade e pendências de acessibilidade.

## **Padrões técnicos**

Os padrões técnicos adotados pela Caixa devem estar alinhados aos padrões de acessibilidade. Esses padrões estão disponíveis na página de Guia para um Design Acessível em [Guia-Design-Acessivel-Principal](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-Design-Acessivel.aspx) e na página do [Capítulo de Acessibilidade Digital](https://caixa.sharepoint.com/sites/AcessibilidadeDigital/SitePages/AcessibilidadeDigital.aspx) .

- Nesses guias acima temos os itens: - Uso de HTML semântico. - Uso de ARIA roles, que são atributos HTML que definem a função ou propósito de um elemento na página, especialmente para tecnologias assistivas como leitores de tela. - Garantia de responsividade e escalabilidade. - Compatibilidade com tecnologias assistivas. - Validação contínua com o uso de ferramentas automáticas de avaliação de acessibilidade WEB. Exemplo: [ASES WEB – Avaliador automático de Acessibilidade](http://asesweb.governoeletronico.gov.br/) .

## **Exemplos de Requisitos de Acessibilidade na Codificação**

Listamos abaixo alguns exemplos que estão detalhados com código na página Guia para um Design Acessível em [Guia-Design-Acessivel-Principal](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-Design-Acessivel.aspx) e na página do [Capítulo de Acessibilidade Digital](https://caixa.sharepoint.com/sites/AcessibilidadeDigital/SitePages/AcessibilidadeDigital.aspx) .

## **Interface e Navegação**

- Utilizar estrutura semântica HTML adequada (ex: <header>, <nav>, <main>, <footer>).

- Garantir navegação por teclado completa.

- Implementar foco visível nos elementos interativos.

- Exemplo: Ao desenvolver um formulário, utilizar `<label>` associado ao campo de entrada e garantir que o foco do teclado percorra todos os elementos interativos.

## **Conteúdo Alternativo**

- Imagens devem conter atributos alt descritivos.

- Vídeos devem ter legendas e audiodescrição.

- Documentos devem ser disponibilizados em formatos acessíveis (ex: PDF tagueado).

## **Contraste e Cores**

- Garantir contraste mínimo de **4.5:1** entre texto e fundo.

- Evitar uso exclusivo de cores para transmitir informações.

## **Responsividade e Escalabilidade**

- Interfaces devem ser adaptáveis a diferentes tamanhos de tela.

- Permitir zoom de até 200% sem perda de funcionalidade.

## **Validação e Testes**

- Utilizar ferramentas automáticas de avaliação de acessibilidade WEB.

- Exemplos de ferramentas automáticas de avaliação de acessibilidade WEB, o endereço de acesso e os padrões que a ferramenta pode avaliar.

| Ferramenta | URL | Padrões que pode verificar |
| --- | --- | --- |
| ASES WEB – Avaliador Automático de Acessibilidade | http://asesweb.governoeletronico.gov.br | eMAG (Brasileiro) |
| Access Monitor | http://www.acessibilidade.gov.pt/accessmonitor/ | WCAG 1.0 (Internacional) WCAG 2.0 (Internacional) |
| Achecker | http://achecker.ca/checker/index.php | WCAG 1.0 (Internacional) WCAG 2.0 (Internacional) BITV 1.0 (Alemão) Section 508 (Americano) Stanca Act (Italiano) |

- Afirmar que uma página ou serviço web é de fato acessível somente pode ocorrer após esta ser submetida a validação humana.

## **Conclusão**

A incorporação dos requisitos mínimos de acessibilidade definidos no OR179 não é apenas uma exigência legal, mas um compromisso com a inclusão digital. Ao seguir essas diretrizes, os desenvolvedores contribuem para uma sociedade mais justa e equitativa, garantindo que todos possam acessar e utilizar os serviços digitais com autonomia e dignidade.
