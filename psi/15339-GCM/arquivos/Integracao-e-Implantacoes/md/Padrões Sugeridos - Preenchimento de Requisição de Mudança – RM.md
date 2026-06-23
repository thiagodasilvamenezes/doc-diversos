# Padrões Sugeridos - Preenchimento de Requisição de Mudança – RM


# Página 1

 
 
Padrões Sugeridos - Preenchimento de Requisição de Mudança – RM 
 
Sumário 
Orientações Gerais: ....................................................................................................................... 2 
Aba – Registro ............................................................................................................................... 2 
Aba – Avaliação de Risco ............................................................................................................... 4 
Aba – Validação ............................................................................................................................. 6 
Aba – Verificação Negocial ............................................................................................................ 7 
Aba – Plataforma NT / Linux / VMS / Ponta Cliente ..................................................................... 8 
Aba – Unix / Solaris ....................................................................................................................... 9 
Aba – Mainframe Batch .............................................................................................................. 10 
Aba – Mainframe Online ............................................................................................................. 11 
Aba – Banco de Dados ................................................................................................................. 12 
Aba – Segurança .......................................................................................................................... 13 
Aba – Armazenamento ................................................................................................................ 14 
Aba –API ...................................................................................................................................... 14 
Aba – Documentos de Testes ...................................................................................................... 15 
Aba – Termo de Liberação .......................................................................................................... 15 
Aba – Arquitetura ........................................................................................................................ 16 
Aba – Links: ................................................................................................................................. 17 
Aba – Histórico: ........................................................................................................................... 17 
Fontes: ......................................................................................................................................... 17 
 
  

# Página 2

 
 
Orientações Gerais: 
Toda requisição de mudança deve possuir link (relacionado) com as demandas a serem 
implantadas (Demanda de Novo Sistema, Demanda de Manutenção de Sistema, Serviço 
Técnico Especializado e/ou Defeito). 
O que é a RM? 
É um formulário, no RTC, utilizado para solicitar a implantação de mudança de sistemas, nos 
ambientes de homologação (HMP) e produção (PRD), por meio da integração com a 
ferramenta ITSM. 
 
 
 
“*” – Campos obrigatórios 
Aba – Registro  
 
Bons Exemplos: (19684158 – 20205083 - 20514075 – 20308287 – 20214273) 
 
1. Registro (seção): 
1.1. ID da Mudança na Produção:  
Número da RM gerado pelo RTC (CRQ000000000000). 
 
1.2. Classe de Mudança: Normal / Emergência / Não Planejada (*) 
- Emergência: 
Mudança provocada por ocorrência ou situação que cause indisponibilidade em 
sistemas/serviços de TI e que requer correção tempestiva. As etapas de homologação, 
de validação pós-implantação e de plano de retorno não são obrigatórias nessa classe 
de mudança. 
Esta classe é utilizada para correção de: 
- Indisponibilidade em sistemas/serviços de TI, classificado como Incidente de 
impacto Extensivo/Difundido (nível 1); 


# Página 3

 
 
- Abend em processamento batch, classificado como Incidente de impacto 
Menor/Localizado (nível 4) relacionado ao IC específico do módulo batch do sistema.  
O número do incidente relacionado deve ser informado no momento da abertura da 
RM – Requisição de Mudança. 
- Não Planejada: 
Mudança decorrente de uma demanda intempestiva, sem prazo hábil para 
atendimento dentro da classe normal e que decorre da estratégia da CAIXA.  
Também se enquadram nessa classificação as mudanças que possuem restrições 
técnicas para definição/execução de plano de retorno e/ou que necessitem de 
implantação direta em produção sem passar pelo processo de homologação, 
conforme MN TE102.  
Toda mudança desta classe necessita de autorização de atendimento, conforme 
alçada definida. 
- Normal: 
Mudança que precisa ser programada, avaliada e autorizada por fóruns de 
deliberação, de acordo com o risco associado, seguindo um processo padrão.  
A mudança classificada com alto risco será deliberada pela Alta Gestão. 
 
1.3. Informe o motivo da Mudança Não Planejada: 
(Conflito de Agenda / Correção de erro conhecido / Necessidade do cliente/empresa / 
Tempo de entrega insuficiente / Não designado) 
 
1.4. Ambiente RM (obrigatório) 
Ambiente onde será aplicada a mudança. 
(Produção - Homologação - Homologação/Produção - Não designado) 
 
1.5. Unidade Executora (*) 
Unidade CAIXA responsável pela aplicação da mudança. 
(7259-CEPTI/BR - 7260-CEPTI/RJ - 7261-CEPTI/SP - 7262-GIICP/BR – 7562-CEAUS); 
 
1.6. Nº de Incidente relacionado: 
Número de incidente relacionado a mudança (INC000000000000), caso exista. 
Caso a mudança seja emergencial esse campo se torna obrigatório. 
 
1.7. Planejado para (Versão): 
Versão/Iteração do sistema em que a RM deverá será implantada. 
 
1.8. Expectativa para o fim da implantação: 
Data e hora prevista para implantação da mudança. 
 
1.9. Palavras-chave: 
Termos chave que auxiliem a busca, TAGs padronizadas. 
 
2. Contatos (responsáveis pela mudança) 
Pessoas de Contato para tratamento da RM. 
2.1. Técnico (DES):  / Telefone (Técnico): 
2.2. Gerente (DES): / Telefone (Gerente): 

# Página 4

 
 
2.3. Gestor de Negócio (ciência Emergência):  / Telefone (Negócio): 
 
3. Manual Operacional do Sistema 
3.1. O Manual Operacional do Sistema (Wiki) foi atualizado? 
(Sim / Não) 
3.2. Caso não esteja na wiki, informar o caminho do repositório: 
 
4. Janela para implantação: 
4.1. Janela de Implantação 
Janelas que será utilizada para disponibilizar a implantação. 
4.1.1.  Antes da Diária 
4.1.2.  Depois da Diária 
4.1.3.  Após o fechamento do online 
4.1.4.  Antes da abertura do online 
4.1.5.  Concorrente à diária 
4.1.6.  Concorrente ao online 
 
4.2. Restrição de Implantação: 
Informar os impeditivos levantados para implantação. 
Ex.: Executar a mudança após o fechamento do online de sexta-feira e antes da 
abertura do online de segunda-feira. 
 
4.3. Observação: 
Observações gerais da RM. 
 
 
 
Aba – Avaliação de Risco 
 
Bons Exemplos: ( 20551744 – 20425492 – 20542361 – 20308287 – 19684158 – 20163594) 
 
1. Avaliação do Risco da Mudança: 
1.1. As alterações impactam no caminho crítico do serviço/sistema? 
(Sim / Não) 
1.2.  Se SIM, especifique as principais funcionalidades/serviços críticos impactados. 
Descrição do impacto e os serviços críticos impactados. 
Ex.: 1) Armazenamento e visualização dos cheques CAIXA no SICCV e internet banking. 
2)  
1.3. A mudança está relacionada a outra(s) mudança(s) e/ou envolve outros sites? 
(Não designado / Sim / Não) 
1.4. Liste a(s) Requisição(ões) de Mudança(s) que precisam ser executadas na mesma 
janela de implantação (se aplicável). 
Ex.: Mudança RM/CRQ precisa ser executada antes. 
1.5. E/ou, liste os demais sites de operação envolvidos na implantação desta mudança. 

# Página 5

 
 
1.6. A mudança corrige outra(s) Requisição(ões) de Mudança já aplicada(s)? 
1.7. A mudança impacta em outros sistemas/ serviços? 
(Não designado / Sim / Não) 
1.8. Se SIM, informe os sistemas que serão afetados. 
Ex. SIART. Pode causar atraso no processamento batch. 
1.9. Haverá interrupção dos serviços que deveriam estar disponíveis, durante a execução 
da mudança? 
(Não designado / Sim / Não) 
1.10. A versão que está sendo implantada foi testada de forma integrada? 
(Não designado / Sim / Não) 
1.11. Existe plano de retorno definido? 
(Não designado / Sim / Não) 
1.12. Detalhe abaixo o plano de retorno, incluindo, justificativas caso não seja 
possível sua execução 
PRÉ-CONDIÇÕES:  
Ex.: Executar as tarefas na seguinte ordem: 
 
1) Banco de Dados: 
Descrição das Ações de banco. 
 
2) Servidor de INTRANET 
Descrição das atividades: 
Ex.: Voltar o backup do pacote X, Y, Z (seja específico) ... 
 
3) Servidor de INTERNET 
Descrição das atividades: 
Ex.: Voltar o backup do pacote X, Y, Z (seja específico)... 
 
4) Mainframe Batch: 
Descrição das atividades: 
. 
. 
. 
 
 
1.13. Em caso de execução de rotina(s) que atualiza(m) a base, existe commit 
intermediário? 
(Sim / Não) 
1.14. Se SIM, informe a periodicidade do commit. 
1.15. Termo de ciência – Análise de risco de mudança. 
1.16. Nível de risco 
Nível de risco atribuído a mudança. 
 

# Página 6

 
 
Aba – Validação 
 
Bons Exemplos: ( 20425492 - 20163594 -20514075 – 20308287) 
 
1. Detalhes da mudança 
1.1. Justificativa negocial: 
O que essa mudança (serviço, funcionalidade, sistema) pretende atender de melhoria 
e/ou correção. 
Ex.: 1) Armazenamento e consulta de cheques de contas NSGD; 
2) Migração de infraestrutura sjass para jboss. 
 
1.2. Possíveis impactos da não aplicação em Produção: 
Se por algum motivo qualquer a implantação for negada e/ou postergada, qual o 
impacto da não implantação. 
Ex.: Funcionalidade ABC do sistema continuará com erro, ou Demanda legal do BACEN 
não será atendida. 
1.3. Possíveis impactos da aplicação em Produção: 
Se algo der errado na mudança o que será impactado. 
Ex.: 1) Não permitir a Liquidação por Portabilidade via SIGEC para os contratos de 
veículos. 
2) Caso haja algum erro nesta demanda, seja em seu atendimento ou na própria 
aplicação, é possível que haja impacto nas seguintes funcionalidades: X, Y e Z. 
 
2. Validação 
2.1. Descreva o escopo e os tipos de testes realizados: 
Ex.: Foi testado o caminho crítico e realizados os testes integrados no ambiente X. 
2.2. Descreva o escopo da homologação realizado pela área gestora. 
Ex: Foi homologado todo o fluxo básico e pelo menos um alternativo de cada 
funcionalidade alterada. 
2.3. O preenchimento de todas as abas da mudança foi verificado? 
(Não designado / Sim / Não) 
 
3. Comentários 
 
4. Checklist -  
Preenchimento exclusivo da célula de autorização da mudança 
4.1. Registro 
4.1.1. O objetivo principal da requisição de mudança está descrito no campo resumo? 
4.1.2. A data de implantação está posterior a data atual? 
4.1.3. Existem demandas (DNS, DMS, STE, Defeito) relacionadas a Requisição de 
Mudança? 
4.2. Autorização 
4.2.1. Há plano de retorno? 
4.2.2. Caso positivo, o plano de retorno está detalhado? 
4.2.3. Caso não haja plano de retorno, a CEDES informou o motivo? 
4.2.4. A caixa do campo “Termo de ciência” está selecionada? 
4.3. Validação 

# Página 7

 
 
4.3.1. Caso haja testes da ti, os testes da mudança foram detalhados? 
4.3.2. Caso não haja testes da ti, a CEDES informou o motivo? 
4.3.3. O gestor homologou a demanda? 
4.3.4. Existe o detalhamento da Justificativa da Mudança? 
4.3.5. Existe o detalhamento dos possíveis impactos da aplicação em produção? 
4.3.6. Existe o detalhamento dos possíveis impactos da não aplicação em produção? 
4.4. Verificação Negocial 
4.4.1. O campo “Termo de compromisso” está preenchido com nome e telefone do 
gestor responsável pela verificação? 
4.4.2. Em caso de implantação emergencial, o “Termo de ciência de implantação 
emergencial” está selecionado? 
 
Aba – Verificação Negocial 
 
Bons Exemplos: ( 20425492 – 20205083 – 20214273 – 20213464) 
 
1. Detalhes da Verificação 
1.1. Informe o roteiro de verificação do serviço a ser executado pelo gestor após a 
implantação da mudança.: 
Ex.: 1) O Gestor deverá navegar no sistema na URL https://siXXX.caixa em todos os 
menus. Verificar o sucesso na execução dos batchs que fazem a carga dos arquivos e 
guarda da imagem. 
2) O Gestor deverá verificar se as aplicações online apresentam funcionamento 
normal, com exceção das consultas de desembolso consolidado com destino SIACC e 
SIDEC. 
 
1.2. Tempo necessário para execução do roteiro de verificação indicado: 
Ex.: XX horas. 
 
2. Termo de compromisso - Verificação pós-implantação 
2.1. Gestor responsável pela verificação: 
2.2. Telefone de contato (cel): 
2.3. Declaro estar ciente do escopo a ser avaliado e assumo o compromisso de realizar a 
verificação do serviço envolvido e registro do resultado neste item de trabalho, após a 
implantação da mudança.: 
(Não se aplica / Sim) 
 
3. Resultado da verificação 
Ex.: 1) Validamos as implantações realizadas para novas funcionalidades de tarifas no 
SIXXX. 
2) No momento da validação o sistema está operacional. 
 
4. Termo de ciência do gestor de implantação emergencial 
4.1. Declaro estar ciente da implantação da mudança emergencial para restabelecimento 
tempestivo do serviço sob minha responsabilidade. 
4.2. Informações complementares (caso necessário) 

# Página 8

 
 
 
 
Aba – Plataforma NT / Linux / VMS / Ponta Cliente 
 
Bons Exemplos: (20425492 - 20536856) 
 
1. Tipos de itens modificados 
1.1. Páginas / Pacote 
1.2. Componentes (HIS , MDAC, MJET, API/DLL, etc.) 
1.3. Rotina Batch 
1.4. Outros (Staffware, Site Server, etc.) 
1.5. Execução de Query 
1.5.1. Update 
1.5.2. Insert 
1.5.3. Delete 
 
2. Detalhamento das Atividades 
Esta atividade deverá ser planejada em conjunto com o Agente de Operações. 
 
Ex.:  
1. Atividade do SUPORTE 
1.1   Servidor do SIXXX INTRANET 
1.1.1   Efetuar backup das configurações no domain.xml do JBoss EAP 6.4 do SIXXX 
INTRANET 
1.1.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas  
 
1.2   Servidor do SIXXX INTERNET 
1.2.1   Efetuar backup das configurações no domain.xml do JBoss do SIXX INTERNET 
1.2.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas  
 
2. Solicitamos alteração do GSLB do sixxx.caixa de 10.XXX.XX.XX para 10.XXX.XX.XX. 
 
2.1   Na virada de chave 
2.1.1  Habilitar os IPs (JBOSS)  
2.1.2.  Desabilitar os IPs (SJSAS): 
. 
. 
. 
3. Há execução de deploy?(NT/Linux) 
(Não designado / Sim / Não) 
4. Existe interdependência com outras rotinas/atividades(NT/Linux) 
(Sim / Não) 
5. Há execução de rotina(NT/Linux)? 
(Sim / Não) 
6. Se sim, a rotina pode ser interrompida? (NT/Linux) 
(Sim / Não) 

# Página 9

 
 
 
Aba – Unix / Solaris 
 
Bons Exemplos: ( 20425492 - 20551744 - 20506658 - 20214273 – 20417078 ) 
 
1. Tipos de itens modificados 
1.1. Pacote para Deploy - SJSAS/JBOSS 
1.2. Pacote para Deploy - Conteúdo estático (SJSWS, APACHE) 
1.3. Documento de Deploy (SIT) 
1.4. Bibliotecas e versões a serem utilizada 
1.5. Rotinas Batch 
1.6. Nome da url da Aplicação 
1.7. Nome do diretório para armazenamento da parte estática 
1.8. Instância Serv. de aplicação 
1.8.1. Infra 
1.8.2. Inter 
1.8.3. Extra 
1.8.4.  
1.9. Sistemas e Módulos impactados / envolvidos 
1.10. Outros (Staffware, JVM, SJS, MQ, etc.) 
 
2. Existe interdependência com outras rotinas/atividades (Unix/Solaris)? 
(Sim / Não) 
3. Detalhamento das Atividades 
Esta atividade deverá ser planejada em conjunto com o Agente de Operações. 
 
Ex.: OBSERVAÇÕES: 
Demanda para implantação em servidores JBoss EAP 6.4 
As rotinas batchs não devem estar em execução no momento do atendimento da 
mudança. 
Mudança deve ser atendida após o final da diária e antes da abertura do online. Após o 
atendimento das Requisições de Mudança XXXXX do SIXXX. 
==================================================================== 
1. Atividade do DEPLOY 
1.1   Servidor do SIXXX INTRANET 
1.1.1 Efetuar backup do pacote sixxx.ear deployado nos servidores JBOSS da INTRANET 
1.1.5  Obter os novos pacotes no servidor 
1.1.6  Deploy do pacote online  sixxx-intra-ear.ear 
1.1.7  Deploy do pacote estático  sixxx.jar 
 
1.2   Servidor do SIXXX INTERNET 
1.2.1 Efetuar backup do pacote sixxx.ear deployado nos servidores JBOSS da INTERNET. 
1.2.3 Obter os pacotes no servidor 
1.2.4 Deploy do pacote online  sixxx-inter-ear.ear 
1.2.5 Não há deploy do estático no SIXXX INTERNET 
==================================================================== 

# Página 10

 
 
2. Atividades Produção 
2.1 Efetuar backup dos programas batch a seguir no servidor XXX 
sixxx-batch01.jar 
sixxx-batch04.jar 
 
2.2 Atualizar binários: 
2.3 Servidor xxxx 
2.3.1 Efetuar backup dos programas: X, Y, Z. 
 
2.3.2 Atualizar binários: 
2.3.3 Atualizar arquivos (ux0252 para lx383): 
. 
. 
. 
4. Há execução de rotina(Unix/Solaris)? 
(Sim / Não) 
5. Se sim, a rotina pode ser interrompida(Unix/Solaris)? 
(Sim / Não) 
 
 
Aba – Mainframe Batch 
 
Bons Exemplos: ( 20425492 – 20451256 - 20417078 - 20514075 – 20308287 ) 
 
1. Tipos de itens modificados 
1.1. Programas Batch 
1.2. Alteração de JCL, Proc e Sysin 
1.3. Outros (Staffware, MQ, Content Manager, etc.) 
1.4. Execução de Query 
1.4.1. Update 
1.4.2. Insert 
1.4.3. Delete 
2. Detalhamento das tarefas (segregue conforme itens selecionados): 
Ex.: OBSERVAÇÕES 
As solicitações abaixo SOMENTE deverão ser atendidas APÓS as catalogações e 
implantações do SIXXX 
As catalogações das books deverão ocorrer ANTES da catalogação das sub-rotinas e dos 
programas. 
 
*** BOOKS *** 
1. Executar o pacote FIX1XX1 que contém novas versões das books FIX1XXX. 
 
*** SUBROTINAS *** 
1. Executar o pacote FIX1XX2 que contém novas versões das sub-rotinas FIXBXXX, FIXBYYY. 
 

# Página 11

 
 
*** PROGRAMAS BATCH E JCLs *** 
1. Executar o pacote FIX1XX3 contendo o FIXXX3XX versão 11. O cartão DD do JCL de 
execução do FIXXX3XX 
 
*** MANUAL E ORIENTAÇÕES *** 
 
Manual de Produção 
Link 
 
3. Descrição das interdependências com outras rotinas/tarefas: 
Ex.: Esse atendimento somente poderá ser realizado: 
1) Após implantação da demanda do SIGPB (RTC XXX) 
2) Após alteração do banco de dados do SIFIX 
3) Após deploy do SIFIX. 
 
4. Existe interdependência com outras rotinas / atividades (Mainframe Batch)? 
(Sim / Não) 
5. Há execução de rotina(Mainframe Batch)? 
(Sim / Não) 
6. Se sim, a rotina pode ser interrompida(Mainframe Batch)? 
(Sim / Não) 
7. Qual a estimativa de tempo para execução? 
Campo importante, a estimativa deve ser realizada em ambiente de teste. 
 
8. Atualiza a base? 
Se sim, descreva sucintamente a atualização. 
 
Aba – Mainframe Online 
 
Bons Exemplos: (20417078 - 20514075 - 20308287 - 20205083) 
 
1. Tipos de itens modificados 
1.1. Programas On-line 
1.2. Aplicações, Transações e Arquivos - CICS 
1.3. Outros (Staffware, MQ, Content Manager, etc.) 
1.4. Execução de Query 
1.4.1. Update 
1.4.2. Insert 
1.4.3. Delete 
2. Detalhamento da tarefa (segregue conforme itens selecionados): 
Ex.: [ATENDER ANTES DA DIÁRIA] 
 
[Ordem do atendimento] 
Atender primeiro as atividades de Banco e atualização de pacotes. 
 
1) Favor aprovar o pacote HEMPD221010H1801 contendo os programas abaixo: 

# Página 12

 
 
EMPPON50    
EMPPOQ51   
EMPPOQ54   
EMPPOQ56   
 
3. Existe interdependência com outras rotinas/tarefas? 
Ex.: Sim. Essas catalogações somente poderão ocorrer após a catalogação dos pacotes 
relacionados em Mainframe batch. 
 
Aba – Banco de Dados 
 
Bons Exemplos: ( 20506658 - 20417078 - 20551744 – 20308287 ) 
 
1. Aplicação Banco de Dados 
1.1. Banco de Dados 
1.1.1. DB2 
1.1.2. Oracle 
1.1.3. Sybase 
1.1.4. Sybase-IQ 
1.1.5. MS SQL Server 
1.1.6. PostgreSQL 
1.1.7. Caché 
1.1.8. IDMS Normal 
1.1.9. IDMS Liquidado 
1.2. Nome do Modelo DES 
NOME_MODELO_DES 
1.3. Nome do Modelo TQS 
NOME_MODELO_TQS 
1.4. Nome do Modelo HMP 
NOME_MODELO_HMP 
1.5. Nome do Modelo PRD 
NOME_MODELO_PRD 
1.6. Dependências - Banco de Dados 
Descreva as dependências de banco/sistemas caso existam e poderão ser afetados 
com a mudança. 
1.7. Em Caso de transferência de Procedure, Functions ou Packages informar 
1.7.1. DES para HMP 
1.7.2. DES para PRD 
1.7.3. TQS para HMP 
1.7.4. HMP para PRD 
1.8. Origem 
Banco de dados de origem para a transferência de objetos de dados. 
1.9. Destino 
Banco de dados de destino para a transferência de objetos de dados. 
1.10. Lista de Objetos 
Objetos a serem transferidos. 

# Página 13

 
 
1.11. Nome do Database ou Schema e Detalhamento das atividades (Ao detalhar 
a(s) atividade(s) segregue conforme o(s) item(s) selecionado(s)) 
- Criar as tabelas: 
TABELA1_TIPO_SERVICO_ATESTE 
TABELA2_SERVICO_ATESTE 
   Observações: xxxx 
 
- Criar as sequences abaixo: 
CCRSQ579_TIPO_SERVICO_ATESTE 
CCRSQ580_SERVICO_ATESTE 
 
- Criar e executar as Stored Procedures abaixo: 
http://fontes.des.caixa/SIXXX/  
 
- Incluir campo NU_NSU_XXXX nas tabelas: 
TABELA2 
 
- Criar a view VIEW1_FUNCIONALIDADE2. 
 
2. Segurança – Banco de Dados 
2.1. Concessão de privilégios (para criação de contas, necessário o formulário #20 - Ficha 
de Identificação de criação de conta). 
Concessão de privilégios como em roles, grants e contas de serviço para as mudanças 
solicitadas. 
 
 
Aba – Segurança 
 
Bons Exemplos: ( 20506658 – 20483535 – 20439728 – 20455578 – 20425492 ) 
1. Para o correto atendimento dessa demanda será necessária a implantação de 
configurações de segurança (permissionamento)? 
(Não designado / Sim / Não) 
2. SIASE (RACF / Incluir, Excluir ou Alterar / Grupo / Perfil / Transação) 
Detalhamento da Matriz de recurso e permissões de acesso que será aplicada para 
mudança controlados pelo SIASE e ajustes de ambientes caso seja necessário. Diferenças 
em relação a versão atual. 
3. SINAV (LDAP / Incluir, Excluir ou Alterar / Grupo / Perfil) 
Detalhamento da Matriz de recurso e permissões de acesso que será aplicada para 
mudança controlados pelo SINAV e ajustes de ambientes caso seja necessário. Diferenças 
em relação a versão atual. 
4. SISGR 
Detalhamento da Matriz de recurso e permissões de acesso que será aplicada para 
mudança controlados pelo SISGR e ajustes de ambientes caso seja necessário. Diferenças 
em relação a versão atual. 
5. Existe interdependência com outras rotinas / atividades? 

# Página 14

 
 
(Sim / Não) 
6. Detalhamento das atividades (Ao detalhar a(s) atividade(s) segregue conforme o(s) item(s) 
selecionado(s)) 
Detalhamento específico de atividades e orientações gerais diferentes do que já foi 
detalhado nas opções anteriores. 
 
Aba – Armazenamento 
 
1. Recursos de Armazenamento de dados 
Indicar necessidades de armazenamento apresentadas pelos itens em implantação, tanto 
temporárias quanto permanentes. 
2. Detalhamento das atividades 
Detalhamento dos recursos, tipo de estrutura, recursos tecnológicos e ferramentas 
específicas necessárias. 
 
 
Aba –API 
 
Documento complementar de orientação: 
http://unidades/sites/CEDESBR/CEDESBR060/Guias%20Rpidos%20%20%20Workitens%20reas
%20de%20sistema/Manual_Preenchimento_ABA_API.PDF 
1. Informações API 
1.1. Tipo da Solicitação 
1.2. Item de Configuração 
1.3. Organização 
1.4. Parecer da Governança de API (Número RTC) 
1.5. Observações 
 
2. Publicação – Inclusão/Exclusão 
2.1. Endereço do SWAGGER no FONTES.CAIXA 
2.2. Versão API 
2.3. Endereço da API no Backend 
2.4. Visibilidade da API 
2.5. Sistema de Origem 
2.6. Endereço do manual de integração (WIKI.CEPTISP.CAIXA) 
2.7. Endereço da API no API Management (APIM) 
2.8. Usar cache para consultas 
2.9. Validade do Cache 
2.10. Timeout de resposta em milissegundos 
2.11. Tempo customizado do timeout da resposta em milissegundos 
2.12. Aplicar Rate Limit 
2.13. Requisições por segundo 
2.14. Validar API Key 
2.15. Repassar token Login CAIXA 

# Página 15

 
 
2.16. Valida Token Login CAIXA 
 
3. Application – Inclusão/Exclusão 
3.1. Tipo de Sistema 
3.2. Nome da Aplicação 
3.3. Sigla do Sistema 
3.4. Breve descrição da aplicação 
 
4. Consumo X – Inclusão/Exclusão 
4.1. Nome da Aplicação 
4.2. API 
4.3. Justificativa para Consumo 
4.4. Volumetria Esperada Consumo 
 
 
Aba – Documentos de Testes 
 
Bons Exemplos: ( 20425492 - 20439728 - 20455578 – 20205083 ) 
 
1. Evidências de Teste  
1.1. Insira as evidências dos testes da versão integrada correspondente a esta mudança 
Artefato que evidência o teste. 
2. Documentos de Testes 
2.1. Estratégia de Testes da Demanda 
Artefato com estratégia do teste. 
2.2. Roteiro de Testes da Demanda 
Artefato com o roteiro de teste. 
2.3. Roteiro de Testes de Carga/Stress 
Artefato com roteiro de carga/stress. 
2.4. Documento para Criação de Ambiente 
Artefato descritivo para criação do ambiente de teste. 
2.5. Casos de Teste 
2.6. Scripts 
2.7. Massa de Testes 
Informe o caminho que foi disponibilizado a massa de teste. 
2.8. Detalhamento das atividades (Ao detalhar a(s) atividade(s) segregue conforme o(s) 
item(s) selecionado(s)) 
Detalhamento das atividades para melhor entendimento dos testes para atendimento 
da mudança. 
 
Aba – Termo de Liberação 
 
Bons Exemplos: ( 20551744 - 20514075 – 20425492 ) 
 

# Página 16

 
 
1. Ambiente HMP 
1.1. O sistema possui ambiente HMP?: 
(Sim / Não) – Campo de preenchimento automático. 
1.2. Informação sobre a implantação em HMP (TI): 
TI informa se a mudança foi aplicada em ambiente de HMP. 
 (Sim / Não) 
1.3. Informação sobre a implantação em HMP (Gestor): 
Gestor informa se a mudança foi aplicada em ambiente de HMP. 
(Sim / Não) 
1.4. O sistema está Certificado/Em Certificação? 
(Sim / Não) – Campo de preenchimento automático. 
1.5. Informação sobre a implantação em HMP (GECEQ): 
GECEQ informa se a mudança foi aplicada em ambiente de HMP. 
(Sim / Não) 
1.6. Motivo da não aplicação em HMP: 
1.6.1.  Ausência de Interface 
1.6.2.  Ausência de Massa de Dados 
1.6.3.  Indisponibilidade de Ambiente 
1.6.4.  Prazo por Interesse Negocial 
 
2. Ressalvas/Comentários/Justificativa de não implantação da mudança em HMP 
2.1. Justificativa de não implantação da mudança em HMP: 
Justificativa de não validação após execução da mudança em HMP. 
 
3. Artefatos relacionados 
3.1. Selecione um tipo de link para incluir links no item de trabalho. 
 
 
Aba – Arquitetura 
 
1. Nova/alteração de arquitetura (nova API/integração ao SSO)? 
(Não designado / Sim / Não) 
2. A chave pública se encontra cacheada na aplicação?: 
(Não designado / Sim / Não) 
3. Houve a validação de uso do SSO? 
(Não designado / Sim / Não) 
4. Houve a validação de APIs publicadas? 
(Não designado / Sim / Não) 
5. Qual o tempo de duração do Token de Aplicação (minutos)? 
6. Qual o timeout que deverá ser configurado para a API no API Manager (milisegundos)? 
7. Qual o tempo de duração do Token de Clientes (minutos)? 
8. O timeout está maior ou igual ao timeout da aplicação backend? 
(Não designado / Sim / Não) 
9. Está implementada a rotina de Refresh Token? 
(Não designado / Sim / Não) 
10. O timeout está menor ou igual ao timeout dos canais consumidores? 

# Página 17

 
 
(Não designado / Sim / Não) 
11. Qual a recorrência de Refresh Token da aplicação (minutos)? 
12. Consta no Swagger o timeout da API? 
(Não designado / Sim / Não) 
13. A validação do Token está implementada de forma offline? 
(Não designado / Sim / Não) 
14. Existe um middleware integrando sua aplicação com outros sistemas? 
(Não designado / Sim / Não) 
15. Se não está implementada offline, qual a justificativa negocial / técnica? 
 
 
Aba – Links: 
 
1. Anexos 
Arquivos ou itens de trabalho referentes a RM. 
 
2. Incluir Related 
Demandas que possuem relacionamento ou complementem a RM. 
 
 
Aba – Histórico: 
 
1. Histórico 
Histórico de tudo que ocorreu com a RM. 
 
Fontes: 
- RTC – http://gid.caixa  
- https://caixa.sharepoint.com/sites/gsti  
- TE216 - GERENCIAMENTO INTEGRADO DE SERVIÇOS DE TI 
 