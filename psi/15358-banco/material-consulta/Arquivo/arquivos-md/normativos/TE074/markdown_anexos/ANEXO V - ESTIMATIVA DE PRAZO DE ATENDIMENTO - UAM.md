# TE074 - ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM

**Arquivo de origem:** `ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.pdf`

**Total de páginas:** 4

---


## Página 1

#PUBLICO 
TE 074 
 
 
1 / 4 
 
ANEXO V – ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM 
INTRODUÇÃO 
1.1 Essa proposta visa estabelecer uma métrica da produtividade do Administrador de Dados do Capítulo de Dados, 
baseada na contagem de objetos/ações, estimando um prazo de atendimento para demandas de validação de 
modelos de dados. 
RESUMO DO MÉTODO UNIDADE DE ANÁLISE DE MODELO - UAM 
1.2 É a menor unidade de análise a ser aplicada a um objeto do modelo de dados. 
1.3 Todo objeto possui um peso relacionado a uma ação (criação/alteração/exclusão, estabelecidos no item 2.3) 
baseada nos seguintes fatores: 
1.4 Tipo de objeto e seu impacto no modelo de dados; 
• 
Requisitos funcionais/Aderência as regras de Negócio/Técnicas de Modelagem; 
• 
Qualidade do Modelo; 
• 
Reutilização dos Dados/Integração e Compartilhamento de Dados; 
• 
Uso de Normas e Padrões. 
ESTABELECIMENTO DA PRODUTIVIDADE DIÁRIA DA EQUIPE DE ADMINISTRAÇÃO DE DADOS 
Proposta: 
“Cada Administrador de Dados Sênior deve ser capaz de gerar pelo menos um laudo de análise de modelo, de 
complexidade média (estabelecida em cima da quantidade de objetos mantidos, conforme item 3), por dia”  
1.5 Cálculo do total de UAM – considerado como parâmetro de produtividade/dia do AD: 
 
Objeto 
Quantidade Peso 
Total UAM 
(quantidade x peso) 
Tabela 
4 
4 
16 
Chave Primária 
4 
4 
16 
Coluna 
31 
4 
124 
Referência 
3 
(grau 1:N) 
8 
24 
Produtividade diária ADI 
180 UAM/dia 
Produtividade ADI/hora (6 horas) 
30 UAM/hora 
 Ações de Controle 
1.6 São consideradas as ações administrativas de controle da demanda na ferramenta oficial de recepção de 
demandas, além da preparação do documento de laudo de validação. A sugestão é adicionar a quantidade de UAM 
dispensada 
pelo 
AD 
ao 
tempo 
dedicado 
ao 
tratamento 
da 
demanda. 
  
Ação 
Estimativa 
Administração da demanda RTC: 1 hora 
Construção do laudo de validação: 1 hora 
Análise de Documentos Negociais: 2 horas



## Página 2

#PUBLICO 
TE 074 
 
 
2 / 4 
 
Total: 
(soma das ações x Produtividade ADI/hora) 
(1 * 30) + (1 * 30) + (2 * 30) = 120 UAM 
 Lista de Objetos Avaliados 
1.7 A planilha abaixo define a distribuição de UAM (peso) por Objeto/Ação existentes no relatório de solicitação de 
validação. 
 
Tipo de 
Objeto 
Criaç
ão 
Alteraç
ão 
Remoç
ão 
Tipo de 
Objeto 
Criaç
ão 
Alteraç
ão 
Remoç
ão 
Tipo de 
Objeto 
Criaç
ão 
Alteraç
ão 
Remoç
ão 
Agregações 
0.5 
0.5 
0.5 
End Points 
0.5 
0.5 
0.5 
Queues 
0.5 
0.5 
0.5 
Arc 
0.5 
0.5 
0.5 
Extensão 
2 
4 
4 
Referência 
8 
4 
4 
Area 
0.5 
0.5 
0.5 
Fato 
0.5 
0.5 
0.5 
Referência 
da View 
4 
4 
4 
Armazenam
ento 
0.5 
0.5 
0.5 
Formato de 
Dados 
0.5 
0.5 
0.5 
Regra 
de 
Negócio 
0.5 
0.5 
0.5 
Arquivo 
0.5 
0.5 
0.5 
Formulário 
0.5 
0.5 
0.5 
Relatório 
em Lista 
0.5 
0.5 
0.5 
Assemblies 
0.5 
0.5 
0.5 
Função 
0.5 
0.5 
0.5 
Replicaçã
o 
0.5 
0.5 
0.5 
Associação 
0.5 
0.5 
0.5 
Funções de 
Partição 
0.5 
0.5 
0.5 
Retângulo 
0.5 
0.5 
0.5 
Bindings de 
Serviço 
Remoto 
0.5 
0.5 
0.5 
Grupo 
0.5 
0.5 
0.5 
Retângulo 
Arredonda
do 
0.5 
0.5 
0.5 
Bitmap 
0.5 
0.5 
0.5 
Grupos de 
Workload 
0.5 
0.5 
0.5 
Role 
0.5 
0.5 
0.5 
Catálogos 
de 
Texto 
Completo 
0.5 
0.5 
0.5 
Indice 
4 
2 
4 
Rotas 
0.5 
0.5 
0.5 
Certificados 
0.5 
0.5 
0.5 
Índice 
de 
Join 
0.5 
0.5 
0.5 
Rule 
0.5 
0.5 
0.5 
Chave 
Alternativa 
(AK) 
2 
2 
2 
Item 
de 
Parágrafo 
0.5 
0.5 
0.5 
Schemas 
0.5 
0.5 
0.5 
Chave 
Primária 
(PK) 
4 
2 
4 
Item 
de 
Trigger 
0.5 
0.5 
0.5 
Schemas 
de 
Partição 
0.5 
0.5 
0.5 
Chaves 
Assimétrica
s 
0.5 
0.5 
0.5 
Link 
de 
Rastreabili
dade 
0.5 
0.5 
0.5 
Sequence 
2 
2 
2 
Chaves 
Simétricas 
0.5 
0.5 
0.5 
Links 
de 
Database 
0.5 
0.5 
0.5 
Serviços 
0.5 
0.5 
0.5 
Clusters 
0.5 
0.5 
0.5 
Lista 
0.5 
0.5 
0.5 
Sinônimo 
0.5 
0.5 
0.5 
Coleção 
Estendida 
0.5 
0.5 
0.5 
Mapeament
o de Tabela 
0.5 
0.5 
0.5 
Stored 
Procedure 
0.5 
0.5 
0.5



## Página 3

#PUBLICO 
TE 074 
 
 
3 / 4 
 
Coleções de 
Schema 
XML 
0.5 
0.5 
0.5 
Máscaras 
0.5 
0.5 
0.5 
Sub-
Objeto 
Estendido 
0.5 
0.5 
0.5 
Coluna 
4 
2 
2 
Metafile 
0.5 
0.5 
0.5 
Sub-
Replicaçã
o 
0.5 
0.5 
0.5 
Coluna 
da 
PK/AK 
1 
1 
1 
Método 
0.5 
0.5 
0.5 
Tabela 
4 
4 
4 
Coluna 
da 
View 
1 
1 
1 
Modelo 
0.5 
2 
0.5 
Tabela 
Auxiliar 
4 
4 
4 
Coluna 
do 
Indice 
2 
2 
2 
Note Link 
0.5 
0.5 
0.5 
Tabela de 
Query 
Materializa
da 
4 
4 
4 
Configuraçõ
es 
0.5 
0.5 
0.5 
Notificaçõe
s de Evento 
0.5 
0.5 
0.5 
Tablespac
e 
1 
1 
1 
Contextos 
Confiáveis 
0.5 
0.5 
0.5 
Objeto 
Estendido 
0.5 
0.5 
0.5 
Tabulação 
0.5 
0.5 
0.5 
Contratos 
0.5 
0.5 
0.5 
Origem dos 
Dados 
0.5 
0.5 
0.5 
Template 
0.5 
0.5 
0.5 
Contratos 
de 
Mensagem 
0.5 
0.5 
0.5 
Pacote 
0.5 
0.5 
0.5 
Template 
de Trigger 
0.5 
0.5 
0.5 
Database 
0.5 
0.5 
0.5 
Pacote 
de 
Database 
0.5 
0.5 
0.5 
Termo do 
Glossário 
0.5 
0.5 
0.5 
Datatype 
Abstrato 
0.5 
0.5 
0.5 
Palavra 
Chave 
0.5 
0.5 
0.5 
Texto 
0.5 
0.5 
0.5 
Default 
0.5 
0.5 
0.5 
Parágrafo 
de Título 
0.5 
0.5 
0.5 
Tipos 
de 
Mensagem 
0.5 
0.5 
0.5 
Diagrama 
Físico 
1 
4 
1 
Perfil 
de 
Dados 
de 
Teste 
0.5 
0.5 
0.5 
Título 
de 
Grupo 
0.5 
0.5 
0.5 
Dimensão 
0.5 
0.5 
0.5 
Permissão 
0.5 
0.5 
0.5 
Trigger 
0.5 
0.5 
0.5 
Domínio 
0.5 
0.5 
0.5 
Permissões 
de Linha 
0.5 
0.5 
0.5 
Trigger de 
DBMS 
0.5 
0.5 
0.5 
Edições 
0.5 
0.5 
0.5 
Polyline 
0.5 
0.5 
0.5 
Usuário 
0.5 
0.5 
0.5 
Elipse 
0.5 
0.5 
0.5 
Pools 
de 
Recurso 
0.5 
0.5 
0.5 
View 
4 
2 
1 
  
  
  
  
Quebra de 
Página 
0.5 
0.5 
0.5 
Views 
Materializa
das 
0.5 
0.5 
0.5 
 
Complexidade do Modelo 
Quantidade de Objetos Criados/Alterados/Excluídos Multiplicador



## Página 4

#PUBLICO 
TE 074 
 
 
4 / 4 
 
Até 
Complexidade 
20 
Simples 
1,00 
40 
Médio 
1,05 
60 
Complexo 
1,10 
> 60 
Muito Complexo 
1,15 
 
Forma de Aplicação da Metodologia 
1. 
Cada ação executada (criar/alterar/excluir) em cada objeto do modelo possui um peso pré-estabelecido; 
2. 
A atividade de validação possui atividades descritas no item “Ações de Controle”; 
3. 
O quantitativo de objetos influencia no prazo de atendimento, visto incremento na complexidade da 
demanda; 
4. 
O cálculo busca a menor unidade de tempo (segundos) para considerar o arredondamento; 
5. 
O prazo de atendimento começa a ser contado a partir do momento que a demanda entra no estado “Em 
Atendimento” e para de ser contado quando entra no estado “Pendente” ou “Atendido”; 
6. 
O período de trabalho considerado é das 10 às 16h: 
a) Se uma demanda entrar ou retornar ao estado “Em Atendimento” antes das 10h, será considerado o início 
efetivo da demanda para efeito do indicador; 
b) Se uma demanda entrar em pendência ou finalizar após as 16h, será considerado o horário efetivo da ação;  
c) 
Se uma demanda estiver em atendimento por vários dias, cada dia somará 6h ao atendimento. 
7. 
Uma demanda pode ser dividida em várias fases (entre atendimento e pendência): 
a) Cada período será arredondado em horas na contagem sendo de 0 a 29min arredondado para baixo e de 
30 a 59min, arredondado para cima. 
Fórmulas e Exemplo de Aplicação 
Quantidade de Alterações por Tipo de Objeto 
Tipo Objeto 
Total 
Ação 
UAM 
TUAM 
Tabela 
5 
Criação 
4 
20 
Chave 
5 
Criação 
4 
20 
Coluna 
40 
Criação 
4 
160 
Relacionamento 
4 
Criação 
8 
32 
Total de Objetos 
54 
UAM Objetos 
232 
  
Ações de Controle (TUAM_AC) 
120 
Total UAM (UAM Objetos + TUAM_AC) 
352 
Multiplicador 
1,1 
Produtividade ADI/dia 
180 
  
Fórmula 
(Total UAM * Multiplicador) / [Produtividade ADI / (6*3600)] 
Total de segundos 
46464 
Arredondar para cima (Total de segundos/3600) 
Total de horas 
13 
Arredondar para baixo (Total de horas / 6) 
Dia(s) 
2 
Arredondar para cima (Total de horas % 6) 
Hora(s) 
1

