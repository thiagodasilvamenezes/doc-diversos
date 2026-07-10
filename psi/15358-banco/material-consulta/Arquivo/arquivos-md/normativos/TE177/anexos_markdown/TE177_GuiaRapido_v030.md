# TE177_GuiaRapido_v030

> Arquivo de origem: `TE177_GuiaRapido_v030.pdf`
> Páginas: 3

## Metadados do PDF

- **format**: PDF 1.7
- **title**: TE177
- **author**: Barbara Tamisa Florentino da Silva
- **creator**: Microsoft® Word para Microsoft 365
- **producer**: Microsoft® Word para Microsoft 365
- **creationDate**: D:20250508164741-03'00'
- **modDate**: D:20250508164741-03'00'

---

<!-- Página 1 -->

## DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS

#INTERNO.TODOS                                                                                                    TE 177
1 Resumo
Este guia rápido apresenta de forma resumida os passos que devem ser
percorridos pelo usuário para o desenvolvimento de aplicativos.
Público: Empregados CAIXA e terceirizados.
2 Exigências/Links
2.1  Acesso aos sistemas
http://ppds.caixa - Padrões e processos de desenvolvimento de aplicativos
2.2  Normativos/MO
✓ Aplicativos de Negócios [MN, TE183];
✓ Arquiteturas de Soluções Tecnológicas [MN, TE192];
✓ Backup Negocial [MN, TE214];
✓ Caderno de TI [MN, TE097];
✓ Compartilhamento de dados [MN, TE109];
✓ Continuidade de Negócio [MN, PC020] e [MN, TE247];
✓ Desativação de sistemas http://ppds.caixa/
✓ Descaracterização de dados de produção [MN, TE106];
✓ Diretrizes de Qualidade [MN, TE102];
✓ Diretrizes de segurança [MN, OR016], [MN, PO007], [MN, TE079],
[MN, TE159], [MN, TE197] e [MN, TE232];
## ✓ ETL [MN, TE172];
✓ Gerenciamento de mudanças de TI [MN, TE216]
✓ Gerenciamento Eletrônico de Documentos [MN, AD238];
✓ Gestão de metadados [MN, TE174];
✓ Grande porte [MN,TE146];
✓ Modelagem de dados [MN, TE074];.
✓ Padroes Arquiteturais [MN,TE111].
✓ Padrões para identificação ambiente de grande porte [MN, TE080];
✓ Portal de Demandas para a TI [MN, TE228]
✓ Programas gerados pelo CA-GEN [MN,TE086];
✓ Qualificação de dados [MN, TE169];
✓ Sistemas de informação [MN, TE073];
✓ SOA – Arquitetura Orientada a Serviços [MN, TE182];
3 Operacional Passo a Passo
3.1  Novo Desenvolvimento
1º
Obtém o template do documento, por meio de download no
PPDS.CAIXA Modelos – Processos – Caso de Desenvolvimento
(sharepoint.com)
A função de download é liberada para todos os empregados
da unidade, exceto se a página estiver em manutenção. Neste
caso é necessário procurar a Célula Especializada em
Desenvolvimento da GEPAC.
2º
Configura o processo com o ciclo de vida adotado, lista os
produtos de trabalhos a serem gerados e onde serão
armazenados.
3 º
Verifica necessidade de aprovação excepcional junto aos
Capítulos.


---

<!-- Página 2 -->

## DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS

#INTERNO.TODOS                                                                                                    TE 177
3.2  Manutenção de Aplicativos
1º
Obtém o template do documento, por meio de download no
PPDS.CAIXA Métricas - Análise de Impacto de Mudança para
Manutenção (AIMM)
✓ Na manutenção de aplicativos deve ser realizada uma
análise do impacto do que será alterado, sendo que os
produtos de trabalho afetados devem ser registrados na
## AIMM.
✓ Os
produtos
de
trabalho
impactados deverão
ser
versionados.
✓ As AIMMs  deverão ser versionadas e armazenadas, ao
longo do ciclo de vida de um sistema, compondo o histórico
do sistema
✓ A AIMM deve observar todos os produtos que deverão ser
gerados/alterados e entregues.
✓ A AIMM  é a base para as verificações e inspeções quanto
ao cumprimento do processo de manutenção.
2º
Atualiza os produtos de trabalho passiveis de alteração em
decorrência da manutenção que estão registrados no Caso de
Desenvolvimento, controla a versão de acordo com o plano de
release do sistema.
3.3  Customizar o Processo
3.3.1 Processo de UX
1º
Aciona UX designer;
2º
Planeja junto ao time quais são as práticas que serão aplicadas;
3º
Solicita a atualização no Design System para novos
componentes gerados.
3.3.2 Arquitetura
1º
Submeter à área de arquitetura sempre que identificada:
✓ Necessidade de nova solução tecnológica;
✓ Revisão ou definição de arquitetura de aplicativos.
3.4  Codificação
1º
✓ Codifica as funcionalidades conforme requisitos/regras de
negócio e arquitetura definida
2º
✓ Elabora e executa os artefatos de testes previstos no
processo de qualidade e segurança
✓ Busca automatização eficiente, escalável e contínua dos
testes
3º
✓ Inspeciona código com as ferramentas especializadas
✓ Prioriza, atualiza e evolui continuamente os testes,
contemplando minimamente: os artefatos associados aos
testes unitários, de integração, funcionais e não funcionais;
testes de segurança e a análise estática de código-fonte
passível de inspeção pelas ferramentas de qualidade e
segurança.
3.5  Aprovação
1º
Disponibiliza produtos de trabalho para avaliação e aprovação
do representante do negócio (a cada contratação, iteração ou
sprint realizada):

---

<!-- Página 3 -->

## DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS

#INTERNO.TODOS                                                                                                    TE 177
✓ Especificação de Requisitos;
✓ Descrição de Interface;
✓ Protótipos;
✓ Regras de negócio;
*Metodologia ágil: aprovação tácita dos produtos de trabalho
e a aprovação tácita do custo do Item de Backlog.
2º
Certifica que os artefatos estão nos repositórios oficiais.
3.6  Elaborar Produtos de Trabalho
1º
Elabora ou atualizas os produtos previstos no Caso de
Desenvolvimento ou Análise de Impacto para Manutenção,
conforme o caso, respeitando os produtos mínimos citados no
item [MN, TE177, 3.1.6]
2º
Garante o encadeamento dos ciclos de entrega: ao final de um
ciclo, inicia-se o planejamento do próximo ciclo.
3º
Prioriza a simplicidade, a revisão por pares, a integração
contínua, a propriedade coletiva do código e a refatoração

Prioriza a utilização das esteiras devops corporativas ou a
migração quando possível.
5º
Certifica que todos os códigos-fonte construídos se encontram
em repositório oficial;
6º
Gera uma versão íntegra e completa do aplicativo, a qualquer
tempo,
exclusivamente
por
meio
dos
códigos-fonte
armazenados em repositório oficial e, preferencialmente, de
forma automatizada.

3.7  Aceitar o Produto
1º
Aprova os aplicativos entregues e suas versões
2º
Ratifica o funcionamento do sistema ou da nova versão em
atendimento aos requisitos (funcionais, não funcionais e de
segurança)
3º
Considera a existência, não só do código fonte, mas dos demais
artefatos previstos no Caso de Desenvolvimento/AIMM,
referentes à versão do produto a ser implantada.
3.8  Acompanhar o Produto em Produção
1º
Acompanha a implantação e o funcionamento do produto em
ambiente produtivo, buscando identificar oportunidades de
melhoria, pelo tempo que for definido entre o time e o
Representante(s) da área de negócio e área de produção de TI.
