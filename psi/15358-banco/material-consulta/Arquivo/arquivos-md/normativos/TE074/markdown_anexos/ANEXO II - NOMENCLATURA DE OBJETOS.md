# TE074 - ANEXO II - NOMENCLATURA DE OBJETOS

**Arquivo de origem:** `ANEXO II - NOMENCLATURA DE OBJETOS.pdf`

**Total de páginas:** 7

---


## Página 1

#PUBLICO 
TE 074 
 
 
1 / 7 
 
ANEXO II – NOMENCLATURA DE OBJETOS 
 
1.      DEFINIÇÕES GERAIS DOS OBJETOS 
1.1.       O nome (também chamado de nome lógico e, no PowerDesigner, NAME) desses objetos não deve ser 
abreviado. 
1.2.       O código (também chamado de nome físico e, no PowerDesigner, CODE) desses objetos não deve ser 
abreviado caso haja espaço suficiente para o extenso. 
1.3.       O tamanho do código do objeto fica condicionado ao SGBD utilizada para o seu registro. Na Caixa o tamanho 
máximo vigente está limitado a 30 caracteres. 
1.4.       O nome e código desses objetos devem ser grafado no singular e preferencialmente no gênero masculino. 
1.5.       Os termos utilizados na denominação de objetos, suas abreviaturas e contextos de utilização devem estar 
registrados no glossário de termos. 
1.6.       Caso o espaço reservado para a denominação seja insuficiente, os termos são abreviados a partir da palavra 
menos significativa para o entendimento do conceito do objeto. 
1.7.       Como forma de evitarem-se ambiguidades, adota-se apenas uma abreviatura para cada termo válido. 
1.8.       Caso o termo pretendido não existir, cabem as avaliações constantes no item 5. 
2.      NOMENCLATURA DE TABELA 
2.1.       O nome de uma tabela (NAME) deve ser aquele mais apropriado para representar o fato do mundo real no 
contexto do negócio. 
2.2.       O código da tabela (CODE) é formado pelo prefixo elaborado conforme descrito no Anexo III - Expressões 
Regulares que definem objetos físicos dos SGBD adicionando, na sequência, os termos mais significativos 
(determinados pelo desenvolvedor com base no negócio envolvido na funcionalidade), abreviando, se necessário. 
2.2.1.    Nos casos em que é necessária a eliminação de termos para a formação do código, elimina-se os termos 
menos significativos da direita para a esquerda. 
3.      NOMENCLATURA DE COLUNA 
3.1.       A estrutura de denominação para a coluna é composta pela classe abreviada da coluna (conforme item 4) e 
pelos termos que completam seu nome, separados por underscore. 
3.1.1.    Estrutura de nomeação da Coluna: 
     XX _ XXXXXXXXXXXXXXXXXXXXXXXXXX  
            
                  Classe da Coluna              Termos que completam seu nome 
 
 Exemplo: 
NO_EMPREGADO 
NU_UNIDADE 
3.2.       Os objetos são nomeados utilizando-se de termos que não causem interpretações dúbias. 
• 
Exemplo: 
IC_FORMA_PAGAMENTO 
à 
(Correto) 
IC_FORMA 
à 
(Incorreto) 
 3.3.       Não deve ser utilizada denominação em língua estrangeira, exceto em casos em que não exista 
correspondência na língua portuguesa. 
• 
Exemplo:



## Página 2

#PUBLICO 
TE 074 
 
 
2 / 7 
 
IC_SITUACAO_UNIDADE 
à 
(Correto) 
IC_STATUS_UNIDADE 
à 
(Incorreto) 
 3.4.       Não é permitida a utilização de vícios de linguagem e jargão fora do contexto. 
• 
Exemplo: 
VR_A_PAGAR 
à 
(Correto) 
VR_PENDURADO 
à 
(Incorreto) 
 3.5.       Os termos que usualmente são identificados por siglas já consagradas são registrados no Glossário de 
Termos. 
• 
Exemplo: 
NU_FGTS 
à 
(Correto) 
NU_FUNDO_GRNTA_TEMPO_SRVCO 
à 
(Incorreto) 
 3.6.       Não são utilizados nomes ou siglas de unidades/sistemas da CAIXA para denominar objetos. 
• 
Exemplo: 
NO_RESPONSAVEL_UNIDADE 
à 
(Correto) 
NU_CONTRATO_SIEMP 
à 
(Incorreto) 
NO_RESPONSAVEL_SUART 
à 
(Incorreto) 
 3.7.       A denominação é efetuada utilizando-se de verbos no particípio quando a qualificação do nome se referir a 
uma ação concluída. 
• 
Exemplo: 
VR_FGTS_RECOLHIDO 
à 
(Correto) 
VR_FGTS_RECOLHER 
à 
(Incorreto) 
 3.8.       O nome do objeto é formado pelas palavras mais significativas para expressar o negócio envolvido, usando 
separador “_”, conhecido como underscore, entre os termos. 
• 
Exemplo: 
VR_CORRECAO_MONETARIA_APLICACAO 
VR_CRCO_MONETARIA_APLICACAO 
à 
(Melhor prática) 
VR_CORRECAO_MNTRA_APLICACAO 
à 
(Incorreto neste caso) 
VR_CORRECAO_MONETARIA _APLCO 
à 
(Incorreto neste caso) 
 3.8.1.    Cabe salientar que esta avaliação é subjetiva e voltada ao negócio. No caso acima, os termos mais 
significativos no contexto aplicado, são as palavras MONETÁRIA e APLICAÇÃO. 
3.9.       Preposições, artigos e conjunções irrelevantes para o significado do objeto não são utilizados na 
denominação dos objetos. 
• 
Exemplo: 
NU_AGENCIA_ORIGEM 
à 
(Correto)



## Página 3

#PUBLICO 
TE 074 
 
 
3 / 7 
 
VR_A_PAGAR 
à 
(Correto) 
NU_AGENCIA_DE_ORIGEM 
à 
(Incorreto) 
3.10.     Numerais devem ser representados por algarismos arábicos. 
• 
Exemplo: 
PC_RENDIMENTO_GARANTIDO_2_ANO 
à 
(Correto) 
PC_RENDIMENTO_GARANTIDO_II_ANO 
à 
(Incorreto) 
 3.11.     Os termos redundantes, cuja natureza já esteja embutida no identificador do objeto a que pertence ou em 
outro componente da estrutura, não são utilizados. 
• 
Exemplo: 
VR_BRUTO_SALARIO 
à 
(Correto) 
VR_VALOR_BRUTO_SALARIO 
à 
(Incorreto) 
3.12.     Os sinônimos para um mesmo contexto são evitados. 
• 
Exemplo: 
HH_FIM_JORNADA_TRABALHO 
à 
(Correto) 
HH_TERMINO_JORNADA_TRABALHO 
à 
(Incorreto) 
 4.      CLASSE DE COLUNA 
4.1.       As classes das colunas utilizadas na denominação de objetos estão registradas no glossário de termos, 
conforme abaixo: 
Discriminação 
Identificador Descrição 
ANO 
AA 
Atribuída aos dados de natureza numérica que expressam o 
ano no calendário civil. 
Exemplo: AA_COMPETÊNCIA 
ÁUDIO 
AU 
Atribuída aos dados que designam colunas referentes a som. 
Exemplo: AU_ALARME 
CÓDIGO 
CO 
Identificador unívoco de um objeto, alfanumérico, formado por 
um ou mais colunas. Difere da sigla e do número porque o 
significado de cada caractere constituinte de seu(s) coluna(s), 
tomado isoladamente, não é de interesse da Empresa. 
Exemplo: CO_CHASSI_AUTOMÓVEL 
CO_DEPENDENTE (matrícula do empregado + número do 
dependente) 
DATA 
DT 
Atribuída aos dados de natureza numérica que expressam o 
dia, mês e ano no calendário civil. 
Exemplo: DT_NASCIMENTO



## Página 4

#PUBLICO 
TE 074 
 
 
4 / 7 
 
Discriminação 
Identificador Descrição 
DATA E HORA 
DH 
Atribuída aos dados de natureza datetime que expressam o 
dia, mês, ano, hora, minuto e segundo, sem milésimos de 
segundo. 
Exemplo: DH_ALTERACAO_REGISTRO 
DESCRIÇÃO 
DE 
Atribuída aos dados cujo conteúdo, livre e em forma discursiva 
(não codificada), se utiliza para descrever algo associado ao 
objeto. 
Exemplo: DE_ADITIVO_CONTRATO 
DIA 
DD 
Atribuída aos dados de natureza numérica que expressam o dia 
no calendário civil. 
Exemplo: DD_DEBITO 
ENDEREÇO 
ED 
Atribuída aos dados de natureza textual utilizados para 
designar qualquer tipo de domicílio: residencial, comercial, 
endereço eletrônico ou endereço lógico (e-mail, conta/perfil 
rede social ou endereço de um arquivo). 
Exemplo: ED_COMERCIAL 
ED_EMAIL_CORPORATIVO 
HORA 
HH 
Atribuída aos dados de natureza numérica que expressam uma 
hora em qualquer formato com ou sem precisão de minutos 
e/ou quaisquer outras frações. 
Exemplo: HH_ABERTURA 
IMAGEM 
IM 
Atribuída aos dados com representação de imagem, no todo ou 
em parte, independentemente de seu formato. 
Exemplo: IM_ASSINATURA 
INDICADOR 
IC 
Atribuída aos dados de natureza numérica ou alfanumérica cujo 
conteúdo obrigatório assume um de dois valores negociais 
possíveis. 
Exemplos: IC_SITUACAO_UNIDADE (A = Ativa ou I = Inativa), 
IC_FORMA_PAGAMENTO (1 = À vista ou 2 = À Prazo) 
ÍNDICE 
IN 
Coluna numérico relativo que serve para comparação de 
fenômenos e situações diversas 
Exemplo: IN_BOLSA_VALORES 
MÊS 
MM 
Atribuída aos dados de natureza numérica que expressam o 
mês em um calendário civil. 
Exemplo: MM_VENCIMENTO 
NOME 
NO 
Atribuída aos dados de natureza alfabética ou alfanumérica 
cujo conteúdo expressa uma denominação por extenso e 
composta de palavras, abreviaturas ou ambas. 
Exemplo: NO_EMPREGADO 
NÚMERO 
NU 
Atribuída aos dados de natureza numérica cuja identificação se 
faz por valores absolutos. 
Exemplo: NU_UNIDADE 
PERCENTUAL 
PC 
Atribuída aos dados de natureza numérica que expressam uma 
parte de uma quantidade de 100 (cem) unidades. 
Exemplo: PC_INADIMPLENCIA



## Página 5

#PUBLICO 
TE 074 
 
 
5 / 7 
 
Discriminação 
Identificador Descrição 
PESO 
PS 
Atribuída aos dados numéricos que expressam o peso do 
objeto cujo nome deve ser relacionado a uma unidade de 
medida a fim de que se possa expressar a real grandeza. 
Exemplo: PS_JOIA_GRAMA 
PRAZO 
PZ 
Atribuída aos dados de natureza numérica que expressam um 
intervalo de tempo e cujo nome deve ser relacionado a uma 
unidade de medida a fim de que se possa expressar a real 
grandeza. 
Exemplo: PZ_VALIDADE 
QUANTIDADE 
QT 
Atribuída aos dados de natureza numérica que determinam um 
conjunto de coisas e pessoas consideradas como equivalentes 
e suscetíveis de aumento e diminuição. Ao nomeá-los deve ser 
relacionado a uma unidade de medida para expressar a real 
grandeza, exceto quando se tratar de medida escalar do 
sistema decimal. 
Exemplo: QT_PROGRAMA 
SÉRIE DE DADOS SD 
Classe de uso restrito utilizada somente sob autorização da 
ADI. 
Atribuída aos dados de natureza alfanumérica que podem ser 
multivalorados, ou não, e permitem a troca de dados (JSON, 
XML) entre diferentes aplicações, plataformas ou sistemas de 
forma 
padronizada. 
Deve obrigatoriamente ser acompanhada pelo tipo de série de 
dados utilizado, p.ex.: API, WS (WEBService). 
Exemplo: SD_RESPOSTA_API 
SIGLA 
SG 
Atribuída aos dados de natureza alfabética ou alfanumérica que 
expressam a forma sintética de um conteúdo extenso através 
da redução de palavras ou expressões a letras ou sílabas 
iniciais. 
Exemplo: SG_UF 
TIMESTAMP 
TS 
Atribuída aos dados de natureza numérica que representam um 
momento no tempo composto por data, hora, minuto, segundo 
e milésimo de segundo. 
Exemplo: TS_ATUALIZAÇAO_COTAÇAO 
VALOR 
VR 
Atribuída aos dados de natureza numérica que expressam uma 
importância monetária. 
Exemplo: VR_SALÁRIO 
VÍDEO 
VI 
Atribuída aos dados que designam colunas referentes a vídeo. 
Exemplo: VI_AGENCIA 
 5.      REGRAS DE ABREVIATURA 
5.1.       As abreviaturas utilizadas são as existentes no glossário de termos. 
5.2.       Quando um termo não for encontrado no glossário de termos, a solicitação de inclusão é encaminhada à 
equipe de ADI para análise. 
5.3.       A equipe de ADI analisa a solicitação e, em caso de deferimento, efetua a inclusão da palavra e sua 
respectiva abreviatura no glossário de termos obedecendo aos critérios abaixo.



## Página 6

#PUBLICO 
TE 074 
 
 
6 / 7 
 
5.4.       A primeira e a última letra da palavra também são a primeira e a última da abreviatura. 
• 
Exemplo: 
POSSIBILIDADE 
à 
P _ _ _ E 
 5.5.       As vogais intermediárias são eliminadas. 
• 
Exemplo: 
 
 5.6.       Elimina-se uma das consoantes dos dígrafos “RR e SS”. 
• 
Exemplo: 
P S B L D DE 
à 
P _ _ _ E 
 5.7.       As consoantes restantes são utilizadas para preencher as posições da abreviatura na ordem em que 
aparecem na palavra original, respeitando-se o limite máximo de cinco caracteres da abreviatura. 
• 
Exemplo: 
P S B L D DE 
à 
P S B L E 
 5.8.       A utilização da regra pode originar uma abreviatura de 3 a 5 caracteres. 
• 
Exemplo: 
PESSOA 
à 
PSSA 
à 
PSA 
REMESSA 
à 
RMSSA 
à 
RMSA 
5.9.       Caso as palavras apresentem conflito de abreviação depois de aplicada a regra substitui-se a última 
consoante pela próxima consoante ainda não aproveitada, da direita para esquerda (preservando a mais significativa), 
repetindo enquanto persistir a colisão. 
• 
Exemplo: para colisão das abreviaturas considere que os termos foram abreviados na ordem abaixo.  
TRANSACAO 
à 
TRNSO 
TRANSFERIDO 
à 
TRNDO 
TRANSFORMACAO 
à 
TRNCO 
TRANSITO 
à 
TRNTO 
TRANSMISSAO 
à 
TRNMO 
TRANSPORTADO 
à 
TRNRO 
 5.10.     Os termos que possuem tamanho igual ou inferior a cinco posições também são abreviados. 
• 
Exemplo: 
NU_PRODUTO_CONTA_DEBITO 
à 
NU_PRDTO_CNTA_DBTO 
NU_PRODUTO_CONTA_CREDITO 
à 
NU_PRDTO_CNTA_CRDO 
P SS B L D DE 
à 
P _ _ _ E



## Página 7

#PUBLICO 
TE 074 
 
 
7 / 7 
 
5.11.     Caso exista uma abreviatura consagrada para um dos termos em conflito, usa–se a consagrada e aplica-se 
a regra de abreviatura para o outro termo. 
5.12.     Caso a sigla consagrada regional entre em conflito com a sigla nacional prevalecerá a de abrangência 
nacional sendo abreviada a regional. 
5.13.     Se a abreviatura resultante já existir no glossário de termos para outra palavra mesmo depois de aplicada a 
regra de colisão, cabe a equipe de ADI resolver o conflito. 
5.14.     Apenas uma abreviatura é atribuída quando o substantivo composto for grafado por uma única palavra. 
5.15.     Para o substantivo composto todas as palavras são abreviadas. 
• 
Exemplo: 
CONTRA–INDICADO 
à 
CNTRA_INDDO 
MOTOTAXI 
à 
MTTXI 
6.      RELACIONAMENTO 
6.1.       Os relacionamentos (Reference) são caracterizados através de um VERBO. Pode ser utilizado o VERBO na 
voz ativa e passiva para estabelecer esta conexão. Eventualmente são utilizadas locuções verbais para estabelecer 
estas conexões. 
6.1.1.    Deverão ser utilizados verbos ou locuções verbais que refletirão exatamente as regras de negócio definidas. 
6.1.2.    A voz ativa deve partir do sujeito da ação (verbo). 
6.1.3.    A voz passiva deve partir do objeto. 
• 
Exemplo: 
         Voz Ativa > Cada PESSOA utiliza CARRO 
         Voz Passiva > Cada CARRO é utilizado por PESSOA 
6.2.       Como alternativa adicional para a denominação, pode-se ainda utilizar um substantivo para indicar o papel 
que cada tabela representa no relacionamento. 
6.3.       Nos casos de existência de auto relacionamento torna-se obrigatório o preenchimento de “ROLENAME”, uma 
vez que os objetos envolvidos pertencem ao mesmo conjunto e apenas o nome da tabela pode não ser suficiente 
para esclarecer os papéis envolvidos. 
7.      ÁREA DE INTERESSE 
7.1.       O nome da área de interesse é especificado no plural. 
• 
Exemplo: 
<Nome da Área de Interesse> 
RECURSOS_HUMANOS

