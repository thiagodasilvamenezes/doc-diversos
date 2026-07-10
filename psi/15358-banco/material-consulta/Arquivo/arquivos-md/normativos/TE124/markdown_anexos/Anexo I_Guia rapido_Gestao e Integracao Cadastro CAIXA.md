# TE124 - Anexo I_Guia rapido_Gestao e Integracao Cadastro CAIXA

**Arquivo de origem:** `Anexo I_Guia rapido_Gestao e Integracao Cadastro CAIXA.pdf`

**Total de páginas:** 3

---


## Página 1

GUIA RÁPIDO – GESTÃO E INTEGRAÇÃO DO CADASTRO DE CLIENTES CAIXA 
TE 124 
1 Resumo 
Este guia compreende as regras e os procedimentos para a gestão e a 
integração do Cadastro de Clientes CAIXA com os demais Sistemas 
Corporativos. 
Público: Unidades da Matriz. 
2 Exigências 
2.1 Acesso aos sistemas 
Cadastro.CAIXA - Sistema tecnológico responsável pelo cadastro 
centralizado de clientes da CAIXA. 
GID.CAIXA - Ferramenta de gestão de demandas de TI. 
2.2 Manuais Normativos 
CR540 – Cadastro de Clientes na CAIXA 
TE105 – Procedimentos Operacionais do Sistema de Cadastro de 
Clientes CAIXA - SICLI 
3 Negocial 
3.1 Responsabilidades GECAD 
Estabelece as regras para o uso do cadastro centralizado pelos Sistemas 
Corporativos. 
Define regras de negócios para integração em conjunto os Gestores 
Negociais dos Sistemas Corporativos. 
Define, em conjunto com as áreas gestoras pertinentes, os níveis de 
acesso de usuários permitidos para cada funcionalidade. 
 
 
3.2 Responsabilidades Tecnologia 
Responsável pelas soluções tecnológicas, terceirizadas ou não, e pela 
coordenação e controle das informações das empresas terceirizadas 
responsáveis pelo desenvolvimento. 
Providencia novas implementações no SICLI, considerando os métodos e 
padrões de negócio definidos pelo Gestor. 
Garante a integração dos novos sistemas ao SICLI, por meio das equipes 
de Administração de Dados, certificando que não terão cadastros 
próprios. 
Define a metodologia adequada de integração dos novos sistemas ao 
SICLI. 
Garante a disponibilidade do SICLI e o Cadastro.CAIXA em produção, 
dentro dos padrões de desempenho, confiabilidade e segurança 
necessários. 
3.3 Responsabilidades Atendimento 
A CEATI, sob supervisão da GETRS, é a unidade responsável pelo 
atendimento aos usuários do Cadastro.caixa. 
Assegura a orientação operacional, apoio normativo, desempenho e 
navegação do aplicativo, conforme Acordo de Serviços. 
3.4 Responsabilidades Área Gestora de Sistemas 
Participa juntamente com a GECAD e Gestores Negociais dos Sistemas 
Corporativos da definição das regras de negócios para implementação 
no SICLI. 
Promove as implementações necessárias decorrentes das definições 
constantes nas regras de negócios. 
Informa à GECAD a necessidade de inclusão/alteração/exclusão nas 
definições existentes, enviando todas as informações pertinentes para 
elaboração de especificação, para a implementação no SICLI.



## Página 2

GUIA RÁPIDO – GESTÃO E INTEGRAÇÃO DO CADASTRO DE CLIENTES CAIXA 
TE 124 
3.5 Responsabilidades Gestor Negocial dos Sistemas Corporativos 
Participa, juntamente com a GECAD e gestor de sistemas, da definição 
das regras de negócios para implementação no SICLI e nos sistemas em 
integração com relação às informações dos produtos e dados sob sua 
gestão. 
Define o plano de integração ao SICLI dos produtos já existentes e dos 
novos produtos. 
3.6 Responsabilidades Área de Segmento de Clientes 
Informa à GECAD a necessidade de inclusão e/ou alteração nas 
definições existentes no cadastro de clientes CAIXA. 
Avalia as sugestões de alteração e otimização no cadastro de clientes 
CAIXA para implementação no SICLI. 
3.7 Responsabilidades Área de Canais 
Participa, juntamente com a GECAD e gestor de sistemas, da definição 
das regras de negócios para implementação no SICLI e nos canais em 
integração. 
Valida, quando necessário, a definição das regras de negócios para 
implementação no SICLI e nos canais em integração. 
4 Operacional Passo a Passo 
4.1 Integração de novos sistemas ao SICLI 
❖ Formalização da necessidade de integração: o Gestor Negocial do 
Sistema Corporativo informa o sistema candidato a integração, as 
informações cadastrais e as funcionalidades necessárias para a 
integração com o SICLI. 
❖ Avaliação dos gestores: a GECAD avalia e identifica a aderência da 
integração dos sistemas e os gestores envolvidos validam as regras de 
negócios. 
❖ Anteprojeto: a área de Tecnologia define a solução tecnológica mais 
adequada para a integração entre os sistemas. 
❖ Projeto: a área de Tecnologia desenvolve a nova funcionalidade, 
conforme o anteprojeto aprovado. 
❖ Homologação: o gestor negocial elabora em conjunto com a GECAD 
o plano de testes, tendo como base as peculiaridades do sistema em 
integração e as especificações contidas nas Regras de Negócios. É 
realizada no ambiente de desenvolvimento e homologação do SICLI, do 
Cadastro.CAIXA e no ambiente correspondente do sistema em 
integração definido pela área de Tecnologia.  
4.2 Integração de sistemas legados ao SICLI 
❖ Formalização da necessidade de integração: o Gestor Negocial do 
Sistema Corporativo informa o sistema candidato a integração, as 
informações cadastrais e as funcionalidades necessárias para a 
integração com o SICLI. 
❖ Mapeamento das informações cadastrais: GECAD realiza em 
conjunto com o gestor demandante e área de Tecnologia. 
❖ Avaliação dos gestores: GECAD identifica aderência e as áreas 
envolvidas elaboram regras de negócios. 
❖ Homologação: gestor negocial elabora em conjunto com a GECAD o 
plano de testes, tendo como base as peculiaridades do sistema em 
integração e as especificações contidas nas Regras de Negócios. As 
implementações são liberadas pela área de Tecnologia para 
homologação pelo gestor negocial do sistema e pela GECAD, em 
ambiente próprio, antes da liberação para lançamento em produção. 
❖ Identificação de COCLI: GECAD localiza os COCLI dos clientes na 
base do SICLI incluindo-os no arquivo e retorna ao gestor negocial para 
armazenamento na base do sistema em integração.



## Página 3

GUIA RÁPIDO – GESTÃO E INTEGRAÇÃO DO CADASTRO DE CLIENTES CAIXA 
TE 124 
❖ Homologação da carga cheia e da carga incremental: gestor 
negocial do Sistema corporativo homologa a carga de informações no 
SICLI. 
❖ Encaminhamento das cargas cheias e incrementais em produção. 
4.3 Processamento no SICLI 
❖ Registros acatados: Gestor Negocial do Sistema Corporativo 
garante a gravação dos dados cadastrais na base do Sistema Legado, 
a partir da criação destes campos na sua base. 
❖Registros rejeitados: Gestor Negocial do Sistema Corporativo analisa 
as causas da rejeição, efetiva as devidas correções e reenvia carga com 
os registros rejeitados. 
❖ Envio de informação ao BACEN: Gestor Negocial do Sistema 
Integrado informar à GECAD a necessidade de marcar o produto ou 
não para envio de informações ao CCS. 
4.4 Procedimentos 
para 
cadastramento 
e 
acesso 
– 
ambiente 
homologação 
❖ Gestor negocial do sistema corporativo define quais usuários têm 
acesso ao ambiente e solicita cadastramento via FICUS. 
❖ SUDEB autoriza a FICUS e envia à CEPTI/BR para cadastramento do 
usuário no RACF.

