# Padroes Sugeridos - Preenchimento de RM - 2022


# Página 1

12 2022 | GEPAC
Padrões Sugeridos -
Preenchimento de Requisição de 
Mudança – RM - highlights
GEPAC 03 – Integração e Implantações 
#Grau de Sigilo (OR016)

# Página 2

- ABA –Registro
- ABA –Avaliação de Risco
- ABA –Validação
- ABA –Verificação Negocial
- ABA –Plataforma NT/Linux/VMS/Ponta Cliente
- ABA –Unix / Solaris
- ABA –Mainframe Batch
- ABA –Mainframe Online
- ABA –Banco de Dados
- ABA –Documentos de Testes
- ABA –Termo de Liberação
Sumário

# Página 3

É um formulário, no RTC, utilizado para solicitar a implantação de mudança de sistemas, nos ambientes de 
homologação(HMP) e produção(PRD), por meio da integração com a ferramenta ITSM.
RM –RTC
O que é a RM?                                         http://gid.caixa


# Página 4

4
ABA - Registro
RM –RTC
#INTERNO.CAIXA
Motivo da mudança, primordial para definir a RM.
Ambiente onde será aplicada a mudança.
Informe caso possua um IC relacionado a mudança caso essa for emergencial.
Informe a Data estimada para implantação.
Janela em que a RM deverá ser usada para implantação.
Informar asrestriçõeslevantados para implantação.
Ex.: Executar a mudança após o fechamento do online de sexta-feira e antes da 
abertura do online de segunda-feira.
Termos chave que auxiliem a busca, TAGs padronizadas.

# Página 5

5
ABA –Avaliação de Risco
RM –RTC
#INTERNO.CAIXA
Caso impacte o caminho critico, faça a descrição do impacto e os serviços críticos 
impactados.
Ex.: 1) Armazenamento e visualização dos cheques CAIXA no SICCV e internet 
banking.
Informe o Detalhamento do Plano de Retorno de forma explicativa.
Ex.: PRÉ-CONDIÇÕES:  1, 2, 3...
Executar as tarefas na seguinte ordem:
1) Banco de Dados:
Descrição das Ações de banco.
2) Servidor de INTRANET
Descrição das atividades:
Ex.: V oltar o backup do pacote X, Y , Z (seja específico)...
3) Servidor de INTERNET
Descrição das atividades:
Ex.: V oltar o backup do pacote X, Y , Z (seja específico)...
4) Mainframe Batch:
Descrição das atividades:
...

# Página 6

6
ABA –Validação
RM –RTC
#INTERNO.CAIXA
O que essa mudança (serviço, funcionalidade, sistema) pretende atender de melhoria 
e/ou correção.
Ex.: 1) Armazenamento e consulta de cheques de contas NSGD;
2) Migração de infraestrutura sjass para jboss.
Se por algum motivo qualquer a implantação for negada e/ou postergada, qual o 
impacto da não implantação.
Ex.: Funcionalidade ABC do sistema continuará com erro, ou Demanda legal do 
BACEN não será atendida.
Se algo der errado na mudança o que será impactado.
Ex.: 1) Não permitir a Liquidação por Portabilidade via SIGEC para os contratos de 
veículos.
2) Caso haja algum erro nesta demanda, seja em seu atendimento ou na própria 
aplicação, é possível que haja impacto nas seguintes funcionalidades: X, Y e Z.
Essas informações são importantes para que os envolvidos na mudança possam avaliar a mudança e seus impactos.

# Página 7

7
ABA –Verificação Negocial
RM –RTC
#INTERNO.CAIXA
Informe o tempo estimado para execução.
Ex.: XX horas.
Ex.: O Gestor deverá navegar no sistema na URL https://siXXX.caixa em todos os 
menus. Verificar o sucesso na execução dos batchs que fazem a carga dos 
arquivos e guarda da imagem.
Ex.: 1) Validamos as implantações realizadas para novas funcionalidades de tarifas 
no SIXXX.
2) No momento da validação o sistema está operacional.

# Página 8

8
ABA –Plataforma NT/Linux/VMS/Ponta Cliente
RM –RTC
#INTERNO.CAIXA
Informe os itens modificados.
Esta atividade deverá ser planejada em conjunto com o Agente de Operações.
Ex.: 
1. Atividade do SUPORTE
1.1   Servidor do SIXXX INTRANET
1.1.1   Efetuar backup das configurações no domain.xml do JBoss EAP 6.4 do SIXXX INTRANET
1.1.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas 
1.2   Servidor do SIXXX INTERNET
1.2.1   Efetuar backup das configurações no domain.xml do JBoss do SIXX INTERNET
1.2.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas 
2.Solicitamos alteração do GSLB do sixxx.caixade 10.XXX.XX.XX para 10.XXX.XX.XX.
2.1   Na virada de chave
2.1.1  Habilitar os IPs(JBOSS) 
2.1.2.  Desabilitar os IPs(SJSAS):
.

# Página 9

9
ABA –Unix / Solaris
RM - SIGSC
#INTERNO.CAIXA
Informe os itens modificados.
Esta atividade deverá ser planejada em conjunto com o Agente de Operações.
Ex.: 
1. Atividade do SUPORTE
1.1   Servidor do SIXXX INTRANET
1.1.1   Efetuar backup das configurações no domain.xml do JBoss EAP 6.4 do SIXXX INTRANET
1.1.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas 
1.2   Servidor do SIXXX INTERNET
1.2.1   Efetuar backup das configurações no domain.xml do JBoss do SIXX INTERNET
1.2.2   Atualizar as configurações no domain.xm e instalar/atualizar as bibliotecas 
2.Solicitamos alteração do GSLB do sixxx.caixa de 10.XXX.XX.XX para 10.XXX.XX.XX.
2.1   Na virada de chave
2.1.1  Habilitar os IPs(JBOSS) 
2.1.2.  Desabilitar os IPs(SJSAS):
.


# Página 10

10
ABA –Mainframe Batch
RM - SIGSC
#INTERNO.CAIXA
Informe os itens modificados.
Ex.: OBSERV AÇÕES
As solicitações abaixo SOMENTE deverão ser atendidas APÓS as catalogações e implantações do SIXXX
As catalogações das books deverão ocorrer ANTES da catalogação das sub-rotinas e dos programas.
*** BOOKS ***
1. Executar o pacote FIX1XX1 que contém novas versões das books FIX1XXX.
*** SUBROTINAS ***
1. Executar o pacote FIX1XX2 que contém novas versões das sub-rotinas FIXBXXX, FIXBYYY .
*** PROGRAMAS BA TCH E JCLs ***
1. Executar o pacote FIX1XX3 contendo o FIXXX3XX versão 11. O cartão DD do JCL de execução do FIXXX3XX
*** MANUAL E ORIENT AÇÕES ***
Manual de Produção
Link


# Página 11

11
ABA –Mainframe Batch
RM –RTC
#INTERNO.CAIXA
Ex.: Esse atendimento somente poderá ser realizado:
1) Após implantação da demanda do SIGPB (RTC XXX)
2) Após alteração do banco de dados do SIFIX
3) Após deploy do SIFIX.
Campo importante, a estimativa deve ser realizada em ambiente de teste.
Se sim, descreva sucintamente a atualização.

# Página 12

12
ABA –Mainframe Online
RM - SIGSC
#INTERNO.CAIXA
Informe os itens modificados.
Ex.: [ATENDER ANTES D A DIÁRIA]
[Ordem do atendimento]
Atender primeiro as atividades de Banco e atualização de pacotes.
1) Favor aprovar o pacote HEMPD221010H1801 contendo os programas abaixo:
EMPPON50   
EMPPOQ51  
EMPPOQ54  
EMPPOQ56
Ex.: Sim. Essas catalogações somente poderão ocorrer após a catalogação dos 
pacotes relacionados em Mainframe batch.

# Página 13

13
ABA –Banco de Dados
RM –RTC
#INTERNO.CAIXA
Informe os itens modificados.
Descreva as dependências de banco/sistemas caso existam e poderão ser 
afetados com a mudança.
Ex.: - Criar as tabelas:
T ABELA1_TIPO_SERVICO_ATESTE
T ABELA2_SERVICO_ATESTE
Observações: xxxx
- Criar as sequences abaixo:
CCRSQ579_TIPO_SERVICO_ATESTE
CCRSQ580_SERVICO_ATESTE
- Criar e executar as Stored Procedures abaixo:
http://fontes.des.caixa/SIXXX/ 
- Incluir campo NU_NSU_XXXX nas tabelas:
T ABELA2
- Criar a view VIEW1_FUNCIONALID ADE2.

# Página 14

14
ABA –Segurança
RM –RTC
#INTERNO.CAIXA
Detalhamento da Matriz de recurso e permissões de acesso que será aplicada para 
mudança controlados pelo ( SIASE / SINA V / SISGR ) e ajustes de ambientes caso 
seja necessário. Diferenças em relação a versão atual.
Detalhamento específico de atividades e orientações gerais diferentes do que já foi 
detalhado nas opções anteriores.


# Página 15

15
ABA –Documentos de Testes
RM –RTC
#INTERNO.CAIXA
Artefato que evidência o teste.
Detalhamento das atividades para melhor entendimento dos testes para 
atendimento da mudança.

# Página 16

16
ABA –Termo de Liberação
RM –RTC
#INTERNO.CAIXA
Informações importantes para o ambiente HMP .
Justificativa de não validação após execução da mudança em HMP .
Caso não seja aplicado em HMP , informe o motivo.

# Página 17

#Grau de Sigilo (OR016)