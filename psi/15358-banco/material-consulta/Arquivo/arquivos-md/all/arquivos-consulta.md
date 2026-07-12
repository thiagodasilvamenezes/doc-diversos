

*INICIO "prompt-analise-material.md"*


----


Você atuará como especialista sênior em Administração de Dados, Administração de Banco de Dados, modelagem de dados corporativa, governança de dados, arquitetura de banco de dados SQL Server, performance OLTP e elaboração de Produção Temática para processo seletivo interno da CAIXA.

Sua missão NÃO é redigir imediatamente a Produção Temática final.

Sua missão inicial é realizar uma análise detalhada, organizada, crítica e rastreável de todos os materiais fornecidos, verificando se eles são suficientes para sustentar uma Produção Temática alinhada aos conceitos, práticas, orientações e normas estabelecidas pela CAIXA.

1. Contexto da Produção Temática

A Produção Temática refere-se ao estudo de caso do Sistema de Atendimento Digital — SIADL.

O SIADL é um sistema corporativo de atendimento digital de uma instituição financeira, utilizado por milhões de clientes diariamente, com problemas recentes de:

Dados inconsistentes;
Lentidão generalizada;
Timeout em operações críticas;
Crescimento acelerado de tabelas transacionais;
Aumento de incidentes operacionais;
Picos de CPU;
Consumo excessivo de memória.

A arquitetura informada possui:

Banco de dados relacional corporativo Microsoft SQL Server 2025;
Ambiente OLTP crítico;
Aproximadamente 12 TB de dados;
Mais de 10 mil usuários simultâneos;
Processamento médio de 25 mil transações por minuto;
Ausência de integração com APIs e microsserviços;
Janela reduzida para manutenção.

O candidato atuará como coordenador técnico responsável por diagnosticar os problemas e propor soluções estruturais nos modelos de dados conceitual e físico.

2. Objetivo da análise documental

Analise todos os documentos fornecidos pelo usuário, incluindo normas, guias, glossários, orientações, modelos, apostilas, apresentações, arquivos Markdown, PDFs, DOCX ou qualquer outro material de apoio.

A análise deve identificar, organizar e relacionar todo conteúdo útil para responder à Produção Temática, especialmente nos seguintes eixos:

Modelagem conceitual de dados;
Modelagem lógica de dados;
Modelagem física de dados;
Administração de Dados — AD;
Administração de Banco de Dados — DBA;
Governança de dados;
Glossário, padronização e conceitos corporativos;
Qualidade, integridade e consistência dos dados;
Performance, tuning, índices, particionamento e volumetria;
Segurança, disponibilidade, rastreabilidade e auditoria;
Evolução controlada do modelo e do banco;
Processo de trabalho em squads ou plataformas;
Papéis, responsabilidades e fronteiras entre AD, DBA, desenvolvimento, arquitetura, negócio e operação;
Estratégias preventivas e corretivas para crescimento vegetativo do banco;
Normas, diretrizes ou práticas da CAIXA que possam sustentar tecnicamente a resposta.
3. Método obrigatório de análise

Faça a análise em etapas. Não pule diretamente para a redação final.

Etapa 1 — Inventário dos materiais

Crie uma tabela com todos os arquivos analisados contendo:

Nome do arquivo;
Tipo de documento;
Tema principal identificado;
Assuntos secundários;
Possível utilidade para a Produção Temática;
Grau de relevância: alto, médio ou baixo;
Observações sobre qualidade, completude ou limitações do documento.

Quando possível, cite a página, seção, título ou trecho de onde a informação foi extraída.

Etapa 2 — Extração dos conceitos e normas aplicáveis

Para cada documento relevante, extraia os conceitos, normas, diretrizes, recomendações ou práticas que possam apoiar a Produção Temática.

Organize em tabela com:

Conceito ou orientação extraída;
Documento de origem;
Página/seção/trecho de referência;
Aplicação prática na Produção Temática;
Relação com o SIADL;
Observação sobre como usar esse conteúdo na resposta final.

Não invente normas ou conceitos. Se algo não estiver claramente sustentado nos documentos, sinalize como inferência técnica e separe de conteúdo normativo.

Etapa 3 — Mapeamento dos requisitos da Produção Temática

Decomponha o enunciado da Produção Temática em todos os requisitos explícitos e implícitos.

Monte uma matriz com as seguintes colunas:

Item exigido pela Produção Temática;
Tipo do requisito: técnico, gerencial, conceitual, físico, governança, processo ou sustentação;
O que precisa ser respondido;
Evidência ou material disponível para apoiar;
Fonte documental;
Grau de cobertura: completo, parcial, insuficiente ou ausente;
Risco de não atender bem à banca;
Ação recomendada.

Considere obrigatoriamente os seguintes itens do enunciado:

Apresentação do modelo de dados conceitual ideal;
Aplicação dos conceitos da modelagem conceitual;
Apresentação do modelo físico ideal;
Justificativa para diferenças entre modelo conceitual e físico;
Diagnóstico dos problemas atuais do SIADL;
Tratamento de dados inconsistentes;
Tratamento de lentidão, timeout, CPU e memória;
Tratamento de crescimento acelerado das tabelas transacionais;
Proposta para ambiente OLTP crítico;
Estratégia para SQL Server 2025;
Estratégia para 12 TB de dados;
Estratégia para mais de 10 mil usuários simultâneos;
Estratégia para 25 mil transações por minuto;
Estratégia considerando janela reduzida de manutenção;
Fronteiras de atuação entre ADs e DBAs;
Dinâmica de interação entre ADs, DBAs e time de desenvolvimento;
Atuação do representante do Capítulo de Administração e Banco de Dados;
Estratégia proativa para crescimento vegetativo;
Estratégia corretiva tempestiva;
Manutenção do banco adequado quanto a desenho, arquitetura, performance, integridade, segurança e disponibilidade.
Etapa 4 — Matriz de aderência às normas e conceitos CAIXA

Monte uma matriz de aderência com:

Tema exigido na PT;
Conceito CAIXA relacionado;
Norma, guia, glossário ou orientação de apoio;
Evidência encontrada;
Como esse ponto deve aparecer na Produção Temática;
Grau de aderência;
Lacunas encontradas.

Classifique a aderência como:

Alta: há material claro e suficiente;
Média: há material útil, mas exige complementação técnica;
Baixa: há pouca sustentação documental;
Ausente: não foi encontrada sustentação nos documentos.
Etapa 5 — Identificação de lacunas

Aponte, de forma objetiva, quais pontos da Produção Temática ainda não estão suficientemente cobertos pelos documentos.

Para cada lacuna, informe:

Tema ou requisito não coberto;
Por que o material atual é insuficiente;
Impacto na qualidade da Produção Temática;
Tipo de material adicional recomendado;
Exemplos de documentos ou assuntos que deveriam ser buscados;
Prioridade: alta, média ou baixa.

Exemplos de possíveis lacunas a verificar:

Norma interna específica de Administração de Dados;
Guia de modelagem conceitual da CAIXA;
Guia de modelagem física;
Padrões de nomenclatura;
Processo de atuação de ADs e DBAs;
Processo de versionamento de modelo;
Fluxo de aprovação de mudanças de banco;
Diretrizes de segurança da informação;
Diretrizes de auditoria e rastreabilidade;
Diretrizes de performance para SQL Server;
Estratégia institucional para sustentação de bancos críticos;
Políticas de retenção, expurgo e arquivamento;
Padrões de documentação técnica;
Conceitos de capítulo, plataforma e squad, se aplicáveis.
Etapa 6 — Organização lógica do material

Após analisar os documentos, proponha uma organização lógica do conteúdo para apoiar a futura redação da Produção Temática.

Monte uma estrutura sugerida contendo:

Introdução executiva;
Diagnóstico do cenário atual;
Fundamentos normativos e conceituais CAIXA;
Modelo conceitual ideal;
Modelo físico ideal;
Justificativas das intervenções físicas;
Plano de atuação de ADs e DBAs;
Governança e fluxo de evolução do banco;
Estratégia proativa e corretiva de sustentação;
Roadmap de implantação;
Riscos e mitigadores;
Conclusão.

Para cada seção, indique:

Objetivo da seção;
Conteúdo que deve ser usado;
Fontes documentais de apoio;
Pontos obrigatórios do enunciado atendidos;
Observações para melhorar a aderência à banca.
Etapa 7 — Avaliação de suficiência

Ao final, responda claramente:

Os documentos fornecidos são suficientes para elaborar uma Produção Temática forte, alinhada à CAIXA?
Quais partes estão bem sustentadas?
Quais partes estão parcialmente sustentadas?
Quais partes estão frágeis ou sem sustentação?
Que novos materiais deveriam ser buscados antes da redação final?
É possível redigir uma versão final com o material atual? Se sim, quais ressalvas devem ser observadas?
Quais pontos exigirão complementação com conhecimento técnico geral, por não estarem explicitamente nos documentos?
4. Critérios de qualidade da análise

A análise deve ser:

Detalhada;
Organizada;
Rastreável;
Baseada em evidências;
Alinhada ao enunciado;
Alinhada ao ambiente corporativo CAIXA;
Técnica, mas objetiva;
Sem excesso de generalidades;
Sem inventar normas inexistentes;
Sem misturar opinião com evidência documental;
Capaz de orientar a redação final da Produção Temática.

Sempre que usar uma informação de um documento, indique a fonte.

Caso o documento não traga página ou seção identificável, informe o nome do arquivo e o trecho ou contexto onde a informação foi localizada.

5. Formato da saída esperada

Entregue a análise com a seguinte estrutura:

Análise documental para elaboração da Produção Temática — SIADL
1. Visão geral do material analisado
2. Inventário dos documentos

Tabela com os arquivos, temas e relevância.

3. Conceitos e normas extraídos dos materiais

Tabela consolidada com conceitos, fontes e aplicação na PT.

4. Requisitos da Produção Temática

Tabela decompondo tudo que o enunciado exige.

5. Matriz de aderência entre enunciado e materiais de apoio

Tabela relacionando cada exigência da PT com os documentos disponíveis.

6. Cobertura por tema

Avalie separadamente:

Modelagem conceitual;
Modelagem física;
SQL Server e performance;
ADs;
DBAs;
Governança;
Segurança;
Integridade;
Disponibilidade;
Evolução de demandas;
Sustentação e melhoria contínua.
7. Lacunas identificadas

Tabela com lacunas, impacto e recomendação de material adicional.

8. Organização lógica recomendada para a Produção Temática

Estrutura sugerida da resposta final, com indicação de quais fontes usar em cada seção.

9. Avaliação final de suficiência

Informe se o material é suficiente, parcialmente suficiente ou insuficiente para gerar uma Produção Temática forte.

10. Próximos passos recomendados

Liste as ações recomendadas antes de redigir a versão final.

6. Regra final

Somente após concluir essa análise documental e a matriz de aderência, proponha a redação da Produção Temática final.

Não gere a Produção Temática final nesta primeira etapa, a menos que seja explicitamente solicitado


----


*FIM "prompt-analise-material.md"*


*INICIO "TE074.md"*


----


# TE074 - documento principal

**Arquivo de origem:** `TE074.pdf`

**Total de páginas:** 15

---


## Página 1

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
1 / 15 
 
MODELAGEM DE DADOS RELACIONAL PARA SISTEMAS E APLICATIVOS DE NEGÓCIO CAIXA 
SUMÁRIO DA NORMA 
 
1 
FINALIDADE,4 
2 
DEFINIÇÕES,4 
3 
REGRAS,4 
3.1 
FUNDAMENTO,4 
3.2 
MODELAGEM FÍSICA DE DADOS,4 
3.2.1 
DIRETRIZES PARA OS OBJETOS FÍSICOS,4 
3.2.2 
DESCRIÇÃO DE OBJETOS,5 
3.2.3 
MODELO,5 
3.2.4 
TABELA,6 
3.2.5 
TABELA TRANSACIONAL/NEGOCIAL,7 
3.2.6 
TABELA DE APOIO,7 
3.2.7 
TABELA TEMPORAL E TABELA DE HISTÓRICO TEMPORAL,7 
3.2.8 
PARTICIONAMENTO DE TABELA,7 
3.2.9 
COMPACTAÇÃO DE DADOS,8 
3.2.10 
CICLO DE VIDA DO DADO,8 
3.2.11 
RELACIONAMENTO,8 
3.2.12 
COLUNA,9 
3.2.13 
CHAVE PRIMÁRIA (PRIMARY KEY),10 
3.2.14 
ÍNDICE SECUNDÁRIO (INDEX),10 
3.2.15 
METAMODELAGEM,10 
3.2.16 
FRAMEWORKS ESPECÍFICOS APROVADOS PELA SUART,11 
3.2.17 
PRIVACIDADE DE DADOS NA MODELAGEM,11 
3.2.18 
CRITÉRIOS DE PADRONIZAÇÃO E ORGANIZAÇÃO GRÁFICA DE MODELO DE DADOS,11 
3.3 
CRITÉRIOS DE VALIDAÇÃO PARA MODELO DE DADOS,11 
3.4 
ADERÊNCIA ÀS REGRAS DE NEGÓCIO,12 
3.5 
INTEGRAÇÃO E COMPARTILHAMENTO DE DADOS,13 
3.6 
TÉCNICAS DE MODELAGEM,13 
3.7 
GESTÃO ELETRÔNICA DE DOCUMENTOS,13 
3.8 
PADRÕES PARA OS PRODUTOS ADQUIRIDOS,13 
4 
PROCEDIMENTOS,13 
4.1 
SUART,13 
4.2 
EQUIPE DE DESENVOLVIMENTO,14 
4.3 
ADMINISTRAÇÃO DE DADOS E INFORMAÇÕES (ADI),14 
4.4 
ADMINISTRAÇÃO DE BANCO DE DADOS (ABD),14 
5 
ANEXOS,15



## Página 2

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
2 / 15 
 
PREFÁCIO 
 
TÍTULO 
MODELAGEM DE DADOS RELACIONAL PARA SISTEMAS E APLICATIVOS DE NEGÓCIO CAIXA 
UNIDADE RESPONSÁVEL 
SUART – SN ARQUITETURA TI 
  
PÚBLICO ALVO 
GECPA, SUDEA, SUDEB, SUDEC, CESOA, CESOB. 
ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR 
Item 3.2.3.6.1: alteração de texto referente a exceções aplicáveis a views. 
Inclusão do item 3.2.6.1.2 com orientações sobre a tabela de LOG alinhada a [MN, TE197]. 
Alteração do link da ferramenta de pré validação de http://gestaodedados.coresp.caixa para https://siagt.caixa/ nos 
itens 3.3.3 e 4.2.4.1. 
Importação de páginas referenciadas por links para anexos, sem alteração da redação. 
RELAÇÃO COM OUTROS NORMATIVOS 
AD238 GESTÃO DOCUMENTAL - DOCUMENTOS ARQUIVÍSTICOS DIGITAIS EM PLATAFORMA ECM/GED 
CR439 ATENDIMENTO AOS DIREITOS DO TITULAR - LEI GERAL DE PROTEÇÃO A DADOS PESSOAIS (LGPD) 
OR016 Tratamento da Informação 
OR188 PROGRAMA DE GOVERNANÇA DE DADOS 
PO007 Política de Segurança e Informação 
TE073 GERÊNCIA DE MODELOS DE SISTEMAS DE INFORMAÇÃO 
TE105 PROCEDIMENTOS OPERACIONAIS DO SISTEMA DE CADASTRO DE CLIENTES CAIXA - SICLI 
TE109 INFORMAÇÕES COMPARTILHADAS DA CAIXA 
TE111 Padrões Arquiteturais CAIXA 
TE124 Gestão e Integração do Cadastro de Clientes CAIXA 
TE174 DIRETRIZES PARA GERENCIAMENTO DE METADADOS 
TE177 DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS 
TE183 AQUISIÇÃO E IMPLANTAÇÃO DE APLICATIVOS DE NEGÓCIOS 
TE190 GERENCIAMENTO DE IMAGENS DE DOCUMENTOS E ASSINATURAS 
TE197 SEGURANÇA PARA O DESENVOLVIMENTO E MANUTENÇÃO DE SISTEMAS 
 
PRODUTOS RELACIONADOS 
Não se aplica 
PROCESSOS RELACIONADOS 
PR.01011 - 4.8.1.2 Prover arquitetura de solução de TI 
 
REGULAMENTAÇÃO UTILIZADA 
Não se aplica 
DOCUMENTAÇÃO UTILIZADA 
Não se aplica



## Página 3

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
3 / 15 
 
ROTEIRO PADRÃO 
Não se aplica 
NORMATIVOS REVOGADOS 
Não se aplica 
ATENDIMENTO DE DÚVIDAS 
SUART – SN ARQUITETURA TI



## Página 4

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
4 / 15 
 
MODELAGEM DE DADOS RELACIONAL PARA SISTEMAS E APLICATIVOS DE NEGÓCIO CAIXA 
1  
FINALIDADE 
1.1 Definir as regras de modelagem de dados relacionais, denominação de objetos físicos e os critérios de validação 
dos modelos de dados dos sistemas e aplicativos de negócios da CAIXA. 
2  
DEFINIÇÕES 
2.1 Disponível em https://dados.caixa/portal/glossario?norma=TE074. 
3  
REGRAS 
3.1  
 FUNDAMENTO 
3.1.1 A garantia da qualidade no processo de construção dos modelos de dados é condição fundamental para o 
estabelecimento e consolidação da Arquitetura de Informação na CAIXA. 
3.1.2 A implementação da Arquitetura da Informação objetiva a estruturação dos ativos de dados e informações da 
empresa para evidenciar a forma como as categorias de informação estão relacionadas aos processos de negócios 
da organização e as condições de conexão entre essas categorias, com a finalidade de oferecer suporte aos 
processos de desenvolvimento e de uso/reuso da informação com o intuito de viabilizar sua localização, recuperação 
e disseminação. 
3.1.3 As normas que regem a Arquitetura da Informação e a Administração de Dados referem-se a todo sistema 
corporativo, independentemente de onde o mesmo é desenvolvido.  
3.1.4 Os modelos de dados contêm apenas os objetos necessários para o cumprimento da finalidade de negócio 
descrita na documentação elaborada pela área gestora da aplicação. 
3.1.5 As diretrizes e responsabilidades para o processo de Gerenciamento de Metadados na CAIXA estão 
estabelecidos na [MN, TE174]. 
3.1.6 O Programa de Governança de Dados – PGD que norteia a atuação dos usuários quanto aos princípios de 
governança e gestão de dados na CAIXA está estabelecido na [MN, OR188]. 
3.1.7 A fim de facilitar a elaboração e validação da modelagem de dados com maior qualidade, confiabilidade e que 
atenda às reais expectativas da CAIXA são utilizadas as melhores práticas que constam do Guia para Modelagem e 
Validação 
de 
Modelos 
de 
Dados 
Caixa, 
disponível 
no 
endereço  
https://caixa.sharepoint.com/sites/5141/SitePages/Guia-para-Modelagem-e-Valida%C3%A7%C3%A3o-de-Modelos-
de-Dados.aspx. 
3.1.8 Os produtos tecnológicos prospectados possuem aderência ao Ambiente Tecnológico da CAIXA, conforme [MN, 
TE111] e à Política de Segurança da Informação da CAIXA, conforme [MN, PO007] e as Diretrizes de Segurança para 
o Desenvolvimento e Manutenção de Sistemas, conforme [MN, TE197]. 
3.1.9 A métrica da produtividade do Administrador de Dados do Capítulo de Dados é baseada na contagem de 
objetos/ações, estimando um prazo de atendimento para demandas de validação de modelos de dados e está 
detalhada no ANEXO V – Estimativa de prazo de atendimento - UAM. 
3.1.10 Questões relacionadas a itens não contemplados na norma ou a utilização de quaisquer objetos na ferramenta 
de modelagem de dados não expressamente citados, serão analisadas e resolvidas com a decisão da SUART. 
3.2  
MODELAGEM FÍSICA DE DADOS 
3.2.1  
DIRETRIZES PARA OS OBJETOS FÍSICOS 
3.2.1.1 Os objetos utilizados na técnica de modelagem de dados são denominados de forma a retratar o conceito que 
estes representam dentro do contexto negocial. 
3.2.1.2 A padronização de nomenclatura dos objetos físicos está detalhada nos guias ANEXO II – Nomenclatura de 
objetos e ANEXO III – Expressões regulares que definem objetos físicos dos SGBD. 
3.2.1.3 É obrigatória a classificação da informação para o modelo, tabelas e colunas, em campo específico no modelo 
de dados, com base em definição apresentada no [MN, OR016]. 
3.2.1.4 Caso seja indicado o uso da arquitetura de referência para o desenvolvimento de aplicações Spring Batch a 
modelagem de dados está detalhada no portal Guia de Modelagem - Spring Batch.



## Página 5

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
5 / 15 
 
3.2.2  
 DESCRIÇÃO DE OBJETOS 
3.2.2.1 É obrigatória a elaboração, de forma concisa, clara, não ambígua, escrita em linguagem não técnica e usando 
a língua portuguesa, e evitar jargões que não agregam conteúdo (p.ex. CAMPO, COLUNA, ATRIBUTO, TABELA, 
ENTIDADE, etc.) descrevendo adequadamente sua finalidade. 
3.2.2.2 Quando for inevitável a utilização de termos e expressões em idioma estrangeiro, acompanhá-los das 
respectivas traduções. 
3.2.2.3 Toda tabela e coluna representada em um modelo de dados possui comentários que descrevam a sua 
finalidade para o sistema/negócio. 
3.2.2.4 Nos comentários da tabela e da coluna, não é permitido apenas repetir o nome indicado na tabela e coluna. 
3.2.2.4.1  É necessário definições do objeto com exemplos, evitando tautologia (redundância) e acrescentando 
finalidade/objetivo, exceções e/ou restrições. 
3.2.2.5 A utilização de exemplos para clarear o conceito envolvido não dispensa a sua descrição. 
3.2.2.6 Não contém apenas a finalidade do objeto, mas uma descrição no contexto do negócio. 
3.2.2.7 A descrição de um objeto representa seu conceito no contexto no qual este está inserido. 
3.2.2.8 Não se copia o que está no dicionário, enciclopédia ou qualquer outro texto descritivo relacionado a conceito 
fora do contexto do negócio. 
3.2.2.9 A descrição do objeto é elaborada com base na terminologia do negócio, mas sempre buscando ser 
compreensível para o leitor leigo ou não especializado. 
3.2.2.10 A descrição é limitada a uma instância de um objeto e não a um conjunto deles. 
3.2.2.11 Caso existam descrições particulares, que restrinjam ou ampliem o conceito definido, explicitar em 
especializações ou generalizações que descrevam cada uma dessas visões, deixando claro a qual delas pertence.  
3.2.3  
MODELO 
3.2.3.1 O nome e código do modelo são equivalentes conforme estabelecido na [MN, TE073]. 
3.2.3.2 O nome e código do diagrama padrão do modelo, onde são apresentados todos os objetos, é definido como 
SSS_DIAGRAMA_PRINCIPAL, onde:  
▪ SSS: Sigla do sistema com 3 letras. 
3.2.3.2.1 É facultada a criação de outros diagramas com o objetivo de apresentar as áreas de interesse para facilitar 
a percepção do escopo. 
3.2.3.2.2 Toda e qualquer alteração feita nos diagramas secundários é derivada de alterações feitas no diagrama 
padrão. 
3.2.3.2.3 A equipe ADI cuida exclusivamente do modelo de dados do ambiente de desenvolvimento (DES) e, 
excepcionalmente, quando autorizado pela SUART, poderá ser avaliado outro tipo de modelo de dados para o 
ambiente.  
3.2.3.2.4 A CAIXA utiliza somente o modelo físico para manutenção de suas bases de dados, onde ficam 
armazenados os metadados relacionados aos objetos nele contidos. 
3.2.3.3 É permitida somente a utilização dos seguintes objetos na ferramenta de modelagem de dados: 
▪ Chave Alternativa, 
▪ Chave Primária, 
▪ Chave Única, 
▪ Check Constraint, 
▪ Coluna, 
▪ Database, 
▪ Function, 
▪ Índice Primário, 
▪ Índice Secundário, 
▪ Owner, 
▪ Relacionamento/Chaves Estrangeira,



## Página 6

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
6 / 15 
 
▪ Schema, 
▪ Sequence, 
▪ Tabela, 
▪ Tablespace, 
▪ Triggers não negociais (para uso pela auditoria), 
▪ View. 
3.2.3.3.1 Permissão para uso não implica aprovação automática para implementação, sendo necessária avaliação 
pelo ADI. 
3.2.3.4 Solicitações de concessão de privilégios adicionais ao OWNER do sistema no SGBD não serão armazenadas 
no modelo, sendo direcionadas à equipe de operações. 
3.2.3.5 O OWNER do modelo condiz com a sigla do sistema (p.ex: SIAGA com OWNER AGA, com exceção dos 
sistemas armazenados no Microsoft SQL Server, que possuem OWNER DBO). 
3.2.3.6 No caso de inclusão/manutenção de Trigger, Tablespace, Índice Secundário e Function não são validados 
pela ADI, encaminhando diretamente para avaliação do ABD. 
3.2.3.6.1 No caso de inclusão/manutenção de View ou View Materializada, a pertinência, a nomeação e descrição, 
inclusive de colunas, serão validadas pela ADI para posterior encaminhamento para avaliação do ABD, a exceção do 
SIICO, SICLI ou SIISO que obrigatoriamente tem que obter autorização da SUART. 
3.2.3.7 É obrigatória a vinculação da extensão da ferramenta “Extensão CAIXA” para obtenção das propriedades 
adicionais. 
3.2.3.7.1 Para objetos em manutenção é obrigatoriamente ajustado/inserido os metadados faltantes. 
3.2.3.8 Cabe a equipe de desenvolvimento verificar o impacto nas aplicações e acionar a equipe ABD para avaliação. 
3.2.3.9 Utilizar as regras de normalização para validar as estruturas do modelo de dados relacional. 
3.2.3.9.1 O processo de normalização é conduzido, no mínimo, até a terceira forma normal. 
3.2.3.9.2 Os modelos de dados relacionais contêm apenas uma técnica de modelagem de dados. 
3.2.4  
TABELA 
3.2.4.1 Uma tabela tem pelo menos uma coluna. 
3.2.4.2 Cada ocorrência da tabela é identificada de forma unívoca. 
3.2.4.3 É recomendável que a chave primária da tabela associativa seja composta, no mínimo, pelos relacionamentos 
que a associam. 
3.2.4.4 Somente são incluídos objetos que pertençam ao sistema. 
3.2.4.5 Não são inseridas tabelas no modelo com a condição “NO GENERATE”. 
3.2.4.6 Toda tabela obrigatoriamente está vinculada ao OWNER do sistema. 
3.2.4.7 Toda tabela tem informações sobre volume e expectativa de crescimento, preenchida no modelo de dados 
nos seguintes campos: 
▪ NUMBER = Volume de dados previsto em quantidade de linhas, 
▪ ROW GROWTH RATE = Crescimento percentual estimado ao ano.  
3.2.4.8 Toda tabela contém uma chave primária. 
3.2.4.9 Atentar quanto a utilização de SERVER e CLIENT CHECK CONSTRAINT de forma a não operacionalizarem 
regras de negócio no SGBD. 
3.2.4.10 Sempre que for identificada a existência de tabelas distintas com muitas colunas e relacionamentos em 
comum, avaliar a possibilidade de generalização, criação de um supertipo, contendo as colunas e relacionamentos 
comuns. 
3.2.4.10.1 As colunas e relacionamentos específicos ficariam nas especializações, subtipos. 
3.2.4.11 A criação de tabelas de Domínio (Tipo) orienta as melhores práticas de técnicas de modelagem. 
3.2.4.11.1 Toda tabela classificadora (Tipo, Classe e outros) opera segundo (em função de) duas ou mais 
propriedades do objeto sendo classificado.



## Página 7

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
7 / 15 
 
3.2.4.11.2 Sua definição, portanto, explicita a(s) propriedade(s) em que se baseia a classificação, tais como , sexo ou 
tipo de conta. 
3.2.4.11.3 Mesmo que a tabela seja referenciada em múltiplas funções, processos, áreas de negócio da CAIXA e/ou 
visões particulares dos sistemas, ainda assim seu conceito permanece estável. 
3.2.5  
TABELA TRANSACIONAL/NEGOCIAL 
3.2.5.1 Tabelas onde ocorrem os fluxos negociais da aplicação. 
3.2.5.2 Os dados nela armazenados são necessários para o adequado funcionamento da aplicação e atendimento às 
regras de negócio do gestor. 
3.2.5.3 Dados contidos nestas tabelas que, em seu ciclo de vida, não são mais necessários são movidos para uma 
tabela auxiliar ou expurgados, caso este ciclo de vida tenha terminado. 
3.2.6  
TABELA DE APOIO 
3.2.6.1 A padronização dos tipos e uso de Tabelas de Apoio está detalhada no Guia para Modelagem e Validação de 
Modelos de Dados Caixa disponível https://caixa.sharepoint.com/sites/5141/SitePages/Guia-para-Modelagem-e-
Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx. 
3.2.6.1.1 Os tipos de Tabelas de Apoio são: 
▪ Tabela de Histórico; 
▪ Tabela de Log; 
▪ Tabela Auxiliar; 
▪ Tabela de Carga; 
▪ Tabela de Stage; 
▪ Tabela de Arquivo; 
▪ Tabela de Parâmetro; 
▪ Tabela Resumo/Total/Estatística. 
3.2.6.1.2 A tabela de Log é utilizada quando houver recomendação de auditoria e/ou necessidade das regras de 
negócio ou por motivos de segurança definidos pelo gestor, não se relacionando com as demais tabelas do modelo e 
avaliando a volumetria com a possibilidade de particionamento, conforme [MN, TE197]. 
3.2.7  
TABELA TEMPORAL E TABELA DE HISTÓRICO TEMPORAL 
3.2.7.1 Os padrões para a utilização de tabela temporal e tabela de histórico temporal estão detalhados no item 5.3 
do 
Guia 
para 
Modelagem 
e 
Validação 
de 
Modelos 
de 
Dados 
Caixa 
disponível 
no 
portal  
https://caixa.sharepoint.com/sites/5141/SitePages/Guia-para-Modelagem-e-Valida%C3%A7%C3%A3o-de-Modelos-
de-Dados.aspx. 
3.2.8  
PARTICIONAMENTO DE TABELA 
3.2.8.1 Critérios que são analisados para que uma tabela seja candidata ao particionamento: 
▪ Volume de linhas inicial; 
▪ Taxa de Crescimento ao ano; 
▪ As características Negociais; 
▪ As particularidades do SGBD. 
3.2.8.2 A equipe de desenvolvimento solicita parecer do ABD quanto ao particionamento proposto, anexando à 
solicitação de alteração da demanda encaminhada ao ADI. 
3.2.8.3 Tabelas cujo volume para o período de 1 ano seja superior a 100.000.000 (cem milhões) de linhas são 
assinaladas não somente no relatório de aprovação do ADI, mas também com as informações definidas no item 
3.2.5.3, visando alertar o ABD para analisar esse assunto em tempo de implementação física. 
3.2.8.4 É registrada nas propriedades físicas do objeto a indicação do particionamento da tabela em campo 
apropriado, conforme SGBD utilizado. 
▪ Oracle e DB2 tem sua indicação na opção PARTITION; 
▪ Microsoft SQL Server é indicado na opção Microsoft.



## Página 8

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
8 / 15 
 
3.2.8.5 Informações adicionais sobre os critérios que são utilizados para particionamento estão disponíveis no PPDS. 
3.2.8.6 Se uma tabela transacional possuir tabelas HISTORICO e/ou AUXILIAR também podem ser candidatas ao 
mesmo critério de particionamento. 
3.2.9  
COMPACTAÇÃO DE DADOS  
3.2.9.1 Toda nova tabela criada em SGBD relacional tem a indicação, na opção adequada da ferramenta de 
modelagem, da forma de compactação. 
▪ DB2 é indicado na opção PHYSICAL OPTIONS, COMPRESS-CLAUSE, COMPRESS (YES); 
▪ Oracle é indicada na opção PHYSICAL OPTIONS, TABLE PROPERTIES, EXTRA, COMPRESS_CLAUSE, 
COMPRESS (BASIC); 
▪ Microsoft SQL Server é indicada na opção PHYSICAL OPTIONS, WITH, DATA_COMPRESSION (PAGE). 
3.2.9.2 Existem outras possibilidades de compressão para os modelos de dados Oracle que podem ser exploradas. 
3.2.9.3 A não utilização de compactação é embasada em relatório técnico elaborado por ABD.  
3.2.9.4 Informações adicionais sobre os critérios que são utilizados para Compactação de Dados estão disponíveis 
no PPDS. 
3.2.10  
CICLO DE VIDA DO DADO 
3.2.10.1 Definir o ciclo de vida dos dados, considerando: 
▪ O prazo máximo de retenção destes dados no ambiente CAIXA precisa ser informado baseado em regras de negócio, 
normas externas, leis e/ou normativos para a visão do fechamento de seu ciclo de vida; 
▪ Os dados na base online são mantidos por prazo necessário e suficiente para atendimento às regras de negócio; 
▪ Os dados que não necessitem permanecer nas Tabelas Transacionais, conforme definições de regra de negócio, 
são migrados para as Tabelas Históricas ou Auxiliares a fim de garantir a performance da aplicação. 
3.2.10.2 O prazo de retenção é definido pelo gestor da informação segundo as necessidades de negócio. 
3.2.10.2.1 A equipe de desenvolvimento registra em campos apropriados no modelo de dados o que foi definido pelo 
gestor e, preferencialmente, informa a qual coluna está vinculada. 
3.2.10.3 Informações adicionais sobre os critérios que são utilizados para definição do Ciclo de Vida estão disponíveis 
no PPDS. 
3.2.11  
RELACIONAMENTO 
3.2.11.1 As propriedades de relacionamento são: associação, cardinalidade de associação, opcionalidade de 
associação e CONSTRAINT de relacionamento. 
3.2.11.2 Um relacionamento opcional não participa da chave primária. 
3.2.11.3 As associações entre tabelas são representadas exclusivamente por relacionamentos ou tabelas 
associativas. 
3.2.11.4 É vedado definir como coluna de uma tabela o identificador de outra tabela. 
3.2.11.5 A referência ao identificador de uma tabela é representada pelo relacionamento. 
3.2.11.6 Em um auto relacionamento as duas associações são opcionais para que se possam representar o primeiro 
e o último elemento da hierarquia. 
3.2.11.7 Um relacionamento não contém informação obtida de outros relacionamentos. 
3.2.11.8 O nome, código e nome da CONSTRAINT são iguais. 
3.2.11.9 Os verbos de ligação que definem a ação (PARENT e CHILD ROLE) são obrigatórios e diferentes. 
3.2.11.10 Quando utilizando a opção “CHANGE PARENT ALLOWED”, é importante ter a certeza de que é possível a 
alteração de ocorrências na tabela pai de uma tabela filha regida pelo relacionamento. 
3.2.11.11 Todo relacionamento possui uma chave pai (PARENT KEY) vinculada. 
3.2.11.12 Avaliar os tipos de deleção corretos para cada SGBD (RESTRICT que não existe no Oracle). 
3.2.11.13 Relacionamentos são criados sem as opções abaixo selecionadas: 
▪ DISABLE;



## Página 9

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
9 / 15 
 
▪ Exceções; 
▪ RELY; 
▪ VALIDATE desabilitada; 
▪ Alteração na condição DEFERRED OPTION; 
▪ DB2: ENFORCED está habilitado. 
3.2.11.14 Relacionamentos entre duas tabelas cujos sentidos são inversos não são permitidos. 
3.2.11.15 Somente utilizar relacionamentos paralelos quando as razões para associar tabelas forem estáveis e não 
excederem a dois. 
3.2.11.15.1 Caso contrário substituir os relacionamentos por uma tabela associativa qualificada por uma tabela 
classificadora conforme abaixo:  
TABELA_1 
TABELA_2 
TABELA 
ASSOCIATIVA  
TIPO ASSOCIAÇÃO 
 
3.2.11.16 São permitidos somente relacionamentos com opcionalidade em pelo menos um dos sentidos. 
3.2.12  
COLUNA 
3.2.12.1 As colunas têm sua classe condizente com o tipo de coluna, cujas definições sobre utilização estão definidas 
no guia de ANEXO II – Nomenclatura de objetos, disponível no PPDS. 
3.2.12.2 Toda coluna que for diretamente relacionada a uma SEQUENCE tem sua vinculação representada no 
modelo. 
3.2.12.2.1 É obrigatório informar na aba de Standard Check da coluna no default o nome da SEQUENCE e o comando 
nextval. 
3.2.12.3 Toda coluna tem que estar assinalada no modelo de dados como exibir (Display). 
3.2.12.4 Novas colunas são sempre incluídas ao final da lista de colunas da tabela. 
3.2.12.5 Cabe atenção quanto à utilização do valor padrão (Default). Apesar de ele atender à necessidade, ele 
perdura, podendo divergir da atuação esperada em inclusões futuras à tabela. 
3.2.12.5.1 Mais detalhes podem ser obtidos no portal: https://caixa.sharepoint.com/sites/5141/SitePages/Guia-para-
Modelagem-e-Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx. 
3.2.12.6 Os SGBDs possuem tipos de dados com tamanhos fixos ou sem tamanho definido (p.ex.: SMALLINT, 
INTEGER, TINYINT e BIGINT).  
3.2.12.6.1 Para o caso sem tamanho definido é obrigatório o preenchimento do campo personalizado Tamanho, 
visando auxiliar na análise de metadados. 
3.2.12.6.2 O uso de tipos de dados como BLOB e CLOB são avaliados em conjunto com a equipe ABD por questões 
de performance e grande volume de registros. 
3.2.12.6.3 Os Tipos de Dados permitidos por cada Sistema Gerenciador de Banco de Dados estão descritos no 
ANEXO IV – DATATYPES PERMITIDOS POR SGBD  
3.2.12.7 Colunas do tipo IC são obrigatórias e possuem apenas dois valores (domínios) negociais possíveis: 
▪ Domínio discreto e limitado; 
▪ Domínio conhecido;



## Página 10

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
10 / 15 
 
▪ Domínio historicamente estável; 
▪ Quando a informação em questão não classifica outros Tipos de Tabelas;  
▪ Quando a informação em questão não é compartilhada com outros sistemas e; 
▪ Quando a inclusão de novo domínio implica, necessariamente, em alteração de funcionalidade. 
3.2.12.7.1 O valor default é controlado pelo SGBD ou pela solução conforme necessidade negocial. 
3.2.12.7.2 Caso o valor de carga inicial seja diferente do valor default definido, é encaminhado diretamente para 
avaliação da equipe de ABD. 
3.2.12.7.3 Para mais de 2 domínios negociais é criada uma Tabela de Tipo. 
3.2.12.7.4 Para situações em que nenhum dos domínios negociais possam ser atribuídos, é utilizado um terceiro 
domínio com a informação de “Não se Aplica” ou “Não informado”. 
3.2.12.7.5 A documentação da coluna criada consta da descrição do objeto no modelo de dados com a lista de valores 
existente.  
3.2.13  
CHAVE PRIMÁRIA (PRIMARY KEY) 
3.2.13.1 É composta por, no mínimo, uma coluna e não pode conter colunas opcionais ou derivadas. 
3.2.13.2 Coluna de classe Carimbo de Tempo, Data e Hora, Data ou Hora não é utilizada como único componente da 
chave primária. 
3.2.13.3 Não é colocado nenhum tipo de inteligência na chave primária, inclusive separação de faixas de código. 
3.2.13.4 Não utiliza colunas que são alteráveis. 
3.2.13.5 Colunas da classe do tipo IC não fazem parte da Chave Primária. 
3.2.13.6 O código da CONSTRAINT associada é igual ao código da Chave Primária. 
3.2.13.7 Na composição da Chave Primária das tabelas utilizar colunas cujo conteúdo seja definido pela CAIXA. 
3.2.13.8 Não incluir o dígito verificador em colunas que contenham informações geradas pela CAIXA, como por 
exemplo NU_PRODUTO. 
3.2.14  
 ÍNDICE SECUNDÁRIO (INDEX) 
3.2.14.1 Não é recomendável o uso de coluna de classe Carimbo de Tempo, Data e Hora, Data ou Hora como único 
componente do índice secundário. 
3.2.15  
METAMODELAGEM 
3.2.15.1 A utilização de metamodelagem é restrita a situações em que haja impossibilidade de antecipação das 
necessidades de informação de um sistema e limitada aos requisitos não funcionais do aplicativo (dados não 
negociais). 
3.2.15.2 A aprovação do uso de metamodelagem depende da comprovação das relevâncias e viabilidades técnica e 
econômica avaliados pela ADI em parecer técnico. 
3.2.15.2.1 O parecer técnico do Administrador de Dados e Informações é submetido à aprovação da SUART. 
3.2.15.2.2 A utilização de metamodelagem é expressamente proibida para dados dos sistemas compartilhados ou 
compartilháveis ou que sejam objeto de modelagem dimensional. 
3.2.15.3 Se usadas para implementar dados negociais, os objetos (meta-entidades) de um metamodelo não serão 
persistentes ou terão persistência apenas temporária. 
3.2.15.3.1 No caso de não persistência, as instâncias das meta-entidades existirão apenas no intervalo de tempo de 
uma sessão. 
3.2.15.3.2 No caso de persistência temporária, os dados contidos nas instâncias das meta-entidades são transferidos 
para estruturas modeladas estaticamente. 
3.2.15.4 Os objetos de um metamodelo contêm todas as propriedades formalmente exigidas para os objetos dos 
modelos de dados (nomes, descrição e as demais propriedades exigidas para os diferentes tipos de objeto).  
3.2.15.5 A inclusão de uma instância de uma tabela pertencente a um metamodelo é refletida e completamente 
documentada no modelo de dados físico por tabelas não instanciáveis e aderentes às normas e boas práticas de 
modelagem de dados vigentes na CAIXA.



## Página 11

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
11 / 15 
 
3.2.15.6 Ao ter aprovado o uso de metamodelagem, a equipe de desenvolvimento fica obrigada a implementar no 
sistema requisitos não funcionais que garantam as restrições de integridade (domínios, critérios de validação, 
integridade referencial) existentes entre as instâncias dos objetos do metamodelo. 
3.2.16  
FRAMEWORKS ESPECÍFICOS APROVADOS PELA SUART 
3.2.16.1 As definições de modelagem e validação para frameworks específicos aprovados pela SUART que tenham 
prerrogativas de modelagem, consultar o Portal de Práticas para Desenvolvimento de Software – Página Inicial 
(ppds.caixa), disponível em Regras de modelagem para Frameworks Autorizados (sharepoint.com). 
3.2.17  
PRIVACIDADE DE DADOS NA MODELAGEM 
3.2.17.1 Os novos modelos desenvolvidos seguem as definições contidas no Guia de Privacy by Design com correta 
identificação no modelo dos dados sigilosos e sensíveis. 
3.2.17.2 Os modelos atualizados são adequados de acordo com a definição contida no Guia. 
3.2.17.3 A definição de privacidade de dados na modelagem está descrita no Guia Privacy by Design da Arquitetura 
de TI (sharepoint.com). 
3.2.17.4 Os procedimentos para atendimento aos direitos do titular de dados pessoais previstos na Lei Geral de 
Proteção de Dados Pessoais - LGPD estão definidos na [MN, CR439] que relaciona os dados tratados pela Caixa. 
3.2.17.5 A Lei Geral de Proteção a Dados Pessoais - Lei nº 13.709, de 14 de agosto de 2018, alterada pela Lei nº 
13.853, de 8 de julho de 2019 e pela Lei nº 14.010, de 10 de junho de 2020, dispõe sobre o tratamento de dados 
pessoais, inclusive nos meios digitais, por pessoa natural ou por pessoa jurídica de direito público ou privado, e tem 
o objetivo de proteger os direitos fundamentais de liberdade e de privacidade e o livre desenvolvimento da 
personalidade da pessoa natural. 
3.2.17.6 A equipe de desenvolvimento é responsável pelas informações disponibilizadas no modelo de dados. 
3.2.18  
CRITÉRIOS DE PADRONIZAÇÃO E ORGANIZAÇÃO GRÁFICA DE MODELO DE DADOS 
3.2.18.1 No processo de modelagem são observados os padrões e convenções de organização gráfica dos objetos a 
serem representados no modelo de dados. 
3.2.18.2 Para obter essas orientações, consultar o Guia de Padronização e Organização Gráfica de Modelos de 
Dados, descrita no PPDS, disponível em Guia de Padrões e Convenções de Diagrama de Modelos de Dados 
(sharepoint.com).  
3.3  
 CRITÉRIOS DE VALIDAÇÃO PARA MODELO DE DADOS 
3.3.1 A modelagem de dados é validada pela equipe de Administração de Dados e Informações.  
3.3.2 O desenvolvimento de novos sistemas, novos módulos e manutenção em sistemas já validados possui a 
necessidade de validação dos novos objetos de acordo com a norma vigente e os guias relacionados a modelagem 
de dados. 
3.3.2.1 Nestes casos, a validação dos modelos de dados é realizada pela equipe de Administração de Dados e 
Informações. 
3.3.3 O primeiro passo na validação de um modelo de dados é a utilização da funcionalidade de pré-validação no 
SIAGT. 
3.3.3.1 Sua utilização é obrigatória e pré-requisito para início da validação pela ADI. 
3.3.3.2 Essa ferramenta gera um relatório com os critérios definidos na página Validações executadas no Pré-
Validador para a equipe de desenvolvimento poder avaliar as situações que se enquadrem fora das instruções 
normativas desta norma, considerando sempre o último modelo aprovado, de forma a não revalidar o legado já 
implantado. 
3.3.3.3 A ferramenta também gera o documento de Solicitação de Validação de Modelo de Dados pré-preenchido, 
insumo para o início do atendimento pelo ADI.  
3.3.3.3.1 Cabe frisar que as informações são revisadas pela equipe de desenvolvimento, além de eventuais 
complementações que se façam necessárias. 
3.3.4 Para que a demanda de validação possa ser iniciada, são obrigatórios os insumos a seguir: 
▪ Relatório de pré-validação sem erros ou com suas devidas justificativas; e 
▪ Solicitação de validação de modelo de dados preenchida e contendo os objetos alvo da demanda; e



## Página 12

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
12 / 15 
 
▪ Regras de negócio; ou 
▪ Histórias de Usuário; ou 
▪ Casos de Uso; ou 
▪ Descrição de Interface. 
3.3.4.1 Os insumos abaixo não são obrigatórios, visto que nem toda demanda requer sua geração, porém podem 
auxiliar na validação do modelo pela ADI: 
▪ Requisitos não-funcionais; 
▪ Especificações Suplementares; 
▪ Layouts de telas; 
▪ Documento(s) legal(is); 
▪ Atas de reunião; 
▪ Resoluções externas à CAIXA; 
▪ Documento que descreva o fluxo do processo da aplicação; 
▪ Protótipo. 
3.3.5 Para modelos novos ou de migração entre SGBDs do próprio sistema é obrigatório anexar o DAS – Documento 
de Arquitetura de Software, ou ainda o número da demanda que autorizou esta arquitetura que contenha o DAS com 
a aprovação pela área competente. 
3.3.6 A Validação do Modelo de Dados na CAIXA contempla a avaliação dos seguintes critérios: 
▪ Aderência às Regras de Negócio – coerência entre a documentação de requisitos, histórias de usuário ou casos de 
uso e o modelo de dados; 
▪ Integração e Compartilhamento de Dados – integração com as bases compartilhadas de dados ou com outros 
sistemas corporativos; 
▪ Técnicas de Modelagem – aderência às técnicas de modelagem de dados adotadas na CAIXA; 
▪ Adequação às Normas e Padrões – adequação do modelo de dados aos normativos e padrões adotados na CAIXA. 
3.3.7 O modelo de dados é também validado sob a ótica da ABD para garantir a padronização dos objetos do modelo 
físico, a implementação e manutenção desse modelo e possibilitar o adequado comportamento de desempenho dos 
sistemas. 
3.3.8 Os objetos do modelo físico são padronizados com base nas instruções contidas no guia ANEXO III – 
Expressões regulares que definem objetos físicos dos SGBD, conforme o SGBD de implementação, e são utilizadas 
as melhores práticas para o armazenamento e desempenho apropriado de cada objeto nesse SGBD.  
3.3.9 Os Tipos de Dados permitidos por cada Sistema Gerenciador de Banco de Dados estão descritos no ANEXO IV 
– DATATYPES permitidos por SGBD. 
3.3.9.1 Os Tipos de Dados que não constam da lista serão analisados e resolvidos com a decisão da SUART. 
3.3.10 A Lista de Inconsistência de objetos do modelo de dados consta no ANEXO VI – Lista de objetos para validação 
do modelo de dados. 
3.3.11 O Laudo de Validação é emitido pela equipe ADI com parecer: 
▪ Aprovado; 
▪ Aprovado com Adequações; 
▪ Aprovado com Ressalvas; 
▪ Não Aprovado. 
3.3.11.1 Quando não há aprovação do Laudo de Validação não é preenchido o item Conclusão da demanda para a 
Administração de Banco de Dados e detalhar todos os motivos da NÃO APROVAÇÃO. 
3.4  
 ADERÊNCIA ÀS REGRAS DE NEGÓCIO 
3.4.1 A avaliação do critério de aderência às regras de negócio baseia-se nas informações registradas na 
documentação de especificação de requisitos ou casos de /uso, que estão adequadamente representadas no modelo 
de dados. 
3.4.2 A avaliação também indica se há objetos definidos no modelo de dados que não apresentam correspondência 
com as informações registradas na documentação de especificação de requisitos ou casos de uso.



## Página 13

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
13 / 15 
 
3.5  
 INTEGRAÇÃO E COMPARTILHAMENTO DE DADOS 
3.5.1 A avaliação do critério de integração e compartilhamento de dados considera a adequação do modelo de dados 
às determinações previstas nos [MN, TE105], [MN, TE124] e [MN, TE109]. 
3.5.2 Para garantir a integração entre os modelos de dados e reuso da informação, a avaliação identifica nos modelos 
de dados a existência de objetos passíveis de compartilhamento. 
3.5.3 Para garantir a documentação da integração entre os modelos de dados e reuso da informação, na ferramenta 
de modelagem, na aba Definition da coluna ou tabela é detalhada a informação do reuso de dados compartilhados e 
qual API está sendo utilizada (acesso em https://portalapi.caixa/redoc.html). 
3.5.3.1 A [MN, TE109] orienta que para os objetos compartilhados devem ser utilizadas as APIs públicas e não há 
necessidade de autorização específica. 
3.5.3.2 O uso de APIs privadas dos sistemas da CAIXA somente com autorização da área gestora do sistema. 
3.6  
TÉCNICAS DE MODELAGEM 
3.6.1 A avaliação do critério de técnicas de modelagem considera a adequação do modelo de dados às determinações 
previstas nesta norma. 
3.6.2 Os objetos analisados, referentes ao critério de técnica de modelagem, estão relacionados na Lista de Objetos 
para Validação do Modelo de Dados. 
3.6.3 Na avaliação é necessário registrar no parecer técnico se o modelo de dados apresenta características de 
flexibilidade, ou seja, o modelo de dados suporta mudanças na realidade ou nas regras de negócio sem exigência de 
alterações. 
3.6.4 Na avaliação é necessário registrar no parecer técnico se o modelo de dados apresenta características de 
simplicidade, ou seja, o modelo de dados é de fácil entendimento e utilização. 
3.7  
GESTÃO ELETRÔNICA DE DOCUMENTOS 
3.7.1 A avaliação dos padrões e procedimentos a serem aplicados no gerenciamento de imagens de documentos 
digitais, assinaturas ou informação não estruturada produzida pela CAIXA considera a adequação do modelo de dados 
às determinações previstas no [MN, TE190] e no [MN, AD238] que normatiza o Gerenciamento Eletrônico de 
Documentos.  
3.7.2 Os Sistemas Transacionais utilizam obrigatoriamente a solução corporativa para utilizar as funcionalidades de 
Gerenciamento Eletrônico de Documentos. 
3.7.3 Não podem ser criados arquivos ou campos para armazenar soluções proprietárias. 
3.8  
PADRÕES PARA OS PRODUTOS ADQUIRIDOS 
3.8.1 Os artefatos disponibilizados não têm necessidade de adequação aos padrões da CAIXA, conforme determina 
a [MN, TE183]. 
3.8.2 Neste caso, para os produtos listados a seguir, o Fornecedor os disponibiliza em formato magnético que permita 
leitura e edição na ferramenta de modelagem utilizada pela CAIXA, definida no Termo de Referência:  
▪ Modelo de Dados; 
▪ Dicionário de Dados. 
3.8.3 A critério da CAIXA, os produtos disponibilizados podem ser adequados aos padrões CAIXA vigente, desde que 
essa diretriz esteja definida no contrato, sendo que toda customização é avaliada e aprovada pela equipe ADI. 
3.8.4 Os produtos disponibilizados são devidamente atualizados em conformidade com cada nova release ou versão 
do Aplicativo de Negócios entregue à CAIXA. 
3.8.5 Questões relacionadas aos padrões CAIXA surgidas durante a aquisição e a implantação do Aplicativo de 
Negócios serão analisadas e resolvidas com a decisão da SUART. 
4  
PROCEDIMENTOS 
4.1  
SUART 
4.1.1 Elaborar ou supervisionar a elaboração e promover a divulgação de normas, padrões e procedimentos relativos 
à técnica de modelagem de dados, nomeação dos objetos e validação de modelos de dados.



## Página 14

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
14 / 15 
 
4.1.2 Definir sobre impasses entre equipes de desenvolvimento de sistemas e o Administrador de Dados do Capítulo 
de Dados envolvendo a aplicação da norma, sendo demandada por meio do RTC. 
4.2  
EQUIPE DE DESENVOLVIMENTO  
4.2.1 Envolver o Segmento de Administração de Dados e Informações para análise preliminar de dados, efetuando a 
abertura de RTC do painel Acionamento Capítulos no RTC, serviço de Reunião/Consultoria. 
4.2.2 Analisar a necessidade de informações adicionais para elaboração e/ou validação do modelo de dados pelo 
Segmento de Administração de Dados e Informações. 
4.2.3 Analisar a necessidade de dados e registrar a análise preliminar de dados no artefato de registro de requisitos, 
conforme [MN, TE177]. 
4.2.4 Conhecer e/ou elaborar o modelo de dados assegurando o cumprimento das técnicas e padrões estabelecidos. 
4.2.4.1 Utilizar o SIAGT para avaliar as evoluções dos modelos de dados de forma a adequá-los às regras básicas 
de modelagem regidas por esta norma. 
4.2.5 Submeter à apreciação da Administração de Dados e Informações conflitos que vierem a surgir na aplicação 
desta norma. 
4.2.6 Desenvolver o sistema conforme arquitetura de dados definida. 
4.2.7 Submeter o modelo para validação pelo ADI efetuando a abertura de demanda no RTC, via painel Acionamento 
Capítulos, serviço de Solicitação de Validação do Modelos de Dados. 
4.3  
 ADMINISTRAÇÃO DE DADOS E INFORMAÇÕES (ADI) 
4.3.1 Garantir que os modelos de dados estejam aderentes aos padrões de modelagem e de nomeação de objetos, 
aos requisitos negociais e integrados aos demais sistemas da CAIXA. 
4.3.2 Participar da análise de requisitos com o objetivo de realizar a análise preliminar de dados. 
4.3.3 Prestar suporte/consultoria na elaboração do modelo de dados às equipes de desenvolvimento. 
4.3.4 Validar o modelo de dados recepcionado pelo RTC aberto pela equipe de desenvolvimento no painel 
Acionamento Capítulos. 
4.3.5 Garantir a reusabilidade e compartilhamento de soluções, identificando dados existentes e a serem modelados 
das demandas baseadas em modelagem relacional. 
4.3.6 Solicitar informações adicionais à equipe de desenvolvimento de sistemas ou ao gestor da informação, caso 
necessário. 
4.3.7 Registrar e acompanhar as pendências de adequação de modelos à norma por meio de parecer técnico. 
4.3.8 Cadastrar no glossário de termos os termos a serem utilizados, suas abreviaturas, siglas e contextos. 
4.3.8.1 O Glossário de termos é carregado quando da conexão da ferramenta SAP PowerDesigner ao repositório e 
mantido síncrono a cada conexão.  
4.3.9 Orientar as equipes de desenvolvimento de sistemas quanto aos termos a serem utilizados na denominação 
dos objetos de dados. 
4.3.10 Elaborar Laudo de Validação da demanda do modelo de dados com parecer sobre os objetos avaliados. 
4.3.11 Cooperar com a SUART na elaboração das normas, padrões e procedimentos relativos às atividades de 
Administração de Dados e Informações. 
4.3.12 Garantir que o modelo de dados analisado contenha as informações necessárias para a análise de 
desempenho, com base nas informações de volumetria e transação indicados na documentação compartilhada pela 
equipe de desenvolvimento e gestor da informação. 
4.3.12.1 Consultar a equipe ABD quando houver necessidade de validação de objetos físicos. 
4.4  
ADMINISTRAÇÃO DE BANCO DE DADOS (ABD) 
4.4.1 Analisar e efetuar ajustes para que os modelos de dados estejam aderentes à nomeação de objetos físicos, 
garantindo que estes atendam aos requisitos negociais e integrados aos demais sistemas da CAIXA.  
4.4.2 Validar fisicamente o modelo de dados com a abertura de solicitação pela equipe de desenvolvimento. 
4.4.3 Garantir que o modelo de dados analisado atenda de forma adequada os requisitos de desempenho com base 
nas informações de volumetria e crescimento estimado indicados na documentação compartilhada pelo 
desenvolvimento e gestor da informação.



## Página 15

#INTERNO.TODOS 
TE 074 031 
 
Vigência: 05/06/2026   
15 / 15 
 
4.4.4 Solicitar informações adicionais à equipe de desenvolvimento de sistemas, caso necessário. 
4.4.5 Prestar consultoria e apoio às equipes de ADI e desenvolvimento no detalhamento de itens relacionadas a 
implantação física. 
4.4.6 Atualizar no modelo de dados qualquer objeto resultante da análise e do projeto físico realizado durante o 
processo de implementação da modelagem. 
4.4.7 Orientar as equipes de desenvolvimento de sistemas quanto às melhores práticas físicas voltadas a cada SGBD. 
4.4.8 Gerar a DDL para implementação tendo como insumo o laudo do ADI e o modelo de dados armazenado no 
repositório da ferramenta de modelagem utilizada pela CAIXA. 
4.4.8.1 A DDL gerada é implementada na base de dados contendo os metadados de comentários dos objetos do 
modelo.  
4.4.8.2 Os metadados de comentários dos objetos não são excluídos da DDL. 
4.4.9 Armazenar a DDL do ambiente de Desenvolvimento e de Teste de Qualidade de Sistema na ferramenta 
homologada pela CAIXA. 
4.4.9.1 A ferramenta homologada pela CAIXA é de acesso público e permite acesso de leitura a todas as equipes de 
desenvolvimento bem como ao ABD de Produção.  
4.4.9.1.1 Somente a equipe de ABD de Desenvolvimento possui permissão de gravação. 
4.4.10 Consultar o ADI quando houver necessidade de esclarecimentos sobre o laudo de validação. 
5  
ANEXOS 
5.1 ANEXO I – Guia Rápido: Modelagem de dados relacional para sistemas e aplicativos de negócio CAIXA. 
5.2 ANEXO II – Nomenclatura de objetos. 
5.3 ANEXO III – Expressões regulares que definem objetos físicos dos SGBD. 
5.4 ANEXO IV – DATATYPES permitidos por SGBD. 
5.5 ANEXO V – Estimativa de prazo de atendimento – UAM. 
5.6 ANEXO VI – Lista de objetos para validação do modelo de dados.


---

# Anexos extraídos do PDF

Abaixo estão os anexos embutidos extraídos do PDF original. Para anexos em PDF, as páginas também foram renderizadas em PNG para preservar fluxos, telas e diagramas.


## Anexo 1 - ANEXO I – Guia Rápido - Modelagem de dados relacional para sistemas e aplicativos de negócio CAIXA.pdf

- Arquivo original extraído: [ANEXO I - Guia Rapido - Modelagem de dados relacional para sistemas e aplicativos de negocio CAIXA.pdf](anexos_originais/ANEXO%20I%20-%20Guia%20Rapido%20-%20Modelagem%20de%20dados%20relacional%20para%20sistemas%20e%20aplicativos%20de%20negocio%20CAIXA.pdf)
- Tamanho: 66.557 bytes
- Markdown do anexo: [ANEXO I - Guia Rapido - Modelagem de dados relacional para sistemas e aplicativos de negocio CAIXA.md](markdown_anexos/ANEXO%20I%20-%20Guia%20Rapido%20-%20Modelagem%20de%20dados%20relacional%20para%20sistemas%20e%20aplicativos%20de%20negocio%20CAIXA.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO I - Guia Rapido - Modelagem de dados relacional para sistemas e aplicativos de negocio CAIXA/`

![ANEXO I - Guia Rapido - Modelagem de dados relacional para sistemas e aplicativos de negocio CAIXA - page-01](imagens_renderizadas_anexos/ANEXO%20I%20-%20Guia%20Rapido%20-%20Modelagem%20de%20dados%20relacional%20para%20sistemas%20e%20aplicativos%20de%20negocio%20CAIXA/page-01.png)

## Anexo 2 - ANEXO II - NOMENCLATURA DE OBJETOS.pdf

- Arquivo original extraído: [ANEXO II - NOMENCLATURA DE OBJETOS.pdf](anexos_originais/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS.pdf)
- Tamanho: 245.982 bytes
- Markdown do anexo: [ANEXO II - NOMENCLATURA DE OBJETOS.md](markdown_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO II - NOMENCLATURA DE OBJETOS/`

![ANEXO II - NOMENCLATURA DE OBJETOS - page-01](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-01.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-02](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-02.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-03](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-03.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-04](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-04.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-05](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-05.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-06](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-06.png)

![ANEXO II - NOMENCLATURA DE OBJETOS - page-07](imagens_renderizadas_anexos/ANEXO%20II%20-%20NOMENCLATURA%20DE%20OBJETOS/page-07.png)

## Anexo 3 - ANEXO III - EXPRESSÕES REGULARES QUE DEFINEM OBJETOS FÍSICOS DOS SGBD.pdf

- Arquivo original extraído: [ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD.pdf](anexos_originais/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD.pdf)
- Tamanho: 247.070 bytes
- Markdown do anexo: [ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD.md](markdown_anexos/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD/`

![ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD - page-01](imagens_renderizadas_anexos/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD/page-01.png)

![ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD - page-02](imagens_renderizadas_anexos/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD/page-02.png)

![ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD - page-03](imagens_renderizadas_anexos/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD/page-03.png)

![ANEXO III - EXPRESSOES REGULARES QUE DEFINEM OBJETOS FISICOS DOS SGBD - page-04](imagens_renderizadas_anexos/ANEXO%20III%20-%20EXPRESSOES%20REGULARES%20QUE%20DEFINEM%20OBJETOS%20FISICOS%20DOS%20SGBD/page-04.png)

## Anexo 4 - ANEXO IV - DATATYPES PERMITIDOS POR SGBD.pdf

- Arquivo original extraído: [ANEXO IV - DATATYPES PERMITIDOS POR SGBD.pdf](anexos_originais/ANEXO%20IV%20-%20DATATYPES%20PERMITIDOS%20POR%20SGBD.pdf)
- Tamanho: 152.008 bytes
- Markdown do anexo: [ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md](markdown_anexos/ANEXO%20IV%20-%20DATATYPES%20PERMITIDOS%20POR%20SGBD.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO IV - DATATYPES PERMITIDOS POR SGBD/`

![ANEXO IV - DATATYPES PERMITIDOS POR SGBD - page-01](imagens_renderizadas_anexos/ANEXO%20IV%20-%20DATATYPES%20PERMITIDOS%20POR%20SGBD/page-01.png)

![ANEXO IV - DATATYPES PERMITIDOS POR SGBD - page-02](imagens_renderizadas_anexos/ANEXO%20IV%20-%20DATATYPES%20PERMITIDOS%20POR%20SGBD/page-02.png)

![ANEXO IV - DATATYPES PERMITIDOS POR SGBD - page-03](imagens_renderizadas_anexos/ANEXO%20IV%20-%20DATATYPES%20PERMITIDOS%20POR%20SGBD/page-03.png)

## Anexo 5 - ANEXO V – ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.pdf

- Arquivo original extraído: [ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.pdf](anexos_originais/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM.pdf)
- Tamanho: 325.803 bytes
- Markdown do anexo: [ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md](markdown_anexos/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM/`

![ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM - page-01](imagens_renderizadas_anexos/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM/page-01.png)

![ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM - page-02](imagens_renderizadas_anexos/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM/page-02.png)

![ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM - page-03](imagens_renderizadas_anexos/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM/page-03.png)

![ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM - page-04](imagens_renderizadas_anexos/ANEXO%20V%20-%20ESTIMATIVA%20DE%20PRAZO%20DE%20ATENDIMENTO%20-%20UAM/page-04.png)

## Anexo 6 - ANEXO VI - LISTA DE OBJETOS PARA VALIDAÇÃO DO MODELO DE DADOS.pdf

- Arquivo original extraído: [ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.pdf](anexos_originais/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS.pdf)
- Tamanho: 287.212 bytes
- Markdown do anexo: [ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md](markdown_anexos/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS/`

![ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS - page-01](imagens_renderizadas_anexos/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS/page-01.png)

![ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS - page-02](imagens_renderizadas_anexos/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS/page-02.png)

![ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS - page-03](imagens_renderizadas_anexos/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS/page-03.png)

![ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS - page-04](imagens_renderizadas_anexos/ANEXO%20VI%20-%20LISTA%20DE%20OBJETOS%20PARA%20VALIDACAO%20DO%20MODELO%20DE%20DADOS/page-04.png)


----


*FIM "TE074.md"*


*INICIO "ANEXO II - NOMENCLATURA DE OBJETOS.md"*


----


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


----


*FIM "ANEXO II - NOMENCLATURA DE OBJETOS.md"*


*INICIO "ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md"*


----


# TE074 - ANEXO IV - DATATYPES PERMITIDOS POR SGBD

**Arquivo de origem:** `ANEXO IV - DATATYPES PERMITIDOS POR SGBD.pdf`

**Total de páginas:** 3

---


## Página 1

#PUBLICO 
TE 074 
 
 
1 / 3 
 
ANEXO IV – DATATYPES PERMITIDOS POR SISTEMA GERENCIADOR DE BANCO DE DADOS 
 
1          A padronização de datatypes permitidos considera a possibilidade de comunicação entre sistemas, onde o 
sistema de destino receberá uma informação idêntica à enviada pelo sistema de origem, além da volumetria 
relacionada aos datatypes utilizados. 
 
Sistema 
Gerenciador  
de Banco de Dados 
Tipo de Dado 
Datatype 
DB2 
Alfanumérico 
CHAR 
CLOB 
VARCHAR 
Data 
DATE 
Fracionário 
DECIMAL 
Hora 
TIME 
Binário 
BLOB 
Inteiro 
SMALLINT 
INTEGER 
BIGINT 
Carimbo de Tempo (TIMESTAMP) 
TIMESTAMP 
Microsoft SQL Server 
Alfanumérico 
CHAR 
VARCHAR 
Booleano 
BIT 
Data 
DATE 
Fracionário 
DECIMAL 
NUMERIC 
Hora 
TIME 
Binário 
BINARY 
VARBINARY 
Inteiro 
TINYINT 
SMALLINT 
INTEGER/INT 
BIGINT 
Objeto do SGBD 
GEOGRAPHY 
Data e Hora/Carimbo de Tempo (TIMESTAMP) DATETIME2 
Oracle 
Alfanumérico 
CHAR 
CLOB



## Página 2

#PUBLICO 
TE 074 
 
 
2 / 4 
 
VARCHAR2 
Data 
DATE 
Fracionário 
NUMBER 
Hora 
DATE 
Binário 
BLOB 
Data e Hora 
DATE 
Carimbo de Tempo (TIMESTAMP) 
TIMESTAMP 
PostgreSQL 
Alfanumérico 
CHAR 
VARCHAR 
TEXT 
Booleano 
BOOLEAN 
Data 
DATE 
Fracionário 
NUMERIC 
Hora 
TIME 
Binário 
BYTEA 
Inteiro 
INT2/SMALLINT 
INT4/INTEGER 
INT8/BIGINT 
Carimbo de Tempo (TIMESTAMP) 
TIMESTAMP 
SAP ASE 
Alfanumérico 
CHAR 
TEXT 
VARCHAR 
Booleano 
BIT 
Data 
DATE 
Fracionário 
DECIMAL/NUMERIC 
Hora 
TIME 
Binário 
IMAGE 
Inteiro 
BIGINT 
INT 
INTEGER 
SMALLINT 
Data e Hora/Carimbo de Tempo (TIMESTAMP) DATETIME 
SAP IQ 
Alfanumérico 
CHAR 
VARCHAR



## Página 3

#PUBLICO 
TE 074 
 
 
3 / 3 
 
Booleano 
BIT 
Data 
DATE 
Fracionário 
DECIMAL/NUMERIC 
Hora 
TIME 
Binário 
BINARY 
VARBINARY 
Inteiro 
TINYINT 
SMALLINT 
INTEGER 
BIGINT


----


*FIM "ANEXO IV - DATATYPES PERMITIDOS POR SGBD.md"*


*INICIO "ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md"*


----


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


----


*FIM "ANEXO V - ESTIMATIVA DE PRAZO DE ATENDIMENTO - UAM.md"*


*INICIO "ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md"*


----


# TE074 - ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS

**Arquivo de origem:** `ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.pdf`

**Total de páginas:** 4

---


## Página 1

#PUBLICO 
TE 074 
 
 
1 / 4 
 
ANEXO VI – LISTA DE OBJETOS PARA VALIDAÇÃO DO MODELO DE DADOS 
 
COD. 
CATEGORIA 
Sev 
  
1. 
Tabela 
1.1.  
Padronização da nomeação lógica (NAME) 
1.1.1. 
Tabela com Nome abreviado havendo espaço suficiente para o extenso. 
1 
1.1.2. 
Tabela com nomeação no singular. 
1 
1.1.3. Tabela com existência de abreviaturas e siglas consagradas em desconformidade com o glossário de 
termos. 
1 
1.1.4. 
Existência de substantivo composto na tabela sem todos os termos abreviados. 
1 
1.1.5. 
Tabela com nomeação que causam interpretações dúbias. 
2 
1.1.6. 
Tabela com nomeação não utilizando verbos no particípio. 
1 
1.1.7. 
Tabela com o tamanho do nome lógico excedendo o limite da ferramenta case. 
1 
1.1.8. 
Tabela com nomeação desnecessária em língua estrangeira. 
1 
1.1.9. 
Tabela com nomeação em desconformidade com o gênero masculino. 
1 
1.1.10. 
Tabela com abreviatura e/ou eliminação do termo mais significativo. 
1 
1.1.11. 
Tabela com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. 
1 
1.1.12. 
Tabela com utilização de nomes ou siglas de unidades/sistemas da CAIXA para nomear objetos. 
1 
1.1.13. 
Tabela com utilização de sinônimos desnecessários. 
1 
1.1.14. 
Tabela com nomeação lógicos dos objetos sem relação com a nomeação dos objetos físicos. 
2 
1.1.15 
Tabela com utilização de algarismos não arábicos. 
1 
1.2.  
Conceituação (Comment) 
1.2.1. 
Tabela sem descrição. 
2 
1.2.2. 
Tabela com descrição não concisa, não clara e ambígua. 
1 
1.2.3. 
Tabela com descrição que contém o termo que está sendo descrito (tautologia). 
1 
1.2.4. 
Tabela com nomeação em língua estrangeira sem a tradução na descrição. 
1 
1.3.  
Regras de Modelagem 
1.3.1. 
Tabela sem pelo menos 1 predicado. 
2 
1.3.2. 
Tabelas distintas com propriedades, colunas e relacionamentos em comum. 
Avaliar a possibilidade de generalização ou criação de um supertipo. 
2 
1.3.3. 
Tabela sem identificador. 
2 
1.3.4. 
Tabela não identificada de forma unívoca. 
2 
1.3.5. 
O identificador da tabela forte não compõe o identificador das tabelas fracas. 
2 
1.3.6. 
O Identificador da Tabela Associativa não está composto, no mínimo, pelos relacionamentos que o 
associam. 
2 
1.4.  
Aderência às regras de Negócio 
1.4.1. 
Tabela não aderente às regras de negócio. 
2 
1.4.2. 
Utilização inadequada de tabela isolada. 
1 
1.4.3. 
Utilização inadequada de tabela solitária. 
1 
1.4.4. 
Utilização inadequada de tabela “Histórico”. 
1 
1.4.5. 
Utilização inadequada de tabela “LOG”. 
1 
1.5.  
Propriedades de Tabela 
1.5.1. 
Tabela com quantidade estimada de ocorrências não informada. 
1 
1.5.2. 
Tabela com taxa de crescimento não informada. 
1 
  
  
2. 
Relacionamento (FOREIGN KEY) 
2.1.  
Padronização da nomeação Lógica (NAME)



## Página 2

#PUBLICO 
TE 074 
 
 
2 / 4 
 
2.1.1. 
Ausência da indicação do rolename (papel). 
2 
2.1.2. 
Relacionamento com verbo não conjugado na 3ª pessoa do singular do presente do indicativo e/ou 
inexistência de voz ativa e passiva. 
1 
2.1.3. 
Ausência do verbo que define a ação no relacionamento existente entre as tabelas. 
2 
2.1.4. 
Nomeação do relacionamento nos dois sentidos. 
1 
2.1.5. 
Relacionamento de Tabela com nomeação no singular. 
1 
2.2. 
Regras de Modelagem            
2.2.1. 
Associação entre tabelas não representada por relacionamento. 
2 
2.2.2. 
Relacionamento com cardinalidade M:N não resolvido. 
2 
2.2.3. 
Referência ao identificador de uma tabela não representada através de relacionamento. 
2 
2.2.4 
Chave estrangeira sem todos as colunas de origem. 
2 
2.2.5 
Relacionamento necessário não participa do identificador. 
2 
2.2.6 
Existência de relacionamento redundante. 
1 
2.2.7 
Redundância da coluna que foi implementado como chave estrangeira. 
2 
2.2.8 
Auto Relacionamento que representa uma hierarquia sem que os dois lados estejam opcionais. 
1 
2.2.9 
Utilização de coluna em hierarquia não estável ao invés de inclusão de auto relacionamento. 
1 
2.2.10 
Coluna participante do identificador é redundante com relacionamento. 
2 
2.3. 
Aderência às regras de Negócio 
2.3.1. 
Relacionamento não aderente às regras de negócio. 
2 
2.3.2. 
Utilização inadequada de relacionamento paralelo. 
1 
2.4. 
Propriedades dos Relacionamentos 
2.4.1. 
Cardinalidade de associação não informada. 
2 
2.4.2. 
Opcionalidade de associação não informada. 
2 
2.4.3. 
Regra de deleção nos relacionamentos não atribuída. 
2 
  
3. 
Coluna 
3.1.  
Padronização da nomeação Lógica (NAME) 
3.1.1. 
Coluna com nome lógico abreviado havendo espaço suficiente para o extenso. 
1 
3.1.2. 
Coluna com o tamanho do nome lógico excedendo o limite da ferramenta case. 
1 
3.1.3. 
Coluna com nomeação no singular. 
1 
3.1.4. Coluna com existência de abreviaturas e siglas consagradas em desconformidade com o glossário de 
termos. 
1 
3.1.5. 
Existência de substantivo composto na coluna sem todos os termos abreviados. 
1 
3.1.6. 
Coluna com nomeação que causam interpretações dúbias. 
2 
3.1.7. 
Coluna com nomeação desnecessária em língua estrangeira. 
1 
3.1.8. 
Coluna com nomeação não utilizando verbos no particípio. 
1 
3.1.9. 
Coluna com nomeação em desconformidade com o gênero masculino. 
1 
3.1.10. 
Coluna com abreviatura e/ou eliminação do termo mais significativo. 
1 
3.1.11. 
Coluna com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. 
1 
3.1.12. 
Coluna com utilização de nomes ou siglas de unidades/sistemas da CAIXA para nomear objetos. 
1 
3.1.13. 
Coluna com utilização de sinônimos desnecessários. 
1 
3.1.14. 
Existência de termo redundante em relação à classe da coluna. 
1 
3.1.15. 
Coluna com utilização de algarismos não arábicos. 
1 
3.1.16. 
Ausência da classe da coluna ou classe inadequada ao nome do objeto. 
1 
3.1.17. 
Ausência de lista de valores permitidos para a coluna. 
2 
3.2. 
Conceituação (Comment) 
3.2.1. 
Coluna sem descrição. 
2 
3.2.2. 
Coluna com descrição não concisa, não clara e ambígua. 
1 
3.2.3. 
Coluna com descrição que contém o termo que está sendo descrito (tautologia). 
1



## Página 3

#PUBLICO 
TE 074 
 
 
3 / 4 
 
3.2.4. 
Coluna com nomeação em língua estrangeira sem a tradução na descrição. 
1 
3.3. 
Regras de Modelagem 
3.3.1. 
Nomeação distinta para o mesmo coluna (ou Utilização de uma mesma coluna nomeando-o 
distintamente). 
2 
3.3.2. 
Tipo e tamanho distintos para a mesma coluna. 
2 
3.3.3. 
Inconsistência na definição de classe de colunas. 
1 
3.4. 
Aderência às regras de Negócio 
3.4.1 
Coluna não aderente às regras de negócio. 
2 
3.5. 
Propriedades de Colunas 
3.5.1 
Coluna com opcionalidade não informada. 
2 
3.5.2 
Coluna com tipo não informado. 
2 
3.5.3 
Coluna com tamanho não informado. 
2 
3.5.4 
Coluna com tamanho adequado ao SGBD utilizado. 
2 
  
4. 
Chave Primária (PRIMARY KEY/ALTERNATE KEY) 
4.1.  
Regras de Modelagem 
4.1.1. 
Coluna de classe “timestamp” como único componente de Identificador. 
2 
4.1.2. 
Composto de colunas derivados. 
2 
4.1.3. 
Existência de inteligência nos identificadores. Isto inclui separação de faixas de código. 
1 
4.1.4. 
Garantia de unicidade dos identificadores de cada tabela. 
2 
4.1.5. 
Utilização de coluna com tipo de dado inapropriado. 
2 
4.2.  
Aderência às regras de Negócio 
4.2.1. 
Identificador não aderente às regras de negócio. 
2 
  
5. 
Área de Interesse 
5.1.   
Padronização da nomeação dos objetos 
5.1.1. 
Área de interesse com nomeação no singular. 
1 
5.1.2. Área de Interesse com utilização de vícios de linguagem, jargões, preposições, artigos e conjunções. 
1 
  
6. 
Objetos Físicos 
6.1.   
Padronização da nomeação dos objetos (CODE) 
6.1.1. 
Inconformidade na nomeação de Tabela. 
1 
6.1.2. 
Inconformidade na nomeação de Coluna. 
1 
6.1.3. 
Inconformidade na nomeação de Chave Primária. 
1 
  
7. 
Modelo Compartilhado 
7.1.  
Objetos do Modelo Compartilhado 
7.1.1. 
Utilização de forma proprietária de objetos dos sistemas compartilhados. 
2 
7.1.2. 
Utilização de objetos do SICLI sem a devida autorização da área gestora. 
2 
  
8. 
Normalização 
8.1.  
Regras de Modelagem 
8.1.1. 
Inconformidade na 1ª FN – Existência de colunas não atômicos e/ou grupos repetitivos. 
2 
8.1.2. 
Inconformidade na 2ª FN – Coluna não chave não é totalmente dependente da chave primária. 
2 
8.1.3. 
Inconformidade na 3ª FN – Existência de relacionamentos transitivos (ciclos fechados). 
2



## Página 4

#PUBLICO 
TE 074 
 
 
4 / 4 
 
Legenda: 
SEV = Severidade 
1 – Erro de Menor Gravidade 
2 – Erro de Maior Gravidade 
TE = Normativo Caixa Tomo Tecnologia 
Categoria: Classificação dos objetos em: 
1. 
Tabela 
2. 
Relacionamento 
3. 
Coluna 
4. 
Identificador 
5. 
Área de Interesse 
6. 
Objetos Físicos 
7. 
Modelo Compartilhado 
8. 
Normalização


----


*FIM "ANEXO VI - LISTA DE OBJETOS PARA VALIDACAO DO MODELO DE DADOS.md"*


*INICIO "TE073.md"*


----


# TE073 - documento principal

**Arquivo de origem:** `TE073.pdf`

**Total de páginas:** 5

---


## Página 1

#INTERNO.TODOS 
TE 073 021 
 
Vigência: 13/12/2024   
1 / 5 
 
GERÊNCIA DE MODELOS DE DADOS DOS SISTEMAS DE INFORMAÇÃO 
SUMÁRIO DA NORMA 
 
1 
FINALIDADE,3 
2 
DEFINIÇÕES,3 
3 
REGRAS,3 
3.1 
CONFIDENCIALIDADE DO MODELO DE DADOS,3 
3.2 
MODELO DE DADOS,3 
3.3 
IDENTIFICAÇÃO DE AMBIENTE,3 
3.3.1 
PLE – MODELO PLANEJAMENTO ESTRATÉGICO,3 
3.3.2 
DES – MODELO DE DESENVOLVIMENTO,3 
3.3.3 
TDV – MODELO DE TESTES DIVERSOS,3 
3.4 
PADRÃO DE NOMENCLATURA,3 
3.5 
CRIAÇÃO E MANUTENÇÃO DE VERSÕES DE MODELOS,4 
3.5.1 
CRIAÇÃO DE MODELOS,4 
3.5.2 
MANUTENÇÃO DE MODELOS,4 
3.6 
MANUTENÇÃO DE USUÁRIOS,4 
3.7 
ROTINA DE ACOMPANHAMENTO,4 
4 
PROCEDIMENTOS,4 
4.1 
RESPONSABILIDADES,5 
4.1.1 
SUART,5 
4.1.2 
ADMINISTRADOR DE DADOS E INFORMAÇÕES (ADI),5 
4.1.3 
EQUIPE DE DESENVOLVIMENTO,5 
4.1.4 
ADMINISTRADOR DE BANCO DE DADOS DO AMBIENTE DE DESENVOLVIMENTO,5 
5 
ARQUIVAMENTO DE DOCUMENTOS,5 
6 
ANEXOS,5



## Página 2

#INTERNO.TODOS 
TE 073 021 
 
Vigência: 13/12/2024   
2 / 5 
 
PREFÁCIO 
TÍTULO 
GERÊNCIA DE MODELOS DE DADOS DOS SISTEMAS DE INFORMAÇÃO 
UNIDADE RESPONSÁVEL 
SUART – SN ARQUITETURA TI 
 
PÚBLICO ALVO 
SUDEA/SUDEB, SUSER e unidades vinculadas 
ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR 
Revisão geral para contemplar o novo padrão normativo CAIXA. 
RELAÇÃO COM OUTROS NORMATIVOS 
OR016 Tratamento da Informação 
PO007 Política de Segurança e Informação 
TE074 Modelagem de Dados para Sistemas e Aplicativos de Negócio Caixa 
PRODUTOS RELACIONADOS 
Não se aplica 
PROCESSOS RELACIONADOS 
PR.01011 - 4.8.1.2 Prover arquitetura de solução de TI 
 
REGULAMENTAÇÃO UTILIZADA 
Não se aplica 
DOCUMENTAÇÃO UTILIZADA 
Não se aplica 
ROTEIRO PADRÃO 
Não se aplica 
NORMATIVOS REVOGADOS 
Não se aplica 
ATENDIMENTO DE DÚVIDAS 
SUART – SN ARQUITETURA TI



## Página 3

#INTERNO.TODOS 
TE 073 021 
 
Vigência: 13/12/2024   
3 / 5 
 
GERÊNCIA DE MODELOS DE DADOS DOS SISTEMAS DE INFORMAÇÃO 
1  
FINALIDADE 
1.1 Padronizar a criação, a administração e o uso dos modelos de dados de sistemas de informação.  
2  
DEFINIÇÕES 
2.1 Disponível em http://dados.caixa/portal/glossario?norma=TE073. 
3  
REGRAS 
3.1  
 CONFIDENCIALIDADE DO MODELO DE DADOS 
3.1.1 Os modelos de dados de qualquer tipo desenvolvidos pela CAIXA ou por empresas contratadas são de 
propriedade da CAIXA. 
3.1.2 Por conterem informações lógicas e físicas sobre controles, regras de negócio e estruturas de persistência dos 
dados da CAIXA ou por ela mantidos, os modelos de dados são classificados como “#EXTERNO.CONFIDENCIAL” 
conforme a [MN, OR016].  
3.1.2.1 As empresas prestadoras possuem acordos de confidencialidade. 
3.1.3 É permitido o acesso aos modelos de dados, ao repositório de modelos de dados e à ferramenta SAP 
PowerDesigner apenas aos empregados Caixa e parceiros que utilizem o modelo de dados para: 
a) Exercício de suas funções; 
b) Auxiliar no desenvolvimento de aplicações; 
c) Refletir alterações nas respectivas bases de dados; 
d) Extração e análise de dados. 
3.1.4 Os modelos de dados possuem aderência à Política de Segurança da Informação da CAIXA, conforme diretrizes 
estabelecidas na [MN, PO007]. 
3.1.5 Questões relacionadas a itens não contemplados na norma ou não expressamente citados serão analisadas e 
resolvidas com a decisão da SUART. 
3.2  
MODELO DE DADOS 
3.2.1 As bases de dados de sistemas de informação criadas no ambiente de desenvolvimento da CAIXA têm seus 
modelos aprovados e versionados no repositório central de modelos de dados. 
3.2.2 A equipe de Administração de Dados e Informações é responsável pela gerência dos modelos de 
desenvolvimento no repositório central. 
3.2.3 Os modelos de dados contêm, no mínimo, os dados necessários para o cumprimento da finalidade de negócio.  
3.3  
IDENTIFICAÇÃO DE AMBIENTE 
3.3.1  
PLE – MODELO PLANEJAMENTO ESTRATÉGICO 
3.3.1.1 Contém o projeto de dados do Planejamento Estratégico de Informações em nível empresarial. 
3.3.2  
DES – MODELO DE DESENVOLVIMENTO 
3.3.2.1 Contém o modelo de dados utilizado durante a fase de desenvolvimento/manutenção de um projeto.  
3.3.2.2 É utilizado para a criação de bases de dados no ambiente de desenvolvimento. 
3.3.3  
TDV – MODELO DE TESTES DIVERSOS 
3.3.3.1 Destinam-se a pesquisas, testes, treinamento, auditoria e eventual cópia de modelos para esses fins. 
3.3.3.2 Esses modelos são excluídos após o término do trabalho que determinou a sua criação. 
3.4  
PADRÃO DE NOMENCLATURA



## Página 4

#INTERNO.TODOS 
TE 073 021 
 
Vigência: 13/12/2024   
4 / 5 
 
3.4.1 O nome completo de um modelo é atribuído no formato SSS_AAA_GGG_T, onde: 
▪ SSS: Sigla do sistema com 3 caracteres; 
▪ AAA: Identificação de Ambiente: PLE / DES / TDV; 
▪ GGG: Abreviação do SGBD (p.ex.: DB2/ORA/POS/MSQ); 
▪ T: Descrição sucinta do sistema. 
3.5  
CRIAÇÃO E MANUTENÇÃO DE VERSÕES DE MODELOS 
3.5.1  
CRIAÇÃO DE MODELOS 
3.5.1.1 Somente a Administração de Dados e Informações tem autorização para criar modelos no repositório. 
3.5.1.2 Os modelos de dados são organizados em pastas por sigla de sistemas contendo modelos dos ambientes 
detalhados no item [MN, 3.3]. 
3.5.1.3 A equipe de desenvolvimento solicita ao Capítulo de Dados, formalmente, a criação ou manutenção de um 
modelo de dados. 
3.5.1.4  O ADI analisa, efetua a validação do modelo de dados, elabora o Laudo de Validação e cria o modelo no 
repositório CAIXA. 
3.5.1.5 A primeira versão de desenvolvimento de um modelo é criada pela equipe de ADI no repositório, a partir de:  
▪ um modelo preliminar existente, após sua validação com base nas diretrizes da [MN, TE074] e boas práticas 
estabelecidas pela ADI; 
▪ objetos existentes em outro repositório, desde que se esteja adequado ao padrão estabelecido na [MN, TE074]; 
▪ ou de um banco de dados em ambiente centralizado já existente (engenharia reversa de banco de dados);  
3.5.1.5.1 Qualquer outra situação é tratada diretamente com a ADI. 
3.5.2  
MANUTENÇÃO DE MODELOS  
3.5.2.1 O ADI, por solicitação, realiza a análise, validação e versionamento da atualização de objetos de dados no 
repositório. 
3.5.2.2 A alteração da versão de um modelo de dados ocorre através de: 
▪ solicitação formal da equipe de desenvolvimento ao Capítulo de Dados na evolução do modelo de dados; 
▪ manutenção do modelo para implementação física efetuada pelo ABD do ambiente de desenvolvimento. 
3.5.2.3 O ABD do ambiente de desenvolvimento, tendo como insumo o Laudo de Validação do ADI e o modelo de 
dados de desenvolvimento armazenado no repositório, faz o levantamento dos objetos específicos relacionados à 
estrutura física do SGBD e, caso necessário, os insere no modelo do ambiente alvo da demanda criada pela equipe 
de desenvolvimento de sistemas, atualizando a nova versão no repositório. 
3.6  
MANUTENÇÃO DE USUÁRIOS 
3.6.1 A Administração de Dados e Informação é responsável por incluir, alterar ou excluir permissão de acesso de 
leitura de profissionais mediante prévia solicitação efetuada pela equipe de desenvolvimento. 
3.6.2 A concessão de acesso ao ADI do Capítulo de Dados é feita pelos administradores do repositório. 
3.6.3 A concessão de acesso ao ABD, seja do ambiente de desenvolvimento ou de produção, é feita pelos 
administradores do repositório. 
3.7  
ROTINA DE ACOMPANHAMENTO 
3.7.1 Os modelos de sistemas de informação são acompanhados pelo ADI, de forma obrigatória: 
▪ Realizar análise de impacto antes de realizar as alterações; 
▪ Manter o histórico de versões de um mesmo objeto no repositório. 
4  
PROCEDIMENTOS



## Página 5

#INTERNO.TODOS 
TE 073 021 
 
Vigência: 13/12/2024   
5 / 5 
 
4.1  
RESPONSABILIDADES 
4.1.1  
SUART 
4.1.1.1 Elaborar ou supervisionar a elaboração e promover a divulgação de normas, padrões e procedimentos 
relativos à gerência de modelos de dados. 
4.1.1.2 Definir sobre impasses entre equipes de desenvolvimento de sistemas e do Capítulo de Dados envolvendo a 
aplicação da norma. 
4.1.2  
ADMINISTRADOR DE DADOS E INFORMAÇÕES (ADI) 
4.1.2.1 Criar e manter modelos no repositório de modelos de dados homologado pela CAIXA. 
4.1.2.2 Acompanhar, validar e aprovar a elaboração e alteração dos modelos de dados dos sistemas em 
desenvolvimento. 
4.1.2.3 Validar a qualidade dos modelos de dados físico com relação aos critérios de acessibilidade, amplitude, 
credibilidade, documentação, flexibilidade, legibilidade, representação concisa, reutilização e valor agregado.  
4.1.2.4 Efetuar os procedimentos necessários para garantir a integridade dos objetos corporativos e/ou 
compartilhado, de modo a promover a integração dos modelos de dados e contribuir para a criação do Modelo de 
Dados Corporativo. 
4.1.2.5 Verificar a aderência dos modelos às normas, padrões e metodologias da Administração de Dados e 
Informações. 
4.1.2.6 Realizar a gestão de grupos de usuários e permissões de modelos conforme diretrizes da SUART. 
4.1.2.7 Analisar e efetuar o versionamento de objetos de dados dos modelos. 
4.1.3  
EQUIPE DE DESENVOLVIMENTO 
4.1.3.1 Elaborar o modelo de dados assegurando o cumprimento das técnicas e padrões estabelecidos nos 
normativos CAIXA. 
4.1.3.2 Formalizar a solicitação ao Capítulo de Dados: 
▪ Quando da necessidade de criação e manutenção de versão de modelos; 
▪ A inclusão e exclusão de técnicos da equipe de desenvolvimento de sistemas no repositório central de modelos de 
dados. 
4.1.4  
ADMINISTRADOR DE BANCO DE DADOS DO AMBIENTE DE DESENVOLVIMENTO 
4.1.4.1 Garantir que o modelo de dados analisado atenda de forma adequada os requisitos de desempenho com base 
nas informações de volumetria e crescimento estimado indicados na documentação compartilhada pela equipe de 
desenvolvimento e gestor da informação. 
4.1.4.2 Atualizar, no modelo de dados, qualquer objeto resultante da análise e do projeto físico realizado durante o 
processo de implementação da modelagem. 
4.1.4.3 A implementação dos objetos nos SGBDs respeita todos os objetos validados pelo ADI e constantes no laudo 
de validação e no modelo armazenado no repositório central de modelos de dados. 
5  
ARQUIVAMENTO DE DOCUMENTOS 
5.1 Disponível em https://suprir.caixa/painel2/arq/tabeladocumentos.php?h=TE073. 
6  
ANEXOS 
6.1 Anexo I – Guia Rápido: Gerência de modelos de dados dos sistemas de informação do [MN, TE073].


---

# Anexos extraídos do PDF

Abaixo estão os anexos embutidos extraídos do PDF original. Para anexos em PDF, as páginas também foram renderizadas em PNG para preservar fluxos, telas e diagramas.


## Anexo 1 - Anexo I – Guia Rápido - Gerência de modelos de dados dos sistemas de informação.pdf

- Arquivo original extraído: [Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.pdf](anexos_originais/Anexo%20I%20-%20Guia%20Rapido%20-%20Gerencia%20de%20modelos%20de%20dados%20dos%20sistemas%20de%20informacao.pdf)
- Tamanho: 50.253 bytes
- Markdown do anexo: [Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md](markdown_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Gerencia%20de%20modelos%20de%20dados%20dos%20sistemas%20de%20informacao.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao/`

![Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao - page-01](imagens_renderizadas_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Gerencia%20de%20modelos%20de%20dados%20dos%20sistemas%20de%20informacao/page-01.png)


----


*FIM "TE073.md"*


*INICIO "Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md"*


----


# TE073 - Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao

**Arquivo de origem:** `Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.pdf`

**Total de páginas:** 1

---


## Página 1

GUIA RÁPIDO – GERÊNCIA DE MODELOS DE DADOS DOS SISTEMAS DE INFORMAÇÃO #INTERNO.TODOS 
TE 073 
1 Resumo 
Padronizar a criação, a administração e o uso dos modelos de dados de 
Sistemas de Informação. 
Público: SUDEA/SUDEB, SUSER e unidades vinculadas. 
2 Exigências/Links 
2.1 Acesso aos sistemas 
Ferramenta Power Designer. 
2.2 Normativos/MO 
TE073 – Gerência de modelos de dados dos sistemas de informação. 
3 Operacional Passo a Passo 
3.1 Criação e Manutenção de Modelos de Dados 
1º 
Acompanha, valida e aprova a elaboração e alteração dos 
modelos de dados 
2º 
Valida a qualidade dos modelos de dados 
3º 
Garante 
a 
integridade 
dos 
objetos 
corporativos 
e/ou 
compartilhados 
4º 
Analisa e efetua o versionamento de objetos de dados dos 
modelos. 
5º 
 
3.2 Autorização de Acesso aos Modelos de Dados 
1º 
Realizar a gestão de grupos de usuários 
2º 
Inclui ou exclui usuários no repositório central 
3º 
Atribui permissões aos modelos conforme diretrizes da SUART. 
3.3 Avaliação da Qualidade dos Modelos de Dados 
1º 
Garante que o modelo de dados analisado atenda de forma 
adequada os requisitos de negócio, de desempenho e de 
integração 
2º 
Valida a qualidade dos modelos de dados com relação aos 
critérios definidos pela SUART 
3º 
Garante 
a 
integridade 
dos 
objetos 
corporativos 
e/ou 
compartilhados 
4º 
Implementa os objetos nos SGBDs respeitando a validação 
realizada pelo ADI


----


*FIM "Anexo I - Guia Rapido - Gerencia de modelos de dados dos sistemas de informacao.md"*


*INICIO "TE169.md"*


----


# TE169 - PROCESSO DE QUALIFICAÇÃO DE DADOS

> Arquivo de origem: `TE169.pdf`
> Páginas: 6

## Metadados do PDF

- **format**: PDF 1.7
- **title**: TE169013
- **author**: SUART - SN Arquitetura TI
- **creator**: Microsoft® Word para Microsoft 365
- **producer**: Microsoft® Word para Microsoft 365
- **creationDate**: D:20241210101022-03'00'
- **modDate**: D:20241210101022-03'00'

---

<!-- Página 1 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
1 / 6

## PROCESSO DE QUALIFICAÇÃO DE DADOS
SUMÁRIO DA NORMA

1
## FINALIDADE,3
2
## DEFINIÇÕES,3
3
## REGRAS,3
3.1
## DIRETRIZES,3
3.2
## RESPONSABILIDADES,3
3.2.1
## GESTOR DA INFORMAÇÃO,3
3.2.2
## SUDEA/SUDEB,3
3.2.3
## SUART,4
3.2.4
## GECMI,4
3.2.5
## CESTI,4
3.2.6
## CESET,5
3.2.7
## CEPIP,5
4
## PROCEDIMENTOS,5
4.1
## METODOLOGIA ADOTADA PARA O PROCESSO DE QUALIFICAÇÃO DE DADOS,5
4.2
## DIAGNÓSTICO DA QUALIDADE DOS DADOS,5
4.3
## DESENVOLVIMENTO DOS PLANOS DE QUALIDADE PARA CORREÇÃO DOS DADOS,6
4.4
## CORREÇÃO DOS DADOS NO AMBIENTE DE PRODUÇÃO,6
4.5
## ACESSO AOS DADOS,6
5
## ARQUIVAMENTO DE DOCUMENTOS,6
6
## ANEXOS,6


---

<!-- Página 2 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
2 / 6

## PREFÁCIO
## TÍTULO
## PROCESSO DE QUALIFICAÇÃO DE DADOS
## UNIDADE RESPONSÁVEL
## SUART – SN ARQUITETURA TI

## PÚBLICO ALVO
SUDEA, SUDEB, DESER e suas unidades vinculadas.
## ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR
Revisão geral para contemplar o novo padrão normativo CAIXA.
## RELAÇÃO COM OUTROS NORMATIVOS
OR016 Tratamento da Informação
OR188 Programa de Governança de Dados
PO007 Política de Segurança e Informação
## TE060 CONCESSÃO DE ACESSO LÓGICO AOS RECURSOS COMPUTACIONAIS DA CAIXA - USUÁRIOS
## INTERNOS
TE106 Solicitação de Dados de Produção
TE159 Matriz de Perfis de Acesso a Sistemas - MPAS

## PRODUTOS RELACIONADOS
Não se aplica
## PROCESSOS RELACIONADOS
PR.01011 - 4.8.1.2 Prover arquitetura de solução de TI

## REGULAMENTAÇÃO UTILIZADA
Não se aplica
## DOCUMENTAÇÃO UTILIZADA
Não se aplica
## ROTEIRO PADRÃO
Não se aplica
## NORMATIVOS REVOGADOS
Não se aplica
## ATENDIMENTO DE DÚVIDAS
## SUART – SN ARQUITETURA TI

---

<!-- Página 3 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
3 / 6

## PROCESSO DE QUALIFICAÇÃO DE DADOS
1
## FINALIDADE
1.1 O PrQD visa fornecer ao gestor da informação um serviço de melhoria contínua dos dados dos seus sistemas
para que sirvam de forma adequada ao negócio promovendo a melhor tomada de decisões. O PrQD torna os dados
mais precisos, completos, padronizados, concisos e disponíveis.
2
## DEFINIÇÕES
2.1 Disponível em http://dados.caixa/portal/glossario?norma=TE169.
3
## REGRAS
3.1
## DIRETRIZES
3.1.1 O PrQD visa garantir a melhoria contínua dos dados armazenados visando servir de forma adequada ao negócio,
tornando-o mais preciso, completo, padronizado, conciso e disponível.
3.1.2 O PrQD é iniciado a partir da identificação de sua necessidade pelos gestores da informação ou pelas áreas da
TI.
3.1.3 As atividades de Medição e Análise são realizadas no AQD, de forma a permitir o isolamento e restrição de
acesso aos dados.
3.1.4 As bases a serem qualificadas devem ser carregadas como cópias dos dados reais de produção, isto é, sem
descaracterização.
3.1.5 O PrQD atende somente as bases de dados corporativas.
3.1.6 Não é permitido o retorno de dados manipulados no AQD para o ambiente de produção.
3.1.7 Durante a execução do PrQD é gerado o Relatório de Diagnóstico de Qualidade de Dados, que após análise e
homologação pelo gestor da informação se transforma em insumo para o desenvolvimento do Plano de Melhoria de
Qualidade para a correção e melhoria.
3.1.8 O monitoramento periódico dos resultados obtidos é realizado segundo indicadores definidos pelo gestor da
informação, devendo ser reportado à GEGOD, conforme [MN, OR188].
3.2
## RESPONSABILIDADES
3.2.1
## GESTOR DA INFORMAÇÃO
3.2.1.1 Solicita a demanda de diagnóstico da qualidade dos dados.
3.2.1.2 Define metas de qualidade para os dados relevantes às informações sob sua gestão.
3.2.1.3 Define regras negociais para a qualificação de dados.
3.2.1.4 Classifica quanto à confidencialidade dos dados que passarão por diagnóstico, conforme [MN, OR016].
3.2.1.5 Presta suporte à EQD na identificação das características dos dados e requisitos de qualidade necessários.
3.2.1.6 Solicita a execução do PrQD.
3.2.1.7 Toma ciência dos resultados de diagnóstico e define quanto ao desenvolvimento ou não de Planos de
Qualidade para melhorias.
3.2.1.8 Homologa os resultados obtidos no AQD.
3.2.1.9 Autoriza as ações de melhoria dos dados em ambiente de produção.
3.2.1.10 Promove ações de melhorias e alterações nos sistemas corporativos e suas interdependências que geram
entrada de dados não qualificados na base.
3.2.1.11 Define a periodicidade e indicadores de monitoramento da qualidade após cada ciclo de qualificação.
3.2.2
## SUDEA/SUDEB
3.2.2.1 Recepciona a solicitação de diagnóstico da qualidade dos dados.
3.2.2.2 Participa da elaboração do PrQD com o gestor da informação e EQD.

---

<!-- Página 4 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
4 / 6

3.2.2.3 Realiza análise prévia das solicitações de abertura de projeto de qualidade de dados.
3.2.2.4 Define a prioridade de execução dos projetos de qualidade de dados.
3.2.2.5 Define juntamente com o gestor da informação as regras para geração de amostras de dados.
3.2.2.6 Atua como mediadora junto à área gestora.
3.2.2.7 Gerencia a execução dos diagnósticos da qualidade de dados em nível estratégico.
3.2.2.8 Realiza ações preventivas e corretivas nos aplicativos dos sistemas para minimizar a entrada de dados não
qualificados.
3.2.2.9 Fornece informações referentes ao gerenciamento dos dados armazenados.
##### 3.2.2.10 EQD:
3.2.2.10.1 O ADI avalia se os modelos de dados atendem aos requisitos das regras negociais.
3.2.2.10.2 O ABD avalia se as estruturas de banco de dados atendem aos requisitos das regras negociais.
3.2.2.10.3 O ADB cria as estruturas de banco de dados de forma persistente, a partir das estruturas copiadas pela
CEPIP no AQD.
3.2.2.10.4 O ADB Efetua a carga da base a ser qualificada no AQD.
3.2.2.10.5 SUDEA/SUDEB elabora e executa roteiros para extração de amostra de dados e carga nas estruturas de
banco de dados criadas para este propósito no AQD.
3.2.2.10.6 SUDEA/SUDEB desenvolve os Planos de Diagnóstico e de Melhoria de Qualidade, conforme regras
estabelecidas na etapa de definição.
3.2.2.10.7 SUDEA/SUDEB executa os Planos de Qualidade para homologação pela área gestora e encaminha os
Planos de Melhoria de Qualidade para a Produção depois de homologados.
3.2.2.10.8 SUDEA/SUDEB elabora o Plano de Execução especificando os passos a serem seguidos no ambiente de
produção.
3.2.2.10.9 Gera relatórios com os diagnósticos, com propostas para melhorias da base e ações preventivas e
corretivas a serem implementadas nos aplicativos dos sistemas para minimizar a entrada de dados não qualificados
na base de dados
3.2.2.10.10 Executa o monitoramento da qualidade dos dados de cada base, conforme periodicidade definida pelo
gestor da informação.
3.2.2.10.11 O ADB Exclui do AQD as bases de dados pertinentes aos projetos finalizados.
3.2.3
## SUART
3.2.3.1 Define e mantém atualizadas as diretrizes e metodologia para o PrQD.
3.2.3.2 Analisa e delibera sobre as exceções para o PrQD.
3.2.3.3 Estabelece e acompanha os indicadores de monitoramento da Qualidade de Dados.
3.2.4
## GECMI
3.2.4.1 Estabelece padrões de Segurança Tecnológica para implantação do AQD.
3.2.4.2 Define o processo para concessão de acesso logico aos recursos computacionais, conforme [MN, TE060].
3.2.5
## CESTI
3.2.5.1 Disponibiliza a infraestrutura de ambiente para a execução dos processos relacionados à ferramenta.
3.2.5.2 Instala, atualiza e configura as ferramentas, seus repositórios e componentes para as versões válidas, nos
ambientes de Desenvolvimento e Produção.
3.2.5.3 Fornece suporte à ferramenta nos ambientes de Desenvolvimento e Produção.
3.2.5.4 Gere, mantém, controla e providencia aporte de recursos de armazenamento para manter o AQD com
infraestrutura necessária para seu funcionamento.
3.2.5.5 Presta suporte à EQD nos ajustes de integração ao ambiente CAIXA.
3.2.5.6 Monitora e mantém o funcionamento da ferramenta e seus componentes.
3.2.5.7 Orienta a EQD quanto ao padrão do ambiente CAIXA do AQD.

---

<!-- Página 5 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
5 / 6

3.2.6
## CESET
3.2.6.1 Cumpre e faz cumprir os padrões de Segurança Tecnológica definidos para o ambiente segregado e a
ferramenta de Qualidade.
3.2.6.2 Executa o permissionamento dos usuários conforme as regras estabelecidas.
3.2.6.3 Audita os logs de execução da ferramenta para os processos de controle de segurança necessários, deverá
ser acionada sob demanda, quando necessário.
3.2.7
## CEPIP
3.2.7.1 Executa backup diário do AQD com retenção de 15 dias.
3.2.7.2 Executa os Planos de Qualidade homologados e encaminha o resultado da execução para a EQD.
3.2.7.3 Monitora os logs de execução da ferramenta para os processos necessários de auditoria de segurança.
3.2.7.4 Gera e encaminha relatório com os logs de monitoração à GECMI.
3.2.7.5 Gera o arquivo, conforme [MN, TE106], com a estrutura e cópia dos dados da produção e repassa à EQD.
4
## PROCEDIMENTOS
4.1
## METODOLOGIA ADOTADA PARA O PROCESSO DE QUALIFICAÇÃO DE DADOS
4.1.1 O PrQD na CAIXA baseia-se em metodologias de mercado e propõe um ciclo de qualificação de dados com
quatro fases:
- Definição – Definição das características dos dados e dos requisitos de qualidade necessários / desejados;
- Medição – Produção das métricas de avaliação da qualidade dos dados;
- Análise – Identificação das causas dos problemas de qualidade dos dados;
- Melhoria – Desenvolvimento de ações para melhoria da qualidade dos dados e monitoramento.
4.1.1.1 Essas fases são subdivididas em etapas atendidas por meio de atividades descrito nos itens [MN, 4.2]e [MN,
4.3].
4.1.2 Cada Projeto de Qualidade de Dados segue as fases, etapas e atividades previstas no PrQD utilizando durante
o processo as dimensões definidas e explicitadas no Apensado B da [MN, OR188].
4.1.2.1 O detalhamento das atividades estão disponíveis no ppds.caixa, menu Guias > Arquitetura de Dados >
Qualificação de Dados > Metodologia para o Processo de Qualificação de dados.
4.1.3 Para o PrQD, a CESTI disponibiliza o AQD com instâncias de banco de dados e servidores, de forma que os
dados sejam acessados somente através das ferramentas de Qualidade de Dados contratadas pela CAIXA.
4.1.3.1 A EQD informa à CESTI o tamanho necessário em disco para as instâncias de bancos de dados a serem
utilizadas que, por sua vez, o disponibiliza de acordo com a reserva técnica de recursos já adquiridos pela CAIXA.
4.1.3.2 Permanece a definição dos itens de segurança, conforme procedimentos e esclarecimentos descritos nas
[MN, PO007], [MN, TE159] e [MN, OR016] do processo de desenvolvimento do sistema.
4.2
## DIAGNÓSTICO DA QUALIDADE DOS DADOS
4.2.1 O diagnóstico da qualidade dos dados é realizado no AQD.
4.2.2 Nesse ambiente são criadas as bases com a estrutura de dados idêntica à de Produção, mesmo que nem todas
as tabelas recebam carga num primeiro momento.
4.2.3 As bases de dados do AQD são carregadas como cópia dos dados reais de Produção sem descaracterização.
4.2.4 Para obter o diagnóstico da qualidade de dados de uma base são gerados Planos de Diagnóstico de Qualidade
na ferramenta de qualificação de dados.
4.2.5 O diagnóstico de qualidade dos dados é gerado pela EQD a partir das amostras de dados e consolidado em
relatório específico para encaminhamento ao gestor da informação.
4.2.6 O relatório além de demonstrar a situação da base estudada em suas diversas dimensões de qualidade de
dados, também contempla propostas para outras ações a serem levadas pelo gestor da informação de melhorias que
visam inibir a origem de entrada de dados sujos nas bases.
4.2.7 O relatório e/ou arquivos gerados pela EQD são disponibilizados à SUDEA/SUDEB e gestor da informação, com
nível de classificação #INTERNO.CONFIDENCIAL, conforme [MN, OR016].

---

<!-- Página 6 -->

#INTERNO.TODOS
## TE 169 013

Vigência: 11/12/2024
6 / 6

4.2.8 A atualização dos Planos de Qualidade ocorre quando há alterações nas estruturas das bases de dados ou
quando há mudanças nas regras de validação solicitadas pelo gestor da informação.
4.3
## DESENVOLVIMENTO DOS PLANOS DE QUALIDADE PARA CORREÇÃO DOS DADOS
4.3.1 A partir do diagnóstico o gestor da informação define a estratégia e as regras de correção para os problemas
apontados.
4.3.2 A EQD desenvolve Planos de Melhoria de Qualidade de Dados, executa na base do AQD e disponibiliza os
resultados ao gestor da informação para crítica ou homologação.
4.3.3 A homologação dos Planos de Melhoria de Qualidade se dará pela aprovação dos resultados no AQD.
4.3.4 O gestor terá acesso a alguns artefatos gerados pela ferramenta de diagnóstico que demonstrará novos índices
de qualidade dos dados.
4.3.5 Além disso, o gestor da informação deverá realizar os testes que julgar necessários para verificar qualquer
outra característica que diz respeito ao nível de qualidade de dados pretendido.
4.4
## CORREÇÃO DOS DADOS NO AMBIENTE DE PRODUÇÃO
4.4.1 Após homologação, os Planos de Melhoria de Qualidade no AQD são encaminhados à equipe de
desenvolvimento do sistema para que esta insira as ações dentro do plano estratégico de atualizações/alterações  do
sistema.
4.4.2 A EQD presta suporte no que for pertinente quando os Planos de Melhoria de Qualidade forem enviados para
execução em Produção.
4.4.3 Os Planos de Melhoria de Qualidade enviados à CEPIP são carregados no repositório da ferramenta de
qualificação de dados de produção.
4.5
## ACESSO AOS DADOS
4.5.1 Os procedimentos de segurança com relação à configuração do AQD e acesso às estações de trabalho
utilizadas para o processo de Qualificação de Dados devem ser tratados junto à CESET.
4.5.2 Os perfis de acesso e procedimentos de cadastramento de usuários na EQD constam devem ser tratados junto
à SUART.
4.5.3 O acesso à ferramenta se dá por aplicativos clientes instalados em estação de trabalho utilizada pela EQD.
5
## ARQUIVAMENTO DE DOCUMENTOS
5.1 Disponível em https://suprir.caixa/painel2/arq/tabeladocumentos.php?h=TE169.
6
## ANEXOS
6.1 ANEXO I – Guia Rápido: Processo de Qualidade de Dados.

---

## Anexos extraídos

- **Anexo 1**: `Anexo I – Guia Rápido - Processo de Qualidade de Dados.pdf`


----


*FIM "TE169.md"*


*INICIO "TE174.md"*


----


# TE174 - DIRETRIZES PARA GERENCIAMENTO DE METADADOS

> Arquivo de origem: `TE174.pdf`
> Páginas: 9

## Metadados do PDF

- **format**: PDF 1.7
- **title**: TE174013
- **author**: SUART - SN Arquitetura TI
- **creator**: Microsoft® Word para Microsoft 365
- **producer**: Microsoft® Word para Microsoft 365
- **creationDate**: D:20241212110337-03'00'
- **modDate**: D:20241212110337-03'00'

---

<!-- Página 1 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
1 / 9

## DIRETRIZES PARA GERENCIAMENTO DE METADADOS
SUMÁRIO DA NORMA

1
## FINALIDADE,4
2
## DEFINIÇÕES,4
3
## REGRAS,4
3.1
## GERAIS,4
3.2
## MÉTODO PARA GERENCIAMENTO DE METADADOS,4
3.3
## PROCESSO DE GERENCIAMENTO DE METADADOS,5
3.4
## RESPONSABILIDADES,6
3.4.1
## GESTOR DA INFORMAÇÃO,6
3.4.2
## GEGOD,6
3.4.3
## SUART,6
3.4.4
## SUDEA/SUDEB,7
3.4.5
## ADMINISTRADOR DE BANCO DE DADOS DE DESENVOLVIMENTO (ABD DE DES) - GEPAC,7
3.4.6
## ADMINISTRADOR DE DADOS E INFORMAÇÕES (ADI),7
3.4.7
## GESTI,7
3.4.8
## CESTI,7
3.4.9
## GECMI,7
3.4.10
## CESET,7
3.4.11
## CEPIP,8
3.4.12
## CEMOT,8
4
## PROCEDIMENTOS,8
4.1
## ATUALIZAÇÃO DE FONTES DE METADADOS - MODELO DE DADOS,8
4.2
## ATUALIZAÇÃO DE FONTES DE METADADOS - SGBD,8
4.3
## ATUALIZAÇÃO DE FONTES DE METADADOS - ETL,8
5
## ARQUIVAMENTO DE DOCUMENTOS,8
6
## ANEXOS,8


---

<!-- Página 2 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
2 / 9

## PREFÁCIO
## TÍTULO
## DIRETRIZES PARA GERENCIAMENTO DE METADADOS
## UNIDADE RESPONSÁVEL
## SUART – SN ARQUITETURA TI

## PÚBLICO ALVO
## UNIDADES MATRIZ, CESET, CEPIP, CESTI, GEPTI, GESTI, SUDEA, SUDEB
## ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR
Publicação de nova versão para atendimento ao princípio da revisão normativa e adequação aos novos padrões
normativos. Nenhuma alteração promovida.
## RELAÇÃO COM OUTROS NORMATIVOS
## OR005 ARQUITETURA DO CONGLOMERADO CAIXA
OR016 Tratamento da Informação
OR188 Programa de Governança de Dados
PO007 Política de Segurança e Informação
## TE060 CONCESSÃO DE ACESSO LÓGICO AOS RECURSOS COMPUTACIONAIS DA CAIXA - USUÁRIOS
## INTERNOS
## TE074 MODELAGEM DE DADOS PARA SISTEMAS E APLICATIVOS DE NEGÓCIO CAIXA
TE159 Matriz de Perfis de Acesso a Sistemas - MPAS
## TE191 USUÁRIO DE SERVIÇO - PADRÕES PARA CRIAÇÃO, GERENCIAMENTO E USO
## TE203 GERENCIAMENTO DE IDENTIDADE E ACESSO LÓGICO
TE227 Diretrizes para Utilização de Nuvem Pública
## TE228 GOVERNANÇA DE ATENDIMENTO DA TI

## PRODUTOS RELACIONADOS
Não se aplica
## PROCESSOS RELACIONADOS
PR.01011 - 4.8.1.2 Prover arquitetura de solução de TI

## REGULAMENTAÇÃO UTILIZADA
Instrução Normativa Nº 5 – GSIPR, de 30/08/2021
## DOCUMENTAÇÃO UTILIZADA
Não se aplica
## ROTEIRO PADRÃO
Não se aplica
## NORMATIVOS REVOGADOS
Não se aplica

---

<!-- Página 3 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
3 / 9

## ATENDIMENTO DE DÚVIDAS
## SUART – SN ARQUITETURA TI

---

<!-- Página 4 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
4 / 9

## DIRETRIZES PARA GERENCIAMENTO DE METADADOS
1
## FINALIDADE
1.1 Estabelecer diretrizes e responsabilidades para o processo de Gerenciamento de Metadados na CAIXA e
empresas que compõem o Conglomerado CAIXA, no que couber.
2
## DEFINIÇÕES
2.1 Disponível em http://dados.caixa/portal/glossario?norma=TE174.
3
## REGRAS
3.1
## GERAIS
3.1.1 O AGM encapsula os conceitos de repositórios de metadados, catálogos, dicionários de dados e quaisquer
outros termos que se referenciem a gerenciamento sistematizado de metadados.
3.1.2 A arquitetura de metadados é centralizada para permitir uma abordagem consolidada de administração e
compartilhamento de metadados pela CAIXA e oferecer um metamodelo uniforme e consistente que ordena o
esquema de definição e organização dos vários metadados armazenados no repositório único.
3.1.3 O Repositório de Metadados armazena 2 visões: Negócio e Técnico.
3.1.3.1 Os Metadados de Negócio expressam, em linguagem do negócio, o significado das informações e suas
modificações ao longo do tempo, bem como dos recursos disponibilizados.
3.1.3.2 Os Metadados Técnicos descrevem, em linguagem técnica, o fluxo dos dados ao longo da sua passagem na
Arquitetura de Informação.
3.1.4 O PrGM é iniciado pelos gestores da informação ou pelas áreas da TI através do Projeto De Gerenciamento de
Metadados.
3.1.4.1 O gestor da informação no PrGM é representado pelo Dono do Produto (PO), conforme [MN, TE228].
3.1.5 A segurança da Informação é garantida conforme diretrizes estabelecidas na [MN, PO007].
3.1.6 O uso de serviços em nuvem para gerenciamento de metadados deve observar as diretrizes estabelecidas na
[MN, TE227] e Instrução normativa N°5 do Gabinete de Segurança Institucional da Presidência da República.
3.2
## MÉTODO PARA GERENCIAMENTO DE METADADOS
3.2.1 Para alcançar um bom nível de qualidade, os metadados requerem um método de captura, descrição,
manutenção e organização para serem disponibilizados a comunidade técnica e de negócio que constituem, entre
outras atividades, o processo de Gerenciamento dos Metadados.
3.2.2 O método para a CAIXA é composto por 5 camadas.
3.2.2.1
## CAMADA DE FONTES
3.2.2.1.1 A finalidade da Camada de Fontes de Metadados é extrair metadados de suas fontes e enviá-los a camada
de integração de metadados ou diretamente para o repositório de metadados.
3.2.2.1.2 Nessa camada se localizam as fontes de metadados propriamente ditas, tais como modelos de dados,
repositórios de metadados de ferramentas de modelagem, de ferramentas de ETL, catálogos de bancos de dados,
tabelas, arquivos e planilhas com informações de metadados técnicos ou de negócio.
3.2.2.2
## CAMADA DE INTEGRAÇÃO
3.2.2.2.1 A partir das várias fontes de metadados, a camada de integração de dados integra-as através de processos
implementados na ferramenta de Gestão de Metadados, e faz a carga no repositório de metadados.
3.2.2.2.2 Em um AGM esses passos são normalmente encadeados porque o volume de metadados em geral é menor
do que em outras aplicações.
3.2.2.2.2.1 O processo utiliza metamodelo nativo.
3.2.2.3
## CAMADA DO REPOSITÓRIO
3.2.2.3.1 A camada de repositório de metadados é responsável pela catalogação e persistência física dos metadados.

---

<!-- Página 5 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
5 / 9

3.2.2.3.2 O repositório de metadados deve ser:
- genérico, pois o metamodelo físico armazena os metadados por assuntos em vez de armazenar por tipo de origem;
- integrado, pois provê uma visão integrada das maiores áreas de interesse da CAIXA;
- atualizado, pois o metadado deve ser atualizado de forma a refletir o estado atual do ambiente técnico e de negócio.
3.2.2.4
## CAMADA DE GERENCIAMENTO
3.2.2.4.1 A camada de gerenciamento de metadados provê gerenciamento sistemático do repositório de metadados
e dos outros componentes do AGM.
3.2.2.4.2 As funcionalidades de gerenciamento são materializadas através das funcionalidades disponíveis na
interface de gerenciamento da ferramenta de metadados ou da ferramenta de console administrativa da Solução de
Metadados.
3.2.2.4.3 A camada de gerenciamento de metadados executa as seguintes funções:
- definição e carga de recursos;
- definição, carga e monitoramento de fontes de metadados;
- criação de grupos e usuários;
- atribuição de privilégios a grupos e usuários;
- configuração de permissões no catálogo de metadados;
- criação e configuração do serviço de integração de metadados;
- depuração de metadados;
- backup e restauração do repositório;
- definição de agendamento para processos de carga de metadados, consultas e análises dos metadados carregados.
3.2.2.5
## CAMADA DE ANÁLISE
3.2.2.5.1 Disponibiliza os metadados do repositório para os usuários finais e para qualquer aplicação, usuários finais
(técnico e de negócio), webservices, ferramentas CASE ou portais que requeiram ou consumam metadados.
3.3
## PROCESSO DE GERENCIAMENTO DE METADADOS
3.3.1 Processo de Gerenciamento de Metadados na CAIXA consiste em organizar de forma integrada as estrutu ras
de dados da empresa visando proporcionar uma visibilidade completa sobre seus metadados e significados.
3.3.2 Baseia-se em metodologias e ferramentas de mercado e propõe um ciclo de gerenciamento de metadados em
3 fases, ao longo das 5 camadas do AGM definidas.
3.3.2.1
## COLETA DE METADADOS
3.3.2.1.1 Envolve o levantamento das fontes de metadados, análise de adequação do metamodelos nativos às
estruturas dos metadados a serem carregados, configuração de fonte através desses metamodelos nativos (da
biblioteca disponível), vinculação do metamodelo nativo à hierarquia da Arquitetura da Informação da CAIXA, criação
de recursos de metadados, customização dos processos de carga, execução e monitoramento da carga dos
metadados.
3.3.2.1.2 Está relacionada com as camadas de fontes e de integração.
3.3.2.2
## RETENÇÃO DE METADADOS
3.3.2.2.1 Envolve o gerenciamento de recursos de metadados, backup e recuperação de metadados, importação e
exportação de metamodelos, gerenciamento de segurança do repositório, configuração do repositório e dos seus
serviços, gerenciamento de atalhos e pastas de metadados, gerenciamento de relacionamentos, anotações e
documentos de suporte de metadados.
3.3.2.2.2 Está relacionada com as camadas de repositório e de gerenciamento.
3.3.2.3
## DISSEMINAÇÃO DE METADADOS

---

<!-- Página 6 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
6 / 9

3.3.2.3.1 Envolve a visualização de metadados; visualização do catálogo de metadados; pesquisa de metadados;
análises “onde são usados” os metadados; análises de linhagem de metadados; interface de programação via URL;
publicação de metadados.
3.3.2.3.2 Está relacionada com a camada de análise.
3.3.3 Essas três fases são subdivididas em etapas atendidas por meio de atividades.
3.3.4 Os fluxos de carga de metadados do processo de gerenciamento de metadados são criados no ambiente de
produção da Solução Integrada.
3.3.5 Os relatórios de metadados e resultados de publicação de metadados devem ser disponibilizados a equipes de
desenvolvimento e áreas gestoras, com nível de classificação #INTERNO.TODOS, conforme definição prevista no
## OR016.
3.4
## RESPONSABILIDADES
3.4.1
## GESTOR DA INFORMAÇÃO
3.4.1.1 Solicita o Projeto de Gerenciamento de Metadados para execução do PrGM por meio de abertura de demanda
específica na Ferramenta de Gestão de Demandas de TI, conforme [MN, TE228].
3.4.1.2 Define prioridade de execução de iniciativas do PrGM.
3.4.1.3 Constrói matriz de acesso aos dados do PrGM, conforme [MN, TE203].
3.4.1.4 Define requisitos de negócio para o gerenciamento de metadados.
3.4.1.5 Constrói conceituação de termos de negócio.
3.4.1.6 Participa da definição e manutenção dos glossários de termos, conforme previsto no [MN, OR188].
3.4.1.7 Participa do levantamento de informações para identificação:
3.4.1.7.1 Das características dos metadados de negócio;
3.4.1.7.2 Dos requisitos de negócio de gerenciamento de metadados.
3.4.1.8 Participa da vinculação entre os metadados de negócio e os metadados técnicos;
3.4.1.9 Aprova a entrega da execução do PrGM.
3.4.1.10 Solicita análise de impacto considerando alterações que possam surgir nos sistemas corporativos e suas
interdependências.
3.4.2
## GEGOD
3.4.2.1 Define a estratégia corporativa de gestão de metadados.
3.4.2.2 Define diretrizes e princípios de Metadados.
3.4.2.3 Divulga as diretrizes e princípios de Metadados.
3.4.2.4 Solicita relatórios gerenciais e de impacto relacionados a metadados.
3.4.2.5 Assessora o Comitê de Governança de Dados, conforme previsto no [MN, OR188].
3.4.3
## SUART
3.4.3.1 Define a arquitetura de metadados de acordo com a Estratégia de Dados Corporativa.
3.4.3.2 Participa da manutenção de padrões de metadados em conjunto com ADI.
3.4.3.3 Comunica status da implantação da gestão de metadados.
3.4.3.4 Apoia na identificação de problemas relacionados a gerenciamento de metadados nas bases corporativas da
## CAIXA.
3.4.3.5 Define e gerencia diretrizes e metodologia para o AGM.
3.4.3.6 Define e gerencia diretrizes e metodologia para o PrGM.
3.4.3.7 Analisa e delibera sobre exceções para o PrGM.
3.4.3.8 Acompanha a execução das demandas de PrGM.

---

<!-- Página 7 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
7 / 9

3.4.4
## SUDEA/SUDEB
3.4.4.1 Recepciona via Ferramenta de Gestão de Demandas de TI a demanda com a solicitação de atendimento de
desenvolvimento do Projeto De Gerenciamento de Metadados para execução do PrGM.
3.4.4.1.1 A demanda e sua priorização devem seguir as diretrizes conforme [MN, TE228].
3.4.4.2 Recebe a informação sobre a migração da base de dados de produção de um sistema.
3.4.4.3 Aciona o ADI por meio de abertura de demanda específica na Ferramenta de Gestão de Demandas de TI para
configuração dos recursos do PrGM dentro do AGM.
3.4.4.4 Solicita análise de impacto considerando alterações que possam surgir nos sistemas corporativos e suas
interdependências.
3.4.4.5 Gerencia a execução do PrGM no âmbito da TI.
3.4.5
## ADMINISTRADOR DE BANCO DE DADOS DE DESENVOLVIMENTO (ABD DE DES) - GEPAC
3.4.5.1 Cria e atualiza os recursos no AGM oriundos de modelos de dados, quando modificados pelo ABD de DES,
no AGM.
3.4.5.2 Configura a integração entre os recursos no AGM para subsidiar análises, quando modificados pelo ABD de
DES, no AGM.
3.4.6
## ADMINISTRADOR DE DADOS E INFORMAÇÕES (ADI)
3.4.6.1 Mantem padrões de metadados.
3.4.6.2 Cria e atualiza os recursos no AGM oriundos de modelos de dados.
3.4.6.3 Recepciona via Ferramenta de Gestão de Demandas de TI a demanda específica para configuração dos
recursos do PrGM dentro do AGM.
3.4.6.4 Solicita a criação de outros recursos no AGM.
3.4.6.5 Configura a integração entre os recursos no AGM para subsidiar análises.
3.4.6.6 Participa da elaboração do PrGM com o gestor da informação.
3.4.6.7 Participa da vinculação entre os metadados de negócio e os metadados técnicos.
3.4.6.8 Apoia na implantação do glossário de negócio com importações em lotes de termos de negócio.
3.4.6.9 Configura o agendamento de carga dos recursos.
3.4.6.10 Executa a análise de impacto considerando alterações que possam surgir nos sistemas corporativos e suas
interdependências.
3.4.7
## GESTI
3.4.7.1 Disponibiliza e garante a infraestrutura de processamento, armazenamento e comunicação para o processo
de gerenciamento de metadados.
3.4.8
## CESTI
3.4.8.1 Realiza as atividades concernentes ao suporte à infraestrutura de TI, conforme mandato da unidade,
normatizado pelo [MN, OR005].
3.4.9
## GECMI
3.4.9.1 Estabelece as regras de acesso logico conforme [MN, TE159] e [MN, TE203].
3.4.9.2 Estabelece o processo para criação de usuário de serviço conforme [MN, TE191].
3.4.9.3 Define o processo para concessão de acesso lógico aos recursos computacionais, conforme [MN, TE060].
3.4.10
## CESET
3.4.10.1 Cumpre e faz cumprir os padrões de Segurança Tecnológica definidos para o ambiente AGM.
3.4.10.2 Implementa a Matriz de Permissão e Acesso, obedecendo as diretrizes do [MN, TE159], e disponibiliza os
perfis de acesso, conforme [MN, TE203], de acordo com as definições da área responsável pelo gerenciamento de
metadados definidas no PrGM.

---

<!-- Página 8 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
8 / 9

3.4.10.3 Cria os usuários de serviço utilizados pelos recursos de ambientes de produção no AGM.
3.4.10.4 Cria os recursos de ambientes de produção no AGM.
3.4.10.5 Configura os privilégios e permissões no AGM.
3.4.11
## CEPIP
3.4.11.1 Presta apoio as áreas de TI sobre os recursos provenientes de fontes de dados de produção.
3.4.12
## CEMOT
3.4.12.1 Monitora a disponibilidade do ambiente de AGM.
3.4.12.2 Registra os incidentes obtidos da monitoração do ambiente de AGM.
4
## PROCEDIMENTOS
4.1
## ATUALIZAÇÃO DE FONTES DE METADADOS - MODELO DE DADOS
4.1.1 A atualização de recursos de metadados com origem de um modelo de dados é realizada periodicamente de
forma automatizada.
4.1.2 A cada atualização do modelo de dados no repositório de modelos, conforme [MN, TE074], é gerado um arquivo
em formato PDM e ele é armazenado em diretório com acesso pela ferramenta de gerenciamento de metadados.
4.1.3 No armazenamento do arquivo o ADI identifica se o recurso referente ao modelo de dados não existe no
gerenciamento de metadados e cria esse recurso, configurando o agendamento periódico.
4.1.3.1 O ADI garante que os recursos criados no repositório são configurados para serem atualizados de forma
automatizada.
4.1.4 A ADI realiza o acompanhamento do status sobre as atualizações de metadados.
4.1.5 Caso seja identificado algum incidente na Infraestrutura do AGM, a CESTI, em conjunto com o fornecedor da
ferramenta em caso de necessidade, é acionada para análise e solução.
4.1.6 O processo é apresentado pelos [MN, AnexoII] e [MN, AnexoIII].
4.2
## ATUALIZAÇÃO DE FONTES DE METADADOS - SGBD
4.2.1 A atualização de recursos de metadados com origem de uma instância de SGBD é realizada periodicamente
com agendamento automático pré-programado.
4.2.2 A ADI realiza o acompanhamento do status sobre as atualizações de metadados.
4.2.3 Caso seja identificado algum incidente na Infraestrutura do AGM, a CESTI, em conjunto com o fornecedor da
ferramenta em caso de necessidade, é acionada para análise e solução.
4.2.4 O processo é apresentado pelo [MN, Anexo IV].
4.3
## ATUALIZAÇÃO DE FONTES DE METADADOS - ETL
4.3.1 A atualização de recursos de metadados com origem de mapas de ETL é realizada periodicamente com
agendamento automático pré-programado.
4.3.2 A ADI realiza o acompanhamento do status sobre as atualizações de metadados.
4.3.3 Caso seja identificado algum incidente na Infraestrutura do AGM, a CESTI, em conjunto com o fornecedor da
ferramenta em caso de necessidade, é acionada para análise e solução.
4.3.4 O processo é apresentado pelo [MN, Anexo IV].
5
## ARQUIVAMENTO DE DOCUMENTOS
5.1 Disponível em https://suprir.caixa/painel2/arq/tabeladocumentos.php?h=TE174.
6
## ANEXOS
6.1 ANEXO I – Guia Rápido: Diretrizes para gerenciamento de metadados.

---

<!-- Página 9 -->

#INTERNO.TODOS
## TE 174 013

Vigência: 13/12/2024
9 / 9

6.2 ANEXO II - Gerenciamento de metadados - Modelo de dados de sistema CAIXA.
6.3 ANEXO III – Carga de metadados de modelo de dados.
6.4 ANEXO IV – Gerenciamento de metadados de demais recursos dos sistemas CAIXA.

---

## Anexos extraídos

- **Anexo 1**: `Anexo I – Guia Rápido - Diretrizes para gerenciamento de metadados.pdf`
- **Anexo 2**: `Anexo II - Gerenciamento de metadados - Modelo de dados de sistema CAIXA.pdf`
- **Anexo 3**: `Anexo III - Carga de metadados de modelo de dados.pdf`
- **Anexo 4**: `Anexo IV – Gerenciamento de metadados de demais recursos dos sistemas CAIXA.pdf`


----


*FIM "TE174.md"*


*INICIO "TE197.md"*


----


# TE197 - PADRÕES DE VERIFICAÇÃO DE SEGURANÇA DE APLICAÇÕES

> Arquivo de origem: `TE197.pdf`
> Páginas: 8

## Metadados do PDF

- **format**: PDF 1.7
- **title**: TE197023
- **author**: Ellio Alves de Oliveira Soares
- **creator**: Microsoft® Word para Microsoft 365
- **producer**: Microsoft® Word para Microsoft 365
- **creationDate**: D:20250530162430-03'00'
- **modDate**: D:20250530162430-03'00'

---

<!-- Página 1 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
1 / 8

## PADRÕES DE VERIFICAÇÃO DE SEGURANÇA DE APLICAÇÕES
SUMÁRIO DA NORMA

1
## FINALIDADE,4
2
## DEFINIÇÕES,4
3
## REGRAS,4
3.1
## DIRETRIZES GERAIS,4
3.2
## CLASSIFICAÇÃO DO SISTEMA,5
3.3
## TRILHA DE AUDITORIA NOS SISTEMAS,5
3.4
## IDENTIFICAÇÃO,5
3.5
## AUTENTICAÇÃO E AUTORIZAÇÃO,5
3.6
## ARQUITETURA E DESENVOLVIMENTO,6
3.7
## MODELAGEM DE AMEAÇAS,6
3.8
## ANÁLISE DE SEGURANÇA EM CÓDIGO FONTE,6
3.9
## ANÁLISE DINÂMICA DE APLICAÇÕES,6
3.10
## ASSINATURA DE CÓDIGO EXECUTÁVEL,6
3.11
## PROTEÇÃO DE APLICATIVOS MÓVEIS,6
3.12
## RESPONSABILIDADES,7
3.12.1
## GESTOR DA INFORMAÇÃO,7
3.12.2
## GECMI,7
3.12.3
## CESET,7
3.12.4
## EQUIPES DE DESENVOLVIMENTO,7
3.12.5
## ÁREA SIGNATÁRIA,8
4
## PROCEDIMENTOS,8
5
## ANEXOS,8


---

<!-- Página 2 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
2 / 8

## PREFÁCIO
## TÍTULO
## PADRÕES DE VERIFICAÇÃO DE SEGURANÇA DE APLICAÇÕES
## UNIDADE RESPONSÁVEL
## GECMI – GN MONIT INTEGRADO DE SEG CIBERNETICA

## PÚBLICO ALVO
Todas as unidades.

## ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR
Inclusões:
Item 3.11 e subitens – Trata sobre a proteção de aplicativos móveis com a utilização de ferramenta de RASP.
Alterações:
- O conteúdo anteriormente disposto no Item 4 foram realocados para o Item 3, tendo em vista que não se tratava de
procedimentos operacionais, mas sim de atribuições e responsabilidades
Item 3.1.22 – Todos os sistemas devem garantir a validação de itens de segurança para habilitar a execução de
transações, independentemente das críticas prévias executadas em outras camadas de infraestrutura, serviços ou
API anteriores.
Item 3.5.3.1 – Consideram-se aplicações críticas as aplicações corporativas ou de terceiros, que possuem
informações corporativas confidenciais ou de natureza pessoal e que sejam acessíveis externamente.
Item 3.12.1.11 – Validar que as proteções da ferramenta de RASP aplicadas ao canal sob sua gestão não afetam as
funcionalidades negociais.
Item 3.12.1.12 – Validar as mensagens de orientação apresentadas aos usuários nas situações de impedimento
devido a ação de alguma proteção provida pela ferramenta de RASP.
Item 3.12.2.4 – Autorizar o uso da ferramenta de RASP para proteção de aplicativos móveis.
Item 3.12.3.4 – Realizar a gestão operacional da ferramenta de RASP.
Item 3.12.4.8 – Utilização da ferramenta RASP no aplicativo autorizado pela GECMI


---

<!-- Página 3 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
3 / 8

## RELAÇÃO COM OUTROS NORMATIVOS
OR016 Tratamento da Informação
PO007 Política de Segurança e Informação
TE060 Concessão de Acesso Lógico aos Recursos Computacionais da CAIXA - Usuários Internos
TE079 Criptografia na CAIXA
TE111 Padrões Arquiteturais CAIXA
TE159 Matriz de Perfis de Acesso a Sistemas - MPAS
TE168 Identificação de Vulnerabilidades de Segurança Cibernética
## TE177 DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS
TE191 Usuário de Serviço - Padrões para Criação, Gerenciamento e Uso
TE202 Serviços de Diretórios de Usuários para Sistemas e Aplicativos
TE213 Gestão de Riscos de TI

## PRODUTOS RELACIONADOS
Não se aplica
## PROCESSOS RELACIONADOS
PR.02084 - 4.8.4.29 Proteger os serviços críticos de infraestrutura

## REGULAMENTAÇÃO UTILIZADA
Norma Complementar GSIPR nº 16, de 21/11/2012
## DOCUMENTAÇÃO UTILIZADA
Não se aplica.
## ROTEIRO PADRÃO
Não se aplica.
## NORMATIVOS REVOGADOS
Não se aplica
## ATENDIMENTO DE DÚVIDAS
## GECMI – GN MONIT INTEGRADO DE SEG CIBERNETICA


---

<!-- Página 4 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
4 / 8

## PADRÕES DE VERIFICAÇÃO DE SEGURANÇA DE APLICAÇÕES
1
## FINALIDADE
1.1 Estabelece padrões de verificação de segurança de aplicações, guiando e promovendo a aplicação das melhores
práticas de segurança no ciclo de desenvolvimento de sistemas.
2
## DEFINIÇÕES
2.1 Disponível em http://dados.caixa/portal/glossario?norma=TE197.
3
## REGRAS
3.1
## DIRETRIZES GERAIS
3.1.1 As diretrizes e ações abrangem as atividades de desenvolvimento de novos sistemas e de manutenção em
sistemas já existentes.
3.1.1.1 A adequação dos sistemas legados às diretrizes desta norma fica condicionada a uma avaliação de custo-
benefício, salvo as exceções explicitamente citadas.
3.1.2 Conforme [MN, PO007], devem ser adotados mecanismos e processos para a garantia da confidencialidade,
integridade, disponibilidade e autenticidade das informações armazenadas nos sistemas de informação da CAIXA.
3.1.3 O [MN, TE177] estabelece as diretrizes e controles institucionais para o processo de desenvolvimento de
sistemas, ao qual esta norma complementa com as diretrizes de segurança.
3.1.4 Conforme o princípio de Segurança desde a concepção, definido na [MN, PO007] – Política de Segurança e
Informação, a segurança no desenvolvimento ou manutenção de sistemas deve ser considerada desde o início do
projeto ou serviço e permeia todo o ciclo de desenvolvimento, visando mitigar riscos futuros, evitar retrabalho e reduzir
custos.
## 3.1.5 O
processo
de
DevSecOps
preconiza
a
adoção
de
práticas
e
atividades
de
segurança
em
todas
as
etapas
do
ciclo
de
desenvolvimento
de
software,
com
foco
em
aplicações
mais
seguras, conforme descrito no PPDS.
3.1.6 Todo sistema, incluindo projetos de mobilidade, seja em etapa de manutenção ou novo projeto, deve executar
obrigatoriamente em seu ciclo de desenvolvimento a etapa de análise de segurança em código fonte, conforme item
3.8.
3.1.7 Para aqueles sistemas que não estão na esteira corporativa, as orientações de como executar a análise estática
de segurança de código fonte estão disponíveis no PPDS, Guia de análise estática de código fonte.
3.1.7.1 Para os sistemas da plataforma alta, a análise de segurança em código fonte é realizada pela ferramenta de
qualidade de código.
3.1.8 Todo sistema, desde o início do ciclo desenvolvimento, deve considerar os requisitos de segurança para garantir
uso de padrões de codificação segura e a eliminação de vulnerabilidades, conforme checklist disponível no PPDS.
3.1.9 Nas definições de acesso dos novos sistemas e aplicativos de negócios, os limites de confiança são
determinados conforme necessidade do negócio e os níveis de classificação das informações.
3.1.10 Cabe a cada envolvido no ciclo de desenvolvimento usar os recursos e informações a que tiver acesso somente
para o desempenho de suas atribuições.
3.1.11 As definições de arquitetura levam em conta os padrões arquiteturais descritos no [MN, TE111], conjuntamente
com as necessidades de segurança do sistema e as práticas de segurança em profundidade.
3.1.12 Os sistemas respeitam a separação dos ambientes: Internet, Extranet, Intranet e de qualquer rede pública.
3.1.13 As diretrizes de serviços de diretórios de usuários para sistemas estão contidas no [MN, TE202].
3.1.14 A manipulação de senhas é protegida de forma a não ser trafegada ou armazenada em texto plano no código
fonte ou em qualquer forma de armazenamento temporário, conforme [MN, TE079].
3.1.15 Todos os sistemas devem obrigatoriamente utilizar o protocolo TLS/SSL para tráfego das informações de
autenticação e sessão, conforme diretriz estabelecida no [MN, TE079].
3.1.16 O acesso dos usuários a qualquer banco de dados em produção só é realizado por meio do aplicativo ou
sistema, salvo os casos previstos no [MN, TE060].


---

<!-- Página 5 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
5 / 8

3.1.17 A conexão com o banco de dados só deve ser concedida após identificação, autenticação e autorização do
usuário, serviço ou sistema.
3.1.18 O acesso para publicação e administração dos sistemas e serviços é feito exclusivamente no ambiente intranet.
3.1.19 Os sistemas e aplicativos que estejam em desuso devem ser desativados.
3.1.20 Os serviços ou funcionalidades desnecessárias ao funcionamento dos aplicativos e sistemas, após verificação
de impacto, devem ser desativados ou removidos dos sistemas operacionais, servidores e/ou bancos de dados.
3.1.21  Os sistemas devem manter atualizadas as matrizes de recurso, conforme orientação publicada no PPDS.
3.1.22 Todos os sistemas devem garantir a validação de itens de segurança para habilitar a execução de transações,
independentemente das críticas prévias executadas em outras camadas de infraestrutura, serviços ou API anteriores.
3.2
## CLASSIFICAÇÃO DO SISTEMA
3.2.1 O sistema tem suas informações classificadas conforme o [MN, OR016].
3.2.2 A classificação geral do sistema é determinada pelo nível mais restritivo atribuído entre as informações mantidas
no sistema.
3.3
## TRILHA DE AUDITORIA NOS SISTEMAS
3.3.1 A auditoria nos sistemas é feita por meio de registros específicos para este fim em todos os projetos, tornando
possível o rastreamento de alterações e irregularidades, que devem ser armazenados em trilha de auditoria.
3.3.2 As informações armazenadas na trilha são protegidas de forma a impedir sua alteração por qualquer pessoa
não autorizada.
3.3.3 A trilha de auditoria contém, minimamente, informações que caracterizam os seguintes registros:
- o tipo de evento (inclusão, alteração, exclusão, consulta);
- o autor do evento;
- a data e hora do evento;
- o endereço lógico do equipamento de origem do tipo de evento.
3.3.4 Registros adicionais podem ser incluídos de acordo com a necessidade da área gestora e/ou nível de criticidade
do sistema, respeitando o sigilo e a confidencialidade das informações conforme [MN, OR016].
3.3.5 O gestor da Informação define o prazo de retenção da trilha de auditoria.
3.4
## IDENTIFICAÇÃO
3.4.1 Para os sistemas internos e externos seguir as orientações do [MN, TE060].
3.4.2 A utilização de usuários genéricos não é permitida, podendo ser utilizado usuário de serviço em alguns casos,
conforme [MN, TE191].
3.5
## AUTENTICAÇÃO E AUTORIZAÇÃO
3.5.1 Os sistemas ou aplicativos de negócios seguem a estrutura, gestão e políticas definidas e em uso para
autenticação e autorização de usuário, conforme [MN, TE060] e [MN, TE202].
3.5.2 Não são desenvolvidos sistemas que utilizem autenticação em base proprietária.
3.5.2.1 Não são adquiridas soluções que não se integrem aos mecanismos de autenticação utilizados pela CAIXA.
3.5.3 Recomenda-se que no processo de autenticação de aplicações críticas utilize pelo menos dois fatores de
autenticação de categorias diferentes.
3.5.3.1 Consideram-se aplicações críticas as aplicações corporativas ou de terceiros, que possuem informações
corporativas confidenciais ou de natureza pessoal e que sejam acessíveis externamente.
3.5.4 Os fatores de autenticação são:
3.5.4.1 O QUE O USUÁRIO CONHECE: Exemplo, a senha do usuário.
3.5.4.2 O QUE O USUÁRIO POSSUI: São exemplos, os tokens físicos, smartphones, certificados digitais.
3.5.4.3 O QUE O USUÁRIO É: Nesta categoria, se encontra a biometria nas formas: digital, voz, face, comportamento.

---

<!-- Página 6 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
6 / 8

3.5.5 Os sistemas devem proteger as funcionalidades com perfis, de forma a segregar os acessos dos usuários de
acordo com a necessidade de uso da aplicação, conforme [MN, TE159].
3.6
## ARQUITETURA E DESENVOLVIMENTO
3.6.1 As orientações sobre arquitetura e desenvolvimento estão disponíveis no portal https://arquiteturati.caixa e no
PPDS, respectivamente.
3.7
## MODELAGEM DE AMEAÇAS
3.7.1 A elaboração do modelo de ameaças viabiliza a identificação e entendimento das ameaças possíveis ou
existentes no sistema, visando dar visibilidade das vulnerabilidades aos envolvidos e abranger medidas apropriadas
de tratamento conforme os níveis de risco de cada ameaça.
3.7.2 As orientações referentes ao processo de modelagem de ameaças estão disponíveis no PPDS.
3.8
## ANÁLISE DE SEGURANÇA EM CÓDIGO FONTE
3.8.1 A análise de segurança em código fonte é realizada em tempo de desenvolvimento, sempre que houver nova
release candidata à produção, por ferramenta especializada com base em um conjunto de regras pré -definidas para
verificação de vulnerabilidades e classificação de acordo com a severidade.
3.8.1.1 A ação mencionada é realizada nos sistemas cuja tecnologia seja suportada pela ferramenta de análise de
segurança de código fonte.
3.8.1.2 Para situações de sistemas que não se enquadrem no item anterior é necessário seguir o rito descrito no [MN,
TE213] para gestão de riscos de TI e elaboração de ações para tratamento dos riscos identificados.
3.8.1.3 Cada apontamento de vulnerabilidade é classificado automaticamente pela ferramenta de acordo com sua
criticidade, podendo ser:
- Crítica
- Alta
- Média
- Baixa
3.9
## ANÁLISE DINÂMICA DE APLICAÇÕES
3.9.1 A análise dinâmica de aplicações é realizada por ferramenta especializada com base em um conjunto de regras
pré-definidas para verificação de apontamentos de vulnerabilidades e classificação de acordo com a severidade.
3.9.2 Cada apontamento de vulnerabilidade é classificado automaticamente pela ferramenta de acordo com sua
criticidade.
3.9.3 A análise dinâmica de aplicações ocorre para aplicações conforme autorização da GECMI.
3.10
## ASSINATURA DE CÓDIGO EXECUTÁVEL
3.10.1 A assinatura de código executável deve ser feita pelas áreas signatárias, considerando quem desenvolveu o
código a ser assinado.
3.10.1.1 Deve-se assinar, pelo menos, o código executável a ser instalado nos pontos finais dos canais de
atendimento externos (Autoatendimento/ATM, Loterias/TFL), todo código executado em navegadores de Internet
(applets, extensões) e os aplicativos móveis a serem publicados em lojas virtuais da Internet.
3.10.1.2 Cada área que gera o código a ser assinado deverá definir o procedimento operacional para a realização da
assinatura digital, de acordo com o tipo de código a ser assinado, no entanto, a ferramenta a ser escolhida deverá
ser submetida à homologação da GECMI.
3.10.2 Sempre que possível, a assinatura do código deve ser um procedimento integrado à ferramenta de repositório
de código ou à ferramenta de desenvolvimento do código, de modo a evitar a cópia do código a ser assinado para
outras máquinas além daquelas diretamente envolvidas com o processo de desenvolvimento em si.
3.11
## PROTEÇÃO DE APLICATIVOS MÓVEIS
3.11.1 A proteção de aplicações móveis é realizada por meio de ferramenta de RASP, integrada com a esteira de
desenvolvimento para encapsulamento do aplicativo antes da publicação nas lojas de aplicativos.
3.11.2 A utilização da ferramenta de RASP é realizada nos aplicativos móveis conforme autorização da GECMI.

---

<!-- Página 7 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
7 / 8

3.11.3 Todas as proteções disponíveis na ferramenta de RASP devem ser aplicadas primeiramente em modo escuta
(modo de monitoramento) e a habilitação da proteção deve ser precedida de validação pelo gestor do canal.
3.11.4 As mensagens de orientação apresentadas aos usuários nas situações de impedimento devido a ação de
alguma proteção provida pela ferramenta devem ser validadas pelo gestor do canal.
3.12
## RESPONSABILIDADES
3.12.1
## GESTOR DA INFORMAÇÃO
3.12.1.1 Planejar, definir e documentar de forma clara e objetiva os requisitos de segurança.
3.12.1.2 Classificar corretamente as informações segundo o [MN, OR016].
3.12.1.3 Definir e manter os perfis de acesso corretamente, devendo apenas ser liberado o acesso às informações a
quem realmente necessite e no nível adequado da necessidade, conforme [MN, TE159].
3.12.1.4 Definir o conjunto de informações que devem compor a trilha de auditoria de forma a abranger os campos
obrigatórios especificados.
3.12.1.5 Definir o prazo de retenção da trilha de auditoria.
3.12.1.6 Solicitar a desativação de sistemas, aplicativos de negócios e/ou funcionalidades que estejam em desuso.
3.12.1.7 Validar os perfis definidos na MPAS, por meio de testes após aplicação no sistema e antes da implantação
da MPAS em ambiente de Produção, como forma de evitar possíveis impactos em ambiente produtivo.
3.12.1.8 Garantir a segurança das informações acerca do negócio, projeto, sistema e demais informações vinculadas
a esses, não tratando tais assuntos fora do ambiente corporativo e junto a pessoas que não fazem parte do processo.
3.12.1.9 Garantir a classificação correta da informação tratada pelo sistema, concomitantemente com os acessos
mínimos, de acordo com a necessidade e nível de sensibilidade dos dados.
3.12.1.10 Participar da construção do processo de modelagem e ameaças em conjunto com a equipe de
desenvolvimento.
3.12.1.11 Validar que as proteções da ferramenta de RASP aplicadas ao canal sob sua gestão não afetam as
funcionalidades negociais.
3.12.1.12 Validar as mensagens de orientação apresentadas aos usuários nas situações de impedimento devido a
ação de alguma proteção provida pela ferramenta de RASP.
3.12.2
## GECMI
3.12.2.1 Definir requisitos e propor melhorias para os processos e ferramentas utilizadas.
3.12.2.2 Realizar a gestão do processo de análise de código.
3.12.2.3 Homologar ferramentas para assinatura de código executável.
3.12.2.4 Autorizar o uso da ferramenta de RASP para proteção de aplicativos móveis.
3.12.3
## CESET
3.12.3.1 Fornecer atendimento de segundo nível para questões relacionadas à ferramenta e ao processo de
desenvolvimento seguro.
3.12.3.2 Realizar análise estática de aplicações quando necessário e/ou sob demanda.
3.12.3.3 Realizar testes de intrusão nas aplicações conforme diretrizes da [MN, TE168].
3.12.3.4 Realizar a gestão operacional da ferramenta de RASP.
3.12.4
## EQUIPES DE DESENVOLVIMENTO
3.12.4.1 Realizar revisão de segurança dos sistemas até o nível do código fonte.
3.12.4.2 Realizar a análise estática do código fonte utilizando a ferramenta adquirida pela CAIXA em tempo de
desenvolvimento.
3.12.4.3 Executar testes de segurança nas versões candidatas antes de serem publicadas no ambiente de produção
e, quando não for possível, realizar testes de segurança com a versão publicada no ambiente de produção.
3.12.4.4 Providenciar a correção de vulnerabilidades encontradas nas aplicações sob sua responsabilidade.

---

<!-- Página 8 -->

#INTERNO.TODOS
## TE 197 023

Vigência: 04/06/2025
8 / 8

3.12.4.5 Atualizar a MPAS em casos de criação de novas funcionalidades ou desativação de funcionalidades
existentes.
3.12.4.6 Planejar e realizar o tratamento de eventuais problemas de segurança encontrados ao longo do ciclo de
desenvolvimento.
3.12.4.7 Realizar o processo de modelagem de ameaças.
3.12.4.8 Utilização da ferramenta RASP no aplicativo autorizado pela GECMI.
3.12.5
## ÁREA SIGNATÁRIA
3.12.5.1 Assinar o código executável por ela produzido de acordo com as diretrizes aqui definidas.
4
## PROCEDIMENTOS
4.1  Não se aplica.
5
## ANEXOS
5.1  Não se aplica.

---

## Anexos extraídos

Nenhum anexo embutido foi identificado neste PDF.


----


*FIM "TE197.md"*


*INICIO "OR016.md"*


----


# OR016 - documento principal

**Arquivo de origem:** `OR016.pdf`

**Total de páginas:** 14

---


## Página 1

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
1 / 14 
 
 
TRATAMENTO DA INFORMAÇÃO 
SUMÁRIO DA NORMA 
1 
FINALIDADE,5 
2 
DEFINIÇÕES,5 
3 
REGRAS,5 
3.1 
ORIENTAÇÕES GERAIS,5 
3.2 
CLASSIFICAÇÃO DA INFORMAÇÃO NA CAIXA,5 
3.3 
TRATAMENTO DA INFORMAÇÃO,9 
4 
PROCEDIMENTOS,13 
5 
ANEXOS,14



## Página 2

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
2 / 14 
 
PREFÁCIO 
TÍTULO 
TRATAMENTO DA INFORMAÇÃO 
UNIDADE RESPONSÁVEL 
GERIT – GN SEG INF, RISCO CIBERNETICO TEC INF 
 
UNIDADE(S) CORRESPONSÁVEL(IS) 
Não se aplica. 
PÚBLICO ALVO 
Todas as Unidades da CAIXA. 
ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR 
Exclusão: 
▪ Exclusão do item 5 ARQUIVAMENTO DE DOCUMENTOS, de acordo com a nova estrutura normativa, conforme 
[MN, OR002]. 
Alterações: 
▪ Item 3 – REGRAS: 
▪ correção da redação do item 3.1.9 de A responsabilidade  pela  divulgação  de  informação  incompatível  com 
gestor  da  informaçãoo  grau  de  sigilo atribuído pelo gestor é daquele que fizer a divulgação indevida , para A 
responsabilidade pela divulgação de informação incompatível com o grau de sigilo atribuído pelo gestor é daquele 
que fizer a divulgação indevida; 
▪ alteração 
do 
item 
3.2.5.7 
de 
É 
vedado 
o 
direcionamento 
de 
informações 
classificadas 
como,  
#INTERNO.CONFIDENCIAL, #EXTERNO.CONFIDENCIAL e #EXTERNO.RESTRITO  a destinatário diverso do 
grupo previamente especificado/identificado sem autorização formal do gestor da informação, para É vedado o 
direcionamento de informações classificadas como #INTERNO.CONFIDENCIAL,  a destinatário diverso do grupo 
previamente especificado/identificado sem autorização formal do gestor da informação; 
▪ alteração do item 3.2.6.2.5 (com reordenamento da numeração dos itens subsequentes) de Os  sistemas  
informatizados  em  produção devemestar  classificados adequadamente,  admitindo-se aclassificação extinta, 
conforme a tabela de equivalência - CLASSIFICAÇÃO EXTINTA x CLASSIFICAÇÃO VIGENTE do Anexo V, para 
3.2.6.2.5 Os sistemas informatizados CAIXA em produção devem estar classificados adequadamente na primeira 
tela conforme item 3.2 do Guia Rápido e no Portal Gestão da Informação, demais aplicações sem Front-end apenas 
no Portal Gestão da Informação;  
3.2.6.2.5.1 A classificação da informação na primeira tela não se aplica a sistemas utilizados para interação 
exclusiva com clientes, porém a classificação destes deve ser registrada no Portal Gestão da Informação;   
▪ alteração 
de 
redação 
para 
maior 
clareza 
do 
item 
3.3.3.2.2 
de 
A 
manutenção 
e 
o 
armazenamento/arquivamentodeInformações Sensíveis serão efetuados, em repositório centralizado, com controle 
de acesso e trilha de auditoria para A manutenção e o armazenamento/arquivamento em meio eletrônico de 
documentos com “Informações Sensíveis” serão efetuados, em repositório centralizado, homologado pela CAIXA, 
com controle de acesso e trilha de auditoria; 
▪  alteração de redação para maior clareza do item 3.3.3.2.3 de Para  armazenamento  em  meio  eletrônico  de  
documento  com  informação confidencial  ou  sigilosaé obrigatória  a classificação  do  arquivoeletrônico,  
conformeitem  3.2  do anexo “Guia  Rápido –Tratamento  da Informação”,  e  a utilização  de  sistemas  de  informação  
atualizados  de  forma  a  prevenir  ameaças  de  quebra  de segurança, com controle de acessocompatível com 
sua classificação para Para armazenamento em meio eletrônico de documento com informação confidencial ou 
sigilosa é obrigatória a classificação do arquivo eletrônico, conforme item 3.2 do anexo “Guia Rápido – Tratamento 
da Informação”;  
▪ Novo ordenamento em alíneas de a) a f) no item 3.3.3.3.1.1; 
▪ ANEXO V - UNIDADES AUTORIZADAS A CLASSIFICAR COMO #EXTERNO.RESTRITO – alteração no nome do 
anexo de Unidades Autorizadas a Classificar e Enviar Informações Classificadas como #EXTERNO.RESTRITO para 
Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO e  inclusão da GESTI.



## Página 3

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
3 / 14 
 
RELAÇÃO COM OUTROS NORMATIVOS 
AD007 DISTRIBUIÇÃO DE DOCUMENTOS E/OU OBJETOS VIA TRANSPORTE COMPARTILHADO DE MALOTES 
AD015 GESTÃO DOCUMENTAL - ARQUIVAR E RECUPERAR DOCUMENTOS E INFORMAÇÕES 
AD055 GESTÃO DOCUMENTAL - ELIMINAÇÃO DE DOCUMENTOS 
AD068 ALIENAÇÃO DE BENS MÓVEIS INSERVÍVEIS 
AD090 SUPRIMENTOS - LOGÍSTICA DE MATERIAL PERMANENTE 
AD213 SERVIÇO POSTAL 
AD226 GESTÃO DOCUMENTAL - REGRAS ARQUIVÍSTICAS 
AD242 GESTÃO DE CONTRATOS ADMINISTRATIVOS E ATAS DE REGISTRO DE PREÇOS 
OR001 ESTATUTO DA CAIXA ECONÔMICA FEDERAL 
OR003 CORREIO ELETRÔNICO - PADRÃO E REGRAS DE UTILIZAÇÃO 
OR007 COMUNICAÇÃO ADMINISTRATIVA 
OR116 LEI DE ACESSO À INFORMAÇÃO NO ÂMBITO DA CAIXA 
PO007 POLÍTICA DE SEGURANÇA E INFORMAÇÃO 
PO061 Política de Divulgação de Atos ou Fatos Relevantes e Negociação de Valores Mobiliários 
RH053 REGULAMENTO DE PESSOAL 
RH118 PROGRAMAS DE APRENDIZAGEM E DE ESTÁGIO 
TE042 RECURSOS TECNOLÓGICOS DE MICROINFORMÁTICA - DIMENSIONAMENTO E REGRAS DE USO, 
GUARDA, MANUTENÇÃO, CONSERVAÇÃO E RESPONSABILIDADE 
TE074 MODELAGEM DE DADOS PARA SISTEMAS E APLICATIVOS DE NEGÓCIO CAIXA 
TE226 UTILIZAÇÃO DE DISPOSITIVOS DE ARMAZENAMENTO EXTERNO E COMPARTILHAMENTO DE 
ARQUIVOS NA CAIXA 
TE227 Diretrizes para Utilização de Nuvem Pública 
TE250 CICLO DE VIDA DOS ATIVOS DE TI DO AMBIENTE DESCENTRALIZADO 
TE257 DISPONIBILIZAR INFRAESTRUTURA CENTRALIZADA DE TI 
  
PRODUTOS RELACIONADOS 
Não se aplica 
PROCESSOS RELACIONADOS 
PR.01807 - 4.3.1.56 Definir políticas, normas e regras de segurança da informação 
 
REGULAMENTAÇÃO UTILIZADA 
Constituição Federal, de 05/10/1988. 
Decreto Federal n° 7.724, de 16/05/2012. 
Decreto Federal nº 7.845, de 14/11/2012. 
Instrução Normativa PR/GSI nº 1, de 27/05/2020. 
Lei n° 12.527, de 18/11/2011. 
NC DSIC/GSI/PR nº 20, de 15/12/2014. 
Portaria PR/GSI nº 93, de 18/10/2021. 
DOCUMENTAÇÃO UTILIZADA 
NBR ISO/IEC nº 27.002, de 08/12/2013.



## Página 4

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
4 / 14 
 
NJ GEAJU nº 6.026.611/2024, de 10/04/2024. 
ROTEIRO PADRÃO 
Não se aplica. 
NORMATIVOS REVOGADOS 
Não se aplica. 
ATENDIMENTO DE DÚVIDAS 
GERIT – GN SEG INF, RISCO CIBERNETICO TEC INF



## Página 5

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
5 / 14 
 
TRATAMENTO DA INFORMAÇÃO 
1  
FINALIDADE 
1.1 Definir os critérios para o adequado tratamento da informação na CAIXA, de acordo com sua classificação, 
independentemente do meio, suporte ou forma em que a informação é armazenada, veiculada ou transportada. 
2  
DEFINIÇÕES 
2.1 Disponível em http://dados.caixa/portal/glossario?norma=OR016. 
3  
REGRAS 
3.1  
ORIENTAÇÕES GERAIS 
3.1.1 O tratamento da informação na CAIXA, disciplinado nesta norma, baseia-se nas diretrizes da Política de 
Segurança e Informação – [MN, PO007]. 
3.1.2 Toda informação, transitada com uso de recursos corporativos e/ou armazenada em qualquer suporte e/ou 
sistema informacional corporativo, é de propriedade da CAIXA e deve ser tratada segundo as diretrizes descritas 
nesta norma e nos termos da legislação pertinente vigente. 
3.1.3 Para possibilitar o tratamento correto dos ativos informacionais da CAIXA, é obrigatória a classificação da 
informação na CAIXA para toda informação produzida ou sob sua custódia, independentemente do suporte ou da 
forma utilizada para o seu armazenamento ou transmissão, de forma a permitir a implementação das ações de 
proteção durante todo o ciclo de vida da informação. 
3.1.4 Impactos financeiros, operacionais ou de imagem, decorrentes do tratamento incorreto da informação, causado 
por classificação indevida ou não classificação, são de inteira responsabilidade do gestor da informação. 
3.1.5 O gestor da informação atribui a classificação de sigilo adequada à todas as informações sob sua 
responsabilidade, respeitando os critérios estabelecidos neste normativo. 
3.1.5.1 Cabendo-lhe a desclassificação ou reclassificaçao da informação para maior ou menor grau de sigilo, de 
acordo com os critérios e níveis de classificação estabelecidos. 
3.1.6 O acesso e o tratamento de informação sigilosa são restritos aos usuários que atendam ao princípio da 
“necessidade de conhecer” e que sejam devidamente autorizados, sem prejuízo das atribuições dos órgãos e 
entidades reguladoras e fiscalizadoras autorizadas por lei. 
3.1.7 A divulgação de informações de empresa pública, que atue em regime de concorrência, sujeita ao disposto no 
Art.173 da CF, está submetida às normas pertinentes da CVM, a fim de assegurar sua competitividade e governança 
corporativa.   
3.1.7.1 Dessa forma, o atendimento às requisições de informações baseadas na Lei de Acesso à Informação – LAI 
(Lei 12.527/2011) devem seguir o disposto no [MN, OR116] e também  observar o dever de guarda do sigilo, conforme 
[MN, AE136]. 
3.1.8 O regramento sobre a divulgação de informações ao mercado, em especial as relativas a ato ou fato relevante, 
encontra-se disposto na [MN, PO061]. 
3.1.9 A responsabilidade  pela  divulgação  de  informação  incompatível  com  o  grau  de  sigilo atribuído pelo gestor 
é daquele que fizer a divulgação indevida.  
3.1.10 O usuário e o custodiante também respondem pelo uso incorreto da informação a que têm acesso, devendo: 
▪ Zelar pela integridade, disponibilidade e controle de acesso dos dados e informações em seu poder e pela 
implementação e administração das regras de proteção estabelecidas que assegurem a confidencialidade, de 
acordo com a classificação atribuída pelo gestor da informação. 
▪ Preservar a classificação de sigilo atribuída pelo gestor da informação. 
3.1.11 A infração às disposições estabelecidas na presente norma implica nas sanções previstas no [MN, RH053], 
para empregados da CAIXA, no Programa de Estágio e no Programa de Aprendizagem [MN, RH118], para estagiários 
e aprendizes, no contrato de prestação de serviço, aplicável à empresa contratada, bem como nos demais processos 
legais de responsabilidade civil e penal cabíveis, também aplicáveis ao prestador de serviço/preposto e demais 
usuários.  
3.2  
CLASSIFICAÇÃO DA INFORMAÇÃO NA CAIXA



## Página 6

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
6 / 14 
 
3.2.1 A classificação da informação na CAIXA tem por objetivo assegurar que a informação receba um nível adequado 
de proteção, considerando requisitos legais, sua sensibilidade e criticidade na empresa para evitar perda, modificação 
ou divulgação não autorizada.  
3.2.2 A classificação da informação é definida, no momento em que for produzida ou recebida, pelo gestor da 
informação, considerando os impactos do acesso e divulgação por pessoas não autorizadas. 
3.2.2.1 Na definição da classificação da informação, também é observado o interesse público da informação, e 
utilizado o critério adequado para o seu acesso. 
3.2.3 A informação encontrada sem classificação deve ser tratada como #INTERNO.CAIXA. 
3.2.4 As informações que constam classificação de grau de sigilo extinto deverão ser tratadas conforme a   
classificação vigente respectiva, para tanto deverá ser consultada a tabela de equivalência do anexo “Tabela de 
Equivalência - Classificação Extinta X Classificação Vigente”.   
3.2.5  
QUANTO A CLASSIFICAÇÃO E PRAZOS DE SIGILO 
3.2.5.1 As informações na CAIXA são classificadas conforme tipo, aplicabilidade, público com acesso autorizado e 
prazo de restrição de acesso, conforme a seguir: 
 
 TIPO DE 
INFORMAÇÃO 
CLASSIFICAÇÃO CAIXA 
APLICABILIDADE / PÚBLICO COM 
ACESSO AUTORIZADO  
PRAZO DE 
SIGILO 
 
 
INFORMAÇÕES 
CONFIDENCIAIS OU 
SIGILOSAS  
Que possuem sigilo 
previsto em legislação 
específica, tais como: 
▪ fiscal; 
▪ bancário; 
▪ de 
operações 
e 
serviços no mercado 
de capitais; 
▪ de 
operações 
e 
serviços no mercado 
de capitais; 
▪ comercial; 
▪  contábil; 
▪ profissional; 
▪ industrial; 
▪ segredo de justiça; 
▪ e demais hipóteses 
legais. 
Consta 
no 
anexo 
“Principais Hipóteses 
de 
Sigilo 
e 
Embasamento 
Legal” 
quadro 
resumo 
e 
embasamento legal. 
#INTERNO.TODOS 
Aplicada 
às 
informações 
sigilosas 
tratadas em ambiente interno da CAIXA 
e restritas aos empregados, dirigentes, 
conselheiros da CAIXA, prestadores de 
serviço, 
estagiários 
e 
aprendizes 
vinculados às unidades da CAIXA ou às 
empresas do Conglomerado CAIXA. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Conforme 
prazo 
estabelecido 
na 
respectiva lei 
específica 
 
 
 
 
 
 
 
 
 
#INTERNO.CAIXA 
Aplicada 
às 
informações 
sigilosas 
tratadas em ambiente interno da CAIXA 
e restritas aos empregados, dirigentes e 
aos conselheiros da CAIXA. 
#INTERNO.CONFIDENCIAL 
Aplicada 
às 
informações 
sigilosas 
tratadas em ambiente interno da CAIXA 
e restritas a Grupos identificados de 
empregados, dirigentes, conselheiros 
da CAIXA e unidades da CAIXA ou do 
Conglomerado 
CAIXA. 
Também 
aplicado 
às 
informações 
sigilosas 
restritas 
a 
grupos 
específicos 
de 
prestadores de serviço.   
#EXTERNO.CONFIDENCIAL 
 
Aplicada na necessidade de envio de 
informações confidenciais da CAIXA, 
devidamente autorizado pelo gestor da 
informação, 
a 
público 
externo 
específico, devidamente identificado, 
como Órgãos e Entidades Reguladoras 
e/ou Fiscalizadoras, Auditoria Externa, 
Empresas 
contratadas, 
inclusive  
empresas de Consultoria, FUNCEF, 
Governo 
e 
clientes 
da 
CAIXA, 
determinados prestadores de serviço, 
agente externo e ex-dirigentes (no 
exercício de direito ao acesso às 
informações  indispensáveis à defesa 
em processos administrativos, arbitrais  
ou judiciais, em conformidade com o 
disposto no [MN, OR001].  
Conforme  item [MN, 3.3.4.6] não é 
possível 
encaminhar 
informação 
classificada pelo seu gestor como de 
uso interno (corporativo), nem arquivo 
anexado classificado dessa forma.



## Página 7

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
7 / 14 
 
 
 
 
#EXTERNO.RESTRITO 
 
Aplicada 
no 
fornecimento/envio 
de  
informações 
originais, 
restritas 
ao 
público interno e classificadas dessa 
forma, para público externo específico, 
devidamente 
identificado, 
como 
Órgãos/Entidades 
Reguladoras 
e/ou 
Fiscalizadoras, 
Auditoria 
Externa, 
Empresas Contratadas, inclusive as 
empresas de Consultoria, FUNCEF,  
determinados prestadores de serviço e 
ex-dirigentes (no exercício de direito ao 
acesso às informações  indispensáveis 
à defesa em processos administrativos, 
arbitrais  ou judiciais, em conformidade 
com o disposto no [MN, OR001]). 
Conforme 
item 
[MN, 
3.3.4.6], 
é 
permitido, a unidades específicas da 
CAIXA, 
anexar 
arquivos 
e/ou 
encaminhar informações confidenciais 
da CAIXA. As unidades autorizadas a 
enviar 
estas 
informações 
possuem 
previsão para tal, devido à natureza das 
atividades desempenhadas pela área, e 
estão listadas no anexo “Unidades 
Autorizadas 
a 
Classificar 
como 
#EXTERNO.RESTRITO”. 
INFORMAÇÕES 
PESSOAIS  
São 
protegidas 
por 
legislação específica. 
#PESSOAL 
Aplicada à informação relativa à vida 
privada, honra e imagem de pessoa 
natural/física 
identificada 
ou 
identificável por dados pessoais, como 
número de documentos de identificação 
pessoal, 
biometria, 
endereço 
residencial/comercial 
ou 
eletrônico, 
informações patrimoniais e outros.  
Informação restrita à pessoa titular dos 
dados 
e 
a 
terceiros 
mediante 
consentimento expresso do titular e/ou 
previsão legal. 
100 anos 
INFORMAÇÕES 
PÚBLICAS 
#PUBLICO 
Aplicada às informações com conteúdo 
de interesse geral e público, sem 
restrição de acesso, tanto para o 
público interno quanto para o público 
externo.  
   
Não se aplica 
3.2.5.2 É obrigatória a utilização da expressão #PUBLICO para todas as informações públicas que não necessitam 
de controles de proteção quanto ao seu acesso. 
3.2.5.2.1 Excetuam-se as informações produzidas para divulgação ao público externo em geral e/ou clientes, como 
cartazes, filipetas, CAIXA Informa, material publicitário e demais.   
3.2.5.3 O prestador de serviço a que se refere as categorias #INTERNO.TODOS, #INTERNO.CONFIDENCIAL, 
#EXTERNO.CONFIDENCIAL e #EXTERNO.RESTRITO é o empregado contratado por empresa prestadora de serviço 
que possui contrato vigente firmado com a CAIXA. 
3.2.5.3.1 O contrato de prestação de serviço, além de ter como anexo o Termo de Responsabilidade de Segurança 
da Informação – Exclusivo para Prestador de Serviço [MN, MO19607], devidamente assinado(s), deve conter as 
cláusulas recomendadas no Guia CAIXA de Diretrizes Gerais de Segurança da Informação e Privacidade – 
Fornecedores. 
3.2.5.3.2 Cabe à unidade gestora operacional do contrato acompanhar o cumprimento da regra contratual de 
preenchimento do Termo de Responsabilidade de Segurança da Informação – Exclusivo para Prestador de Serviço 
[MN, MO19607] por todos os prestadores de serviços que tiverem acesso a sistemas e informações internas da 
CAIXA,   conforme previsto no [MN, AD242]. 
3.2.5.4 Cabe ao emissor das informações a observação das exigências contidas no item [MN, 3.2.5.3] e sua 
inobservância caracteriza infração prevista no item [MN, 3.1.11].



## Página 8

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
8 / 14 
 
3.2.5.5 O acesso a informações em formato eletrônico pelo prestador de serviço referenciado nas categorias 
#INTERNO.TODOS e #INTERNO.CONFIDENCIAL somente é autorizado ao prestador de serviço com matrícula (P ou 
F), senha ativa na Rede CAIXA e, acesso ao Caixa-mail para tramitação da informação, por meio de correio eletrônico 
da CAIXA.  
3.2.5.6 As informações destinadas às Unidades Lotéricas e Correspondentes Bancários são realizadas pela GERLO 
- GN Rede Lotérica e pela GERCO – GN Rede de Correspondentes, respectivamente, em conformidade com as 
diretrizes 
da 
presente 
norma, 
por 
meio 
de 
Ofícios 
expedidos, 
pelo 
sistema 
Conexão 
Parceiros 
(https://painel.parceiros.caixa/#/home/suporte-parceiro) e por mensagens nos terminais de atendimento. 
3.2.5.6.1 Para fins desta norma, a Unidade Lotérica e o Correspondente Bancário, são considerados agentes 
externos.  
3.2.5.7 É vedado o direcionamento de informações classificadas como #INTERNO.CONFIDENCIAL, a destinatário 
diverso do grupo previamente especificado/identificado sem autorização formal do gestor da informação. 
3.2.5.7.1 Não é necessária autorização quando o direcionamento for para unidade(s) hierarquicamente vinculada(s) 
ao destinatário especificado/identificado pelo gestor da informação,ou no caso da CESOA e CESOB de ou para a 
SUDEA e SUDEB, respectivamente. 
3.2.5.8 É vedado ao estagiário, ao aprendiz e ao prestador de serviço repassar informações confidenciais da CAIXA, 
que tiver acesso para o desempenho de suas atribuições, a usuários externos. 
3.2.5.9 O tratamento de informações classificadas como #PESSOAL obedece aos preceitos legais e regulatórios 
vigentes. 
3.2.5.10  
INFORMAÇÕES AGRUPADAS EM DIFERENTES NIVEIS DE CLASSIFICAÇÃO 
3.2.5.10.1 Para documento que contiver informações agrupadas em diferentes níveis de classificação de sigilo, seja 
em formato eletrônico ou impresso, considerando também os anexos, deverão ser atribuídos ao documento a 
classificação e o tratamento da categoria de sigilo mais restrita, ou seja, a de maior nível de sigilo entre os existentes 
nos agrupamentos do documento que está sendo classificado. 
3.2.6  
FORMATAÇÃO DA CLASSIFICAÇÃO 
3.2.6.1 A categoria de classificação é composta pelo símbolo “#”, seguido da palavra que o identifica escrita em caixa 
alta – PUBLICO, PESSOAL etc. 
3.2.6.1.1 Caso o nome da categoria de classificação seja composto por 02 (duas) palavras, haverá a inserção de 01 
(um) 
ponto 
simples 
entre 
elas 
- 
#INTERNO.TODOS, 
#INTERNO.CAIXA, 
#INTERNO.CONFIDENCIAL, 
#EXTERNO.CONFIDENCIAL e #EXTERNO.RESTRITO. 
3.2.6.2 A categoria de classificação deve ser posicionada em local de fácil identificação, preferencialmente na parte 
superior do suporte, escrito em tamanho e cor legíveis, de modo que seja facilmente identificada e claramente 
visualizada. 
3.2.6.2.1 É obrigatória a classificação da informação para qualquer suporte utilizado – meio papel, magnético, óptico 
e eletrônico, sistemas informatizados, microformas, correio eletrônico CAIXA e demais arquivos eletrônicos, conforme 
procedimentos do item 3.2 do anexo “Guia Rápido – Tratamento da Informação”. 
3.2.6.2.2 Os arquivos eletrônicos passiveis de classificação possuem extensão .pdf, .pbit, .pbix, .mpp, .mpt, .pub, 
.xps, .oxps, .jpg, .jpe, .jpeg, .jif, .jfif, .jfi, .png, .tif, .tiff, .dwfx, .psd, .dng, .doc, .docm, .docx, .dot, .dotm, .do tx, .potm, 
.potx, .pps, .ppsm, .ppsx, .ppt, .pptm, .pptx, .vdw, .vsd, .vsdm, .vsdx, .vss, .vssm, .vst, .vstm, .vssx, .vstx, .xls, .xlsb, 
.xlt, .xlsm, .xlsx, .xltm e .xltx.  
3.2.6.2.3 O arquivamento, a forma de compartilhamento e/ou de transmissão de arquivo eletrônico que trate 
informação confidencial e não seja passível de classificação deve assegurar sua confidencialidade, por meio de pasta 
privada e/ou por meio de link de acesso restrito aos usuários autorizados.  
3.2.6.2.4 A classificação da informação definida nesta norma deve ser aplicada quando do uso de quaisquer 
dispositivos autorizados a se conectar na rede da CAIXA.  
3.2.6.2.5 Os sistemas informatizados CAIXA em produção devem estar classificados adequadamente na primeira tela 
conforme item 3.2 do Guia Rápido e no Portal Gestão da Informação, demais aplicações sem Front-end apenas no 
Portal Gestão da Informação. 
3.2.6.2.5.1  A classificação da informação na primeira tela não se aplica a sistemas utilizados para interação exclusiva 
com clientes, porém a classificação destes deve ser registrada no Portal Gestão da Informação.   
3.2.6.2.5.2 Admite-se a classificação extinta, conforme a tabela de equivalência - CLASSIFICAÇÃO EXTINTA x 
CLASSIFICAÇÃO VIGENTE do Anexo VI. 
3.2.6.2.6 A classificação da informação prevista nesta norma deverá ser observada na implementação dos sistemas 
informatizados em desenvolvimento.



## Página 9

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
9 / 14 
 
3.2.6.2.7 Nos sistemas informatizados CAIXA e nos seus respectivos relatórios, devido à limitação de espaço, admite-
se abreviação dos termos, caso a categoria de classificação seja composta por 02 (duas) palavras, observando-se 
as regras de abreviação do [MN, TE074]: 
▪ #INTERNO.TODOS: #ITRNO.TDO; 
▪ #INTERNO.CAIXA: #ITRNO.CXA; 
▪ #INTERNO.CONFIDENCIAL: #ITRNO.CNFDL; 
▪ #EXTERNO.CONFIDENCIAL: #EXTRO.CNFDL; 
▪ #EXTERNO.RESTRITO: #EXTRO.RSTRO. 
3.2.7  
COMPETÊNCIAS PARA CLASSIFICAÇÃO DAS INFORMAÇÕES 
3.2.7.1 Os usuários competentes para atribuição de classificação às informações na CAIXA são: 
▪ para #INTERNO.TODOS: agente público, prestador de serviços com matrícula (P ou F) e senha ativa na Rede 
CAIXA, estagiário e aprendiz; 
▪ para #INTERNO.CAIXA, #INTERNO.CONFIDENCIAL e #EXTERNO.CONFIDENCIAL: agente público; 
▪ para #EXTERNO.RESTRITO: agente público lotado nas unidades do anexo “Unidades Autorizadas a Classificar 
como #EXTERNO.RESTRITO”; 
▪ para #PESSOAL e #PUBLICO: todos os usuários. 
3.2.7.1.1 Para todos os casos, não se aplicam hipóteses de delegação. 
3.2.8  
REVISÃO DA CLASSIFICAÇÃO VIGENTE 
3.2.8.1 A classificação da informação sob sua responsabilidade é revista, exclusivamente, pelo gestor da informação 
ou superior hierárquico, para desclassificação ou reclassificação em menor ou maior grau de sigilo, mediante 
provocação ou solicitação formal, de iniciativa do público interno ou externo ou a critério do gestor da informação, de 
acordo com as regras descritas neste normativo. 
3.3  
TRATAMENTO DA INFORMAÇÃO 
3.3.1 O tratamento da informação abrange as políticas, os processos, as práticas e os instrumentos utilizados para 
lidar com a informação ao longo de cada fase de seu ciclo de vida. 
3.3.1.1 O ciclo de vida da informação é formado pelas fases de Produção ou Recepção; Organização; Uso e 
Disseminação; e Destinação. 
3.3.2  
PRODUÇÃO OU RECEPÇÃO  
3.3.2.1 Refere-se à fase inicial do ciclo de vida, e compreende a produção, recepção ou custódia e classificação da 
informação [MN, 3.2], independentemente de seu formato ou suporte. 
3.3.2.2  
PRODUÇÃO  
3.3.2.2.1 Na produção da informação da CAIXA, o gestor da informação atribui a sua classificação de acordo com o 
item [MN, 3.2].  
3.3.2.2.2 As classificações em grau de sigilo RESERVADA, SECRETA e ULTRASSECRETA se aplicam  
exclusivamente para informações imprescindíveis à segurança da sociedade ou do Estado, conforme artigo 23 da 
LAI. 
3.3.2.2.2.1 Considerando o regramento para classificação da informação adotado na CAIXA, não há previsão de 
enquadramento nos graus de sigilo supracitados, quanto às informações produzidas pela CAIXA. 
3.3.2.3  
RECEPÇÃO OU CUSTÓDIA  
3.3.2.3.1 Na recepção ou custódia de informação de público externo deve-se proceder a classificação da informação, 
exceto para documento “assinado digitalmente”. 
3.3.2.3.2 No recebimento de informação classificada como ULTRASSECRETA, SECRETA ou RESERVADA, 
independente do meio e formato, cabe aos responsáveis pelo recebimento, que não se confunde com sua leitura, 
proceder conforme o item [MN, 4.3].



## Página 10

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
10 / 14 
 
3.3.2.3.2.1 Caso a tramitação ocorra por expediente ou correspondência, o envelope interno somente poderá ser 
aberto pelo destinatário, seu representante autorizado ou autoridade hierarquicamente superior.  
3.3.3  
ORGANIZAÇÃO  
3.3.3.1 Refere-se ao armazenamento, arquivamento e controle da informação.  
3.3.3.2  
ARMAZENAMENTO E ARQUIVAMENTO 
3.3.3.2.1 A informação confidencial ou sigilosa será mantida ou arquivada em condições especiais de segurança. 
Tratando-se de documento, conforme [MN, AD015]. 
3.3.3.2.2 A manutenção e o armazenamento/arquivamento em meio eletrônico de documentos com “Informações 
Sensíveis” serão efetuados, em repositório centralizado, homologado pela CAIXA, com controle de acesso e trilha de 
auditoria. 
3.3.3.2.3 Para armazenamento em meio eletrônico de documento com informação confidencial ou sigilosa é 
obrigatória a classificação do arquivo eletrônico, conforme item 3.2 do anexo “Guia Rápido – Tratamento da 
Informação”.  
3.3.3.2.3.1 O arquivo eletrônico “assinado digitalmente” produzido pela CAIXA antes de 24/02/2023 (data de vigência 
da versão 049 deste normativo) ou recebido de público externo a qualquer tempo não deve ser classificado para 
preservar sua integridade, contudo é vedado seu armazenamento, arquivamento ou compartilhamento em diretórios, 
pastas, canais, equipes ou grupos públicos, caso contenha informações confidenciais. 
3.3.3.2.4 A utilização de serviço para armazenamento/compartilhamento de informações em nuvem pública é 
disciplinada pelo [MN, TE227]. 
3.3.3.2.5 Os meios eletrônicos de armazenamento de informação confidencial ou sigilosa, inclusive os dispositivos 
móveis, devem utilizar codificação ou qualquer outro meio que proteja sua integridade e confidencialidade.  
3.3.3.2.6 O uso de dispositivos móveis de armazenamento externo e compartilhamento de arquivos na CAIXA é 
disciplinado pelo [MN, TE226]. 
3.3.3.2.7 Os agentes responsáveis pela guarda ou custódia de documento controlado o transmitirá a seus substitutos, 
devidamente conferido, quando da passagem ou transferência de responsabilidade, em consonância com o disposto 
no [MN, AD226]. 
3.3.3.3  
CONTROLE DA INFORMAÇÃO 
3.3.3.3.1  
SISTEMAS DE INFORMAÇÃO E CANAIS DE COMUNICAÇÃO 
3.3.3.3.1.1 No tratamento da informação confidencial ou sigilosa deverão ser utilizados sistemas de informação, 
soluções tecnológicas e canais de comunicação seguros que atendam aos padrões mínimos de qualidade e segurança 
definidos pela CAIXA: 
a) Os sistemas devem estar atualizados e possuir classificação da informação com controle de acesso compatível; 
b) Deverão ser definidos níveis distintos de controle de acesso de acordo com os perfis previstos, por exemplo: 
administrador, consulta e manutenção; 
c) Deverão ser utilizados recursos de codificação adequados de acordo com a classificação de suas informações; 
d) A transmissão de informação confidencial ou sigilosa por meio de sistemas de informação deverá ser realizada, 
por meio de canal seguro a ser definido pelas áreas de TI, como forma de reduzir o risco de incidente de 
segurança;  
e) A autenticidade da identidade do usuário deverá ser garantida por solução tecnológica adequada, a ser definida 
pelas áreas de TI; 
f) Os sistemas com  informação confidencial deverão manter controle e registro dos acessos autorizados e não-
autorizados e das transações realizadas; 
3.3.3.3.1.2 Toda informação obtida de telas de sistemas, reuniões, slides de apresentação e outros, por meio de 
dispositivo ou ferramenta de captura, fotografia, filmagem ou gravação observará a classificação atribuída pelo gestor 
daquela  informação, sendo vedado o compartilhamento com público diverso do previsto para a respectiva 
classificação. 
3.3.3.3.1.2.1 O conteúdo, seja imagem, áudio ou vídeo, somente poderá ser compartilhado com público diverso se 
for autorizado formalmente pelo gestor da informação.



## Página 11

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
11 / 14 
 
3.3.3.3.2  
ÁREAS, INSTALAÇÕES E MATERIAIS 
3.3.3.3.2.1 As áreas e instalações que contenham documento com informação confidencial ou sigilosa, ou que, por 
sua utilização ou finalidade, demandarem proteção, terão seu acesso restrito às pessoas autorizadas. 
3.3.3.3.2.2 Devem ser adotadas medidas para definição, demarcação, sinalização, segurança e autorização de 
acesso às áreas restritas. 
3.3.3.3.2.2.1 As visitas às áreas ou instalações de acesso restrito serão disciplinadas pela unidade gestora do 
respectivo ambiente. 
3.3.3.3.2.3 Os materiais que, por sua utilização ou finalidade, demandarem proteção, terão acesso restrito às pessoas 
autorizadas. 
3.3.3.3.2.4 São considerados materiais de acesso restrito qualquer matéria, produto, substância ou sistema que 
contenha, utilize ou veicule conhecimento ou informação confidencial ou sigilosa, informação econômica ou 
informação científico-tecnológica cuja divulgação implique dano ou risco aos interesses da CAIXA, da sociedade e 
do Estado. 
3.3.4  
USO E DISSEMINAÇÃO 
3.3.4.1 Refere-se à utilização, acesso, reprodução, transporte, transmissão e distribuição da informação.  
3.3.4.2 O material de acesso restrito poderá ser transportado por empresas contratadas, adotadas as medidas 
necessárias à manutenção do sigilo das informações. 
3.3.4.3 As medidas necessárias para a segurança do material transportado serão prévia e explicitamente 
estabelecidas em contrato. 
3.3.4.4 O meio de transporte utilizado para deslocamento de material de acesso restrito é de responsabilidade do 
custodiante e deverá considerar o grau de sigilo das informações. 
3.3.4.5  
TRAMITAÇÃO 
3.3.4.5.1 O trânsito interno e externo de informação sigilosa, em qualquer suporte – papel, microforma, meio 
magnético, óptico ou eletrônico, é responsabilidade do gestor da informação que autorizou a expedição. 
3.3.4.5.2 É obrigatória a identificação da classificação de sigilo no documento, conforme item [MN, 3.2.6.2]. 
3.3.4.6  
FORNECIMENTO E ENVIO DE INFORMAÇÃO CONFIDENCIAL PARA ÓRGÃOS E ENTIDADES 
EXTERNAS  
3.3.4.6.1 Os documentos e normas da CAIXA são disponibilizados na forma impressa ou, preferencialmente, em 
formato eletrônico. 
3.3.4.6.1.1 Quando na forma impressa deverão ser incluídas tarjas que indiquem a restrição quanto à autorização de 
uso pelo destinatário e os procedimentos de descarte, como exemplificado abaixo: 
▪ “AS INFORMAÇÕES CONTIDAS NESTE DOCUMENTO TÊM SIGILO PREVISTO NA ... (inserir legislação nº/ano – 
Lei XXX/20XX, IN XXX/20XX, etc.) E SÃO DE USO EXCLUSIVO DO(A)...” (inserir o nome da entidade externa que 
solicitou o(a) documento/norma); 
▪ “O DESCARTE DESSE DOCUMENTO DEVE SER EFETUADO POR FRAGMENTAÇÃO OU DEVOLUÇÃO AO 
REMETENTE SEGUINDO REGRAS DO DECRETO Nº 7.845/2012” (para informações impressas). 
3.3.4.6.1.1.1 A tarja deve ser inserida em Nota de Rodapé e, no caso de Manual Normativo CAIXA, posicionada acima 
da data de vigência. 
3.3.4.6.1.1.2 Compete ao gestor da informação sigilosa definir a legislação aplicável que será inserida na tarja e, 
para auxílio, consta no anexo “Principais Hipóteses de Sigilo e Embasamento Legal” quadro contendo as principais 
hipóteses de sigilo e embasamentos legais.  
3.3.4.6.1.2 É permitida a disponibilização por meio eletrônico, independente do grau de sigilo, diretamente em 
repositório do requerente ou em repositório definido pela CAIXA para compartilhamento de informações confidenciais, 
em atendimento às solicitações formalizadas pelo poder judiciário ou por órgãos de regulação, fiscalização, 
supervisão e de controle, bem como por auditoria independente contratada pela CAIXA, não sendo necessária a 
aposição de tarja nos documentos. 
3.3.4.6.1.3  Quando fornecida por meio de correio eletrônico a seguinte tarja de confidencialidade será 
automaticamente adicionada ao corpo da mensagem, dispensando a necessidade de adicionar tarja aos arquivos 
anexados à mensagem:   
▪ INFORMAÇÃO CONFIDENCIAL: Esta mensagem, incluindo anexos, contém informações confidenciais. O uso, 
divulgação, distribuição e/ou cópia não autorizados são estritamente proibidos e sujeitos às penalidades legais



## Página 12

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
12 / 14 
 
cabíveis. Caso esta mensagem tenha sido encaminhada indevidamente para você ou se houver necessidade de 
esclarecimento adicional, favor contatar o remetente. 
3.3.4.6.1.4 O envio de correio eletrônico com informações confidenciais a entidades externas somente será possível 
se selecionadas as opções de classificação #EXTERNO.CONFIDENCIAL ou #EXTERNO.RESTRITO. 
3.3.4.6.1.4.1  A 
classificação 
#EXTERNO.CONFIDENCIAL 
é 
utilizada 
na 
produção 
e 
envio 
de 
orientações/esclarecimentos a público externo, por usuários autorizados ou qualquer unidade da CAIXA, desde que 
não contenha informações já classificadas previamente pelo gestor como internas, ou seja, restritas ao público 
interno, ou arquivo anexado assim classificado. 
3.3.4.6.1.4.2 A classificação #EXTERNO.RESTRITO é utilizada na necessidade de remeter informações e/ou arquivos 
anexados, com previsão de acesso limitado ao público interno, conforme classificação atribuída pelo gestor, a órgãos 
e entidades externas específicas, para atendimento mandatório e/ou para desenvolvimento de atividade 
imprescindível.  
3.3.4.6.1.4.2.1 Neste caso, prezando a integridade das informações, estas devem preservar a classificação original 
atribuída pelo gestor, além da classificação #EXTERNO.RESTRITO, a ser conferida pela unidade CAIXA responsável 
pelo atendimento/envio das informações, razão pela qual o procedimento não é considerado reclassificação da 
informação. 
3.3.4.6.1.4.2.2 As unidades previamente autorizadas a enviar mensagens como #EXTERNO.RESTRITO são 
cadastradas no SIAAS - Sistema de Autenticação e Autorização de Sistemas, e estão listadas no quadro do anexo 
“Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO”, ficando a GERIT autorizada a promover ajustes 
necessários de inclusão/exclusão de unidade(s), adequando o referido anexo na próxima versão da norma a ser 
publicada.  
3.3.4.6.1.4.2.3 Os empregados detentores de função gerencial nas unidades listadas no do anexo “Unidades 
Autorizadas a Classificar como #EXTERNO.RESTRITO” possuem, automaticamente, o perfil para envio de informação 
como #EXTERNO.RESTRITO, podendo, por meio de solicitação no endereço https://acessologico.caixa/ , conceder 
acesso aos empregados de sua unidade: 
▪ GESTOR - Acessa https://acessologico.caixa/, seleciona a opção “Solicitar acesso”, seleciona a opção “Para 
outros”, insere a matrícula do usuário que deseja conceder acesso, em pesquisar acesso buscar a palavra “SICLA” 
e seleciona o perfil “SICLA_EXTERNO_RESTRITO_SD”, clica nas opções “Seguinte” e após em “Enviar”;  
▪ USUÁRIO SEM FUNÇÃO GERENCIAL - Acessa https://acessologico.caixa/, seleciona a opção “Solicitar ou 
Remover Acesso”, “Adicionar Acesso”, em Pesquisar acesso busca a palavra “SICLA” e seleciona o perfil 
“SICLA_EXTERNO_RESTRITO_SD”, clica nas opções “Seguinte” e após em “Enviar”, será necessário selecionar o 
Gestor de Acesso Lógico para aprovação, clica em “Preencher formulário” e seleciona o gestor, que receberá um 
e-mail e poderá autorizar ou não o acesso pretendido, e após clica em Prosseguir; 
3.3.4.6.1.4.3 O 
emissor 
de 
mensagem 
eletrônica 
classificada 
como 
#EXTERNO.CONFIDENCIAL 
ou 
#EXTERNO.RESTRITO é responsável pela adequação do conteúdo sigiloso, bem como pela sua correta 
classificação. 
3.3.4.6.2  
TRANSPORTE E TRANSMISSÃO DE INFORMAÇÃO  
3.3.4.6.2.1 A informação a ser entregue via Correios segue orientação contida no [MN, AD213]. 
3.3.4.6.2.2 A mensagem eletrônica encaminhada para entidade externa, que contenha informação confidencial no 
corpo do texto e/ou em documento anexo, deverá seguir as orientações do item [MN, 3.3.4.6]. 
3.3.4.6.2.3 O transporte e a distribuição física de documentação e demais informações impressas entre as unidades 
CAIXA, ou entre a CAIXA e terceiros por meio de malote observa as orientações do [MN, AD007]. 
3.3.4.7  
REPRODUÇÃO  
3.3.4.7.1 É autorizada de forma expressa pelo gestor da informação ou pela autoridade hierarquicamente superior, 
com igual prerrogativa. 
3.3.4.7.2 A reprodução de informação confidencial ou sigilosa terá o mesmo grau de sigilo do documento de origem. 
3.3.4.7.3 Pode ser realizada por: 
▪ qualquer usuário autorizado, se #INTERNO.TODOS; 
▪ empregado CAIXA, se #INTERNO.CAIXA; 
▪ pelo gestor da informação e pelo grupo específico ao qual se destina, se #INTERNO.CONFIDENCIAL, 
#EXTERNO.CONFIDENCIAL ou #EXTERNO.RESTRITO;  
3.3.4.7.4 Nas reproduções em papel, as cópias serão autenticadas pelo gestor da informação ou autoridade 
hierarquicamente superior com igual prerrogativa.



## Página 13

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
13 / 14 
 
3.3.4.7.5 Caso a preparação, impressão ou reprodução for efetuada em tipografia, impressora, oficina gráfica ou 
similar, essa operação é acompanhada por pessoa oficialmente designada, responsável pela garantia do sigilo 
durante a confecção do documento. 
3.3.5  
DESTINAÇÃO 
3.3.5.1 Refere-se ao estágio final do ciclo de vida da informação, e compreende a avaliação e destinação final. 
3.3.5.2 As medidas referentes à destinação das informações produzidas ou custodiadas pela CAIXA devem ser 
precedidas de avaliação, observando as orientações do [MN, AD226] correlatas aos prazos de guarda de cada tipo 
de documento.   
3.3.5.2.1 Quanto à confidencialidade, a classificação da informação contida em documentos deve ser informada no 
Quadro de Arquivamento do respectivo documento. 
3.3.5.3 A destinação final poderá ser a eliminação, quando o documento não apresentar valor secundário (probatório 
ou informativo), ou a guarda permanente, quando as informações contidas no documento forem consideradas 
importantes para fins de prova, informação e pesquisa. 
3.3.5.3.1 Para os recursos tecnológicos passíveis de eliminação ou descarte, deve-se, antes do início desses 
processos,  garantir a impossibilidade de recuperação das informações confidenciais contidas nos dispositivos de 
armazenamento, sejam eles removíveis ou não.  
3.3.5.3.2 A eliminação de suportes de informações confidenciais deve ser realizada conforme abaixo: 
 
SUPORTE DE INFORMAÇÃO 
ELIMINAÇÃO 
MEIO ÓPTICO 
MICROFORMAS 
Conforme fluxo estabelecido no [MN, AD055] para documento. 
 
PAPEL 
Conforme fluxo estabelecido no [MN, AD055] para documento. 
Para informações produzidas com erros,  impressas ou recebidas em 
duplicidade 
deve 
ser 
efetuada 
a 
fragmentação 
das 
vias 
inservíveis/excedentes.   
MEIO MAGNÉTICO 
Conforme fluxo estabelecido no [MN, AD055] para documento. 
RECURSOS TECNOLÓGICOS  
Conforme [MN, TE042] e [MN, TE250] para o ambiente descentralizado. 
Conforme [MN, TE257] para o ambiente centralizado. 
3.3.5.4  
ENTREGA, ALIENAÇÃO OU DOAÇÃO DE RECURSOS TECNOLÓGICOS 
3.3.5.4.1 A entrega, alienação ou doação de recursos tecnológicos em desuso, inservíveis ou obsoletos seguem as 
definições contidas no [MN, AD090] e no [MN, AD068].  
4  
PROCEDIMENTOS 
4.1  
ASSINATURA DO TERMO DE CIÊNCIA DA PO007 
4.1.1 Dada a atualização anual da [MN, PO007], é imprescindível, ler e efetuar, anualmente, assinatura eletrônica do 
seu termo de ciência – Termo de Responsabilidade de Segurança e Informação, disponível no Portal IntegraMais – 
Guias de Acesso Rápido - Empregado – Termos e Aceites – Política de Segurança e Informação. 
4.1.1.1 Usuários sem acesso ao Portal IntegraMais (estagiários e aprendizes), efetuam assinatura e arquivamento, 
na unidade de lotação, de via impressa do [MN, MO19426] Termo de Responsabilidade de Segurança e Informação. 
4.1.1.1.1 Estagiários e aprendizes maiores de 16 anos e menores de 18 anos assinam o [MN, MO19426] Termo de 
Responsabilidade de Segurança e Informação, em conjunto com o responsável.   
4.1.1.2 Prestadores de serviço com acesso a sistemas ou informações internas da CAIXA, efetuam assinatura de via 
impressa do [MN, MO19607] Termo de Responsabilidade de Segurança da Informação – Exclusivo para Prestador de 
Serviço.  
4.2  
CLASSIFICAÇÃO DE ARQUIVOS ELETRÔNICOS E EXCLUSÃO DA CLASSIFICAÇÃO EXTINTA



## Página 14

#PUBLICO 
OR 016 055 
 
Vigência: 30/05/2025   
14 / 14 
 
4.2.1 Para não prejudicar a integridade de documentos assinados digitalmente (invalidar a assinatura e 
consequentemente o documento), a classificação e/ou exclusão de classificação extinta deve ser efetuada ANTES da 
assinatura digital do documento. 
4.2.2 O gestor da informação classifica os arquivos eletrônicos gerados ou recebidos que possuem as extensões 
dispostas no item [MN, 3.2.6.2.2]. 
4.2.3 Caso o arquivo eletrônico possua classificação extinta (p. ex.: #CONFIDENCIAL 05, #CONFIDENCIAL 10), que 
poderá impedir a classificação adequada do arquivo, exclui a classificação antiga e atribui a classificação adequada 
ao arquivo. 
4.3  
RECEPÇÃO DE INFORMAÇÃO RESERVADA, SECRETA OU ULTRASSECRETA  
4.3.1 Na recepção de informação classificada como RESERVADA, SECRETA OU ULTRASSECRETA, cabe à unidade:  
▪ verificar a integridade do meio de recebimento e registrar qualquer indício de violação ou de irregularidade, 
comunicando ao destinatário, que informará imediatamente ao remetente; 
▪ providenciar a impressão, o preenchimento e a assinatura do Termo de Compromisso de Manutenção de Sigilo – 
TCMS, conforme modelo do anexo “Modelo Termo de Compromisso de Manutenção de Sigilo – TCMS”, pelo(s) 
empregado(s) designado(s) a acessar a informação, conforme previsto no Parágrafo único da Art. 18 do Decreto 
7.845, de 14 de novembro de 2012; 
▪ restringir o acesso à informação recebida apenas ao(s) empregado(s) que assinarem o Termo de Compromisso de 
Manutenção de Sigilo – TCMS. Cada informação classificada recebida demandará o preenchido de um novo TCMS; 
▪ informar ao remetente o recebimento da informação, no menor prazo possível; 
▪ registrar o recebimento da informação, enviando cópia do TCMS, Anexo III, à caixa postal da GERIT, devidamente 
preenchido e assinado pelo empregado designado a acessar a informação, informando remetente (órgão/entidade), 
data do recebimento e destinatário.  
▪ arquivar o TCMS junto à informação classificada recebida na unidade em condições especiais de segurança, 
observando as regras para arquivamento seguro do item [MN, 3.3.3.2]. 
5  
ANEXOS 
5.1 ANEXO I – Guia Rápido – Tratamento da Informação [MN, OR016] – cita os manuais normativos [MN, OR003] e 
[MN, OR007]. 
5.2 ANEXO II – Principais Hipóteses de Sigilo e Embasamento Legal. 
5.3 ANEXO III – Modelo Termo de Compromisso de Manutenção de Sigilo – TCMS. 
5.4 ANEXO IV – Check List para Classificar a Informação CAIXA. 
5.5 ANEXO V – Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO. 
5.6 ANEXO VI – Tabela de Equivalência - Classificação Extinta X Classificação Vigente. 
5.7 ANEXO VII - Modelo e Informações Necessárias para a Criação de Termos e Aceites.


---

# Anexos extraídos do PDF

Abaixo estão os anexos embutidos extraídos do PDF original. Para anexos em PDF, as páginas também foram renderizadas em PNG para preservar fluxos, telas e diagramas.


## Anexo 1 - Anexo I - Guia Rápido - Tratamento da Informação.pdf

- Arquivo original extraído: [Anexo I - Guia Rapido - Tratamento da Informacao.pdf](anexos_originais/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao.pdf)
- Tamanho: 136.831 bytes
- Markdown do anexo: [Anexo I - Guia Rapido - Tratamento da Informacao.md](markdown_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo I - Guia Rapido - Tratamento da Informacao/`

![Anexo I - Guia Rapido - Tratamento da Informacao - page-01](imagens_renderizadas_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao/page-01.png)

![Anexo I - Guia Rapido - Tratamento da Informacao - page-02](imagens_renderizadas_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao/page-02.png)

![Anexo I - Guia Rapido - Tratamento da Informacao - page-03](imagens_renderizadas_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao/page-03.png)

![Anexo I - Guia Rapido - Tratamento da Informacao - page-04](imagens_renderizadas_anexos/Anexo%20I%20-%20Guia%20Rapido%20-%20Tratamento%20da%20Informacao/page-04.png)

## Anexo 2 - Anexo II - Principais Hipóteses de Sigilo e Embasamento Legal.pdf

- Arquivo original extraído: [Anexo II - Principais Hipoteses de Sigilo e Embasamento Legal.pdf](anexos_originais/Anexo%20II%20-%20Principais%20Hipoteses%20de%20Sigilo%20e%20Embasamento%20Legal.pdf)
- Tamanho: 126.981 bytes
- Markdown do anexo: [Anexo II - Principais Hipoteses de Sigilo e Embasamento Legal.md](markdown_anexos/Anexo%20II%20-%20Principais%20Hipoteses%20de%20Sigilo%20e%20Embasamento%20Legal.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo II - Principais Hipoteses de Sigilo e Embasamento Legal/`

![Anexo II - Principais Hipoteses de Sigilo e Embasamento Legal - page-01](imagens_renderizadas_anexos/Anexo%20II%20-%20Principais%20Hipoteses%20de%20Sigilo%20e%20Embasamento%20Legal/page-01.png)

## Anexo 3 - Anexo III - Modelo Termo de Compromisso de Manutenção de Sigilo – TCMS.pdf

- Arquivo original extraído: [Anexo III - Modelo Termo de Compromisso de Manutencao de Sigilo - TCMS.pdf](anexos_originais/Anexo%20III%20-%20Modelo%20Termo%20de%20Compromisso%20de%20Manutencao%20de%20Sigilo%20-%20TCMS.pdf)
- Tamanho: 106.898 bytes
- Markdown do anexo: [Anexo III - Modelo Termo de Compromisso de Manutencao de Sigilo - TCMS.md](markdown_anexos/Anexo%20III%20-%20Modelo%20Termo%20de%20Compromisso%20de%20Manutencao%20de%20Sigilo%20-%20TCMS.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo III - Modelo Termo de Compromisso de Manutencao de Sigilo - TCMS/`

![Anexo III - Modelo Termo de Compromisso de Manutencao de Sigilo - TCMS - page-01](imagens_renderizadas_anexos/Anexo%20III%20-%20Modelo%20Termo%20de%20Compromisso%20de%20Manutencao%20de%20Sigilo%20-%20TCMS/page-01.png)

## Anexo 4 - Anexo IV - Check List para Classificar a Informação CAIXA.pdf

- Arquivo original extraído: [Anexo IV - Check List para Classificar a Informacao CAIXA.pdf](anexos_originais/Anexo%20IV%20-%20Check%20List%20para%20Classificar%20a%20Informacao%20CAIXA.pdf)
- Tamanho: 108.738 bytes
- Markdown do anexo: [Anexo IV - Check List para Classificar a Informacao CAIXA.md](markdown_anexos/Anexo%20IV%20-%20Check%20List%20para%20Classificar%20a%20Informacao%20CAIXA.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo IV - Check List para Classificar a Informacao CAIXA/`

![Anexo IV - Check List para Classificar a Informacao CAIXA - page-01](imagens_renderizadas_anexos/Anexo%20IV%20-%20Check%20List%20para%20Classificar%20a%20Informacao%20CAIXA/page-01.png)

## Anexo 5 - Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO.pdf

- Arquivo original extraído: [Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO.pdf](anexos_originais/Anexo%20V%20-%20Unidades%20Autorizadas%20a%20Classificar%20como%20#EXTERNO.RESTRITO.pdf)
- Tamanho: 104.296 bytes
- Markdown do anexo: [Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO.md](markdown_anexos/Anexo%20V%20-%20Unidades%20Autorizadas%20a%20Classificar%20como%20#EXTERNO.RESTRITO.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO/`

![Anexo V - Unidades Autorizadas a Classificar como #EXTERNO.RESTRITO - page-01](imagens_renderizadas_anexos/Anexo%20V%20-%20Unidades%20Autorizadas%20a%20Classificar%20como%20#EXTERNO.RESTRITO/page-01.png)

## Anexo 6 - Anexo VI - Tabela de Equivalência - Classificação Extinta X Classificação Vigente.pdf

- Arquivo original extraído: [Anexo VI - Tabela de Equivalencia - Classificacao Extinta X Classificacao Vigente.pdf](anexos_originais/Anexo%20VI%20-%20Tabela%20de%20Equivalencia%20-%20Classificacao%20Extinta%20X%20Classificacao%20Vigente.pdf)
- Tamanho: 86.016 bytes
- Markdown do anexo: [Anexo VI - Tabela de Equivalencia - Classificacao Extinta X Classificacao Vigente.md](markdown_anexos/Anexo%20VI%20-%20Tabela%20de%20Equivalencia%20-%20Classificacao%20Extinta%20X%20Classificacao%20Vigente.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo VI - Tabela de Equivalencia - Classificacao Extinta X Classificacao Vigente/`

![Anexo VI - Tabela de Equivalencia - Classificacao Extinta X Classificacao Vigente - page-01](imagens_renderizadas_anexos/Anexo%20VI%20-%20Tabela%20de%20Equivalencia%20-%20Classificacao%20Extinta%20X%20Classificacao%20Vigente/page-01.png)

## Anexo 7 - Anexo VII - Modelo e Informações Necessárias para a Criação de Termos e Aceites.pdf

- Arquivo original extraído: [Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites.pdf](anexos_originais/Anexo%20VII%20-%20Modelo%20e%20Informacoes%20Necessarias%20para%20a%20Criacao%20de%20Termos%20e%20Aceites.pdf)
- Tamanho: 138.597 bytes
- Markdown do anexo: [Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites.md](markdown_anexos/Anexo%20VII%20-%20Modelo%20e%20Informacoes%20Necessarias%20para%20a%20Criacao%20de%20Termos%20e%20Aceites.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites/`

![Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites - page-01](imagens_renderizadas_anexos/Anexo%20VII%20-%20Modelo%20e%20Informacoes%20Necessarias%20para%20a%20Criacao%20de%20Termos%20e%20Aceites/page-01.png)

![Anexo VII - Modelo e Informacoes Necessarias para a Criacao de Termos e Aceites - page-02](imagens_renderizadas_anexos/Anexo%20VII%20-%20Modelo%20e%20Informacoes%20Necessarias%20para%20a%20Criacao%20de%20Termos%20e%20Aceites/page-02.png)


----


*FIM "OR016.md"*


*INICIO "OR213.md"*


----


# OR213 - documento principal

**Arquivo de origem:** `OR213.pdf`

**Total de páginas:** 6

---


## Página 1

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
1 / 6 
 
DIRETRIZES DE GOVERNANÇA DE SOLUÇÕES DEPARTAMENTAIS 
SUMÁRIO DA NORMA 
 
1 
FINALIDADE,3 
2 
DEFINIÇÕES,3 
3 
REGRAS,3 
3.1 
DIRETRIZES,3 
3.2 
IMPLEMENTAÇÃO DE CONTROLES PARA MITIGAÇÃO DE RISCOS,4 
3.3 
TRATAMENTO DEFINITIVO DAS SOLUÇÕES DEPARTAMENTAIS,4 
3.3.1 
SOLUÇÕES DEPARTAMENTAIS LEGADAS,4 
3.3.2 
NOVAS SOLUÇÕES DEPARTAMENTAIS,4 
3.4 
RESPONSABILIDADES,5 
3.4.1 
ÁREA DE RISCO,5 
3.4.2 
TECNOLOGIA,5 
3.4.3 
GESTORES DE SOLUÇÕES DEPARTAMENTAIS,5 
3.4.4 
UNIDADE DE DESENVOLVIMENTO DEPARTAMENTAL,5 
4 
PROCEDIMENTOS,6 
4.1 
MAPEAMENTO E AVALIAÇÃO DE NECESSIDADE DE SOLUÇÃO DEPARTAMENTAL,6 
4.2 
EVIDENCIAÇÃO DE IMPLANTAÇÃO DE CONTROLE,6 
4.3 
TRATAMENTO DEFINITIVO DE SOLUÇÃO DEPARTAMENTAL,6 
5 
ANEXOS,6



## Página 2

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
2 / 6 
 
PREFÁCIO 
TÍTULO 
DIRETRIZES DE GOVERNANÇA DE SOLUÇÕES DEPARTAMENTAIS 
UNIDADE RESPONSÁVEL 
GEETI – GN ESTRATEGIA E GOVERNANCA DE TI 
 
PÚBLICO ALVO 
Todas as unidades da CAIXA 
ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR 
Exclusão da GERIT como unidade corresponsável pela norma.  
Inclusão de diretrizes, responsabilidades e revisão dos caminhos de tratamento corporativo. 
RELAÇÃO COM OUTROS NORMATIVOS 
AD020 CONTRATAÇÃO DE BENS E SERVIÇOS 
CR400 INSTRUMENTOS E FERRAMENTAS PARA ATUAÇÃO DE 1ª E 2ª LINHAS 
CR541 PROGRAMA DE GOVERNANÇA EM PRIVACIDADE 
PO007 POLÍTICA DE SEGURANÇA E INFORMAÇÃO 
TE111 PADRÕES ARQUITETURAIS CAIXA 
TE160 MIGRAÇÃO DE SISTEMAS DEPARTAMENTAIS PARA A TI 
TE165 PLANEJAMENTO DA CONTRATAÇÃO DE BENS E SERVIÇOS DE TI 
TE177 DIRETRIZES PARA O DESENVOLVIMENTO DE APLICATIVOS 
TE183 AQUISIÇÃO E IMPLANTAÇÃO DE APLICATIVOS DE NEGÓCIOS 
TE228 GOVERNANÇA DE ATENDIMENTO DA TI 
 
PRODUTOS RELACIONADOS 
Não se aplica 
PROCESSOS RELACIONADOS 
Não se aplica 
REGULAMENTAÇÃO UTILIZADA 
Não se aplica 
DOCUMENTAÇÃO UTILIZADA 
Resolução do Comitê Delegado de Vice-Presidentes de Tecnologia da Informação e Digital n° 002/2023 
ROTEIRO PADRÃO 
37551 
NORMATIVOS REVOGADOS 
Não se aplica 
ATENDIMENTO DE DÚVIDAS 
GEETI – GN ESTRATEGIA E GOVERNANCA DE TI



## Página 3

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
3 / 6 
 
DIRETRIZES DE GOVERNANÇA DE SOLUÇÕES DEPARTAMENTAIS 
1  
FINALIDADE 
1.1 Estabelecer diretrizes de governança das soluções departamentais. 
2  
DEFINIÇÕES 
2.1 Disponível em http://dados.caixa/portal/glossario?norma=OR213. 
3  
REGRAS 
3.1  
DIRETRIZES 
3.1.1 Fica autorizado o desenvolvimento e/ou manutenção de soluções departamentais pelas unidades negociais e/ou 
funcionais, desde que atendidas as diretrizes corporativas e implantados os controles definidos para mitigação dos 
riscos associados. 
3.1.2 As soluções departamentais, existentes ou que se pretenda desenvolver, são avaliadas sendo classificadas nos 
níveis de criticidade: BAIXA, MÉDIA, ALTA e EXTREMA. 
3.1.3 A avaliação de criticidade contempla no mínimo as seguintes dimensões: 
3.1.3.1 Abrangência de uso 
▪ Unidades internas usuárias do sistema; 
▪ Entidades externas usuárias do sistema. 
3.1.3.2 Criticidade da Informação armazenada/trafegada 
▪ Transações financeiras; 
▪ Informação sensível quanto ao sigilo bancário. 
3.1.3.3 Criticidade de Negócio 
▪ Criticidade dos Processos suportados pela solução; 
▪ Impacto dos processos sustentados pela solução na estratégia empresarial; 
▪ Processamento/Armazenamento de dados pessoais (LGPD) e/ou estratégicos. 
3.1.3.4 Criticidade Técnica 
▪ Fornecimento de informações para sistemas corporativos. 
3.1.4 As soluções departamentais desenvolvidas por unidades negociais e/ou funcionais devem seguir as orientações 
e regras definidas pela Área de Tecnologia. 
3.1.4.1 Considerando a estratégia corporativa, tanto para novas soluções departamentais, quanto para existentes, 
deverão ser implementadas conforme arquitetura de referência constante na página Arquitetura TI e regras do [MN, 
TE111]. 
3.1.5 As contratações de ferramentas de mercado e fábricas de software são realizadas pela Área de Tecnologia, que 
realizará conforme disposto no [MN, AD020] e processo definido na [MN, TE165]. 
3.1.6 As unidades gestoras de soluções departamentais devem assegurar que seus empregados, envolvidos no 
desenvolvimento e/ou na manutenção dessas soluções, realizem treinamento e capacitação nas tecnologias definidas 
nas arquiteturas de referência estabelecidas pela Área de Tecnologia, e participem de ações de conscientização e 
treinamento sobre LGPD, segurança da informação e segurança cibernética. 
3.1.7 Os riscos relativos ao desenvolvimento/manutenção de soluções pelas unidades negociais/funcionais são de 
responsabilidade da unidade gestora da solução. 
3.1.8 Soluções não mapeadas ou inativas estarão sujeitas a recolhimento da infraestrutura alocada. 
3.1.9 Podem ser Unidade Gestora da Solução Departamental as unidades com nível hierárquico igual ou superior a 
Gerência Nacional. 
3.1.10 Podem ser Unidade de Desenvolvimento Departamental unidades de qualquer nível hierárquico.  
3.1.11 Para as situações em que a execução do tratamento definitivo e/ou a implementação dos controles mínimos 
não encontrem o devido comprometimento das unidades responsáveis, a Área de Tecnologia poderá indicar 
fragilidade à Área de Risco para elaboração de planos de ação de 1ª conforme regras e fluxos definidos no [MN, 
CR400].



## Página 4

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
4 / 6 
 
 
 
3.2  
IMPLEMENTAÇÃO DE CONTROLES PARA MITIGAÇÃO DE RISCOS 
3.2.1 Como tratamento inicial, todas as soluções departamentais, independente da sua criticidade, devem realizar a 
implementação de controles como forma de mitigação de riscos. 
3.2.2 A lista dos controles e aplicação para cada tipo de solução, assim como sua descrição, riscos mitigados, e 
unidades especialistas nas respectivas temáticas constam no portal http://departamentais.caixa. 
3.2.3 Os controles propostos são adequados às necessidades do modelo de negócio da CAIXA, complexidade, 
padrões e melhores práticas. 
3.2.4 Os controles implementados são analisados quanto a sua efetividade para cada solução departamental, 
podendo ser inseridos ou substituídos por outros controles que não os listados, visando o melhor resultado na 
mitigação dos riscos. 
3.3  
TRATAMENTO DEFINITIVO DAS SOLUÇÕES DEPARTAMENTAIS 
3.3.1  
SOLUÇÕES DEPARTAMENTAIS LEGADAS 
3.3.1.1 Para as soluções departamentais legadas, o tratamento definitivo é dado da seguinte forma: 
3.3.1.1.1 Aquelas cujo nível de criticidade seja BAIXA ou MÉDIA, o tratamento definitivo é realizado através da 
utilização de ferramentas conforme arquitetura de referência, constante na página Arquitetura TI e regras do [MN, 
TE111] e pleno atendimento dos controles mínimos estabelecidos.  
3.3.1.1.2 Aquelas cujo nível de criticidade seja ALTA ou EXTREMA, o tratamento definitivo é realizado, com avaliação 
de custos e dimensionamento de recursos, utilizando os seguintes caminhos: 
▪ Alteração das características da solução para redução do nível de criticidade para BAIXA ou MÉDIA e/ou;  
▪ Incorporação da necessidade atendida pela solução departamental em solução corporativa já existente, conforme 
regras e fluxos definidos nos [MN, TE228] e [MN, TE177] e/ou; 
▪ Desenvolvimento de nova solução corporativa, conforme regras e fluxos definidos nos [MN, TE228] e [MN, TE177] 
e/ou; 
▪ Aquisição de solução de mercado, conforme regras e fluxos definidos nos [MN, TE228], [MN, TE165] e [MN, TE183] 
e/ou; 
▪ Internalização para TI com adequação aos padrões corporativos da TI, conforme regras e fluxos definidos no [MN, 
TE160] e/ou; 
▪ Descontinuidade da solução. 
3.3.1.1.3 Cabe a Área de Tecnologia, em conjunto com a Unidade Gestora da solução departamental, a definição do 
melhor caminho de tratamento definitivo para as soluções de ALTA ou EXTREMA criticidades. 
3.3.1.1.4 A priorização na definição e da execução do melhor caminho para tratamento, é realizada conforme os 
seguintes critérios: 
▪ Pontuação de criticidade; 
▪ Agrupamento de soluções com características similares. 
3.3.1.1.5 Todas as soluções departamentais legadas de nível de criticidade ALTA ou EXTREMA implementarão os 
respectivos controles, disponíveis no portal http://departamentais.caixa, até que sejam implementados os tratamentos 
definitivos. 
3.3.2  
NOVAS SOLUÇÕES DEPARTAMENTAIS 
3.3.2.1 Novas necessidades de soluções departamentais serão avaliadas previamente ao seu desenvolvimento, 
podendo ser classificadas nos seguintes níveis de criticidade: BAIXA, MÉDIA, ALTA ou EXTREMA. 
3.3.2.2 As necessidades avaliadas com nível de criticidade BAIXA ou MÉDIA estão aptas a solicitar recursos para 
desenvolvimento departamental da solução que atenderá, exclusivamente, a necessidade avaliada, condicionada à 
autorização expressa da Unidade Gestora da Solução Departamental. 
3.3.2.3 Para aquelas necessidades avaliadas com nível de criticidade ALTA ou EXTREMA, deverá seguir ao menos 
um dos caminhos corporativos abaixo:



## Página 5

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
5 / 6 
 
▪ Incorporação da necessidade avaliada em solução corporativa já existente, conforme regras e fluxos definidos nos 
[MN, TE228] e [MN, TE177] e/ou; 
▪ Desenvolvimento de nova solução corporativa, conforme regras e fluxos definidos nos [MN, TE228] e [MN, TE177] 
e/ou; 
▪ Aquisição de solução de mercado, conforme regras e fluxos definidos nos [MN, TE228], [MN, TE165] e [MN, TE183]. 
3.4  
RESPONSABILIDADES 
3.4.1  
ÁREA DE RISCO 
3.4.1.1 Elaborar e manter, juntamente com a área de TI, a matriz de avaliação de criticidade das soluções 
departamentais, novas e legadas. 
3.4.1.2 Adotar mecanismos para monitorar a adoção de controles nas soluções departamentais. 
3.4.2  
TECNOLOGIA 
3.4.2.1 Apoiar, tecnicamente, as unidades gestoras de soluções departamentais na implementação dos controles e 
quanto a utilização dos referenciais técnicos. 
3.4.2.2 Definir, em conjunto com as unidades gestoras, o caminho para tratamento definitivo das soluções 
departamentais de nível de criticidade ALTA ou EXTREMA. 
3.4.2.3 Atuar na execução, junto aos gestores de soluções departamentais, do caminho para tratamento definitivo 
das soluções departamentais de nível de criticidade ALTA ou EXTREMA. 
3.4.2.4 Disponibilizar ambiente e ferramentas para desenvolvimento de soluções departamentais de nível de 
criticidade BAIXA ou MÉDIA, conforme capacidade existente. 
3.4.2.5 Desenvolver, atualizar e divulgar conteúdo sobre os referenciais técnicos para trilhas de capacitação 
relacionadas às ferramentas e arquitetura de referência para soluções departamentais. 
3.4.3  
GESTORES DE SOLUÇÕES DEPARTAMENTAIS 
3.4.3.1 Manter atualizadas as informações das soluções departamentais legadas e das novas soluções no Portfólio 
de Soluções Departamentais. 
3.4.3.2 Interagir com a área de TI para provimento da solução de acordo com as diretrizes estabelecidas. 
3.4.3.3 Atuar na execução, junto a TI, do caminho para tratamento definitivo das soluções departamentais de ALTA 
ou EXTREMA criticidades, sob sua responsabilidade.  
3.4.3.4 Atuar na adequação das soluções departamentais de nível de criticidade BAIXA ou MÉDIA, sob sua 
responsabilidade, para as ferramentas da arquitetura de referência, conforme arquitetura de referência constante na 
página Arquitetura TI e regras do [MN, TE111]. 
3.4.3.5 Realizar autorização e avaliação de criticidade de novas necessidades previamente ao desenvolvimento de 
nova solução departamental. 
3.4.3.6 Arquivar e manter sob sua guarda, para fins de auditoria, o resultado da avaliação de criticidade de todas as 
suas soluções departamentais. 
3.4.3.7 Atuar, em conjunto com a Unidade de Desenvolvimento Departamental, na adoção e evidenciação da 
implantação dos controles nas soluções. 
3.4.3.8 Observar diretrizes definidas na [MN, PO007] e regras do [MN, CR541]. 
3.4.4  
UNIDADE DE DESENVOLVIMENTO DEPARTAMENTAL 
3.4.4.1 Desenvolver e manter a solução departamental dentro da arquitetura de referência estabelecida pela área de 
tecnologia. 
3.4.4.2 Implementar e evidenciar os controles de mitigação de riscos para as soluções departamentais. 
3.4.4.3 Informar à Unidade Gestora da Solução departamental toda e qualquer atualização na solução, visando a 
atualização do Portfólio. 
3.4.4.4 Interagir com a área de tecnologia para obter suporte e aporte de recursos necessários para a solução 
departamental autorizada.



## Página 6

#INTERNO.CAIXA 
OR 213 003 
 
Vigência: 07/04/2025   
6 / 6 
 
 
4  
PROCEDIMENTOS 
4.1  
MAPEAMENTO E AVALIAÇÃO DE NECESSIDADE DE SOLUÇÃO DEPARTAMENTAL 
4.1.1 Preencha o formulário disponível no portal departamentais.caixa.  
4.2  
EVIDENCIAÇÃO DE IMPLANTAÇÃO DE CONTROLE 
4.2.1 Informa e evidencia a implantação dos controles, conforme fluxos e regras definidas no portal Controles 
mínimos.  
4.3  
TRATAMENTO DEFINITIVO DE SOLUÇÃO DEPARTAMENTAL 
4.3.1 Observe o fluxo de tratamento definitivo de solução departamental, conforme [MN, TE160].  
5  
ANEXOS 
5.1 ANEXO I - Guia Rápido – Avalição de Criticidade: Passo a passo para a execução operacional dos procedimentos 
do [MN, OR213].


---

# Anexos extraídos do PDF

Abaixo estão os anexos embutidos extraídos do PDF original. Para anexos em PDF, as páginas também foram renderizadas em PNG para preservar fluxos, telas e diagramas.


## Anexo 1 - ANEXO I_Guia rápido Avaliação de criticidade.pdf

- Arquivo original extraído: [ANEXO I_Guia rapido Avaliacao de criticidade.pdf](anexos_originais/ANEXO%20I_Guia%20rapido%20Avaliacao%20de%20criticidade.pdf)
- Tamanho: 47.975 bytes
- Markdown do anexo: [ANEXO I_Guia rapido Avaliacao de criticidade.md](markdown_anexos/ANEXO%20I_Guia%20rapido%20Avaliacao%20de%20criticidade.md)
- Imagens renderizadas: `imagens_renderizadas_anexos/ANEXO I_Guia rapido Avaliacao de criticidade/`

![ANEXO I_Guia rapido Avaliacao de criticidade - page-01](imagens_renderizadas_anexos/ANEXO%20I_Guia%20rapido%20Avaliacao%20de%20criticidade/page-01.png)


----


*FIM "OR213.md"*


*INICIO "OR005221.md"*


----


# OR005221

> Fonte: `OR005221.pdf`

> Páginas: 30


---

## Página 1

![Imagem página 1](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## ARQUITETURA DO CONGLOMERADO CAIXA

## SUMÁRIO DA NORMA

1

## FINALIDADE,7

2

## DEFINIÇÕES,7

3

## REGRAS,7

3.1

## ESTRUTURA ORGANIZACIONAL,7

3.2

## MANDATO,9

3.3

## ORGANOGRAMA,10

3.4

## TIPOLOGIA DE UNIDADES,11

3.4.1

## UNIDADES DE MATRIZ,12

3.4.2

## UNIDADES ÁGEIS,12

3.4.2.1

## MODELO DE ATUAÇÃO,13

3.4.3

## UNIDADES DE REDE,13

3.4.3.1

## UNIDADES DE REDE NEGOCIAL,13

3.4.3.2

## UNIDADES DE REDE EXECUTIVA,16

3.4.4

## UNIDADES DE NEGÓCIOS E UNIDADES FUNCIONAIS,16

3.4.4.1

## UNIDADES DE NEGÓCIOS,17

3.4.4.1.1

## ESTRATÉGIAS DE CLIENTES E DE CANAIS,17

3.4.4.1.2

## PROPOSIÇÃO DE MATÉRIAS DE CONTRATAÇÃO E RENEGOCIAÇÃO DE PRODUTOS,18

3.4.4.1.3

## FUNCIONAMENTO DAS UNIDADES DE NEGÓCIO,18

3.4.4.1.4

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE ESTRATÉGIA DE CLIENTES E CANAIS,19

3.4.4.1.5

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE PRODUTOS E SERVIÇOS,19

3.4.4.1.6

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE FÁBRICA DE PRODUTOS E SERVIÇOS,20

3.4.4.1.7

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE GESTÃO OPERACIONAL DOS CANAIS,20

3.4.4.1.8

## ATRIBUIÇÕES COMUNS DAS FÁBRICAS DE CANAIS,20

3.4.4.1.9

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE COMERCIALIZAÇÃO,21

3.4.4.1.10

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE OPERAÇÕES,21

3.4.4.2

## UNIDADES FUNCIONAIS,21

3.5

## MODELO DAS TRÊS LINHAS,22

3.6

## ATRIBUIÇÕES COMUNS DAS TRÊS LINHAS,23

3.6.1

1ª LINHA,23

3.6.2

## ATRIBUIÇÕES COMUNS A TODAS AS UNIDADES DA CAIXA,23

3.6.3

2ª LINHA,24

3.6.4

3ª LINHA,25

3.7

## CONGLOMERADO CAIXA E SEU AMBIENTE DE GESTÃO,25

3.8

## ENTIDADE PATROCINADA (FUNCEF),27

4

## PROCEDIMENTOS,27

4.1

## ALTERAÇÕES NA ESTRUTURA ORGANIZACIONAL,27

4.2

## ALTERAÇÃO NA ESTRUTURA ORGANIZACIONAL DA CAIXA,28

4.3

## ALTERAÇÃO NA ESTRUTURA ORGANIZACIONAL DAS CONTROLADAS,29

4.4

## CONSTITUIÇÃO DE UNIDADE ÁGIL,29

Vigência: 10/07/2026

1 / 30


---

## Página 2

![Imagem página 2](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

5

## ANEXOS,30

Vigência: 10/07/2026

2 / 30


---

## Página 3

![Imagem página 3](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## PREFÁCIO

## TÍTULO

## ARQUITETURA DO CONGLOMERADO CAIXA

## UNIDADE RESPONSÁVEL

## GEGOS – GN GOVERNANCA SOLUCOES ORGANIZACIONAIS

## PÚBLICO-ALVO

Todas as unidades

## ALTERAÇÕES EM RELAÇÃO À VERSÃO ANTERIOR

## NORMA PRINCIPAL

- Inclusões: sem inclusões.

- Alterações:

- Atualização do campo Relação com Outros Normativos para incluir as Políticas de Segurança e Informação

(PO007) e Negocial CAIXA (PO072), por aderência dos temas ao OR005.

- Alteração nos campos Regulamentação Utilizada e Documentação Utilizada decorrentes da revisão geral das

informações vis-à-vis o embasamento direto do conteúdo vigente do OR005, para mencionar, a partir desta

versão, apenas a última Regulamentação ou Documentação utilizada, sem prejuízo(s) ao modelo normativo

vigente; na presente versão, foram incluídas as Resoluções do Conselho de Administração da CAIXA (RCA) nº

1874, Ata nº 972, de 22/06/2026, e do Conselho Diretor nº 9530, Ata nº 3457, de 10/06/2026, assim como a

menção ao Parecer do Comitê Independente de Riscos e Capital nº 163, de 15/06/2026, sendo que toda essa

documentação é decorrente da reorganização envolvendo a segurança de informação/institucional aprovada

no âmbito das Vice-Presidências Tecnologia e Digital (VITEC) e de Riscos (VICOR).

- Exclusão:

- Item 3.4.2.1.2.2 – exclusão na íntegra do texto “O Modelo de Atuação é composto por Unidades Ágeis e,

inicialmente, por unidades da VIHAB, conforme disposto no Anexo IV - Modelo de Atuação - Em fase de

Transição”, pois o Anexo IV foi excluído na versão 219.

## ANEXO COM ALTERAÇÃO:

ANEXO II – Estrutura CAIXA

- Inclusões: sem inclusões.

- Alterações:

- Item 3.1.2 – alteração no organograma da PRESI por conta da migração da GN Cadastro de Clientes (GECAD),

da SUIND/DECCI/PRESI para SUPLD/DESEI/VICOR, em decorrência das alterações aprovadas pela RCA nº

1874, Ata nº 972, de 22/06/2026.

- Item 3.1.2.3.2 – alteração na finalidade da SN Governança e Inteligência de Dados (SUIND), de “Atuar na

estratégia, inteligência e governança e políticas de gestão de dados do Conglomerado CAIXA, bem como gerir

o cadastro de clientes, CRM e marketing digital” para “Atuar na estratégia, inteligência e governança e políticas

de gestão de dados do Conglomerado CAIXA, CRM e marketing digital”, em decorrência das alterações

aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.4.1.2.1 – exclusão da duplicidade do mandato da GN Sustentabilidade e RSA (GERSA) “Estruturação

das informações de sustentabilidade e Responsabilidade Social, Ambiental e Climática do Conglomerado

CAIXA”, vinculada à SUNES/DESUC/VISUC.

- Item 3.1.12 – alteração no organograma, finalidade e mandatos da VP Riscos (VICOR), em decorrência da

reorganização envolvendo a segurança de informação/institucional no âmbito da VITEC e da própria VICOR,

aprovada pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.1 – alteração na finalidade e mandatos da DE Controles Internos e Integridade (DECOI), vinculada

à VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

Vigência: 10/07/2026

3 / 30


---

## Página 4

![Imagem página 4](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Item 3.1.12.1.1 – alteração na finalidade e mandatos da GN Monitoração e Validação de Modelos (GEMOR),

vinculada à DECOI/VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de

22/06/2026.

- Item 3.1.12.1.2 – alteração na vinculação, finalidade e mandatos da GN Controle de Integridade (GECIN),

passando a ser vinculada diretamente à DECOI/VICOR, em decorrência das alterações aprovadas pela RCA

nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.1.3 – alteração na finalidade e mandatos da SN Controle Interno e Compliance (SUINC), vinculada

à DECOI/VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.1.3.1 – alteração no nome, sigla, finalidade e mandatos da GN Compliance e Controle Interno

CAIXA (GECCI) para GN Compliance (GECPL), mantendo a vinculação à SUINC/DECOI/VICOR, exceto os

mandatos relacionadas a controles internos os quais foram alterados e migrados para GN Controles Internos

e Linhas (GECIL), em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.1.3.2 – alteração na sigla, finalidade e mandatos da GN Monitoramento e Modelo das Três Linhas

(GEMON) para GN Controles Internos e Linhas (GECIL), absorvendo também os mandatos relacionados a

controles internos da antiga GN Compliance e Controle Interno CAIXA (GECCI), com a vinculação mantida à

SUINC/DECOI/VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.1.3.3 – alteração da finalidade e mandatos da GN Controle Interno Participações e Mercado de

Capitais (GESEM), vinculada à SUINC/DECOI/VICOR, em decorrência das alterações aprovadas pela RCA nº

1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.3.3.1 – alteração na finalidade e mandatos da GN Risco de Recuperação de Créditos e Garantias

(GERAG), vinculada à SURIC/DECOR/VICOR, de “disciplina a gestão de riscos associados às garantias,

incluindo desenvolvimento de modelos, metodologias, procedimentos, indicadores e políticas” para “disciplina

a gestão de riscos associados às garantias, incluindo desenvolvimento de modelos, metodologias,

procedimentos, indicadores e diretrizes”, em decorrência das alterações aprovadas pela Resolução do

Conselho de Administração da CAIXA (RCA) nº 1827, Ata nº 962, de 30/03/2026.

- Item 3.1.12.4 – inclusão da DE Segurança Institucional (DESEI), advinda da DE Segurança Digital (vinculada

anteriormente à VITEC), passando a ser vinculada à VICOR, em decorrência da reorganização envolvendo a

segurança de informação/institucional, no âmbito da VITEC e da VICOR, aprovada pela RCA nº 1874, Ata nº

972, de 22/06/2026.

- Item 3.1.12.4.1 – alteração na vinculação da SN Prevenção à Lavagem de Dinheiro (SUPLD), da DECOI/VICOR,

para nova DE Segurança Institucional (DESEI), com ajustes no nome (excluído o termo “integridade”),

finalidade e mandatos (com incorporação da definição da estratégia de cadastro de clientes, migrada da

SUIND/DECCI/PRESI), em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.4.1.1 – alteração na vinculação, finalidade e mandatos da GN Cadastro de Clientes (GECAD), da

SUIND/DECCI/PRESI para SUPLD/DESEI/VICOR, em decorrência das alterações aprovadas pela RCA nº

1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.4.1.2 – alteração nos mandatos da GN Prevenção à Lavagem de Dinheiro (GEPLD), vinculada à

SUPLD/DESEI/VICOR a partir desta versão (antes vinculada à SUPLD/DECOI/VICOR), em decorrência das

alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.12.4.2 – alteração na vinculação, finalidade e mandatos da GN Estratégia de Segurança (GESED), da

DESED/VITEC para DESEI/VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972,

de 22/06/2026, com a migração – com alteração – no mandato “Investigação de indícios de crimes cibernéticos”

para GN Proteções em Segurança Digital (GEPRO).

- Item 3.1.12.4.3 – alteração na vinculação, finalidade e mandatos da GN Monitoramento de Segurança

(GEMSE), da DESED/VITEC para DESEI/VICOR, em decorrência das alterações aprovadas pela RCA nº 1874,

Ata nº 972, de 22/06/2026.

- Item 3.1.14 – alteração no organograma, finalidade e mandatos da VP Tecnologia e Digital (VITEC), em

decorrência da reorganização, no âmbito da própria VITEC e da VICOR, aprovada pela RCA nº 1874, Ata nº

972, de 22/06/2026.

- Item 3.1.14.1 – alteração no nome, finalidade e mandatos da SN Governança e Estratégia de TI (SUGTI), ao

incluir o termo “estratégia”, vinculada diretamente à VITEC, em decorrência das alterações aprovadas pela

RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.1.1 – alteração no nome, finalidade e mandatos da GN Estratégia de TI (GEETI), ao retirar o termo

“governança”, vinculada à SUGTI/VITEC, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº

972, de 22/06/2026.

- Item 3.1.14.1.2 – alteração no nome, finalidade e mandatos da GN Aquisição de TI – GEGAT (antes era GN

Governança de Aquisições de TI), vinculada à SUGTI/VITEC, em decorrência das alterações aprovadas pela

RCA nº 1874, Ata nº 972, de 22/06/2026.

Vigência: 10/07/2026

4 / 30


---

## Página 5

![Imagem página 5](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Item 3.1.14.1.3 – alteração na sigla, nome, finalidade e mandatos da GN Gestão Integrada de Serviços e

Qualidade de TI (GESQI) para GN Gestão Integrada de Serviços e Qualidade de TI (GEQTI), em decorrência

das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.2 – alteração no nome, vinculação, finalidade e mandatos da SN Arquitetura e Modernização de TI

(SUART), ao incluir o termo “Modernização”, passando a ser vinculada diretamente à VITEC (antes era

vinculada à DESOL/VITEC), em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de

22/06/2026.

- Item 3.1.14.3 – alteração na finalidade e mandatos da DE Serviços TI (DESER), vinculada à VITEC, em

decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.1 – alteração na vinculação, finalidade e mandatos da GN Proteções em Segurança Digital

(GEPRO), então vinculada à DESED/VITEC, passando a vinculação diretamente à DESER/VITEC, em

decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.2 – alteração no nome, sigla, finalidade e mandatos da SN Serviços TI (SUSER) para SN

Operações e Infraestrutura de TI (SUOTI), vinculada à DESER/VITEC, em decorrência das alterações

aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.2.1 – alteração no nome, sigla, finalidade e mandatos da GN Atendimento Usuários TI (GEAUS)

para GN Canais e Experiência do Colaborador (GECEC), vinculada à DESER/VITEC, em decorrência das

alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.2.2 – alteração no nome, sigla, finalidade e mandatos da GN Produção TI (GEPTI) para GN

Confiabilidade e Operações de TI (GECOD), vinculada à DESER/VITEC, em decorrência das alterações

aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.2.3 – alteração no nome, sigla, finalidade e mandatos da GN Suporte TI (GESTI) para GN

Infraestrutura e Datacenter (GEIDC), vinculada à SUOTI (antiga SUSER) /DESER/VITEC, em decorrência das

alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.3.2.4 – alteração no nome, sigla, finalidade e mandatos da GN Telecomunicações (GETEL) para

GN Jornadas e Serviços de TI (GEJIT), vinculada à DESER/VITEC, em decorrência das alterações aprovadas

pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.4 – alteração na finalidade e mandatos da DE Soluções TI (DESOL), vinculada à VITEC, em

decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.4.1 – alteração na finalidade e mandatos da GN Capacidade e Padrões (GECPA), vinculada à

DESOL/VITEC, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.4.2 – alteração na finalidade e mandatos da SN Soluções TI – Núcleo A (SUDEA), vinculada à

DESOL/VITEC, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.4.3 – alteração na finalidade e mandatos da SN Soluções TI – Núcleo B (SUDEB), vinculada à

DESOL/VITEC, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Item 3.1.14.4.4 – alteração na finalidade e mandatos da SN Soluções TI – Núcleo C (SUDEC), vinculada à

DESOL/VITEC, em decorrência das alterações aprovadas pela RCA nº 1874, Ata nº 972, de 22/06/2026.

- Exclusões:

- Item 3.1.14.4 e subsequentes – exclusão da DE Segurança Digital (DESED) devido à criação da DE Segurança

Institucional (DESEI) no âmbito da VICOR, em decorrência das alterações aprovadas pela RCA nº 1874, Ata

nº 972, de 22/06/2026.

ANEXOS I – “Guia Rápido – Alterações na Estrutura Organizacional” e III – “Estrutura Empresa do

Conglomerado” – sem alterações.

## RELAÇÃO COM OUTROS NORMATIVOS

## AL001 REGIME DE ALÇADAS - REGRAS GERAIS

## CR434 MODELO DAS TRÊS LINHAS

## OR001 ESTATUTO DA CAIXA ECONÔMICA FEDERAL

## OR093 ORGANIZAÇÃO DA ESTRATÉGIA CORPORATIVA DO CONGLOMERADO CAIXA

## OR129 GESTÃO POR PROCESSOS CAIXA

## OR131 MODELO DE GESTÃO CAIXA

## OR134 GOVERNANÇA CORPORATIVA CAIXA

## OR161 SISTEMÁTICA PARCERIA ESTRATÉGICA - CONGLOMERADO CAIXA

Vigência: 10/07/2026

5 / 30


---

## Página 6

![Imagem página 6](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## OR163 SISTEMÁTICA DE DESINVESTIMENTO

## OR168 GOVERNANÇA DAS PARTICIPAÇÕES SOCIETÁRIAS DO CONGLOMERADO CAIXA

## OR189 SUPERVISÃO DAS PARTICIPAÇÕES SOCIETÁRIAS ESTRATÉGICAS DIRETAS DO CONGLOMERADO

## CAIXA

## OR234 GOVERNANÇA NEGOCIAL CAIXA

## PO001 POLÍTICA INSTITUCIONAL CAIXA

## PO002 POLÍTICA DE CONTROLE INTERNO, COMPLIANCE E INTEGRIDADE

## PO003 POLÍTICA DE GERENCIAMENTO DE RISCOS E DE CAPITAL CAIXA

PO007 Política de Segurança e Informação

## PO048 POLÍTICA DE TRANSAÇÕES COM PARTES RELACIONADAS

## PO055 POLÍTICA DE RELACIONAMENTO COM CLIENTES E USUÁRIOS DE PRODUTOS E SERVIÇOS CAIXA

PO072 Política Negocial Caixa

## RH200 CÓDIGO DE ÉTICA, CONDUTA E INTEGRIDADE DA CAIXA

## PRODUTOS RELACIONADOS

Não se aplica

## PROCESSOS RELACIONADOS

PR.00577 - 4.2.1.115 Ajustar a estrutura organizacional da CAIXA

## REGULAMENTAÇÃO UTILIZADA

Parecer do Comitê Independente de Riscos e Capital nº 163, de 15/06/2026.

Resolução do Conselho de Administração da CAIXA nº 1874, Ata nº 972, de 22/06/2026.

Resolução do Conselho Diretor nº 9530, Ata nº 3457, de 10/06/2026.

## DOCUMENTAÇÃO UTILIZADA

Não se aplica

## ROTEIRO PADRÃO

Não se aplica

## NORMATIVOS REVOGADOS

Não se aplica

## ATENDIMENTO DE DÚVIDAS

## GEGOS – GN GOVERNANCA SOLUCOES ORGANIZACIONAIS

Vigência: 10/07/2026

6 / 30


---

## Página 7

![Imagem página 7](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## ARQUITETURA DO CONGLOMERADO CAIXA

1

## FINALIDADE

1.1 Divulgar a arquitetura organizacional do Conglomerado CAIXA, compreendendo os mandatos/responsabilidades

das unidades gestoras.

2

## DEFINIÇÕES

2.1 Disponível em https://dados.caixa/portal/glossario?norma=OR005.

3

## REGRAS

3.1

## ESTRUTURA ORGANIZACIONAL

3.1.1 A estrutura organizacional é a forma como a empresa se organiza internamente, dividindo atividades, recursos

e pessoas para atuarem em temas diversos dentro da organização, propiciando uma instituição fluida e eficaz para o

alcance dos objetivos estratégicos.

3.1.2 O conceito de estrutura organizacional considera que a distribuição das atividades tem como resultado natural

a setorização da empresa e a delineação do papel de cada unidade dentro da organização, de forma a minimizar

lacunas na atuação das unidades e controlar e mitigar conflitos de interesses.

3.1.3 A construção da arquitetura organizacional CAIXA e de suas Subsidiárias considera cinco pilares:

- Estratégia Corporativa;

- Processos;

- Projetos;

- Organização; e

- Governança.

3.1.3.1 A Estratégia Corporativa é o pilar que define o Propósito e Visão de Futuro da instituição e se traduz no Plano

Estratégico Institucional.

3.1.3.1.1 É o objetivo que a instituição pretende alcançar.

3.1.3.2 Processos e Projetos são os pilares indicativos da ação, ou seja, é por meio deles que a instituição busca

atingir seu Propósito.

3.1.3.3 O pilar Organização relaciona os recursos da instituição, os quais podem ser tecnológicos, humanos,

logísticos, financeiros, entre outros, para a execução dos Processos e Projetos.

3.1.3.4 O pilar Governança atua de forma transversal aos demais pilares, direcionando e monitorando a gestão,

garantindo transparência e alinhamento às atividades da CAIXA e de suas Subsidiárias.

3.1.3.4.1 O pilar Governança é normatizado pelos [MN, AL001], [MN, OR134] e [MN, OR234].

3.1.4 Além dos pilares, adotam-se os seguintes princípios para a avaliação da estrutura organizacional:

## MODELO DE GESTÃO

## EFICIÊNCIA

## CONTROLE

## IMPESSOALIDADE

- Distinção

entre

Unidades de Negócios

e Unidades Funcionais;

- Racionalização

de

níveis hierárquicos;

- Observância

de

potenciais conflitos de

interesses;

- Estrutura

organizacional

funcional independente

dos

gestores

de

unidades.

- Qualificação de atores

- Foco no cliente;

nas

tomadas

de

decisões;

- Segregação de funções

conforme

exigências

regulatórias;

- Estratégia

orientada

pelos segmentos;

- Delimitação e clareza

quanto aos mandatos

de

cada

unidade,

evitando

gaps

e

sombreamentos;

- Foco

na

gestão

do

risco;

- Responsabilização;

- Foco no suporte às

- Amplitude

de

supervisão ideal; e

políticas

governamentais; e

- Transparência

na

gestão dos negócios.

Vigência: 10/07/2026

7 / 30


---

## Página 8

![Imagem página 8](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Foco em negócios de

- Eliminação

de

retrabalho e redução

de custos;

alto

potencial

de

crescimento.

- Equilíbrio

e

homogeneidade

na

geração

de

receitas

entre negócios; e

- Mudanças

devem

ocorrer

de

forma

a

incrementar melhorias

aos processos.

3.1.5 Alteração na estrutura organizacional é toda criação, extinção, mudança de tipo ou vinculação de unidades,

além de modificação de mandato estabelecido pelo colegiado competente quando da criação ou reestruturação da

unidade.

3.1.5.1 Alteração na estrutura organizacional pode ocorrer devido à/ao:

- Reação a mudanças no ambiente externo, incluindo apontamentos de órgãos reguladores ou adequação a normas

externas;

- Realinhamento decorrente de alterações de estratégia, do Modelo de Gestão ou do Estatuto da empresa, definidas

pelas instâncias de governança competentes, de acordo com o disposto nos normativos [MN, OR001], [MN, OR131],

[MN, OR234] e [MN, OR134], no caso da CAIXA e, no caso das Participadas, de acordo com suas normas internas

aplicáveis;

- Identificação, no âmbito da DEGOE ou das Controladas, de oportunidade ou necessidade de melhoria na estrutura;

3.1.6 As estruturas organizacionais das unidades da CAIXA estão dispostas no Anexo II - Estrutura CAIXA.

3.1.6.1 As demandas relacionadas às alterações na estrutura organizacional da CAIXA observam o disposto no item

## [MN, 4.2].

3.1.7 As estruturas organizacionais das Subsidiárias da CAIXA estão dispostas no Anexo III – Estrutura Empresa do

Conglomerado.

3.1.7.1 As demandas relacionadas às alterações na estrutura organizacional das Subsidiárias observam o disposto

no item [MN, 4.3].

3.1.8 As alterações de estrutura devem respeitar os limites vigentes de funções gratificadas estabelecidas para a

CAIXA e suas Subsidiárias, controladas pela Secretaria de Coordenação e Governança das Empresas Estatais –

SEST, inclusive no que se refere à eventual possibilidade de compensação no âmbito do Conglomerado CAIXA.

3.1.9 Caso haja modificações no quantitativo de funções gratificadas controladas pela SEST, a implantação da

estrutura organizacional deve ser precedida de autorização dessa Secretaria, nos termos do Decreto nº 12.102, de

08 de julho de 2024.

3.1.9.1 O pleito deverá ser direcionado à Secretaria Especial de Fazenda, conforme Portaria nº 19.269, de 28 de julho

de 2020, que delegou a competência ao Secretário Especial da Fazenda assistir o Ministro do Estado da Economia

na supervisão das empresas estatais vinculadas ao Ministério da Economia, e encaminhado por meio de Ofício e

Nota Técnica instruídos com os documentos previstos na Portaria SEDDM nº 1.122, de 28 de janeiro de 2021, além

de outras informações eventualmente solicitadas pela Secretaria.

3.1.10 Alterações de estrutura que impliquem mudança no Estatuto Social da empresa, como ajuste no número de

cargos estatutários, além de aprovadas nos órgãos de governança competentes, deverão ser autorizadas pela SEST

e BACEN e o documento (novo Estatuto) registrado na Junta Comercial, previamente à respectiva implantação.

3.1.11 Demandas para revisões e/ou adequações organizacionais decorrentes de identificação da necessidade de

aprimoramento pelas próprias unidades gestoras impactadas, quando abrangerem criação, extinção, mudança de tipo

ou vinculação de unidade(s) e/ou modificação substancial na finalidade da estrutura vigente, são formalizadas à CPE

da GEGOS, via Diretoria ou Vice-Presidência, Corregedoria e/ou Ouvidoria, conforme o caso, e devem conter

justificativas que abordem os pilares e princípios elencados no item [MN, 3.1].

3.1.12 Alterações de responsabilidades genéricas e específicas, sigla e nome de unidades eventualmente

necessárias são de competência da GEGOS, desde que não impliquem criação, extinção, mudança de tipo ou

vinculação de unidade ou modificação substancial na finalidade da estrutura vigente.

3.1.12.1 A definição de nomenclatura das unidades, incluindo siglas e nomes, preza pela simplicidade e objetividade,

de forma a facilitar a identificação interna e externa.

3.1.13 As demandas relativas à constituição de Unidade Ágil observam as características dessa tipologia contidas no

item [MN,3.4.2].

Vigência: 10/07/2026

8 / 30


---

## Página 9

![Imagem página 9](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.1.14 Os procedimentos relacionados a ajustes na estrutura organizacional estão dispostos no Anexo I – Guia Rápido

– Alterações na Estrutura Organizacional.

3.1.15 Sem prejuízo ao disposto nos itens acima, as alterações de natureza de gestão de pessoas devem ser

analisadas pela Diretoria Executiva Pessoas – DEPES.

3.2

## MANDATO

3.2.1 Mandato é uma atribuição de alto nível da Presidência, das Vice-Presidências e Diretorias Executivas alinhada

aos objetivos estratégicos da CAIXA, e no que competem às demais unidades, as responsabilidades de alto nível,

necessárias para viabilizar a operacionalidade de um produto/serviço do Conglomerado CAIXA.

3.2.1.1 O Presidente é responsável por conduzir as atividades vinculadas a governança e estratégia, além de outras

atribuições fixadas pelo Conselho de Administração, podendo delegar a outro membro da Diretoria, nos termos da

legislação vigente e do Estatuto da Empresa [MN, OR001].

3.2.1.2 Os Dirigentes exercem suas atribuições com o auxílio das unidades que compõem sua estrutura, cabendo-

lhes administrar, supervisionar e coordenar as atividades das unidades sob sua responsabilidade, na busca dos

objetivos estabelecidos pelos órgãos de administração para a CAIXA.

3.2.2 Compete a todas as unidades o asseguramento dos resultados institucionais vinculados aos seus mandatos,

observando, inclusive, as atribuições comuns inerentes à tipologia de unidades, e sua atuação no Modelo das Três

Linhas.

3.2.3 A delimitação de mandatos entre as unidades é baseada na natureza e afinidade das atividades desempenhadas

e pressupõe atuação colaborativa e sinérgica entre diferentes áreas.

3.2.4 As unidades de Matriz são responsáveis por definição de diretrizes, gestão de processos e controle dos

resultados.

3.2.4.1 Seus mandatos representam a visão macro dos processos, ou seja, estabelecem as grandes competências

da organização que sustentam as atividades do Conglomerado CAIXA.

3.2.4.1.1 Considerando que processo é um conjunto de atividades estruturadas que geram produtos ou serviços

específicos, como resultado do cumprimento dos mandatos das unidades, recomenda-se que uma ação de revisão

ou de mapeamento de processo seja prioritária a qualquer retificação de mandato(s).

3.2.4.2 Para unidades de Matriz, até o nível hierárquico de GN, uma descrição de “finalidade” é agregada aos

mandatos, de forma a facilitar a identificação da UG e do principal propósito de sua existência.

3.2.5 Principais aspectos observados na definição de mandatos:

- Clareza e objetividade na redação do mandato, de forma sucinta;

- Visão sistêmica do Conglomerado CAIXA;

- Os pilares para construção da arquitetura organizacional;

- Tipologia de unidades;

- Papel das unidades no Modelo das Três Linhas;

- Legislação externa e normas internas aplicáveis.

3.2.5.1 Deve ser evitado na descrição de mandato:

- Verbo no infinitivo, adjetivo, termo sinônimo e/ou repetido;

- Atividades operacionais na redação de mandato;

- Replicação/duplicação de mandatos, entre SN e GN, por exemplo;

- Substantivos que representam atribuições que já são pertinentes à tipologia da unidade, por exemplo, para as

unidades da Matriz, por já serem responsáveis por definir diretrizes, gerir processos e controlar resultados: gestão,

gerenciamento, administração, supervisão, estratégia, definição, diretriz, controle, processo, resultado etc.

- Atribuições que já são comuns a todas as unidades, disposto no item [MN, 3.6.2].

- Atribuições que já são comuns às áreas:

- de estratégia de clientes e canais, disposto no item [MN, 3.4.4.1.4];

- de produtos e serviços, disposto no item [MN, 3.4.4.1.5];

- de fábrica de produtos e serviços, disposto no item [MN, 3.4.4.1.6];

- de gestão operacional dos canais, disposto no item [MN, 3.4.4.1.7];

- de fábricas de canais, disposto no item [MN, 3.4.4.1.8];

Vigência: 10/07/2026

9 / 30


---

## Página 10

![Imagem página 10](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- de comercialização, disposto no item [MN, 3.4.4.1.9];

- de operações, disposto no item [MN, 3.4.4.1.10].

3.2.6 Principais aspectos observados na redação de “finalidade” de unidade até o nível hierárquico de GN:

- Clareza e objetividade na redação de finalidade, de forma sucinta;

- Início com verbo no infinitivo, preferencialmente com o seguinte padrão, de acordo com a tipologia e hierarquia da

unidade:

- VP: Conduzir, dirigir;

- DE: Realizar, administrar;

- SN: Coordenar, controlar, prover;

- GN: Atuar, gerir, disciplinar, regulamentar, exercer.

3.2.7 Os mandatos das unidades da CAIXA estão dispostos no Anexo II - Estrutura CAIXA.

3.2.8 Os mandatos das unidades das Subsidiárias da CAIXA estão dispostos no Anexo III – Estrutura Empresa do

Conglomerado.

3.2.9 Na migração de mandatos entre unidades, é pressuposta a transferência de empregados, processos e normas

correlatas.

3.2.9.1 Nesses casos, as áreas devem permanecer executando os processos e atividades correspondentes antes sob

sua gestão, até que haja a efetiva transferência/migração para a área recebedora.

3.2.10 Os procedimentos relacionados a ajustes em mandatos estão dispostos no Anexo I – Guia Rápido – Alterações

na Estrutura Organizacional.

3.3

## ORGANOGRAMA

3.3.1 Organograma é a representação gráfica da estrutura organizacional de uma empresa e seu funcionamento

hierárquico.

3.3.2 A figura a seguir demonstra a estrutura da CAIXA:

![Imagem página 10](<./imagem/OR005221-imagem-002.png>)

Descrição da imagem - [./imagem/OR005221-imagem-002.md](<./imagem/OR005221-imagem-002.md>)

Vigência: 10/07/2026

10 / 30


---

## Página 11

![Imagem página 11](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.3.2.1 O Anexo II – Estrutura CAIXA exibe os organogramas das unidades da CAIXA, separadamente por: Conselho

de Administração, Presidência e Vice-Presidências.

3.3.3 A figura a seguir demonstra a estrutura das Subsidiárias da CAIXA:

![Imagem página 11](<./imagem/OR005221-imagem-003.png>)

Descrição da imagem - [./imagem/OR005221-imagem-003.md](<./imagem/OR005221-imagem-003.md>)

3.3.3.1 O Anexo III – Estrutura Empresa do Conglomerado exibe os organogramas das Subsidiárias da CAIXA,

separadamente por empresa.

3.3.4 O Conglomerado CAIXA, que é o conjunto de empresas formado pela CAIXA e pelas empresas em que ela

possui participação societária direta ou por meio de suas Subsidiárias, está ilustrado no item [MN 3.7.2].

3.4

## TIPOLOGIA DE UNIDADES

- As unidades podem ser Unidades de Matriz ou Unidades de Rede, que são subdivididas em Unidades de Rede

Executiva e Unidades de Rede Negocial.

- As unidades de Matriz e de Rede Executiva podem possuir Representações com as seguintes características:

## REPRESENTAÇÃO ADMINISTRATIVA

Atua como extensão da unidade à qual está subordinada com o objetivo de auxiliar no processo de gestão

descentralizada.

Características:

- Não possui centro de custo próprio, portanto, não se caracteriza como unidade organizacional, conforme

conceito adotado neste normativo;

- Demanda presença física em localidade diferente de sua unidade de vinculação;

- Deve estar dentro da região de abrangência da unidade de vinculação;

- Pode ser temporária ou permanente;

- Pode ser constituída por uma única pessoa;

- Pode ser constituída por cargos gerenciais ou técnicos, isoladamente ou em conjunto.

- Classificadas em Representação Matriz (RE), Representação de Centralizadora (RC) e Representação de

Filial (RF), conforme natureza da unidade vinculante.

Vigência: 10/07/2026

11 / 30


---

## Página 12

![Imagem página 12](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.4.1

## UNIDADES DE MATRIZ

3.4.1.1 As Unidades de Matriz detêm a representação dos macroprocessos que sustentam as atividades da CAIXA e

são responsáveis pela definição de diretrizes e pelo controle dos resultados.

3.4.1.2 Os macroprocessos da CAIXA foram definidos a partir dos seguintes critérios:

- orientação estratégica à CAIXA;

- representação das entregas dos produtos/serviços mais importantes ou mais visíveis para os clientes CAIXA;

- geração de produtos/serviços utilizados intensamente por toda a empresa;

- grande alocação de recursos financeiros e/ou humanos na sua operacionalidade.

3.4.1.3 São representadas pela Presidência, Vice-Presidências, Diretorias Executivas, Diretoria Jurídica, Gabinete

da Presidência, Superintendências Nacionais, Diretoria Auditoria Interna, Ouvidoria, Corregedoria, Secretaria Geral,

Auditorias Nacionais e Gerências Nacionais.

## PRESIDÊNCIA

## VICE-PRESIDÊNCIA

## DIRETORIA EXECUTIVA

A PRESI é composta por:

Unidades de mais alto nível de

gestão e estão distribuídas em

Unidades de Negócios e Unidades

Funcionais.

Unidades

responsáveis

por

atribuições de alto nível, alinhadas

aos objetivos estratégicos da CAIXA

e estão diretamente vinculadas à

Presidência

ou

às

Vice-

Presidências,

observadas

suas

áreas de atuação.

- Gabinete da Presidência;

- Diretoria Jurídica;

- Diretoria

Executiva

Clientes,

Canais, Inteligência de Dados e

Inovação;

- Diretoria Executiva Governança e

Estratégia

- Diretoria Executiva de Marketing;

- Diretoria Executiva Estratégia e

Governança das Participações.

## DIRETORIA JURÍDICA

## GABINETE DA PRESIDÊNCIA

## SUPERINTENDÊNCIA NACIONAL

Vinculada diretamente à Presidência

e é responsável pela assessoria

técnico-jurídica,

de

forma

a

resguardar

a

## CAIXA

e

suas

subsidiárias.

Vinculado diretamente à Presidência

e possui tipologia única, com fidúcia

superior

à

de

Superintendência

Nacional e inferior à Diretoria.

Responsáveis pela gestão tática

(intermediária) no âmbito da matriz e

podem ser vinculadas diretamente à

Presidência,

Vice-Presidências,

Gabinete

da

Presidência

ou

Diretorias Executivas.

## DIRETORIA AUDITORIA INTERNA

## OUVIDORIA

## CORREGEDORIA

Vinculada

ao

Conselho

de

Administração da CAIXA.

Vinculada

ao

Conselho

de

Administração da CAIXA e possui

status

de

Superintendência

Nacional.

## SECRETARIA GERAL

## AUDITORIA NACIONAL

## GERÊNCIA NACIONAL

Vinculada

ao

Gabinete

da

Presidência

e

tem

status

de

Superintendência Nacional.

Vinculadas

à

Superintendência

Nacional

Auditoria

Interna

e

possuem

status

de

Gerência

Nacional.

Responsáveis pela gestão tática

(intermediária) no âmbito da matriz e

podem ser vinculadas diretamente à

Presidência,

Vice-Presidências,

Gabinete da Presidência, Diretorias

Executivas

ou

Superintendência

Nacional.

3.4.2

## UNIDADES ÁGEIS

- Além das unidades listadas no item [MN 3.4.1], as unidades de Matriz podem possuir Unidades Ágeis, com as

seguintes características:

Vigência: 10/07/2026

12 / 30


---

## Página 13

![Imagem página 13](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## UNIDADE ÁGIL

Componente organizacional destinado à entrega de soluções focadas na cadeia de valor dos clientes,

qualificado pela forma de gestão e atuação ágil, pela composição por pessoas de diferentes áreas, com

lotação dinâmica, a partir de objetivo específico estabelecido por uma unidade Matriz demandante.

Características:

- Possui objetivo específico;

- Possui centro de custo próprio;

- Possui gestão administrativa e rubrica orçamentária próprias;

- Deve ser vinculada a uma unidade matriz;

- Demanda presença virtual ou física;

- Pode ser constituída por cargos gerenciais e técnicos;

- Possibilita a centralização de pessoas de diversas áreas, de unidades matriz e/ou de rede, envolvidas em

um objetivo em comum, com alocação matricial, ou seja, lotação dinâmica, em um único centro de custo;

- Contém equipes com autonomia para priorização de demandas, relacionamento e resultados, dentro do

seu escopo de atuação, e estabelecido pelo gestor demandante.

- Viabiliza horizontalização das decisões, conforme necessidade, com facilitação da tomada de decisão

compartilhada, respeitando as diretrizes de governança;

- Possui representatividade institucional interna.

3.4.2.1

## MODELO DE ATUAÇÃO

3.4.2.1.1 As Unidades Ágeis visam propiciar um ambiente de colaboração interdepartamental em relação a um

objetivo comum, com foco na cadeia de valor dos clientes, para entrega de soluções com eficiência e celeridade.

3.4.2.1.2 Esse ambiente implica um novo modelo de atuação com priorização de metodologias ágeis, de forma a

viabilizar a sua implantação gradual e efetiva, em consonância com a estratégia da Transformação Digital.

3.4.2.1.2.1 O Modelo de Atuação estabelece uma atuação orientada ao cliente, considerando a entrega de valor em

toda a sua jornada de vida, sendo pautado nos seguintes pilares:

- Agilidade: capacidade de adaptação contínua para que a organização tenha condições de responder às mudanças

de mercado de forma ágil;

- Geração de Valor: priorização de entregas contínuas e incrementais que permitam aos clientes obter benefícios

tangíveis tempestivamente;

- Colaboração: promoção de trabalho interdisciplinar, que permita a troca constante de conhecimentos, comunicação

fluída e o compartilhamento de competências complementares;

- Autonomia: Empoderamento das equipes, que são incentivadas a se auto-organizarem e tomar as decisões

necessárias para alcance dos objetivos dos projetos definidos em alinhamento às diretrizes estratégicas.

3.4.3

## UNIDADES DE REDE

- As Unidades de Redes estão distribuídas em Rede Executiva e Rede Negocial e cabe a elas, observadas suas

áreas de atuação:

- a garantia do equilíbrio e dos meios para a realização dos negócios;

- atendimento aos clientes da CAIXA;

- realização de negócios.

3.4.3.1

## UNIDADES DE REDE NEGOCIAL

3.4.3.1.1 As Unidades de Rede Negocial são formadas por:

Vigência: 10/07/2026

13 / 30


---

## Página 14

![Imagem página 14](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## SUPERINTENDÊNCIA DE REDE

## VAREJO (SR)

## DIGITAL (SRD)

## AGRONEGÓCIO (SRA)

Unidades de abrangência regional

com atuação na supervisão de

região

delimitada

por

critérios

previamente

estabelecidos

e

conforme potencial de mercado.

Unidade de abrangência nacional

com atuação na supervisão das

agências digitais e de potencial de

mercado,

conforme

critérios

previamente

estabelecidos.

Não

demanda presença física junto ao

negócio.

Unidades de abrangência nacional

com atuação na supervisão de

região

delimitada

por

critérios

previamente estabelecidos e no

relacionamento

negocial

com

clientes

do

agronegócio

e

de

potencial de mercado.

Características:

- Demanda presença física junto ao

Características:

negócio;

- Demanda presença física junto ao

- Possui capilaridade;

negócio;

- Pode estar distribuída por Estado

- Possui capilaridade;

ou Município;

- Pode estar distribuída por Estado

- Admite-se mais de uma unidade

ou Município;

no Estado ou Município.

Admite-se mais de uma unidade

no Estado ou Município.

## SUPERINTENDÊNCIA EXECUTIVA

## VAREJO (SEV)

## GOVERNO (SEG)

## HABITAÇÃO (SEH)

- Unidades de abrangência regional

Unidades de abrangência regional

com atuação no relacionamento

negocial

com

entes

públicos,

delimitada por critérios previamente

estabelecidos e a partir de potencial

de mercado.

Unidades de abrangência regional

com atuação no relacionamento

negocial com clientes da Construção

Civil,

delimitada

por

critérios

previamente estabelecidos e a partir

de potencial de mercado.

com

atuação

na

gestão

e

supervisão da rede de vinculação,

delimitada

por

critérios

previamente

estabelecidos

e

conforme potencial de mercado,

respondendo

também

pelo

resultado

das

unidades

vinculadas.

## SUPERINTENDÊNCIA PRIVATE

## ESCRITÓRIO PRIVATE (ESP)

## ESCRITÓRIO AGRONEGÓCIO PF

## (SEP)

## (ESA)

- Unidade de abrangência nacional

Unidades de abrangência regional

com atuação no relacionamento

negocial com os clientes do

segmento Private, delimitada por

critérios previamente estabelecidos

e a partir de potencial de mercado.

Unidades de abrangência regional

com atuação no relacionamento

negocial com clientes do nicho de

Agronegócio

## PF,

delimitada

por

critérios previamente estabelecidos

e a partir de potencial de mercado.

com atuação no relacionamento

negocial

com

os

clientes

do

Segmento Private, delimitada por

critérios

previamente

estabelecidos

e

a

partir

de

potencial

de

mercado,

respondendo

também

pelo

resultado

das

unidades

vinculadas.

## ESCRITÓRIO AGRONEGÓCIO PJ

## ESCRITÓRIO CORPORATIVO

## SUPERINTENDÊNCIA

## CORPORATIVO AGRONEGÓCIO

## (ESA)

## AGRO (ESA)

## (SER)

Unidades de abrangência regional

com atuação no relacionamento

negocial com clientes do nicho de

Agronegócio

## PJ

e

Cooperativas

Agrícolas, delimitada por critérios

previamente estabelecidos e a partir

de potencial de mercado.

Unidades de abrangência regional

com atuação no relacionamento

negocial com clientes do nicho de

Agronegócio

## PJ

e

Cooperativas

Agrícolas segmentados no Atacado,

delimitada por critérios previamente

estabelecidos e a partir de potencial

de mercado.

Unidade de abrangência nacional

com atuação no relacionamento

negocial com clientes do nicho de

Agronegócio

## PJ

e

Cooperativas

Agrícolas segmentados no Atacado,

delimitada por critérios previamente

estabelecidos e a partir de potencial

de mercado, respondendo também

pelo

resultado

das

unidades

vinculadas.

Vigência: 10/07/2026

14 / 30


---

## Página 15

![Imagem página 15](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

## SUPERINTENDÊNCIA EXECUTIVA

## CORPORATIVO (SEC)

## EMPRESARIAL (SEE)

## RECUPERAÇÃO CRÉDITO

## ATACADO (SEA)

Unidades de abrangência regional,

na forma de canal diferenciado,

exclusivo

e

independente,

com

verticalização e especialização no

atendimento

a

clientes

dos

segmentos

Corporativo

e

Corporativo Ultra e que contemplam

o relacionamento e a finalização dos

negócios.

Unidades de abrangência regional

com atuação na gestão e supervisão

das

Agências

Empresariais,

em

região

delimitada

por

critérios

previamente estabelecidos e a partir

de

potencial

de

mercado,

respondendo também pelo resultado

das unidades vinculadas.

Unidades de abrangência nacional

com atuação na recuperação de

crédito no âmbito dos Núcleos

Especializados de Atacado, Médias

Empresas, Construção Civil Middle e

Infraestrutura Middle, delimitada por

critérios previamente estabelecidos.

## UNIDADES BANCÁRIAS

## AGÊNCIA

## AGÊNCIA DIGITAL DE

## RELACIONAMENTO (AGDR)

Agências, Agências Empresariais

(AGE), Postos de Atendimento (PA)

e Postos de Atendimento Eletrônicos

## (PAE).

Dependência

destinada

ao

atendimento

aos

clientes

e

ao

público em geral no exercício de

atividades

da

instituição,

não

podendo ser móvel ou transitória.

Unidade destinada ao atendimento,

relacionamento e negócios digitais, que

não demanda presença física junto ao

negócio.

## PLATAFORMA DIGITAL

## AGÊNCIA EMPRESARIAL (AGE)

## POSTO DE ATENDIMENTO/POSTO

## DE ATENDIMENTO

## (PDIG)

## AGRONEGÓCIO

Unidade destinada ao atendimento e

ampliação da força negocial, por

meio da finalização de negócios

originados

em

outros

canais/atendimentos,

que

não

demanda presença física junto ao

negócio.

São Unidades de abrangência

regional, na forma de canal

diferenciado, exclusivo e

independente, com verticalização e

especialização no atendimento

integral a clientes dos segmentos

Empresarial e Empresarial Mais,

contemplando o relacionamento e a

finalização dos negócios.

Dependência subordinada a agência

ou unidade com CNPJ, destinada ao

atendimento ao público no exercício

de uma ou mais de suas atividades,

podendo ser fixo ou móvel, conforme

segmentação de cliente/nicho.

## POSTO DE ATENDIMENTO

## ELETRÔNICO (PAE)

Dependência constituída por um ou

mais terminais de autoatendimento,

subordinada a agência ou à sede da

instituição, destinada à prestação de

serviços

por

meio

eletrônico,

podendo

ser

fixo

ou

móvel,

permanente ou transitório.

3.4.3.1.2 As Redes das Unidades de Negócios podem ser configuradas por:

- Redes Próprias;

- Redes Compartilhadas;

- Remuneração entre Redes.

Vigência: 10/07/2026

15 / 30


---

## Página 16

![Imagem página 16](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.4.3.2

## UNIDADES DE REDE EXECUTIVA

3.4.3.2.1 As Unidades de Rede Executivas são formadas por:

## CENTRALIZADORA NACIONAL

## CENTRALIZADORA REGIONAL

## GERÊNCIA DE FILIAL

Operacionaliza

competências

vinculadas a uma área do Conselho

de Administração, Presidência ou de

uma

Vice-Presidência,

em

abrangência nacional.

Operacionaliza

competências

vinculadas a uma Vice-Presidência,

em abrangência regional.

Operacionaliza

competências

vinculadas

ao

Conselho

de

Administração, à Presidência e às

Vice-Presidências.

Características:

- Não tem unidades vinculadas;

Características:

- Demanda presença física junto ao

- Possui alto grau de padronização;

- Não tem capilaridade;

negócio;

- Não

demanda

presença

física

junto ao negócio.

- Não tem unidades vinculadas;

- Pode estar distribuída por Estado

ou Município;

- Possui alto grau de padronização;

- Admite-se mais de uma unidade

- Não demanda presença física junto

no Estado ou Município.

ao negócio.

## GERÊNCIA EXECUTIVA DE REDE

Unidade que executa de forma

descentralizada

as

atribuições

decorrentes da área de atuação das

unidades da Presidência ou de sua

Vice-Presidência, sejam UN ou UF.

Características:

- Demanda presença física junto ao

negócio;

- Pode estar distribuída por Estado

ou Município;

- Admite-se mais de uma unidade no

Estado ou Município.

3.4.3.3 O estabelecimento dos portes das Unidades de Rede Executiva obedece às seguintes regras:

- As Gerências Executivas de Rede podem ser classificadas em até 6 portes diferentes.

- Não há necessidade de contemplar os 6 portes em cada tipo de Gerência Executiva de Rede.

- As Gerências de Filiais podem ser classificadas em até 4 portes diferentes.

- Não há necessidade de contemplar os 4 portes em cada tipo de Gerência de Filial.

- As Gerências de Filiais devem ser comparadas entre si para efeito de classificação de porte, ou seja, comparação

entre as que possuem a mesma identidade, assim o parâmetro de comparação para enquadramento em porte é o

volume de trabalho dentro de cada Rede de Filial.

- As Centralizadoras Nacionais são classificadas como porte 1;

- As Centralizadoras Regionais são classificadas como porte 2;

3.4.3.4 A reclassificação das unidades da Rede Executiva acontecerá a cada 2 anos, conforme metodologia definida

pelas unidades gestoras das redes executivas, seguindo as regras estabelecidas no subitem [MN, 3.4.3.3].

3.4.3.5 Após validação das metodologias pela GEGOS, as unidades gestoras das redes enviam-na para a unidade

responsável por apuração dos portes.

3.4.4

## UNIDADES DE NEGÓCIOS E UNIDADES FUNCIONAIS

- As Diretorias e Vice-Presidências da CAIXA estão divididas em:

- Unidades de Negócios (UN): são responsáveis pela gestão direta dos principais elementos necessários à

condução de seus negócios – segmentos de clientes, estratégias, produtos, canais e operações e pelo

resultado do negócio, monitoramento, mitigação, acompanhamento dos riscos, pela gestão das garantias dos

Vigência: 10/07/2026

16 / 30


---

## Página 17

![Imagem página 17](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

contratos e pelo desempenho do ciclo de crédito das operações originadas e, para tanto, devem prover os

meios necessários para a execução da estratégia corporativa, no seu âmbito de atuação.

- Unidades Funcionais (UF): têm autonomia na gestão de seus processos e executam as funções essenciais que

apoiam a realização dos negócios, inclusive das unidades segregadas (VIMAR e VIART), contribuindo para a

geração de receitas com ganhos de escala e atuando para equilibrar produtividade e eficiência frente às

especificidades de cada negócio.

3.4.4.1

## UNIDADES DE NEGÓCIOS

- As Vice-Presidências dedicadas ao relacionamento comercial e à prestação de serviços aos clientes externos que

se constituem em Unidades de Negócios são:

- Varejo;

- Sustentabilidade e Cidadania Digital;

- Negócios de Atacado;

- Habitação;

- Governo;

- Fundos de Investimento;

- Agente Operador.

- São consideradas áreas segregadas as Vice-Presidências Fundos de Investimento e de Agente Operador e suas

unidades vinculadas, responsáveis, respectivamente, pela administração e gestão de ativos de terceiros e pela

operacionalização do FGTS e administração de fundos de governo e recursos de programas sociais.

- Possuem gestão diferenciada em relação às demais Vice-Presidências, seus Vice-Presidentes não compõem

o Conselho Diretor, para separar a administração de recursos de terceiros das demais atividades da instituição

relacionadas à gestão de recursos, sendo que tais atividades são desenvolvidas conforme as diretrizes

estabelecidas pelo Conselho de Administração, Conselho de Administração e Gestão de Ativos de Terceiros e

pelo Conselho Fundos e Recursos de Programas Sociais, nos termos do Estatuto Social da CAIXA [MN, OR001]

e do [MN, OR134].

- Atividades não relacionadas à tomada de decisão dos investimentos e que não interfiram na confidencialidade

e independência das informações, podem ser executadas pelas demais unidades da CAIXA, sem prejuízo à

segregação de atividades prevista na legislação.

3.4.4.1.1

## ESTRATÉGIAS DE CLIENTES E DE CANAIS

3.4.4.1.1.1 As Estratégias de Clientes e de Canais são elaboradas de forma alinhada com as diretrizes estratégicas

que compõem o Plano Estratégico Institucional (PEI) e o Plano de Negócios Integrado (PNI), conforme disposto no

[MN, OR093], consideram o posicionamento institucional dos segmentos de clientes de atuação da CAIXA, com foco

na centralidade do cliente, conforme ilustrado na figura a seguir, em consonância com o âmbito de atuação das

unidades:

![Imagem página 17](<./imagem/OR005221-imagem-004.jpg>)

Descrição da imagem - [./imagem/OR005221-imagem-004.md](<./imagem/OR005221-imagem-004.md>)

Vigência: 10/07/2026

17 / 30


---

## Página 18

![Imagem página 18](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.4.4.1.2

## PROPOSIÇÃO DE MATÉRIAS DE CONTRATAÇÃO E RENEGOCIAÇÃO DE PRODUTOS

3.4.4.1.2.1 A proposição de matérias de contratação e renegociação de produtos aos Órgãos Colegiados de

Governança da CAIXA observa o disposto no [MN, OR134] e as unidades responsáveis constam na figura a seguir:

![Imagem página 18](<./imagem/OR005221-imagem-005.png>)

Descrição da imagem - [./imagem/OR005221-imagem-005.md](<./imagem/OR005221-imagem-005.md>)

3.4.4.1.3

## FUNCIONAMENTO DAS UNIDADES DE NEGÓCIO

3.4.4.1.3.1 O arquétipo e os componentes para funcionamento das unidades que compõem as UN estão ilustrados

na figura a seguir:

![Imagem página 18](<./imagem/OR005221-imagem-006.png>)

Descrição da imagem - [./imagem/OR005221-imagem-006.md](<./imagem/OR005221-imagem-006.md>)

Vigência: 10/07/2026

18 / 30


---

## Página 19

![Imagem página 19](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.4.4.1.3.2 O arquétipo apresentado na figura anterior é um modelo conceitual, utilizado como referência, porém

devido à pluralidade de processos existentes nas áreas da CAIXA a sua aplicação é avaliada conforme características

das áreas.

3.4.4.1.3.3 As funções do arquétipo das Unidades de Negócios, nas fases de 1 - Pré-Contratação, 2 - Contratação e

3 - Pós-Contratação, à luz da Política de Relacionamento com Clientes e Usuários de Produtos e Serviços CAIXA

[MN, PO055], são ilustradas na figura a seguir:

![Imagem página 19](<./imagem/OR005221-imagem-007.png>)

Descrição da imagem - [./imagem/OR005221-imagem-007.md](<./imagem/OR005221-imagem-007.md>)

3.4.4.1.4

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE ESTRATÉGIA DE CLIENTES E CANAIS

- Estudar e monitorar mercados sob a ótica de clientes, produtos, serviços e canais.

- Prospectar as necessidades dos clientes.

- Prospectar produtos e serviços, incluindo os digitais.

- Identificar as oportunidades de negócios.

- Definir estratégias de relacionamentos com os clientes.

- Enviar proposições e insumos para definição de portfólio de produtos e serviços.

- Estabelecer o conjunto de benefícios esperados pelo cliente no relacionamento com a CAIXA (pacote de valor),

incluindo a definição do portfólio de produtos e respectivos canais de distribuição.

- Definir estratégias para abordagem de cada segmento.

- Definir diretrizes estratégicas para os produtos e serviços consumidos por cada segmento de clientes.

- Definir diretrizes estratégicas para o desenvolvimento de novos produtos e serviços, incluindo os digitais.

- Monitorar eficiência das estratégias de clientes e canais.

- Elaborar diretrizes para isenção de tarifas.

- Analisar informações gerenciais.

- Definir e monitorar indicadores de entrada, consumo de produtos/serviços e evasão de clientes.

- Monitorar e gerir os resultados dos produtos, conforme segmento, incluindo impacto de perdas e inadimplência.

- Definir as jornadas dos clientes, incluindo as digitais.

- Definir metas de canais e de comercialização de produtos e serviços.

- Definir canal e comunicação proativa a ser enviada a clientes afetados por incidentes, inclusive tecnológicos.

- Definir Regime de Alçada conforme segmento de cliente.

- Monitorar o resultado e produtividade consolidados por canais.

- Analisar a viabilidade e efetuar o dimensionamento dos canais.

- Definir iniciativas omnichannel.

- Estabelecer padrões para os canais.

- Orientar a execução das rotinas e processos direcionados à realização dos negócios nos padrões de qualidade e

segurança exigidos pela CAIXA.

- Disseminar nos canais os padrões de qualidade, controle e segurança exigidos pela CAIXA.

3.4.4.1.5

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE PRODUTOS E SERVIÇOS

- Desenvolver produtos e serviços de acordo com as diretrizes estratégicas definidas para cada segmento.

Vigência: 10/07/2026

19 / 30


---

## Página 20

![Imagem página 20](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Validar os critérios de isenção de tarifas, sob a ótica do produto e serviço sob sua gestão, e submeter ao Colegiado

competente.

- Gerir as tarifas sob sua responsabilidade, quanto à conformidade com normas internas e legislação externa, regras

de cobrança e resultados.

- Definir as garantias para as operações de crédito de forma adequada.

- Definir processos e fluxos operacionais dos produtos, contemplando procedimentos e normatização.

- Definir melhorias e inovações nos procedimentos operacionais dos produtos e serviços.

- Submeter por meio de roteiro-padrão a criação e revisão de produtos e serviços.

- Interagir com a área de canais e com a unidade responsável pelo relacionamento com a TI de sua VP para

atendimento às demandas tecnológicas, de modo a garantir a implantação adequada dos produtos, serviços,

programas, projetos e evoluções.

- Monitorar resultados dos produtos, incluindo perdas e inadimplências.

- Fomentar e dar suporte ao mapeamento dos processos críticos e realizar o aprimoramento constante dos processos.

- Observar os riscos advindos do produto, nas diversas categorias, frequências, severidade, mitigadores e as

garantias.

- Implantar produtos e serviços observando o modelo de atendimento CAIXA e as diretrizes das áreas de estratégia

de clientes e canais.

- Gerir ciclo de vida dos produtos.

- Definir processos de arquivamento de documentos relacionados aos produtos e serviços sob sua gestão, com a

indicação das áreas envolvidas e responsabilidades definidas no processo, bem como auxiliar na sua

disponibilização, quando necessário.

- Garantir a integridade das informações referentes aos produtos.

- Subsidiar a definição do Regime de Alçada.

3.4.4.1.6

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE FÁBRICA DE PRODUTOS E SERVIÇOS

- Desenvolver e implantar produtos e serviços de acordo com regras de negócios.

- Definir interfaces e especificações de sistemas dos produtos e serviços.

- Interagir com as áreas de TI no que tange às demandas tecnológicas para suportar os sistemas de produtos e

serviços.

- Especificar melhorias e inovações para os sistemas de produtos e serviços.

- Atuar na solução de erros e incidentes relacionados a melhorias de sistemas de produtos e serviços.

- Atuar na solução de erros e incidentes sistêmicos na etapa de pré-contratação de produtos e serviços.

- Garantir a integridade dos dados inseridos e disponibilizados pelos sistemas sob sua gestão.

3.4.4.1.7

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE GESTÃO OPERACIONAL DOS CANAIS

- Planejar e executar os procedimentos de abertura, reinvestimento e encerramento de canais.

- Executar as estratégias de canais.

- Coordenar o suporte prestado à rede, do ponto de vista de segurança, infraestrutura, marketing e numerário.

- Cumprir exigências legais para funcionamento dos canais.

- Distribuir produtos nos canais.

- Controlar operações de canais.

3.4.4.1.8

## ATRIBUIÇÕES COMUNS DAS FÁBRICAS DE CANAIS

- Implementar e sustentar produtos e serviços nos canais de distribuição.

- Especificar melhorias e inovações para os sistemas de canais.

- Definir interfaces de sistemas com os canais.

- Definir interfaces e especificação de sistemas para gestão de canais.

Vigência: 10/07/2026

20 / 30


---

## Página 21

![Imagem página 21](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Interagir com as áreas de TI no que tange às demandas tecnológicas para suportar os sistemas de canais.

- Atuar na solução de erros e incidentes relacionados às melhorias de sistemas de canais.

3.4.4.1.9

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE COMERCIALIZAÇÃO

- Executar a estratégia de relacionamento à luz da estratégia de clientes.

- Executar metas das unidades da Rede.

- Coordenar e executar ações táticas.

- Controlar o desempenho das agências.

- Vincular as garantias das operações de crédito originadas, em conformidade com as normas vigentes.

- Efetuar a guarda física das garantias das operações de crédito originadas, quando for o caso, e do instrumento

contratual, incluindo o termo de constituição de garantia, se houver.

- Relacionar-se com os clientes, respeitando o modelo de atendimento vigente e as políticas da CAIXA.

3.4.4.1.10

## ATRIBUIÇÕES COMUNS DAS ÁREAS DE OPERAÇÕES

- Fornecer suporte ao negócio por meio de processos adequados ao modelo de atendimento vigente.

- Gerir a resolução de incidentes operacionais.

- Atuar na manutenção dos contratos de produtos e serviços sob sua responsabilidade.

- Fomentar e dar suporte ao mapeamento dos processos críticos e realizar o aprimoramento constante dos processos.

- Implementar, propor e executar os processos e procedimentos voltados aos controles da fase de originação,

constituindo a primeira camada de controle.

- Realizar avaliação periódica das garantias para as operações de crédito originadas, sob a perspectiva de sua

existência, valor atual e suficiência.

- Gerar informações gerenciais.

- Fazer gestão operacional dos sistemas afetos aos produtos e serviços.

- Controlar e monitorar as movimentações operacionais dos produtos e serviços com reflexos nas rotinas contábeis

e financeiras.

3.4.4.2

## UNIDADES FUNCIONAIS

- As Vice-Presidências dedicadas à execução das funções essenciais que apoiam a realização dos negócios que se

constituem em Unidades Funcionais são:

- Finanças e Controladoria.

- Soluções, Operações e Logística;

- Riscos;

- Pessoas;

- Tecnologia e Digital.

Vigência: 10/07/2026

21 / 30


---

## Página 22

![Imagem página 22](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

![Imagem página 22](<./imagem/OR005221-imagem-008.png>)

Descrição da imagem - [./imagem/OR005221-imagem-008.md](<./imagem/OR005221-imagem-008.md>)

3.5

## MODELO DAS TRÊS LINHAS

3.5.1 A fim de minimizar os impactos de eventos inesperados e indesejados e alcançar seus objetivos estratégicos,

a CAIXA controla, monitora e mitiga as exposições ao risco de crédito, operacional, mercado, liquidez e demais riscos

relevantes.

3.5.2 Uma forma de apoiar o gerenciamento de riscos de maneira simples e eficaz se dá pela aplicação do Modelo

das Três Linhas, estabelecendo papéis e responsabilidades claras para cada linha de atuação.

3.5.3 Na CAIXA, o Modelo das Três Linhas está normatizado pelo [MN, CR434], podendo ser representado pela figura

a seguir:

![Imagem página 22](<./imagem/OR005221-imagem-009.png>)

Descrição da imagem - [./imagem/OR005221-imagem-009.md](<./imagem/OR005221-imagem-009.md>)

3.5.4 Em consonância com o modelo de gestão por processos, disposto no [MN, OR129], os riscos são elementos

inerentes aos processos e podem ser de vários tipos, demandando ação das unidades envolvidas e especialistas

para a sua devida mitigação.

Vigência: 10/07/2026

22 / 30


---

## Página 23

![Imagem página 23](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.5.5 Sob a perspectiva do Modelo das Três Linhas, as unidades da CAIXA devem considerar os processos dos quais

participam, sendo proprietárias desses ou não, para atuar sobre os riscos, de acordo com o seu papel no modelo.

3.6

## ATRIBUIÇÕES COMUNS DAS TRÊS LINHAS

3.6.1

1ª LINHA

3.6.1.1 A 1ª Linha é a função que gerencia e tem propriedade sobre os riscos, sendo responsável pela gestão de

riscos dos seus processos e é composta por todas as unidades da CAIXA, compreendendo as Unidades de Matriz e

de Rede, as quais compete:

- Gerenciamento dos seus processos sob a ótica de controles e riscos.

- Gerenciamento dos riscos em todas as etapas dos seus processos/produtos/serviços.

- Definição de indicadores, controles e mitigadores dos seus processos/produtos/serviços de 1ª Linha.

- Gestão dos indicadores dos controles, limites e reportes dos seus processos/produtos/serviços para monitoramento

de 2ª Linha.

- Monitoramento de seus indicadores para garantir o efetivo controle dos processos/produtos/serviços sob sua gestão,

a exposição ao risco e o cumprimento das leis e regulamentos aplicáveis.

3.6.2

## ATRIBUIÇÕES COMUNS A TODAS AS UNIDADES DA CAIXA

3.6.2.1 Além das atribuições estruturantes acima, na CAIXA também cabem a todas as unidades, enquanto 1ª Linha,

as seguintes atribuições comuns, observando o respectivo âmbito de atuação:

- Asseguramento dos resultados institucionais vinculados aos seus mandatos.

- Asseguramento da atuação no clientecentrismo nos mandatos sob sua gestão.

- Cenários prospectivos de mercado.

- Inteligência competitiva e/ou de mercado.

- Fomento à inovação.

- Elaboração e divulgação de normas referentes aos mandatos/responsabilidades e associação dessas aos processos

da CAIXA, exceto normas do tomo PO.

- Execução das políticas e estratégias da CAIXA.

- Gestão das informações para subsídio a decisões ou elaboração de relatórios.

- Especificação de regras de negócios para os sistemas.

- Gestão das rubricas orçamentárias vinculadas à sua unidade.

- Gestão dos recursos materiais, tecnológicos, financeiros e humanos disponibilizados, inclusive no que se refere ao

cumprimento das atribuições previstas para os cargos efetivos e funções gratificadas, conforme normas vigentes.

- Gestão de suas ações, em todos os níveis administrativos, de forma alinhada à Estratégia Corporativa do

Conglomerado CAIXA.

- Definição de padrões de atuação e orientação técnica, incluindo-os nos processos da CAIXA.

- Preservação da relação entre normas e processos e da conformidade dos processos quanto aos padrões da Gestão

por Processos.

- Catalogar todos os processos sob responsabilidade da sua unidade.

- Capacitação da equipe.

- Avaliação do desempenho.

- Conformidade das atividades com a legislação externa e normas internas.

- Atendimento a demandas das Auditorias interna e externa e dos órgãos controladores e de fiscalização, nos prazos

exigidos.

- Prestação de informações relacionadas à sua área de atuação, inclusive subsídios ao jurídico.

- Responsabilidade social e empresarial adotadas pela CAIXA, no desenvolvimento de suas ações.

- Elaboração e gestão de ato normativo relativo ao Regime de Alçadas.

- Apoio à Ouvidoria nas questões que envolvam respostas a clientes.

Vigência: 10/07/2026

23 / 30


---

## Página 24

![Imagem página 24](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Proposição de melhorias nos procedimentos operacionais.

- Segurança necessária à realização de negócios.

- Garantia da qualidade das operações de crédito originadas.

- Proposta de mecanismos de avaliação individual que privilegiem a qualidade das operações de crédito originadas

e o desempenho do ciclo de crédito.

- Gestão dos créditos da CAIXA junto à União decorrentes dos produtos e serviços sob sua responsabilidade.

- Gerenciamento de suas ações, produtos, serviços e processos em conformidade com a segurança da informação e

comunicações.

- Gestão operacional dos contratos.

- Veracidade e atualização dos dados nos sistemas enquanto gestores da informação e gestores operacionais.

- Coordenação das ações do PPA.

- Proposição e implementação das estratégias de relacionamento institucional para os representantes da CAIXA nos

Conselhos nos quais tem assento.

- Proposição e implementação da estratégia de relacionamento institucional da CAIXA com entidades externas.

- Prospecção e construção dos relacionamentos com entidades externas.

- Proposição da adesão da CAIXA à entidade externa, sua área de vinculação e o empregado representante ao

Conselho Diretor.

- Análise e manifestação quanto à pertinência de afastamentos do País em atividade oficial no exterior, a serviço ou

com a finalidade de aperfeiçoamento profissional.

- Relacionamento estratégico com empregados cedidos, bem como construir, junto com a SUTEM/GETEM, plano de

atuação dos cedidos.

- Proposição e execução de projetos que irão contribuir para a implementação da estratégia organizacional e

avaliação dos resultados atingidos após sua implantação.

- Identificação, acompanhamento, monitoramento, mitigação e reporte dos riscos incorridos.

- Envolvimento na definição do orçamento de TI.

- Acompanhamento do desenvolvimento e implantação de programas, projetos e evoluções de soluções tecnológicas.

- Parcerias, implantações e desempenho dos projetos de cooperação técnica e/ou financeira internacional.

- Homologação e aprovação da implantação de programas, projetos e evoluções de soluções tecnológicas.

- Viabilização, monitoramento ou execução de todos os processos necessários à criação, alteração, migração e

extinção de unidades, com o acompanhamento da GEGOS.

- Viabilização do mapeamento dos processos.

- Revisão de forma contínua dos principais processos sob sua gestão ou com sua participação, buscando a melhoria

e otimização e considerando os padrões de segurança adequados e os riscos incorridos.

- Atualização e mapeamento dos processos da Unidade de Negócio/Funcional, conforme disposto no [MN, OR129].

- Definição e gestão dos indicadores de desempenho dos processos, conforme disposto no [MN, OR129].

- Acompanhamento de incidentes tecnológicos reportados pela Tecnologia ou identificados pela própria área.

- Asseguramento da comunicação proativa aos clientes afetados por incidentes, inclusive tecnológicos.

3.6.3

2ª LINHA

3.6.3.1 A 2ª Linha é a função que supervisiona os riscos, composta por unidades que são identificadas,

preferencialmente, através dos riscos decorrentes dos processos da CAIXA; são vinculadas à VICOR e unidades fora

dela e exercem atividades tipicamente de 2ª Linha, a partir de seus conhecimentos especializados em temas

específicos.

3.6.3.2 As unidades de 2ª Linha são definidas por tipo de risco, considerando seus mandatos e conhecimentos

especializados.

3.6.3.3 Os processos podem abranger mais de um risco relevante associado, sendo que cada unidade de 2ª Linha

atua em cada tipo de risco, considerando sua especialidade.

Vigência: 10/07/2026

24 / 30


---

## Página 25

![Imagem página 25](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.6.3.4 Em processo com mais de um risco relevante associado, dependendo de sua probabilidade e impacto, é

possível a existência de mais de uma unidade de 2ª Linha atuando, com base em cada tipo de risco e especialidade

necessária para sua mitigação.

3.6.3.5 Cabem a todas as unidades, enquanto 2ª Linha, as seguintes atribuições comuns, observando o respectivo

âmbito de atuação:

- Monitoramento dos controles de 1ª Linha.

- Avaliação da existência e da efetividade dos indicadores de primeira linha.

- Criação de indicadores de segunda linha para as principais fragilidades da CAIXA.

- Avaliação da efetividade de ações mitigadoras.

- Definição, disponibilização e orientação do uso de metodologias de gerenciamento de riscos.

3.6.4

3ª LINHA

3.6.4.1 A 3ª Linha é a função que fornece avaliações independentes sobre os riscos, exercida pela Auditoria Interna,

a quem cabe auditar tanto os processos das Unidades que exercem o papel de 1ª Linha, quanto os de 2ª Linha .

3.6.4.2 Cabem à essas unidades, enquanto 3ª Linha, as seguintes atribuições comuns, observando o respectivo

âmbito de atuação:

- Reporte à alta administração dos aspectos relevantes relacionados ao risco, controle e governança.

- Avaliação da eficiência e eficácia das operações, da salvaguarda de ativos, da confiabilidade e integridade dos

processos de reporte, da conformidade com leis, dos regulamentos, das políticas, dos procedimentos e contratos.

- Identificação de demandas de auditoria nas unidades, processos e atividades sob sua responsabilidade.

- Elaboração dos respectivos programas de auditoria.

- Agrupamento de relatórios de auditoria e encaminhamento aos respectivos gestores.

- Proposição de soluções para minimização de riscos.

- Avaliação da eficácia dos controles internos.

- Proposição de recomendações que visem fortalecer os sistemas de controle interno.

- Proposição de melhorias nos procedimentos operacionais em decorrência de trabalhos de auditoria.

- Realização de vigilância ambiental, buscando prospectar oportunidades e nichos de mercado para os produtos da

Auditoria, assim como identificação de ameaças efetivas e potenciais e proposição de solução para sua eliminação.

- Controle da regularização de pendências decorrentes de trabalhos de auditoria.

- Orientação e acompanhamento das áreas gestoras no atendimento das demandas e das recomendações de

auditoria interna, relativa às atividades sob sua gestão.

- Controle e avaliação da eficácia e efetividade das medidas implementadas para atendimento às recomendações de

auditorias nas atividades sob sua gestão.

- Planejamento, gestão e coordenação das atividades de auditoria nos aspectos relacionados ao cumprimento das

Políticas de Atuação da CAIXA, no âmbito de sua atuação.

- Realização de auditoria nos atos e fatos administrativos relacionados a processos, negócios, produtos e serviços

no âmbito de sua atuação, inclusive com a verificação da legalidade e legitimidade.

3.7

## CONGLOMERADO CAIXA E SEU AMBIENTE DE GESTÃO

3.7.1 O Conglomerado CAIXA é o conjunto de empresas formado pela CAIXA e pelas empresas em que a CAIXA

detém participação acionária, direta ou por meio de suas subsidiárias, e seu ambiente de gestão é pautado pela

Política Institucional CAIXA [MN, PO001] e pelas Políticas Corporativas, com destaque para as Políticas de Controle

Interno, Compliance e Integridade [MN, PO002], de Gerenciamento de Riscos e de Capital CAIXA [MN, PO003], de

Transações com Partes Relacionadas [MN, PO048], de Relacionamento com Clientes e Usuários de Produtos e

Serviços da CAIXA [MN, PO055], além do Código de Ética, Conduta e Integridade da CAIXA [MN, RH200].

3.7.1.1 Considera-se como “participação acionária direta”, quando a CAIXA é detentora das ações de uma empresa

ou sociedade.

3.7.1.2 Considera-se como “participação acionária indireta”, quando a CAIXA investe por meio de outra empresa.

Vigência: 10/07/2026

25 / 30


---

## Página 26

![Imagem página 26](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

![Imagem página 26](<./imagem/OR005221-imagem-010.png>)

Descrição da imagem - [./imagem/OR005221-imagem-010.md](<./imagem/OR005221-imagem-010.md>)

3.7.1.3 Considera-se como “participação societária estratégica” a sociedade em companhia que traz similaridade,

complementariedade, suporte e sinergia aos negócios da CAIXA, com alinhamento à Estratégia Corporativa do

Conglomerado CAIXA.

3.7.1.4 Considera-se como “participada”, a empresa na qual a CAIXA possui participação societária, de forma direta

ou indireta.

3.7.1.5 Considera-se como “subsidiária integral”, a empresa na qual a CAIXA possui participação integral, atua como

único dono e exerce a governança, conforme consignado nos instrumentos societários e traduzidos em

representações nas instâncias de governança.

3.7.1.6 Considera-se como “controlada”, a participação na qual a CAIXA detém o controle, ou seja, exerce o papel de

controladora, diretamente ou através de outra controlada, sendo titular de direitos de sócio que lhe assegurem, de

modo permanente, preponderância nas deliberações sociais e o poder de eleger a maioria dos administradores.

- São as participações acima de 50% e menores que 100%, com outros sócios e governança majoritária, conforme

consignado nos instrumentos societários e traduzidos em representações nas instâncias de governança.

3.7.1.7 Considera-se como “coligada”, a sociedade na qual a CAIXA, como investidora, detém influência significativa

e exerce o poder de participar nas decisões das políticas financeira ou operacional da investida, sem controlá -la,

conforme consignado nos instrumentos societários e traduzidos em representações nas instâncias de governança.

3.7.2 A figura a seguir demonstra o Conglomerado CAIXA, com as subsidiárias CAIXA Seguridade, CAIXA Cartões,

CAIXA Loterias e CAIXA ASSET, e as principais participações acionárias detidas pela CAIXA, de forma direta ou

indireta.

![Imagem página 26](<./imagem/OR005221-imagem-011.png>)

Descrição da imagem - [./imagem/OR005221-imagem-011.md](<./imagem/OR005221-imagem-011.md>)

3.7.3 As decisões de investimento e desinvestimento da CAIXA são baseadas em oportunidades de negócio, na

complementaridade ou similaridade de produtos e serviços e na ampliação do suporte aos macroprocessos e

estratégias da Empresa, observando-se o disposto no [MN, OR161] e [MN, OR163].

3.7.4 A CAIXA, como acionista ou controladora das Participadas, realiza gestão e acompanhamento de suas

participações societárias por meio de suas unidades e Subsidiárias, em consonância com a legislação e normas

vigentes e a Estratégia Corporativa do Conglomerado CAIXA.

Vigência: 10/07/2026

26 / 30


---

## Página 27

![Imagem página 27](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

3.7.4.1 As empresas do Conglomerado e as participações da CAIXA são monitoradas sob as dimensões de

governança, alinhamento estratégico, resultados econômico-financeiros, controle interno, PLD/FT, RSAC e risco de

contágio, conforme disposto no [MN, OR189].

3.7.4.2 As diretrizes relacionadas aos processos de gestão e de governança das Participações Societárias

Estratégicas e os instrumentos que regem o relacionamento da CAIXA e as Participadas e Coligadas são definidos

pela Diretoria Executiva Estratégia e Governança das Participações (DEGEP) e constam no [MN, OR168], em

consonância com os mandatos da unidade e suas vinculadas.

3.7.4.3 Cabe às demais unidades Matriz, fornecer o subsídio necessário à gestão estratégica, comercial, negocial e

operacional de parcerias e participações societárias, no seu âmbito de atuação.

3.8

## ENTIDADE PATROCINADA (FUNCEF)

3.8.1 A Fundação dos Economiários Federais – FUNCEF é uma Entidade Fechada de Previdência Complementar

instituída pela CAIXA, com personalidade jurídica de direito privado, sem fins lucrativos e com autonomia patrimonial,

administrativa e financeira.

3.8.1.1 Tem como participantes os empregados da CAIXA e como única patrocinadora, a CAIXA.

3.8.1.2 A finalidade da FUNCEF é a administração e execução de planos de benefícios de natureza previdenciária,

nas condições previstas nos Regulamentos próprios.

3.8.1.3 Os planos de benefícios administrados e executados pela FUNCEF têm como integrantes, nos termos do seu

Estatuto Social:

- Patrocinadores: a CAIXA, a FUNCEF e quaisquer outras pessoas jurídicas que venham a aderir aos planos de

benefícios mediante assinatura de convênio de adesão;

- Participantes: pessoas físicas que aderiram ou vierem a aderir a plano de benefícios executado e administrado pela

## FUNCEF;

- Assistidos: participante de plano de benefícios, ou seu beneficiário, em gozo de benefício de prestação continuada;

- Beneficiários: dependente do Participante, ou pessoa por ele designada, inscrito no plano de benefícios.

3.8.2 A CAIXA realiza a supervisão da FUNCEF.

3.8.2.1 A GEFUB é responsável por gerir o relacionamento com a FUNCEF e os processos relacionados à previdência

complementar e benefícios de empregados, dirigentes e administradores, assim como o acompanhamento dos

resultados econômico-financeiros da patrocinada; a GESEM, o monitoramento do seu ambiente de controles internos

e a AUDAE, as atividades de auditoria interna, conforme ilustrado na figura a seguir e mandatos dispostos no Anexo

II - Estrutura CAIXA.

![Imagem página 27](<./imagem/OR005221-imagem-012.png>)

Descrição da imagem - [./imagem/OR005221-imagem-012.md](<./imagem/OR005221-imagem-012.md>)

4

## PROCEDIMENTOS

4.1

## ALTERAÇÕES NA ESTRUTURA ORGANIZACIONAL

4.1.1 Solicitações de ajustes de sigla, nome, finalidade ou mandatos de unidades, que se enquadram no exposto no

item [MN,3.1.12], devem ser formalizadas à GEGOS, obrigatoriamente via Diretoria ou Vice-Presidência, Corregedoria

e/ou Ouvidoria, conforme o caso, com justificativa qualificada que contemple minimamente:

- Especificação da demanda que contenha comparativo com o conteúdo vigente (DE-PARA), e unidades envolvidas;

Vigência: 10/07/2026

27 / 30


---

## Página 28

![Imagem página 28](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

- Justificativa fundamentando a solicitação e evidências de legislação, normas externas, assim como, outros

documentos que respaldem os ajustes propostos;

- Manifestação prévia das Diretorias ou Vice-Presidências envolvidas, quando a solicitação envolver unidades

vinculadas a Diretorias ou Vice-Presidências diferentes;

- Manifestação prévia da Corregedoria ou Ouvidoria, quando houver impacto nessas unidades ou em suas

subordinadas;

- Assinatura e anuência do Diretor ou Vice-Presidente, Corregedor e/ou Ouvidor, conforme o caso.

4.1.1.1 A GEGOS analisa a proposta de ajuste à luz do disposto neste normativo e poderá solicitar esclarecimentos,

complemento de informações e/ou evidências, de forma a subsidiar estudo relacionado ao pleito.

4.1.1.2 O resultado da análise é comunicado à unidade demandante, contudo, a divulgação dos ajustes neste

normativo é necessária para validação da proposta correspondente, quando for o caso.

4.1.2 A criação, alteração e extinção de Representações Administrativas de unidades são submetidas à apreciação

da DEGOE/SUGOS/GEGOS, obrigatoriamente via Diretoria ou Vice-Presidência, Corregedoria e/ou Ouvidoria,

conforme o caso, e devem ser isentas de impacto orçamentário em estrutura e pessoas, assim como atender ao

disposto no item [MN, 3.4].

4.1.3 As implantações de alterações organizacionais são realizadas após as aprovações pertinentes, das instâncias

de governança internas e dos órgãos de supervisão e controle externos, conforme o caso e legislação aplicável.

4.1.3.1 Todas as alterações de estrutura organizacional pressupõem a atuação colaborativa entre os gestores

envolvidos de forma a garantir a transição adequada de atividades e execução dos mandatos.

4.1.3.2 O processo de implantação de alterações é realizado em etapas, de forma a mitigar riscos de descontinuidade

de execução de atividades e processos sensíveis ao funcionamento da Empresa.

4.1.3.3 A coordenação da implantação de estrutura aprovada compete à DEGOE/SUGOS/GEGOS, com a participação

das áreas impactadas.

4.2

## ALTERAÇÃO NA ESTRUTURA ORGANIZACIONAL DA CAIXA

4.2.1 Alterações na estrutura organizacional da CAIXA observam o disposto no item [MN, 4.1].

4.2.2 A competência para a proposição de ajustes na estrutura e no organograma da CAIXA é da DEGOE.

4.2.3 Na ocorrência do item [MN, 3.1.9], caso a mudança na estrutura da CAIXA implique ajuste no quantitativo de

funções gratificadas do Conglomerado CAIXA controladas pela SEST, a DEGOE é responsável pela coordenação da

demanda e interlocução junto a aquela Secretaria, em todas as tratativas inerentes.

4.2.4 Na ocorrência do item [MN, 3.1.10], caso a alteração de estrutura implique mudança no Estatuto da CAIXA, a

DEGOE é responsável pela coordenação da demanda e interlocução junto aos órgãos externos e outras unidades da

CAIXA, em todas as tratativas inerentes.

4.2.5 Proposições de ajustes de estrutura devem conter plano de implantação abrangendo as ações necessárias à

mitigação de impactos na execução de mandatos que contempla, dentre outros, ação de comunicação às unidades e

empregados envolvidos e, quando for o caso, previsão de plano de transição.

- Plano de implantação: cronograma contendo as ações, os responsáveis e os prazos para o cumprimento de cada

uma das etapas referentes à implantação das alterações aprovadas.

- Plano de transição: plano elaborado entre os gestores envolvidos de forma a minimizar riscos de descontinuidade

das atividades que estão sendo transferidas entre as Unidades.

4.2.5.1 As áreas responsáveis pela transferência de atividades deverão elaborar Plano de Transição para a área

receptora da atividade, em até 30 (trinta) dias após a publicação da adequação de estrutura neste normativo,

contendo:

- Relatórios de Auditoria dos últimos 12 meses;

- Relatórios de precificação dos últimos 6 meses, quando for o caso;

- Relação de demandas tecnológicas abertas e/ou em andamento;

- Projetos em andamento com vista à continuidade das estratégias, inclusive os decorrentes de normas externas ;

- Relação de manuais normativos, processos mapeados e catalogados;

- Proposições e Informes apresentados pela área nos últimos 12 meses;

- Relação dos produtos e respectivos códigos de cadastro no SIICO que serão transferidos, se for o caso, e demais

informações úteis para continuidade dos negócios da CAIXA.

- Relação de sistemas departamentais e corporativos que serão transferidos em virtude da migração de mandatos .

Vigência: 10/07/2026

28 / 30


---

## Página 29

![Imagem página 29](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

4.2.5.1.1 No caso de transferência de atividades oriundas de extinção de unidades, a responsabilidade pelo

acompanhamento e elaboração do plano de transição cabe à unidade hierarquicamente superior.

4.3

## ALTERAÇÃO NA ESTRUTURA ORGANIZACIONAL DAS CONTROLADAS

4.3.1 Alterações na estrutura organizacional das Controladas observam, também, o disposto no item [MN, 4.1].

4.3.1.1 O item [MN, 4.1.1] traz a definição de alteração na estrutura organizacional que também é aplicável às

Controladas nas quais a CAIXA detém a maioria do capital social com direito a voto.

4.3.2 Alterações na estrutura pretendidas pela Controlada devem ser precedidas de análise pela GEGOS, antes da

submissão aos órgãos de governança competentes.

4.3.2.1 A Controlada encaminha proposição de alterações na estrutura e em seu organograma à GEGOS por meio de

Ofício e Nota Técnica.

4.3.2.2 A GEGOS analisa a proposição e emite Nota Técnica acerca das alterações pretendidas na estrutura

organizacional da Controlada.

4.3.2.3 A Controlada recebe Nota Técnica da GEGOS e, a depender da situação, providencia aprovação da mudança

de estrutura nas instâncias de governança previstas em seu Estatuto Social.

4.3.3 Na ocorrência do item [MN, 3.1.9], caso a mudança na estrutura da Controlada implique ajuste no quantitativo

de funções gratificadas do Conglomerado CAIXA controladas pela SEST, a GEGOS é responsável pela coordenação

das tratativas e interlocução para obtenção de autorização daquela Secretaria, envolvendo a subsidiária proponente

em todas as etapas.

4.3.4 Na ocorrência do item [MN, 3.1.10], caso a alteração de estrutura implique mudança no Estatuto da Controlada,

deve-se proceder conforme preconizado no [MN, OR134].

4.3.5 Quando concluídas as etapas de aprovação nos órgãos de Governança, de autorização de órgãos externos e

de registro na Junta Comercial, quando aplicáveis, a Controlada encaminha à GEGOS a documentação

comprobatória, para a respectiva divulgação neste normativo e implantação da alteração de estrutura organizacional,

conforme o caso e legislação aplicável.

4.4

## CONSTITUIÇÃO DE UNIDADE ÁGIL

4.4.1 A constituição de Unidade Ágil é submetida à apreciação da DEGOE e da DEPES, que avaliam a demanda sob

os aspectos de arquitetura organizacional e de gestão de pessoas, respectivamente, à luz do disposto neste normativo

e outras normas aplicáveis.

4.4.2 A unidade Matriz identifica demanda que requer criação de Unidade Ágil, observando as características dessa

tipologia contidas no item [MN, 3.4.2].

4.4.3 A solicitação de constituição é formalizada à CPE da GEGOS, via Diretoria ou Vice-Presidência, Corregedoria

e/ou Ouvidoria, conforme o caso, com justificativa qualificada que contemple minimamente as informações elencadas

a seguir:

- Objetivo da atuação da Unidade Ágil;

- Atribuições previstas para a equipe;

- Entregas e benefícios esperados;

- Indicadores para acompanhamento das entregas;

- Unidade de vinculação;

- Alinhamento estratégico;

- Origem do orçamento, se for o caso;

- Relação de empregados dedicados e unidades envolvidas;

- Assinatura e anuência do Diretor ou Vice-Presidente, Corregedor e/ou Ouvidor, conforme o caso.

4.4.3.1 Se necessário, podem ser solicitados esclarecimentos, complemento de informações e/ou evidências para

subsidiar a análise do pleito.

4.4.4 A GEGOS analisa a demanda à luz do disposto neste normativo, especialmente com relação às características

desse tipo de unidade, conforme [MN, 3.4.2] e, no caso de posicionamento favorável da DEGOE/SUGOS/GEGOS,

encaminha o pleito à DEPES.

4.4.5 A DEPES analisa a demanda sob os aspectos de gestão de pessoas e retorna sua manifestação à GEGOS.

4.4.6 A GEGOS comunica o resultado das análises à unidade demandante, com as orientações necessárias para

prosseguimento da composição da unidade ágil, se for o caso.

Vigência: 10/07/2026

29 / 30


---

## Página 30

![Imagem página 30](<./imagem/OR005221-imagem-001.png>)

Descrição da imagem - [./imagem/OR005221-imagem-001.md](<./imagem/OR005221-imagem-001.md>)

## #INTERNO.TODOS

## OR 005 221

4.4.7 Após as manifestações favoráveis das áreas responsáveis por arquitetura organizacional e gestão de pessoas,

a unidade demandante providencia a composição da Unidade Ágil, acompanha o alcance de objetivo e presta

informações relacionadas a atuação da referida unidade.

4.4.7.1 As unidades ágeis existentes podem ser consultadas pelo portal de Governança, disponível em

https://caixa.sharepoint.com/sites/governancacaixa/SitePages/governancacorporativacaixa.aspx.

4.4.8 Após a conclusão da entrega prevista, a unidade demandante providencia a desconstituição da Unidade Ágil

junto à DEPES e formaliza seu encerramento à GEGOS.

5

## ANEXOS

5.1 ANEXO I – Guia Rápido – Passo a passo para alterações na estrutura organizacional dos procedimentos do [MN,

## OR005].

5.2 ANEXO II – Estrutura CAIXA – Divulga a Arquitetura organizacional do Conglomerado CAIXA, compreendendo os

mandatos/responsabilidades das unidades gestoras.

ANEXO III – Estrutura Empresas do Conglomerado – Divulga as empresas que compõem o Conglomerado CAIXA e

suas principais participações societárias, bem como a estrutura organizacional das subsidiárias da CAIXA e os

mandatos/responsabilidades de suas unidades.

Vigência: 10/07/2026

30 / 30


----


*FIM "OR005221.md"*


*INICIO "Capítulo-Administração-e-Banco-de-Dados.md"*


----


<div class="p_YevXG_1x34n p_95C5W_1x34n" role="main" tabindex="-1">

<div class="c_3qEL9_St4iq">

<div id="spPageCanvasContent">

<div class="SPCanvas" data-sp-feature-tag="CanvasComponent.internal.bdc14887-412d-4bdb-b385-87caee53450b">

<div class="p_g9q1N_St4iq SPCanvas-canvas">

<div class="fui-FluentProvider fui-FluentProvider5 ___1c1870d f1ym3bx4 f1u2r49w f6sp5hn f1mo0ibp fjoy568 ff5ikls f1qumt79 f1bxpd7w" dir="ltr" data-is-visible="true">

<div class="CanvasComponent">

<div class="r_f9FpK_y298L Canvas grid Canvas--withLayout c_sn9Bu_y298L" data-automation-id="Canvas" style="--colorBrandBackgroundPressedGlobal: #014446; --colorBrandForeground1Global: #03787c;">

<div class="l_HsFT9_y298L" data-automation-id="CanvasLayout">

<div class="fui-FluentProvider fui-FluentProvider6 ___13yoiqc f19n0e5 f3e3pzq f1o700av fk6fouc fkhj508 figsok6 f1g96gwp" dir="ltr">

<div class="r_R06PK_y298L r_R06PK_y298L root-158 CanvasZone row CanvasZone--alignment CanvasZone--noMargin CanvasZone--read CanvasZone--fullWidth CanvasZone--fullWidth--read f_hfEFz_y298L" data-automation-id="CanvasZone">

<div class="CanvasZoneSectionContainer s_V6MSZ_y298L c_33Bi8_y298L s_y1QaJ_y298L a_zTr8w_y298L" data-automation-id="CanvasZone-SectionContainer">

<div class="r_SL6Vs_y298L f_5KSB4_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl12 f_5KSB4_y298L" data-automation-id="CanvasSection">

<div>

<div id="877a1a1e-2ba5-4aaa-b324-ddf6b1317aff" class="ControlZone ControlZone--clean f_i54d6_y298L r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div id="vpc_WebPart.PageTitle.internal.877a1a1e-2ba5-4aaa-b324-ddf6b1317aff" data-viewport-id="WebPart.PageTitle.internal.877a1a1e-2ba5-4aaa-b324-ddf6b1317aff" style="">

<div data-sp-feature-tag="PageTitle web part (Banner)" data-sp-feature-instance-id="877a1a1e-2ba5-4aaa-b324-ddf6b1317aff" role="presentation" data-sp-web-part-id="cbe7b0a9-3504-44dd-a3a3-0e5cacd07788" style="--rte-content-maxheight: 100%; --rte-content-lineclamp: 3;">

<div class="fui-FluentProvider fui-FluentProvider20 ___1c1870d f1ym3bx4 f1u2r49w f6sp5hn f1mo0ibp fjoy568 ff5ikls f1qumt79 f1bxpd7w" dir="ltr" data-is-visible="true">

<div>

<div data-automation-id="cutInShapeLayout">

<div class="b_n7tKG_Wr9CO h_2nRDj_Wr9CO">

<div class="p_i6ys__Wr9CO b_a3PzL_Wr9CO n_Lk1aT_Wr9CO f_dC-sg_Wr9CO">

<div class="b_a3PzL_Wr9CO n_Lk1aT_Wr9CO f_dC-sg_Wr9CO" role="presentation" data-automation-id="titleRegionBackgroundImage">

<img src="blob:https://caixa.sharepoint.com/93bc3f8c-0fed-4eb4-b8ab-93dd600f5de0" title="Capítulo Administração e Banco de Dados" class="b_a3PzL_Wr9CO n_Lk1aT_Wr9CO f_dC-sg_Wr9CO" style="left: 0px; top: -8.995px; position: absolute; width: 100%; height: 460.836px;" data-image="[object Object]" data-layout="[object Object]" data-focalpoint="[object Object]" data-imgwidth="1141" data-imgheight="301" data-alttext="" data-alignment="Left" data-htmltitle="&lt;h1 class=&quot;headingSpacingAbove headingSpacingBelow lineHeight1_4&quot;&gt;&lt;span class=&quot;fontSizeBannerTitle&quot;&gt;Capítulo Administração e Banco de Dados&lt;/span&gt;&lt;/h1&gt;" data-titlearialabel="" data-headline="" data-headlinecolor="0" data-controller="[object Object]" data-topicheader="" data-instanceid="877a1a1e-2ba5-4aaa-b324-ddf6b1317aff" data-authors="" data-authorbyline="" data-requestedheight="228" data-varianttheme="[object Object]" data-imageurl="" data-fullsizeimageurl="https://caixa.sharepoint.com/_vti_bin/afdcache.ashx/authitem/sites/NPRD/SiteAssets/SitePages/ADI-na-CAIXA/43803-logo-caixa-X-horizontalbanner.png?_oat_=1783678253_44c7b49a9b1ed0deb042a7277efdf473bed9ece2dcd89b0c4a11fe9400790f4c&amp;P1=1783625748&amp;P2=-301103328&amp;P3=1&amp;P4=M%2bImw6bFbw3FQ829A9N254SZGA53wmUKmHdzqzqvdcHr7C4C7i1S7wSmqjamCmBTaP9bv96EWYp2vk%2fEDOgSy1X4KQU32XRG%2b6IgkYPFIARLEYX9S7d50rZVUNkHMwpLxVfwxMbVI9wQLsgjy3UpSsdkZPqdGmB11Y6qxFdefkMaG6ixdT3zXMyYWlDfYQJvcTUfa9bShwoHkFCQRPJnv6bCUbxT90vmnP9gmqjnTqPz%2bLCEd3tc%2b6PSLi%2bg%2bbqEglXyd7DtBS3esPzWDukt5dUMdn5E1%2bT34bkqmQL5COhXB0kLix8i8Hx49VSx%2fIotFEN1euP8G3cWNH5uCCOsNA%3d%3d&amp;width=2560&amp;preferOptimized=true" data-sp-originalimgsrc="/sites/NPRD/SiteAssets/SitePages/ADI-na-CAIXA/43803-logo-caixa-X-horizontalbanner.png" width="1746" />

</div>

</div>

</div>

<div class="c_0RSS5_Wr9CO">

<div class="c_6esSS_Wr9CO c_paOVO_Wr9CO c_A0bnV_Wr9CO">

<div class="c_QQQex_Wr9CO">

<div class="c_SKLLv_Wr9CO">

<div class="___1s58c39 f1bxpd7w f1var1hp f1qjodzu f90mgf fqoagx f1u5l9ld fbw5hiz fjrke9o f1t6qaio f1cukfkc f16z3bcx" data-is-visible="true">

<div id="title_text" class="t_nvBsl_Wr9CO t_-wZcC_Wr9CO f_4lbpG_Wr9CO css-187" tabindex="-1" data-automation-id="TitleTextId" style="--rteTitleBannerFontSize: 32px;">

<div class="R_cl8zf_-aI_E title-region-rte-hero-title r_4Z-YI_Wr9CO r_wnM-P_Wr9CO r_ykeOi_Wr9CO r_6lEYS_Wr9CO BasicWebPartRTE-189 R__bFKQ_-aI_E rte-textcoherency-container rte-textcoherency-container-phallyfix" data-automation-id="pageTitleInput">

<div class="deferred-wp-title-wrapper" data-automation-id="webPartTitleReadMode">

<div class="rte-webpart link-195 ck5wprte-wrapper rte--ck5 rte--paragraphSpacing rte--headingSpacing rte--linkSelected LightMode css-160 css-180 rte--read-ck5 uniformSpacingForElements" data-sp-feature-tag="Rich Text Editor" data-sp-feature-instance-id="1_RTE" data-sp-a11y-skipkeys="13">

<div class="ck-content ck5wprte-wrapper css-160" data-automation-id="baserteck5layer" data-sp-a11y-checker-user-fixable="false" dir="auto">

# <span class="fontSizeBannerTitle">Capítulo Administração e Banco de Dados</span>

</div>

</div>

</div>

</div>

<div data-sp-fre-id="sp-fre-titleregion-2" data-offset-left="296px" data-offset-top="calc(50% - 12px)">

</div>

</div>

</div>

<div class="a__BbGL_Wr9CO a_O6lBk_Wr9CO l_xbl9s_Wr9CO" data-automation-id="authorByLine" data-alignment="Left">

</div>

<div class="p_PksbJ_Wr9CO">

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="fui-FluentProvider fui-FluentProvider7 ___13yoiqc f19n0e5 f3e3pzq f1o700av fk6fouc fkhj508 figsok6 f1g96gwp" dir="ltr">

<div class="r_R06PK_y298L r_R06PK_y298L root-158 CanvasZone row CanvasZone--alignment CanvasZone--noMargin CanvasZone--read" data-automation-id="CanvasZone">

<div class="CanvasZoneSectionContainer s_V6MSZ_y298L c_33Bi8_y298L s_y1QaJ_y298L a_zTr8w_y298L" data-automation-id="CanvasZone-SectionContainer">

<div class="r_SL6Vs_y298L c_AKU1h_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl12" data-automation-id="CanvasSection">

<div>

<div id="572a199d-ef6c-47d4-a5ef-8f874683fd0f" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div class="rte-webpart rte--ck5 rte--read-ck5 rte--paragraphSpacing rte--headingSpacing LightMode rte--indentation rte--list-rtl css-180" data-sp-feature-tag="Rich Text Editor" data-sp-feature-instance-id="572a199d-ef6c-47d4-a5ef-8f874683fd0f" dir="auto" style="--rte-quote-decoration-color: #03787c;">

<div class="ck-content rteEmphasis root-179 css-160 fixFocusIndicator fixNestedListMarkerFirefox rte--contrast-theme" data-automation-id="textBox">

A estrutura organizacional da CAIXA está definida no normativo OR005, que pode ser atualizado periodicamente. Atualmente, o Capítulo de Administração e Banco de Dados é subdividido em dois papéis principais: Administrador de Dados (AD) e Administrador de Banco de Dados (ABD).

 

Em síntese:

<figure class="table tableLeftAlign canvasRteResponsiveTable" title="Tabela">
<table class="customCells ck-table-resized">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th class="darkBackground" style="text-align: center; background-color: #005ca9;">ADI - Administrador de Dados e Informações</th>
<th class="darkBackground" style="text-align: center; background-color: #005ca9;">ABD (ou DBA) - Administrador de Banco de Dados </th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Altera <u>modelo</u> em DES (Desenvolvimento).</p></td>
<td><p>Altera <u>SGBD</u> em DES (Desenvolvimento) e TQS (Teste de Qualidade de Software), conforme requisição do time de desenvolvimento².</p></td>
</tr>
<tr>
<td><p>Faz (AD Time) e valida (AD Tático) a modelagem física¹.</p></td>
<td><p>Implementa o modelo no SGBD.</p></td>
</tr>
</tbody>
</table>
</figure>

 

¹Atualmente, não se faz na Caixa o modelo conceitual e o lógico, mas deve ser adotada em breve essa práticaH.

²As alterações em HMP (Homologação) e PRD (Produção) são feitas pela CEPIP - Centralizadora de Processamento de Informações de Produção.

Com o objetivo de garantir entregas mais eficientes e produtos de maior qualidade para os clientes, a CAIXA adota a especialização de papéis dentro dos times. Isso é viabilizado por meio da divisão das áreas em Capítulos, que oferecem suporte técnico aos colaboradores alocados nas Comunidades (ou Boxes).

 

No caso específico do papel de Administrador de Dados, destacam-se duas funções principais:

- **AD Tático**: vinculado ao Capítulo, é responsável por validar as soluções propostas e prestar consultoria técnico ao AD Time.

- **AD Time**: alocado nas squads por Linha de negócio - LN , atua diretamente na modelagem das necessidades de dados, com foco nas soluções específicas do time.

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="fui-FluentProvider fui-FluentProvider8 ___13yoiqc f19n0e5 f3e3pzq f1o700av fk6fouc fkhj508 figsok6 f1g96gwp" dir="ltr">

<div class="r_R06PK_y298L r_R06PK_y298L root-158 CanvasZone row CanvasZone--alignment CanvasZone--noMargin CanvasZone--read" data-automation-id="CanvasZone">

<div class="CanvasZoneSectionContainer s_V6MSZ_y298L c_33Bi8_y298L s_y1QaJ_y298L a_zTr8w_y298L" data-automation-id="CanvasZone-SectionContainer">

<div class="r_SL6Vs_y298L c_ZTjGP_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl8" data-automation-id="CanvasSection">

<div>

<div id="80cf19bc-9f1a-427c-a2f9-735b6a550c3d" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div id="vpc_CanvasImg.80cf19bc-9f1a-427c-a2f9-735b6a550c3d" data-viewport-id="CanvasImg.80cf19bc-9f1a-427c-a2f9-735b6a550c3d" style="">

<div class="i_8lWjD_bAiCW css-162" data-automation-id="imageRead">

<figure class="f_VuiQ7_bAiCW p_EcbDk_bAiCW" role="button" tabindex="0" aria-label="" style="width: 776px;">
<div class="i_4vwA2_bAiCW">
<div>
<img src="blob:https://caixa.sharepoint.com/ab2caf79-382e-4e2d-ac5d-1319af0674b8" class="css-184" data-sp-originalimgsrc="/sites/NPRD/SiteAssets/SitePages/ADI-na-CAIXA/1752865060212image.png" width="776" height="614" />
</div>
</div>
</figure>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="r_SL6Vs_y298L c_E00zU_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl4" data-automation-id="CanvasSection">

<div>

<div id="7f2156fb-6e1d-4248-95dd-31eb3f3ecdc1" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div id="vpc_CanvasImg.7f2156fb-6e1d-4248-95dd-31eb3f3ecdc1" data-viewport-id="CanvasImg.7f2156fb-6e1d-4248-95dd-31eb3f3ecdc1" style="">

<div class="i_8lWjD_bAiCW css-162" data-automation-id="imageRead">

<figure class="f_VuiQ7_bAiCW p_EcbDk_bAiCW" role="button" tabindex="0" aria-label="" style="width: 364px;">
<div class="i_4vwA2_bAiCW">
<div>
<img src="blob:https://caixa.sharepoint.com/435c4716-947c-4b2d-a62c-57b77edfe3e5" class="css-184" data-sp-originalimgsrc="/sites/NPRD/SiteAssets/SitePages/ADI-na-CAIXA/1752865063658image.png" width="364" height="531" />
</div>
</div>
</figure>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="fui-FluentProvider fui-FluentProvider9 ___13yoiqc f19n0e5 f3e3pzq f1o700av fk6fouc fkhj508 figsok6 f1g96gwp" dir="ltr">

<div class="r_R06PK_y298L r_R06PK_y298L root-158 CanvasZone row CanvasZone--alignment CanvasZone--noMargin CanvasZone--read" data-automation-id="CanvasZone">

<div class="CanvasZoneSectionContainer s_V6MSZ_y298L c_33Bi8_y298L s_y1QaJ_y298L a_zTr8w_y298L" data-automation-id="CanvasZone-SectionContainer">

<div class="r_SL6Vs_y298L c_AKU1h_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl12" data-automation-id="CanvasSection">

<div>

<div id="e24f40a2-2ce8-4dd6-a1a7-e94e7c026fd1" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div class="rte-webpart rte--ck5 rte--read-ck5 rte--paragraphSpacing rte--headingSpacing LightMode rte--indentation rte--list-rtl css-180" data-sp-feature-tag="Rich Text Editor" data-sp-feature-instance-id="e24f40a2-2ce8-4dd6-a1a7-e94e7c026fd1" dir="auto" style="--rte-quote-decoration-color: #03787c;">

<div class="ck-content rteEmphasis root-179 css-160 fixFocusIndicator fixNestedListMarkerFirefox rte--contrast-theme" data-automation-id="textBox">

Para garantir a consistência e a qualidade das soluções desenvolvidas, a CAIXA adota um conjunto de padrões técnicos que orientam a atuação dos profissionais. 

 

Alguns padrões adotados:

- [Framework Privacy by Design (Privacidade desde a concepção)](https://caixa.sharepoint.com/sites/5141/SitePages/Guia-Privacy-by-Design-da-Arquitetura-de-TI.aspx);

- <a href="https://siagt.caixa/glossario-termos/consultar" data-interception="off" target="_blank" rel="noopener noreferrer">Padrão de nomenclatura (Glossário de termos)</a>;

- Notação de James Martin (notação "pé-de-galinha");

- Técnicas de modelagem utilizadas: Relacional e Dimensional;

- Normalização até a 3FN.

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="fui-FluentProvider fui-FluentProvider10 ___13yoiqc f19n0e5 f3e3pzq f1o700av fk6fouc fkhj508 figsok6 f1g96gwp" dir="ltr">

<div class="r_R06PK_y298L r_R06PK_y298L root-158 CanvasZone row CanvasZone--alignment CanvasZone--noMargin CanvasZone--read" data-automation-id="CanvasZone">

<div class="CanvasZoneSectionContainer s_V6MSZ_y298L c_33Bi8_y298L s_y1QaJ_y298L a_zTr8w_y298L" data-automation-id="CanvasZone-SectionContainer">

<div class="r_SL6Vs_y298L c_AKU1h_y298L CanvasSection CanvasSection-col CanvasSection-sm12 CanvasSection--read CanvasSection-xl12" data-automation-id="CanvasSection">

<div>

<div id="e3b8ca63-6a21-4f78-abd6-23cdba1b725b" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div class="rte-webpart rte--ck5 rte--read-ck5 rte--paragraphSpacing rte--headingSpacing LightMode rte--indentation rte--list-rtl css-180" data-sp-feature-tag="Rich Text Editor" data-sp-feature-instance-id="e3b8ca63-6a21-4f78-abd6-23cdba1b725b" dir="auto" style="--rte-quote-decoration-color: #03787c;">

<div class="ck-content rteEmphasis root-179 css-160 fixFocusIndicator fixNestedListMarkerFirefox rte--contrast-theme" data-automation-id="textBox">

[TE074030 - Modelagem de Dados Relacional para Sistemas e Aplicativos de Negócio CAIXA](https://normas.caixa/normativo/TE074030)<span class="fontColorNeutralSecondaryAlt"> - 3.2.3.2.3 A  equipe  ADI  cuida  exclusivamente  do  modelo  dedados  do  ambiente  de desenvolvimento  (DES)  e, excepcionalmente,  quando  autorizado  pela  SUART,  poderá  ser  avaliado  outro  tipo  de  modelo de  dados para  o ambiente. </span>

</div>

</div>

</div>

</div>

<div id="d2eb1f99-598c-4181-9635-cc24e653806f" class="ControlZone ControlZone--clean r_Ab1x8_y298L" data-automation-id="CanvasControl">

<div class="ControlZone--control">

<div id="vpc_WebPart.ButtonWebPart.internal.d2eb1f99-598c-4181-9635-cc24e653806f" data-viewport-id="WebPart.ButtonWebPart.internal.d2eb1f99-598c-4181-9635-cc24e653806f" tabindex="0" role="region" aria-busy="true" style="width: 100%; min-height: 40px; flex: 0 0 auto;">

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="c_pOUh7_St4iq">

<div id="CommentsWrapper" class="c_dWimP_St4iq">

<div id="vpc_Page.CommentsWrapper.internal.2610b4b4-550c-4548-b431-aa3ab709c184" data-viewport-id="Page.CommentsWrapper.internal.2610b4b4-550c-4548-b431-aa3ab709c184" tabindex="0" role="region" aria-busy="true" style="width: 100%; min-height: 225px; flex: 0 0 auto;">

</div>

</div>

</div>

</div>

<div id="vpc_Page.SiteFooter.internal.03025612-a400-4804-a78e-e1493200a43b" data-viewport-id="Page.SiteFooter.internal.03025612-a400-4804-a78e-e1493200a43b" tabindex="0" role="region" aria-busy="true" style="width: 100%; min-height: 48px; flex: 0 0 auto;">

</div>

</div>


----


*FIM "Capítulo-Administração-e-Banco-de-Dados.md"*


*INICIO "Orientacoes_Iniciais_Acionamento_Capitulo_v1.md"*


----


# Orientações_Iniciais_Acionamento_Capitulo_v1

**Arquivo de origem:** `Orientações_Iniciais_Acionamento_Capitulo_v1.pdf`

**Observação:** as imagens abaixo são renderizações das páginas do PDF, preservando fluxos, telas e elementos visuais que podem não aparecer integralmente no texto extraído.


## Página 1

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 1](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img01.png)


### Texto extraído

Ferramentas – GID.Caixa
Dezembro/2024
Acionamento de Capítulos


## Página 2

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 2](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img02.png)


### Texto extraído

2

Administrador de Dados e Informações – Nível Básico

SUMÁRIO

                 01. Introdução

          3
       02. Conexão ao RTC via VPN                   3
                 03. Acesso a ferramenta
4
                 04. Acionamento ao Capítulo

4
                 05. Cadastro de demanda

5

       06. Inserção de Informação

6

       07. Conclusão

7


## Página 3

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 3](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img03.png)


### Texto extraído

3

Administrador de Dados e Informações – Nível Básico

1. Introdução
- 
Objetivo: Este guia mostrará como acessar e preencher o formulário de
acionamento de capítulos no sistema da Caixa denominado GID.
- 
Pré-requisitos:
  - Navegador de internet instalado.
  - Credenciais de acesso (usuário e senha) para o GID.
2. Conexão ao RTC via VPN
- 
IMPORTANTE: A abertura da aplicação e a conexão ao repositório somente são
possíveis remotamente através da VPN.
- 
Conexão VPN: Utilize prioritariamente a VPN Caixa TI  alcor11.caixa.gov.br para
configuração (substituindo a VPN CAIXA conforme mostrado na imagem abaixo).
- 
Acesso Lógico: Certifique-se de que o perfil REMOTO_VPN_TI_CEDES foi
solicitado e concedido via acesso lógico.
- 
Erros de Conexão: Se ocorrer algum erro, reconecte-se à VPN Caixa TI, o que
geralmente resolve o problema.


## Página 4

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 4](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img04.png)


### Texto extraído

4

Administrador de Dados e Informações – Nível Básico

3. Acesso a ferramenta
1. Abra o Site:
  - Abra o navegador de internet (como Google Chrome, Firefox ou Edge).
  - Na barra de endereços, digite: http://ti.caixa.br e pressione "Enter".
  - Aguarde o carregamento completo da página inicial.
2. Faça o Login:
  - Localize os campos de login na página.
  - Id do Usuário: Digite seu código de Id do usuário. Este é o identificador
que você usa para acessar o sistema, igual a sua matrícula funcional sem
  - digito.
  - Senha: Digite sua senha com cuidado. Certifique-se de que a tecla "Caps
Lock" não está ativada, a menos que sua senha exija letras maiúsculas.
  - Clique no botão "Entrar" ou pressione "Enter" no teclado.

4. Acionamento de Capítulo
1. Abrir a solicitação:
  - Após o login, você será direcionado para o painel principal.
  - Procure no menu principal ou na barra lateral a opção chamada
"Acionamento Capítulos".
  - Clique em "Acionamento Capítulos" para acessar a seção desejada.


## Página 5

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 5](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img05.png)


### Texto extraído

5

Administrador de Dados e Informações – Nível Básico

5. Cadastro da demanda
1. Acesse Itens de Trabalho:
  - Na parte superior da página, encontre e clique na seção "Itens de
Trabalho".
  - Um menu suspenso ou uma nova página será exibida.
  - Selecione "Acionamento de Capítulos" a partir das opções disponíveis,
será exibida o formulário em versão web conforme tela abaixo:


## Página 6

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 6](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img06.png)


### Texto extraído

6

Administrador de Dados e Informações – Nível Básico

6. Inserção de informações
1. Preencha o formulário eletrônico no GID:

  - Título: No campo "Título", insira um nome claro e conciso que resuma o
objetivo do seu pedido.
  - Solicitante: Preencha com o seu nome ou o nome do responsável pelo
pedido.
  - Capítulo: Selecione "Dados" no campo de capítulo para categorizar
corretamente seu pedido.
  - Assunto: Insira um breve resumo do assunto do pedido. Seja específico
para facilitar a compreensão.
  - Palavras-chave: Adicione termos relevantes que descrevam o conteúdo
ou o objetivo do pedido. Isso ajuda na busca futura.
  - Responsável pela Publicação da Loja: Informe o nome da pessoa ou
equipe que será responsável pela publicação.
  - Descrição da Necessidade: Detalhe de forma clara e completa a
necessidade ou o problema que está sendo abordado. Inclua todas as
informações relevantes que possam ajudar na análise e execução do
pedido.


## Página 7

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 7](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img07.png)


### Texto extraído

7

Administrador de Dados e Informações – Nível Básico

  - Salvar:
  - Revise todas as informações inseridas para garantir que estão corretas.
  - Após verificar, localize o botão "Salvar" na parte inferior ou superior do
formulário.
  - Clique em "Salvar" para registrar suas informações no sistema.
Vide Exemplo:

7. Conclusão
- 
Resumo: Agora você aprendeu como realizar o cadastramento de acionamento
do capítulo de dados no ambiente CAIXA.
- 
Próximos Passos: Acesse as demandas da sua equipe e realize o
acompanhamento do atendimento pelo GID.


## Página 8

![Orientações_Iniciais_Acionamento_Capitulo_v1 - página 8](imagens/Orientacoes_Iniciais_Acionamento_Capitulo_v1_img08.png)


### Texto extraído

8

Administrador de Dados e Informações – Nível Básico

Acionamento de Capítulos de Dados
GEPAC11- NPRD
Versão 1 - 09/12/2024
Diogo Grawingholt Rozario Solla


----


*FIM "Orientacoes_Iniciais_Acionamento_Capitulo_v1.md"*


*INICIO "Orientacoes_Iniciais_Criterios_Validacao_v1.md"*


----


# Orientações_Iniciais_Criterios_Validacao_v1

**Arquivo de origem:** `Orientações_Iniciais_Criterios_Validacao_v1.pdf`

**Observação:** as imagens abaixo são renderizações das páginas do PDF, preservando fluxos, telas e elementos visuais que podem não aparecer integralmente no texto extraído.


## Página 1

![Orientações_Iniciais_Criterios_Validacao_v1 - página 1](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img01.png)


### Texto extraído

Ferramentas – Gestão de Dados
Dezembro/2024
Critério para Validação de um
Modelo de Dados


## Página 2

![Orientações_Iniciais_Criterios_Validacao_v1 - página 2](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img02.png)


### Texto extraído

2

Administrador de Dados e Informações – Nível Básico

SUMÁRIO

                 01. Introdução

          3
                 02. Pré-validação do Modelo

3
                 03. Insumos para Validação

5
                 04. Critérios de Validação

6
                 05. Conclusão

6


## Página 3

![Orientações_Iniciais_Criterios_Validacao_v1 - página 3](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img03.png)


### Texto extraído

3

Administrador de Dados e Informações – Nível Básico

1. Introdução
- 
Objetivo: Este guia explicará o processo de pré-validação e validação de um
modelo de dados, incluindo os critérios e insumos necessários.
- 
Pré-requisitos:
  - Acesso à ferramenta de Pré-Validação do Capítulo de Dados.
  - Última versão aprovada do modelo de dados.

2. Pré-validação do Modelo
1. Acessando a Ferramenta de Pré-Validação:
  - Utilize a ferramenta de Pré-Validação, disponível no Gestão de Dados -
http://gestaodedados.coresp.caixa/#;
  - A utilização desta ferramenta é obrigatória e constitui um pré-requisito
para o início da validação pelo ADI.

2. Realizando a Pré-Validação:


## Página 4

![Orientações_Iniciais_Criterios_Validacao_v1 - página 4](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img04.png)


### Texto extraído

4

Administrador de Dados e Informações – Nível Básico

Na ferramenta do Gestão de Dados, clique em Pré-Validação de Modelo;
Na opção “Selecione o arquivo .PDM para validação”, anexe o arquivo do
Power Designer, .PDM, referente ao modelo que você deseja efetuar a pré-
validação;

Na opção “Selecionar o arquivo .XML gerado na comparação com o
repositório:”, anexe o relatório gerado pelo “Compare”, efetuado no Power
Designer, pela comparação do modelo de dados do Repositório da Caixa e o
modelo de dados a ser pré-validado (somente no caso de já existir modelo no
Repositório);

Para finalizar, clique no botão Gerar Planilha Excel de Pré-Validação e depois
clique em Validar PDM.

O relatório de Pré-Validação será gerado no EXCEL.

3. Gerando o Relatório de Pré-Validação:

  - A ferramenta executa validações automáticas e gera um relatório de
erros e alertas.
  - As validações são baseadas nas regras definidas no Validações
executadas no Pré-Validador.
  - O objetivo é permitir que o modelador avalie os itens fora das instruções
normativas, garantindo que o legado já implantado não seja revalidado.


## Página 5

![Orientações_Iniciais_Criterios_Validacao_v1 - página 5](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img05.png)


### Texto extraído

5

Administrador de Dados e Informações – Nível Básico

4. Gerando a Solicitação de Validação de Modelo de Dados:

  - Além do relatório, a ferramenta também gera automaticamente um
documento de Solicitação de Validação de Modelo de Dados pré-
preenchido.
  - Esse documento é um insumo fundamental para o início da validação
pelo ADI.
  - O usuário deve revisar e validar as informações geradas, realizando
complementações, se necessário.

3. Insumos para validação
- 
Para iniciar o processo de validação pela ADI, são necessários os seguintes
insumos:

1. Relatório de Pré-Validação:

Deve estar sem erros ou com suas respectivas justificativas.
2. Solicitação de Validação de Modelo de Dados:

Deve estar preenchida e conter os objetos alvo da demanda.
3. Regras de Negócio:

Definições claras sobre as regras que governam o modelo de
dados.
4. Histórias de Usuário:

Descrições das funcionalidades esperadas no sistema.
5. Descrição de Interface:

Informações detalhadas sobre a interface do sistema, se
aplicável.

- 
Insumos Opcionais (não obrigatórios, mas que podem auxiliar na validação):
  - Requisitos não-funcionais.
  - Especificações Suplementares.
  - Layouts de telas.


## Página 6

![Orientações_Iniciais_Criterios_Validacao_v1 - página 6](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img06.png)


### Texto extraído

6

Administrador de Dados e Informações – Nível Básico

  - Documentos legais.
  - Documentação sobre o fluxo de processo da aplicação.

4. Critérios de Validação
- 
A validação do modelo de dados na CAIXA será realizada com base nos seguintes
critérios:
1. Adequação às Normas e Padrões:

Verifica se o modelo está em conformidade com os normativos e
padrões adotados pela CAIXA.
5. Conclusão
- 
Resumo: Agora você compreende como realizar a Pré-Validação do modelo de
dados e os insumos necessários para iniciar a validação pela ADI.
- 
Próximos Passos: Garanta que todos os documentos e relatórios estão em
conformidade com as exigências e submeta o modelo para validação final.


## Página 7

![Orientações_Iniciais_Criterios_Validacao_v1 - página 7](imagens/Orientacoes_Iniciais_Criterios_Validacao_v1_img07.png)


### Texto extraído

7

Administrador de Dados e Informações – Nível Básico

Critérios para validação de um
Modelo de Dados
GEPAC11- NPRD
Versão 1 - 13/12/2024


----


*FIM "Orientacoes_Iniciais_Criterios_Validacao_v1.md"*


*INICIO "Orientacoes_Iniciais_CheckModel_v1.md"*


----


# Orientações_Iniciais_CheckModel_v1

**Arquivo de origem:** `Orientações_Iniciais_CheckModel_v1.pdf`

**Observação:** as imagens abaixo são renderizações das páginas do PDF, preservando fluxos, telas e elementos visuais que podem não aparecer integralmente no texto extraído.


## Página 1

![Orientações_Iniciais_CheckModel_v1 - página 1](imagens/Orientacoes_Iniciais_CheckModel_v1_img01.png)


### Texto extraído

Ferramentas – PowerDesigner
Outubro/2024
Check Model do Modelo de Dados


## Página 2

![Orientações_Iniciais_CheckModel_v1 - página 2](imagens/Orientacoes_Iniciais_CheckModel_v1_img02.png)


### Texto extraído

2

Administrador de Dados e Informações – Nível Básico

SUMÁRIO

                 01. Introdução

          3
                 02. Acessando o PowerDesigner
3
                 03. Localizando o Modelo de Dados
3

       04. Iniciando o Check Model

3
               05. Executando o Check Model

4

       06. Corrigindo Inconsistências

5

       07. Salvando o Modelo de Dados
5
       08. Conclusão

6


## Página 3

![Orientações_Iniciais_CheckModel_v1 - página 3](imagens/Orientacoes_Iniciais_CheckModel_v1_img03.png)


### Texto extraído

3

Administrador de Dados e Informações – Nível Básico

1. Introdução
- 
Objetivo: Este guia mostrará como realizar o processo de Check Model no
PowerDesigner para identificar e corrigir inconsistências no modelo de dados.
- 
Pré-requisitos:
  - PowerDesigner instalado.
  - Modelo de dados aberto no PowerDesigner.
2. Acessando o PowerDesigner
- Localize e abra o PowerDesigner em seu computador.
3. Localizando o Modelo de Dados
- No PowerDesigner, localize e abra o modelo que deseja verificar.
- Certifique-se de que todas as alterações necessárias foram salvas antes de iniciar
  - processo de Check Model.
4. Iniciando o Check Model
1. Abrir o Menu Tools:
  - Na barra de menus, clique em Tools.
  - Selecione a opção Check Model.


## Página 4

![Orientações_Iniciais_CheckModel_v1 - página 4](imagens/Orientacoes_Iniciais_CheckModel_v1_img04.png)


### Texto extraído

4

Administrador de Dados e Informações – Nível Básico

2. Configuração do Check Model:
  - Na janela de configuração, escolha as opções para definir os critérios e
parâmetros que o modelo de atender ao realizar uma verificação de
consistência.
  - Se necessário, ajuste os parâmetros de verificação para atender às regras
específicas do seu projeto.

5. Executando o Check Model
1. Iniciar o Processo:
  - Clique no botão OK para iniciar a verificação.
2. Analisar os Resultados:
  - O PowerDesigner exibirá uma lista de erros, avisos e notificações
encontrados no modelo.


## Página 5

![Orientações_Iniciais_CheckModel_v1 - página 5](imagens/Orientacoes_Iniciais_CheckModel_v1_img05.png)


### Texto extraído

5

Administrador de Dados e Informações – Nível Básico

6. Corrigindo Inconsistências
1. Selecionar Itens para Correção:
  - Clique em cada erro ou aviso na lista para destacar a área correspondente
no modelo.
2. Realizar Ajustes Necessários:
  - Corrija os problemas diretamente no modelo, como renomear objetos,
ajustar referências ou corrigir inconsistências de tipos de dados.
3. Reexecutar o Check Model:
  - Após realizar as correções, repita o processo de Check Model para
garantir que todas as inconsistências foram resolvidas.
7. Salvando o Modelo de Dados
- 
Após corrigir os problemas, salve as alterações no modelo.
- 
Se o modelo estiver conectado a um repositório, considere realizar um Check-in
para registrar as modificações.


## Página 6

![Orientações_Iniciais_CheckModel_v1 - página 6](imagens/Orientacoes_Iniciais_CheckModel_v1_img06.png)


### Texto extraído

6

Administrador de Dados e Informações – Nível Básico

8. Conclusão
- 
Resumo: Agora você aprendeu como realizar um Check Model no
PowerDesigner para identificar e corrigir inconsistências em um modelo de
dados.
- 
Próximos Passos: Realize verificações periódicas no modelo para garantir a
conformidade com as regras do projeto e a consistência dos dados.


## Página 7

![Orientações_Iniciais_CheckModel_v1 - página 7](imagens/Orientacoes_Iniciais_CheckModel_v1_img07.png)


### Texto extraído

7

Administrador de Dados e Informações – Nível Básico

Check Model do Modelo de Dados
GEPAC11- NPRD
Versão 1 - 25/10/2024
Fernando de Souza Aires


----


*FIM "Orientacoes_Iniciais_CheckModel_v1.md"*


*INICIO "Orientacoes_Iniciais_Dicionario_Dados_v1.md"*


----


# Orientações_Iniciais_Dicionário_Dados_v1

**Arquivo de origem:** `Orientações_Iniciais_Dicionário_Dados_v1.pdf`

**Observação:** as imagens abaixo são renderizações das páginas do PDF, preservando fluxos, telas e elementos visuais que podem não aparecer integralmente no texto extraído.


## Página 1

![Orientações_Iniciais_Dicionário_Dados_v1 - página 1](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img01.png)


### Texto extraído

Ferramentas – Power Designer
Dezembro/2024
Dicionário de Dados


## Página 2

![Orientações_Iniciais_Dicionário_Dados_v1 - página 2](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img02.png)


### Texto extraído

2

Administrador de Dados e Informações – Nível Básico

SUMÁRIO

Sumário
1. Introdução ............................................................................................................... 3
O que é um Dicionário de Dados? ........................................................................ 3
Finalidade do Dicionário de Dados ...................................................................... 3
Como um Dicionário de Dados Pode Ajudar o Time de Desenvolvimento . 3
2. Procedimentos ....................................................................................................... 4
1º passo ...................................................................................................................... 4
2º passo ...................................................................................................................... 4
3º Passo ...................................................................................................................... 5
4º passo ...................................................................................................................... 6
5º passo ...................................................................................................................... 7
6º Passo: ..................................................................................................................... 8
7º Passo ...................................................................................................................... 9


## Página 3

![Orientações_Iniciais_Dicionário_Dados_v1 - página 3](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img03.png)


### Texto extraído

3

Administrador de Dados e Informações – Nível Básico

1. Introdução
O que é um Dicionário de Dados?

Um dicionário de dados é um documento que contém informações
detalhadas sobre os dados utilizados em um sistema ou banco de dados. Ele
descreve cada elemento de dado, incluindo tabelas, colunas, tipos de dados,
restrições e os relacionamentos entre os dados.
Vale destacar que essas informações podem ser obtidas nas propriedades
dos objetos do modelo de dados. Além disso, o recurso de relatório pode ser
utilizado para gerar um documento consolidado que reúne todos os objetos
que compõem o modelo de dados.

Finalidade do Dicionário de Dados

A principal finalidade de um dicionário de dados é fornecer um
entendimento claro e comum sobre os dados para todas as partes
interessadas,
incluindo
desenvolvedores,
analistas
de
negócios,
administradores de banco de dados e demais usuários como Scrum Master e
Product Owner. Ele serve como uma referência centralizada que ajuda a
garantir que todos tenham uma visão consistente e precisa dos dados.

Como um Dicionário de Dados Pode Ajudar o Time de Desenvolvimento

- Clareza e Consistência: Imagine que você está desenvolvendo um
sistema de gerenciamento de clientes. O dicionário de dados descreve
que a tabela "Clientes" possui colunas como "NU_CLIENTE" (número
inteiro),
"NO_CLIENTE"
(texto),
"DT_NASCIMENTO"
(data)
e
"DE_EMAIL" (texto). Isso ajuda todos os desenvolvedores a
entenderem exatamente que tipo de dados são esperados para cada
coluna e evita confusões.
- Facilidade de Comunicação: Se um desenvolvedor precisar esclarecer
com um analista de negócios sobre como armazenar o número de


## Página 4

![Orientações_Iniciais_Dicionário_Dados_v1 - página 4](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img04.png)


### Texto extraído

4

Administrador de Dados e Informações – Nível Básico

telefone dos clientes, ambos podem consultar o dicionário de dados
para ver que a coluna “NU_DDD” deve ser um texto com um máximo
de 2 caracteres e "NU_TELEFONE" deve ser um texto com um máximo
de 9 caracteres. Isso facilita a comunicação e reduz mal-entendidos.
- Melhoria na Qualidade do Código: Sabendo que a coluna "Email" deve
seguir um formato específico, os desenvolvedores podem implementar
validações no código para garantir que todos os endereços de email
inseridos no sistema sigam esse formato. Isso melhora a qualidade dos
dados e reduz erros.
- Facilita a Manutenção: Quando um novo desenvolvedor entra na
equipe, ele pode rapidamente consultar o dicionário de dados para
entender a estrutura do banco de dados e o propósito de cada tabela
e coluna. Isso acelera o processo de integração e minimiza o tempo
necessário para se familiarizar com o sistema.
- Auxilia na Documentação: O dicionário de dados pode ser usado como
parte da documentação do projeto. Quando os desenvolvedores
precisam escrever manuais para usuários finais ou documentos
técnicos, eles podem referenciar o dicionário de dados para obter
descrições precisas dos elementos de dados.
2. Procedimentos

Como realizar a operacionalização da geração de dicionário de dados na
ferramenta Power Designer em passo a passo:

1º passo
Com o modelo de dados aberto no Power Designer, selecione a opção
“report” e “report wizard”.

2º passo
Preencha o nome do “report” com o nome do modelo de dados, e selecione a
linguagem do dicionário de dados como português, e clique em avançar.


## Página 5

![Orientações_Iniciais_Dicionário_Dados_v1 - página 5](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img05.png)


### Texto extraído

5

Administrador de Dados e Informações – Nível Básico

3º Passo
Na próxima tela, é informado os tipos de geração de dicionário de dados,
tendo como opção HTML, RFT e Local (que posteriormente será convertido
em arquivo de pdf) e selecione as cores do modelo, sendo recomendado
deixar na opção como “light blue”, e depois clique em avançar.


## Página 6

![Orientações_Iniciais_Dicionário_Dados_v1 - página 6](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img06.png)


### Texto extraído

6

Administrador de Dados e Informações – Nível Básico

4º passo
Nas opções de estrutura do relatório, sugerimos deixar todos os itens
marcados.


## Página 7

![Orientações_Iniciais_Dicionário_Dados_v1 - página 7](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img07.png)


### Texto extraído

7

Administrador de Dados e Informações – Nível Básico

5º passo
Nesta opção, no item de seleção dos objetos (select na object type) do banco
de dados, sugerimos selecionar todos, e em configuração do layout
(configure the layout), sugerimos verificar cada item com intuito de realizar
uma personalização dos dados que são relevantes para o time.


## Página 8

![Orientações_Iniciais_Dicionário_Dados_v1 - página 8](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img08.png)


### Texto extraído

8

Administrador de Dados e Informações – Nível Básico

6º Passo:
Nesta janela, deixe todos os itens marcados e clique em concluir.


## Página 9

![Orientações_Iniciais_Dicionário_Dados_v1 - página 9](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img09.png)


### Texto extraído

9

Administrador de Dados e Informações – Nível Básico

7º Passo
Após concluir, será solicitado para informar o caminho em que salvar o
dicionário de dados em seu computador. Será gerada uma pasta contendo
os arquivos de html para consulta do dicionário de dados e um arquivo html
com a página do relatório, similar a demostrada abaixo, e posteriormente,
compacte o arquivo para enviá-los ao time de desenvolvimento.


## Página 10

![Orientações_Iniciais_Dicionário_Dados_v1 - página 10](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img10.png)


### Texto extraído

10

Administrador de Dados e Informações – Nível Básico


## Página 11

![Orientações_Iniciais_Dicionário_Dados_v1 - página 11](imagens/Orientacoes_Iniciais_Dicionario_Dados_v1_img11.png)


### Texto extraído

11

Administrador de Dados e Informações – Nível Básico

Dicionário de dados
GEPAC11- NPRD
Versão 1 - 23/12/2024


----


*FIM "Orientacoes_Iniciais_Dicionario_Dados_v1.md"*


*INICIO "Orientacoes_Iniciais_Documentacao_AD_v1.md"*


----


# Orientações_Iniciais_Documentação_AD_v1

**Arquivo de origem:** `Orientações_Iniciais_Documentação_AD_v1.pdf`

**Observação:** as imagens abaixo são renderizações das páginas do PDF, preservando fluxos, telas e elementos visuais que podem não aparecer integralmente no texto extraído.


## Página 1

![Orientações_Iniciais_Documentação_AD_v1 - página 1](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img01.png)


### Texto extraído

Documentação ADI
Novembro/2024
Guias para Consulta


## Página 2

![Orientações_Iniciais_Documentação_AD_v1 - página 2](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img02.png)


### Texto extraído

2

Administrador de Dados e Informações – Nível Básico

SUMÁRIO
                 01. Introdução

3
                 02. Acessando os Guias

3
                 03. Guias

3
3.1. Configuração da ferramenta SAP
PowerDesigner

3
3.2. Nomenclatura de Objetos

3
3.3. Expressões Regulares que definem
Objetos Físicos dos SGBD

4
3.4. Datatypes permitidos por Sistema
 Gerenciador de Banco de Dados

4
3.5. Guia de Padrões e Convenções de
Diagrama de Modelos de Dados CAIXA
4
3.6. Guia para Modelagem e
Validação de Modelos de Dados

5
3.7. Lista de Objetos para
Validação do Modelo de Dados

5
3.8. Guia Privacy by Design da
Arquitetura de TI

5
3.9. Validações executadas
no Pré-Validador

6
3.10. Processo de Validação de Modelo de
Dados - Cálculo de Estimativa de
Prazo de Atendimento

6
3.11. Guia de Modelagem - Spring Batch
6

       04. Conclusão

7


## Página 3

![Orientações_Iniciais_Documentação_AD_v1 - página 3](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img03.png)


### Texto extraído

3

Administrador de Dados e Informações – Nível Básico

1. Introdução
- 
Objetivo: Este documento apresentará os diversos documentos disponíveis para
auxiliar o Administrador de Dados e Informações (ADI) na validação do modelo
de dados. Além disso, detalhará o objetivo de cada guia incluído.
2. Acessando os Guias
- Acesse a página da Arquitetura de Dados através do link:
https://caixa.sharepoint.com/sites/5141/SitePages/Arquitetura-de-Dados.aspx
3. Guias
3.1.
Configuração
da
ferramenta
SAP
PowerDesigner
- Objetivo: Configurar a utilização da ferramenta SAP PowerDesigner para
modelagem de dados, promovendo a eficiência no desenvolvimento e na
gestão dos sistemas.
- Link:
https://caixa.sharepoint.com/sites/5141/SitePages/SAP-PowerDesigner-
Configuracao.aspx
- Palavras-chave: Configuração, Licença e Repositório.
- Data de Atualização: Não possui.
3.2. Nomenclatura de Objetos
- Objetivo: Estabelecer regras claras para a nomeação de objetos na
modelagem de dados, garantindo padronização, clareza, compreensão,
facilidade de manutenção e compatibilidade com ferramentas.
- Link:
https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-
Objetos.aspx
- Palavras-chave: Objetos, Coluna, Tabela, Abreviatura e Relacionamento.
- Data de Atualização: Não possui.

3.3. Expressões Regulares que definem Objetos


## Página 4

![Orientações_Iniciais_Documentação_AD_v1 - página 4](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img04.png)


### Texto extraído

4

Administrador de Dados e Informações – Nível Básico

Físicos dos SGBD
- Objetivo: Estabelecer diretrizes para a nomenclatura de objetos físicos
nos SGBDs DB2, SAP, ASE, SAP IQ, SQL Server, Oracle e Postgres. As
regras incluem o uso de maiúsculas e underscores, além de padrões
específicos para databases de extração, múltiplas Foreign Keys e
sequences não vinculadas a tabelas.
- Link:
https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-
Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx
- Palavras-chave: Objetos físicos, Database, Foreign Key, Sequence e
Serial.
- Data de Atualização: Não possui.
3.4. Datatypes permitidos por Sistema Gerenciador
de Banco de Dados
- Objetivo: Assegurar a compatibilidade e consistência na comunicação
entre sistemas, garantido que a informação recebida pelo sistema de
destino seja idêntica à enviada pelo sistema de origem, enquanto se
considera a volumetria dos datatypes utilizados.
- Link:
https://caixa.sharepoint.com/sites/5141/SitePages/Datatypes-
SGBD.aspx
- Palavras-chave: DB2, Microsoft SQL Server, Oracle, PostgreSQL, SAP ASE
e SAP IQ.
- Data de Atualização: Não possui.
3.5. Guia de Padrões e Convenções de Diagrama de
Modelos de Dados CAIXA
- Objetivo: Apresentar uma metodologia e orientações para padronizar e
organizar a construção e manutenção de modelo de dados.
- Link:
https://caixa.sharepoint.com/:w:/r/sites/5141/_layouts/15/Doc.aspx?s
ourcedoc=%7B1067108a-24e2-4118-9bdc-


## Página 5

![Orientações_Iniciais_Documentação_AD_v1 - página 5](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img05.png)


### Texto extraído

5

Administrador de Dados e Informações – Nível Básico

9ea1c4a3bc53%7D&action=view&wdAccPdf=0&wdEmbedFS=1
- Palavras-chave: Diagramas, Convenções, Padrões e Indicadores.
- Data de Atualização: 14/01/2022.
3.6. Guia para Modelagem e Validação de Modelos
de Dados
- Objetivo: Facilitar o entendimento sobre modelagem e validação de
modelo de dados, apresentando de forma detalhada as normas e regras
contidas nos normativos da CAIXA.
- Link:
https://caixa.sharepoint.com/sites/5141/SitePages/Guia-para-
Modelagem-e-Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx
- Palavras-chave: Modelagem de Dados, Administração de Dados,
Documentação,
Dicionarização,
Objetos,
Tabelas,
Colunas
e
Relacionamentos.
- Data de Atualização: 01/03/2024.
3.7. Lista de Objetos para Validação do Modelo de
Dados
- Objetivo: Exibir a lista de objetos para a validação do modelo de dados,
categorizada de acordo com a severidade.
- Link:
https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-
Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx
- Palavras-chave: Tabela, Relacionamento, Coluna, Chave Primária, Área
de Interesse, Objetos Físicos, Modelo Compartilhado e Normalização.
- Data de Atualização: Não possui.
3.8. Guia Privacy by Design da Arquitetura de TI
- Objetivo: Atender à Lei Geral de Proteção de Dados (LGPD) conforme
estabelecido pela CAIXA no CR439 e demonstrar como a Arquitetura de
TI previne o uso indevido de dados, seguindo os sete princípios do Privacy
by Design.
- Link: https://caixa.sharepoint.com/sites/5141/SitePages/Guia-Privacy-
by-Design-da-Arquitetura-de-TI.aspx
- Palavras-chave: Privacidade, Funcionalidade, Segurança, Visibilidade e


## Página 6

![Orientações_Iniciais_Documentação_AD_v1 - página 6](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img06.png)


### Texto extraído

6

Administrador de Dados e Informações – Nível Básico

Transparência.
- Data de Atualização: 09/12/2021.
3.9. Validações executadas no Pré-Validador
- Objetivo: Padronizar e organizar a construção e manutenção do modelo
de dados, garantindo conformidade com as melhores práticas, normas e
padrões vigentes.
- Link:
https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3
%B5es-executadas-no-Pr%C3%A9-Validador.aspx
- Palavras-chave: Modelo, Database, Entidade, Chave Primária, Atributo,
Índice, Relacionamento, Sequence, View e Tablespace.
- Data de Atualização: Não possui.
3.10. Processo de Validação de Modelo de Dados -
Cálculo de Estimativa de Prazo de Atendimento
- Objetivo: Estabelecer uma métrica de produtividade para o
Administrador de Dados do Capítulo de Dados, baseada na contagem de
objetos/ações, e estimar um prazo de atendimento para as demandas de
validação de modelos de dados.
- Link:
https://caixa.sharepoint.com/sites/5141/SitePages/Estimativa-Prazo-
Atendimento-UAM.aspx
- Palavras-chave:
Modelo
de
Dados,
Produtividade,
Objetos
e
Metodologia.
- Data de Atualização: Não possui.
3.11. Guia de Modelagem - Spring Batch
- Objetivo: Padronizar a nomenclatura de tabelas, sequences e foreign
Keys do framework Spring Batch, conforme as normas da CAIXA,
utilizando um prefixo customizável e respeitando as restrições de
tamanho e identificação de objetos.
- Link:
https://caixa.sharepoint.com/sites/5141/SitePages/Guia-de-
Modelagem-Spring-Batch.aspx
- Palavras-chave:


## Página 7

![Orientações_Iniciais_Documentação_AD_v1 - página 7](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img07.png)


### Texto extraído

7

Administrador de Dados e Informações – Nível Básico

- Data de Atualização: Não possui.
4. Conclusão
- 
Resumo: Agora você tem uma visão abrangente dos diversos recursos
disponíveis para auxiliar o Administrador de Dados e Informações (ADI) na
validação do modelo de dados.


## Página 8

![Orientações_Iniciais_Documentação_AD_v1 - página 8](imagens/Orientacoes_Iniciais_Documentacao_AD_v1_img08.png)


### Texto extraído

8

Administrador de Dados e Informações – Nível Básico

Guias para Consulta
GEPAC11- NPRD
Versão 1 - 13/11/2024
Fernando de Souza Aires


----


*FIM "Orientacoes_Iniciais_Documentacao_AD_v1.md"*


*INICIO "Particionamento.md"*


----


# Particionamento

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Particionamento - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Particionamento.aspx)

## Contexto

Este documento detalha **estratégias de particionamento de tabelas** em Microsoft SQL Server, Oracle e DB2, conforme **TE074**, incluindo critérios de aplicação, implementação, manutenção e monitoramento.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (seção 3.2.8)
- **Microsoft SQL Server - Table Partitioning**
- **Oracle Database - Partitioning Guide**
- **IBM DB2 - Table Partitioning**

## O Que é Particionamento

### Definição

**Particionamento** divide uma tabela grande em **partições menores** (sub-tabelas) baseadas em uma coluna (partition key), mantendo **transparência lógica** (aplicação vê como uma única tabela).

**Exemplo Conceitual**:
```
Tabela SPH_TRANSACAO (50 milhões de linhas)
├── Partição 2024-01 (4M linhas) → FileGroup FG_2024_01
├── Partição 2024-02 (4M linhas) → FileGroup FG_2024_02
├── Partição 2024-03 (4M linhas) → FileGroup FG_2024_03
...
└── Partição 2026-01 (4M linhas) → FileGroup FG_2026_01
```

**Transparência**:
```sql
-- Aplicação não sabe que a tabela é particionada
SELECT * FROM SPH_TRANSACAO WHERE DATA_TRANSACAO_DT = '2025-06-15';
-- SQL Server automaticamente acessa apenas a partição de junho/2025 (partition elimination)
```

## Quando Particionar (TE074 3.2.8.3)

### Critérios Obrigatórios

**TE074**: Tabelas com **volumetria > 100 milhões linhas/ano** devem ter particionamento avaliado.

**Outros Critérios**:
- Queries filtradas por período (WHERE data BETWEEN ...)
- Necessidade de manutenção granular (backup, expurgo, reorganização por período)
- Histórico de crescimento contínuo
- Janelas de manutenção limitadas

### Benefícios

1. **Performance**:
   - Partition elimination (acessa apenas partições relevantes)
   - Paralelização de queries
   - Índices menores por partição

2. **Manutenção**:
   - REBUILD/REORGANIZE por partição (mais rápido)
   - Backup/Restore por filegroup
   - Expurgo rápido (TRUNCATE partition vs DELETE milhões de linhas)

3. **Disponibilidade**:
   - Operações de manutenção não bloqueiam toda a tabela
   - Recuperação granular em caso de corrupção

### Quando NÃO Particionar

- Tabelas pequenas (< 10 milhões linhas)
- Ausência de filtros por data em queries principais
- Complexidade não justificada
- Recursos limitados (filegroups, discos)

## Estratégias de Particionamento

### Por Data (Mais Comum)

**Range Partitioning** por data/período.

**Exemplos**:
- Mensal: Jan/2025, Fev/2025, Mar/2025, ...
- Trimestral: Q1/2025, Q2/2025, Q3/2025, Q4/2025
- Anual: 2024, 2025, 2026, ...

**Coluna**: DATA_TRANSACAO_DT, DATA_CRIACAO_DT, PERIODO_REFERENCIA_DT

### Por Range de Valores

**Exemplo - Faixa de IDs**:
```
Partição 1: CONTRATO_ID 1 - 1.000.000
Partição 2: CONTRATO_ID 1.000.001 - 2.000.000
Partição 3: CONTRATO_ID 2.000.001 - 3.000.000
```

**Raramente usado** (crescimento desbalanceado).

### Por Lista (List Partitioning)

**Exemplo - Por Região**:
```
Partição SUL: UF_SG IN ('RS', 'SC', 'PR')
Partição SUDESTE: UF_SG IN ('SP', 'RJ', 'MG', 'ES')
Partição NORDESTE: UF_SG IN ('BA', 'PE', 'CE', ...)
```

**Aplicação**: Segregação geográfica, multi-tenancy.

### Por Hash

**Distribuição uniforme** baseada em hash da coluna.

**Aplicação**: Paralelização, sem padrão lógico de acesso.

**Desvantagem**: Sem partition elimination (queries acessam todas partições).

## Implementação SQL Server

### Arquitetura de Particionamento SQL Server

```
1. FileGroups (físico)
   ├── FG_2024_01
   ├── FG_2024_02
   └── ...

2. Partition Function (lógica)
   └── Define boundaries: '2024-01-01', '2024-02-01', ...

3. Partition Scheme (mapeamento)
   └── Mapeia function → filegroups

4. Tabela Particionada
   └── Usa Partition Scheme
```

### Passo 1: Criar FileGroups

**Recomendação**: Um filegroup por partição (isolamento físico).

```sql
-- FileGroup para Janeiro/2025
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2025_01;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2025_01',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2025_01.ndf',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP FG_2025_01;

-- FileGroup para Fevereiro/2025
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2025_02;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2025_02',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2025_02.ndf',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP FG_2025_02;

-- Repetir para cada mês/período...
```

**Alternativa**: Usar filegroup único (simplifica, mas perde isolamento físico).

### Passo 2: Criar Partition Function

**Range Right** (valor limite pertence à partição direita):

```sql
CREATE PARTITION FUNCTION PF_Mensal (DATE)
AS RANGE RIGHT FOR VALUES (
    '2024-01-01', '2024-02-01', '2024-03-01', '2024-04-01',
    '2024-05-01', '2024-06-01', '2024-07-01', '2024-08-01',
    '2024-09-01', '2024-10-01', '2024-11-01', '2024-12-01',
    '2025-01-01', '2025-02-01', '2025-03-01', '2025-04-01',
    '2025-05-01', '2025-06-01', '2025-07-01', '2025-08-01',
    '2025-09-01', '2025-10-01', '2025-11-01', '2025-12-01',
    '2026-01-01'
);
```

**Resultado** (25 partições):
- Partição 1: DATA_TRANSACAO_DT < '2024-01-01'
- Partição 2: '2024-01-01' <= DATA_TRANSACAO_DT < '2024-02-01'
- Partição 3: '2024-02-01' <= DATA_TRANSACAO_DT < '2024-03-01'
- ...
- Partição 25: DATA_TRANSACAO_DT >= '2026-01-01'

**Range Left** (valor limite pertence à partição esquerda):
```sql
CREATE PARTITION FUNCTION PF_Mensal_Left (DATE)
AS RANGE LEFT FOR VALUES (
    '2024-01-31', '2024-02-29', '2024-03-31', ...
);
```

**Recomendação**: **RANGE RIGHT** (mais intuitivo para datas).

### Passo 3: Criar Partition Scheme

**Mapeia função → filegroups**:

```sql
CREATE PARTITION SCHEME PS_Mensal
AS PARTITION PF_Mensal
TO (
    FG_2023_12,  -- Partição 1 (< 2024-01-01)
    FG_2024_01,  -- Partição 2 (>= 2024-01-01, < 2024-02-01)
    FG_2024_02,  -- Partição 3 (>= 2024-02-01, < 2024-03-01)
    FG_2024_03,
    FG_2024_04,
    FG_2024_05,
    FG_2024_06,
    FG_2024_07,
    FG_2024_08,
    FG_2024_09,
    FG_2024_10,
    FG_2024_11,
    FG_2024_12,
    FG_2025_01,
    FG_2025_02,
    FG_2025_03,
    FG_2025_04,
    FG_2025_05,
    FG_2025_06,
    FG_2025_07,
    FG_2025_08,
    FG_2025_09,
    FG_2025_10,
    FG_2025_11,
    FG_2025_12,
    FG_2026_01   -- Partição 25 (>= 2026-01-01)
);
```

**Contagem**: Número de boundaries + 1 = número de partições.

### Passo 4: Criar Tabela Particionada

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    VALOR_VL DECIMAL(18,2),
    TIPO_TP VARCHAR(20),
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_SPH_TRANSACAO PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) 
ON PS_Mensal(DATA_TRANSACAO_DT)  -- Define particionamento
WITH (DATA_COMPRESSION = PAGE);
```

**CRÍTICO**: **PK/Clustered Index deve incluir coluna de particionamento**.

### Passo 5: Criar Índices Alinhados

**Índice alinhado** usa o mesmo partition scheme.

```sql
-- Índice alinhado (particionado da mesma forma)
CREATE INDEX IDX_SPH_TRANSACAO_CLIENTE 
    ON SPH_TRANSACAO(CLIENTE_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT);

-- Ou deixar SQL Server alinhar automaticamente
CREATE INDEX IDX_SPH_TRANSACAO_TIPO 
    ON SPH_TRANSACAO(TIPO_TP)
    WITH (DROP_EXISTING = OFF);  -- Será alinhado automaticamente se incluir DATA_TRANSACAO_DT
```

**Benefício**: Operações de SWITCH/SPLIT/MERGE são atômicas.

## Converter Tabela Existente para Particionada

### Cenário: Tabela Não-Particionada Existente

```sql
-- Tabela original (não-particionada, 80M linhas)
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2)
);
```

### Passo 1: Criar Estrutura de Particionamento

```sql
-- FileGroups, Partition Function, Partition Scheme (como nos passos anteriores)
```

### Passo 2: Recriar Clustered Index Particionado

```sql
-- Dropar PK existente (implicitamente dropa clustered index)
ALTER TABLE SPH_TRANSACAO DROP CONSTRAINT PK_SPH_TRANSACAO;

-- Recriar PK particionada (incluindo DATA_TRANSACAO_DT)
ALTER TABLE SPH_TRANSACAO ADD CONSTRAINT PK_SPH_TRANSACAO 
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT)
    WITH (DATA_COMPRESSION = PAGE);
```

**Atenção**: Operação pode levar horas em tabelas grandes. Planejar janela de manutenção.

**Alternativa (Online - Enterprise Edition)**:
```sql
ALTER TABLE SPH_TRANSACAO DROP CONSTRAINT PK_SPH_TRANSACAO;
ALTER TABLE SPH_TRANSACAO ADD CONSTRAINT PK_SPH_TRANSACAO 
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
    ON PS_Mensal(DATA_TRANSACAO_DT)
    WITH (ONLINE = ON, DATA_COMPRESSION = PAGE);
```

## Manutenção de Partições

### Adicionar Nova Partição (Split)

**Cenário**: Novo mês iniciando (fevereiro/2026).

```sql
-- 1. Criar filegroup para novo mês
ALTER DATABASE [DB_SISPH] ADD FILEGROUP FG_2026_02;
ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = 'Data_2026_02',
    FILENAME = 'D:\SQLData\DB_SISPH\Data_2026_02.ndf',
    SIZE = 1GB
) TO FILEGROUP FG_2026_02;

-- 2. Configurar próxima partição no scheme
ALTER PARTITION SCHEME PS_Mensal NEXT USED FG_2026_02;

-- 3. Dividir partição (adicionar boundary)
ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE ('2026-02-01');
```

**Resultado**: Partição existente (>= 2026-01-01) é dividida em duas:
- Partição N: 2026-01-01 <= data < 2026-02-01 (FG_2026_01)
- Partição N+1: data >= 2026-02-01 (FG_2026_02)

### Remover Partição Antiga (Merge)

**Cenário**: Expurgar dados de dezembro/2023.

```sql
-- 1. Verificar se partição está vazia (ou esvaziar)
SELECT COUNT(*) FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2023-12-01' AND DATA_TRANSACAO_DT < '2024-01-01';

-- 2. Truncar partição (super rápido - operação de metadados)
TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (2));  -- Número da partição

-- 3. Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');
```

**Resultado**: Partição 1 (< 2024-01-01) e Partição 2 (>= 2024-01-01, < 2024-02-01) são mescladas.

**Atenção**: Boundary é removida, não a partição. Dados de ambas partições são consolidados.

### Arquivar Dados Antes de Expurgo (Switch)

**SWITCH**: Move partição inteira para outra tabela (operação de metadados, instantânea).

```sql
-- 1. Criar tabela staging (mesma estrutura, mesmo filegroup)
CREATE TABLE SPH_TRANSACAO_ARQUIVO_2023_12 (
    TRANSACAO_ID BIGINT,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2),
    CONSTRAINT PK_ARQ_2023_12 PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON FG_2023_12  -- Mesmo filegroup da partição
WITH (DATA_COMPRESSION = PAGE);

-- 2. Adicionar constraint para garantir alinhamento de dados
ALTER TABLE SPH_TRANSACAO_ARQUIVO_2023_12 ADD CONSTRAINT CK_ARQ_2023_12
    CHECK (DATA_TRANSACAO_DT >= '2023-12-01' AND DATA_TRANSACAO_DT < '2024-01-01');

-- 3. Switch (instantâneo - apenas metadados)
ALTER TABLE SPH_TRANSACAO SWITCH PARTITION 2 TO SPH_TRANSACAO_ARQUIVO_2023_12;

-- 4. Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');

-- 5. (Opcional) Mover tabela arquivo para storage de longo prazo ou comprimir
```

**Benefícios**:
- Expurgo instantâneo (vs DELETE milhões de linhas)
- Dados arquivados, não perdidos
- Recuperação rápida se necessário

## Queries em Tabelas Particionadas

### Partition Elimination

**SQL Server elimina partições desnecessárias** automaticamente.

```sql
-- Acessa apenas partição de junho/2025
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT BETWEEN '2025-06-01' AND '2025-06-30';

-- Acessa apenas partições de Q2/2025 (abril, maio, junho)
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT BETWEEN '2025-04-01' AND '2025-06-30';

-- Acessa TODAS partições (scan completo)
SELECT * FROM SPH_TRANSACAO
WHERE VALOR_VL > 1000;  -- Filtro não inclui coluna de particionamento
```

**Ver Partition Elimination no Plano de Execução**:
```sql
SET STATISTICS IO ON;
SELECT * FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT = '2025-06-15';
-- Mensagem: "Table 'SPH_TRANSACAO'. Scan count 1, logical reads 100, ..."
-- Plano mostra: "Actual Partition Count: 1" (apenas 1 partição acessada)
```

### $PARTITION Function

**Descobrir número da partição de um valor**:

```sql
SELECT $PARTITION.PF_Mensal('2025-06-15') AS NumeroParticao;
-- Resultado: 18 (ou outro número, dependendo dos boundaries)

-- Agrupar dados por partição
SELECT 
    NumeroParticao = $PARTITION.PF_Mensal(DATA_TRANSACAO_DT),
    Linhas = COUNT(*)
FROM SPH_TRANSACAO
GROUP BY $PARTITION.PF_Mensal(DATA_TRANSACAO_DT)
ORDER BY NumeroParticao;
```

## Monitoramento de Partições

### Informações de Partições

```sql
SELECT 
    Tabela = OBJECT_NAME(p.object_id),
    Indice = i.name,
    NumeroParticao = p.partition_number,
    Linhas = p.rows,
    TamanhoMB = CAST((SUM(au.total_pages) * 8.0) / 1024 AS DECIMAL(10,2)),
    Compressao = p.data_compression_desc,
    FileGroup = fg.name,
    ValorLimite = CAST(rv.value AS DATE)
FROM sys.partitions p
INNER JOIN sys.indexes i ON p.object_id = i.object_id AND p.index_id = i.index_id
INNER JOIN sys.allocation_units au ON p.partition_id = au.container_id
LEFT JOIN sys.partition_schemes ps ON i.data_space_id = ps.data_space_id
LEFT JOIN sys.destination_data_spaces dds ON ps.data_space_id = dds.partition_scheme_id 
    AND p.partition_number = dds.destination_id
LEFT JOIN sys.filegroups fg ON dds.data_space_id = fg.data_space_id
LEFT JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
LEFT JOIN sys.partition_range_values rv ON pf.function_id = rv.function_id 
    AND p.partition_number = rv.boundary_id + 1  -- Range Right
WHERE OBJECT_NAME(p.object_id) = 'SPH_TRANSACAO'
  AND i.index_id <= 1  -- Apenas clustered index (0=heap, 1=clustered)
GROUP BY p.object_id, i.name, p.partition_number, p.rows, p.data_compression_desc, 
         fg.name, rv.value
ORDER BY p.partition_number;
```

**Resultado Exemplo**:
| Tabela | Índice | NumeroParticao | Linhas | TamanhoMB | Compressao | FileGroup | ValorLimite |
|--------|--------|----------------|--------|-----------|------------|-----------|-------------|
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 1 | 150000 | 12.5 | PAGE | FG_2023_12 | NULL |
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 2 | 4200000 | 320.8 | PAGE | FG_2024_01 | 2024-01-01 |
| SPH_TRANSACAO | PK_SPH_TRANSACAO | 3 | 4100000 | 315.2 | PAGE | FG_2024_02 | 2024-02-01 |
| ... | ... | ... | ... | ... | ... | ... | ... |

### Boundaries da Partition Function

```sql
SELECT 
    FunctionName = pf.name,
    BoundaryID = prv.boundary_id,
    Value = prv.value,
    NumeroParticao = prv.boundary_id + 1  -- Range Right
FROM sys.partition_functions pf
INNER JOIN sys.partition_range_values prv ON pf.function_id = prv.function_id
WHERE pf.name = 'PF_Mensal'
ORDER BY prv.boundary_id;
```

### Uso de Espaço por FileGroup

```sql
SELECT 
    FileGroup = fg.name,
    TamanhoTotalMB = CAST(SUM(df.size) * 8.0 / 1024 AS DECIMAL(10,2)),
    EspacoUsadoMB = CAST(SUM(FILEPROPERTY(df.name, 'SpaceUsed')) * 8.0 / 1024 AS DECIMAL(10,2)),
    EspacoLivreMB = CAST((SUM(df.size) - SUM(FILEPROPERTY(df.name, 'SpaceUsed'))) * 8.0 / 1024 AS DECIMAL(10,2)),
    PercentualUsado = CAST(100.0 * SUM(FILEPROPERTY(df.name, 'SpaceUsed')) / SUM(df.size) AS DECIMAL(5,2))
FROM sys.database_files df
INNER JOIN sys.filegroups fg ON df.data_space_id = fg.data_space_id
WHERE fg.name LIKE 'FG_%'
GROUP BY fg.name
ORDER BY fg.name;
```

## Automação de Manutenção

### Job SQL Agent - Adicionar Partição Mensal

```sql
-- Executar no 1º dia de cada mês
DECLARE @ProximoMes DATE = DATEADD(MONTH, 1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
DECLARE @FileGroupName NVARCHAR(50) = 'FG_' + FORMAT(@ProximoMes, 'yyyy_MM');
DECLARE @FileName NVARCHAR(100) = 'Data_' + FORMAT(@ProximoMes, 'yyyy_MM');
DECLARE @FilePath NVARCHAR(255) = 'D:\SQLData\DB_SISPH\' + @FileName + '.ndf';
DECLARE @SQL NVARCHAR(MAX);

-- Criar filegroup
SET @SQL = 'ALTER DATABASE [DB_SISPH] ADD FILEGROUP [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Adicionar arquivo
SET @SQL = 'ALTER DATABASE [DB_SISPH] ADD FILE (
    NAME = ''' + @FileName + ''',
    FILENAME = ''' + @FilePath + ''',
    SIZE = 1GB,
    FILEGROWTH = 512MB
) TO FILEGROUP [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Configurar próxima partição
SET @SQL = 'ALTER PARTITION SCHEME PS_Mensal NEXT USED [' + @FileGroupName + '];';
EXEC sp_executesql @SQL;

-- Split
SET @SQL = 'ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE (''' + CAST(@ProximoMes AS VARCHAR(10)) + ''');';
EXEC sp_executesql @SQL;

PRINT 'Partição criada para ' + FORMAT(@ProximoMes, 'MMMM/yyyy', 'pt-BR');
```

### Job SQL Agent - Expurgo de Partições Antigas

```sql
-- Executar mensalmente, expurgar dados > 24 meses
DECLARE @DataLimite DATE = DATEADD(MONTH, -24, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
DECLARE @PartitionNumber INT;

-- Descobrir número da partição
SET @PartitionNumber = $PARTITION.PF_Mensal(@DataLimite);

-- Truncar partição
DECLARE @SQL NVARCHAR(MAX) = 'TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (' + CAST(@PartitionNumber AS VARCHAR(5)) + '));';
EXEC sp_executesql @SQL;

PRINT 'Partição ' + CAST(@PartitionNumber AS VARCHAR(5)) + ' expurgada (dados < ' + CAST(@DataLimite AS VARCHAR(10)) + ')';
```

## Considerações Especiais

### PK e Uniqueness em Tabelas Particionadas

**Restrição**: PK/Unique constraint **deve incluir a coluna de particionamento**.

```sql
-- ✅ CORRETO: PK inclui DATA_TRANSACAO_DT
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_Mensal(DATA_TRANSACAO_DT);

-- ❌ ERRO: PK não inclui coluna de particionamento
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,  -- ERRO!
    DATA_TRANSACAO_DT DATE NOT NULL
) ON PS_Mensal(DATA_TRANSACAO_DT);
-- Erro: "The PRIMARY KEY constraint must be defined on a partitioning column."
```

**Solução se TRANSACAO_ID deve ser único sozinho**:
- Usar Non-Clustered Unique Index (não-alinhado, permitido mas degrada performance)
- Reconsiderar design (usar surrogate key composta)

### Sliding Window (Janela Deslizante)

**Padrão**: Adicionar partições futuras, remover partições antigas continuamente.

**Exemplo - Manter sempre 24 meses**:
```
Janeiro/2026: Adicionar Fevereiro/2027, Remover Fevereiro/2025
Fevereiro/2026: Adicionar Março/2027, Remover Março/2025
...
```

**Automação**: Jobs SQL Agent mensais (SPLIT + MERGE).

## Oracle e DB2

### Oracle - Range Partitioning

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID NUMBER(19) PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID NUMBER(19),
    VALOR_VL NUMBER(18,2)
)
PARTITION BY RANGE (DATA_TRANSACAO_DT) (
    PARTITION P_2024_01 VALUES LESS THAN (TO_DATE('2024-02-01', 'YYYY-MM-DD')),
    PARTITION P_2024_02 VALUES LESS THAN (TO_DATE('2024-03-01', 'YYYY-MM-DD')),
    -- ...
    PARTITION P_2025_12 VALUES LESS THAN (TO_DATE('2026-01-01', 'YYYY-MM-DD')),
    PARTITION P_MAXVALUE VALUES LESS THAN (MAXVALUE)
);
```

**Adicionar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO SPLIT PARTITION P_MAXVALUE 
    AT (TO_DATE('2026-02-01', 'YYYY-MM-DD'))
    INTO (PARTITION P_2026_01, PARTITION P_MAXVALUE);
```

**Dropar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO DROP PARTITION P_2024_01;
```

### DB2 - Range Partitioning

```sql
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT NOT NULL PRIMARY KEY,
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2)
)
PARTITION BY RANGE (DATA_TRANSACAO_DT) (
    STARTING ('2024-01-01') ENDING ('2024-01-31') IN FG_2024_01,
    STARTING ('2024-02-01') ENDING ('2024-02-29') IN FG_2024_02,
    -- ...
);
```

**Adicionar Partição**:
```sql
ALTER TABLE SPH_TRANSACAO ADD PARTITION 
    STARTING ('2026-02-01') ENDING ('2026-02-28') IN FG_2026_02;
```

## Checklist de Particionamento

### Planejamento
- [ ] Volumetria > 100M linhas/ano (TE074)
- [ ] Queries filtradas por data
- [ ] Coluna de particionamento identificada
- [ ] Estratégia definida (mensal, trimestral, anual)
- [ ] Aprovação ABD obtida

### Implementação
- [ ] FileGroups criados (um por partição, se possível)
- [ ] Partition Function criada (Range Right para datas)
- [ ] Partition Scheme criado (mapeamento correto)
- [ ] PK inclui coluna de particionamento
- [ ] Índices alinhados
- [ ] Compactação PAGE aplicada

### Manutenção
- [ ] Job mensal para adicionar novas partições (SPLIT)
- [ ] Job periódico para expurgo (TRUNCATE + MERGE)
- [ ] Sliding window implementada (se aplicável)
- [ ] Monitoramento de uso de espaço

### Validação
- [ ] Partition elimination verificada (planos de execução)
- [ ] Performance de queries validada
- [ ] Operações de SWITCH testadas
- [ ] Backup/Restore por filegroup testado

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.8)


----


*FIM "Particionamento.md"*


*INICIO "Compactação.md"*


----


# Compactação

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Compactação - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Compactação.aspx)

## Contexto

Este documento aborda as diretrizes para **compactação de dados** conforme estabelecido na **Norma TE074** (seção 3.2.9).

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - **Seção 3.2.9**: Compactação de dados
  - Aplicação obrigatória para novas tabelas
  - Configurações específicas por SGBD

## Diretrizes de Compactação por SGBD

### Microsoft SQL Server

**Tipo de Compactação**: `DATA_COMPRESSION(PAGE)`

```sql
CREATE TABLE [dbo].[NomeTabela]
(
    -- colunas
)
WITH (DATA_COMPRESSION = PAGE);
```

**Características**:
- Compressão em nível de página (recomendado)
- Melhor relação custo-benefício entre economia de espaço e performance
- Aplicável a tabelas e índices
- Definido em propriedades físicas no PowerDesigner

### Oracle Database

**Tipo de Compactação**: `COMPRESS(BASIC)`

```sql
CREATE TABLE nome_tabela
(
    -- colunas
)
COMPRESS BASIC;
```

**Características**:
- Compressão básica para tabelas OLTP
- Para tabelas de consulta/histórico: considerar `COMPRESS FOR QUERY`
- Para Archive: `COMPRESS FOR ARCHIVE`

### IBM DB2

**Tipo de Compactação**: `COMPRESS(YES)`

```sql
CREATE TABLE nome_tabela
(
    -- colunas
)
COMPRESS YES;
```

**Características**:
- Compressão automática de linhas
- Dicionário de compressão gerenciado automaticamente

## Quando Aplicar Compactação

### Obrigatório

1. **Novas tabelas** (conforme TE074 3.2.9.1)
   - Todas as tabelas criadas após vigência da norma
   - Validação realizada pelo pré-validador

2. **Tabelas históricas**
   - Dados migrados de ambientes transacionais
   - Acesso menos frequente

3. **Tabelas com grande volumetria**
   - Acima de 100 milhões de registros/ano
   - Tabelas particionadas

### Opcional (Avaliar com ABD)

- Tabelas transacionais de alta volumetria
- Tabelas de log/auditoria
- Tabelas temporais

## Benefícios da Compactação

### Economia de Espaço
- Redução de 40-70% no espaço em disco (média)
- Menor necessidade de backup storage
- Redução de custos de infraestrutura

### Performance
- **Melhorias**:
  - Menos I/O físico (menos páginas lidas)
  - Melhor aproveitamento de cache/memória
  - Redução de tempo em operações de leitura sequencial

- **Impactos**:
  - Leve overhead de CPU para compressão/descompressão
  - Inserções/atualizações podem ter pequeno impacto

## Implementação no PowerDesigner

### SQL Server

1. Propriedades da tabela → **Physical Options**
2. Habilitar `DATA_COMPRESSION`
3. Selecionar tipo: `PAGE` (recomendado)

### Oracle

1. Propriedades da tabela → **Storage**
2. Campo `Compress`: `BASIC`

### DB2

1. Propriedades da tabela → **Storage**
2. Opção `Compress`: `YES`

## Monitoramento e Validação

### Verificar Taxa de Compressão (SQL Server)

```sql
SELECT 
    OBJECT_NAME(object_id) AS TableName,
    data_compression_desc AS CompressionType
FROM sys.partitions
WHERE index_id IN (0,1)
  AND data_compression > 0;
```

### Verificar Economia de Espaço (SQL Server)

```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo', 
    @object_name = 'NomeTabela', 
    @index_id = NULL, 
    @partition_number = NULL, 
    @data_compression = 'PAGE';
```

## Procedimentos

### Solicitação de Implementação

1. **Equipe de Desenvolvimento**:
   - Define compactação no modelo lógico/físico (PowerDesigner)
   - Valida modelo no pré-validador
   - Inclui compactação no DDL de criação

2. **ADI (Administração de Dados)**:
   - Valida conformidade com TE074
   - Aprova modelo via workflow RTC

3. **ABD (Administração de Banco de Dados)**:
   - Implementa DDL em ambiente produtivo
   - Valida performance pós-implementação
   - Monitora impacto em operações

### Alteração em Tabelas Existentes

Para aplicar compactação em tabelas já existentes:

1. **Análise de Impacto**:
   - Avaliar volumetria atual
   - Estimar tempo de conversão
   - Verificar janela de manutenção

2. **Aprovação**:
   - Submeter solicitação via RTC para ABD
   - Justificar necessidade (economia de espaço, performance)

3. **Execução**:
   - ABD agenda execução
   - Operação pode ser online (SQL Server Enterprise) ou offline

## Validações e Conformidade

### Pré-Validador

O pré-validador de modelos (`http://gestaodedados.coresp.caixa`) verifica:
- Presença de opção de compactação em novas tabelas
- Tipo de compactação adequado ao SGBD
- Conformidade com TE074 3.2.9

### Checklist de Conformidade

- [ ] Compactação definida em novas tabelas
- [ ] Tipo de compactação adequado ao SGBD
- [ ] Opção incluída no PowerDesigner
- [ ] DDL gerado contém cláusula de compactação
- [ ] ABD validou impacto de performance

## Referências Adicionais

- TE074 - Seção 3.2.9 (Compactação)
- TE074 - Seção 3.2.8 (Particionamento - complementar)
- Documentação PowerDesigner - Physical Options
- Workflow RTC para validação de modelos

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Norma relacionada**: TE074 - Seção 3.2.9


----


*FIM "Compactação.md"*


*INICIO "Expurgo.md"*


----


# Expurgo

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Expurgo - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expurgo.aspx)

## Contexto

Este documento aborda as diretrizes para **expurgo de dados**, incluindo políticas de retenção, processos de exclusão e conformidade regulatória, conforme **TE074** (seção 3.2.10) e legislação aplicável.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - Seção 3.2.10: Ciclo de vida dos dados
- **LGPD** - Lei Geral de Proteção de Dados (Lei nº 13.709/2018)
- **TE079** - Segurança da Informação
- **Normas de Auditoria Interna**
- **Políticas de Compliance Corporativo**

## Definição de Expurgo

**Expurgo** é o processo controlado e irreversível de **remoção definitiva de dados** de ambientes corporativos, executado após o término do período de retenção obrigatório ou quando não há mais necessidade de negócio para manutenção dos dados.

### Diferença entre Expurgo e Arquivamento

| Aspecto | Arquivamento | Expurgo |
|---------|-------------|---------|
| **Finalidade** | Preservar dados históricos com acesso eventual | Eliminar dados permanentemente |
| **Reversibilidade** | Reversível (dados podem ser restaurados) | **Irreversível** |
| **Armazenamento** | Dados movidos para storage de longo prazo | Dados deletados fisicamente |
| **Acesso** | Acesso restrito, mas disponível | Sem acesso (dados inexistentes) |
| **Custo** | Mantém custo de storage | Elimina custo de armazenamento |

## Princípios do Expurgo

### 1. Legalidade e Conformidade

- Respeitar períodos de retenção legais e regulatórios
- Conformidade com LGPD (direito ao esquecimento)
- Atender requisitos de auditoria interna/externa
- Documentar justificativas de expurgo

### 2. Minimização de Dados

- Manter apenas dados necessários
- Expurgar dados obsoletos ou sem propósito
- Reduzir riscos de vazamento de dados antigos

### 3. Controle e Rastreabilidade

- Todas operações de expurgo devem ser auditadas
- Logs de expurgo imutáveis
- Aprovações formais obrigatórias
- Rastreabilidade completa

### 4. Segurança na Exclusão

- Exclusão física (não apenas lógica)
- Prevenção de recuperação de dados expurgados
- Limpeza de backups (conforme política)

## Políticas de Retenção

### Definição de Período de Retenção

O **período de retenção** é definido por:

1. **Legislação aplicável**:
   - Código Civil
   - Código Tributário Nacional
   - Normas específicas do setor (habitação, crédito, etc.)

2. **Requisitos de negócio**:
   - Necessidades operacionais
   - Análise histórica
   - Business Intelligence

3. **Gestão do dado**:
   - Responsabilidade do gestor de cada domínio de dados
   - Aprovação ADI/Compliance

### Períodos de Retenção Típicos

| Tipo de Dado | Período Mínimo | Base Legal |
|--------------|----------------|------------|
| **Dados fiscais/tributários** | 5 anos | CTN Art. 173 |
| **Documentos contábeis** | 5 anos | Código Civil Art. 1.194 |
| **Contratos habitacionais** | Até liquidação + 10 anos | Específico CAIXA |
| **Dados de auditoria** | 5-10 anos | Normas internas |
| **Logs de acesso** | 6 meses - 2 anos | LGPD/TE079 |
| **Dados de clientes inativos** | Conforme LGPD | Lei 13.709/2018 |

### Exceções à Retenção

Dados podem ser retidos além do prazo mínimo quando:

- Processo judicial em andamento (suspende expurgo)
- Investigação interna/externa ativa
- Decisão judicial específica
- Necessidade regulatória superveniente

## Processo de Expurgo

### Etapa 1: Identificação de Dados Elegíveis

**Critérios de Elegibilidade**:
1. Dados que atingiram fim do período de retenção
2. Dados sem dependências ativas
3. Dados sem processos judiciais vinculados
4. Dados sem bloqueios regulatórios

**Query SQL - Exemplo de Identificação**:
```sql
-- Identificar registros elegíveis para expurgo
SELECT 
    t.REGISTRO_ID,
    t.DATA_CRIACAO_DT,
    t.DATA_INATIVACAO_DT,
    DATEDIFF(YEAR, t.DATA_INATIVACAO_DT, GETDATE()) AS AnosInativo
FROM POI_TABELA_EXEMPLO t
WHERE t.ATIVO_IN = 'N'
  AND DATEDIFF(YEAR, t.DATA_INATIVACAO_DT, GETDATE()) >= 5  -- 5 anos de retenção
  AND NOT EXISTS (
      SELECT 1 FROM POI_PROCESSO_JUDICIAL pj 
      WHERE pj.REGISTRO_ID = t.REGISTRO_ID AND pj.STATUS_TP = 'ATIVO'
  );
```

### Etapa 2: Validação e Aprovação

**Responsabilidades**:

1. **Gestor do Dado**:
   - Valida lista de dados elegíveis
   - Confirma ausência de necessidade de negócio
   - Aprova expurgo

2. **Compliance/Jurídico**:
   - Valida conformidade com retenção legal
   - Verifica ausência de impedimentos legais
   - Aprova do ponto de vista regulatório

3. **ABD (Administração de Banco de Dados)**:
   - Valida impacto técnico
   - Planeja execução
   - Executa expurgo

**Workflow de Aprovação**:
```
Gestor do Dado → Compliance → ADI → ABD → Execução
```

### Etapa 3: Arquivamento Preventivo (Opcional)

Antes do expurgo, considerar:

1. **Exportação de dados** para arquivo histórico (compliance)
2. **Armazenamento em mídia imutável** (WORM - Write Once Read Many)
3. **Criptografia de arquivos** exportados
4. **Documentação de exportação**

**Exemplo - Exportação para arquivo**:
```sql
-- Exportar dados antes do expurgo
SELECT *
INTO ARQUIVO_EXPURGO_20260106
FROM POI_TABELA_EXEMPLO
WHERE <critérios de expurgo>;
```

### Etapa 4: Execução do Expurgo

**Tipos de Expurgo**:

#### Expurgo Lógico (Soft Delete)
- Flag de exclusão lógica
- Dados permanecem fisicamente
- **Não é expurgo verdadeiro** (apenas inativação)

```sql
UPDATE POI_TABELA_EXEMPLO
SET EXCLUIDO_IN = 'S',
    DATA_EXCLUSAO_DT = GETDATE()
WHERE <critérios>;
```

#### Expurgo Físico (Hard Delete)
- Remoção física do banco de dados
- **Irreversível**
- Recomendado para compliance LGPD

```sql
DELETE FROM POI_TABELA_EXEMPLO
WHERE <critérios>;
```

#### Expurgo com Histórico
- Dados movidos para tabela histórica antes de expurgo
- Permite rastreabilidade sem manter dados completos

```sql
-- 1. Inserir em histórico
INSERT INTO POI_TABELA_EXEMPLO_HIST_EXPURGO 
    (REGISTRO_ID, DATA_EXPURGO_DT, USUARIO_EXPURGO)
SELECT 
    REGISTRO_ID, 
    GETDATE(), 
    SYSTEM_USER
FROM POI_TABELA_EXEMPLO
WHERE <critérios>;

-- 2. Expurgar da tabela principal
DELETE FROM POI_TABELA_EXEMPLO
WHERE <critérios>;
```

### Etapa 5: Validação Pós-Expurgo

**Checklist de Validação**:
- [ ] Quantidade de registros expurgados conforme esperado
- [ ] Integridade referencial mantida (FKs)
- [ ] Backups atualizados (sem dados expurgados)
- [ ] Logs de auditoria gerados
- [ ] Notificação aos stakeholders

**Query de Validação**:
```sql
-- Verificar registros remanescentes
SELECT COUNT(*) AS RegistrosRemanescentes
FROM POI_TABELA_EXEMPLO
WHERE <critérios de expurgo>;  -- Deve retornar 0
```

### Etapa 6: Auditoria e Documentação

**Documentação Obrigatória**:
1. **Relatório de Expurgo**:
   - Data de execução
   - Quantidade de registros expurgados
   - Critérios utilizados
   - Responsável pela execução
   - Aprovadores

2. **Log de Auditoria**:
   - Trilha completa da operação
   - Usuários envolvidos
   - Timestamps de cada etapa

3. **Certificado de Destruição**:
   - Documento formal atestando expurgo
   - Assinado por gestor e compliance

## Expurgo e LGPD

### Direito ao Esquecimento

A LGPD garante aos titulares o **direito à eliminação de dados pessoais** tratados com consentimento ou quando não há mais finalidade.

**Prazo de Atendimento**: 15 dias (conforme ANPD)

**Processo**:
1. Titular solicita exclusão via canal LGPD
2. DPO (Data Protection Officer) valida solicitação
3. Verifica exceções (obrigação legal, exercício de direito)
4. Executa expurgo ou informa justificativa de retenção

### Dados Sensíveis

**Prioridade máxima** para expurgo de:
- Dados raciais/étnicos
- Convicções religiosas
- Opiniões políticas
- Dados de saúde
- Dados biométricos
- Dados genéticos

**Período de retenção**: Mínimo necessário

### Anonimização como Alternativa

Em vez de expurgo, considerar **anonimização** quando:
- Dados necessários para estatísticas agregadas
- Pesquisas históricas
- Business Intelligence
- **Irreversibilidade garantida** (não é pseudonimização)

## Automação de Expurgo

### Jobs Automatizados

**Exemplo - SQL Server Agent Job**:
```sql
CREATE PROCEDURE SP_EXPURGO_AUTOMATICO
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Log de início
    INSERT INTO POI_LOG_EXPURGO (INICIO_DT, STATUS_TP)
    VALUES (GETDATE(), 'INICIADO');
    
    DECLARE @RegistrosExpurgados INT;
    
    -- Executar expurgo
    DELETE FROM POI_TABELA_EXEMPLO
    WHERE ATIVO_IN = 'N'
      AND DATEDIFF(YEAR, DATA_INATIVACAO_DT, GETDATE()) >= 5;
    
    SET @RegistrosExpurgados = @@ROWCOUNT;
    
    -- Log de conclusão
    UPDATE POI_LOG_EXPURGO
    SET FIM_DT = GETDATE(),
        STATUS_TP = 'CONCLUIDO',
        REGISTROS_EXPURGADOS_QT = @RegistrosExpurgados
    WHERE STATUS_TP = 'INICIADO'
      AND FIM_DT IS NULL;
END;
```

**Agendamento**:
- Frequência: Mensal/Trimestral
- Janela: Fora do horário de pico
- Monitoramento: Alertas em caso de falha

### Validações Automáticas

Antes da execução automática:
1. Verificar ausência de processos judiciais
2. Validar período de retenção
3. Confirmar aprovações registradas
4. Verificar integridade referencial

## Tratamento de Backups

### Expurgo em Backups

**Desafio**: Dados expurgados do banco produtivo podem permanecer em backups antigos.

**Estratégias**:

1. **Política de Retenção de Backups**:
   - Alinhar com política de expurgo
   - Backups mais antigos que período de retenção devem ser destruídos

2. **Backup Incremental Após Expurgo**:
   - Forçar novo backup full após expurgo
   - Expurgar backups anteriores ao expurgo

3. **Notação de Backups Expurgados**:
   - Marcar backups que contêm dados expurgados
   - Impedir restauração acidental

### Restauração de Dados Expurgados

**Política**: Dados expurgados **NÃO devem ser restaurados**, exceto:
- Ordem judicial específica
- Erro comprovado no processo de expurgo
- Aprovação excepcional de Compliance + Jurídico

## Indicadores de Expurgo

### KPIs de Monitoramento

1. **Volume de Dados Expurgados**:
   - Registros expurgados/mês
   - GB liberados

2. **Tempo de Retenção Médio**:
   - Tempo médio entre inativação e expurgo

3. **Taxa de Conformidade**:
   - % de dados expurgados dentro do prazo

4. **Solicitações LGPD Atendidas**:
   - Quantidade e tempo médio de atendimento

### Dashboard de Expurgo

**Métricas Recomendadas**:
- Total de registros elegíveis para expurgo
- Registros expurgados no mês
- Economia de storage (GB)
- Pendências de aprovação
- Solicitações LGPD em aberto

## Casos Especiais

### Dados de Auditoria

**Exceção**: Logs de auditoria têm período de retenção **estendido** (5-10 anos) por requisitos regulatórios.

**Não expurgar**: Logs de acesso, trilhas de auditoria de operações críticas.

### Dados de Processos Judiciais

**Bloqueio automático**: Dados vinculados a processos judiciais ativos **não podem ser expurgados**.

**Liberação**: Somente após encerramento definitivo do processo.

### Dados Históricos Estatísticos

**Anonimização preferível**: Para dados usados em análises estatísticas, preferir anonimização ao expurgo.

## Checklist de Expurgo

### Preparação
- [ ] Política de retenção definida e aprovada
- [ ] Dados elegíveis identificados
- [ ] Validação de ausência de impedimentos legais
- [ ] Aprovações de gestor e compliance obtidas

### Execução
- [ ] Backup preventivo realizado (se aplicável)
- [ ] Script de expurgo validado em ambiente de testes
- [ ] Janela de execução agendada
- [ ] Notificações aos stakeholders enviadas

### Validação
- [ ] Quantidade de registros expurgados verificada
- [ ] Integridade referencial mantida
- [ ] Logs de auditoria gerados
- [ ] Backups antigos tratados

### Documentação
- [ ] Relatório de expurgo gerado
- [ ] Certificado de destruição emitido
- [ ] Trilha de auditoria completa
- [ ] Comunicação de conclusão aos aprovadores

## Referências e Ferramentas

- **TE074** - Seção 3.2.10 (Ciclo de vida dos dados)
- **LGPD** - Lei 13.709/2018
- **ANPD** - Autoridade Nacional de Proteção de Dados
- **Workflow RTC** - Aprovação de expurgos
- **Ferramentas de anonimização** - Conforme padrões corporativos

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.10), LGPD, TE079


----


*FIM "Expurgo.md"*


*INICIO "Ciclo de Vida dos Dados.md"*


----


# Ciclo de Vida dos Dados

> **Nota**: Este documento foi exportado de uma página SharePoint (`Ciclo de Vida dos Dados.htm`). 
> O arquivo HTML original contém conteúdo renderizado dinamicamente via JavaScript, o que impede a extração automática do conteúdo completo.

## Contexto

Este documento faz parte do **Portal de Práticas para Desenvolvimento de Software** da CAIXA e aborda as diretrizes para o ciclo de vida dos dados conforme referenciado na **Norma TE074** (seção 3.2.10).

## Referências Relacionadas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
  - Seção 3.2.10: Ciclo de vida dos dados
  - Políticas de retenção de dados
  - Migração transacional → histórico

## Conteúdo a ser preenchido

Para completar este documento, recomenda-se:

1. **Acessar a página original no SharePoint** e copiar o conteúdo manualmente
2. **Consultar a seção 3.2.10 da TE074** que descreve os requisitos para ciclo de vida dos dados:
   - Definição obrigatória de políticas de retenção
   - Regras para migração de dados transacionais para tabelas históricas
   - Critérios de expurgo baseados em regras de negócio
   - Gestão de volumetria e performance

## Estrutura Esperada

Baseado na norma TE074, o conteúdo deve abordar:

### 1. Definição de Políticas de Retenção
- Responsabilidade do gestor do dado
- Alinhamento com requisitos de negócio
- Conformidade regulatória

### 2. Tipos de Dados por Ciclo de Vida

#### Dados Transacionais (Operacionais)
- Dados ativos em uso frequente
- Performance otimizada para operações CRUD
- Período de retenção definido

#### Dados Históricos
- Dados migrados de tabelas transacionais
- Acesso menos frequente
- Estratégias de compactação aplicadas
- Particionamento por período (se aplicável)

#### Dados Auxiliares/Temporais
- Dados de suporte a processos
- Ciclo de vida curto
- Expurgo automatizado

### 3. Processos de Migração
- Critérios para migração transacional → histórico
- Janelas de execução
- Validação de integridade pós-migração
- Rollback em caso de falhas

### 4. Expurgo de Dados
- Políticas de expurgo por tipo de dado
- Requisitos legais e regulatórios
- Processos de arquivamento antes do expurgo
- Aprovações necessárias (ABD/ADI)

### 5. Monitoramento e Auditoria
- Rastreabilidade de operações de ciclo de vida
- Logs de migração e expurgo
- Indicadores de volumetria

### 6. Conformidade
- TE074 (Modelagem de Dados)
- TE079 (se aplicável - segurança)
- Legislações específicas (LGPD, etc.)

---

## Instruções para Atualização

1. Acesse: [Portal PPDS - Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/apps/SitePages/...)
2. Copie o conteúdo estruturado da página
3. Substitua esta seção pelo conteúdo real
4. Mantenha a formatação Markdown para consistência

---

**Última atualização**: ${new Date().toISOString().split('T')[0]}  
**Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
**Norma relacionada**: TE074 - Seção 3.2.10


----


*FIM "Ciclo de Vida dos Dados.md"*


*INICIO "Otimização de Tabelas.md"*


----


# Otimização de Tabelas

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Otimização de Tabelas - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimização%20de%20Tabelas.aspx)

## Contexto

Este documento apresenta **técnicas de otimização de tabelas** para Microsoft SQL Server, Oracle e DB2, cobrindo índices, estatísticas, particionamento, compactação e monitoramento de performance.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **Microsoft SQL Server Performance Tuning Guide**
- **Oracle Database Performance Tuning Guide**
- **IBM DB2 Performance Best Practices**

## 1. Índices

### 1.1. Estratégia de Indexação

**Princípio**: Índices melhoram SELECT, mas degradam INSERT/UPDATE/DELETE.

**Balanceamento**:
- **Muitos índices**: Operações de escrita lentas
- **Poucos índices**: Consultas lentas (table scans)

**Regra de Ouro**: Criar índices com base em **padrões de acesso reais**.

### 1.2. Tipos de Índices SQL Server

#### Clustered Index

**Ordena fisicamente** os dados da tabela.

**Características**:
- Apenas 1 por tabela
- Geralmente a PK
- Define ordem física de armazenamento

```sql
CREATE CLUSTERED INDEX CIX_SPH_TRANSACAO_DATA 
    ON SPH_TRANSACAO(DATA_TRANSACAO_DT);
```

**Quando usar**:
- Colunas com range queries (`BETWEEN`, `>`, `<`)
- ORDER BY frequente
- Dados sequenciais (IDENTITY, datas)

#### Non-Clustered Index

**Estrutura separada** apontando para os dados.

```sql
CREATE NONCLUSTERED INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE(CPF_CNPJ_NK);
```

**Quando usar**:
- Colunas em WHERE, JOIN, ORDER BY
- Múltiplos padrões de acesso

#### Covering Index (Include)

**Inclui colunas adicionais** no nível folha (não na árvore).

```sql
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE 
    ON SPH_CONTRATO(CLIENTE_ID)
    INCLUDE (DATA_ASSINATURA_DT, VALOR_VL);
```

**Vantagem**: Query busca tudo no índice (evita lookup na tabela).

**Exemplo**:
```sql
-- Esta query usa apenas o índice (covering)
SELECT DATA_ASSINATURA_DT, VALOR_VL
FROM SPH_CONTRATO
WHERE CLIENTE_ID = 123;
```

#### Filtered Index

**Índice parcial** (apenas subset dos dados).

```sql
CREATE INDEX IDX_SPH_CONTRATO_ATIVO 
    ON SPH_CONTRATO(CLIENTE_ID)
    WHERE ATIVO_IN = 'S';
```

**Vantagens**:
- Menor tamanho
- Manutenção mais rápida
- Melhor para queries que sempre filtram a mesma condição

#### Columnstore Index

**Armazenamento colunar** (vs row-based tradicional).

```sql
-- Clustered Columnstore (DW/Analytics)
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;

-- Non-Clustered Columnstore (OLTP + Analytics)
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_SPH_TRANSACAO 
    ON SPH_TRANSACAO(DATA_TRANSACAO_DT, VALOR_VL, CLIENTE_ID);
```

**Quando usar**:
- Data Warehouse (fatos dimensionais)
- Consultas analíticas (agregações, GROUP BY)
- Tabelas > 1 milhão linhas

**Benefícios**:
- Compressão extrema (até 10x)
- Queries analíticas 10-100x mais rápidas

### 1.3. Índices em FKs (Obrigatório TE074)

**Sempre criar índices em colunas FK**:

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- Índices obrigatórios em FKs
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE_ID 
    ON SPH_CONTRATO(CLIENTE_ID);
CREATE INDEX IDX_SPH_CONTRATO_PRODUTO_ID 
    ON SPH_CONTRATO(PRODUTO_ID);
```

**Benefícios**:
- Performance em JOINs
- Performance em DELETE da tabela pai (verifica filhos)

### 1.4. Monitoramento de Índices

#### Índices Faltando (SQL Server)

```sql
SELECT 
    DatabaseName = DB_NAME(mid.database_id),
    TableName = OBJECT_NAME(mid.object_id, mid.database_id),
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns,
    ImpactoMedio = CAST(mid.avg_user_impact AS DECIMAL(5,2)),
    TotalBuscas = mid.user_seeks,
    CustoEstimado = CAST(mid.avg_total_user_cost * mid.avg_user_impact * (mid.user_seeks + mid.user_scans) AS BIGINT)
FROM sys.dm_db_missing_index_details AS mid
INNER JOIN sys.dm_db_missing_index_groups AS mig 
    ON mid.index_handle = mig.index_handle
WHERE mid.database_id = DB_ID()
ORDER BY CustoEstimado DESC;
```

#### Índices Não Usados

```sql
SELECT 
    TableName = OBJECT_NAME(i.object_id),
    IndexName = i.name,
    TipoIndice = i.type_desc,
    Buscas = ISNULL(us.user_seeks, 0),
    Scans = ISNULL(us.user_scans, 0),
    Lookups = ISNULL(us.user_lookups, 0),
    Atualizacoes = ISNULL(us.user_updates, 0),
    TamanhoMB = (SUM(ps.used_page_count) * 8) / 1024
FROM sys.indexes i
LEFT JOIN sys.dm_db_index_usage_stats us 
    ON i.object_id = us.object_id AND i.index_id = us.index_id
LEFT JOIN sys.dm_db_partition_stats ps 
    ON i.object_id = ps.object_id AND i.index_id = ps.index_id
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
  AND i.index_id > 0
GROUP BY i.object_id, i.name, i.type_desc, us.user_seeks, us.user_scans, us.user_lookups, us.user_updates
HAVING ISNULL(us.user_seeks, 0) + ISNULL(us.user_scans, 0) + ISNULL(us.user_lookups, 0) = 0
ORDER BY TamanhoMB DESC;
```

#### Fragmentação de Índices

```sql
SELECT 
    TableName = OBJECT_NAME(ips.object_id),
    IndexName = i.name,
    FragmentacaoPC = CAST(ips.avg_fragmentation_in_percent AS DECIMAL(5,2)),
    Paginas = ips.page_count,
    TamanhoMB = (ips.page_count * 8) / 1024,
    CASE 
        WHEN ips.avg_fragmentation_in_percent > 30 THEN 'REBUILD'
        WHEN ips.avg_fragmentation_in_percent > 10 THEN 'REORGANIZE'
        ELSE 'OK'
    END AS AcaoRecomendada
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.page_count > 100  -- Ignorar índices pequenos
ORDER BY ips.avg_fragmentation_in_percent DESC;
```

### 1.5. Manutenção de Índices

#### Reorganize (Fragmentação 10-30%)

**Operação online**, não bloqueia tabela.

```sql
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REORGANIZE;
```

#### Rebuild (Fragmentação > 30%)

**Recria índice completamente**.

```sql
-- Offline (bloqueia tabela)
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REBUILD;

-- Online (SQL Server Enterprise)
ALTER INDEX IDX_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE REBUILD WITH (ONLINE = ON);
```

#### Rebuild com Compactação

```sql
ALTER INDEX ALL ON SPH_CLIENTE 
    REBUILD WITH (DATA_COMPRESSION = PAGE, ONLINE = ON);
```

#### Job de Manutenção Automática

**SQL Server Agent**:
```sql
-- Script simplificado (usar Ola Hallengren scripts em produção)
DECLARE @TableName NVARCHAR(128), @IndexName NVARCHAR(128);
DECLARE @Fragmentation DECIMAL(5,2);
DECLARE @SQL NVARCHAR(MAX);

DECLARE idx_cursor CURSOR FOR
SELECT 
    OBJECT_NAME(ips.object_id),
    i.name,
    ips.avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.page_count > 100;

OPEN idx_cursor;
FETCH NEXT FROM idx_cursor INTO @TableName, @IndexName, @Fragmentation;

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Fragmentation > 30
        SET @SQL = 'ALTER INDEX [' + @IndexName + '] ON [' + @TableName + '] REBUILD WITH (DATA_COMPRESSION = PAGE)';
    ELSE IF @Fragmentation > 10
        SET @SQL = 'ALTER INDEX [' + @IndexName + '] ON [' + @TableName + '] REORGANIZE';
    ELSE
        SET @SQL = NULL;
    
    IF @SQL IS NOT NULL
        EXEC sp_executesql @SQL;
    
    FETCH NEXT FROM idx_cursor INTO @TableName, @IndexName, @Fragmentation;
END

CLOSE idx_cursor;
DEALLOCATE idx_cursor;
```

## 2. Estatísticas

### 2.1. Importância

**Estatísticas** informam ao otimizador sobre **distribuição de dados** (cardinalidade, histogramas).

**Impacto**: Estatísticas desatualizadas causam planos de execução ruins.

### 2.2. Atualização Automática

**SQL Server**: AUTO_CREATE_STATISTICS e AUTO_UPDATE_STATISTICS habilitadas por padrão.

**Verificar**:
```sql
SELECT 
    name,
    is_auto_create_stats_on,
    is_auto_update_stats_on,
    is_auto_update_stats_async_on
FROM sys.databases
WHERE name = DB_NAME();
```

**Habilitar**:
```sql
ALTER DATABASE [MeuBanco] SET AUTO_CREATE_STATISTICS ON;
ALTER DATABASE [MeuBanco] SET AUTO_UPDATE_STATISTICS ON;
```

### 2.3. Atualização Manual

**Atualizar estatísticas de uma tabela**:
```sql
UPDATE STATISTICS SPH_CLIENTE WITH FULLSCAN;
```

**Atualizar todas as estatísticas do banco**:
```sql
EXEC sp_updatestats;
```

### 2.4. Monitorar Estatísticas Desatualizadas

```sql
SELECT 
    TableName = OBJECT_NAME(stat.object_id),
    StatName = stat.name,
    UltimaAtualizacao = sp.last_updated,
    Linhas = sp.rows,
    LinhasModificadas = sp.modification_counter,
    PercentualModificado = CAST(sp.modification_counter * 100.0 / NULLIF(sp.rows, 0) AS DECIMAL(5,2))
FROM sys.stats stat
CROSS APPLY sys.dm_db_stats_properties(stat.object_id, stat.stats_id) sp
WHERE OBJECTPROPERTY(stat.object_id, 'IsUserTable') = 1
  AND sp.modification_counter > 0
ORDER BY PercentualModificado DESC;
```

## 3. Compactação (TE074 3.2.9)

### 3.1. Tipos de Compactação SQL Server

#### ROW Compression

Comprime dados em nível de linha.

**Benefícios**: 20-40% economia de espaço.

```sql
ALTER TABLE SPH_CLIENTE REBUILD WITH (DATA_COMPRESSION = ROW);
```

#### PAGE Compression

Comprime dados em nível de página (inclui ROW + prefix + dictionary).

**Benefícios**: 40-70% economia de espaço (recomendado TE074).

```sql
CREATE TABLE SPH_CONTRATO (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Ou alterar existente
ALTER TABLE SPH_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 3.2. Estimativa de Compactação

```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'SPH_CLIENTE',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';
```

**Resultado**:
- `size_with_current_compression_setting (KB)`: Tamanho atual
- `size_with_requested_compression_setting (KB)`: Tamanho estimado após compactação
- `sample_size_with_current_compression_setting (KB)`: Amostra atual
- `sample_size_with_requested_compression_setting (KB)`: Amostra comprimida

### 3.3. Compactação em Índices

```sql
-- Apenas o índice (não a tabela)
CREATE INDEX IDX_SPH_CONTRATO_DATA 
    ON SPH_CONTRATO(DATA_ASSINATURA_DT)
    WITH (DATA_COMPRESSION = PAGE);

-- Todos os índices da tabela
ALTER INDEX ALL ON SPH_CONTRATO 
    REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 3.4. Compactação em Partições

```sql
-- Comprimir partições específicas
ALTER TABLE SPH_TRANSACAO REBUILD PARTITION = 1 
    WITH (DATA_COMPRESSION = PAGE);

-- Comprimir todas partições
ALTER TABLE SPH_TRANSACAO REBUILD PARTITION = ALL 
    WITH (DATA_COMPRESSION = PAGE);
```

## 4. Particionamento (TE074 3.2.8)

### 4.1. Quando Particionar

**Critérios**:
- Volumetria > 100 milhões linhas/ano
- Queries filtradas por período
- Necessidade de manutenção granular (expurgo, backup)

### 4.2. Particionamento por Data (SQL Server)

**Exemplo - Particionamento Mensal**:

```sql
-- 1. Criar filegroups (um por partição)
ALTER DATABASE [MeuBanco] 
    ADD FILEGROUP FG_2025_01;
ALTER DATABASE [MeuBanco] 
    ADD FILE (NAME = 'Data_2025_01', FILENAME = 'D:\Data\Data_2025_01.ndf', SIZE = 1GB) 
    TO FILEGROUP FG_2025_01;

-- Repetir para cada mês...

-- 2. Criar função de partição
CREATE PARTITION FUNCTION PF_Mensal (DATE)
AS RANGE RIGHT FOR VALUES 
(
    '2025-01-01', '2025-02-01', '2025-03-01', '2025-04-01',
    '2025-05-01', '2025-06-01', '2025-07-01', '2025-08-01',
    '2025-09-01', '2025-10-01', '2025-11-01', '2025-12-01',
    '2026-01-01'
);

-- 3. Criar esquema de partição
CREATE PARTITION SCHEME PS_Mensal
AS PARTITION PF_Mensal
TO (
    FG_2024_12,  -- Dados < 2025-01-01
    FG_2025_01,  -- 2025-01-01 <= Dados < 2025-02-01
    FG_2025_02,  -- 2025-02-01 <= Dados < 2025-03-01
    -- ...
    FG_2025_12,
    FG_2026_01   -- Dados >= 2026-01-01
);

-- 4. Criar tabela particionada
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    CLIENTE_ID BIGINT,
    VALOR_VL DECIMAL(18,2),
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)  -- PK deve incluir coluna de particionamento
) ON PS_Mensal(DATA_TRANSACAO_DT)
WITH (DATA_COMPRESSION = PAGE);
```

### 4.3. Manutenção de Partições

#### Adicionar Nova Partição

```sql
-- Criar filegroup para novo mês
ALTER DATABASE [MeuBanco] ADD FILEGROUP FG_2026_02;
ALTER DATABASE [MeuBanco] ADD FILE (...) TO FILEGROUP FG_2026_02;

-- Configurar próxima partição
ALTER PARTITION SCHEME PS_Mensal NEXT USED FG_2026_02;

-- Dividir partição (split)
ALTER PARTITION FUNCTION PF_Mensal() SPLIT RANGE ('2026-02-01');
```

#### Remover Partição Antiga (Expurgo)

```sql
-- Mover dados para staging (opcional, se quiser arquivar)
SELECT * INTO SPH_TRANSACAO_ARQUIVO_2024_01
FROM SPH_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2024-01-01' AND DATA_TRANSACAO_DT < '2024-02-01';

-- Truncar partição (super rápido)
TRUNCATE TABLE SPH_TRANSACAO WITH (PARTITIONS (1));

-- Mesclar partição vazia
ALTER PARTITION FUNCTION PF_Mensal() MERGE RANGE ('2024-01-01');
```

### 4.4. Consultar Informações de Partições

```sql
SELECT 
    TableName = OBJECT_NAME(p.object_id),
    PartitionNumber = p.partition_number,
    Linhas = p.rows,
    TamanhoMB = (SUM(au.total_pages) * 8) / 1024,
    Compressao = p.data_compression_desc,
    FileGroup = fg.name,
    ValorLimite = rv.value
FROM sys.partitions p
INNER JOIN sys.allocation_units au ON p.partition_id = au.container_id
INNER JOIN sys.indexes i ON p.object_id = i.object_id AND p.index_id = i.index_id
LEFT JOIN sys.partition_schemes ps ON i.data_space_id = ps.data_space_id
LEFT JOIN sys.destination_data_spaces dds ON ps.data_space_id = dds.partition_scheme_id AND p.partition_number = dds.destination_id
LEFT JOIN sys.filegroups fg ON dds.data_space_id = fg.data_space_id
LEFT JOIN sys.partition_functions pf ON ps.function_id = pf.function_id
LEFT JOIN sys.partition_range_values rv ON pf.function_id = rv.function_id AND p.partition_number = rv.boundary_id
WHERE OBJECT_NAME(p.object_id) = 'SPH_TRANSACAO'
GROUP BY p.object_id, p.partition_number, p.rows, p.data_compression_desc, fg.name, rv.value
ORDER BY p.partition_number;
```

## 5. Normalização vs Desnormalização

### 5.1. Normalização (3NF - TE074 Obrigatória)

**Benefícios**:
- Elimina redundância
- Facilita manutenção
- Evita anomalias de atualização

**Aplicação**: Sistemas transacionais (OLTP).

### 5.2. Desnormalização Controlada

**Quando considerar** (com justificativa):
- Data Warehouse (Star Schema)
- Colunas calculadas/cache para performance
- Dados históricos (snapshot tables)

**Exemplo - Cache de Nome do Cliente**:

```sql
-- ✅ Normalizado (TE074)
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- ❌ Desnormalizado (evitar, mas pode ser justificado para relatórios)
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_CACHE_NM VARCHAR(200),  -- Cache desnormalizado
    CONSTRAINT FK_SPH_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
);

-- Trigger para manter cache atualizado
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET NOME_CLIENTE_CACHE_NM = i.NOME_CLIENTE_NM
    FROM SPH_CONTRATO c
    INNER JOIN inserted i ON c.CLIENTE_ID = i.CLIENTE_ID
    WHERE UPDATE(NOME_CLIENTE_NM);
END;
```

**Documentar** no PowerDesigner (comment): "Coluna desnormalizada para performance de relatórios. Mantida via trigger TR_SPH_CLIENTE_AFTER_UPDATE."

## 6. Colunas Computadas

### 6.1. Computed Columns Persistidas

**Armazenar resultado de cálculo** (atualizado automaticamente).

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    VALOR_PRINCIPAL_VL DECIMAL(18,2),
    VALOR_JUROS_VL DECIMAL(18,2),
    VALOR_TOTAL_VL AS (VALOR_PRINCIPAL_VL + VALOR_JUROS_VL) PERSISTED,
    -- Pode criar índice em coluna computada persistida
);

CREATE INDEX IDX_SPH_CONTRATO_VALOR_TOTAL 
    ON SPH_CONTRATO(VALOR_TOTAL_VL);
```

**Vantagens**:
- Evita cálculos repetidos
- Pode ser indexada
- Mantida automaticamente

## 7. Monitoramento de Performance

### 7.1. Queries Lentas

```sql
SELECT TOP 20
    TotalExecucoes = qs.execution_count,
    MediaDuracaoMS = CAST(qs.total_elapsed_time / qs.execution_count / 1000.0 AS DECIMAL(10,2)),
    MediaCPU_MS = CAST(qs.total_worker_time / qs.execution_count / 1000.0 AS DECIMAL(10,2)),
    MediaLeituras = qs.total_logical_reads / qs.execution_count,
    UltimaExecucao = qs.last_execution_time,
    QueryText = SUBSTRING(st.text, (qs.statement_start_offset / 2) + 1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(st.text)
            ELSE qs.statement_end_offset
        END - qs.statement_start_offset) / 2) + 1)
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) st
ORDER BY MediaDuracaoMS DESC;
```

### 7.2. Waits (Gargalos)

```sql
SELECT TOP 20
    WaitType = wait_type,
    TempoEsperaMS = wait_time_ms,
    PercentualTotal = CAST(100.0 * wait_time_ms / SUM(wait_time_ms) OVER() AS DECIMAL(5,2)),
    MediaEsperaMS = CAST(wait_time_ms * 1.0 / waiting_tasks_count AS DECIMAL(10,2)),
    TotalTarefasEsperando = waiting_tasks_count
FROM sys.dm_os_wait_stats
WHERE wait_type NOT IN (
    'CLR_SEMAPHORE', 'LAZYWRITER_SLEEP', 'RESOURCE_QUEUE',
    'SLEEP_TASK', 'SLEEP_SYSTEMTASK', 'SQLTRACE_BUFFER_FLUSH', 'WAITFOR',
    'LOGMGR_QUEUE', 'CHECKPOINT_QUEUE', 'REQUEST_FOR_DEADLOCK_SEARCH',
    'XE_TIMER_EVENT', 'BROKER_TO_FLUSH', 'BROKER_TASK_STOP', 'CLR_MANUAL_EVENT',
    'CLR_AUTO_EVENT', 'DISPATCHER_QUEUE_SEMAPHORE', 'FT_IFTS_SCHEDULER_IDLE_WAIT',
    'XE_DISPATCHER_WAIT', 'XE_DISPATCHER_JOIN', 'SQLTRACE_INCREMENTAL_FLUSH_SLEEP'
)
ORDER BY wait_time_ms DESC;
```

**Waits Comuns**:
- `PAGEIOLATCH_*`: I/O lento (considerar SSD, mais memória)
- `LCK_*`: Locks/bloqueios (otimizar transações, índices)
- `CXPACKET`: Paralelismo excessivo (ajustar MAXDOP)

### 7.3. Bloqueios

```sql
SELECT 
    Bloqueante = blocking_session_id,
    Bloqueado = session_id,
    TempoEsperaSegundos = wait_time / 1000,
    TipoRecurso = wait_type,
    Comando = (SELECT text FROM sys.dm_exec_sql_text(sql_handle))
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0;
```

## Checklist de Otimização

### Índices
- [ ] Índices em FKs (obrigatório)
- [ ] Índices em colunas de WHERE/JOIN frequentes
- [ ] Covering indexes para queries críticas
- [ ] Monitoramento de índices faltando
- [ ] Remoção de índices não usados
- [ ] Manutenção periódica (REORGANIZE/REBUILD)

### Estatísticas
- [ ] AUTO_UPDATE_STATISTICS habilitado
- [ ] Atualização manual após cargas grandes
- [ ] Monitoramento de estatísticas desatualizadas

### Compactação
- [ ] PAGE compression em todas tabelas (TE074)
- [ ] Estimativa antes de aplicar
- [ ] Compactação em índices

### Particionamento
- [ ] Avaliado para tabelas > 100M linhas/ano
- [ ] Particionamento por data
- [ ] Automação de manutenção (split/merge)

### Normalização
- [ ] 3NF aplicada (TE074 obrigatória)
- [ ] Desnormalização justificada e documentada

### Monitoramento
- [ ] Queries lentas identificadas e otimizadas
- [ ] Waits monitorados
- [ ] Bloqueios investigados

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.8, 3.2.9)


----


*FIM "Otimização de Tabelas.md"*


*INICIO "Modelagem de Dados para Sistemas CAIXA.md"*


----


# Modelagem de Dados para Sistemas CAIXA

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Modelagem de Dados Sistemas CAIXA - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem%20de%20Dados%20para%20Sistemas%20CAIXA.aspx)

## Contexto

Este documento consolida as **diretrizes corporativas de modelagem de dados para sistemas CAIXA**, integrando normas técnicas, ferramentas, processos e padrões de mercado.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (norma principal)
- **TE079** - Segurança em Ambientes Computacionais
- **TE105** - Integração e Compartilhamento de Dados
- **TE109** - Versionamento e Gestão de Configuração
- **TE124** - Governança de Dados
- **ISO/IEC 11179** - Metadata registries (MDR)
- **TE183** - Produtos Adquiridos (frameworks autorizados)

## Visão Geral do Processo

### Ciclo de Vida da Modelagem

```
1. Levantamento de Requisitos
   ├── Reuniões com área de negócio
   ├── Análise de sistemas legados
   └── Documentação de entidades e regras

2. Modelagem Conceitual
   ├── Diagrama ER (Entidade-Relacionamento)
   ├── Identificação de entidades
   ├── Definição de atributos
   └── Mapeamento de relacionamentos

3. Modelagem Lógica
   ├── Normalização (3NF obrigatória)
   ├── Definição de chaves (PK/FK)
   ├── Validação de integridade referencial
   └── Independente de SGBD

4. Modelagem Física
   ├── Adaptação para SGBD específico (SQL Server, Oracle, DB2)
   ├── Tipos de dados, índices, particionamento
   ├── Compactação, segurança
   └── Geração de DDL

5. Validação e Aprovação
   ├── Pré-validador (http://gestaodedados.coresp.caixa)
   ├── Revisão ADI (Arquitetura de Dados e Informação)
   ├── Aprovação ABD (Administração de Banco de Dados)
   └── RTC workflow

6. Implementação e Manutenção
   ├── Execução de DDL em ambientes
   ├── Versionamento no PowerDesigner
   ├── Atualização conforme mudanças de negócio
   └── Conformidade contínua
```

## Ferramentas Obrigatórias

### SAP PowerDesigner

**Ferramenta corporativa** para modelagem de dados.

**Funcionalidades**:
- Modelagem conceitual, lógica e física
- Geração de DDL para SQL Server, Oracle, DB2
- Engenharia reversa (importar banco existente)
- Versionamento e comparação de modelos
- Validação de nomenclatura e regras TE074
- Geração de relatórios e documentação

**Padronização**:
- Extensão: `.pdm` (Physical Data Model)
- Nomenclatura: `<SISTEMA>_DIAGRAMA_PRINCIPAL.pdm`
- Versionamento: Integração com Git, TFS, RTC

### Pré-validador de Modelos

**URL**: http://gestaodedados.coresp.caixa

**Objetivo**: Validação automática de conformidade TE074 **antes** de submeter à ADI.

**Validações**:
- Nomenclatura de tabelas, colunas, constraints
- Presença de PKs
- Comments obrigatórios
- Tipos de dados inadequados
- Relacionamentos sem FK física
- Volumetria e particionamento

**Processo**:
1. Exportar modelo PowerDesigner (`.pdm`)
2. Upload no pré-validador
3. Analisar relatório de não conformidades
4. Corrigir modelo
5. Re-executar até obter aprovação

**Status Possíveis**:
- ✅ **Aprovado**: Pronto para submeter à ADI
- ⚠️ **Aprovado com Ressalvas**: Correções não-críticas pendentes
- ❌ **Reprovado**: Correções críticas obrigatórias

## Norma TE074 - Principais Diretrizes

### Nomenclatura (TE074 3.2.1)

#### Tabelas

**Formato**: `<PREFIXO_SISTEMA>_<NOME_DESCRITIVO>`

**Regex**: `^[A-Z]{3}_[A-Z][A-Z0-9_]{0,27}$`

**Exemplos**:
- `SPH_CLIENTE` (Sistema Plataforma Habitacional)
- `FIN_LANCAMENTO` (Sistema Financeiro)
- `POI_TRILHA_AUDITORIA` (Plataforma Operações Imobiliárias)

**Regras**:
- Prefixo 3 letras (sigla do sistema)
- Nome descritivo em português
- Singular (não plural)
- Uppercase (maiúsculas)
- Max 30 caracteres (limite Oracle)

#### Colunas

**Formato**: `<NOME>_<SUFIXO>`

**Regex**: `^[A-Z][A-Z0-9_]*_(ID|DT|VL|QT|PC|DS|NM|IN|TP)$`

**Sufixos Obrigatórios**:

| Sufixo | Tipo | Descrição | Exemplo |
|--------|------|-----------|---------|
| `_ID` | Identificador (PK/FK) | BIGINT, INT | `CLIENTE_ID`, `CONTRATO_ID` |
| `_DT` | Data/DateTime | DATE, DATETIME, DATETIME2 | `DATA_CRIACAO_DT` |
| `_VL` | Valor monetário | DECIMAL(18,2), MONEY | `VALOR_CONTRATO_VL` |
| `_QT` | Quantidade | INT, DECIMAL | `QUANTIDADE_PARCELAS_QT` |
| `_PC` | Percentual | DECIMAL(5,4) | `TAXA_JUROS_PC` |
| `_DS` | Descrição (longo) | VARCHAR(MAX), TEXT | `OBSERVACAO_DS` |
| `_NM` | Nome (curto) | VARCHAR(200) | `NOME_CLIENTE_NM` |
| `_IN` | Indicador/Flag | CHAR(1), BIT | `ATIVO_IN` ('S'/'N') |
| `_TP` | Tipo/Categoria | VARCHAR(20) | `TIPO_CONTRATO_TP` |

**Exemplos**:
```sql
CLIENTE_ID BIGINT
NOME_CLIENTE_NM VARCHAR(200)
CPF_CNPJ_NK VARCHAR(14)  -- NK = Natural Key
DATA_NASCIMENTO_DT DATE
SALDO_CONTA_VL DECIMAL(18,2)
QUANTIDADE_DEPENDENTES_QT INT
TAXA_DESCONTO_PC DECIMAL(5,4)
OBSERVACAO_DS VARCHAR(MAX)
ATIVO_IN CHAR(1)
TIPO_PESSOA_TP CHAR(1)  -- F/J
```

#### Constraints

**Primary Key**: `PK_<TABELA>`
```sql
CONSTRAINT PK_SPH_CLIENTE PRIMARY KEY (CLIENTE_ID)
```

**Foreign Key**: `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>`
```sql
CONSTRAINT FK_SPH_CONTRATO_SPH_CLIENTE 
    FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
```

**Unique Key**: `UK_<TABELA>_<COLUNAS>`
```sql
CONSTRAINT UK_SPH_CLIENTE_CPF_CNPJ_NK UNIQUE (CPF_CNPJ_NK)
```

**Check**: `CK_<TABELA>_<REGRA>`
```sql
CONSTRAINT CK_SPH_CLIENTE_ATIVO_IN CHECK (ATIVO_IN IN ('S', 'N'))
```

**Default**: `DF_<TABELA>_<COLUNA>`
```sql
CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S'
```

#### Índices

**Não-único**: `IDX_<TABELA>_<COLUNAS>`
```sql
CREATE INDEX IDX_SPH_CONTRATO_CLIENTE_ID 
    ON SPH_CONTRATO(CLIENTE_ID);
```

**Único**: `IDX_UK_<TABELA>_<COLUNAS>`
```sql
CREATE UNIQUE INDEX IDX_UK_SPH_CLIENTE_CPF 
    ON SPH_CLIENTE(CPF_CNPJ_NK);
```

### Descrição de Objetos (TE074 3.2.2)

**Comments obrigatórios** em todas tabelas e colunas (português).

**SQL Server** (Extended Properties):
```sql
-- Tabela
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Armazena dados cadastrais de clientes do SISPH, incluindo pessoas físicas e jurídicas.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CLIENTE';

-- Coluna
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Identificador único do cliente. PK gerada automaticamente (IDENTITY).',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CLIENTE',
    @level2type = N'COLUMN', @level2name = N'CLIENTE_ID';
```

**Oracle** (COMMENT ON):
```sql
COMMENT ON TABLE SPH_CLIENTE IS 
    'Armazena dados cadastrais de clientes do SISPH.';
COMMENT ON COLUMN SPH_CLIENTE.CLIENTE_ID IS 
    'Identificador único do cliente. PK gerada por sequência.';
```

### Owner/Schema (TE074 3.2.3)

**SQL Server**: Owner = `dbo` (padrão corporativo)
```sql
CREATE TABLE dbo.SPH_CLIENTE (...)
```

**Oracle/DB2**: Owner = sigla do sistema (ex: `SPH`)
```sql
CREATE TABLE SPH.SPH_CLIENTE (...)
```

### Primary Keys (TE074 3.2.4)

**Obrigatória sem exceções** - Toda tabela DEVE ter PK.

**Recomendação**: Surrogate key (BIGINT IDENTITY).

```sql
CREATE TABLE SPH_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CPF_CNPJ_NK VARCHAR(14) UNIQUE NOT NULL,  -- Natural Key como UK
    -- ...
);
```

**Exceção aceitável**: Tabelas de referência com código fixo podem usar natural key como PK.
```sql
CREATE TABLE REF_ESTADO (
    UF_SG CHAR(2) PRIMARY KEY,  -- Natural Key: SP, RJ, MG
    NOME_ESTADO_NM VARCHAR(50)
);
```

### Normalização (TE074 3.2.4.3)

**3NF obrigatória** em modelos transacionais (OLTP).

**Formas Normais**:

1. **1NF**: Atomicidade (sem listas em uma coluna)
2. **2NF**: Sem dependências parciais (toda coluna depende da PK completa)
3. **3NF**: Sem dependências transitivas (colunas dependem apenas da PK)

**Exceções** (devem ser justificadas):
- Data Warehouse (Star Schema desnormalizado)
- Performance crítica (caching de dados)
- Dados históricos (snapshot tables)

### Tipos de Tabelas (TE074 3.2.5-3.2.7)

#### Transacionais

Dados operacionais do dia a dia.

**Características**:
- Alta volumetria
- INSERT/UPDATE/DELETE frequentes
- Retention: 1-2 anos (depois migrar para Histórico)
- Compactação obrigatória
- Índices em FKs

**Exemplo**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    STATUS_TP VARCHAR(20)
) WITH (DATA_COMPRESSION = PAGE);
```

#### Suporte (Referência)

Dados de apoio (enumerações, domínios).

**Características**:
- Baixa volumetria
- Raras alterações
- Sem expurgo
- Podem usar natural key como PK

**Exemplo**:
```sql
CREATE TABLE REF_TIPO_CONTRATO (
    TIPO_CONTRATO_TP VARCHAR(20) PRIMARY KEY,
    DESCRICAO_DS VARCHAR(200),
    ATIVO_IN CHAR(1) DEFAULT 'S'
);
```

#### Histórico

Dados migrados de tabelas transacionais.

**Características**:
- Append-only (apenas INSERT)
- Retention longo (5-10 anos)
- Compactação e particionamento obrigatórios
- Read-only para consultas

**Nomenclatura**: `<TABELA>_HISTORICO`

**Exemplo**:
```sql
CREATE TABLE SPH_CONTRATO_HISTORICO (
    CONTRATO_ID BIGINT,
    -- ... mesmas colunas da tabela transacional
    DATA_MIGRACAO_DT DATETIME2 DEFAULT GETDATE(),
    PERIODO_REFERENCIA_DT DATE
) WITH (DATA_COMPRESSION = PAGE);

-- Particionamento por ano
-- (criar partition function e scheme)
```

### Particionamento (TE074 3.2.8)

**Avaliar quando**:
- Volumetria > 100 milhões linhas/ano
- Queries filtradas por período
- Necessidade de expurgo periódico

**Estratégia**: Particionar por **TEMPO** (ano/mês).

**SQL Server**:
```sql
-- 1. Criar função de partição
CREATE PARTITION FUNCTION PF_Anual (DATE)
AS RANGE RIGHT FOR VALUES 
    ('2024-01-01', '2025-01-01', '2026-01-01');

-- 2. Criar esquema de partição
CREATE PARTITION SCHEME PS_Anual
AS PARTITION PF_Anual
TO ([FG_2023], [FG_2024], [FG_2025], [FG_2026_FUTURO]);

-- 3. Criar tabela particionada
CREATE TABLE SPH_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1),
    DATA_TRANSACAO_DT DATE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_Anual(DATA_TRANSACAO_DT);
```

**Aprovação**: Requer validação ABD.

### Compactação (TE074 3.2.9)

**Obrigatória** em tabelas novas (SQL Server 2008+).

**Tipo**: `PAGE` (compactação de página - melhor custo-benefício).

```sql
CREATE TABLE SPH_CLIENTE (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Alterar tabela existente
ALTER TABLE SPH_CLIENTE REBUILD WITH (DATA_COMPRESSION = PAGE);
```

**Benefícios**:
- 40-70% redução de espaço
- Melhor performance de I/O
- Maior eficiência de cache

**Monitoramento**:
```sql
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'SPH_CLIENTE',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';
```

### Lifecycle de Dados (TE074 3.2.10)

**Definir políticas** de retenção, arquivamento e expurgo.

**Exemplo - Contratos Habitacionais**:

| Estágio | Período | Ação |
|---------|---------|------|
| Ativo | 0-2 anos | Tabela transacional |
| Histórico Recente | 2-7 anos | Migrar para `_HISTORICO` |
| Arquivo | 7-20 anos | Migrar para WORM storage |
| Expurgo | > 20 anos | Anonimizar ou deletar (LGPD) |

**Automação**: Jobs SQL Agent ou stored procedures agendadas.

### Relacionamentos (TE074 3.2.11)

**FK física obrigatória** (não apenas lógica).

```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_SPH_CONTRATO_SPH_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES SPH_CLIENTE(CLIENTE_ID)
        ON DELETE NO ACTION  -- Padrão corporativo
);
```

**Delete Rules**:
- **NO ACTION** (padrão): Bloqueia exclusão se houver filhos
- **CASCADE**: Exclui filhos (usar com cautela)
- **SET NULL**: Define FK como NULL (se permitido)

**Cardinalidades**:
- **1:1**: Geralmente tabelas separadas desnecessárias (consolidar)
- **1:N**: Padrão (FK na tabela "N")
- **N:N**: Tabela associativa com FKs para ambas

**Exemplo N:N**:
```sql
-- Tabela associativa
CREATE TABLE SPH_CONTRATO_GARANTIA (
    CONTRATO_ID BIGINT NOT NULL,
    GARANTIA_ID BIGINT NOT NULL,
    ORDEM_NR INT,
    PRIMARY KEY (CONTRATO_ID, GARANTIA_ID),
    CONSTRAINT FK_SPH_CONTRATO_GARANTIA_CONTRATO 
        FOREIGN KEY (CONTRATO_ID) REFERENCES SPH_CONTRATO(CONTRATO_ID),
    CONSTRAINT FK_SPH_CONTRATO_GARANTIA_GARANTIA 
        FOREIGN KEY (GARANTIA_ID) REFERENCES SPH_GARANTIA(GARANTIA_ID)
);
```

### Colunas (TE074 3.2.12)

#### Tipos de Dados Recomendados

| Categoria | SQL Server | Oracle | DB2 |
|-----------|------------|--------|-----|
| **ID** | BIGINT IDENTITY | NUMBER(19) + SEQUENCE | BIGINT GENERATED ALWAYS |
| **Data** | DATE, DATETIME2 | DATE | DATE |
| **Valor** | DECIMAL(18,2), MONEY | NUMBER(18,2) | DECIMAL(18,2) |
| **Texto Curto** | VARCHAR(200) | VARCHAR2(200) | VARCHAR(200) |
| **Texto Longo** | VARCHAR(MAX) | CLOB | CLOB |
| **Flag** | CHAR(1), BIT | CHAR(1) | CHAR(1) |

#### Sequências (Oracle/DB2)

**Nomenclatura**: `SEQ_<TABELA>_<COLUNA>`

**Oracle**:
```sql
CREATE SEQUENCE SEQ_SPH_CLIENTE_CLIENTE_ID
START WITH 1
INCREMENT BY 1
CACHE 20;
```

#### Defaults

**Auditoria temporal**:
```sql
DATA_CRIACAO_DT DATETIME2 
    CONSTRAINT DF_SPH_CLIENTE_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL
```

**Flags**:
```sql
ATIVO_IN CHAR(1) 
    CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S' NOT NULL
```

## Integração e Governança

### TE105 - Integração de Dados

**APIs e Serviços**:
- Preferir integração via APIs REST
- Evitar acesso direto entre bancos de sistemas diferentes
- Documentar contratos de integração

**ETL/ELT**:
- Processos batch para carga em DW
- Staging area intermediária
- Validação e transformação

### TE124 - Governança de Dados

**Data Stewardship**:
- Definir responsáveis por cada domínio de dados
- Glossário de negócio
- Qualidade de dados (profiling, cleansing)

**Metadados** (ISO/IEC 11179):
- Catalogar objetos de dados
- Linhagem de dados (data lineage)
- Impacto de mudanças

## Processo de Aprovação

### Workflow RTC

```
1. Desenvolvimento
   ├── Criar modelo no PowerDesigner
   ├── Validar no pré-validador
   └── Gerar DDL

2. Submissão ADI
   ├── Criar demanda no RTC
   ├── Anexar arquivo PDM
   ├── Documentar justificativas (se exceções)
   └── Aguardar aprovação

3. Revisão ADI (Arquitetura de Dados)
   ├── Validar nomenclatura
   ├── Verificar normalização
   ├── Avaliar volumetria e performance
   ├── Aprovar ou devolver com correções

4. Implementação ABD (Administração de Banco de Dados)
   ├── Validar DDL
   ├── Executar em DEV
   ├── Executar em HML
   ├── Executar em PRD (após homologação)
   └── Documentar no GED

5. Manutenção
   ├── Versionar modelo no PowerDesigner
   ├── Atualizar modelo conforme alterações
   └── Re-validar a cada mudança
```

## Checklist de Conformidade

### Modelo Conceitual

- [ ] Entidades identificadas
- [ ] Atributos mapeados
- [ ] Relacionamentos definidos
- [ ] Validado com área de negócio

### Modelo Lógico

- [ ] Normalização 3NF aplicada
- [ ] PKs definidas
- [ ] FKs mapeadas
- [ ] Independente de SGBD

### Modelo Físico

- [ ] Nomenclatura TE074 (tabelas, colunas, constraints)
- [ ] Comments em todas tabelas e colunas
- [ ] PKs obrigatórias
- [ ] FKs físicas declaradas
- [ ] Índices em FKs
- [ ] Compactação PAGE configurada
- [ ] Tipos de dados adequados
- [ ] Owner/Schema correto
- [ ] Particionamento avaliado (se > 100M linhas/ano)
- [ ] Lifecycle definido (retention, archiving, expurgo)

### Validação

- [ ] Pré-validador executado e aprovado
- [ ] PowerDesigner PDM gerado e versionado
- [ ] DDL revisado
- [ ] Demanda RTC criada

### Implementação

- [ ] ADI aprovou modelo
- [ ] ABD executou DDL em ambientes
- [ ] Permissões RBAC configuradas
- [ ] Backup/Recovery planejado
- [ ] Monitoramento ativado

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE105, TE109, TE124, TE183, ISO/IEC 11179


----


*FIM "Modelagem de Dados para Sistemas CAIXA.md"*


*INICIO "guia-caixa-dados-sql.md"*


----


# Guia Corporativo de Modelagem de Dados para SQL Server - CAIXA

**Versão**: 1.0  
**Data**: Janeiro 2026  
**SGBD Alvo**: Microsoft SQL Server 2019+  
**Público-alvo**: Analistas, Desenvolvedores, Arquitetos de Dados, DBAs  
**Classificação**: Interna

---

## PARTE 1: Fundamentos e Normas Aplicáveis

### SUB-PARTE 1.1: Introdução e Normas Técnicas Principais

---

#### 1.1 Introdução ao Guia

##### 1.1.1 Finalidade

Este guia corporativo consolida as normas, padrões, diretrizes e boas práticas de modelagem de dados da CAIXA, com foco específico no **Microsoft SQL Server**. Seu objetivo é fornecer um documento único e abrangente que estabeleça:

- **Nomenclatura padronizada** de objetos de banco de dados
- **Padrões de chaves** (primárias, estrangeiras, alternativas)
- **Tipos de dados** recomendados e suas aplicações
- **Boas práticas** de estruturação, relacionamentos e integridade
- **Diretrizes de performance** e otimização para SQL Server
- **Processos de governança** e aprovação de modelos

##### 1.1.2 Público-Alvo

Este guia destina-se a:

- **Analistas de Sistemas**: Responsáveis pela modelagem conceitual e lógica
- **Desenvolvedores**: Implementadores de DDL e scripts de banco de dados
- **Arquitetos de Dados (ADI)**: Responsáveis pela aprovação e conformidade arquitetural
- **Administradores de Banco de Dados (ABD)**: Responsáveis pela implementação física e otimização
- **Gerentes de Projeto**: Para compreensão dos processos e prazos de aprovação

##### 1.1.3 Escopo

**SGBD Principal**: Microsoft SQL Server (versões 2019 e superiores)

**Contexto de Aplicação**:
- Sistemas transacionais (OLTP - Online Transaction Processing)
- Data Warehouses (OLAP - Online Analytical Processing)
- Sistemas híbridos (HTAP - Hybrid Transactional/Analytical Processing)
- Bancos de dados corporativos da CAIXA em ambientes on-premises e Azure

**Fora do Escopo**:
- NoSQL databases (MongoDB, Cassandra, etc.) - possuem guias específicos
- Bancos de dados Oracle e DB2 (consultar guias específicos para esses SGBDs)
- Bancos de dados de terceiros não gerenciados pela CAIXA

##### 1.1.4 Estrutura do Documento

Este guia está organizado em **5 PARTES**:

**PARTE 1: Fundamentos e Normas Aplicáveis**
- Introdução, normas CAIXA (TE074, TE079, TE105, TE124, TE109, TE174, OR016, OR188, CR439)
- Padrões internacionais (ISO/IEC 11179)
- Workflow de aprovação e ferramentas (PowerDesigner, Pré-Validador)

**PARTE 2: Nomenclatura e Padronização**
- Nomenclatura de tabelas, colunas, constraints, índices
- Prefixos e sufixos obrigatórios (TE074)
- Expressões regulares de validação
- Exemplos práticos de nomenclatura

**PARTE 3: Estruturação de Tabelas e Relacionamentos**
- Design de tabelas (normalização, desnormalização)
- Chaves primárias, estrangeiras, alternativas
- Relacionamentos (1:1, 1:N, N:M)
- Integridade referencial e triggers
- Auditoria e versionamento de dados

**PARTE 4: Tipos de Dados e Otimização SQL Server**
- Tipos de dados recomendados (mapeamento TE074 → SQL Server)
- Otimização de tipos (VARCHAR vs NVARCHAR, INT vs BIGINT)
- Compressão de dados (DATA_COMPRESSION=PAGE)
- Particionamento de tabelas (PARTITION BY RANGE)
- Índices (clustered, nonclustered, columnstore)

**PARTE 5: Ciclo de Vida, Frameworks e Validações**
- Ciclo de vida da modelagem (6 fases)
- Frameworks autorizados (Hibernate, Entity Framework)
- Validações obrigatórias (Pré-Validador)
- Expurgo e retenção de dados
- Checklist de implementação

##### 1.1.5 Como Utilizar Este Guia

**Para Novos Projetos**:
1. Leia a PARTE 1 para compreender o contexto normativo
2. Consulte a PARTE 2 ao criar nomenclatura de objetos
3. Aplique as diretrizes da PARTE 3 durante a modelagem lógica/física
4. Utilize a PARTE 4 para escolher tipos de dados e otimizações
5. Siga o ciclo de vida da PARTE 5 durante todo o projeto

**Para Manutenção de Sistemas Existentes**:
- Consulte seções específicas conforme a necessidade
- Utilize o índice remissivo (ao final do documento)
- Priorize conformidade incremental em novas features

**Para Aprovação de Modelos**:
- ADI: Focar em PARTES 1, 2 e 3 (conformidade normativa e arquitetura)
- ABD: Focar em PARTES 4 e 5 (performance e implementação)

##### 1.1.6 Convenções e Notações

**Notações utilizadas neste guia**:

- `CODIGO_EXEMPLO`: Objetos de banco de dados em fonte monoespaçada
- **Negrito**: Termos importantes, conceitos-chave
- *Itálico*: Referências a normas externas
- ✅ OK: Exemplos corretos, conformes às normas
- ❌ INCORRETO: Exemplos incorretos, não conformes
- ⚠️ ATENÇÃO: Alertas importantes, exceções às regras
- 💡 DICA: Boas práticas adicionais, sugestões

**Abreviações comuns**:
- **ADI**: Arquitetura de Dados e Informação
- **ABD**: Administração de Banco de Dados
- **DDL**: Data Definition Language
- **DML**: Data Manipulation Language
- **PDM**: Physical Data Model (PowerDesigner)
- **PK**: Primary Key (Chave Primária)
- **FK**: Foreign Key (Chave Estrangeira)
- **UK**: Unique Key (Chave Alternativa)
- **CK**: Check Constraint (Restrição de Verificação)
- **DF**: Default Constraint (Restrição de Valor Padrão)

---

#### 1.2 Norma TE074 (Modelagem de Dados - NORMA PRINCIPAL)

##### 1.2.1 Prefácio e Finalidade

A **Norma Técnica TE074 - Modelagem de Dados Relacional** é a norma corporativa CAIXA que estabelece as diretrizes obrigatórias para modelagem de dados em ambientes relacionais. Ela é a **principal referência normativa** para todos os projetos que envolvam estruturação de bancos de dados.

**Histórico de Revisões**:
- Versão atual: Consultar documento oficial no Portal de Normas CAIXA
- Última atualização: (conforme documento oficial)
- Responsável: Gerência Nacional de Arquitetura de Dados e Informação (ADI)

**Alcance**:
- Todos os sistemas corporativos da CAIXA
- Ambientes on-premises (SQL Server, Oracle, DB2)
- Ambientes cloud (Azure SQL Database, Azure Synapse)
- Sistemas de terceiros integrados à CAIXA (quando aplicável)

##### 1.2.2 Objetivos da TE074

A norma TE074 tem como objetivos principais:

1. **Padronização**: Garantir uniformidade na estruturação de dados corporativos
2. **Governança**: Estabelecer processos de aprovação e responsabilidades
3. **Qualidade**: Assegurar integridade, consistência e documentação adequada
4. **Rastreabilidade**: Facilitar auditoria e manutenibilidade dos modelos
5. **Conformidade**: Atender requisitos regulatórios (LGPD, BACEN, CGU)
6. **Eficiência**: Promover boas práticas de performance e otimização

##### 1.2.3 Seções Principais da TE074

A norma está estruturada nas seguintes seções principais:

**3.1 Responsabilidades e Processos**
- 3.1.1 Papéis e responsabilidades (ADI, ABD, Desenvolvimento)
- 3.1.2 Fluxo de aprovação de modelos
- 3.1.3 Versionamento e gestão de mudanças
- 3.1.4 Documentação obrigatória
- 3.1.5 Ferramentas corporativas (PowerDesigner)
- 3.1.6 Programa de Governança de Dados (OR188)
- 3.1.7 Tratamento da Informação (OR016 - classificação)
- 3.1.8 Auditoria e rastreabilidade
- 3.1.9 SLA de atendimento ADI (métrica de produtividade)

**3.2 Diretrizes de Modelagem**
- 3.2.1 Nomenclatura de tabelas
- 3.2.2 Nomenclatura de colunas
- 3.2.3 Chaves primárias (obrigatórias sem exceção)
- 3.2.4 Chaves estrangeiras (integridade referencial)
- 3.2.5 Chaves alternativas (UNIQUE constraints)
- 3.2.6 Check constraints (restrições de domínio)
- 3.2.7 Default constraints (valores padrão)
- 3.2.8 Índices (performance)
- 3.2.9 Triggers (uso restrito, preferir constraints)
- 3.2.10 Stored Procedures (encapsulamento de lógica)
- 3.2.11 Views (abstração e segurança)
- 3.2.12 Particionamento (tabelas volumosas >100M linhas/ano)
- 3.2.13 Compressão de dados (DATA_COMPRESSION=PAGE obrigatória para novas tabelas)
- 3.2.14 Tipos de dados (mapeamento SGBD-agnostic → específico)
- 3.2.15 Normalização (mínimo 3FN, desnormalização justificada)
- 3.2.16 Auditoria (colunas de controle obrigatórias)
- 3.2.17 LGPD (dados pessoais e sensíveis - CR439)
- 3.2.18 Descrição de objetos (Extended Properties, COMMENT ON)

**3.3 Validações Obrigatórias**
- Pré-validador (http://gestaodedados.coresp.caixa)
- Critérios de aprovação (0 não conformidades CRÍTICAS)
- Relatórios de validação (PDF, Excel)

**4. Procedimentos Operacionais**
- 4.1 Submissão de modelos para ADI
- 4.2 Análise e aprovação ADI
- 4.3 Implementação física (ABD)
- 4.4 Deploy e homologação

##### 1.2.4 Fundamentos da Arquitetura de Informação CAIXA

A arquitetura de informação CAIXA baseia-se nos seguintes princípios:

**Princípio 1: Unicidade de Dados**
- Dados mestres (MDM - Master Data Management) devem ter fonte única
- Evitar redundância não controlada
- Sincronização via mecanismos corporativos (TE105, TE124)

**Princípio 2: Integridade de Dados**
- Integridade referencial obrigatória (FKs com ON DELETE/ON UPDATE explícito)
- Constraints declarativas preferíveis a triggers
- Validação em múltiplas camadas (banco, aplicação, API)

**Princípio 3: Rastreabilidade e Auditoria**
- Colunas de auditoria obrigatórias:
  - `_DT_INCLUSAO`: Data/hora de criação
  - `_USU_INCLUSAO`: Usuário/sistema que criou
  - `_DT_ALTERACAO`: Data/hora da última alteração
  - `_USU_ALTERACAO`: Usuário/sistema que alterou
- Trilhas de auditoria para dados sensíveis (LGPD)

**Princípio 4: Segurança e Classificação**
- Classificação de informação segundo OR016 (Pública, Interna, Confidencial, Secreta)
- Row-level security (RLS) quando aplicável
- Column-level security para dados sensíveis
- Criptografia em repouso e em trânsito

**Princípio 5: Documentação e Metadados**
- Toda tabela e coluna DEVE ter descrição (comment/extended property)
- Metadados gerenciados segundo TE174
- Catalogação no dicionário de dados corporativo

##### 1.2.5 Integração com PPDS (Portal de Padrões de Desenvolvimento de Software)

A norma TE074 referencia diversos guias publicados no **PPDS** (Portal de Padrões de Desenvolvimento de Software):

- **Guia de Modelagem - Spring Batch**: Padrões para sistemas batch
- **Guia de Padrões e Convenções - Dimensional**: Modelagem dimensional para Data Warehouses
- **Lista de Objetos para Validação**: Objetos que devem ser validados antes da submissão
- **Melhores Práticas em Modelagem de Dados**: Recomendações avançadas
- **Microsoft SQL Server - Constraint Default**: Uso correto de defaults no SQL Server
- **Modelagem de Dados para Sistemas CAIXA**: Visão consolidada de todas as normas
- **Otimização de Tabelas**: Técnicas de performance tuning
- **Particionamento**: Estratégias de particionamento horizontal
- **Regras de modelagem para Frameworks Autorizados**: Hibernate, EF, etc.
- **Validações executadas no Pré-Validador**: Detalhamento das 100+ regras automáticas

⚠️ **ATENÇÃO**: Todos os guias PPDS são complementares à TE074, mas em caso de conflito, a norma TE074 prevalece.

##### 1.2.6 Responsabilidades (ADI, ABD, Desenvolvimento)

**ADI (Arquitetura de Dados e Informação)**:
- ✅ Aprovar modelos de dados (conceitual, lógico, físico)
- ✅ Garantir conformidade com TE074 e normas corporativas
- ✅ Validar integridade conceitual e arquitetural
- ✅ Manter catálogo de modelos corporativos
- ✅ Atender SLA de análise (conforme métrica 3.1.9)

**ABD (Administração de Banco de Dados)**:
- ✅ Implementar modelos aprovados nos ambientes
- ✅ Otimizar performance (índices, partições, estatísticas)
- ✅ Monitorar crescimento e saúde dos bancos
- ✅ Executar backups, restore e disaster recovery
- ✅ Aplicar patches de segurança e versões

**Desenvolvimento (Analistas, Desenvolvedores)**:
- ✅ Criar modelos de dados (conceitual, lógico, físico)
- ✅ Documentar objetos (Extended Properties, comments)
- ✅ Validar modelos com Pré-Validador antes de submeter
- ✅ Implementar DDL e scripts de migração
- ✅ Corrigir não conformidades apontadas por ADI/ABD

---

#### 1.3 Norma TE079 (Desenvolvimento de Software)

##### 1.3.1 Integração com Ciclo de Desenvolvimento

A norma **TE079 - Desenvolvimento de Software** estabelece as diretrizes para o ciclo de vida de desenvolvimento de sistemas na CAIXA. Embora não seja específica de modelagem de dados, ela possui interfaces importantes:

**Fase de Análise e Design**:
- Modelagem de dados deve ser parte integrante da fase de análise
- Modelo Entidade-Relacionamento (ER) deve ser criado antes do desenvolvimento de código
- Aprovação de modelos pelo ADI deve ser considerada no cronograma do projeto

**Fase de Implementação**:
- DDL gerado a partir do PowerDesigner deve ser versionado (Git, TFS)
- Scripts de migração devem seguir padrão de nomenclatura (V001_descricao.sql, V002_descricao.sql)
- Testes de integridade de dados devem ser incluídos nos testes unitários

**Fase de Homologação**:
- Carga de dados de teste deve respeitar LGPD (anonimização)
- Performance de queries deve ser validada com volumes realistas
- Rollback scripts devem ser testados

##### 1.3.2 Frameworks Autorizados

A TE079, em conjunto com o guia "Regras de modelagem para Frameworks Autorizados", define os ORMs (Object-Relational Mapping) e frameworks permitidos na CAIXA:

**Para .NET**:
- ✅ **Entity Framework Core** (versão 6.0+)
- ✅ **Dapper** (micro-ORM, para queries otimizadas)
- ✅ **ADO.NET** (acesso direto, quando necessário)

**Para Java**:
- ✅ **Hibernate** (versão 5.6+)
- ✅ **JPA (Java Persistence API)** com provedor Hibernate
- ✅ **MyBatis** (para controle fino de SQL)

**Diretrizes para uso de ORMs**:
- Nomenclatura de entidades deve refletir nomenclatura de tabelas (sem prefixo 3-char)
- Mapeamento de tipos deve respeitar tipos recomendados (ver PARTE 4)
- Lazy loading deve ser usado com cautela (problema N+1)
- Queries geradas pelo ORM devem ser validadas quanto a performance
- Migrations geradas pelo ORM (EF Core Migrations, Flyway) devem ser revisadas antes de aplicar

##### 1.3.3 Segurança no Desenvolvimento

A TE079 estabelece diretrizes de segurança que impactam a modelagem de dados:

**Prevenção de SQL Injection**:
- ✅ **SEMPRE** usar prepared statements / parameterized queries
- ✅ **NUNCA** concatenar strings para formar SQL dinâmico
- ✅ Utilizar stored procedures quando apropriado
- ✅ Validar entrada de dados em múltiplas camadas

Exemplo (C# - Entity Framework):
```csharp
// ✅ CORRETO - Parameterizado
var resultado = context.Clientes
    .Where(c => c.CPF == cpfInformado)
    .ToList();

// ❌ INCORRETO - Concatenação (SQL Injection!)
var sql = $"SELECT * FROM PES_CLIENTE WHERE CLI_CPF = '{cpfInformado}'";
var resultado = context.Clientes.FromSqlRaw(sql).ToList();
```

**Controle de Acesso**:
- Usuários de aplicação devem ter privilégios mínimos (principle of least privilege)
- Evitar uso de conta `sa` ou `dbo` em aplicações
- Criar contas de serviço específicas por aplicação
- Implementar Row-Level Security (RLS) quando necessário

**Criptografia**:
- Dados sensíveis (senhas, tokens) devem ser criptografados (LGPD)
- Utilizar `VARBINARY` para armazenar dados criptografados
- Chaves de criptografia devem ser gerenciadas pelo Azure Key Vault ou similar
- Always Encrypted (SQL Server 2016+) para dados extremamente sensíveis

##### 1.3.4 Boas Práticas de Acesso a Dados

**Transações**:
- Utilizar transações explícitas para operações multi-tabela
- Preferir isolamento READ COMMITTED (padrão SQL Server)
- Minimizar tempo de lock (transações curtas)
- Implementar retry logic para deadlocks

**Connection Pooling**:
- Utilizar connection pooling (padrão em ADO.NET, Hibernate)
- Não armazenar conexões em variáveis estáticas
- Sempre fechar conexões (using/try-finally)

**Paginação**:
- Implementar paginação para queries que retornam muitos registros
- Utilizar `OFFSET/FETCH` (SQL Server 2012+) ao invés de `ROW_NUMBER()`

Exemplo SQL Server:
```sql
-- ✅ CORRETO - OFFSET/FETCH (SQL Server 2012+)
SELECT CLI_ID, CLI_NM
FROM PES_CLIENTE
ORDER BY CLI_ID
OFFSET 100 ROWS FETCH NEXT 20 ROWS ONLY;

-- ⚠️ ANTIGO - ROW_NUMBER() (ainda funcional, mas menos eficiente)
WITH CTE AS (
    SELECT CLI_ID, CLI_NM, ROW_NUMBER() OVER (ORDER BY CLI_ID) AS RowNum
    FROM PES_CLIENTE
)
SELECT CLI_ID, CLI_NM
FROM CTE
WHERE RowNum BETWEEN 101 AND 120;
```

**Logging e Monitoramento**:
- Logar queries lentas (>1 segundo)
- Monitorar deadlocks e timeouts
- Utilizar Extended Events (SQL Server) para troubleshooting
- Implementar Application Insights ou similar para APM (Application Performance Monitoring)

---

**📊 Status da SUB-PARTE 1.1**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.2 (Normas de Integração, Metadados e Versionamento)

---

### SUB-PARTE 1.2: Normas de Integração, Metadados e Versionamento

---

#### 1.4 Norma TE105 (Integração de Sistemas - SICLI)

##### 1.4.1 Contexto e Finalidade

A **Norma TE105** estabelece diretrizes para integração de sistemas corporativos com o **SICLI (Sistema Integrado de Cadastro de Clientes)**. Ela é fundamental para garantir a **unicidade e consistência** de dados cadastrais em toda a empresa.

**Objetivo principal**:
- Garantir que todos os sistemas utilizem o cadastro único de clientes (CPF/CNPJ)
- Evitar duplicidade de informações cadastrais
- Padronizar APIs e contratos de dados entre sistemas
- Estabelecer sincronização automática de dados mestres

##### 1.4.2 Padrões de Integração Cadastral

**Princípio Fundamental**: Nenhum sistema CAIXA deve manter cadastro próprio de clientes. Todos devem consumir dados do SICLI.

**Modelos de Integração**:

1. **Integração em Tempo Real (Síncrona)**:
   - Consultas de validação de CPF/CNPJ (APIs REST/SOAP)
   - Verificação de status cadastral em tempo de transação
   - Validação de dados obrigatórios antes de persistir

2. **Integração Assíncrona (Batch)**:
   - Carga noturna de dados cadastrais para cache local
   - Sincronização de alterações via mensageria (Event Hub, Service Bus)
   - Replicação de tabelas de referência (CDC - Change Data Capture)

**Exemplo - Tabela Local Sincronizada**:
```sql
-- Tabela local (cache) sincronizada com SICLI
CREATE TABLE PES_CLIENTE_CACHE (
    CLIENTE_ID BIGINT PRIMARY KEY,  -- ID do SICLI
    CPF_CNPJ_NR VARCHAR(14) NOT NULL UNIQUE,
    NOME_COMPLETO_NM NVARCHAR(200) NOT NULL,
    EMAIL_DS VARCHAR(150),
    TELEFONE_NR VARCHAR(20),
    DATA_ULTIMA_SINCRONIZACAO_DT DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT CK_PES_CLIENTE_CACHE_CPF_CNPJ 
        CHECK (LEN(CPF_CNPJ_NR) IN (11, 14))
) WITH (DATA_COMPRESSION = PAGE);

-- Índice para consultas frequentes
CREATE INDEX IDX_PES_CLIENTE_CACHE_CPF_CNPJ 
    ON PES_CLIENTE_CACHE(CPF_CNPJ_NR);
```

##### 1.4.3 APIs e Contratos de Dados

**Obrigações dos Sistemas Consumidores**:
- ✅ Utilizar APIs padronizadas do SICLI (não acessar banco diretamente)
- ✅ Implementar retry logic com backoff exponencial
- ✅ Cachear dados não voláteis (endereço, data de nascimento)
- ✅ Respeitar rate limits das APIs (conforme SLA)

**Contrato de API - Exemplo**:
```json
// GET /api/v1/clientes/{cpf_cnpj}
{
  "cliente_id": 1234567890,
  "cpf_cnpj": "12345678901",
  "nome_completo": "João da Silva",
  "data_nascimento": "1980-05-15",
  "email": "joao.silva@email.com",
  "telefone": "(11) 98765-4321",
  "status_cadastral": "ATIVO",
  "ultima_atualizacao": "2026-01-05T14:30:00Z"
}
```

##### 1.4.4 Compartilhamento de Dados entre Sistemas

**Princípio de Responsabilidade**:
- Cada sistema é **proprietário** de seus dados de negócio
- Dados compartilhados devem ser expostos via APIs (não acesso direto ao banco)
- Integrações devem ser documentadas e versionadas

**Exemplo - Referência a Dados de Outro Sistema**:
```sql
-- Sistema A mantém contratos
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,  -- Referência ao SICLI
    NUMERO_CONTRATO_NR VARCHAR(20) UNIQUE NOT NULL,
    VALOR_VL DECIMAL(18,2),
    DATA_ASSINATURA_DT DATE,
    -- NÃO incluir colunas de outros sistemas (nome, CPF, etc.)
    -- Consultar via API quando necessário
);

-- ❌ INCORRETO: Duplicar dados de outro sistema
CREATE TABLE CON_CONTRATO_ERRADO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT,
    CLIENTE_NOME_NM NVARCHAR(200),  -- ❌ Dado do SICLI
    CLIENTE_CPF_NR VARCHAR(11),     -- ❌ Duplicação
    ...
);
```

##### 1.4.5 Garantia de Unicidade Cadastral

**Validações Obrigatórias**:
- Validação de CPF/CNPJ via algoritmo de dígitos verificadores
- Consulta ao SICLI antes de qualquer persistência
- Tratamento de exceções (CPF inexistente, bloqueado, inválido)

**Exemplo - Stored Procedure de Validação**:
```sql
CREATE PROCEDURE usp_ValidarCPF_SICLI
    @CPF VARCHAR(11),
    @ClienteID BIGINT OUTPUT,
    @StatusCadastral VARCHAR(20) OUTPUT
AS
BEGIN
    -- 1. Validar formato CPF
    IF LEN(@CPF) <> 11 OR @CPF LIKE '%[^0-9]%'
    BEGIN
        RAISERROR('CPF inválido: deve conter 11 dígitos numéricos', 16, 1);
        RETURN;
    END

    -- 2. Consultar SICLI (via linked server ou API)
    -- Simulação de consulta
    SELECT 
        @ClienteID = CLIENTE_ID,
        @StatusCadastral = STATUS_CADASTRAL
    FROM PES_CLIENTE_CACHE
    WHERE CPF_CNPJ_NR = @CPF;

    -- 3. Validar status
    IF @StatusCadastral NOT IN ('ATIVO', 'REGULAR')
    BEGIN
        RAISERROR('Cliente com status cadastral irregular: %s', 16, 1, @StatusCadastral);
        RETURN;
    END
END;
```

---

#### 1.5 Norma TE124 (Gestão e Integração do Cadastro de Clientes)

##### 1.5.1 Master Data Management (MDM)

A **Norma TE124** complementa a TE105, estabelecendo práticas de **MDM (Master Data Management)** para dados de clientes na CAIXA.

**Conceitos Fundamentais**:
- **Golden Record**: Registro único e consolidado de cada cliente
- **Source of Truth**: SICLI é a fonte autoritativa para dados cadastrais
- **Data Stewardship**: Responsáveis pela qualidade e governança dos dados mestres

**Hierarquia de Dados Mestres**:
```
SICLI (Nível 1 - Fonte Autoritativa)
  ↓
Sistemas Core (Nível 2 - Cache Sincronizado)
  ↓
Sistemas Auxiliares (Nível 3 - Consulta API)
```

##### 1.5.2 Unicidade de Clientes (CPF/CNPJ)

**Regras de Unicidade**:
- ✅ Um CPF/CNPJ corresponde a exatamente UM cliente no SICLI
- ✅ Sistemas não devem criar novos clientes (apenas SICLI tem essa permissão)
- ✅ Atualização de dados cadastrais deve ser enviada ao SICLI para consolidação
- ✅ Sistemas podem ter dados complementares, mas não substituem dados mestres

**Modelo de Dados - Relacionamento com SICLI**:
```sql
-- Tabela local com dados complementares (não duplicar dados mestres)
CREATE TABLE CON_CLIENTE_COMPLEMENTO (
    CLIENTE_ID BIGINT PRIMARY KEY,  -- PK e FK para SICLI
    SCORE_CREDITO_NR INT,           -- Dado local (não no SICLI)
    DATA_ULTIMA_ANALISE_DT DATE,
    OBSERVACOES_DS NVARCHAR(500),
    
    -- Metadados de sincronização
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    
    -- FK lógica (não física para SICLI externo)
    -- Validação via stored procedure antes de INSERT/UPDATE
) WITH (DATA_COMPRESSION = PAGE);

-- Trigger para validar existência no SICLI
CREATE TRIGGER TRG_CON_CLIENTE_COMPLEMENTO_INSERT
ON CON_CLIENTE_COMPLEMENTO
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @ClienteID BIGINT, @StatusCadastral VARCHAR(20);
    
    SELECT @ClienteID = i.CLIENTE_ID FROM inserted i;
    
    -- Validar com SICLI
    EXEC usp_ValidarCPF_SICLI 
        @CPF = NULL,  -- Buscar por ID
        @ClienteID = @ClienteID OUTPUT,
        @StatusCadastral = @StatusCadastral OUTPUT;
    
    -- Se válido, prosseguir com INSERT
    INSERT INTO CON_CLIENTE_COMPLEMENTO (CLIENTE_ID, SCORE_CREDITO_NR, ...)
    SELECT CLIENTE_ID, SCORE_CREDITO_NR, ... FROM inserted;
END;
```

##### 1.5.3 Sincronização Cadastral entre Sistemas

**Estratégias de Sincronização**:

1. **Change Data Capture (CDC)** - SQL Server:
```sql
-- Habilitar CDC no SICLI (exemplo conceitual)
EXEC sys.sp_cdc_enable_db;
EXEC sys.sp_cdc_enable_table 
    @source_schema = 'dbo',
    @source_name = 'PES_CLIENTE',
    @role_name = NULL;

-- Consumir mudanças em sistemas downstream
SELECT * FROM cdc.dbo_PES_CLIENTE_CT
WHERE __$operation IN (2, 4)  -- 2=UPDATE, 4=INSERT
  AND __$start_lsn > @last_sync_lsn;
```

2. **Event-Driven (Azure Service Bus/Event Hub)**:
```json
// Mensagem de evento de alteração cadastral
{
  "event_type": "CLIENTE_ATUALIZADO",
  "timestamp": "2026-01-06T10:30:00Z",
  "cliente_id": 1234567890,
  "campos_alterados": ["email", "telefone"],
  "valores_novos": {
    "email": "novo.email@email.com",
    "telefone": "(11) 91234-5678"
  }
}
```

3. **Batch Sync (Jobs Agendados)**:
```sql
-- Job SQL Agent executado a cada 1 hora
MERGE INTO PES_CLIENTE_CACHE AS Target
USING (
    SELECT CLIENTE_ID, CPF_CNPJ_NR, NOME_COMPLETO_NM, EMAIL_DS, TELEFONE_NR
    FROM SICLI.dbo.PES_CLIENTE  -- Linked Server
    WHERE DATA_ALTERACAO_DT > DATEADD(HOUR, -1, GETDATE())
) AS Source
ON Target.CLIENTE_ID = Source.CLIENTE_ID
WHEN MATCHED THEN
    UPDATE SET 
        Target.NOME_COMPLETO_NM = Source.NOME_COMPLETO_NM,
        Target.EMAIL_DS = Source.EMAIL_DS,
        Target.TELEFONE_NR = Source.TELEFONE_NR,
        Target.DATA_ULTIMA_SINCRONIZACAO_DT = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (CLIENTE_ID, CPF_CNPJ_NR, NOME_COMPLETO_NM, EMAIL_DS, TELEFONE_NR)
    VALUES (Source.CLIENTE_ID, Source.CPF_CNPJ_NR, Source.NOME_COMPLETO_NM, 
            Source.EMAIL_DS, Source.TELEFONE_NR);
```

##### 1.5.4 Integridade Referencial com Cadastros Centrais

**Validações de Integridade**:
- FKs para SICLI devem ser validadas via stored procedures (não FK física para banco externo)
- Orphan records (registros sem cliente correspondente) devem ser monitorados
- Reconciliação periódica (diária/semanal) para detectar inconsistências

**Monitoramento de Integridade**:
```sql
-- Verificar registros órfãos (clientes que não existem mais no SICLI)
SELECT c.*
FROM CON_CONTRATO c
LEFT JOIN PES_CLIENTE_CACHE pcc ON c.CLIENTE_ID = pcc.CLIENTE_ID
WHERE pcc.CLIENTE_ID IS NULL;

-- Notificar equipe de governança de dados
-- Exemplo: enviar alerta se orphan count > threshold
```

---

#### 1.6 Norma TE109 (Informações Compartilhadas)

##### 1.6.1 Versionamento de Modelos de Dados

A **Norma TE109** estabelece diretrizes para o **versionamento** e controle de mudanças em modelos de dados compartilhados entre sistemas.

**Princípios de Versionamento**:
- Todo modelo de dados deve ter número de versão (semver: MAJOR.MINOR.PATCH)
- Mudanças breaking (incompatíveis) incrementam MAJOR
- Novas features (compatíveis) incrementam MINOR
- Bugfixes e ajustes incrementam PATCH

**Exemplo - Controle de Versão**:
```sql
-- Tabela de metadados de versionamento
CREATE TABLE SYS_VERSAO_MODELO (
    VERSAO_ID INT IDENTITY(1,1) PRIMARY KEY,
    MODELO_NM VARCHAR(50) NOT NULL,  -- Nome do modelo/sistema
    VERSAO_NR VARCHAR(20) NOT NULL,  -- Ex: 2.1.0
    DATA_DEPLOY_DT DATETIME2 DEFAULT GETDATE(),
    CHANGELOG_DS NVARCHAR(MAX),       -- Descrição das mudanças
    TIPO_MUDANCA_TP VARCHAR(20),      -- MAJOR, MINOR, PATCH
    RESPONSAVEL_NM VARCHAR(100),
    APROVADO_POR_NM VARCHAR(100),     -- ADI/ABD que aprovou
    
    CONSTRAINT CK_SYS_VERSAO_TIPO 
        CHECK (TIPO_MUDANCA_TP IN ('MAJOR', 'MINOR', 'PATCH'))
) WITH (DATA_COMPRESSION = PAGE);

-- Exemplo de registro
INSERT INTO SYS_VERSAO_MODELO 
    (MODELO_NM, VERSAO_NR, CHANGELOG_DS, TIPO_MUDANCA_TP, RESPONSAVEL_NM)
VALUES 
    ('CON_CONTRATO', '2.1.0', 
     'Adicionada coluna TIPO_GARANTIA_TP. Índice em DATA_VENCIMENTO_DT.', 
     'MINOR', 'João Silva');
```

##### 1.6.2 Gestão de Configuração

**Objetos Versionados**:
- Modelos de dados (PDM - PowerDesigner)
- Scripts DDL (CREATE, ALTER, DROP)
- Scripts DML (INSERT para dados de referência)
- Stored Procedures, Functions, Views
- Índices e constraints

**Repositório de Código**:
- Git/TFS para versionamento de DDL
- Convenção de nomenclatura: `V{versao}__{descricao}.sql`
- Estrutura de pastas por tipo de objeto

**Exemplo - Estrutura Git**:
```
/database
  /migrations
    /v1.0
      V1.0.0__initial_schema.sql
      V1.0.1__add_indexes.sql
    /v2.0
      V2.0.0__add_contrato_garantia.sql
      V2.0.1__fix_fk_names.sql
  /stored_procedures
    usp_ValidarCPF_SICLI.sql
    usp_ProcessarContrato.sql
  /views
    vw_ContratosAtivos.sql
  /seed_data
    REF_TipoContrato.sql
```

##### 1.6.3 Rastreabilidade de Mudanças

**Obrigatoriedade de Documentação**:
- Toda mudança estrutural deve ter justificativa (RTC, ADO, Jira)
- Impacto em sistemas consumidores deve ser analisado
- Comunicação prévia para times afetados (mínimo 15 dias úteis para breaking changes)

**Metadados de Auditoria em Objetos**:
```sql
-- Extended Properties para documentar mudanças (SQL Server)
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Tabela de contratos. Versão 2.1.0 (2026-01-06): Adicionada coluna TIPO_GARANTIA_TP.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Histórico de alterações em colunas
EXEC sp_addextendedproperty 
    @name = 'Historico_Alteracao',
    @value = '2026-01-06: Tamanho alterado de VARCHAR(50) para VARCHAR(100) - RTC#12345',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'OBSERVACOES_DS';
```

##### 1.6.4 Controle de Versões de Tabelas e Objetos

**Estratégias para Mudanças Breaking**:

1. **Adição de Colunas**: Sempre NULL ou com DEFAULT (compatível)
```sql
-- ✅ COMPATÍVEL (MINOR)
ALTER TABLE CON_CONTRATO 
ADD TIPO_GARANTIA_TP VARCHAR(20) NULL;

-- ✅ COMPATÍVEL (MINOR)
ALTER TABLE CON_CONTRATO 
ADD DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE();
```

2. **Remoção de Colunas**: Depreciar primeiro, remover em MAJOR version
```sql
-- Passo 1 (v2.0): Depreciar (adicionar extended property)
EXEC sp_addextendedproperty 
    @name = 'DEPRECATED',
    @value = 'Será removida na versão 3.0. Usar NOVA_COLUNA_DS.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'COLUNA_ANTIGA_DS';

-- Passo 2 (v3.0): Remover após período de transição (6 meses)
ALTER TABLE CON_CONTRATO DROP COLUMN COLUNA_ANTIGA_DS;
```

3. **Renomear Objetos**: Criar novo, manter antigo deprecated, remover depois
```sql
-- Passo 1: Criar novo objeto
CREATE VIEW vw_ContratosAtivosV2 AS ...

-- Passo 2: Depreciar antigo (via extended property)
-- Passo 3: Remover antigo na próxima MAJOR version
```

---

#### 1.7 Norma TE174 (Gerenciamento de Metadados)

##### 1.7.1 Catalogação de Dados Corporativos

A **Norma TE174** estabelece diretrizes para o **gerenciamento de metadados** na CAIXA, garantindo que todos os dados corporativos sejam adequadamente documentados, catalogados e governados.

**Tipos de Metadados**:

1. **Metadados Técnicos**:
   - Estrutura de tabelas (colunas, tipos, constraints)
   - Relacionamentos (PKs, FKs)
   - Índices, partições, compressão
   - Estatísticas de performance

2. **Metadados de Negócio**:
   - Descrições em português (não técnicas)
   - Regras de negócio (check constraints, domínios)
   - Glossário de termos
   - Proprietário dos dados (data owner)

3. **Metadados Operacionais**:
   - Volumetria (número de linhas, crescimento)
   - Frequência de atualização
   - Retention policies (retenção, expurgo)
   - SLA de disponibilidade

##### 1.7.2 Dicionário de Dados (Data Dictionary)

**Obrigatoriedade**: Todo sistema CAIXA deve manter dicionário de dados atualizado.

**Ferramentas**:
- PowerDesigner (geração automática a partir do PDM)
- Extended Properties (SQL Server)
- Catálogo corporativo (portal de metadados)

**Exemplo - Extended Properties Completas**:
```sql
-- Tabela
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Armazena contratos habitacionais firmados com clientes. Inclui financiamentos imobiliários, consórcios e leasing.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',  -- OR016
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Colunas
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Identificador único do contrato. Chave surrogate sequencial.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'CONTRATO_ID';

EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Valor total do contrato em reais (R$). Inclui principal + juros + seguros. Deve ser maior que zero.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'VALOR_TOTAL_VL';

EXEC sp_addextendedproperty 
    @name = 'Dado_Sensivel_LGPD',
    @value = 'NAO',  -- CR439
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO',
    @level2type = 'COLUMN', @level2name = 'VALOR_TOTAL_VL';
```

**Consultar Metadados**:
```sql
-- Listar todas as tabelas com descrições
SELECT 
    t.name AS Tabela,
    ep.value AS Descricao
FROM sys.tables t
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = t.object_id 
    AND ep.minor_id = 0
    AND ep.name = 'MS_Description'
WHERE t.schema_id = SCHEMA_ID('dbo')
ORDER BY t.name;

-- Listar colunas de uma tabela com metadados
SELECT 
    c.name AS Coluna,
    t.name AS Tipo,
    c.max_length AS Tamanho,
    c.is_nullable AS Nullable,
    ep_desc.value AS Descricao,
    ep_lgpd.value AS LGPD
FROM sys.columns c
INNER JOIN sys.types t ON c.user_type_id = t.user_type_id
LEFT JOIN sys.extended_properties ep_desc 
    ON ep_desc.major_id = c.object_id 
    AND ep_desc.minor_id = c.column_id
    AND ep_desc.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_lgpd 
    ON ep_lgpd.major_id = c.object_id 
    AND ep_lgpd.minor_id = c.column_id
    AND ep_lgpd.name = 'Dado_Sensivel_LGPD'
WHERE c.object_id = OBJECT_ID('dbo.CON_CONTRATO')
ORDER BY c.column_id;
```

##### 1.7.3 Linhagem de Dados (Data Lineage)

**Data Lineage**: Rastreamento da origem, transformações e destino dos dados ao longo de seu ciclo de vida.

**Casos de Uso**:
- Auditoria e compliance (LGPD, BACEN)
- Análise de impacto de mudanças
- Troubleshooting de qualidade de dados
- Otimização de ETLs

**Níveis de Linhagem**:

1. **Nível de Tabela** (coarse-grained):
```
SICLI.PES_CLIENTE → [ETL Noturno] → DW.DIM_CLIENTE → [View] → BI.VW_RELATORIO_CLIENTES
```

2. **Nível de Coluna** (fine-grained):
```
SICLI.PES_CLIENTE.CPF_CNPJ_NR → [Transformação: Formatação] → DW.DIM_CLIENTE.CPF_FORMATADO_NR
```

**Ferramentas**:
- Azure Purview (catálogo de dados corporativo)
- SQL Server Integration Services (SSIS) - lineage automático
- PowerDesigner - documentação manual de linhagem

**Exemplo - Documentar Linhagem**:
```sql
-- Extended Property para documentar origem dos dados
EXEC sp_addextendedproperty 
    @name = 'Data_Lineage',
    @value = 'Origem: SICLI.dbo.PES_CLIENTE. Transformação: ETL_DW_DIARIO (SSIS Package). Atualização: Diária às 02:00.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'DIM_CLIENTE';

-- Tabela de metadados de linhagem (exemplo simplificado)
CREATE TABLE SYS_DATA_LINEAGE (
    LINEAGE_ID INT IDENTITY(1,1) PRIMARY KEY,
    TABELA_ORIGEM_NM VARCHAR(100) NOT NULL,
    COLUNA_ORIGEM_NM VARCHAR(100),
    TABELA_DESTINO_NM VARCHAR(100) NOT NULL,
    COLUNA_DESTINO_NM VARCHAR(100),
    TRANSFORMACAO_DS NVARCHAR(500),
    PROCESSO_ETL_NM VARCHAR(100),
    FREQUENCIA_ATUALIZACAO_DS VARCHAR(50),
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE()
);

-- Exemplo de registro
INSERT INTO SYS_DATA_LINEAGE 
VALUES (
    'SICLI.dbo.PES_CLIENTE', 'CPF_CNPJ_NR',
    'DW.dbo.DIM_CLIENTE', 'CPF_FORMATADO_NR',
    'Formatação com máscara XXX.XXX.XXX-XX',
    'ETL_DW_DIARIO',
    'Diária - 02:00',
    GETDATE()
);
```

##### 1.7.4 Documentação Obrigatória (Extended Properties)

**Metadados Obrigatórios por Tipo de Objeto**:

**Tabelas**:
- ✅ `MS_Description`: Descrição de negócio (obrigatória)
- ✅ `Data_Owner`: Área responsável (obrigatória)
- ✅ `Classificacao_Informacao`: OR016 - Pública/Interna/Confidencial/Secreta (obrigatória)
- ✅ `Retention_Policy`: Política de retenção (se aplicável)
- ⚠️ `Data_Lineage`: Origem dos dados (recomendada para DW/BI)

**Colunas**:
- ✅ `MS_Description`: Descrição de negócio (obrigatória)
- ✅ `Dado_Sensivel_LGPD`: SIM/NAO (obrigatória - CR439)
- ⚠️ `Formato_Esperado`: Regex ou exemplos (recomendada para campos com padrão)
- ⚠️ `Fonte_Dados`: Origem (SICLI, cálculo, entrada manual)

**Views**:
- ✅ `MS_Description`: Finalidade da view (obrigatória)
- ✅ `Tabelas_Origem`: Tabelas utilizadas (recomendada)

**Stored Procedures**:
- ✅ `MS_Description`: Finalidade e parâmetros (obrigatória)
- ✅ `Exemplo_Uso`: Como executar (recomendada)

**Validação de Completude**:
```sql
-- Verificar tabelas sem descrição (não conformidade)
SELECT t.name AS Tabela_Sem_Descricao
FROM sys.tables t
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = t.object_id 
    AND ep.minor_id = 0
    AND ep.name = 'MS_Description'
WHERE t.schema_id = SCHEMA_ID('dbo')
  AND t.type = 'U'
  AND ep.value IS NULL;

-- Verificar colunas sem descrição
SELECT 
    OBJECT_NAME(c.object_id) AS Tabela,
    c.name AS Coluna_Sem_Descricao
FROM sys.columns c
LEFT JOIN sys.extended_properties ep 
    ON ep.major_id = c.object_id 
    AND ep.minor_id = c.column_id
    AND ep.name = 'MS_Description'
WHERE OBJECTPROPERTY(c.object_id, 'IsUserTable') = 1
  AND ep.value IS NULL
ORDER BY OBJECT_NAME(c.object_id), c.column_id;
```

---

**📊 Status da SUB-PARTE 1.2**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.3 (Governança, Compliance e Padrões Internacionais)

---

### SUB-PARTE 1.3: Governança, Compliance e Padrões Internacionais

---

#### 1.8 Norma OR016 (Tratamento da Informação)

##### 1.8.1 Contexto e Finalidade

A **Norma OR016** estabelece diretrizes para **classificação e tratamento da informação** na CAIXA, com o objetivo de proteger ativos de informação conforme seu grau de sensibilidade e criticidade para o negócio.

**Objetivo principal**:
- Classificar informações segundo níveis de confidencialidade
- Estabelecer controles de acesso baseados em classificação
- Definir políticas de retenção e descarte de dados
- Garantir conformidade com legislação de sigilo bancário

##### 1.8.2 Classificação de Informação

**Níveis de Classificação Obrigatórios** (TE074 3.2.1.3):

| Classificação | Descrição | Impacto se Divulgada | Exemplos |
|---------------|-----------|---------------------|----------|
| **PÚBLICA** | Informação destinada ao público em geral | Nenhum | Taxas de juros, produtos publicitados |
| **INTERNA** | Informação de uso interno da CAIXA | Baixo | Manuais internos, processos operacionais |
| **CONFIDENCIAL** | Informação restrita a grupos específicos | Médio/Alto | Dados de clientes, contratos, estratégias |
| **SECRETA** | Informação estratégica, alto impacto | Muito Alto | Senhas master, chaves criptográficas, auditorias CGU |

**Obrigatoriedade na Modelagem**:
- ✅ Todo modelo de dados DEVE ter classificação
- ✅ Toda tabela DEVE ter classificação (Extended Property)
- ✅ Toda coluna DEVE ter classificação (quando diferente da tabela)

**Exemplo - SQL Server Extended Properties**:
```sql
-- Classificação no nível de tabela
EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

-- Classificação no nível de coluna (quando mais restritiva que a tabela)
EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'SECRETA',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'SEG_USUARIO',
    @level2type = 'COLUMN', @level2name = 'SENHA_HASH_BIN';
```

**PowerDesigner - Extensão CAIXA**:
```
Propriedade Customizada: "Classificação Informação"
Valores permitidos: PÚBLICA | INTERNA | CONFIDENCIAL | SECRETA
Obrigatória: SIM
Validação: Pré-Validador (categoria V201)
```

##### 1.8.3 Controles de Acesso Baseados em Classificação

**Princípios de Acesso**:
- **Need-to-know**: Acesso apenas ao necessário para execução do trabalho
- **Least privilege**: Privilégios mínimos suficientes
- **Separation of duties**: Segregação de funções sensíveis

**Implementação no SQL Server**:

1. **Row-Level Security (RLS)** - Para classificações CONFIDENCIAL/SECRETA:
```sql
-- Função de predicado (filtra linhas baseado no usuário)
CREATE FUNCTION dbo.fn_RLS_Contrato(@UsuarioID INT)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN (
    SELECT 1 AS Result
    WHERE 
        -- Gerente vê todos os contratos
        IS_MEMBER('Gerentes') = 1
        OR
        -- Operador vê apenas seus contratos
        @UsuarioID = USER_ID()
);

-- Aplicar política de segurança
CREATE SECURITY POLICY pol_RLS_Contrato
ADD FILTER PREDICATE dbo.fn_RLS_Contrato(RESPONSAVEL_ID)
ON dbo.CON_CONTRATO
WITH (STATE = ON);
```

2. **Dynamic Data Masking (DDM)** - Para dados sensíveis:
```sql
-- Mascarar CPF/CNPJ
ALTER TABLE PES_CLIENTE
ALTER COLUMN CPF_CNPJ_NR ADD MASKED WITH (FUNCTION = 'partial(3,"XXX.XXX.XXX",2)');
-- Exibe: 123.XXX.XXX-01

-- Mascarar email
ALTER TABLE PES_CLIENTE
ALTER COLUMN EMAIL_DS ADD MASKED WITH (FUNCTION = 'email()');
-- Exibe: jXXX@XXXX.com

-- Usuários com permissão UNMASK veem dados completos
GRANT UNMASK TO [Auditores];
```

3. **Column-Level Security** - Permissões granulares:
```sql
-- Negar acesso direto a colunas sensíveis
DENY SELECT ON dbo.SEG_USUARIO(SENHA_HASH_BIN) TO [Operadores];

-- Permitir acesso via view com lógica de autorização
CREATE VIEW vw_Usuario_Seguro AS
SELECT 
    USUARIO_ID,
    NOME_NM,
    EMAIL_DS,
    -- Senha nunca é exposta
    CASE WHEN IS_MEMBER('Administradores') = 1 
         THEN '***HASH***' 
         ELSE NULL END AS SENHA_STATUS
FROM dbo.SEG_USUARIO;

GRANT SELECT ON vw_Usuario_Seguro TO [Operadores];
```

##### 1.8.4 Retenção e Descarte de Dados

**Políticas de Retenção por Classificação**:

| Classificação | Retenção Online | Retenção Arquivo | Descarte |
|---------------|-----------------|------------------|----------|
| **PÚBLICA** | 2 anos | Indefinido | Não obrigatório |
| **INTERNA** | 3 anos | 10 anos | Após período legal |
| **CONFIDENCIAL** | 5 anos | 10-20 anos | Obrigatório (LGPD) |
| **SECRETA** | 7 anos | 30 anos | Destruição segura |

**Implementação - Expurgo Automático**:
```sql
-- Tabela de controle de retenção
CREATE TABLE SYS_POLITICA_RETENCAO (
    TABELA_NM VARCHAR(100) PRIMARY KEY,
    CLASSIFICACAO_TP VARCHAR(20),
    RETENCAO_ONLINE_ANOS INT,
    RETENCAO_ARQUIVO_ANOS INT,
    CAMPO_DATA_REFERENCIA_NM VARCHAR(100),
    PROCEDIMENTO_EXPURGO_NM VARCHAR(200),
    
    CONSTRAINT CK_SYS_POLITICA_CLASSIFICACAO
        CHECK (CLASSIFICACAO_TP IN ('PUBLICA', 'INTERNA', 'CONFIDENCIAL', 'SECRETA'))
);

-- Exemplo de política
INSERT INTO SYS_POLITICA_RETENCAO VALUES
('CON_CONTRATO', 'CONFIDENCIAL', 5, 10, 'DATA_ASSINATURA_DT', 'usp_ExpurgarContratos');

-- Stored Procedure de expurgo (exemplo)
CREATE PROCEDURE usp_ExpurgarContratos
AS
BEGIN
    DECLARE @DataCorte DATE = DATEADD(YEAR, -5, GETDATE());
    
    -- 1. Migrar para tabela histórico (arquivo)
    INSERT INTO CON_CONTRATO_HISTORICO
    SELECT * 
    FROM CON_CONTRATO
    WHERE DATA_ASSINATURA_DT < @DataCorte
      AND STATUS_TP = 'ENCERRADO';
    
    -- 2. Deletar dados migrados
    DELETE FROM CON_CONTRATO
    WHERE DATA_ASSINATURA_DT < @DataCorte
      AND STATUS_TP = 'ENCERRADO';
    
    -- 3. Log de auditoria
    INSERT INTO SYS_LOG_EXPURGO (TABELA_NM, DATA_CORTE_DT, REGISTROS_EXPURGADOS_QT)
    VALUES ('CON_CONTRATO', @DataCorte, @@ROWCOUNT);
END;
```

##### 1.8.5 Marcação de Sensibilidade (Column-Level Security)

**Metadados de Sensibilidade**:
```sql
-- Marcar colunas sensíveis (Extended Property)
EXEC sp_addextendedproperty 
    @name = 'Dado_Sensivel',
    @value = 'SIM',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

-- Adicionar categoria de sensibilidade
EXEC sp_addextendedproperty 
    @name = 'Categoria_Sensibilidade',
    @value = 'DADO_PESSOAL_LGPD',  -- CR439
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';
```

**Consultar colunas sensíveis**:
```sql
SELECT 
    OBJECT_NAME(ep.major_id) AS Tabela,
    c.name AS Coluna,
    ep_sensivel.value AS Dado_Sensivel,
    ep_categoria.value AS Categoria
FROM sys.extended_properties ep_sensivel
INNER JOIN sys.columns c ON ep_sensivel.major_id = c.object_id AND ep_sensivel.minor_id = c.column_id
LEFT JOIN sys.extended_properties ep_categoria 
    ON ep_categoria.major_id = c.object_id 
    AND ep_categoria.minor_id = c.column_id
    AND ep_categoria.name = 'Categoria_Sensibilidade'
WHERE ep_sensivel.name = 'Dado_Sensivel'
  AND ep_sensivel.value = 'SIM'
ORDER BY Tabela, Coluna;
```

---

#### 1.9 Norma OR188 (Programa de Governança de Dados - PGD)

##### 1.9.1 Princípios de Governança Corporativa

A **Norma OR188** estabelece o **Programa de Governança de Dados (PGD)** da CAIXA, conforme referenciado em TE074 3.1.6.

**Objetivos do PGD**:
- Garantir **qualidade** dos dados corporativos
- Estabelecer **responsabilidades** claras sobre dados
- Promover **reuso** e compartilhamento de informações
- Assegurar **conformidade** regulatória (BACEN, CGU, LGPD)
- Maximizar **valor** dos ativos de dados

**Princípios Fundamentais**:

1. **Accountability (Responsabilização)**:
   - Toda informação tem um Data Owner (proprietário)
   - Data Stewards (guardiães) zelam pela qualidade
   - Decisões sobre dados são rastreáveis

2. **Transparency (Transparência)**:
   - Metadados acessíveis e documentados
   - Linhagem de dados visível
   - Políticas de dados publicadas

3. **Integrity (Integridade)**:
   - Dados precisos e consistentes
   - Validações em múltiplas camadas
   - Auditoria de mudanças

4. **Protection (Proteção)**:
   - Classificação segundo OR016
   - Controles de acesso apropriados
   - Criptografia para dados sensíveis

5. **Compliance (Conformidade)**:
   - Aderência à LGPD (CR439)
   - Atendimento a normas BACEN
   - Políticas de retenção e expurgo

##### 1.9.2 Data Stewardship (Guardiães de Dados)

**Estrutura de Governança**:

```
Comitê Estratégico de Dados
         |
    +---------+---------+
    |                   |
Data Owners      Data Stewards
(VP, Gerentes)   (ADI, Analistas)
    |                   |
    +-------------------+
              |
    Equipes de Desenvolvimento
```

**Responsabilidades**:

**Data Owner (Proprietário de Dados)**:
- Define regras de negócio para os dados
- Aprova acesso a dados sensíveis
- Determina políticas de retenção
- Gerencia qualidade e uso dos dados

**Data Steward (Guardião de Dados)**:
- Implementa políticas definidas pelo Data Owner
- Monitora qualidade de dados
- Cataloga e documenta metadados
- Resolve conflitos de integração
- ADI atua como Data Steward corporativo

**Data Custodian (Custodiante - ABD)**:
- Implementa controles técnicos
- Gerencia backups e restore
- Aplica políticas de segurança
- Monitora performance

**Exemplo - Documentar Responsabilidades**:
```sql
-- Extended Properties para Data Ownership
EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Steward',
    @value = 'ADI Habitação - João Silva (C123456)',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Custodian',
    @value = 'ABD Produção - Equipe SQL Server',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';
```

##### 1.9.3 Qualidade de Dados

**Dimensões de Qualidade** (6 dimensões principais):

| Dimensão | Descrição | Métrica | Validação SQL Server |
|----------|-----------|---------|----------------------|
| **Acurácia** | Dados corretos e precisos | % registros válidos | CHECK constraints, triggers |
| **Completude** | Ausência de valores nulos indevidos | % campos preenchidos | NOT NULL, DEFAULT |
| **Consistência** | Valores uniformes entre sistemas | % divergências | FKs, comparação cross-database |
| **Atualidade** | Dados refletem realidade atual | Idade média dos dados | Colunas de auditoria (_DT_ATUALIZACAO) |
| **Unicidade** | Sem duplicatas indevidas | % registros duplicados | UNIQUE constraints, deduplicação |
| **Integridade** | Relacionamentos preservados | % FKs órfãs | Foreign keys, queries de validação |

**Exemplo - Monitoramento de Qualidade**:
```sql
-- Tabela de métricas de qualidade
CREATE TABLE SYS_METRICA_QUALIDADE (
    METRICA_ID INT IDENTITY(1,1) PRIMARY KEY,
    TABELA_NM VARCHAR(100),
    DIMENSAO_TP VARCHAR(20),
    METRICA_DS VARCHAR(200),
    VALOR_ATUAL_PC DECIMAL(5,2),
    VALOR_META_PC DECIMAL(5,2),
    DATA_MEDICAO_DT DATETIME2 DEFAULT GETDATE(),
    STATUS_TP VARCHAR(20),  -- OK, ALERTA, CRITICO
    
    CONSTRAINT CK_SYS_METRICA_DIMENSAO
        CHECK (DIMENSAO_TP IN ('ACURACIA', 'COMPLETUDE', 'CONSISTENCIA', 
                                'ATUALIDADE', 'UNICIDADE', 'INTEGRIDADE'))
);

-- Procedimento de medição de completude
CREATE PROCEDURE usp_MedirCompletude
    @Tabela VARCHAR(100),
    @Coluna VARCHAR(100)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @TotalRegistros INT;
    DECLARE @RegistrosCompletos INT;
    DECLARE @Completude DECIMAL(5,2);
    
    -- Contar total de registros
    SET @SQL = N'SELECT @Total = COUNT(*) FROM ' + QUOTENAME(@Tabela);
    EXEC sp_executesql @SQL, N'@Total INT OUTPUT', @Total = @TotalRegistros OUTPUT;
    
    -- Contar registros com valor não-nulo
    SET @SQL = N'SELECT @Completos = COUNT(*) FROM ' + QUOTENAME(@Tabela) + 
               N' WHERE ' + QUOTENAME(@Coluna) + ' IS NOT NULL';
    EXEC sp_executesql @SQL, N'@Completos INT OUTPUT', @Completos = @RegistrosCompletos OUTPUT;
    
    -- Calcular percentual
    SET @Completude = (CAST(@RegistrosCompletos AS DECIMAL(10,2)) / @TotalRegistros) * 100;
    
    -- Registrar métrica
    INSERT INTO SYS_METRICA_QUALIDADE (TABELA_NM, DIMENSAO_TP, METRICA_DS, VALOR_ATUAL_PC, VALOR_META_PC, STATUS_TP)
    VALUES (
        @Tabela, 
        'COMPLETUDE', 
        'Completude da coluna ' + @Coluna,
        @Completude,
        95.00,  -- Meta: 95% de completude
        CASE WHEN @Completude >= 95 THEN 'OK'
             WHEN @Completude >= 80 THEN 'ALERTA'
             ELSE 'CRITICO' END
    );
END;
```

##### 1.9.4 Comitês e Responsabilidades

**Estrutura de Comitês**:

1. **Comitê Estratégico de Dados (CED)**:
   - Nível: Vice-Presidência
   - Frequência: Trimestral
   - Decisões: Estratégia de dados, investimentos, políticas corporativas

2. **Comitê Tático de Dados (CTD)**:
   - Nível: Gerências Nacionais
   - Frequência: Mensal
   - Decisões: Priorização de demandas, resolução de conflitos, alocação de recursos

3. **Grupos de Trabalho (GT)**:
   - Nível: Técnico (ADI, ABD, Desenvolvimento)
   - Frequência: Semanal/Conforme demanda
   - Decisões: Questões técnicas, padrões, validações

**Fluxo de Decisão**:
```
Questão Técnica → GT → Resolução
    ↓ (se não resolvida)
Conflito entre Áreas → CTD → Resolução
    ↓ (se não resolvida)
Decisão Estratégica → CED → Resolução Final
```

##### 1.9.5 Métricas de Produtividade (SLA ADI)

Conforme **TE074 3.1.9**, o ADI possui métricas de produtividade baseadas em **contagem de objetos/ações**.

**SLA de Atendimento ADI**:

| Tipo de Demanda | Complexidade | SLA (dias úteis) | Base de Cálculo |
|-----------------|--------------|------------------|-----------------|
| **Novo Sistema** | Alta | 15-20 | Qtd tabelas × 1.5 dias |
| **Novo Módulo** | Média | 10-15 | Qtd tabelas × 1.0 dia |
| **Manutenção** | Baixa | 3-5 | Qtd objetos novos × 0.5 dia |
| **Consultoria** | Variável | 1-3 | Por solicitação |

**Fatores de Ajuste**:
- Complexidade do modelo (+20% se >50 tabelas)
- Integração com sistemas legados (+15%)
- Dados compartilhados/MDM (+10%)
- Período de alta demanda (+20% em nov-dez)

**Exemplo - Cálculo de Prazo**:
```
Demanda: Novo módulo com 25 tabelas, 5 integrações SICLI

Cálculo:
- Base: 25 tabelas × 1.0 dia = 25 dias
- Ajuste integração: 25 × 1.15 = 28.75 dias
- Arredondamento: 29 dias úteis
- SLA: ~6 semanas (considerando feriados)
```

**Portal de Acompanhamento**:
- URL: https://caixa.sharepoint.com/sites/5141/SitePages/Estimativa-Prazo-Atendimento-UAM.aspx
- Funcionalidade: Calculadora de SLA, tracking de demandas, métricas de atendimento

---

#### 1.10 Norma CR439 (LGPD - Lei Geral de Proteção de Dados)

##### 1.10.1 Contexto Legal e Normativo

A **Norma CR439** estabelece procedimentos para atendimento à **Lei Geral de Proteção de Dados Pessoais (LGPD)** - Lei nº 13.709/2018, conforme referenciado em TE074 3.2.17.

**Base Legal**:
- Lei nº 13.709/2018 (LGPD)
- Lei nº 13.853/2019 (alterações LGPD)
- Lei nº 14.010/2020 (LGPD durante pandemia)

**Objetivo**: Proteger direitos fundamentais de **liberdade** e **privacidade** da pessoa natural.

##### 1.10.2 Dados Pessoais e Dados Sensíveis

**Definições LGPD**:

**Dados Pessoais**:
- Informação relacionada a pessoa natural identificada ou identificável
- Exemplos: Nome, CPF, email, endereço, telefone, IP

**Dados Pessoais Sensíveis**:
- Informação sobre origem racial/étnica, convicção religiosa, opinião política, filiação sindical, saúde, vida sexual, genética, biometria
- Exemplos: Dados de saúde (seguros, empréstimos consignados), biometria facial, impressões digitais

**Dados Anonimizados**:
- Não permitem identificação do titular (irreversível)
- **Fora do escopo** da LGPD quando anonimização adequada

**Exemplo - Classificação de Dados**:
```sql
-- Extended Property indicando tipo de dado LGPD
EXEC sp_addextendedproperty 
    @name = 'Dado_Pessoal_LGPD',
    @value = 'SIM',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

EXEC sp_addextendedproperty 
    @name = 'Categoria_LGPD',
    @value = 'DADO_PESSOAL',  -- ou 'DADO_SENSIVEL'
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

-- Exemplo de dado sensível
EXEC sp_addextendedproperty 
    @name = 'Categoria_LGPD',
    @value = 'DADO_SENSIVEL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'SEG_BIOMETRIA',
    @level2type = 'COLUMN', @level2name = 'DIGITAL_HASH_BIN';
```

##### 1.10.3 Direitos dos Titulares

**10 Direitos Garantidos pela LGPD** (Art. 18):

1. **Confirmação de tratamento**: Titular pode confirmar se seus dados são tratados
2. **Acesso aos dados**: Titular pode acessar seus dados
3. **Correção**: Titular pode corrigir dados incompletos/incorretos
4. **Anonimização/Bloqueio/Eliminação**: Dados excessivos ou desnecessários
5. **Portabilidade**: Transferir dados para outro fornecedor
6. **Eliminação**: Excluir dados tratados com consentimento
7. **Informação sobre compartilhamento**: Saber com quem dados foram compartilhados
8. **Informação sobre não consentimento**: Consequências de não fornecer dados
9. **Revogação de consentimento**: Cancelar autorização de uso
10. **Oposição**: Opor-se a tratamento baseado em interesse legítimo

**SLA CAIXA para Direitos do Titular** (CR439):
- **15 dias úteis** para atendimento (prazo máximo)
- Canais: SAC 0800, agências, portal internet

##### 1.10.4 Right to Erasure (Direito ao Esquecimento)

**Implementação Técnica**:

```sql
-- Stored Procedure para atender Right to Erasure
CREATE PROCEDURE usp_LGPD_ExcluirDadosTitular
    @CPF_CNPJ VARCHAR(14),
    @MotivoExclusao VARCHAR(500),
    @SolicitanteMatricula VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ClienteID BIGINT;
    DECLARE @DataSolicitacao DATETIME2 = GETDATE();
    
    -- 1. Validar existência do titular
    SELECT @ClienteID = CLIENTE_ID 
    FROM PES_CLIENTE 
    WHERE CPF_CNPJ_NR = @CPF_CNPJ;
    
    IF @ClienteID IS NULL
    BEGIN
        RAISERROR('CPF/CNPJ não encontrado', 16, 1);
        RETURN;
    END
    
    -- 2. Verificar se há impedimentos legais para exclusão
    IF EXISTS (
        SELECT 1 FROM CON_CONTRATO 
        WHERE CLIENTE_ID = @ClienteID 
          AND STATUS_TP IN ('ATIVO', 'SUSPENSO')
    )
    BEGIN
        RAISERROR('Titular possui contratos ativos. Exclusão não permitida.', 16, 1);
        RETURN;
    END
    
    -- 3. Registrar solicitação de exclusão (auditoria)
    INSERT INTO SYS_LGPD_SOLICITACAO_EXCLUSAO 
        (CLIENTE_ID, CPF_CNPJ_NR, DATA_SOLICITACAO_DT, MOTIVO_DS, SOLICITANTE_NM, STATUS_TP)
    VALUES 
        (@ClienteID, @CPF_CNPJ, @DataSolicitacao, @MotivoExclusao, @SolicitanteMatricula, 'PENDENTE');
    
    -- 4. Anonimizar dados ao invés de deletar (para preservar integridade histórica)
    BEGIN TRANSACTION;
    
    UPDATE PES_CLIENTE
    SET 
        NOME_COMPLETO_NM = 'ANONIMIZADO',
        CPF_CNPJ_NR = 'EXCLUIDO_' + CONVERT(VARCHAR(20), @ClienteID),
        EMAIL_DS = NULL,
        TELEFONE_NR = NULL,
        DATA_NASCIMENTO_DT = NULL,
        -- Preservar ID para integridade referencial
        DATA_EXCLUSAO_LGPD_DT = @DataSolicitacao,
        USUARIO_EXCLUSAO_LGPD_NM = @SolicitanteMatricula
    WHERE CLIENTE_ID = @ClienteID;
    
    -- 5. Deletar dados de tabelas relacionadas (quando aplicável)
    DELETE FROM PES_CLIENTE_ENDERECO WHERE CLIENTE_ID = @ClienteID;
    DELETE FROM PES_CLIENTE_TELEFONE WHERE CLIENTE_ID = @ClienteID;
    
    -- 6. Marcar solicitação como concluída
    UPDATE SYS_LGPD_SOLICITACAO_EXCLUSAO
    SET STATUS_TP = 'CONCLUIDA',
        DATA_CONCLUSAO_DT = GETDATE()
    WHERE CLIENTE_ID = @ClienteID
      AND DATA_SOLICITACAO_DT = @DataSolicitacao;
    
    COMMIT TRANSACTION;
    
    PRINT 'Dados do titular anonimizados com sucesso (LGPD Art. 18).';
END;
```

##### 1.10.5 Minimização de Dados

**Princípio**: Coletar apenas dados **necessários** e **adequados** à finalidade do tratamento.

**Implementação na Modelagem**:
```sql
-- ❌ INCORRETO: Coletar dados desnecessários
CREATE TABLE PES_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT PRIMARY KEY,
    NOME_NM NVARCHAR(200),
    CPF_NR VARCHAR(11),
    RG_NR VARCHAR(20),              -- ❌ Necessário?
    ESTADO_CIVIL_TP VARCHAR(20),    -- ❌ Necessário?
    NOME_MAE_NM NVARCHAR(200),      -- ❌ Necessário?
    RELIGIAO_DS VARCHAR(50),        -- ❌ PROIBIDO (dado sensível sem justificativa)
    ORIENTACAO_SEXUAL_DS VARCHAR(50) -- ❌ PROIBIDO
);

-- ✅ CORRETO: Minimização de dados
CREATE TABLE PES_CLIENTE_CORRETO (
    CLIENTE_ID BIGINT PRIMARY KEY,
    NOME_NM NVARCHAR(200) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    -- Apenas dados estritamente necessários para a finalidade
);
```

**Justificativa de Coleta**:
```sql
-- Documentar finalidade e base legal para cada coluna sensível
EXEC sp_addextendedproperty 
    @name = 'LGPD_Finalidade',
    @value = 'Identificação única do cliente para cumprimento de obrigação legal (Resolução BACEN 2554/98)',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';

EXEC sp_addextendedproperty 
    @name = 'LGPD_Base_Legal',
    @value = 'Obrigação Legal (Art. 7º, II)',  -- Não requer consentimento
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'PES_CLIENTE',
    @level2type = 'COLUMN', @level2name = 'CPF_CNPJ_NR';
```

##### 1.10.6 Privacy by Design e Privacy by Default

**Privacy by Design** (Privacidade desde a Concepção):
- Incorporar proteção de dados desde o início do projeto
- Proativo, não reativo
- Privacidade como padrão, não opt-in

**Privacy by Default** (Privacidade por Padrão):
- Configurações mais restritivas por padrão
- Minimização automática de dados
- Retenção apenas pelo tempo necessário

**Implementação**:
```sql
-- Tabela com Privacy by Design
CREATE TABLE PES_CLIENTE_PRIVACIDADE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- Dados mínimos necessários
    CPF_CNPJ_NR VARCHAR(14) NOT NULL UNIQUE,
    NOME_NM NVARCHAR(200) NOT NULL,
    
    -- Dados opcionais (Privacy by Default = NULL)
    EMAIL_DS VARCHAR(150) NULL,
    TELEFONE_NR VARCHAR(20) NULL,
    
    -- Criptografia para dados sensíveis
    SENHA_HASH_BIN VARBINARY(64) NOT NULL,  -- bcrypt/argon2
    
    -- Consentimentos explícitos (opt-in)
    CONSENTIMENTO_EMAIL_MARKETING_IN CHAR(1) DEFAULT 'N',
    CONSENTIMENTO_SMS_MARKETING_IN CHAR(1) DEFAULT 'N',
    DATA_CONSENTIMENTO_EMAIL_DT DATETIME2 NULL,
    DATA_CONSENTIMENTO_SMS_DT DATETIME2 NULL,
    
    -- Auditoria LGPD
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE(),
    DATA_ULTIMA_ALTERACAO_DT DATETIME2 NULL,
    DATA_ULTIMO_ACESSO_DT DATETIME2 NULL,
    IP_ULTIMO_ACESSO_DS VARCHAR(45) NULL,
    
    -- Retention policy (Privacy by Default)
    DATA_INATIVACAO_DT DATETIME2 NULL,  -- 2 anos sem acesso → inativar
    DATA_EXCLUSAO_PREVISTA_DT AS DATEADD(YEAR, 5, DATA_INATIVACAO_DT),  -- 5 anos → excluir
    
    CONSTRAINT CK_CONSENTIMENTO_EMAIL CHECK (CONSENTIMENTO_EMAIL_MARKETING_IN IN ('S', 'N')),
    CONSTRAINT CK_CONSENTIMENTO_SMS CHECK (CONSENTIMENTO_SMS_MARKETING_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
```

##### 1.10.7 Anonimização e Pseudonimização

**Definições**:
- **Anonimização**: Irreversível, não permite reidentificação (FORA da LGPD)
- **Pseudonimização**: Reversível com chave, permite reidentificação (DENTRO da LGPD, mas com proteção adicional)

**Técnicas de Anonimização**:

1. **Generalização** (reduzir precisão):
```sql
-- Antes: 1985-03-15 → Depois: 1985 (ano)
SELECT 
    YEAR(DATA_NASCIMENTO_DT) AS ANO_NASCIMENTO,
    COUNT(*) AS TOTAL_CLIENTES
FROM PES_CLIENTE
GROUP BY YEAR(DATA_NASCIMENTO_DT);
```

2. **Supressão** (remover valores):
```sql
-- Remover CPF completo, manter apenas hash
UPDATE PES_CLIENTE_ANONIMIZADO
SET CPF_NR = NULL,
    CPF_HASH = HASHBYTES('SHA2_256', CPF_NR);
```

3. **Agregação** (combinar registros):
```sql
-- Dados agregados (não individualizados)
SELECT 
    FAIXA_ETARIA = CASE 
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 30 THEN '18-29'
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 40 THEN '30-39'
        ELSE '40+' END,
    COUNT(*) AS TOTAL
FROM PES_CLIENTE
GROUP BY CASE 
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 30 THEN '18-29'
        WHEN DATEDIFF(YEAR, DATA_NASCIMENTO_DT, GETDATE()) < 40 THEN '30-39'
        ELSE '40+' END;
```

**Pseudonimização (Tokenização)**:
```sql
-- Tabela de tokens (separada, acesso restrito)
CREATE TABLE SEC_TOKEN_CPF (
    TOKEN_ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
    CPF_HASH_BIN VARBINARY(32) NOT NULL UNIQUE,  -- SHA-256 do CPF
    CPF_CRIPTOGRAFADO_BIN VARBINARY(256) NOT NULL,  -- AES-256
    DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela de negócio usa apenas token
CREATE TABLE CON_CONTRATO_ANONIMIZADO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_TOKEN_ID UNIQUEIDENTIFIER NOT NULL,  -- Referência ao token
    VALOR_VL DECIMAL(18,2),
    -- Sem CPF/nome/dados pessoais
    CONSTRAINT FK_CONTRATO_TOKEN FOREIGN KEY (CLIENTE_TOKEN_ID) 
        REFERENCES SEC_TOKEN_CPF(TOKEN_ID)
);
```

##### 1.10.8 Auditoria e Rastreabilidade (Trilhas de Acesso)

**Obrigatoriedade**: Registrar todos os acessos a dados pessoais (LGPD Art. 37).

**Implementação - Trilha de Auditoria**:
```sql
-- Tabela de log de acesso
CREATE TABLE SYS_LGPD_LOG_ACESSO (
    LOG_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    TABELA_NM VARCHAR(100) NOT NULL,
    COLUNA_NM VARCHAR(100),
    REGISTRO_ID BIGINT,
    CPF_TITULAR_NR VARCHAR(14),
    OPERACAO_TP VARCHAR(10),  -- SELECT, INSERT, UPDATE, DELETE
    USUARIO_NM VARCHAR(100),
    DATA_HORA_DT DATETIME2 DEFAULT GETDATE(),
    IP_ORIGEM_DS VARCHAR(45),
    APLICACAO_NM VARCHAR(100),
    FINALIDADE_ACESSO_DS VARCHAR(500),
    
    CONSTRAINT CK_OPERACAO CHECK (OPERACAO_TP IN ('SELECT', 'INSERT', 'UPDATE', 'DELETE'))
) WITH (DATA_COMPRESSION = PAGE);

-- Particionar por mês (volumetria alta)
-- (criar partition function e scheme)

-- Trigger para auditar acessos
CREATE TRIGGER TRG_PES_CLIENTE_AUDIT
ON PES_CLIENTE
AFTER SELECT, INSERT, UPDATE, DELETE
AS
BEGIN
    INSERT INTO SYS_LGPD_LOG_ACESSO 
        (TABELA_NM, REGISTRO_ID, CPF_TITULAR_NR, OPERACAO_TP, USUARIO_NM, IP_ORIGEM_DS, APLICACAO_NM)
    SELECT 
        'PES_CLIENTE',
        COALESCE(i.CLIENTE_ID, d.CLIENTE_ID),
        COALESCE(i.CPF_CNPJ_NR, d.CPF_CNPJ_NR),
        CASE 
            WHEN EXISTS(SELECT * FROM inserted) AND EXISTS(SELECT * FROM deleted) THEN 'UPDATE'
            WHEN EXISTS(SELECT * FROM inserted) THEN 'INSERT'
            WHEN EXISTS(SELECT * FROM deleted) THEN 'DELETE'
            ELSE 'SELECT' END,
        SUSER_SNAME(),
        CONVERT(VARCHAR(45), CONNECTIONPROPERTY('client_net_address')),
        APP_NAME()
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.CLIENTE_ID = d.CLIENTE_ID;
END;
```

---

#### 1.11 Padrão ISO/IEC 11179 (Metadata Registries)

##### 1.11.1 Contexto e Finalidade

A **ISO/IEC 11179** é o padrão internacional para **registro de metadados**, fornecendo um framework para especificação, padronização e registro de elementos de dados.

**Estrutura da Norma** (6 partes principais):
- **Part 1**: Framework (conceitos fundamentais)
- **Part 2**: Classification (taxonomias)
- **Part 3**: Registry Metamodel (modelo de metadados)
- **Part 4**: Formulation of Data Definitions (regras para definições)
- **Part 5**: Naming Principles (nomenclatura semântica)
- **Part 6**: Registration (processos de registro)

**Objetivo**: Promover **interoperabilidade** e **reusabilidade** de dados através de metadados padronizados.

##### 1.11.2 Estrutura de Metadados (Part 3: Registry Metamodel)

**Conceitos Fundamentais**:

```
Data Element Concept (Conceito)
    ↓
Data Element (Elemento de Dado)
    ↓
Value Domain (Domínio de Valores)
```

**Exemplo Prático**:
```
Conceito: "Data de Nascimento de Pessoa"
Elemento: "DATA_NASCIMENTO_DT"
Domínio: DATE (SQL Server), formato ISO 8601 (YYYY-MM-DD)
Valores permitidos: 1900-01-01 até GETDATE()
```

**Metadados ISO 11179 no SQL Server**:
```sql
-- Tabela para catalogar elementos de dados (ISO 11179)
CREATE TABLE SYS_CATALOGO_ELEMENTOS_DADOS (
    ELEMENTO_ID INT IDENTITY(1,1) PRIMARY KEY,
    
    -- ISO 11179 Part 3: Identificação
    ELEMENTO_NOME_NM VARCHAR(100) NOT NULL UNIQUE,
    ELEMENTO_CONCEITO_DS NVARCHAR(500) NOT NULL,
    
    -- ISO 11179 Part 4: Definição
    DEFINICAO_DS NVARCHAR(MAX) NOT NULL,
    CONTEXTO_NEGOCIO_DS NVARCHAR(500),
    
    -- ISO 11179 Part 5: Nomenclatura
    PREFIXO_CAIXA_NM VARCHAR(10),  -- PES_, CON_, POI_, etc.
    SUFIXO_CAIXA_NM VARCHAR(10),   -- _ID, _DT, _NM, _VL, etc.
    NOME_COMPLETO_CAIXA_NM AS (PREFIXO_CAIXA_NM + ELEMENTO_NOME_NM + SUFIXO_CAIXA_NM),
    
    -- Value Domain
    TIPO_DADO_SQL_NM VARCHAR(50),
    TAMANHO_NR INT,
    PRECISAO_NR INT,
    DOMINIO_VALORES_DS NVARCHAR(500),  -- Ex: 'S' ou 'N'
    EXPRESSAO_REGULAR_DS VARCHAR(200),  -- Validação
    
    -- Metadata Management
    STATUS_TP VARCHAR(20) DEFAULT 'ATIVO',  -- ATIVO, DEPRECATED, OBSOLETO
    DATA_REGISTRO_DT DATETIME2 DEFAULT GETDATE(),
    VERSAO_NR VARCHAR(10) DEFAULT '1.0',
    ADMINISTRADOR_DADOS_NM VARCHAR(100),
    
    CONSTRAINT CK_STATUS CHECK (STATUS_TP IN ('ATIVO', 'DEPRECATED', 'OBSOLETO'))
);

-- Exemplo de registro
INSERT INTO SYS_CATALOGO_ELEMENTOS_DADOS 
    (ELEMENTO_NOME_NM, ELEMENTO_CONCEITO_DS, DEFINICAO_DS, CONTEXTO_NEGOCIO_DS, 
     SUFIXO_CAIXA_NM, TIPO_DADO_SQL_NM, EXPRESSAO_REGULAR_DS)
VALUES 
    ('CPF', 'Cadastro de Pessoa Física', 
     'Número de identificação único atribuído pela Receita Federal do Brasil a pessoas físicas.',
     'Utilizado para identificação única de clientes pessoa física em todos os sistemas CAIXA.',
     '_NR', 'VARCHAR(11)', '^[0-9]{11}$');
```

##### 1.11.3 Nomenclatura Semântica (Part 5)

**Princípios ISO 11179 para Nomenclatura**:

1. **Singularidade**: Cada nome deve ser único
2. **Precisão**: Nome deve refletir exatamente o conceito
3. **Concisão**: Nome deve ser o mais curto possível sem perder clareza
4. **Consistência**: Seguir padrões estabelecidos

**Alinhamento TE074 ↔ ISO 11179**:

| ISO 11179 | TE074 (CAIXA) | Exemplo |
|-----------|---------------|---------|
| **Object Class** | Prefixo 3-char | PES_ (Pessoa), CON_ (Contrato) |
| **Property** | Radical | CLIENTE, CONTRATO, PRODUTO |
| **Representation Term** | Sufixo | _ID, _NM, _DT, _VL, _IN |

**Estrutura Completa**:
```
[Object Class]_[Property]_[Representation Term]
     PES_     _  CLIENTE _       _ID

Resultado: PES_CLIENTE_ID
```

**Tabela de Representation Terms (ISO 11179 ↔ TE074)**:

| Representation Term | TE074 Sufixo | Tipo SQL Server | Conceito |
|---------------------|--------------|-----------------|----------|
| Identifier | _ID | BIGINT | Identificador único |
| Name | _NM | NVARCHAR | Nome próprio |
| Description | _DS | NVARCHAR | Descrição textual |
| Date | _DT | DATE, DATETIME2 | Data/timestamp |
| Amount | _VL | DECIMAL | Valor monetário |
| Quantity | _QT | INT, DECIMAL | Quantidade |
| Code | _CD | VARCHAR | Código fixo |
| Number | _NR | VARCHAR | Número (CPF, CNPJ) |
| Indicator | _IN | CHAR(1) | Flag binário |
| Type | _TP | VARCHAR | Tipo/categoria |
| Percent | _PC | DECIMAL | Percentual |

##### 1.11.4 Registro de Conceitos e Definições

**Processo de Registro** (ISO 11179 Part 6):

1. **Identificação**: Atribuir identificador único
2. **Definição**: Criar definição precisa e não ambígua
3. **Classificação**: Categorizar conforme taxonomia
4. **Aprovação**: Submeter ao Data Steward
5. **Publicação**: Tornar disponível no catálogo
6. **Manutenção**: Revisar periodicamente

**Exemplo - Workflow de Registro**:
```sql
-- Estado do elemento durante lifecycle
CREATE TABLE SYS_ELEMENTO_WORKFLOW (
    WORKFLOW_ID INT IDENTITY(1,1) PRIMARY KEY,
    ELEMENTO_ID INT NOT NULL,
    ESTADO_TP VARCHAR(20),
    DATA_TRANSICAO_DT DATETIME2 DEFAULT GETDATE(),
    USUARIO_NM VARCHAR(100),
    COMENTARIO_DS NVARCHAR(500),
    
    CONSTRAINT FK_ELEMENTO FOREIGN KEY (ELEMENTO_ID) 
        REFERENCES SYS_CATALOGO_ELEMENTOS_DADOS(ELEMENTO_ID),
    CONSTRAINT CK_ESTADO CHECK (ESTADO_TP IN 
        ('DRAFT', 'REVIEW', 'APPROVED', 'PUBLISHED', 'DEPRECATED', 'RETIRED'))
);

-- Workflow típico:
-- 1. DRAFT → Desenvolvedor cria elemento
-- 2. REVIEW → ADI revisa definição
-- 3. APPROVED → ADI aprova
-- 4. PUBLISHED → Disponível para uso
-- 5. DEPRECATED → Marcado para aposentadoria (usar alternativa)
-- 6. RETIRED → Não mais disponível
```

##### 1.11.5 Alinhamento com TE074 (Sufixos, Prefixos)

**Mapping Completo TE074 ↔ ISO 11179**:

```sql
-- View de alinhamento TE074/ISO 11179
CREATE VIEW vw_Alinhamento_TE074_ISO11179 AS
SELECT 
    e.ELEMENTO_NOME_NM AS Nome_Elemento,
    e.NOME_COMPLETO_CAIXA_NM AS Nome_TE074,
    e.PREFIXO_CAIXA_NM AS ISO_Object_Class,
    REPLACE(e.ELEMENTO_NOME_NM, e.SUFIXO_CAIXA_NM, '') AS ISO_Property,
    e.SUFIXO_CAIXA_NM AS ISO_Representation_Term,
    e.TIPO_DADO_SQL_NM AS SQL_Server_Type,
    e.DEFINICAO_DS AS ISO_Definition,
    e.CONTEXTO_NEGOCIO_DS AS Business_Context,
    e.STATUS_TP AS Status
FROM SYS_CATALOGO_ELEMENTOS_DADOS e
WHERE e.STATUS_TP = 'ATIVO';

-- Exemplo de consulta
SELECT * FROM vw_Alinhamento_TE074_ISO11179
WHERE ISO_Object_Class = 'PES_';
```

##### 1.11.6 Reusabilidade de Componentes

**Princípio**: Maximizar reuso através de **componentes padronizados**.

**Componentes Reutilizáveis**:

1. **Value Domains** (Domínios de Valores):
```sql
-- Tabela de domínios reutilizáveis
CREATE TABLE SYS_VALUE_DOMAIN (
    DOMINIO_ID INT IDENTITY(1,1) PRIMARY KEY,
    DOMINIO_NOME_NM VARCHAR(50) UNIQUE NOT NULL,
    DESCRICAO_DS NVARCHAR(200),
    TIPO_DADO_NM VARCHAR(50),
    FORMATO_DS VARCHAR(100),
    
    -- Valores permitidos (para enumerações)
    VALORES_PERMITIDOS_JSON NVARCHAR(MAX),  -- JSON array
    
    -- Validação
    EXPRESSAO_REGULAR_DS VARCHAR(200),
    VALOR_MINIMO_DS VARCHAR(100),
    VALOR_MAXIMO_DS VARCHAR(100)
);

-- Exemplos de domínios reutilizáveis
INSERT INTO SYS_VALUE_DOMAIN 
    (DOMINIO_NOME_NM, DESCRICAO_DS, TIPO_DADO_NM, VALORES_PERMITIDOS_JSON)
VALUES 
    ('INDICADOR_SIM_NAO', 'Indicador binário Sim/Não', 'CHAR(1)', '["S", "N"]'),
    ('STATUS_ATIVO_INATIVO', 'Status de registro', 'CHAR(1)', '["A", "I"]'),
    ('UF_BRASIL', 'Unidades Federativas do Brasil', 'CHAR(2)', 
     '["AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO"]');
```

2. **Colunas de Auditoria** (Template reutilizável):
```sql
-- Template ISO 11179 para auditoria (sempre o mesmo padrão)
/*
    DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE() NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
    DATA_ATUALIZACAO_DT DATETIME2 NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(50) NULL
*/

-- Script para adicionar colunas de auditoria em qualquer tabela
CREATE PROCEDURE usp_AdicionarColunasAuditoria
    @Tabela VARCHAR(100)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    
    SET @SQL = N'
        ALTER TABLE ' + QUOTENAME(@Tabela) + ' ADD
            DATA_CADASTRO_DT DATETIME2 DEFAULT GETDATE() NOT NULL,
            USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
            DATA_ATUALIZACAO_DT DATETIME2 NULL,
            USUARIO_ATUALIZACAO_NM VARCHAR(50) NULL;
    ';
    
    EXEC sp_executesql @SQL;
    
    -- Adicionar extended properties (ISO 11179 metadata)
    EXEC sp_addextendedproperty 
        @name = 'ISO11179_Element',
        @value = 'Audit_Timestamp',
        @level0type = 'SCHEMA', @level0name = 'dbo',
        @level1type = 'TABLE',  @level1name = @Tabela,
        @level2type = 'COLUMN', @level2name = 'DATA_CADASTRO_DT';
END;
```

---

**📊 Status da SUB-PARTE 1.3**: ✅ COMPLETA  
**Próxima**: SUB-PARTE 1.4 (Workflow de Aprovação e Ferramentas)

---

### SUB-PARTE 1.4: Workflow de Aprovação e Ferramentas

---

#### 1.12 Workflow de Aprovação (Desenvolvimento → ADI → ABD)

##### 1.12.1 Visão Geral do Processo

O processo de **validação de modelos de dados** na CAIXA segue um fluxo estruturado em **3 fases principais**, garantindo qualidade, conformidade normativa e otimização técnica antes da implementação em produção.

**Fluxo Geral**:
```
┌─────────────────┐
│ DESENVOLVIMENTO │ → Modelagem (Conceitual → Lógico → Físico)
└────────┬────────┘
         │ PDM + Documentação
         ↓
┌─────────────────┐
│      ADI        │ → Validação Arquitetural + Conformidade TE074
└────────┬────────┘
         │ Laudo de Validação (Aprovado/Ajustes)
         ↓
┌─────────────────┐
│      ABD        │ → Otimização Física + Implementação
└────────┬────────┘
         │ DDL Implementada
         ↓
    [PRODUÇÃO]
```

**Ferramentas de Apoio**:
- **RTC (Rational Team Concert)**: Workflow de acionamentos e rastreabilidade
- **Pré-Validador**: http://gestaodedados.coresp.caixa - Validação automática TE074
- **SAP PowerDesigner**: Ferramenta corporativa de modelagem
- **Repositório Corporativo**: Versionamento de modelos PDM

##### 1.12.2 Fase 1: Desenvolvimento (Equipe de Desenvolvimento)

**Responsabilidades** (TE074 4.2):

**1.12.2.1 Análise Preliminar de Dados**:
- Abertura de RTC no painel **"Acionamento Capítulos"**, serviço **"Reunião/Consultoria"**
- Envolvimento do ADI desde o início do projeto
- Identificação de necessidade de dados no artefato de requisitos (TE177)

**1.12.2.2 Modelagem Conceitual** (Alto Nível):
- Entidades principais e relacionamentos
- Cardinalidade e opcionalidade
- Regras de negócio fundamentais
- Alinhamento com gestor da informação

**1.12.2.3 Modelagem Lógica** (Normalização):
- Normalização 3NF (obrigatória)
- Definição de chaves primárias e estrangeiras
- Identificação de dados compartilhados (TE105, TE124, TE109)
- Mapeamento de integrações (APIs SICLI)

**1.12.2.4 Modelagem Física** (SQL Server):
- Criação do PDM (Physical Data Model) no SAP PowerDesigner
- Nomenclatura conforme TE074:
  - Prefixos 3-char (PES_, CON_, POI_, TAB_, DOM_)
  - Sufixos obrigatórios (_ID, _NM, _DT, _VL, _DS, _IN, _TP, etc.)
  - Constraints (PK_, FK_, UK_, CK_, DF_)
  - Índices (IDX_)
- Tipos de dados SQL Server adequados
- Descrições em português (MS_Description)
- Extended Properties (classificação OR016, LGPD, Data Owner, etc.)

**1.12.2.5 Validação Automática (Pré-Validador)**:
- URL: http://gestaodedados.coresp.caixa
- Upload do arquivo PDM
- Execução de **100+ regras automáticas** TE074
- Geração de relatório (PDF/Excel)
- **Critério de submissão ao ADI**: **0 (zero) não conformidades CRÍTICAS**

**Exemplo - Checklist Pré-Submissão**:
```
✅ Modelo salvo no repositório corporativo PowerDesigner
✅ Nomenclatura validada (regex ^[A-Z]{3}_[A-Z0-9_]+$)
✅ Todas as tabelas possuem MS_Description
✅ Todas as colunas possuem MS_Description
✅ Primary Keys nomeadas (PK_TABELA)
✅ Foreign Keys nomeadas (FK_ORIGEM_DESTINO)
✅ Classificação OR016 definida (Pública/Interna/Confidencial/Secreta)
✅ Dados sensíveis LGPD identificados
✅ Pré-validador: 0 CRÍTICAS
✅ Documentação complementar anexada (volumetria, frequência transações)
✅ APIs de integração documentadas (https://portalapi.caixa/redoc.html)
```

**1.12.2.6 Submissão ao ADI**:
- Abertura de demanda no RTC, painel **"Acionamento Capítulos"**
- Serviço: **"Solicitação de Validação do Modelos de Dados"**
- Insumos obrigatórios:
  - Arquivo PDM (PowerDesigner)
  - Relatório Pré-Validador (0 CRÍTICAS)
  - Documentação de requisitos (TE177)
  - Volumetria estimada (linhas/ano, crescimento)
  - Frequência de transações (OLTP: TPS, Batch: volume)
  - Integrações com outros sistemas (APIs, MDM)
  - Dados compartilhados (referência TE105/TE124/TE109)

##### 1.12.3 Fase 2: ADI (Administração de Dados e Informações)

**Responsabilidades** (TE074 4.3):

**1.12.3.1 Análise Arquitetural (Visão Corporativa)**:
- Verificar alinhamento com modelos corporativos existentes
- Identificar oportunidades de reuso de dados
- Validar compartilhamento de informações (TE109)
- Garantir unicidade cadastral (TE105, TE124)
- Avaliar impacto em outros sistemas

**1.12.3.2 Conformidade Normativa**:
- Aderência a **TE074** (100% compliance)
- Verificação de nomenclatura (guia PPDS)
- Análise de descrições (português, não-técnicas, contextualizadas)
- Classificação de informação OR016
- Compliance LGPD (CR439)
- Metadados obrigatórios (TE174)

**1.12.3.3 Integridade Conceitual**:
- Evitar redundâncias desnecessárias
- Validar normalização (3NF obrigatória)
- Avaliar denormalizações (justificativa técnica)
- Verificar regras de negócio em constraints
- Consistência de domínios de valores

**1.12.3.4 Documentação e Metadados**:
- Cadastro no **Glossário de Termos** (sincronizado com PowerDesigner)
- Validação de abreviaturas e siglas
- Orientação sobre termos a serem utilizados
- Registro de Data Ownership (Extended Properties)

**1.12.3.5 Elaboração de Laudo de Validação**:

**Estrutura do Laudo ADI**:
```
═══════════════════════════════════════════════════════════
LAUDO DE VALIDAÇÃO DE MODELO DE DADOS - ADI
═══════════════════════════════════════════════════════════

1. IDENTIFICAÇÃO
   - Demanda RTC: #123456
   - Sistema: SIS_NOME_SISTEMA
   - Módulo: Gestão de Contratos
   - Solicitante: João Silva (C123456)
   - Analista ADI: Maria Santos (C789012)
   - Data Análise: 06/01/2026

2. OBJETOS ANALISADOS
   - Tabelas: 12 (8 transacionais, 4 apoio)
   - Colunas: 156
   - PKs: 12
   - FKs: 18
   - Índices: 25
   - Constraints: 34 (15 CHECK, 8 UNIQUE, 11 DEFAULT)

3. ANÁLISE DE CONFORMIDADE

   3.1 Nomenclatura ✅ APROVADO
       - Prefixos 3-char: 100% aderente
       - Sufixos: 100% aderente
       - Constraints: 100% aderente
       - Índices: 100% aderente

   3.2 Descrições ✅ APROVADO
       - Tabelas descritas: 12/12 (100%)
       - Colunas descritas: 156/156 (100%)
       - Português: SIM
       - Contextualizadas: SIM

   3.3 Classificação OR016 ✅ APROVADO
       - Modelo: CONFIDENCIAL
       - Tabelas classificadas: 12/12 (100%)
       - Colunas sensíveis: 8 (marcadas SECRETA)

   3.4 LGPD (CR439) ⚠️ AJUSTES NECESSÁRIOS
       - Dados pessoais identificados: 23 colunas
       - Dados sensíveis: 2 colunas (CPF, DATA_NASCIMENTO)
       - Finalidade documentada: PENDENTE
       - Base legal documentada: PENDENTE
       → AÇÃO: Adicionar Extended Properties LGPD_Finalidade e LGPD_Base_Legal

   3.5 Compartilhamento (TE105/TE124) ✅ APROVADO
       - Integração SICLI: API /clientes/{cpf} documentada
       - CPF único: FK para PES_CLIENTE_CACHE

   3.6 Integridade Conceitual ✅ APROVADO
       - Normalização 3NF: SIM
       - Redundâncias: NENHUMA
       - Relacionamentos: CONSISTENTES

4. PENDÊNCIAS E AJUSTES
   
   4.1 CRÍTICO (BLOQUEADOR): 0
   
   4.2 ALERTA (RECOMENDAÇÃO): 2
       - Tabela CON_CONTRATO_ITEM: Avaliar particionamento (estimativa 50M linhas/ano)
       - Coluna CON_CONTRATO.OBSERVACAO_DS: Alterar de VARCHAR(MAX) para VARCHAR(2000)
   
   4.3 INFORMAÇÃO (BOAS PRÁTICAS): 3
       - Adicionar índice em CON_CONTRATO(DATA_ASSINATURA_DT) para consultas frequentes
       - Considerar compressão PAGE para tabelas transacionais
       - Criar índice covering em CON_CONTRATO_PARCELA para relatórios

5. PARECER FINAL
   
   STATUS: ✅ APROVADO COM ADEQUAÇÕES
   
   O modelo apresentado está APROVADO, condicionado à implementação dos 2 ALERTAS
   (seção 4.2) antes da implementação em produção.
   
   As informações (seção 4.3) são recomendações de otimização que podem ser avaliadas
   pela equipe ABD durante a implementação física.
   
   Após ajustes, o modelo está apto para seguir para validação física (ABD).

6. ASSINATURAS
   
   Analista ADI: Maria Santos (C789012)
   Data: 06/01/2026
   
   Aprovador ADI: Carlos Souza (C456789) - Coordenador UAM
   Data: 06/01/2026
```

**Possíveis Status do Laudo**:

| Status | Descrição | Próxima Ação |
|--------|-----------|--------------|
| **APROVADO** | Sem pendências, modelo conforme | Encaminhar para ABD |
| **APROVADO COM ADEQUAÇÕES** | Pendências não críticas (ALERTA/INFORMAÇÃO) | Ajustar e encaminhar para ABD |
| **APROVADO COM RESSALVAS** | Pendências que não impedem implementação | Implementar + tracking de ajustes futuros |
| **NÃO APROVADO** | Pendências CRÍTICAS | Devolver para Desenvolvimento com detalhamento |

**SLA de Atendimento ADI** (TE074 3.1.9):

Baseado em **métrica de produtividade** (contagem de objetos/ações):

| Tipo de Demanda | Complexidade | Base de Cálculo | SLA (dias úteis) |
|-----------------|--------------|-----------------|------------------|
| **Novo Sistema** | Alta | Qtd tabelas × 1.5 dias | 15-20 |
| **Novo Módulo** | Média | Qtd tabelas × 1.0 dia | 10-15 |
| **Manutenção** | Baixa | Qtd objetos novos × 0.5 dia | 3-5 |
| **Consultoria** | Variável | Por solicitação | 1-3 |

**Fatores de Ajuste**:
- Complexidade do modelo (+20% se >50 tabelas)
- Integração com sistemas legados (+15%)
- Dados compartilhados/MDM (+10%)
- Período de alta demanda (+20% em nov-dez)

**Calculadora de SLA**: https://caixa.sharepoint.com/sites/5141/SitePages/Estimativa-Prazo-Atendimento-UAM.aspx

**Exemplo de Cálculo**:
```
Demanda: Novo módulo com 25 tabelas + 5 integrações SICLI

Cálculo:
- Base: 25 tabelas × 1.0 dia = 25 dias
- Ajuste integração: 25 × 1.15 = 28.75 dias
- Arredondamento: 29 dias úteis
- SLA: ~6 semanas (considerando feriados)
```

##### 1.12.4 Fase 3: ABD (Administração de Banco de Dados)

**Responsabilidades** (TE074 4.4):

**1.12.4.1 Análise de Performance**:
- Avaliação de volumetria (linhas/ano, crescimento)
- Frequência de transações (TPS para OLTP, volume para Batch)
- Query plans estimados (principais consultas)
- Identificação de gargalos potenciais

**1.12.4.2 Otimizações Físicas SQL Server**:

**Particionamento** (>100M linhas/ano):
```sql
-- Exemplo - Particionamento por ano
-- 1. Criar partition function
CREATE PARTITION FUNCTION PF_ANO_CONTRATO (DATE)
AS RANGE RIGHT FOR VALUES 
    ('2020-01-01', '2021-01-01', '2022-01-01', '2023-01-01', '2024-01-01', '2025-01-01', '2026-01-01');

-- 2. Criar partition scheme
CREATE PARTITION SCHEME PS_ANO_CONTRATO
AS PARTITION PF_ANO_CONTRATO
TO ([FG_2020], [FG_2021], [FG_2022], [FG_2023], [FG_2024], [FG_2025], [FG_2026], [PRIMARY]);

-- 3. Criar tabela particionada
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1),
    DATA_ASSINATURA_DT DATE NOT NULL,
    -- outras colunas
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID, DATA_ASSINATURA_DT)
) ON PS_ANO_CONTRATO(DATA_ASSINATURA_DT)
WITH (DATA_COMPRESSION = PAGE);
```

**Compressão** (obrigatória para novas tabelas):
```sql
-- PAGE compression (recomendada, economia 40-70%)
ALTER TABLE CON_CONTRATO 
REBUILD PARTITION = ALL 
WITH (DATA_COMPRESSION = PAGE);

-- ROW compression (economia 20-40%)
ALTER TABLE TAB_TIPO_CONTRATO 
REBUILD PARTITION = ALL 
WITH (DATA_COMPRESSION = ROW);
```

**Índices de Performance**:
```sql
-- Índice em FK (obrigatório)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
ON CON_CONTRATO(CLIENTE_ID)
INCLUDE (DATA_ASSINATURA_DT, STATUS_TP)
WITH (DATA_COMPRESSION = PAGE);

-- Covering index para relatório frequente
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_RELATORIO
ON CON_CONTRATO(STATUS_TP, DATA_ASSINATURA_DT)
INCLUDE (VALOR_VL, CLIENTE_ID, PRODUTO_TP)
WHERE STATUS_TP IN ('ATIVO', 'SUSPENSO')
WITH (DATA_COMPRESSION = PAGE);

-- Filtered index para consultas específicas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVOS
ON CON_CONTRATO(DATA_ASSINATURA_DT)
WHERE STATUS_TP = 'ATIVO'
WITH (DATA_COMPRESSION = PAGE);
```

**Estatísticas Automáticas**:
```sql
-- Garantir atualização automática de estatísticas
ALTER DATABASE [DB_SISTEMA]
SET AUTO_CREATE_STATISTICS ON;

ALTER DATABASE [DB_SISTEMA]
SET AUTO_UPDATE_STATISTICS ON;

ALTER DATABASE [DB_SISTEMA]
SET AUTO_UPDATE_STATISTICS_ASYNC ON;
```

**1.12.4.3 Geração de DDL** (TE074 4.4.8):
- Geração a partir do PDM aprovado (repositório corporativo)
- **Inclusão obrigatória** de metadados (MS_Description)
- Nunca excluir comentários da DDL

```sql
-- Exemplo de DDL gerada pelo ABD (com metadados)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    DATA_CADASTRO_DT DATETIME2(0) DEFAULT GETDATE() NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME() NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES PES_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_TP IN ('A', 'S', 'E', 'C'))
) WITH (DATA_COMPRESSION = PAGE);

-- Metadados (obrigatórios - não podem ser excluídos)
EXEC sp_addextendedproperty 
    @name = 'MS_Description',
    @value = 'Armazena contratos de produtos da CAIXA com informações de valor, data e status.',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Classificacao_Informacao',
    @value = 'CONFIDENCIAL',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';

EXEC sp_addextendedproperty 
    @name = 'Data_Owner',
    @value = 'VIPRE - Vice-Presidência de Habitação',
    @level0type = 'SCHEMA', @level0name = 'dbo',
    @level1type = 'TABLE',  @level1name = 'CON_CONTRATO';
```

**1.12.4.4 Armazenamento de DDL** (TE074 4.4.9):
- Ferramenta corporativa homologada (acesso público - leitura)
- Ambientes: Desenvolvimento + Teste de Qualidade de Sistema
- ABD Desenvolvimento: permissão de gravação
- ABD Produção: acesso leitura
- Todas as equipes: acesso leitura

**1.12.4.5 Implementação em Ambientes**:

**Sequência de Deploy**:
```
1. Desenvolvimento (DEV)
   ↓
2. Teste de Qualidade (QA/TST)
   ↓
3. Homologação (HOM)
   ↓
4. Pré-Produção (PRE)
   ↓
5. Produção (PRD)
```

**Script de Deploy Padrão**:
```sql
-- Deploy.sql - Exemplo estruturado
-- ============================================================
-- SISTEMA: SIS_CONTRATOS
-- MÓDULO: Gestão de Contratos
-- DEMANDA RTC: #123456
-- DATA: 2026-01-06
-- RESPONSÁVEL ABD: João ABD (C999888)
-- ============================================================

SET NOCOUNT ON;
GO

BEGIN TRANSACTION;
GO

-- 1. Criação de tabelas
PRINT 'Criando tabela CON_CONTRATO...';
-- DDL aqui
GO

-- 2. Criação de índices
PRINT 'Criando índices...';
-- Índices aqui
GO

-- 3. Criação de constraints
PRINT 'Criando constraints...';
-- Constraints aqui
GO

-- 4. Extended properties (metadados)
PRINT 'Adicionando metadados...';
-- Extended properties aqui
GO

-- 5. Validação pós-deploy
PRINT 'Validando objetos criados...';
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'CON_CONTRATO')
BEGIN
    RAISERROR('Tabela CON_CONTRATO não criada!', 16, 1);
    ROLLBACK TRANSACTION;
    RETURN;
END
GO

COMMIT TRANSACTION;
GO

PRINT 'Deploy concluído com sucesso!';
GO
```

**1.12.4.6 Monitoramento Pós-Implementação**:
```sql
-- Consultar performance de índices (primeiros 30 dias)
SELECT 
    OBJECT_NAME(s.object_id) AS Tabela,
    i.name AS Indice,
    s.user_seeks AS Buscas,
    s.user_scans AS Scans,
    s.user_updates AS Atualizacoes,
    s.last_user_seek AS Ultima_Busca,
    CASE 
        WHEN s.user_seeks = 0 AND s.user_scans = 0 THEN 'NUNCA UTILIZADO'
        WHEN s.user_updates > (s.user_seeks + s.user_scans) * 10 THEN 'ALTO CUSTO DE MANUTENCAO'
        ELSE 'OK' 
    END AS Status
FROM sys.dm_db_index_usage_stats s
INNER JOIN sys.indexes i ON s.object_id = i.object_id AND s.index_id = i.index_id
WHERE s.database_id = DB_ID()
  AND OBJECT_NAME(s.object_id) LIKE 'CON_%'
ORDER BY s.user_seeks + s.user_scans DESC;

-- Consultar fragmentação de índices
SELECT 
    OBJECT_NAME(ips.object_id) AS Tabela,
    i.name AS Indice,
    ips.avg_fragmentation_in_percent AS Fragmentacao_PC,
    ips.page_count AS Paginas,
    CASE 
        WHEN ips.avg_fragmentation_in_percent > 30 THEN 'REORGANIZAR/REBUILD'
        WHEN ips.avg_fragmentation_in_percent > 10 THEN 'MONITORAR'
        ELSE 'OK'
    END AS Acao
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'SAMPLED') ips
INNER JOIN sys.indexes i ON ips.object_id = i.object_id AND ips.index_id = i.index_id
WHERE ips.avg_fragmentation_in_percent > 5
  AND ips.page_count > 100
ORDER BY ips.avg_fragmentation_in_percent DESC;
```

---

#### 1.13 Ferramenta: SAP PowerDesigner

##### 1.13.1 Visão Geral

**SAP PowerDesigner** é a ferramenta corporativa **obrigatória** da CAIXA para modelagem de dados, garantindo padronização e integração com o repositório corporativo.

**Versão Utilizada**: PowerDesigner 16.x (licença corporativa)

**Tipos de Modelos**:
- **CDM (Conceptual Data Model)**: Modelo conceitual (alto nível, ER)
- **LDM (Logical Data Model)**: Modelo lógico (normalizado, independente de SGBD)
- **PDM (Physical Data Model)**: Modelo físico (SQL Server, Oracle, DB2, PostgreSQL)

**Modelo Obrigatório para Submissão**: **PDM** (Physical Data Model)

##### 1.13.2 Funcionalidades Principais

**1.13.2.1 Modelagem Visual**:
- Diagrama ER (Entity-Relationship) interativo
- Drag-and-drop de objetos
- Auto-layout e organização gráfica
- Zoom e navegação por Subject Areas

**1.13.2.2 Geração de DDL**:
```
PowerDesigner → Database → Generate Database
    ↓
Selecionar SGBD: Microsoft SQL Server 2019
    ↓
Opções:
    [x] Create table
    [x] Create primary key
    [x] Create foreign key
    [x] Create index
    [x] Create check constraint
    [x] Create default
    [x] Create comment (OBRIGATÓRIO - metadados)
    ↓
Gerar DDL → Arquivo .sql
```

**Exemplo de DDL Gerada**:
```sql
/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2019                    */
/* Created on:     06/01/2026 10:30:00                          */
/*==============================================================*/

CREATE TABLE CON_CONTRATO (
   CONTRATO_ID          BIGINT               IDENTITY(1,1) NOT NULL,
   CLIENTE_ID           BIGINT               NOT NULL,
   PRODUTO_TP           VARCHAR(20)          NOT NULL,
   DATA_ASSINATURA_DT   DATE                 NOT NULL,
   VALOR_VL             DECIMAL(15,2)        NOT NULL,
   STATUS_TP            CHAR(1)              NOT NULL,
   CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

EXEC sp_addextendedproperty 'MS_Description', 'Armazena contratos...', 
     'SCHEMA', 'dbo', 'TABLE', 'CON_CONTRATO';
```

**1.13.2.3 Engenharia Reversa (Reverse Engineering)**:
```
PowerDesigner → Database → Update Model from Database
    ↓
Conectar ao SQL Server (ODBC/Native Client)
    ↓
Selecionar objetos: Tabelas, Views, Stored Procedures
    ↓
Importar → PDM atualizado com estrutura atual do banco
```

**Casos de Uso**:
- Documentar bases legadas sem modelo
- Sincronizar modelo com alterações manuais no banco
- Criar baseline de sistemas adquiridos (TE183)

**1.13.2.4 Sincronização Modelo ↔ Banco**:
```
PowerDesigner → Database → Modify Database
    ↓
Comparar modelo PDM com banco atual
    ↓
Gerar script de alteração (ALTER TABLE, ADD COLUMN, etc.)
    ↓
Preview de mudanças → Executar
```

**⚠️ ATENÇÃO**: Execução direta no banco **NÃO RECOMENDADA** em produção. Sempre gerar script e submeter ao ABD.

##### 1.13.3 Extensão CAIXA (Propriedades Customizadas)

A ferramenta PowerDesigner possui **extensão corporativa CAIXA** com propriedades customizadas para atender TE074.

**Propriedades Adicionadas**:

**No Nível de Modelo**:
- Classificação Informação: PÚBLICA | INTERNA | CONFIDENCIAL | SECRETA
- Sistema: Nome do sistema (SIS_XXXX)
- Módulo: Nome do módulo
- Versão: Versionamento semântico (1.0.0)
- Data Última Alteração: Timestamp

**No Nível de Tabela**:
- Classificação Informação (herda do modelo, pode sobrescrever)
- Tipo de Tabela: TRANSACIONAL | APOIO | HISTÓRICO | AUXILIAR | LOG | STAGE
- Volumetria Estimada (linhas/ano)
- Crescimento Anual (%)
- Frequência de Acesso: ALTA | MÉDIA | BAIXA
- Retenção Online (anos)
- Retenção Arquivo (anos)
- Data Owner (proprietário dos dados)
- Data Steward (guardião dos dados)
- Particionamento: SIM | NÃO
- Compressão: PAGE | ROW | NONE

**No Nível de Coluna**:
- Classificação Informação (se mais restritiva que tabela)
- Dado Sensível LGPD: SIM | NÃO
- Categoria LGPD: DADO_PESSOAL | DADO_SENSIVEL | NAO_APLICAVEL
- Finalidade LGPD: Texto livre (justificativa de coleta)
- Base Legal LGPD: CONSENTIMENTO | OBRIGACAO_LEGAL | INTERESSE_LEGITIMO | etc.
- Obrigatório: SIM | NÃO
- Domínio de Valores: Lista (para enumerações)
- Fonte de Dados: Sistema origem (para dados compartilhados)
- API Integração: URL da API SICLI (TE105)

**Como Acessar Propriedades Customizadas**:
```
PowerDesigner:
    1. Selecionar objeto (Modelo/Tabela/Coluna)
    2. Botão direito → Properties
    3. Aba "Extended Attributes" (propriedades CAIXA)
    4. Preencher valores conforme TE074
```

##### 1.13.4 Nomenclatura de Arquivos PDM

**Padrão Corporativo**:
```
[SISTEMA]_[MODULO]_[VERSAO]_[DATA].pdm

Exemplos:
- SIS_CONTRATOS_Gestao_v1.0_20260106.pdm
- SIS_HABITACAO_Financiamento_v2.1_20260106.pdm
- SIS_SICLI_Cadastro_v3.0_20260106.pdm
```

**Regras**:
- SISTEMA: 3-char prefix (SIS_, PES_, CON_)
- MÓDULO: Nome descritivo (sem espaços, PascalCase)
- VERSÃO: Semver (vX.Y)
- DATA: YYYYMMDD (ISO 8601)

##### 1.13.5 Repositório Corporativo e Versionamento

**Repositório PowerDesigner**:
- Servidor corporativo (rede interna CAIXA)
- Conexão via cliente PowerDesigner
- Sincronização automática ao conectar
- Glossário de termos carregado automaticamente (TE074 4.3.8.1)

**Workflow de Versionamento**:
```
1. Check-out do modelo (bloqueia para edição)
   ↓
2. Edições no modelo PDM
   ↓
3. Validação local (pré-validador)
   ↓
4. Check-in com comentários (versionamento automático)
   ↓
5. Modelo disponível para ADI/ABD
```

**Versionamento Semântico (Semver)**:
- **MAJOR.MINOR.PATCH** (ex: 2.1.3)
- **MAJOR**: Breaking changes (incompatibilidade retroativa)
- **MINOR**: Novas tabelas/colunas (compatível com versão anterior)
- **PATCH**: Correções/ajustes de metadados (sem impacto estrutural)

**Exemplo de Controle de Versão**:
```
v1.0.0 → Versão inicial (10 tabelas)
v1.1.0 → Adicionadas 3 novas tabelas (MINOR)
v1.1.1 → Corrigidas descrições de colunas (PATCH)
v1.2.0 → Adicionada tabela de auditoria (MINOR)
v2.0.0 → Reestruturação de PKs (MAJOR - breaking change)
```

##### 1.13.6 Boas Práticas PowerDesigner CAIXA

**1. Organização Gráfica** (TE074 3.2.18):
- Usar Subject Areas para agrupar tabelas relacionadas
- Manter diagrama limpo e legível
- Evitar cruzamento de linhas (relacionamentos)
- Tabelas transacionais no centro, apoio nas bordas
- Históricos em área separada

**2. Documentação Completa**:
- 100% das tabelas com MS_Description
- 100% das colunas com MS_Description
- Descrições em português, não-técnicas
- Contexto de negócio claro

**3. Validação Incremental**:
- Validar modelo a cada 5-10 tabelas adicionadas (pré-validador)
- Não acumular centenas de objetos sem validação
- Corrigir não conformidades imediatamente

**4. Backup Local**:
- Salvar cópias locais (.pdm) antes de check-in
- Manter histórico de versões principais
- Não confiar apenas no repositório

**5. Integração com Git/TFS** (DDL):
- Exportar DDL para controle de versão
- Commitar scripts de migração (versão N → N+1)
- Taggar releases (v1.0, v2.0, etc.)

---

#### 1.14 Ferramenta: Pré-Validador

##### 1.14.1 Visão Geral

**Pré-Validador** é a ferramenta corporativa de **validação automática** de modelos de dados, garantindo conformidade com **TE074** antes da submissão ao ADI.

**URL**: http://gestaodedados.coresp.caixa  
**Acesso**: Interno CAIXA (rede corporativa)  
**Formato de Entrada**: Arquivo PDM (PowerDesigner)  
**Formato de Saída**: Relatório PDF + Excel

##### 1.14.2 Validações Automáticas (100+ Regras TE074)

**Categorias de Validação**:

**1.14.2.1 Nomenclatura** (40+ regras):
- Prefixos 3-char válidos (PES_, CON_, POI_, TAB_, DOM_, etc.)
- Sufixos obrigatórios (_ID, _NM, _DT, _VL, _DS, _IN, _TP, _NR, _PC, _QT)
- Regex de tabelas: `^[A-Z]{3}_[A-Z0-9_]+$`
- Regex de colunas: `^[A-Z0-9_]+_(ID|NM|DT|VL|DS|IN|TP|NR|PC|QT|CD|SG)$`
- Constraints nomeadas (PK_, FK_, UK_, CK_, DF_)
- Índices nomeados (IDX_, IDX_UK_)

**1.14.2.2 Descrições** (15+ regras):
- Todas as tabelas possuem MS_Description
- Todas as colunas possuem MS_Description
- Descrições em português (validação linguística)
- Descrições não-técnicas (sem termos como "FK", "PK", "campo")
- Comprimento mínimo de descrição (30 caracteres)

**1.14.2.3 Chaves** (20+ regras):
- Toda tabela possui Primary Key
- PK nomeada como PK_<TABELA>
- FK nomeada como FK_<ORIGEM>_<DESTINO>
- FK aponta para PK de tabela existente
- Tipos de dados compatíveis (FK ↔ PK)
- Índices em todas as FKs (performance)

**1.14.2.4 Tipos de Dados** (10+ regras):
- Tipos de dados permitidos (lista PPDS)
- DECIMAL para valores monetários (nunca FLOAT/REAL)
- VARCHAR para textos ASCII, NVARCHAR para Unicode
- DATE para datas, DATETIME2 para timestamps
- BIGINT para PKs (volumetria >2B)

**1.14.2.5 Constraints** (10+ regras):
- CHECK constraints nomeadas (CK_<TABELA>_<REGRA>)
- UNIQUE constraints nomeadas (UK_<TABELA>_<COLUNAS>)
- DEFAULT constraints nomeadas (DF_<TABELA>_<COLUNA>)

**1.14.2.6 Classificação OR016** (5+ regras):
- Modelo possui classificação
- Todas as tabelas possuem classificação
- Colunas sensíveis marcadas com classificação mais restritiva

##### 1.14.3 Categorias de Severidade

**CRÍTICO** (🔴 Bloqueador):
- Impede submissão ao ADI
- **Meta**: 0 (zero) CRÍTICAS para submeter
- Exemplos:
  - Tabela sem Primary Key
  - Nomenclatura inválida (não segue regex)
  - Tipos de dados não permitidos
  - FK apontando para tabela inexistente
  - Descrições ausentes

**ALERTA** (⚠️ Recomendação):
- Não bloqueia submissão
- Requer avaliação de contexto
- ADI pode aprovar com justificativa
- Exemplos:
  - Tabela sem classificação OR016
  - Coluna sem domínio de valores documentado
  - Índice ausente em FK (pode afetar performance)
  - Denormalização (validar justificativa)

**INFORMAÇÃO** (ℹ️ Boas Práticas):
- Sugestões de melhoria
- Não afeta aprovação
- Exemplos:
  - Considerar particionamento (volumetria alta)
  - Considerar compressão PAGE
  - Adicionar índices covering para relatórios
  - Utilizar SEQUENCE ao invés de IDENTITY (Oracle)

##### 1.14.4 Processo de Validação

**Fluxo de Uso**:
```
1. Acessar http://gestaodedados.coresp.caixa
   ↓
2. Fazer upload do arquivo PDM
   ↓
3. Aguardar processamento (30 seg - 2 min)
   ↓
4. Baixar relatório PDF/Excel
   ↓
5. Analisar não conformidades
   ↓
6. Corrigir CRÍTICAS no PowerDesigner
   ↓
7. Re-validar até 0 CRÍTICAS
   ↓
8. Submeter ao ADI (com relatório anexado)
```

**Exemplo de Relatório (Resumo)**:
```
═══════════════════════════════════════════════════════════
RELATÓRIO DE PRÉ-VALIDAÇÃO TE074
═══════════════════════════════════════════════════════════

Arquivo: SIS_CONTRATOS_Gestao_v1.0_20260106.pdm
Data: 06/01/2026 10:45:23
Versão Pré-Validador: 3.2.1

───────────────────────────────────────────────────────────
RESUMO EXECUTIVO
───────────────────────────────────────────────────────────

Total de Objetos Analisados: 156
  - Tabelas: 12
  - Colunas: 120
  - Primary Keys: 12
  - Foreign Keys: 18
  - Índices: 25
  - Constraints: 34

Não Conformidades:
  🔴 CRÍTICO: 3
  ⚠️ ALERTA: 5
  ℹ️ INFORMAÇÃO: 8

STATUS: ❌ NÃO APROVADO (corrigir 3 CRÍTICAS)

───────────────────────────────────────────────────────────
DETALHAMENTO - CRÍTICAS (BLOQUEADORES)
───────────────────────────────────────────────────────────

[V201] Tabela sem descrição
  - Tabela: CON_CONTRATO_ITEM
  - Regra: TE074 3.2.2 - Toda tabela deve possuir MS_Description
  - Ação: Adicionar descrição em português na aba Properties → Comment

[V301] Nomenclatura inválida
  - Coluna: CON_CONTRATO.valorContrato
  - Regra: TE074 3.2.1.2 - Nomenclatura deve seguir padrão CAIXA
  - Esperado: VALOR_CONTRATO_VL
  - Ação: Renomear coluna conforme padrão (maiúsculas, sufixo _VL)

[V405] Foreign Key sem índice
  - FK: FK_CON_CONTRATO_ITEM_CONTRATO
  - Tabela: CON_CONTRATO_ITEM(CONTRATO_ID)
  - Regra: TE074 3.2.11 - FK deve possuir índice para performance
  - Ação: Criar índice IDX_CON_CONTRATO_ITEM_CONTRATO_ID

───────────────────────────────────────────────────────────
DETALHAMENTO - ALERTAS (RECOMENDAÇÕES)
───────────────────────────────────────────────────────────

[V502] Classificação OR016 ausente
  - Tabela: CON_CONTRATO
  - Regra: TE074 3.2.1.3 - Classificação obrigatória
  - Ação: Adicionar propriedade "Classificacao_Informacao"

[V601] Volumetria alta sem particionamento
  - Tabela: CON_CONTRATO_PARCELA
  - Volumetria: 150M linhas/ano
  - Regra: Boa prática - Particionar tabelas >100M linhas/ano
  - Ação: Avaliar particionamento com ABD

(...)

───────────────────────────────────────────────────────────
DETALHAMENTO - INFORMAÇÕES (BOAS PRÁTICAS)
───────────────────────────────────────────────────────────

[I701] Compressão não habilitada
  - Tabela: CON_CONTRATO
  - Recomendação: Habilitar DATA_COMPRESSION=PAGE (economia 40-70%)
  - Ação: Avaliar com ABD durante implementação

(...)

═══════════════════════════════════════════════════════════
FIM DO RELATÓRIO
═══════════════════════════════════════════════════════════
```

##### 1.14.5 Critérios de Aprovação

**Para Submissão ao ADI**:
- ✅ **0 (zero) não conformidades CRÍTICAS**
- ⚠️ Alertas são permitidos (ADI avaliará contexto)
- ℹ️ Informações não impedem submissão

**Após Correções**:
- Re-executar pré-validador
- Verificar relatório atualizado
- Anexar relatório final (0 CRÍTICAS) ao RTC

##### 1.14.6 Evolução do Pré-Validador

**Roadmap** (2026-2027):
- Validação de LGPD (CR439) - identificação automática de dados sensíveis
- Validação de metadados TE174 (linhagem de dados)
- Integração com repositório PowerDesigner (validação contínua)
- API REST para validação programática (CI/CD)
- Sugestões automáticas de correção (AI-powered)

---

#### 1.15 Outras Ferramentas e Processos

##### 1.15.1 RTC (Rational Team Concert)

**Função**: Workflow corporativo de acionamentos e rastreabilidade.

**URL**: https://gid.caixa:9443/ccm/web/projects/Acionamento%20Capítulos

**Serviços Disponíveis** (Painel "Acionamento Capítulos"):

1. **Reunião/Consultoria**:
   - Análise preliminar de dados
   - Consultoria técnica ADI
   - Esclarecimento de dúvidas TE074

2. **Solicitação de Validação do Modelos de Dados**:
   - Submissão formal de PDM para validação ADI
   - Anexos obrigatórios: PDM + Relatório Pré-Validador + Documentação

**Campos Obrigatórios do RTC**:
- Sistema: Nome do sistema (SIS_XXXX)
- Módulo: Nome do módulo
- Tipo de Demanda: Novo Sistema | Novo Módulo | Manutenção
- Prioridade: Alta | Média | Baixa
- Descrição: Contexto da demanda
- Anexos: PDM, Pré-Validador, Requisitos (TE177), Volumetria

**Rastreabilidade**:
- Histórico completo de alterações
- Comentários ADI/ABD/Desenvolvimento
- Status: Aberto → Em Análise → Pendente Ajustes → Concluído
- SLA tracking (TE074 3.1.9)

##### 1.15.2 Git/TFS (Versionamento de DDL)

**Função**: Controle de versão de scripts DDL e migrations.

**Estrutura Recomendada** (Git):
```
repository/
├── ddl/
│   ├── v1.0/
│   │   ├── 001_create_tables.sql
│   │   ├── 002_create_indexes.sql
│   │   ├── 003_create_constraints.sql
│   │   └── 004_extended_properties.sql
│   ├── v1.1/
│   │   ├── 005_alter_add_column_contrato_obs.sql
│   │   └── 006_create_table_contrato_anexo.sql
│   └── v2.0/
│       ├── 007_alter_pk_contrato.sql (breaking change)
│       └── 008_migration_v1_to_v2.sql
├── migrations/
│   ├── rollback/
│   │   ├── rollback_v1.1_to_v1.0.sql
│   │   └── rollback_v2.0_to_v1.1.sql
│   └── data/
│       ├── seed_tab_tipo_contrato.sql
│       └── update_status_contratos_legados.sql
├── docs/
│   ├── modelo_v1.0.pdm
│   ├── modelo_v1.1.pdm
│   ├── laudo_adi_v1.0.pdf
│   └── relatorio_prevalidador_v1.0.pdf
└── README.md
```

**Boas Práticas Git**:
- Commits atômicos (1 alteração = 1 commit)
- Mensagens descritivas: `feat: adiciona tabela CON_CONTRATO_ANEXO (v1.1)`
- Tags para versões: `git tag v1.0.0`, `git tag v2.0.0`
- Branches: `main` (produção), `develop` (desenvolvimento), `feature/nova-tabela`

##### 1.15.3 SQL Server Management Studio (SSMS)

**Função**: IDE principal para desenvolvimento, execução e monitoramento SQL Server.

**Versão Recomendada**: SSMS 19.x (latest)

**Funcionalidades Utilizadas**:
- Execução de DDL (após aprovação ABD)
- Consultas ad-hoc (exploração de dados)
- Visualização de Extended Properties
- Análise de query plans (performance)
- Monitoramento de bloqueios e deadlocks
- Backup/restore (testes)

**Configuração Recomendada**:
```sql
-- Habilitar plano de execução real
SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SET SHOWPLAN_ALL ON;

-- Configurar opções de sessão
SET NOCOUNT ON;
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
```

##### 1.15.4 Azure Data Studio

**Função**: Alternativa moderna ao SSMS, multi-plataforma (Windows/Linux/macOS).

**Vantagens**:
- Interface moderna (baseada em VS Code)
- Notebooks SQL (documentação executável)
- Extensões (Git integration, YAML, Markdown preview)
- Gráficos de performance integrados
- Suporte a PostgreSQL, MySQL (além de SQL Server)

**Casos de Uso**:
- Desenvolvimento em Linux/Mac
- Notebooks para documentação de processos
- Visualização de métricas de performance
- Colaboração (notebooks versionados no Git)

##### 1.15.5 Ferramentas de Performance

**SQL Server Profiler**:
- Captura de eventos (queries executadas, bloqueios, deadlocks)
- Análise de performance de aplicações
- Identificação de queries lentas

**Extended Events** (substitui Profiler):
- Menor overhead
- Mais flexível (filtros avançados)
- Persistência em arquivo (.xel)
- Análise post-mortem

**DMVs (Dynamic Management Views)**:
```sql
-- Top 10 queries mais lentas (últimas 24h)
SELECT TOP 10
    SUBSTRING(qt.text, (qs.statement_start_offset/2)+1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset
        END - qs.statement_start_offset)/2)+1) AS Query,
    qs.execution_count AS Execucoes,
    qs.total_elapsed_time / 1000 AS Tempo_Total_ms,
    qs.total_elapsed_time / qs.execution_count / 1000 AS Tempo_Medio_ms,
    qs.last_execution_time AS Ultima_Execucao
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
WHERE qs.last_execution_time > DATEADD(HOUR, -24, GETDATE())
ORDER BY qs.total_elapsed_time DESC;

-- Índices ausentes (sugestões SQL Server)
SELECT 
    OBJECT_NAME(mid.object_id) AS Tabela,
    mid.equality_columns AS Colunas_Igualdade,
    mid.inequality_columns AS Colunas_Desigualdade,
    mid.included_columns AS Colunas_Include,
    migs.avg_user_impact AS Impacto_Medio_PC,
    migs.user_seeks AS Buscas,
    'CREATE NONCLUSTERED INDEX IDX_' + OBJECT_NAME(mid.object_id) + '_' + 
        REPLACE(REPLACE(ISNULL(mid.equality_columns, ''), ', ', '_'), '[', '') + 
        ' ON ' + OBJECT_NAME(mid.object_id) + 
        ' (' + ISNULL(mid.equality_columns, '') + ')' AS SQL_Sugerido
FROM sys.dm_db_missing_index_details mid
INNER JOIN sys.dm_db_missing_index_groups mig ON mid.index_handle = mig.index_handle
INNER JOIN sys.dm_db_missing_index_group_stats migs ON mig.index_group_handle = migs.group_handle
WHERE mid.database_id = DB_ID()
  AND migs.avg_user_impact > 50  -- Impacto > 50%
ORDER BY migs.avg_user_impact DESC;
```

##### 1.15.6 Ferramentas de Documentação

**Geração Automática de Dicionário de Dados**:
```sql
-- Script para gerar dicionário de dados completo
SELECT 
    SCHEMA_NAME(t.schema_id) AS Esquema,
    t.name AS Tabela,
    ep_tabela.value AS Descricao_Tabela,
    c.name AS Coluna,
    TYPE_NAME(c.user_type_id) AS Tipo_Dado,
    c.max_length AS Tamanho,
    c.precision AS Precisao,
    c.scale AS Escala,
    CASE WHEN c.is_nullable = 1 THEN 'SIM' ELSE 'NAO' END AS Permite_Null,
    ep_coluna.value AS Descricao_Coluna,
    ep_class.value AS Classificacao_OR016,
    ep_lgpd.value AS Dado_Sensivel_LGPD
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
LEFT JOIN sys.extended_properties ep_tabela 
    ON ep_tabela.major_id = t.object_id 
    AND ep_tabela.minor_id = 0
    AND ep_tabela.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_coluna
    ON ep_coluna.major_id = c.object_id 
    AND ep_coluna.minor_id = c.column_id
    AND ep_coluna.name = 'MS_Description'
LEFT JOIN sys.extended_properties ep_class
    ON ep_class.major_id = t.object_id 
    AND ep_class.minor_id = 0
    AND ep_class.name = 'Classificacao_Informacao'
LEFT JOIN sys.extended_properties ep_lgpd
    ON ep_lgpd.major_id = c.object_id 
    AND ep_lgpd.minor_id = c.column_id
    AND ep_lgpd.name = 'Dado_Sensivel_LGPD'
WHERE t.name LIKE 'CON_%'  -- Filtrar por prefixo
ORDER BY t.name, c.column_id;
```

**Exportação para Excel/Markdown**:
- SSMS: Results to Grid → Copy with Headers → Paste no Excel
- PowerShell: `Invoke-Sqlcmd` + `Export-Csv`
- Azure Data Studio: Export to CSV/JSON
- Ferramentas terceiras: Redgate SQL Doc, ApexSQL Doc

---

**📊 Status da SUB-PARTE 1.4**: ✅ COMPLETA  
**📊 Status da PARTE 1 (Fundamentos e Normas Aplicáveis)**: ✅ **COMPLETA**

**Resumo PARTE 1**:
- ✅ SUB-PARTE 1.1: Introdução + TE074 + TE079 (seções 1.1-1.3)
- ✅ SUB-PARTE 1.2: TE105 + TE124 + TE109 + TE174 (seções 1.4-1.7)
- ✅ SUB-PARTE 1.3: OR016 + OR188 + CR439 + ISO/IEC 11179 (seções 1.8-1.11)
- ✅ SUB-PARTE 1.4: Workflow + PowerDesigner + Pré-Validador + Ferramentas (seções 1.12-1.15)

**Total**: 15 seções, ~50KB, tempo de leitura estimado: ~25-30 minutos

---

# PARTE 2: NOMENCLATURA E PADRONIZAÇÃO

> **Referências Normativas**: TE074 3.2.1, TE074 3.2.2, Expressões Regulares PPDS

---

## 2.1 Nomenclatura de Tabelas

### 2.1.1 Padrão Geral

Toda tabela no SQL Server deve seguir o padrão de nomenclatura CAIXA estabelecido pela TE074 3.2.1.2:

**Formato:**
```
[PREFIXO]_[NOME_DESCRITIVO]
```

**Regras:**
- **Prefixo obrigatório**: 3 letras maiúsculas identificando o sistema ou domínio
- **Nome descritivo**: Palavras separadas por underscore (`_`)
- **Somente caracteres**: A-Z, 0-9 e `_` (underscore)
- **Case**: SEMPRE MAIÚSCULAS
- **Comprimento máximo**: 128 caracteres (limite SQL Server)
- **Comprimento recomendado**: 30-50 caracteres (legibilidade)

**Expressão Regular de Validação:**
```regex
^[A-Z]{3}_[A-Z0-9_]+$
```

### 2.1.2 Prefixos de Sistema

**Tabelas Transacionais/Negociais** (TE074 3.2.5):
```sql
-- Sistema de Contratos
CON_CONTRATO
CON_CONTRATO_PARCELA
CON_CONTRATO_ADITIVO

-- Sistema de Arrecadação
ARR_BOLETO
ARR_PAGAMENTO
ARR_CONTA_BANCARIA

-- Sistema de Garantias
GAR_HIPOTECA
GAR_ALIENACAO_FIDUCIARIA
GAR_PENHOR
```

**Tabelas de Apoio/Domínio** (TE074 3.2.6):
```sql
-- Prefixos TAB_ ou DOM_
TAB_TIPO_CONTRATO
DOM_UF
TAB_MUNICIPIO
DOM_STATUS_PROCESSAMENTO
```

**Tabelas de Histórico**:
```sql
-- Sufixo _HIST
CON_CONTRATO_HIST
ARR_PAGAMENTO_HIST
CLI_CLIENTE_HIST
```

**Tabelas Auxiliares**:
```sql
-- Sufixo _AUX
CON_CONTRATO_PROCESSAMENTO_AUX
ARR_CONCILIACAO_LOTE_AUX
FIN_CALCULO_TEMP_AUX
```

**Tabelas de Log/Auditoria**:
```sql
-- Sufixo _LOG
CON_CONTRATO_ALTERACAO_LOG
USU_LOGIN_TENTATIVA_LOG
SIS_EXECUCAO_BATCH_LOG
```

**Tabelas de Stage/Carga**:
```sql
-- Prefixo STG_
STG_CONTRATO_IMPORTACAO
STG_CLIENTE_INTEGRACAO
STG_PAGAMENTO_LOTE
```

### 2.1.3 Tipos de Tabela e Convenções

**Spring Batch (TE074 3.2.1.4):**
```sql
-- Prefixo obrigatório SPB_
SPB_BATCH_JOB_INSTANCE
SPB_BATCH_JOB_EXECUTION
SPB_BATCH_STEP_EXECUTION
SPB_BATCH_JOB_PARAMS
```

**Modelagem Dimensional:**
```sql
-- Tabelas Fato: Prefixo FATO_
FATO_VENDA
FATO_PAGAMENTO
FATO_CONTRATO

-- Tabelas Dimensão: Prefixo DIM_
DIM_TEMPO
DIM_CLIENTE
DIM_PRODUTO
DIM_GEOGRAFIA
```

**Tabelas Associativas (N:N):**
```sql
-- Concatenação dos nomes relacionados
CON_CONTRATO_GARANTIA  -- Relaciona CON_CONTRATO e GAR_GARANTIA
PRO_PRODUTO_CATEGORIA  -- Relaciona PRO_PRODUTO e PRO_CATEGORIA
USU_USUARIO_PERFIL     -- Relaciona USU_USUARIO e USU_PERFIL
```

### 2.1.4 Exemplos Práticos

**✅ CORRETO:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    TIPO_CONTRATO_DS VARCHAR(500) NULL
);

CREATE TABLE CON_CONTRATO_HIST (
    CONTRATO_HIST_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    DATA_HISTORICO_DT DATETIME2(3) NOT NULL,
    OPERACAO_TP CHAR(1) NOT NULL  -- I=INSERT, U=UPDATE, D=DELETE
);
```

**❌ INCORRETO:**
```sql
-- Prefixo ausente
CREATE TABLE Contrato ( ... );

-- Minúsculas
CREATE TABLE con_contrato ( ... );

-- camelCase
CREATE TABLE CON_ContratoFinanciamento ( ... );

-- Caracteres inválidos
CREATE TABLE CON-CONTRATO ( ... );
CREATE TABLE CON.CONTRATO ( ... );

-- Prefixo com 2 letras apenas
CREATE TABLE CO_CONTRATO ( ... );
```

### 2.1.5 Validação Pré-Validador

O Pré-Validador executa as seguintes verificações automáticas:

```
[V101] Nomenclatura de Tabela - Prefixo ausente
[V102] Nomenclatura de Tabela - Prefixo inválido (não são 3 letras)
[V103] Nomenclatura de Tabela - Caracteres inválidos (minúsculas, especiais)
[V104] Nomenclatura de Tabela - Padrão camelCase detectado
[V105] Nomenclatura de Tabela - Comprimento > 128 caracteres
```

---

## 2.2 Nomenclatura de Colunas

### 2.2.1 Padrão Geral

Toda coluna deve seguir o padrão:

**Formato:**
```
[NOME_DESCRITIVO]_[SUFIXO]
```

**Regras:**
- **Nome descritivo**: Palavras separadas por `_` (underscore)
- **Sufixo obrigatório**: 2 letras indicando o tipo de dado (ver 2.2.2)
- **Case**: SEMPRE MAIÚSCULAS
- **Comprimento máximo**: 128 caracteres
- **Comprimento recomendado**: 20-40 caracteres

### 2.2.2 Sufixos Obrigatórios (10 Tipos)

| Sufixo | Tipo de Dado | Tipo SQL Server | Exemplo |
|--------|--------------|-----------------|---------|
| **_ID** | Identificador único | BIGINT, INT, UNIQUEIDENTIFIER | CONTRATO_ID, CLIENTE_ID |
| **_DT** | Data | DATE, DATETIME2 | DATA_CADASTRO_DT, DATA_VENCIMENTO_DT |
| **_VL** | Valor numérico/monetário | DECIMAL, NUMERIC, MONEY | VALOR_CONTRATO_VL, VALOR_PARCELA_VL |
| **_NM** | Nome descritivo | VARCHAR, NVARCHAR | CLIENTE_NM, PRODUTO_NM |
| **_DS** | Descrição detalhada | VARCHAR, NVARCHAR, TEXT | CONTRATO_DS, OBSERVACAO_DS |
| **_IN** | Indicador booleano | CHAR(1), BIT | ATIVO_IN, DELETADO_IN |
| **_TP** | Tipo/Classificação | CHAR, VARCHAR(curto) | STATUS_TP, CATEGORIA_TP |
| **_NR** | Número sequencial | VARCHAR, INT | NUMERO_CONTRATO_NR, NUMERO_NOTA_NR |
| **_PC** | Percentual | DECIMAL(5,2), DECIMAL(7,4) | TAXA_JUROS_PC, DESCONTO_PC |
| **_QT** | Quantidade | INT, BIGINT, DECIMAL | QUANTIDADE_PARCELAS_QT, QUANTIDADE_ITENS_QT |

### 2.2.3 Sufixos Especiais

**Código (_CD):**
```sql
TIPO_CONTRATO_CD VARCHAR(10)     -- Código de domínio
UF_CD CHAR(2)                    -- Sigla UF
MUNICIPIO_CD VARCHAR(7)          -- Código IBGE
```

**Timestamp (_TS):**
```sql
PROCESSAMENTO_TS DATETIME2(7)    -- Timestamp alta precisão
SINCRONIZACAO_TS ROWVERSION      -- Rowversion para controle concorrência
```

**Sequência (_SEQ):**
```sql
VERSAO_SEQ INT                   -- Número de versão
ORDEM_EXIBICAO_SEQ INT          -- Ordem de apresentação
```

**Hash (_HASH):**
```sql
SENHA_HASH VARBINARY(64)         -- Hash SHA256
CHECKSUM_HASH BINARY(16)         -- Hash MD5
```

### 2.2.4 Colunas de Auditoria Obrigatórias

Toda tabela transacional DEVE possuir (TE074 3.2.8):

```sql
CREATE TABLE CON_CONTRATO (
    -- Colunas negociais
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    -- AUDITORIA OBRIGATÓRIA
    DT_CADASTRO DATE NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT GETDATE(),
    
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    
    DT_ATUALIZACAO DATE NULL,
    
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Opcional: Timestamp para controle de concorrência
    TIMESTAMP_ATUALIZACAO_TS ROWVERSION
);
```

**Campos Opcionais de Auditoria:**
```sql
DT_EXCLUSAO DATE NULL                      -- Soft delete
USUARIO_EXCLUSAO_NM VARCHAR(100) NULL
MOTIVO_EXCLUSAO_DS VARCHAR(500) NULL

DT_APROVACAO DATE NULL
USUARIO_APROVACAO_NM VARCHAR(100) NULL

IP_CADASTRO_NM VARCHAR(45) NULL            -- IPv4/IPv6
```

### 2.2.5 Colunas LGPD (CR439)

Para dados pessoais/sensíveis:

```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Dados identificadores (LGPD)
    CPF_NR VARCHAR(11) NOT NULL,           -- Criptografado
    NOME_COMPLETO_NM NVARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(200) NULL,
    
    -- Controle LGPD
    LGPD_CONSENTIMENTO_DT DATE NULL,
    LGPD_FINALIDADE_DS VARCHAR(500) NULL,
    LGPD_BASE_LEGAL_TP VARCHAR(50) NULL,   -- Consentimento, Contrato, Legal, etc.
    LGPD_ANONIMIZADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- Auditoria
    DT_CADASTRO DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME()
);
```

### 2.2.6 Exemplos Práticos

**✅ CORRETO:**
```sql
-- Identificadores
CONTRATO_ID BIGINT
CLIENTE_ID BIGINT
PRODUTO_ID INT

-- Datas
DATA_CADASTRO_DT DATE
DATA_VENCIMENTO_DT DATE
DATA_NASCIMENTO_DT DATE

-- Valores monetários
VALOR_CONTRATO_VL DECIMAL(15,2)
VALOR_PARCELA_VL DECIMAL(15,2)
SALDO_DEVEDOR_VL DECIMAL(15,2)

-- Nomes e descrições
CLIENTE_NM VARCHAR(200)
PRODUTO_NM VARCHAR(100)
CONTRATO_DS VARCHAR(1000)

-- Indicadores booleanos
ATIVO_IN CHAR(1)          -- S/N
DELETADO_IN CHAR(1)       -- S/N
PRINCIPAL_IN CHAR(1)      -- S/N

-- Tipos e códigos
STATUS_TP CHAR(1)         -- A=Ativo, I=Inativo, S=Suspenso
UF_CD CHAR(2)            -- SP, RJ, MG
TIPO_PESSOA_TP CHAR(1)   -- F=Física, J=Jurídica

-- Números
NUMERO_CONTRATO_NR VARCHAR(20)
NUMERO_NOTA_NR VARCHAR(15)
ANO_EXERCICIO_NR CHAR(4)

-- Percentuais
TAXA_JUROS_PC DECIMAL(7,4)
DESCONTO_PC DECIMAL(5,2)

-- Quantidades
QUANTIDADE_PARCELAS_QT INT
QUANTIDADE_DIAS_QT INT
```

**❌ INCORRETO:**
```sql
-- Sem sufixo
CONTRATO
CLIENTE
DATA_CADASTRO

-- Sufixo errado
VALOR_CONTRATO_NR     -- Deveria ser _VL
CLIENTE_DS            -- Deveria ser _NM (nome) ou manter _DS se for descrição longa
DATA_NASCIMENTO_VL    -- Deveria ser _DT

-- Minúsculas
cliente_id
valor_contrato_vl

-- camelCase
ContratoId
ValorContrato

-- Caracteres especiais
VALOR-CONTRATO_VL
CLIENTE.NOME_NM
```

### 2.2.7 Validação Pré-Validador

```
[V201] Nomenclatura de Coluna - Sufixo ausente
[V202] Nomenclatura de Coluna - Sufixo inválido (não reconhecido)
[V203] Nomenclatura de Coluna - Incompatibilidade tipo/sufixo (ex: DATE com _VL)
[V204] Nomenclatura de Coluna - Caracteres inválidos
[V205] Nomenclatura de Coluna - Colunas auditoria ausentes (DT_CADASTRO, USUARIO_CADASTRO_NM)
[V206] Nomenclatura de Coluna - Comprimento > 128 caracteres
```

---

## 2.3 Nomenclatura de Primary Keys

### 2.3.1 Padrão de Nomenclatura

**Formato:**
```
PK_[NOME_TABELA]
```

**Regras:**
- Prefixo obrigatório: `PK_`
- Nome da tabela completo (sem o prefixo do sistema, opcionalmente)
- SEMPRE MAIÚSCULAS

### 2.3.2 Exemplos

**Padrão Completo (Recomendado):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY CLUSTERED (TIPO_CONTRATO_ID)
);
```

**Padrão Simplificado (Aceitável):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    CONSTRAINT PK_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
);
```

### 2.3.3 Chaves Compostas

Para chaves primárias compostas (tabelas associativas N:N):

```sql
CREATE TABLE CON_CONTRATO_GARANTIA (
    CONTRATO_ID BIGINT NOT NULL,
    GARANTIA_ID BIGINT NOT NULL,
    DATA_VINCULO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_GARANTIA 
        PRIMARY KEY CLUSTERED (CONTRATO_ID, GARANTIA_ID)
);

CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    ORDEM_EXIBICAO_SEQ INT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA 
        PRIMARY KEY CLUSTERED (PRODUTO_ID, CATEGORIA_ID)
);
```

### 2.3.4 Clustered vs Nonclustered

**Clustered (Padrão Recomendado):**
```sql
-- PK Clustered - Ordena fisicamente os dados
CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID)
```

**Nonclustered (Casos Especiais):**
```sql
-- Tabelas com clustering em data (particionamento)
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    -- PK Nonclustered (clustered será em DATA_VENCIMENTO_DT para particionamento)
    CONSTRAINT PK_CON_CONTRATO_PARCELA 
        PRIMARY KEY NONCLUSTERED (PARCELA_ID)
);

-- Clustered Index separado para particionamento
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_PARCELA_DATA
    ON CON_CONTRATO_PARCELA(DATA_VENCIMENTO_DT);
```

### 2.3.5 Validação Pré-Validador

```
[V301] Primary Key - Nomeação inválida (não inicia com PK_)
[V302] Primary Key - Ausente em tabela
[V303] Primary Key - Múltiplas PKs na mesma tabela
```

---

## 2.4 Nomenclatura de Foreign Keys

### 2.4.1 Padrão de Nomenclatura

**Formato:**
```
FK_[TABELA_ORIGEM]_[TABELA_DESTINO]
```

**Regras:**
- Prefixo obrigatório: `FK_`
- Nome da tabela origem (onde está a FK)
- Nome da tabela destino (tabela referenciada)
- Opcionalmente: incluir coluna se houver múltiplas FKs para mesma tabela
- SEMPRE MAIÚSCULAS

### 2.4.2 Exemplos Básicos

```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- FK para TAB_TIPO_CONTRATO
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO 
        FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    
    -- FK para CLI_CLIENTE
    CONSTRAINT FK_CON_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- FK para CON_CONTRATO
    CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO 
        FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);
```

### 2.4.3 Múltiplas FKs para Mesma Tabela

Quando a tabela origem possui múltiplas referências para a mesma tabela destino:

```sql
CREATE TABLE CON_CONTRATO_TRANSFERENCIA (
    TRANSFERENCIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Múltiplas FKs para CON_CONTRATO
    CONTRATO_ORIGEM_ID BIGINT NOT NULL,
    CONTRATO_DESTINO_ID BIGINT NOT NULL,
    
    DATA_TRANSFERENCIA_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_TRANSFERENCIA PRIMARY KEY (TRANSFERENCIA_ID),
    
    -- Incluir nome da coluna na constraint
    CONSTRAINT FK_CON_CONTRATO_TRANSFERENCIA_CONTRATO_ORIGEM
        FOREIGN KEY (CONTRATO_ORIGEM_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID),
    
    CONSTRAINT FK_CON_CONTRATO_TRANSFERENCIA_CONTRATO_DESTINO
        FOREIGN KEY (CONTRATO_DESTINO_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

CREATE TABLE USU_USUARIO_APROVACAO (
    APROVACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    USUARIO_SOLICITANTE_ID BIGINT NOT NULL,
    USUARIO_APROVADOR_ID BIGINT NOT NULL,
    
    CONSTRAINT FK_USU_USUARIO_APROVACAO_SOLICITANTE
        FOREIGN KEY (USUARIO_SOLICITANTE_ID)
        REFERENCES USU_USUARIO(USUARIO_ID),
    
    CONSTRAINT FK_USU_USUARIO_APROVACAO_APROVADOR
        FOREIGN KEY (USUARIO_APROVADOR_ID)
        REFERENCES USU_USUARIO(USUARIO_ID)
);
```

### 2.4.4 ON DELETE e ON UPDATE

**Padrão Recomendado CAIXA:**
```sql
-- DEFAULT: NO ACTION (TE074 3.2.11)
CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
    FOREIGN KEY (CONTRATO_ID)
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
```

**Casos Especiais (requer aprovação ADI):**
```sql
-- CASCADE: Deletar parcelas ao deletar contrato (cuidado!)
CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
    FOREIGN KEY (CONTRATO_ID)
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE

-- SET NULL: Permitir nulidade na FK
CONSTRAINT FK_CON_CONTRATO_GARANTIA_OPCIONAL
    FOREIGN KEY (GARANTIA_ID)
    REFERENCES GAR_GARANTIA(GARANTIA_ID)
    ON DELETE SET NULL
    ON UPDATE SET NULL
```

**Soft Delete (Preferível ao CASCADE):**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    DT_EXCLUSAO DATE NULL,
    
    -- FK com NO ACTION (não permite deleção se houver parcelas)
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Trigger para soft delete
CREATE TRIGGER TRG_CON_CONTRATO_SOFT_DELETE
ON CON_CONTRATO
INSTEAD OF DELETE
AS
BEGIN
    UPDATE CON_CONTRATO
    SET DELETADO_IN = 'S',
        DT_EXCLUSAO = GETDATE(),
        USUARIO_EXCLUSAO_NM = SUSER_SNAME()
    WHERE CONTRATO_ID IN (SELECT CONTRATO_ID FROM DELETED);
END;
```

### 2.4.5 Índices Automáticos em FKs

**Regra TE074 3.2.11**: Toda FK DEVE possuir índice.

```sql
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- FK
    CONSTRAINT FK_CON_CONTRATO_PARCELA_CONTRATO
        FOREIGN KEY (CONTRATO_ID)
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Índice obrigatório na FK (performance)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PARCELA_CONTRATO_ID
    ON CON_CONTRATO_PARCELA(CONTRATO_ID);
```

### 2.4.6 Validação Pré-Validador

```
[V401] Foreign Key - Nomeação inválida (não inicia com FK_)
[V402] Foreign Key - ON DELETE CASCADE sem aprovação ADI
[V403] Foreign Key - Tabela referenciada inexistente
[V404] Foreign Key - Tipo de dado incompatível com coluna referenciada
[V405] Foreign Key - Sem índice correspondente (performance)
```

---

## 2.5 Nomenclatura de Índices

### 2.5.1 Padrão de Nomenclatura

**Formato:**
```
IDX_[TABELA]_[COLUNAS]
```

**Regras:**
- Prefixo: `IDX_` (nonclustered) ou `CIX_` (clustered)
- Nome da tabela
- Nomes das colunas indexadas (até 3 colunas no nome)
- SEMPRE MAIÚSCULAS

### 2.5.2 Exemplos de Índices Simples

```sql
-- Índice simples (1 coluna)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_NUMERO
    ON CON_CONTRATO(NUMERO_CONTRATO_NR);

-- Índice em FK (obrigatório)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID);

-- Índice em data (consultas por período)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_DATA_CADASTRO
    ON CON_CONTRATO(DATA_CADASTRO_DT);
```

### 2.5.3 Índices Compostos

```sql
-- 2 colunas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS
    ON CON_CONTRATO(CLIENTE_ID, STATUS_TP);

-- 3 colunas (máximo no nome)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO_STATUS_DATA
    ON CON_CONTRATO(TIPO_CONTRATO_ID, STATUS_TP, DATA_CADASTRO_DT);

-- Mais de 3 colunas: usar nome genérico
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CONSULTA_GERAL
    ON CON_CONTRATO(TIPO_CONTRATO_ID, CLIENTE_ID, STATUS_TP, DATA_CADASTRO_DT, VALOR_CONTRATO_VL);
```

### 2.5.4 Covering Index (INCLUDE)

```sql
-- Covering index: colunas indexadas + colunas incluídas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_CADASTRO_DT, VALOR_CONTRATO_VL);

-- Nome mantém apenas colunas-chave (não inclui INCLUDE no nome)
```

### 2.5.5 Índices Filtrados

```sql
-- Índice filtrado (apenas registros ativos)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVO
    ON CON_CONTRATO(DATA_CADASTRO_DT)
    WHERE STATUS_TP = 'A' AND DELETADO_IN = 'N';

-- Índice para consultas específicas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PENDENTE
    ON CON_CONTRATO(CLIENTE_ID, DATA_CADASTRO_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WHERE STATUS_TP = 'P';
```

### 2.5.6 Clustered Index

```sql
-- Clustered Index não associado à PK
CREATE TABLE CON_CONTRATO_PARCELA (
    PARCELA_ID BIGINT NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    -- PK Nonclustered
    CONSTRAINT PK_CON_CONTRATO_PARCELA 
        PRIMARY KEY NONCLUSTERED (PARCELA_ID),
    
    -- Clustered Index em data (para particionamento)
    CONSTRAINT CIX_CON_CONTRATO_PARCELA_DATA_VENCIMENTO
        UNIQUE CLUSTERED (CONTRATO_ID, DATA_VENCIMENTO_DT, PARCELA_ID)
);

-- Ou explicitamente:
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_PARCELA_DATA
    ON CON_CONTRATO_PARCELA(DATA_VENCIMENTO_DT);
```

### 2.5.7 Índices Únicos

```sql
-- Unique Index (alternativa a UK_)
CREATE UNIQUE NONCLUSTERED INDEX IDX_CON_CONTRATO_NUMERO_UNIQUE
    ON CON_CONTRATO(NUMERO_CONTRATO_NR)
    WHERE DELETADO_IN = 'N';  -- Permite duplicatas em deletados

-- Ou usar constraint UK_ (ver seção 2.7)
```

### 2.5.8 Validação Pré-Validador

```
[V501] Índice - Nomeação inválida (não inicia com IDX_ ou CIX_)
[V502] Índice - FK sem índice correspondente
[V503] Índice - Duplicado/redundante
[V504] Índice - Colunas de baixa cardinalidade (ex: BIT)
```

---

## 2.6 Nomenclatura de Sequences

### 2.6.1 Padrão de Nomenclatura

**Formato:**
```
SEQ_[TABELA]_[COLUNA]
```

**Regras:**
- Prefixo obrigatório: `SEQ_`
- Nome da tabela
- Nome da coluna (geralmente _ID)
- SEMPRE MAIÚSCULAS

### 2.6.2 Quando Usar Sequences

**IDENTITY (Padrão Recomendado):**
```sql
-- Preferível para chaves primárias simples
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ...
);
```

**SEQUENCE (Casos Especiais):**
```sql
-- Sequence: Quando precisa compartilhar sequência entre tabelas
CREATE SEQUENCE SEQ_CON_CONTRATO_NUMERO
    AS BIGINT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 50
    NO CYCLE;

CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT NOT NULL 
        DEFAULT NEXT VALUE FOR SEQ_CON_CONTRATO_NUMERO,
    ...
);

-- Sequence: Quando precisa obter próximo valor antes do INSERT
DECLARE @NovoNumero BIGINT = NEXT VALUE FOR SEQ_CON_CONTRATO_NUMERO;
INSERT INTO CON_CONTRATO (...) VALUES (@NovoNumero, ...);
```

### 2.6.3 Exemplos Práticos

```sql
-- Sequence para numeração de documentos
CREATE SEQUENCE SEQ_CON_CONTRATO_NUMERO_DOCUMENTO
    AS INT
    START WITH 1
    INCREMENT BY 1
    CACHE 100
    NO CYCLE;

-- Sequence para controle de versão
CREATE SEQUENCE SEQ_CON_CONTRATO_VERSAO
    AS INT
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NO CYCLE;

-- Sequence compartilhada entre múltiplas tabelas (UUID sequencial)
CREATE SEQUENCE SEQ_GLOBAL_TRANSACAO_ID
    AS BIGINT
    START WITH 1000000
    INCREMENT BY 1
    CACHE 1000
    NO CYCLE;
```

### 2.6.4 Validação Pré-Validador

```
[V601] Sequence - Nomeação inválida (não inicia com SEQ_)
[V602] Sequence - CYCLE habilitado sem justificativa
[V603] Sequence - Tipo de dado incompatível (ex: TINYINT para alto volume)
```

---

## 2.7 Nomenclatura de Constraints

### 2.7.1 Check Constraints

**Formato:**
```
CK_[TABELA]_[COLUNA]_[DESCRICAO]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    DATA_CADASTRO_DT DATE NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Check: Status válido
    CONSTRAINT CK_CON_CONTRATO_STATUS_TP_VALIDO
        CHECK (STATUS_TP IN ('A', 'I', 'P', 'C', 'S')),
    
    -- Check: Valor positivo
    CONSTRAINT CK_CON_CONTRATO_VALOR_VL_POSITIVO
        CHECK (VALOR_CONTRATO_VL > 0),
    
    -- Check: Quantidade parcelas entre 1 e 360
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_QT_RANGE
        CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360),
    
    -- Check: Data vencimento posterior à cadastro
    CONSTRAINT CK_CON_CONTRATO_DATAS_ORDEM
        CHECK (DATA_VENCIMENTO_DT >= DATA_CADASTRO_DT)
);

-- Indicador booleano S/N
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL,
    PRINCIPAL_IN CHAR(1) NOT NULL,
    
    CONSTRAINT CK_CLI_CLIENTE_ATIVO_IN_SN
        CHECK (ATIVO_IN IN ('S', 'N')),
    
    CONSTRAINT CK_CLI_CLIENTE_PRINCIPAL_IN_SN
        CHECK (PRINCIPAL_IN IN ('S', 'N'))
);
```

### 2.7.2 Unique Constraints

**Formato:**
```
UK_[TABELA]_[COLUNAS]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    CPF_CLIENTE_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Unique: Número de contrato único
    CONSTRAINT UK_CON_CONTRATO_NUMERO_NR
        UNIQUE NONCLUSTERED (NUMERO_CONTRATO_NR),
    
    -- Unique composto: Cliente + Data + Tipo (um contrato por tipo/dia/cliente)
    CONSTRAINT UK_CON_CONTRATO_CLIENTE_DATA_TIPO
        UNIQUE NONCLUSTERED (CPF_CLIENTE_NR, DATA_CADASTRO_DT, TIPO_CONTRATO_ID)
);

-- Unique filtrado (apenas ativos)
CREATE TABLE USU_USUARIO (
    USUARIO_ID BIGINT NOT NULL,
    EMAIL_NM VARCHAR(200) NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT UK_USU_USUARIO_EMAIL_ATIVO
        UNIQUE NONCLUSTERED (EMAIL_NM)
        WHERE DELETADO_IN = 'N'
);
```

### 2.7.3 Default Constraints

**Formato:**
```
DF_[TABELA]_[COLUNA]
```

**Exemplos:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL,
    DELETADO_IN CHAR(1) NOT NULL,
    DT_CADASTRO DATE NOT NULL,
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- Defaults obrigatórios de auditoria
    CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO 
        DEFAULT GETDATE() FOR DT_CADASTRO,
    
    CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO 
        DEFAULT SUSER_SNAME() FOR USUARIO_CADASTRO_NM,
    
    -- Defaults de status
    CONSTRAINT DF_CON_CONTRATO_STATUS_TP 
        DEFAULT 'P' FOR STATUS_TP,  -- P=Pendente
    
    CONSTRAINT DF_CON_CONTRATO_ATIVO_IN 
        DEFAULT 'S' FOR ATIVO_IN,
    
    CONSTRAINT DF_CON_CONTRATO_DELETADO_IN 
        DEFAULT 'N' FOR DELETADO_IN
);

-- Default com função
CREATE TABLE LOG_ACESSO (
    ACESSO_ID BIGINT IDENTITY(1,1) NOT NULL,
    IP_ORIGEM_NM VARCHAR(45) NULL,
    GUID_SESSAO_NM UNIQUEIDENTIFIER NOT NULL,
    TIMESTAMP_ACESSO_TS DATETIME2(7) NOT NULL,
    
    CONSTRAINT DF_LOG_ACESSO_GUID_SESSAO 
        DEFAULT NEWID() FOR GUID_SESSAO_NM,
    
    CONSTRAINT DF_LOG_ACESSO_TIMESTAMP 
        DEFAULT SYSDATETIME() FOR TIMESTAMP_ACESSO_TS
);
```

### 2.7.4 Resumo de Prefixos

| Tipo Constraint | Prefixo | Exemplo |
|-----------------|---------|---------|
| Primary Key | PK_ | PK_CON_CONTRATO |
| Foreign Key | FK_ | FK_CON_CONTRATO_CLIENTE |
| Check | CK_ | CK_CON_CONTRATO_STATUS_VALIDO |
| Unique | UK_ | UK_CON_CONTRATO_NUMERO |
| Default | DF_ | DF_CON_CONTRATO_DT_CADASTRO |
| Index (Nonclustered) | IDX_ | IDX_CON_CONTRATO_CLIENTE_ID |
| Index (Clustered) | CIX_ | CIX_CON_CONTRATO_PARCELA_DATA |

### 2.7.5 Validação Pré-Validador

```
[V701] Constraint - Nomeação inválida (prefixo incorreto)
[V702] Check Constraint - Lógica de negócio complexa (mover para aplicação)
[V703] Default Constraint - Valor hardcoded para data (usar GETDATE())
[V704] Unique Constraint - Sem considerar soft delete (DELETADO_IN)
```

---

## 2.8 Descrições Obrigatórias (MS_Description)

### 2.8.1 Regras Gerais (TE074 3.2.2)

Toda tabela e coluna DEVE possuir descrição em português:

**Requisitos Obrigatórios:**
- **Língua portuguesa** (TE074 3.2.2.1)
- **Concisa e clara** (sem ambiguidade)
- **Contexto de negócio** (não repetir nome técnico)
- **Evitar jargões técnicos** (CAMPO, COLUNA, TABELA, ENTIDADE)
- **Incluir exemplos** quando relevante (TE074 3.2.2.5)
- **Finalidade/objetivo** (TE074 3.2.2.6)
- **Exceções e restrições** (TE074 3.2.2.4.1)

### 2.8.2 Adicionando Descrições via SQL

```sql
-- Descrição de Tabela
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Armazena os contratos de financiamento habitacional celebrados entre a CAIXA e os clientes mutuários. Inclui contratos ativos, suspensos, cancelados e quitados. Utilizado pelos sistemas SIRIC, SAAT e SCWEB para controle da carteira de crédito imobiliário.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO';

-- Descrição de Coluna
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Identificador único sequencial do contrato. Chave primária surrogate gerada automaticamente via IDENTITY. Exemplo: 12345678.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'CONTRATO_ID';

EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Número do contrato no formato SSSS-NNNNNNNN-AA (Sistema-Sequencial-DV). Deve ser único e imutável após cadastro. Exemplo: 1234-00123456-78. Gerado pela aplicação conforme TE183.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'NUMERO_CONTRATO_NR';

EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Status atual do contrato. Valores válidos: A=Ativo (em dia), I=Inadimplente (>30 dias atraso), P=Pendente (aguardando documentação), C=Cancelado (desistência/recusa), Q=Quitado (saldo zero), S=Suspenso (decisão judicial). Gerenciado por workflow de negócio.',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO',
    @level2type = N'COLUMN', @level2name = 'STATUS_TP';
```

### 2.8.3 Exemplos Práticos

**✅ CORRETO (Boas Descrições):**
```sql
-- Tabela
MS_Description: 
"Armazena os pagamentos de parcelas recebidos dos clientes mutuários via boleto bancário, 
débito automático ou correspondente bancário. Utilizada para conciliação financeira, 
baixa de parcelas e controle de arrecadação. Processada pelo batch ARR_PROCESSAMENTO_LOTE 
diariamente às 22h. Retém dados por 7 anos (TE074 ciclo de vida fiscal)."

-- Coluna VALOR_PARCELA_VL
MS_Description:
"Valor nominal da parcela no momento do vencimento, em reais (R$). Inclui amortização + 
juros + seguros + taxas. Não sofre atualização monetária após geração. Exemplo: 1.234,56. 
Calculado pela fórmula Price (Sistema SAAT) conforme plano de amortização."

-- Coluna STATUS_TP
MS_Description:
"Status do pagamento. Valores: P=Pago (confirmado pelo banco), A=Aguardando (compensação 
em andamento), C=Cancelado (reversão por estorno), R=Recusado (débito automático negado), 
E=Em análise (divergência de valor). Atualizado via integração FEBRABAN 240 posições."

-- Coluna CPF_NR (LGPD)
MS_Description:
"CPF do cliente titular do contrato, apenas números (11 dígitos). Dado pessoal conforme 
LGPD (CR439). Armazenado com criptografia AES-256. Utilizado para identificação, validação 
cadastral e consulta SERASA/SPC. Exemplo: 12345678901 (sem formatação). Base legal: 
execução de contrato (Art. 7º, V LGPD)."
```

**❌ INCORRETO (Descrições Ruins):**
```sql
-- Apenas repete o nome
MS_Description: "Contrato"                      -- ❌ Inválido
MS_Description: "ID do contrato"                -- ❌ Inválido
MS_Description: "Campo contendo o valor"        -- ❌ Inválido

-- Tautologia
MS_Description: "Tabela de contratos que armazena os contratos" -- ❌ Redundante

-- Jargão técnico sem contexto
MS_Description: "ENTIDADE para armazenamento de registros transacionais" -- ❌ Jargão

-- Sem contexto de negócio
MS_Description: "Coluna do tipo VARCHAR(20)"   -- ❌ Apenas tipo técnico

-- Inglês
MS_Description: "Contract identification number" -- ❌ Deve ser português
```

### 2.8.4 Template de Descrições

**Template para Tabela:**
```
Armazena [FINALIDADE NEGOCIAL]. 
Utilizada por [SISTEMAS/PROCESSOS]. 
[REGRAS ESPECIAIS/RETENÇÃO]. 
[OBSERVAÇÕES RELEVANTES].
```

**Template para Coluna:**
```
[DEFINIÇÃO CLARA]. 
[FORMATO/DOMÍNIO]. 
Exemplo: [VALOR EXEMPLO]. 
[REGRA ESPECIAL/OBSERVAÇÃO].
```

### 2.8.5 Validação Pré-Validador

```
[V801] Descrição - Ausente em tabela
[V802] Descrição - Ausente em coluna
[V803] Descrição - Apenas repete nome (tautologia)
[V804] Descrição - Contém jargão técnico proibido (CAMPO, COLUNA, ENTIDADE)
[V805] Descrição - Idioma estrangeiro detectado
[V806] Descrição - Comprimento < 20 caracteres (muito curta)
[V807] Descrição - LGPD: Coluna com dados pessoais sem indicação de base legal
```

---

## 2.9 Checklist de Nomenclatura

### 2.9.1 Tabelas

- [ ] Nome segue padrão `[PREFIXO]_[NOME]`
- [ ] Prefixo possui exatamente 3 letras maiúsculas
- [ ] Apenas caracteres válidos: A-Z, 0-9, `_`
- [ ] Case MAIÚSCULAS obrigatório
- [ ] Comprimento ≤ 128 caracteres
- [ ] Tipo de tabela identificado (transacional, apoio, histórico, log, stage)
- [ ] MS_Description presente e completa (≥ 50 caracteres)
- [ ] Classificação OR016 definida (via PowerDesigner)
- [ ] Primary Key nomeada como `PK_[TABELA]`
- [ ] Colunas auditoria presentes (DT_CADASTRO, USUARIO_CADASTRO_NM)

### 2.9.2 Colunas

- [ ] Nome segue padrão `[NOME]_[SUFIXO]`
- [ ] Sufixo obrigatório presente (_ID, _DT, _VL, _NM, _DS, _IN, _TP, _NR, _PC, _QT)
- [ ] Sufixo compatível com tipo de dado SQL Server
- [ ] Case MAIÚSCULAS obrigatório
- [ ] Comprimento ≤ 128 caracteres
- [ ] MS_Description presente (≥ 20 caracteres, contexto de negócio)
- [ ] Dados pessoais/LGPD: Base legal documentada
- [ ] Defaults apropriados (DT_CADASTRO=GETDATE(), USUARIO=SUSER_SNAME())

### 2.9.3 Constraints

- [ ] Primary Key: `PK_[TABELA]`
- [ ] Foreign Key: `FK_[ORIGEM]_[DESTINO]`
- [ ] Check: `CK_[TABELA]_[COLUNA]_[DESCRICAO]`
- [ ] Unique: `UK_[TABELA]_[COLUNAS]`
- [ ] Default: `DF_[TABELA]_[COLUNA]`
- [ ] Todas as FKs possuem índice correspondente
- [ ] ON DELETE/UPDATE = NO ACTION (padrão, salvo aprovação ADI)
- [ ] Check constraints validam domínios (não regras de negócio complexas)

### 2.9.4 Índices

- [ ] Nonclustered: `IDX_[TABELA]_[COLUNAS]`
- [ ] Clustered: `CIX_[TABELA]_[COLUNAS]`
- [ ] Todas as FKs possuem índice
- [ ] Índices compostos ordenados por cardinalidade (alta → baixa)
- [ ] Covering indexes usam INCLUDE para colunas não-chave
- [ ] Índices filtrados documentados (WHERE clause)
- [ ] Sem índices redundantes/duplicados

### 2.9.5 Validação Pré-Validador

| Categoria | Qtd Regras | Criticidade |
|-----------|-----------|-------------|
| Nomenclatura Tabelas | 40+ | CRÍTICO |
| Nomenclatura Colunas | 15+ | CRÍTICO |
| Descrições | 15+ | CRÍTICO |
| Primary Keys | 20+ | CRÍTICO |
| Foreign Keys | 20+ | CRÍTICO |
| Constraints | 10+ | ALERTA |
| Índices | 10+ | ALERTA |
| OR016 Classificação | 5+ | CRÍTICO |

**Critério Aprovação ADI:**
- 0 CRÍTICAS obrigatório
- ≤ 5 ALERTAS aceitável
- INFORMAÇÕES não bloqueiam

---

**📊 Status da PARTE 2 (Nomenclatura e Padronização)**: ✅ **COMPLETA**

**Resumo PARTE 2**:
- ✅ 2.1: Nomenclatura de Tabelas (prefixos, regex, validação)
- ✅ 2.2: Nomenclatura de Colunas (10 sufixos, auditoria, LGPD)
- ✅ 2.3: Primary Keys (PK_, clustered/nonclustered)
- ✅ 2.4: Foreign Keys (FK_, índices, ON DELETE/UPDATE)
- ✅ 2.5: Índices (IDX_/CIX_, covering, filtrados)
- ✅ 2.6: Sequences (SEQ_, IDENTITY vs SEQUENCE)
- ✅ 2.7: Constraints (CK_/UK_/DF_)
- ✅ 2.8: Descrições MS_Description (TE074 3.2.2)
- ✅ 2.9: Checklist de Nomenclatura

**Total**: 8 seções + checklist, ~20KB, tempo de leitura estimado: ~15-20 minutos

**Referências Cruzadas:**
- [1.14 Pré-Validador](#114-pré-validador): Validações automáticas e relatórios
- [1.12 Workflow de Aprovação](#112-workflow-de-aprovação): Submissão para ADI/ABD

---

# PARTE 3: ESTRUTURAÇÃO DE TABELAS E RELACIONAMENTOS

> **Referências Normativas**: TE074 3.2.4-3.2.11, Melhores Práticas em Modelagem

---

## SUB-PARTE 3.1: Tipos de Tabelas e Normalização (1 de 3)

---

## 3.1 Tipos de Tabelas

### 3.1.1 Visão Geral

O modelo de dados CAIXA classifica tabelas em **6 tipos principais**, cada um com propósito específico e características de uso:

| Tipo | Prefixo/Sufixo | Finalidade | Volumetria | Normalização |
|------|----------------|------------|------------|--------------|
| **Transacional** | POI_, SIS_, CON_ | Dados operacionais do negócio | Alta (milhões) | 3NF obrigatória |
| **Apoio/Domínio** | TAB_, DOM_ | Referências, listas de valores | Baixa (<10K) | 3NF |
| **Histórico** | _HIST | Arquivamento temporal | Muito alta | 3NF, particionada |
| **Auxiliar** | _AUX | Suporte transacional temporário | Variável | Relaxada (performance) |
| **Log/Auditoria** | _LOG | Rastreamento de operações | Alta | Desnormalizada |
| **Stage** | STG_ | Área de preparação ETL | Alta (transitória) | Não normalizada |

### 3.1.2 Tabelas Transacionais

**Características (TE074 3.2.4)**:
- Armazenam dados operacionais do negócio (contratos, pagamentos, clientes)
- **Volumetria alta**: Milhões a bilhões de registros
- **Normalização 3NF obrigatória**
- **Auditoria obrigatória**: DT_CADASTRO, USUARIO_CADASTRO_NM
- **Chave primária surrogate**: BIGINT IDENTITY
- **Índices otimizados**: Foreign keys, colunas de busca frequente
- **Particionamento**: Quando volumetria > 100M linhas/ano (TE074 3.2.8.3)
- **Compactação**: PAGE ou ROW (TE074 3.2.9.1)

**Exemplos:**
```sql
-- Sistema de Contratos (CON_)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL, -- A=Ativo, C=Cancelado, Q=Quitado
    
    -- Auditoria obrigatória
    DT_CADASTRO DATE NOT NULL CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    DT_ATUALIZACAO DATE NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Soft delete
    DELETADO_IN CHAR(1) NOT NULL CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    DT_EXCLUSAO DATE NULL,
    
    -- Constraints
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS_VALIDO CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO CHECK (VALOR_CONTRATO_VL > 0),
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_RANGE CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360)
) WITH (DATA_COMPRESSION = PAGE);

-- Índices obrigatórios em FKs
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO_CONTRATO_ID
    ON CON_CONTRATO(TIPO_CONTRATO_ID);

CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_ID
    ON CON_CONTRATO(CLIENTE_ID)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- Índice para consultas por status
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_STATUS_DATA
    ON CON_CONTRATO(STATUS_CONTRATO_TP, DATA_ASSINATURA_DT)
    WHERE DELETADO_IN = 'N';

-- Descrições obrigatórias
EXEC sp_addextendedproperty
    @name = N'MS_Description',
    @value = N'Armazena os contratos de financiamento habitacional celebrados entre a CAIXA e clientes mutuários. Inclui contratos ativos, cancelados, quitados e suspensos. Utilizado pelos sistemas SIRIC, SAAT e SCWEB para controle da carteira de crédito imobiliário. Volumetria: 50M contratos, crescimento 2M/ano. Retenção: 30 anos após quitação (normas BACEN).',
    @level0type = N'SCHEMA', @level0name = 'dbo',
    @level1type = N'TABLE', @level1name = 'CON_CONTRATO';
```

### 3.1.3 Tabelas de Apoio/Domínio

**Características**:
- Armazenam **valores de referência** (listas de tipos, categorias, UFs, municípios)
- **Volumetria baixa**: Dezenas a milhares de registros
- **Baixa volatilidade**: Dados raramente alterados
- **Caching recomendado**: Cache de aplicação (Redis, Memcached)
- **Prefixos**: TAB_ (tabelas de apoio) ou DOM_ (domínios)
- **Normalização 3NF**

**Exemplos:**
```sql
-- Tabela de Tipos de Contrato
CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,      -- Código mnemônico (SFH, PRO-URB, SBPE)
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,     -- Nome completo
    TIPO_CONTRATO_DS VARCHAR(500) NULL,         -- Descrição detalhada
    TAXA_JUROS_PADRAO_PC DECIMAL(7,4) NULL,     -- Taxa padrão do tipo
    PRAZO_MAXIMO_MESES_QT INT NULL,             -- Prazo máximo em meses
    ATIVO_IN CHAR(1) NOT NULL,                  -- S/N
    ORDEM_EXIBICAO_SEQ INT NOT NULL,            -- Ordenação para UIs
    
    -- Auditoria
    DT_CADASTRO DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME(),
    
    -- Constraints
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY CLUSTERED (TIPO_CONTRATO_ID),
    CONSTRAINT UK_TAB_TIPO_CONTRATO_CD UNIQUE NONCLUSTERED (TIPO_CONTRATO_CD),
    CONSTRAINT CK_TAB_TIPO_CONTRATO_ATIVO CHECK (ATIVO_IN IN ('S', 'N'))
);

-- Tabela de UFs (domínio fixo)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,             -- SP, RJ, MG
    UF_NM VARCHAR(50) NOT NULL,         -- São Paulo, Rio de Janeiro
    REGIAO_TP VARCHAR(20) NOT NULL,     -- Norte, Nordeste, Sul, Sudeste, Centro-Oeste
    CODIGO_IBGE_NR CHAR(2) NOT NULL,    -- Código IBGE
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY CLUSTERED (UF_CD),
    CONSTRAINT UK_DOM_UF_CODIGO_IBGE UNIQUE (CODIGO_IBGE_NR)
);

-- Carga inicial (dados fixos)
INSERT INTO DOM_UF (UF_CD, UF_NM, REGIAO_TP, CODIGO_IBGE_NR) VALUES
('AC', 'Acre', 'Norte', '12'),
('AL', 'Alagoas', 'Nordeste', '27'),
('SP', 'São Paulo', 'Sudeste', '35'),
-- ... demais UFs
('RS', 'Rio Grande do Sul', 'Sul', '43');
```

### 3.1.4 Tabelas Históricas

**Características**:
- Armazenam **versões anteriores** de registros transacionais
- **Sufixo obrigatório**: _HIST
- **Volumetria muito alta**: 5-10x maior que tabela transacional
- **Particionamento obrigatório**: Por data (TE074 3.2.8.6)
- **Compactação ROW/PAGE**: Reduzir espaço em disco
- **Arquivamento**: Dados >5 anos movidos para storage secundário
- **Consultas raras**: Otimizar para escrita, não leitura

**Estratégias de Histórico:**

**1. Trigger-based History (SQL Server tradicional):**
```sql
-- Tabela histórico
CREATE TABLE CON_CONTRATO_HIST (
    CONTRATO_HIST_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Cópia de todas as colunas da tabela original
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Metadados de auditoria
    DATA_HISTORICO_DT DATETIME2(3) NOT NULL,
    USUARIO_HISTORICO_NM VARCHAR(100) NOT NULL,
    OPERACAO_TP CHAR(1) NOT NULL,           -- I=INSERT, U=UPDATE, D=DELETE
    IP_ORIGEM_NM VARCHAR(45) NULL,
    APLICACAO_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_CON_CONTRATO_HIST PRIMARY KEY NONCLUSTERED (CONTRATO_HIST_ID),
    CONSTRAINT CK_CON_CONTRATO_HIST_OPERACAO CHECK (OPERACAO_TP IN ('I', 'U', 'D'))
);

-- Clustered index por data (particionamento)
CREATE CLUSTERED INDEX CIX_CON_CONTRATO_HIST_DATA
    ON CON_CONTRATO_HIST(DATA_HISTORICO_DT);

-- Índice para buscar histórico de um contrato específico
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_HIST_CONTRATO_ID
    ON CON_CONTRATO_HIST(CONTRATO_ID, DATA_HISTORICO_DT DESC);

-- Trigger de auditoria (UPDATE e DELETE)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA
ON CON_CONTRATO
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Registrar operação de UPDATE
    IF EXISTS (SELECT * FROM INSERTED)
    BEGIN
        INSERT INTO CON_CONTRATO_HIST (
            CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID,
            DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP,
            DATA_HISTORICO_DT, USUARIO_HISTORICO_NM, OPERACAO_TP
        )
        SELECT 
            d.CONTRATO_ID, d.NUMERO_CONTRATO_NR, d.TIPO_CONTRATO_ID, d.CLIENTE_ID,
            d.DATA_ASSINATURA_DT, d.VALOR_CONTRATO_VL, d.STATUS_CONTRATO_TP,
            SYSDATETIME(), SUSER_SNAME(), 'U'
        FROM DELETED d;
    END
    
    -- Registrar operação de DELETE
    ELSE
    BEGIN
        INSERT INTO CON_CONTRATO_HIST (
            CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID,
            DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP,
            DATA_HISTORICO_DT, USUARIO_HISTORICO_NM, OPERACAO_TP
        )
        SELECT 
            d.CONTRATO_ID, d.NUMERO_CONTRATO_NR, d.TIPO_CONTRATO_ID, d.CLIENTE_ID,
            d.DATA_ASSINATURA_DT, d.VALOR_CONTRATO_VL, d.STATUS_CONTRATO_TP,
            SYSDATETIME(), SUSER_SNAME(), 'D'
        FROM DELETED d;
    END
END;
```

**2. Temporal Tables (SQL Server 2016+):**
```sql
-- Tabela principal com suporte temporal
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Colunas temporais (gerenciadas automaticamente)
    VALID_FROM DATETIME2(3) GENERATED ALWAYS AS ROW START NOT NULL,
    VALID_TO DATETIME2(3) GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (VALID_FROM, VALID_TO),
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.CON_CONTRATO_HIST));

-- Consultar histórico automaticamente
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME AS OF '2025-01-01 10:00:00'
WHERE CONTRATO_ID = 12345;

-- Consultar todas as versões de um registro
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME ALL
WHERE CONTRATO_ID = 12345
ORDER BY VALID_FROM DESC;
```

### 3.1.5 Tabelas Auxiliares

**Características**:
- Suporte a **processamento transacional** (temporárias, caches, locks)
- **Sufixo**: _AUX
- **Ciclo de vida curto**: Dados removidos após processamento
- **Normalização relaxada**: Performance prioritária
- **Sem auditoria completa**: Apenas metadados essenciais

**Exemplos:**
```sql
-- Tabela auxiliar para processamento de lotes
CREATE TABLE CON_CONTRATO_PROCESSAMENTO_AUX (
    LOTE_ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    CONTRATO_ID BIGINT NOT NULL,
    STATUS_PROCESSAMENTO_TP VARCHAR(20) NOT NULL, -- PENDENTE, PROCESSANDO, SUCESSO, ERRO
    DATA_INCLUSAO_DT DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    DATA_PROCESSAMENTO_DT DATETIME2(3) NULL,
    ERRO_DS VARCHAR(MAX) NULL,
    TENTATIVAS_QT INT NOT NULL DEFAULT 0,
    
    CONSTRAINT PK_CON_CONTRATO_PROCESSAMENTO_AUX PRIMARY KEY (LOTE_ID, CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_PROCESSAMENTO_AUX_CONTRATO FOREIGN KEY (CONTRATO_ID) REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Índice para consultar por status
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_PROCESSAMENTO_AUX_STATUS
    ON CON_CONTRATO_PROCESSAMENTO_AUX(STATUS_PROCESSAMENTO_TP, DATA_INCLUSAO_DT);

-- Limpeza automática (job diário)
DELETE FROM CON_CONTRATO_PROCESSAMENTO_AUX
WHERE DATA_PROCESSAMENTO_DT < DATEADD(DAY, -7, GETDATE())
  AND STATUS_PROCESSAMENTO_TP = 'SUCESSO';
```

### 3.1.6 Tabelas de Log/Auditoria

**Características**:
- Rastreamento de **operações críticas** (login, alterações sensíveis)
- **Sufixo**: _LOG
- **Alto volume de escritas**: Inserções massivas
- **Consultas analíticas**: Investigações, compliance
- **Retenção longa**: 5-10 anos (LGPD, normas BACEN)
- **Particionamento por data**: Obrigatório
- **Compactação**: Reduzir espaço

**Exemplos:**
```sql
-- Log de acesso ao sistema
CREATE TABLE USU_LOGIN_LOG (
    LOGIN_LOG_ID BIGINT IDENTITY(1,1) NOT NULL,
    USUARIO_ID BIGINT NULL,                     -- NULL se login falhou
    LOGIN_NM VARCHAR(100) NOT NULL,
    DATA_HORA_TENTATIVA_DT DATETIME2(3) NOT NULL,
    SUCESSO_IN CHAR(1) NOT NULL,                -- S/N
    IP_ORIGEM_NM VARCHAR(45) NOT NULL,
    NAVEGADOR_DS VARCHAR(200) NULL,
    SISTEMA_OPERACIONAL_DS VARCHAR(100) NULL,
    MOTIVO_FALHA_DS VARCHAR(500) NULL,
    
    CONSTRAINT PK_USU_LOGIN_LOG PRIMARY KEY NONCLUSTERED (LOGIN_LOG_ID),
    CONSTRAINT CK_USU_LOGIN_LOG_SUCESSO CHECK (SUCESSO_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);

-- Clustered index por data (particionamento)
CREATE CLUSTERED INDEX CIX_USU_LOGIN_LOG_DATA
    ON USU_LOGIN_LOG(DATA_HORA_TENTATIVA_DT);

-- Log de alterações em dados sensíveis (LGPD)
CREATE TABLE CLI_CLIENTE_ALTERACAO_LOG (
    ALTERACAO_LOG_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    CAMPO_ALTERADO_NM VARCHAR(100) NOT NULL,    -- CPF_NR, EMAIL_NM, etc.
    VALOR_ANTERIOR_DS VARCHAR(MAX) NULL,        -- Criptografado
    VALOR_NOVO_DS VARCHAR(MAX) NULL,            -- Criptografado
    DATA_ALTERACAO_DT DATETIME2(3) NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) NOT NULL,
    IP_ORIGEM_NM VARCHAR(45) NULL,
    JUSTIFICATIVA_DS VARCHAR(500) NULL,         -- Obrigatória para dados LGPD
    
    CONSTRAINT PK_CLI_CLIENTE_ALTERACAO_LOG PRIMARY KEY NONCLUSTERED (ALTERACAO_LOG_ID)
) WITH (DATA_COMPRESSION = PAGE);

CREATE CLUSTERED INDEX CIX_CLI_CLIENTE_ALTERACAO_LOG_DATA
    ON CLI_CLIENTE_ALTERACAO_LOG(DATA_ALTERACAO_DT);

CREATE NONCLUSTERED INDEX IDX_CLI_CLIENTE_ALTERACAO_LOG_CLIENTE_ID
    ON CLI_CLIENTE_ALTERACAO_LOG(CLIENTE_ID, DATA_ALTERACAO_DT DESC);
```

### 3.1.7 Tabelas de Stage (ETL)

**Características**:
- **Área de preparação** para processos ETL (Extract, Transform, Load)
- **Prefixo**: STG_
- **Estrutura espelhada**: Mesma estrutura da tabela destino (geralmente)
- **Sem constraints**: Performance de carga
- **Truncate + Insert**: Padrão de carga full
- **Ciclo de vida**: Dados descartados após carga bem-sucedida

**Exemplos:**
```sql
-- Stage para importação de contratos
CREATE TABLE STG_CONTRATO_IMPORTACAO (
    CONTRATO_IMPORTACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- Dados do arquivo de origem (formato texto)
    NUMERO_CONTRATO_TEXTO VARCHAR(50) NULL,
    TIPO_CONTRATO_CODIGO VARCHAR(20) NULL,
    CPF_CLIENTE_TEXTO VARCHAR(20) NULL,
    DATA_ASSINATURA_TEXTO VARCHAR(20) NULL,
    VALOR_CONTRATO_TEXTO VARCHAR(30) NULL,
    PARCELAS_TEXTO VARCHAR(10) NULL,
    
    -- Metadados de controle
    LOTE_ID UNIQUEIDENTIFIER NOT NULL,
    LINHA_ARQUIVO_NR INT NOT NULL,
    DATA_CARGA_DT DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),
    
    -- Validação e transformação
    VALIDADO_IN CHAR(1) NULL,                   -- S/N/NULL (pendente)
    ERRO_VALIDACAO_DS VARCHAR(MAX) NULL,
    PROCESSADO_IN CHAR(1) NULL,                 -- S/N/NULL
    CONTRATO_ID_DESTINO BIGINT NULL,            -- PK gerada após inserção
    
    CONSTRAINT PK_STG_CONTRATO_IMPORTACAO PRIMARY KEY (CONTRATO_IMPORTACAO_ID)
);

-- Índice para processamento sequencial
CREATE NONCLUSTERED INDEX IDX_STG_CONTRATO_IMPORTACAO_LOTE
    ON STG_CONTRATO_IMPORTACAO(LOTE_ID, VALIDADO_IN, PROCESSADO_IN);

-- Procedure de validação
CREATE PROCEDURE SP_VALIDAR_STG_CONTRATO
    @LOTE_ID UNIQUEIDENTIFIER
AS
BEGIN
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'N',
        ERRO_VALIDACAO_DS = 'Número de contrato inválido'
    WHERE LOTE_ID = @LOTE_ID
      AND (NUMERO_CONTRATO_TEXTO IS NULL OR LEN(NUMERO_CONTRATO_TEXTO) < 10);
    
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'N',
        ERRO_VALIDACAO_DS = 'CPF inválido'
    WHERE LOTE_ID = @LOTE_ID
      AND LEN(CPF_CLIENTE_TEXTO) <> 11;
    
    -- Marcar válidos
    UPDATE STG_CONTRATO_IMPORTACAO
    SET VALIDADO_IN = 'S'
    WHERE LOTE_ID = @LOTE_ID
      AND ERRO_VALIDACAO_DS IS NULL;
END;

-- Procedure de carga (após validação)
CREATE PROCEDURE SP_PROCESSAR_STG_CONTRATO
    @LOTE_ID UNIQUEIDENTIFIER
AS
BEGIN
    BEGIN TRANSACTION;
    
    -- Inserir contratos válidos
    INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, TIPO_CONTRATO_ID, CLIENTE_ID, ...)
    SELECT 
        stg.NUMERO_CONTRATO_TEXTO,
        tc.TIPO_CONTRATO_ID,
        cli.CLIENTE_ID,
        ...
    FROM STG_CONTRATO_IMPORTACAO stg
    INNER JOIN TAB_TIPO_CONTRATO tc ON tc.TIPO_CONTRATO_CD = stg.TIPO_CONTRATO_CODIGO
    INNER JOIN CLI_CLIENTE cli ON cli.CPF_NR = stg.CPF_CLIENTE_TEXTO
    WHERE stg.LOTE_ID = @LOTE_ID
      AND stg.VALIDADO_IN = 'S'
      AND stg.PROCESSADO_IN IS NULL;
    
    -- Atualizar stage com IDs gerados
    UPDATE stg
    SET stg.PROCESSADO_IN = 'S',
        stg.CONTRATO_ID_DESTINO = con.CONTRATO_ID
    FROM STG_CONTRATO_IMPORTACAO stg
    INNER JOIN CON_CONTRATO con ON con.NUMERO_CONTRATO_NR = stg.NUMERO_CONTRATO_TEXTO
    WHERE stg.LOTE_ID = @LOTE_ID
      AND stg.VALIDADO_IN = 'S';
    
    COMMIT TRANSACTION;
END;
```

---

## 3.2 Normalização

### 3.2.1 Formas Normais Obrigatórias (TE074 3.2.3.9)

**Regra CAIXA**: Toda tabela transacional e de apoio DEVE estar em **Terceira Forma Normal (3NF)**.

**Objetivos da Normalização**:
1. **Eliminar redundância**: Cada fato armazenado uma única vez
2. **Garantir integridade**: Atualizações consistentes
3. **Facilitar manutenção**: Mudanças localizadas
4. **Reduzir anomalias**: Inserção, atualização, exclusão

### 3.2.2 Primeira Forma Normal (1NF)

**Definição**: Todos os atributos contêm **valores atômicos** (indivisíveis).

**Violação 1NF - Múltiplos valores em uma coluna:**
```sql
-- ❌ INCORRETO: Lista de telefones em uma única coluna
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    TELEFONES_DS VARCHAR(500) NULL  -- "11-98765-4321, 11-3456-7890, 11-2345-6789"
);
```

**Solução 1NF - Tabela separada para telefones:**
```sql
-- ✅ CORRETO: Cada telefone em uma linha
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

CREATE TABLE CLI_CLIENTE_TELEFONE (
    CLIENTE_TELEFONE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    TELEFONE_NR VARCHAR(15) NOT NULL,
    TIPO_TELEFONE_TP VARCHAR(20) NOT NULL,  -- RESIDENCIAL, COMERCIAL, CELULAR
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT PK_CLI_CLIENTE_TELEFONE PRIMARY KEY (CLIENTE_TELEFONE_ID),
    CONSTRAINT FK_CLI_CLIENTE_TELEFONE_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID),
    CONSTRAINT CK_CLI_CLIENTE_TELEFONE_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);
```

**Violação 1NF - Grupos repetitivos:**
```sql
-- ❌ INCORRETO: Colunas repetitivas (telefone1, telefone2, telefone3)
CREATE TABLE CLI_CLIENTE_ERRADO2 (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    TELEFONE1_NR VARCHAR(15) NULL,
    TELEFONE2_NR VARCHAR(15) NULL,
    TELEFONE3_NR VARCHAR(15) NULL
);
```

### 3.2.3 Segunda Forma Normal (2NF)

**Definição**: Estar em 1NF + Todos os atributos não-chave dependem **totalmente** da chave primária (não apenas de parte dela).

**Aplicável apenas a tabelas com chave primária composta.**

**Violação 2NF - Dependência parcial:**
```sql
-- ❌ INCORRETO: PRODUTO_NM depende apenas de PRODUTO_ID (não da PK completa)
CREATE TABLE PED_PEDIDO_ITEM_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,  -- ❌ Depende só de PRODUTO_ID
    CATEGORIA_PRODUTO_NM VARCHAR(100) NOT NULL,  -- ❌ Depende só de PRODUTO_ID
    
    CONSTRAINT PK_PED_PEDIDO_ITEM_ERRADO PRIMARY KEY (PEDIDO_ID, PRODUTO_ID)
);
```

**Solução 2NF - Separar tabela de produtos:**
```sql
-- ✅ CORRETO: Produto em tabela separada
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,
    CATEGORIA_PRODUTO_NM VARCHAR(100) NOT NULL,
    PRECO_PADRAO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

CREATE TABLE PED_PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,  -- Pode divergir do preço padrão
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (PEDIDO_ID, PRODUTO_ID),
    CONSTRAINT FK_PED_PEDIDO_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) REFERENCES PED_PEDIDO(PEDIDO_ID),
    CONSTRAINT FK_PED_PEDIDO_ITEM_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID)
);
```

### 3.2.4 Terceira Forma Normal (3NF)

**Definição**: Estar em 2NF + Nenhum atributo não-chave depende de outro atributo não-chave (eliminar dependências transitivas).

**Violação 3NF - Dependência transitiva:**
```sql
-- ❌ INCORRETO: UF_NM depende de UF_CD (não da PK CLIENTE_ID)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,  -- ❌ Depende de UF_CD (transitivo)
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CLIENTE_ID)
);
```

**Solução 3NF - Normalizar UF em tabela separada:**
```sql
-- ✅ CORRETO: UF em tabela de domínio
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_UF FOREIGN KEY (UF_CD) REFERENCES DOM_UF(UF_CD)
);
```

### 3.2.5 Desnormalização Controlada

**Quando desnormalizar** (requer aprovação ADI):
1. **Performance crítica**: Queries muito frequentes com múltiplos JOINs
2. **Data Warehousing**: Tabelas fato/dimensão (modelagem dimensional)
3. **Colunas calculadas**: Agregações complexas
4. **Caching de dados**: Reduzir latência

**Técnicas de Desnormalização:**

**1. Colunas Calculadas (Computed Columns):**
```sql
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_PRODUTOS_VL DECIMAL(15,2) NOT NULL,
    VALOR_FRETE_VL DECIMAL(15,2) NOT NULL,
    VALOR_DESCONTO_VL DECIMAL(15,2) NOT NULL,
    
    -- Computed column (não armazenada)
    VALOR_TOTAL_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL),
    
    -- Computed column PERSISTIDA (armazenada fisicamente)
    VALOR_TOTAL_PERSISTIDO_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL) PERSISTED,
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

-- Índice em coluna calculada (requer PERSISTED)
CREATE NONCLUSTERED INDEX IDX_PED_PEDIDO_VALOR_TOTAL
    ON PED_PEDIDO(VALOR_TOTAL_PERSISTIDO_VL);
```

**2. Agregações Pré-Calculadas:**
```sql
-- Tabela normalizada (origem)
CREATE TABLE PED_PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (PEDIDO_ID, PRODUTO_ID)
);

-- Tabela desnormalizada (agregação pré-calculada)
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DATA_PEDIDO_DT DATE NOT NULL,
    
    -- ❌ Desnormalização: Agregação armazenada (atualizada via trigger)
    QUANTIDADE_TOTAL_ITENS_QT INT NOT NULL DEFAULT 0,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL DEFAULT 0,
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

-- Trigger para atualizar agregações
CREATE TRIGGER TRG_PED_PEDIDO_ITEM_AGREGACAO
ON PED_PEDIDO_ITEM
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Recalcular totais para pedidos afetados
    UPDATE ped
    SET ped.QUANTIDADE_TOTAL_ITENS_QT = (
            SELECT SUM(i.QUANTIDADE_QT)
            FROM PED_PEDIDO_ITEM i
            WHERE i.PEDIDO_ID = ped.PEDIDO_ID
        ),
        ped.VALOR_TOTAL_VL = (
            SELECT SUM(i.QUANTIDADE_QT * i.PRECO_UNITARIO_VL)
            FROM PED_PEDIDO_ITEM i
            WHERE i.PEDIDO_ID = ped.PEDIDO_ID
        )
    FROM PED_PEDIDO ped
    WHERE ped.PEDIDO_ID IN (
        SELECT PEDIDO_ID FROM INSERTED
        UNION
        SELECT PEDIDO_ID FROM DELETED
    );
END;
```

**3. Replicação de Dados (Tabelas de Leitura):**
```sql
-- Tabela normalizada (escrita)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    -- ... demais colunas
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_ID) REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

-- Tabela desnormalizada (leitura - materialized view)
CREATE TABLE CON_CONTRATO_DENORMALIZADO (
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    -- Dados denormalizados do tipo de contrato
    TIPO_CONTRATO_CD VARCHAR(10) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    
    -- Dados denormalizados do cliente
    CLIENTE_CPF_NR VARCHAR(11) NOT NULL,
    CLIENTE_NM VARCHAR(200) NOT NULL,
    
    -- Metadados
    DATA_ATUALIZACAO_DT DATETIME2(3) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO_DENORMALIZADO PRIMARY KEY (CONTRATO_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Atualização via job agendado (a cada 5 minutos)
CREATE PROCEDURE SP_ATUALIZAR_CON_CONTRATO_DENORMALIZADO
AS
BEGIN
    MERGE INTO CON_CONTRATO_DENORMALIZADO AS target
    USING (
        SELECT 
            con.CONTRATO_ID,
            con.NUMERO_CONTRATO_NR,
            tc.TIPO_CONTRATO_CD,
            tc.TIPO_CONTRATO_NM,
            cli.CPF_NR,
            cli.NOME_CLIENTE_NM
        FROM CON_CONTRATO con
        INNER JOIN TAB_TIPO_CONTRATO tc ON tc.TIPO_CONTRATO_ID = con.TIPO_CONTRATO_ID
        INNER JOIN CLI_CLIENTE cli ON cli.CLIENTE_ID = con.CLIENTE_ID
        WHERE con.DT_ATUALIZACAO >= DATEADD(MINUTE, -10, GETDATE())
    ) AS source
    ON target.CONTRATO_ID = source.CONTRATO_ID
    WHEN MATCHED THEN
        UPDATE SET
            target.NUMERO_CONTRATO_NR = source.NUMERO_CONTRATO_NR,
            target.TIPO_CONTRATO_CD = source.TIPO_CONTRATO_CD,
            target.TIPO_CONTRATO_NM = source.TIPO_CONTRATO_NM,
            target.CLIENTE_CPF_NR = source.CPF_NR,
            target.CLIENTE_NM = source.NOME_CLIENTE_NM,
            target.DATA_ATUALIZACAO_DT = SYSDATETIME()
    WHEN NOT MATCHED THEN
        INSERT (CONTRATO_ID, NUMERO_CONTRATO_NR, TIPO_CONTRATO_CD, TIPO_CONTRATO_NM, 
                CLIENTE_CPF_NR, CLIENTE_NM, DATA_ATUALIZACAO_DT)
        VALUES (source.CONTRATO_ID, source.NUMERO_CONTRATO_NR, source.TIPO_CONTRATO_CD, 
                source.TIPO_CONTRATO_NM, source.CPF_NR, source.NOME_CLIENTE_NM, SYSDATETIME());
END;
```

### 3.2.6 Checklist de Normalização

**Verificação 1NF:**
- [ ] Todos os atributos contêm valores atômicos (sem listas/arrays)
- [ ] Não há grupos repetitivos (telefone1, telefone2, ...)
- [ ] Cada coluna possui tipo de dado único e bem definido

**Verificação 2NF:**
- [ ] Tabela está em 1NF
- [ ] Todos os atributos não-chave dependem da chave primária completa
- [ ] Sem dependências parciais (em PKs compostas)

**Verificação 3NF:**
- [ ] Tabela está em 2NF
- [ ] Nenhum atributo não-chave depende de outro atributo não-chave
- [ ] Sem dependências transitivas

**Desnormalização Aprovada:**
- [ ] Justificativa técnica documentada (performance crítica)
- [ ] Aprovação formal do ADI
- [ ] Mecanismo de sincronização implementado (trigger, job, CDC)
- [ ] Testes de consistência de dados

---

**📊 Status da SUB-PARTE 3.1**: ✅ **COMPLETA (1 de 3)**

**Resumo SUB-PARTE 3.1**:
- ✅ 3.1: Tipos de Tabelas (6 tipos: transacional, apoio, histórico, auxiliar, log, stage)
- ✅ 3.2: Normalização (1NF, 2NF, 3NF + desnormalização controlada)

**Próxima**: SUB-PARTE 3.2 - Chaves e Identificadores

---

## SUB-PARTE 3.2: Chaves Primárias e Estrangeiras (2 de 3)

---

## 3.3 Chaves Primárias

### 3.3.1 Tipos de Chaves Primárias

A escolha do tipo de chave primária impacta **performance**, **manutenibilidade** e **integridade referencial**.

**Padrão CAIXA**: Surrogate keys (BIGINT IDENTITY) para tabelas transacionais.

| Tipo | Descrição | Quando Usar | Vantagens | Desvantagens |
|------|-----------|-------------|-----------|--------------|
| **Surrogate** | Valor artificial gerado automaticamente | **Padrão** para tabelas transacionais | Imutável, performance, simplicidade | Não tem significado de negócio |
| **Natural** | Atributo com significado de negócio | Tabelas de domínio estável (UF, país) | Significado claro, sem necessidade de JOIN para exibir | Risco de mudança, tamanho variável |
| **Composta** | Múltiplas colunas formam a PK | Tabelas associativas (N:M) | Garante unicidade de combinação | Complexidade em FKs, índices maiores |

### 3.3.2 Surrogate Keys (Chaves Substitutas)

**Definição**: Valor numérico sequencial sem significado de negócio, gerado automaticamente pelo SGBD.

**Recomendação CAIXA**: BIGINT IDENTITY(1,1)

**Vantagens:**
1. **Imutabilidade**: Nunca muda (CPF pode ser corrigido, ID não)
2. **Performance**: Números pequenos, índices eficientes
3. **Simplicidade**: Uma única coluna na PK
4. **Distribuição**: Sequencial = ótimo para clustered index
5. **Independência**: Alterações em atributos de negócio não afetam FKs

**Sintaxe SQL Server:**
```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,     -- Natural business identifier
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY CLUSTERED (CONTRATO_ID),
    
    -- Natural key como UNIQUE (negócio exige unicidade)
    CONSTRAINT UK_CON_CONTRATO_NUMERO UNIQUE NONCLUSTERED (NUMERO_CONTRATO_NR)
);
```

**IDENTITY vs SEQUENCE:**

**IDENTITY (preferencial para surrogate keys):**
```sql
-- IDENTITY: Geração automática vinculada à tabela
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Inserção (ID gerado automaticamente)
INSERT INTO CLI_CLIENTE (NOME_CLIENTE_NM) VALUES ('João Silva');
SELECT SCOPE_IDENTITY() AS NovoID;  -- Retorna 1

-- Gerenciar IDENTITY
DBCC CHECKIDENT ('CLI_CLIENTE', RESEED, 1000);  -- Reiniciar de 1000
```

**SEQUENCE (preferencial quando múltiplas tabelas compartilham sequência):**
```sql
-- SEQUENCE: Objeto independente de tabela
CREATE SEQUENCE SEQ_DOCUMENTO_GLOBAL
    AS BIGINT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    NO CYCLE
    CACHE 50;

-- Uso em múltiplas tabelas
CREATE TABLE DOC_CONTRATO (
    DOCUMENTO_ID BIGINT NOT NULL DEFAULT NEXT VALUE FOR SEQ_DOCUMENTO_GLOBAL,
    CONTRATO_ID BIGINT NOT NULL,
    TIPO_DOCUMENTO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOC_CONTRATO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_GARANTIA (
    DOCUMENTO_ID BIGINT NOT NULL DEFAULT NEXT VALUE FOR SEQ_DOCUMENTO_GLOBAL,
    GARANTIA_ID BIGINT NOT NULL,
    TIPO_DOCUMENTO_TP VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_DOC_GARANTIA PRIMARY KEY (DOCUMENTO_ID)
);

-- Inserção (compartilha sequência global)
INSERT INTO DOC_CONTRATO (CONTRATO_ID, TIPO_DOCUMENTO_TP) VALUES (1, 'RG');  -- ID = 1
INSERT INTO DOC_GARANTIA (GARANTIA_ID, TIPO_DOCUMENTO_TP) VALUES (1, 'ESCRITURA');  -- ID = 2
```

**Quando usar SEQUENCE:**
1. **Documentação unificada**: Todos os tipos de documentos com numeração única
2. **Auditoria**: Sequência global para múltiplas tabelas de log
3. **Migração de Oracle**: SEQUENCE é padrão em Oracle
4. **Pré-alocação**: Aplicação precisa obter múltiplos IDs antes de INSERT

**TE074 3.2.12.2**: Quando coluna é vinculada a SEQUENCE, representar no modelo (propriedade Identity).

### 3.3.3 Natural Keys (Chaves Naturais)

**Definição**: Atributo ou conjunto de atributos com significado de negócio que identifica unicamente um registro.

**Quando usar:**
1. **Domínios estáveis**: Valores raramente mudam (UF_CD, PAIS_CD, MOEDA_CD)
2. **Padrões nacionais/internacionais**: CPF, CNPJ, ISBN, IATA (com cuidado)
3. **Códigos curtos**: CHAR(2), CHAR(3) (melhor que BIGINT)

**Exemplos válidos:**
```sql
-- UF: Natural key estável (26 UFs + DF, raramente muda)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,             -- Natural key: SP, RJ, MG
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_TP VARCHAR(20) NOT NULL,
    CODIGO_IBGE_NR CHAR(2) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY CLUSTERED (UF_CD)
);

-- País: Natural key internacional (ISO 3166-1 alpha-2)
CREATE TABLE DOM_PAIS (
    PAIS_CD CHAR(2) NOT NULL,           -- BR, US, AR
    PAIS_NM VARCHAR(100) NOT NULL,
    CODIGO_ISO3_CD CHAR(3) NOT NULL,    -- BRA, USA, ARG
    CODIGO_NUMERICO_NR CHAR(3) NOT NULL,
    
    CONSTRAINT PK_DOM_PAIS PRIMARY KEY CLUSTERED (PAIS_CD),
    CONSTRAINT UK_DOM_PAIS_ISO3 UNIQUE (CODIGO_ISO3_CD)
);

-- Moeda: Natural key internacional (ISO 4217)
CREATE TABLE DOM_MOEDA (
    MOEDA_CD CHAR(3) NOT NULL,          -- BRL, USD, EUR
    MOEDA_NM VARCHAR(50) NOT NULL,
    SIMBOLO_TX VARCHAR(5) NOT NULL,
    CODIGO_NUMERICO_NR CHAR(3) NOT NULL,
    
    CONSTRAINT PK_DOM_MOEDA PRIMARY KEY CLUSTERED (MOEDA_CD)
);
```

**Cuidado com CPF/CNPJ como PK:**
```sql
-- ❌ EVITAR: CPF/CNPJ como PK (pode ser corrigido, formatação varia)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CPF_NR VARCHAR(11) NOT NULL,  -- ❌ Natural key instável
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CPF_NR)
);

-- ✅ CORRETO: Surrogate key + UNIQUE em CPF
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,  -- ✅ Surrogate key
    CPF_NR VARCHAR(11) NOT NULL,                -- Business identifier
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY CLUSTERED (CLIENTE_ID),
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE NONCLUSTERED (CPF_NR)
);
```

**Razões para evitar CPF/CNPJ como PK:**
1. **Correções**: CPF digitado errado pode precisar ser corrigido
2. **Formatação**: "12345678901" vs "123.456.789-01" (inconsistência)
3. **Tamanho**: VARCHAR(11) vs BIGINT (8 bytes)
4. **Performance**: Strings em FKs = índices maiores
5. **Internacionalização**: Estrangeiros podem não ter CPF

### 3.3.4 Composite Keys (Chaves Compostas)

**Definição**: Chave primária formada por múltiplas colunas.

**Quando usar:**
1. **Tabelas associativas** (N:M): PK = (ENTIDADE1_ID, ENTIDADE2_ID)
2. **Relacionamentos temporais**: PK = (ENTIDADE_ID, DATA_VIGENCIA_DT)
3. **Particionamento**: Coluna de particionamento deve estar na PK

**Exemplos:**

**1. Tabela Associativa N:M (mais comum):**
```sql
-- Produtos podem ter múltiplas categorias, categorias têm múltiplos produtos
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    
    -- Atributos adicionais da associação
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    ORDEM_EXIBICAO_SEQ INT NOT NULL DEFAULT 1,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- PK composta garante (produto, categoria) único
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY CLUSTERED (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs para entidades participantes
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) REFERENCES PRO_CATEGORIA(CATEGORIA_ID),
    
    CONSTRAINT CK_PRO_PRODUTO_CATEGORIA_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Índice invertido (consultas por categoria)
CREATE NONCLUSTERED INDEX IDX_PRO_PRODUTO_CATEGORIA_CATEGORIA_PRODUTO
    ON PRO_PRODUTO_CATEGORIA(CATEGORIA_ID, PRODUTO_ID);
```

**2. Relacionamentos Temporais (vigências):**
```sql
-- Histórico de preços de produtos
CREATE TABLE PRO_PRODUTO_PRECO_HIST (
    PRODUTO_ID INT NOT NULL,
    DATA_VIGENCIA_DT DATE NOT NULL,         -- Início da vigência
    PRECO_VL DECIMAL(15,2) NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) NOT NULL,
    
    -- PK composta: (produto, data) garante um preço por vigência
    CONSTRAINT PK_PRO_PRODUTO_PRECO_HIST PRIMARY KEY CLUSTERED (PRODUTO_ID, DATA_VIGENCIA_DT),
    
    CONSTRAINT FK_PRO_PRODUTO_PRECO_HIST_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT CK_PRO_PRODUTO_PRECO_HIST_PRECO_POSITIVO CHECK (PRECO_VL > 0)
);

-- Consultar preço em data específica
SELECT TOP 1 PRECO_VL
FROM PRO_PRODUTO_PRECO_HIST
WHERE PRODUTO_ID = 123
  AND DATA_VIGENCIA_DT <= '2025-06-15'
ORDER BY DATA_VIGENCIA_DT DESC;
```

**3. Tabelas Particionadas (coluna de particionamento na PK):**
```sql
-- Tabela particionada por mês (DATA_CADASTRO_DT)
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    DATA_CADASTRO_DT DATE NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY NONCLUSTERED (TRANSACAO_ID, DATA_CADASTRO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_CADASTRO_DT);

-- Clustered index apenas em DATA_CADASTRO_DT (alinhado com particionamento)
CREATE CLUSTERED INDEX CIX_TRA_TRANSACAO_DATA
    ON TRA_TRANSACAO(DATA_CADASTRO_DT);
```

**Desvantagens de PKs Compostas:**
1. **FKs complexas**: Referências precisam repetir múltiplas colunas
2. **Índices maiores**: Mais colunas = mais espaço
3. **Performance**: JOINs mais lentos (múltiplas comparações)
4. **Manutenibilidade**: Alterações de estrutura mais complexas

**Alternativa com Surrogate Key:**
```sql
-- Tabela associativa com surrogate key adicional
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_CATEGORIA_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    
    -- Surrogate key como PK
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY CLUSTERED (PRODUTO_CATEGORIA_ID),
    
    -- Unicidade de negócio (produto, categoria)
    CONSTRAINT UK_PRO_PRODUTO_CATEGORIA_PRODUTO_CATEGORIA UNIQUE NONCLUSTERED (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) REFERENCES PRO_PRODUTO(PRODUTO_ID),
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
);
```

**Quando adicionar surrogate key em tabela associativa:**
- Tabela tem **muitos atributos adicionais** (não é só relacionamento)
- **Outras tabelas referenciam a associação** (evita FKs compostas)
- **Facilita auditoria** (ID único para rastreamento)

### 3.3.5 Clustered vs Nonclustered Primary Keys

**Clustered Index (padrão):**
- **Dados fisicamente ordenados** pela PK
- **Apenas 1 clustered index por tabela**
- **Recomendado**: Surrogate keys sequenciais (IDENTITY)

**Nonclustered Primary Key (exceções):**
- **Particionamento**: Clustered index na coluna de particionamento
- **GUID como PK**: Clustered em coluna sequencial, PK nonclustered no GUID
- **Performance de escrita**: Evitar fragmentação em chaves não sequenciais

**Exemplo - GUID (não recomendado para PKs):**
```sql
-- ❌ EVITAR: GUID como clustered PK (fragmentação)
CREATE TABLE LOG_EVENTO_ERRADO (
    EVENTO_ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),  -- Random GUID
    DATA_EVENTO_DT DATETIME2(3) NOT NULL,
    MENSAGEM_DS VARCHAR(MAX) NOT NULL,
    
    CONSTRAINT PK_LOG_EVENTO_ERRADO PRIMARY KEY CLUSTERED (EVENTO_ID)  -- ❌ Fragmentação
);

-- ✅ CORRETO: Surrogate key sequencial como clustered, GUID como nonclustered
CREATE TABLE LOG_EVENTO (
    EVENTO_ID BIGINT IDENTITY(1,1) NOT NULL,              -- Sequencial
    EVENTO_GUID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(), -- GUID para APIs
    DATA_EVENTO_DT DATETIME2(3) NOT NULL,
    MENSAGEM_DS VARCHAR(MAX) NOT NULL,
    
    CONSTRAINT PK_LOG_EVENTO PRIMARY KEY CLUSTERED (EVENTO_ID),  -- ✅ Sequencial
    CONSTRAINT UK_LOG_EVENTO_GUID UNIQUE NONCLUSTERED (EVENTO_GUID)
);
```

---

## 3.4 Chaves Estrangeiras (Foreign Keys)

### 3.4.1 Fundamentos de Integridade Referencial

**Chave Estrangeira (FK)**: Coluna ou conjunto de colunas que referencia a chave primária de outra tabela (ou da mesma tabela).

**Objetivos:**
1. **Integridade referencial**: Garantir que relacionamentos sejam válidos
2. **Consistência**: Evitar registros "órfãos"
3. **Documentação**: Explicitar relacionamentos no modelo
4. **Performance**: Facilitar otimizador de queries

**Nomenclatura (TE074 3.2.11.8 + PARTE 2 seção 2.4):**
- **Padrão**: `FK_[TABELA_ORIGEM]_[TABELA_DESTINO]`
- **Múltiplas FKs**: `FK_[TABELA_ORIGEM]_[TABELA_DESTINO]_[COLUNA]`

### 3.4.2 As 16 Regras de Relacionamento do TE074 3.2.11

**Regra 3.2.11.1 - Propriedades de Relacionamento**

Todo relacionamento possui:
- **Associação**: Ligação entre entidades (via FK)
- **Cardinalidade**: Quantos registros relacionados (1:1, 1:N, N:M)
- **Opcionalidade**: Obrigatório (1) ou Opcional (0..1)
- **CONSTRAINT**: FK declarada no DDL

```sql
-- Exemplo: CONTRATO (child) → TIPO_CONTRATO (parent)
-- Cardinalidade: N:1 (muitos contratos, um tipo)
-- Opcionalidade: Obrigatória (todo contrato TEM tipo)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,  -- Obrigatória (NOT NULL)
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)
);
```

---

**Regra 3.2.11.2 - Relacionamento Opcional Não Participa da PK**

Se o relacionamento é **opcional**, a FK **NÃO pode fazer parte da chave primária**.

```sql
-- ❌ INCORRETO: FK opcional (NULL) na PK
CREATE TABLE PED_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    VENDEDOR_ID BIGINT NULL,  -- ❌ Opcional, mas está na PK
    
    CONSTRAINT PK_PED_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID, VENDEDOR_ID)  -- ❌ ERRO
);

-- ✅ CORRETO: FK opcional fora da PK
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VENDEDOR_ID BIGINT NULL,  -- Opcional (pedidos web podem não ter vendedor)
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID),
    CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
        REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
);
```

---

**Regra 3.2.11.3 - Associações Exclusivamente via Relacionamentos**

Associações entre entidades **DEVEM ser feitas exclusivamente via relacionamentos** ou tabelas associativas.

```sql
-- ✅ CORRETO: Relacionamento direto via FK
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- FK para CON_CONTRATO
    NUMERO_PARCELA_NR INT NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);
```

---

**Regra 3.2.11.4 - VEDADO Definir Identificador de Outra Tabela como Coluna**

É **VEDADO** (proibido) criar coluna que armazena identificador de outra tabela **sem declarar FK**.

```sql
-- ❌ VEDADO: Coluna armazena CLIENTE_ID sem FK
CREATE TABLE CON_CONTRATO_ERRADO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_CODIGO BIGINT NOT NULL,  -- ❌ É CLIENTE_ID, mas sem FK
    
    CONSTRAINT PK_CON_CONTRATO_ERRADO PRIMARY KEY (CONTRATO_ID)
    -- ❌ FALTA FK para CLI_CLIENTE
);

-- ✅ CORRETO: Coluna com FK declarada
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- ✅ Nome claro + FK
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);
```

---

**Regra 3.2.11.5 - Referência ao Identificador Via Relacionamento**

A referência ao identificador de outra tabela **DEVE ser feita via relacionamento** (FK).

*Complementa regra 3.2.11.4 - mesma intenção.*

---

**Regra 3.2.11.6 - Auto-Relacionamento com Associações Opcionais**

Em **auto-relacionamentos** (tabela referencia a si mesma), **ambas as associações devem ser opcionais**.

**Razão**: Primeiro e último elemento da hierarquia não têm pai/filho.

```sql
-- Auto-relacionamento: Categoria hierárquica (pai/filho)
CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_PAI_ID INT NULL,  -- ✅ Opcional (raiz não tem pai)
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    NIVEL_HIERARQUIA_NR INT NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID),
    
    -- Auto-relacionamento (self-referencing FK)
    CONSTRAINT FK_PRO_CATEGORIA_PAI FOREIGN KEY (CATEGORIA_PAI_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
);

-- Exemplo de dados:
-- CATEGORIA_ID | CATEGORIA_PAI_ID | CATEGORIA_NM       | NIVEL
-- 1            | NULL             | Eletrônicos        | 1  (raiz, sem pai)
-- 2            | 1                | Computadores       | 2
-- 3            | 1                | Smartphones        | 2
-- 4            | 2                | Notebooks          | 3
-- 5            | 2                | Desktops           | 3
```

---

**Regra 3.2.11.7 - Relacionamento Sem Informação de Outros Relacionamentos**

Um relacionamento **NÃO deve conter informações** de outros relacionamentos.

```sql
-- ❌ INCORRETO: FK mistura relacionamentos (contrato + cliente duplicado)
CREATE TABLE CON_PARCELA_ERRADO (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- ❌ Redundante (já está em CONTRATO)
    
    CONSTRAINT PK_CON_PARCELA_ERRADO PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_ERRADO_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID),
    CONSTRAINT FK_CON_PARCELA_ERRADO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)  -- ❌ Redundante
);

-- ✅ CORRETO: Apenas FK para CONTRATO (cliente vem via JOIN)
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- ✅ Único relacionamento necessário
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- Obter cliente da parcela via JOIN
SELECT p.*, con.CLIENTE_ID, cli.NOME_CLIENTE_NM
FROM CON_PARCELA p
INNER JOIN CON_CONTRATO con ON con.CONTRATO_ID = p.CONTRATO_ID
INNER JOIN CLI_CLIENTE cli ON cli.CLIENTE_ID = con.CLIENTE_ID;
```

---

**Regra 3.2.11.8 - Nome = Código = Nome CONSTRAINT**

Nome do relacionamento = Código do relacionamento = Nome da CONSTRAINT.

```sql
-- ✅ Nome da FK deve refletir relacionamento
CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
    REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)
```

*Nomenclatura já coberta em PARTE 2, seção 2.4.*

---

**Regra 3.2.11.9 - Verbos de Ligação (PARENT/CHILD ROLE)**

No modelo conceitual/lógico (PowerDesigner), os **verbos de ligação** (PARENT ROLE e CHILD ROLE) devem ser **obrigatórios e diferentes**.

**Exemplo:**
- **PARENT ROLE**: "possui" (CONTRATO possui PARCELAS)
- **CHILD ROLE**: "pertence a" (PARCELA pertence a CONTRATO)

*Regra aplicável à documentação no PowerDesigner, não ao DDL SQL.*

---

**Regra 3.2.11.10 - CHANGE PARENT ALLOWED (Cuidado)**

Opção **CHANGE PARENT ALLOWED** permite alterar FK após inserção. Usar com **cuidado** (certeza de que alteração é permitida pelo negócio).

**Exemplo onde NÃO permitir:**
```sql
-- Histórico de transações: não pode mudar CONTA_ID após criação
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTA_ID BIGINT NOT NULL,  -- ❌ Não deve permitir UPDATE (auditoria)
    
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY (TRANSACAO_ID),
    CONSTRAINT FK_TRA_TRANSACAO_CONTA FOREIGN KEY (CONTA_ID) 
        REFERENCES CON_CONTA(CONTA_ID)
);

-- Proteger contra UPDATE de CONTA_ID (trigger)
CREATE TRIGGER TRG_TRA_TRANSACAO_IMPEDIR_UPDATE_CONTA
ON TRA_TRANSACAO
FOR UPDATE
AS
BEGIN
    IF UPDATE(CONTA_ID)
    BEGIN
        RAISERROR('Não é permitido alterar CONTA_ID de transação existente.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
```

---

**Regra 3.2.11.11 - Todo Relacionamento Possui PARENT KEY Vinculada**

Todo relacionamento (FK) **DEVE ter uma PARENT KEY** (PK ou UK da tabela referenciada).

```sql
-- ✅ FK referencia PK da tabela pai
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID)  -- Referencia PK
);

-- ✅ FK pode referenciar UNIQUE (não só PK)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE (CPF_NR)
);

CREATE TABLE CLI_CONTATO (
    CONTATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_CPF_NR VARCHAR(11) NOT NULL,  -- FK para UK (não PK)
    
    CONSTRAINT PK_CLI_CONTATO PRIMARY KEY (CONTATO_ID),
    CONSTRAINT FK_CLI_CONTATO_CLIENTE_CPF FOREIGN KEY (CLIENTE_CPF_NR) 
        REFERENCES CLI_CLIENTE(CPF_NR)  -- ✅ Referencia UK
);
```

---

**Regra 3.2.11.12 - Tipos de Deleção por SGBD**

Opções de **ON DELETE** variam por SGBD:
- **SQL Server**: NO ACTION, CASCADE, SET NULL, SET DEFAULT
- **Oracle**: CASCADE, SET NULL (RESTRICT não existe)
- **DB2**: CASCADE, RESTRICT, SET NULL

**SQL Server - Opções ON DELETE:**
```sql
-- ON DELETE NO ACTION (padrão): Impede deleção se houver filhos
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION;  -- ❌ Erro se tentar deletar contrato com parcelas

-- ON DELETE CASCADE: Deleta filhos automaticamente
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE CASCADE;  -- ⚠️ CUIDADO: Deleta parcelas ao deletar contrato

-- ON DELETE SET NULL: Define FK como NULL
CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
    REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
    ON DELETE SET NULL;  -- Vendedor deletado → VENDEDOR_ID = NULL

-- ON DELETE SET DEFAULT: Define FK como valor padrão
CONSTRAINT FK_PED_PEDIDO_STATUS FOREIGN KEY (STATUS_ID) 
    REFERENCES DOM_STATUS(STATUS_ID)
    ON DELETE SET DEFAULT;  -- Status deletado → STATUS_ID = valor padrão
```

**Recomendações CAIXA:**
1. **Padrão**: NO ACTION (segurança)
2. **CASCADE**: Apenas quando deleção em cascata é regra de negócio clara
3. **SET NULL**: Relacionamentos opcionais onde pai pode ser removido
4. **Soft Delete**: Preferir `DELETADO_IN = 'S'` ao invés de DELETE físico

---

**Regra 3.2.11.13 - Opções NÃO Usar**

**NÃO usar** as seguintes opções de FK:
- **DISABLE**: FK desabilitada (não valida integridade)
- **Exceções**: Permitir inserções que violam FK
- **RELY**: Confiar que dados já estão consistentes (perigoso)
- **VALIDATE desabilitada**: Não validar dados existentes
- **DEFERRED OPTION alterada**: Validação adiada (Oracle)
- **DB2 ENFORCED desabilitado**: Não impor FK (DB2)

```sql
-- ❌ EVITAR: FK desabilitada
ALTER TABLE CON_CONTRATO NOCHECK CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO;  -- ❌

-- ✅ SEMPRE: FK habilitada
ALTER TABLE CON_CONTRATO CHECK CONSTRAINT FK_CON_CONTRATO_TIPO_CONTRATO;  -- ✅
```

---

**Regra 3.2.11.14 - Relacionamentos Inversos NÃO Permitidos**

**Relacionamentos inversos** (sentidos opostos entre mesmas tabelas) **NÃO são permitidos**.

```sql
-- ❌ VEDADO: Relacionamentos inversos (A→B e B→A)
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,  -- ❌ A → B
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,  -- ❌ B → A (inverso)
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- ❌ Relacionamentos circulares
ALTER TABLE TAB_A ADD CONSTRAINT FK_A_B FOREIGN KEY (B_ID) REFERENCES TAB_B(B_ID);
ALTER TABLE TAB_B ADD CONSTRAINT FK_B_A FOREIGN KEY (A_ID) REFERENCES TAB_A(A_ID);
```

**Solução**: Definir qual é a **entidade dominante** (pai) e qual é a **entidade dependente** (filho).

---

**Regra 3.2.11.15 - Relacionamentos Paralelos (Max 2)**

**Máximo 2 relacionamentos paralelos** entre mesmas tabelas. Acima disso, usar **tabela associativa qualificada**.

```sql
-- ✅ PERMITIDO: 2 relacionamentos paralelos (origem/destino)
CREATE TABLE FIN_TRANSFERENCIA (
    TRANSFERENCIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTA_ORIGEM_ID BIGINT NOT NULL,   -- ✅ Relacionamento 1
    CONTA_DESTINO_ID BIGINT NOT NULL,  -- ✅ Relacionamento 2
    VALOR_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_FIN_TRANSFERENCIA PRIMARY KEY (TRANSFERENCIA_ID),
    CONSTRAINT FK_FIN_TRANSFERENCIA_CONTA_ORIGEM FOREIGN KEY (CONTA_ORIGEM_ID) 
        REFERENCES FIN_CONTA(CONTA_ID),
    CONSTRAINT FK_FIN_TRANSFERENCIA_CONTA_DESTINO FOREIGN KEY (CONTA_DESTINO_ID) 
        REFERENCES FIN_CONTA(CONTA_ID)
);

-- ❌ NÃO PERMITIDO: 3+ relacionamentos paralelos
CREATE TABLE DOC_DOCUMENTO_ERRADO (
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_TITULAR_ID BIGINT NULL,     -- ❌ Relacionamento 1
    PESSOA_CORRESPONSAVEL_ID BIGINT NULL,  -- ❌ Relacionamento 2
    PESSOA_FIADOR_ID BIGINT NULL,      -- ❌ Relacionamento 3 (VEDADO)
    
    CONSTRAINT PK_DOC_DOCUMENTO_ERRADO PRIMARY KEY (DOCUMENTO_ID)
);

-- ✅ CORRETO: Tabela associativa qualificada
CREATE TABLE DOC_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONSTRAINT PK_DOC_DOCUMENTO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_DOCUMENTO_PESSOA (
    DOCUMENTO_PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_ID BIGINT NOT NULL,
    TIPO_PARTICIPACAO_TP VARCHAR(20) NOT NULL,  -- TITULAR, CORRESPONSAVEL, FIADOR
    
    CONSTRAINT PK_DOC_DOCUMENTO_PESSOA PRIMARY KEY (DOCUMENTO_PESSOA_ID),
    CONSTRAINT UK_DOC_DOCUMENTO_PESSOA UNIQUE (DOCUMENTO_ID, PESSOA_ID, TIPO_PARTICIPACAO_TP),
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_DOCUMENTO FOREIGN KEY (DOCUMENTO_ID) 
        REFERENCES DOC_DOCUMENTO(DOCUMENTO_ID),
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
);
```

---

**Regra 3.2.11.16 - Opcionalidade em Pelo Menos Um Sentido**

**Apenas relacionamentos com opcionalidade em pelo menos um sentido** são permitidos.

**Razão**: Evitar dependências circulares obrigatórias (impossível inserir registros).

```sql
-- ❌ VEDADO: Ambos os lados obrigatórios (deadlock de inserção)
CREATE TABLE TAB_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    ITEM_PRINCIPAL_ID BIGINT NOT NULL,  -- ❌ Obrigatório
    
    CONSTRAINT PK_TAB_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID),
    CONSTRAINT FK_PEDIDO_ITEM FOREIGN KEY (ITEM_PRINCIPAL_ID) 
        REFERENCES TAB_ITEM(ITEM_ID)  -- ❌ Obrigatório
);

CREATE TABLE TAB_ITEM_ERRADO (
    ITEM_ID BIGINT NOT NULL,
    PEDIDO_ID BIGINT NOT NULL,  -- ❌ Obrigatório (deadlock!)
    
    CONSTRAINT PK_TAB_ITEM_ERRADO PRIMARY KEY (ITEM_ID),
    CONSTRAINT FK_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) 
        REFERENCES TAB_PEDIDO_ERRADO(PEDIDO_ID)  -- ❌ Circular
);

-- ❌ Impossível inserir: precisa de PEDIDO para criar ITEM, mas precisa de ITEM para criar PEDIDO!

-- ✅ CORRETO: Pelo menos um lado opcional
CREATE TABLE PED_PEDIDO (
    PEDIDO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ITEM_PRINCIPAL_ID BIGINT NULL,  -- ✅ Opcional (pode ser definido depois)
    
    CONSTRAINT PK_PED_PEDIDO PRIMARY KEY (PEDIDO_ID)
);

CREATE TABLE PED_ITEM (
    ITEM_ID BIGINT IDENTITY(1,1) NOT NULL,
    PEDIDO_ID BIGINT NOT NULL,  -- ✅ Obrigatório (item pertence a pedido)
    
    CONSTRAINT PK_PED_ITEM PRIMARY KEY (ITEM_ID),
    CONSTRAINT FK_PED_ITEM_PEDIDO FOREIGN KEY (PEDIDO_ID) 
        REFERENCES PED_PEDIDO(PEDIDO_ID)
);

-- ✅ Agora possível:
-- 1. INSERT INTO PED_PEDIDO (ITEM_PRINCIPAL_ID) VALUES (NULL);  -- Pedido sem item principal
-- 2. INSERT INTO PED_ITEM (PEDIDO_ID, ...) VALUES (1, ...);      -- Item do pedido
-- 3. UPDATE PED_PEDIDO SET ITEM_PRINCIPAL_ID = 1 WHERE PEDIDO_ID = 1;  -- Define item principal
```

---

### 3.4.3 Ações Referenciais (ON DELETE / ON UPDATE)

**Opções SQL Server:**

| Ação | ON DELETE | ON UPDATE | Comportamento |
|------|-----------|-----------|---------------|
| **NO ACTION** | Padrão | Padrão | Erro se houver filhos/referências |
| **CASCADE** | Sim | Sim | Propaga operação para filhos |
| **SET NULL** | Sim | Sim | Define FK como NULL |
| **SET DEFAULT** | Sim | Sim | Define FK como valor DEFAULT |

**Recomendações:**

```sql
-- 1. NO ACTION (padrão): Proteção máxima
CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
    REFERENCES CON_CONTRATO(CONTRATO_ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- 2. CASCADE: Deleção/atualização em cascata (cuidado!)
CONSTRAINT FK_CLI_CLIENTE_TELEFONE_CLIENTE FOREIGN KEY (CLIENTE_ID) 
    REFERENCES CLI_CLIENTE(CLIENTE_ID)
    ON DELETE CASCADE;  -- ⚠️ Deletar cliente = deletar todos os telefones

-- 3. SET NULL: Relacionamentos opcionais
CONSTRAINT FK_PED_PEDIDO_VENDEDOR FOREIGN KEY (VENDEDOR_ID) 
    REFERENCES VEN_VENDEDOR(VENDEDOR_ID)
    ON DELETE SET NULL;  -- Vendedor deletado = VENDEDOR_ID vira NULL

-- 4. SET DEFAULT: Valor padrão quando pai é removido
ALTER TABLE PED_PEDIDO ADD CONSTRAINT DF_PED_PEDIDO_STATUS DEFAULT 1 FOR STATUS_ID;

CONSTRAINT FK_PED_PEDIDO_STATUS FOREIGN KEY (STATUS_ID) 
    REFERENCES DOM_STATUS(STATUS_ID)
    ON DELETE SET DEFAULT;  -- Status deletado = STATUS_ID = 1 (padrão)
```

### 3.4.4 Índices em Foreign Keys (OBRIGATÓRIO)

**TE074 3.2.11 + Validação Pré-Validador [V405]**: Toda FK **DEVE** ter índice.

**Razões:**
1. **Performance de JOINs**: Índice acelera buscas
2. **Validação de FK**: SQL Server precisa verificar se pai existe
3. **ON DELETE CASCADE**: Índice necessário para encontrar filhos
4. **Locks**: Índice reduz bloqueios

```sql
-- Criar tabela com FK
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR INT NOT NULL,
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
);

-- ✅ OBRIGATÓRIO: Índice na FK
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID
    ON CON_PARCELA(CONTRATO_ID);

-- ✅ Covering index (performance extra)
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID_COVERING
    ON CON_PARCELA(CONTRATO_ID)
    INCLUDE (NUMERO_PARCELA_NR, VALOR_PARCELA_VL, DATA_VENCIMENTO_DT);
```

**Validação Pré-Validador [V405] - FK sem índice:**
```
[V405] Foreign Key sem índice
Tabela: CON_PARCELA
FK: FK_CON_PARCELA_CONTRATO
Coluna: CONTRATO_ID
Ação: Criar índice IDX_CON_PARCELA_CONTRATO_ID
```

---

**📊 Status da SUB-PARTE 3.2**: ✅ **COMPLETA (2 de 3)**

**Resumo SUB-PARTE 3.2**:
- ✅ 3.3: Chaves Primárias (surrogate BIGINT IDENTITY, natural keys, compostas, clustered vs nonclustered)
- ✅ 3.4: Chaves Estrangeiras (16 regras TE074 3.2.11, ON DELETE/UPDATE, índices obrigatórios)

**Próxima**: SUB-PARTE 3.3 - Relacionamentos e Integridade de Dados

---

## SUB-PARTE 3.3: Relacionamentos e Integridade de Dados (3 de 3)

---

## 3.5 Tipos de Relacionamentos e Cardinalidade

### 3.5.1 Fundamentos de Cardinalidade

**Cardinalidade** define **quantos registros** de uma entidade podem se relacionar com **quantos registros** de outra entidade.

**Notação Crow's Foot (PowerDesigner):**
- **1** (um): Exatamente um
- **0..1** (zero ou um): Opcional (pode não existir)
- **1..*** (um ou muitos): Pelo menos um
- **0..*** (zero ou muitos): Opcional, pode ter vários

### 3.5.2 Relacionamento 1:1 (Um-para-Um)

**Definição**: Cada registro da entidade A relaciona-se com **no máximo um** registro da entidade B, e vice-versa.

**Quando usar:**
1. **Separação de dados sensíveis**: Dados LGPD em tabela separada
2. **Otimização de consultas**: Colunas raramente acessadas em tabela separada
3. **Especialização**: Herança de entidades (pessoa → pessoa_física, pessoa_jurídica)

**Implementação: FK única (UNIQUE) em uma das tabelas**

```sql
-- Exemplo 1: Separação de dados sensíveis (LGPD)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    TELEFONE_NR VARCHAR(15) NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Dados sensíveis em tabela separada (1:1)
CREATE TABLE CLI_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,  -- FK + PK (garante 1:1)
    CPF_NR VARCHAR(11) NOT NULL,
    RG_NR VARCHAR(20) NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,
    NOME_MAE_NM VARCHAR(200) NULL,
    RENDA_MENSAL_VL DECIMAL(15,2) NULL,
    
    -- Criptografia (TDE ou Always Encrypted)
    NUMERO_CONTA_BANCARIA_NR VARBINARY(256) NULL,
    
    CONSTRAINT PK_CLI_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_DADOS_SENSIVEIS_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
        ON DELETE CASCADE  -- Deletar cliente = deletar dados sensíveis
);

-- Consulta com LEFT JOIN (pode não ter dados sensíveis)
SELECT 
    cli.CLIENTE_ID,
    cli.NOME_CLIENTE_NM,
    sens.CPF_NR,
    sens.DATA_NASCIMENTO_DT
FROM CLI_CLIENTE cli
LEFT JOIN CLI_CLIENTE_DADOS_SENSIVEIS sens ON sens.CLIENTE_ID = cli.CLIENTE_ID;
```

**Exemplo 2: Especialização (Herança) - Pessoa Física/Jurídica**
```sql
-- Tabela base (generalização)
CREATE TABLE PES_PESSOA (
    PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_PESSOA_TP CHAR(1) NOT NULL,  -- F=Física, J=Jurídica
    NOME_RAZAO_SOCIAL_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_PES_PESSOA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT CK_PES_PESSOA_TIPO CHECK (TIPO_PESSOA_TP IN ('F', 'J'))
);

-- Especialização 1: Pessoa Física (1:1)
CREATE TABLE PES_PESSOA_FISICA (
    PESSOA_ID BIGINT NOT NULL,  -- FK + PK
    CPF_NR VARCHAR(11) NOT NULL,
    RG_NR VARCHAR(20) NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,
    SEXO_TP CHAR(1) NULL,
    
    CONSTRAINT PK_PES_PESSOA_FISICA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT FK_PES_PESSOA_FISICA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
        ON DELETE CASCADE,
    CONSTRAINT UK_PES_PESSOA_FISICA_CPF UNIQUE (CPF_NR),
    CONSTRAINT CK_PES_PESSOA_FISICA_SEXO CHECK (SEXO_TP IN ('M', 'F', 'O'))
);

-- Especialização 2: Pessoa Jurídica (1:1)
CREATE TABLE PES_PESSOA_JURIDICA (
    PESSOA_ID BIGINT NOT NULL,  -- FK + PK
    CNPJ_NR VARCHAR(14) NOT NULL,
    INSCRICAO_ESTADUAL_NR VARCHAR(20) NULL,
    DATA_ABERTURA_DT DATE NOT NULL,
    PORTE_EMPRESA_TP VARCHAR(20) NULL,
    
    CONSTRAINT PK_PES_PESSOA_JURIDICA PRIMARY KEY (PESSOA_ID),
    CONSTRAINT FK_PES_PESSOA_JURIDICA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID)
        ON DELETE CASCADE,
    CONSTRAINT UK_PES_PESSOA_JURIDICA_CNPJ UNIQUE (CNPJ_NR)
);

-- Consulta polimórfica
SELECT 
    p.PESSOA_ID,
    p.TIPO_PESSOA_TP,
    p.NOME_RAZAO_SOCIAL_NM,
    pf.CPF_NR,
    pf.DATA_NASCIMENTO_DT,
    pj.CNPJ_NR,
    pj.DATA_ABERTURA_DT
FROM PES_PESSOA p
LEFT JOIN PES_PESSOA_FISICA pf ON pf.PESSOA_ID = p.PESSOA_ID
LEFT JOIN PES_PESSOA_JURIDICA pj ON pj.PESSOA_ID = p.PESSOA_ID;
```

### 3.5.3 Relacionamento 1:N (Um-para-Muitos)

**Definição**: Cada registro da entidade A (pai) pode se relacionar com **múltiplos** registros da entidade B (filho). Cada registro de B relaciona-se com **exatamente um** registro de A.

**Padrão mais comum**: FK na tabela "muitos" (child) apontando para tabela "um" (parent).

```sql
-- Exemplo: CONTRATO (1) → PARCELAS (N)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,  -- FK para pai (1:N)
    NUMERO_PARCELA_NR INT NOT NULL,
    DATA_VENCIMENTO_DT DATE NOT NULL,
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,  -- A=Aberta, P=Paga, V=Vencida
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT FK_CON_PARCELA_CONTRATO FOREIGN KEY (CONTRATO_ID) 
        REFERENCES CON_CONTRATO(CONTRATO_ID)
        ON DELETE CASCADE,  -- Deletar contrato = deletar todas as parcelas
    
    -- Unicidade: (contrato, número_parcela) único
    CONSTRAINT UK_CON_PARCELA_CONTRATO_NUMERO UNIQUE (CONTRATO_ID, NUMERO_PARCELA_NR)
);

-- Índice obrigatório em FK
CREATE NONCLUSTERED INDEX IDX_CON_PARCELA_CONTRATO_ID
    ON CON_PARCELA(CONTRATO_ID)
    INCLUDE (NUMERO_PARCELA_NR, DATA_VENCIMENTO_DT, VALOR_PARCELA_VL);

-- Consulta: Contrato com todas as parcelas
SELECT 
    con.CONTRATO_ID,
    con.NUMERO_CONTRATO_NR,
    con.VALOR_TOTAL_VL,
    par.NUMERO_PARCELA_NR,
    par.DATA_VENCIMENTO_DT,
    par.VALOR_PARCELA_VL,
    par.STATUS_TP
FROM CON_CONTRATO con
INNER JOIN CON_PARCELA par ON par.CONTRATO_ID = con.CONTRATO_ID
ORDER BY con.CONTRATO_ID, par.NUMERO_PARCELA_NR;
```

**Exemplo 2: Cliente (1) → Endereços (N)**
```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

CREATE TABLE CLI_CLIENTE_ENDERECO (
    ENDERECO_ID BIGINT IDENTITY(1,1) NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,  -- FK (1:N)
    TIPO_ENDERECO_TP VARCHAR(20) NOT NULL,  -- RESIDENCIAL, COMERCIAL, COBRANCA
    LOGRADOURO_NM VARCHAR(200) NOT NULL,
    NUMERO_NR VARCHAR(10) NOT NULL,
    CEP_NR CHAR(8) NOT NULL,
    CIDADE_NM VARCHAR(100) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    CONSTRAINT PK_CLI_CLIENTE_ENDERECO PRIMARY KEY (ENDERECO_ID),
    CONSTRAINT FK_CLI_CLIENTE_ENDERECO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_CLI_CLIENTE_ENDERECO_UF FOREIGN KEY (UF_CD) 
        REFERENCES DOM_UF(UF_CD),
    CONSTRAINT CK_CLI_CLIENTE_ENDERECO_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Garantir apenas 1 endereço principal por cliente (índice filtrado)
CREATE UNIQUE NONCLUSTERED INDEX UK_CLI_CLIENTE_ENDERECO_PRINCIPAL
    ON CLI_CLIENTE_ENDERECO(CLIENTE_ID)
    WHERE PRINCIPAL_IN = 'S';
```

### 3.5.4 Relacionamento N:M (Muitos-para-Muitos)

**Definição**: Cada registro da entidade A pode se relacionar com **múltiplos** registros da entidade B, e vice-versa.

**Implementação obrigatória**: **Tabela associativa** (join table) com FKs para ambas as entidades.

**TE074 3.2.11.3**: Associações N:M **DEVEM usar tabela associativa**.

```sql
-- Exemplo 1: Produtos (N) ↔ Categorias (M)
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,
    PRECO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID)
);

-- Tabela associativa (N:M)
CREATE TABLE PRO_PRODUTO_CATEGORIA (
    PRODUTO_ID INT NOT NULL,
    CATEGORIA_ID INT NOT NULL,
    
    -- Atributos adicionais da associação
    DATA_VINCULO_DT DATE NOT NULL DEFAULT GETDATE(),
    USUARIO_VINCULO_NM VARCHAR(100) NOT NULL DEFAULT SUSER_SNAME(),
    ORDEM_EXIBICAO_SEQ INT NOT NULL DEFAULT 1,
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',
    
    -- PK composta: (produto, categoria)
    CONSTRAINT PK_PRO_PRODUTO_CATEGORIA PRIMARY KEY (PRODUTO_ID, CATEGORIA_ID),
    
    -- FKs para ambas as entidades
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_PRODUTO FOREIGN KEY (PRODUTO_ID) 
        REFERENCES PRO_PRODUTO(PRODUTO_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_PRO_PRODUTO_CATEGORIA_CATEGORIA FOREIGN KEY (CATEGORIA_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
        ON DELETE CASCADE,
    
    CONSTRAINT CK_PRO_PRODUTO_CATEGORIA_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- Índices obrigatórios (já cobertos pela PK e índice invertido)
-- Índice invertido para consultas por categoria
CREATE NONCLUSTERED INDEX IDX_PRO_PRODUTO_CATEGORIA_CATEGORIA_PRODUTO
    ON PRO_PRODUTO_CATEGORIA(CATEGORIA_ID, PRODUTO_ID);

-- Consulta: Produtos de uma categoria
SELECT 
    cat.CATEGORIA_NM,
    prod.PRODUTO_NM,
    prod.PRECO_VL,
    pc.ORDEM_EXIBICAO_SEQ
FROM PRO_CATEGORIA cat
INNER JOIN PRO_PRODUTO_CATEGORIA pc ON pc.CATEGORIA_ID = cat.CATEGORIA_ID
INNER JOIN PRO_PRODUTO prod ON prod.PRODUTO_ID = pc.PRODUTO_ID
WHERE cat.CATEGORIA_ID = 10
ORDER BY pc.ORDEM_EXIBICAO_SEQ, prod.PRODUTO_NM;

-- Consulta: Categorias de um produto
SELECT 
    prod.PRODUTO_NM,
    cat.CATEGORIA_NM,
    pc.PRINCIPAL_IN
FROM PRO_PRODUTO prod
INNER JOIN PRO_PRODUTO_CATEGORIA pc ON pc.PRODUTO_ID = prod.PRODUTO_ID
INNER JOIN PRO_CATEGORIA cat ON cat.CATEGORIA_ID = pc.CATEGORIA_ID
WHERE prod.PRODUTO_ID = 123
ORDER BY pc.PRINCIPAL_IN DESC, cat.CATEGORIA_NM;
```

**Exemplo 2: Alunos (N) ↔ Cursos (M) - com Surrogate Key**
```sql
CREATE TABLE EDU_ALUNO (
    ALUNO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_ALUNO_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_EDU_ALUNO PRIMARY KEY (ALUNO_ID)
);

CREATE TABLE EDU_CURSO (
    CURSO_ID INT IDENTITY(1,1) NOT NULL,
    CURSO_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_EDU_CURSO PRIMARY KEY (CURSO_ID)
);

-- Tabela associativa com surrogate key (matrícula tem muitos atributos)
CREATE TABLE EDU_MATRICULA (
    MATRICULA_ID BIGINT IDENTITY(1,1) NOT NULL,  -- Surrogate key
    ALUNO_ID BIGINT NOT NULL,
    CURSO_ID INT NOT NULL,
    DATA_MATRICULA_DT DATE NOT NULL DEFAULT GETDATE(),
    STATUS_MATRICULA_TP VARCHAR(20) NOT NULL,  -- ATIVA, TRANCADA, CONCLUIDA, CANCELADA
    NOTA_FINAL_VL DECIMAL(5,2) NULL,
    DATA_CONCLUSAO_DT DATE NULL,
    
    CONSTRAINT PK_EDU_MATRICULA PRIMARY KEY (MATRICULA_ID),
    
    -- Unicidade de negócio: (aluno, curso) único
    CONSTRAINT UK_EDU_MATRICULA_ALUNO_CURSO UNIQUE (ALUNO_ID, CURSO_ID),
    
    -- FKs
    CONSTRAINT FK_EDU_MATRICULA_ALUNO FOREIGN KEY (ALUNO_ID) 
        REFERENCES EDU_ALUNO(ALUNO_ID),
    CONSTRAINT FK_EDU_MATRICULA_CURSO FOREIGN KEY (CURSO_ID) 
        REFERENCES EDU_CURSO(CURSO_ID),
    
    CONSTRAINT CK_EDU_MATRICULA_NOTA CHECK (NOTA_FINAL_VL BETWEEN 0 AND 10)
);

-- Índices
CREATE NONCLUSTERED INDEX IDX_EDU_MATRICULA_ALUNO_ID
    ON EDU_MATRICULA(ALUNO_ID)
    INCLUDE (CURSO_ID, STATUS_MATRICULA_TP, DATA_MATRICULA_DT);

CREATE NONCLUSTERED INDEX IDX_EDU_MATRICULA_CURSO_ID
    ON EDU_MATRICULA(CURSO_ID)
    INCLUDE (ALUNO_ID, STATUS_MATRICULA_TP, DATA_MATRICULA_DT);
```

### 3.5.5 Auto-Relacionamentos (Self-Referencing)

**Definição**: Tabela referencia a si mesma (FK para PK da mesma tabela).

**Casos comuns:**
1. **Hierarquias**: Categorias, estrutura organizacional, BOM (Bill of Materials)
2. **Redes sociais**: Amizades, seguidores
3. **Workflows**: Etapa anterior/próxima

**TE074 3.2.11.6**: Auto-relacionamentos **DEVEM ter ambas as associações opcionais** (raiz/folha não têm pai/filho).

```sql
-- Exemplo 1: Hierarquia de categorias (árvore)
CREATE TABLE PRO_CATEGORIA (
    CATEGORIA_ID INT IDENTITY(1,1) NOT NULL,
    CATEGORIA_PAI_ID INT NULL,  -- ✅ Opcional (raiz não tem pai)
    CATEGORIA_NM VARCHAR(100) NOT NULL,
    NIVEL_HIERARQUIA_NR INT NOT NULL,
    ORDEM_EXIBICAO_SEQ INT NOT NULL,
    
    CONSTRAINT PK_PRO_CATEGORIA PRIMARY KEY (CATEGORIA_ID),
    
    -- Auto-relacionamento
    CONSTRAINT FK_PRO_CATEGORIA_PAI FOREIGN KEY (CATEGORIA_PAI_ID) 
        REFERENCES PRO_CATEGORIA(CATEGORIA_ID)
        ON DELETE NO ACTION  -- Não permitir deletar pai com filhos
);

-- Índice para buscar filhos de um pai
CREATE NONCLUSTERED INDEX IDX_PRO_CATEGORIA_PAI_ID
    ON PRO_CATEGORIA(CATEGORIA_PAI_ID)
    INCLUDE (CATEGORIA_NM, NIVEL_HIERARQUIA_NR, ORDEM_EXIBICAO_SEQ);

-- Dados de exemplo:
-- CATEGORIA_ID | CATEGORIA_PAI_ID | CATEGORIA_NM       | NIVEL
-- 1            | NULL             | Eletrônicos        | 1  (raiz)
-- 2            | 1                | Computadores       | 2
-- 3            | 1                | Smartphones        | 2
-- 4            | 2                | Notebooks          | 3
-- 5            | 2                | Desktops           | 3

-- Consulta: Hierarquia completa (CTE recursiva)
WITH CategoriaHierarquia AS (
    -- Anchor: Categorias raiz (sem pai)
    SELECT 
        CATEGORIA_ID,
        CATEGORIA_PAI_ID,
        CATEGORIA_NM,
        NIVEL_HIERARQUIA_NR,
        CAST(CATEGORIA_NM AS VARCHAR(500)) AS CAMINHO_HIERARQUIA
    FROM PRO_CATEGORIA
    WHERE CATEGORIA_PAI_ID IS NULL
    
    UNION ALL
    
    -- Recursive: Categorias filhas
    SELECT 
        c.CATEGORIA_ID,
        c.CATEGORIA_PAI_ID,
        c.CATEGORIA_NM,
        c.NIVEL_HIERARQUIA_NR,
        CAST(ch.CAMINHO_HIERARQUIA + ' > ' + c.CATEGORIA_NM AS VARCHAR(500))
    FROM PRO_CATEGORIA c
    INNER JOIN CategoriaHierarquia ch ON ch.CATEGORIA_ID = c.CATEGORIA_PAI_ID
)
SELECT * FROM CategoriaHierarquia
ORDER BY CAMINHO_HIERARQUIA;

-- Resultado:
-- Eletrônicos
-- Eletrônicos > Computadores
-- Eletrônicos > Computadores > Desktops
-- Eletrônicos > Computadores > Notebooks
-- Eletrônicos > Smartphones
```

**Exemplo 2: Estrutura Organizacional (employees → manager)**
```sql
CREATE TABLE RH_FUNCIONARIO (
    FUNCIONARIO_ID BIGINT IDENTITY(1,1) NOT NULL,
    GESTOR_ID BIGINT NULL,  -- ✅ Opcional (CEO não tem gestor)
    NOME_FUNCIONARIO_NM VARCHAR(200) NOT NULL,
    CARGO_NM VARCHAR(100) NOT NULL,
    SALARIO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_RH_FUNCIONARIO PRIMARY KEY (FUNCIONARIO_ID),
    
    -- Auto-relacionamento (funcionário → gestor)
    CONSTRAINT FK_RH_FUNCIONARIO_GESTOR FOREIGN KEY (GESTOR_ID) 
        REFERENCES RH_FUNCIONARIO(FUNCIONARIO_ID)
        ON DELETE NO ACTION
);

-- Índice para buscar subordinados de um gestor
CREATE NONCLUSTERED INDEX IDX_RH_FUNCIONARIO_GESTOR_ID
    ON RH_FUNCIONARIO(GESTOR_ID)
    INCLUDE (NOME_FUNCIONARIO_NM, CARGO_NM);

-- Consulta: Subordinados diretos de um gestor
SELECT 
    func.NOME_FUNCIONARIO_NM,
    func.CARGO_NM,
    gestor.NOME_FUNCIONARIO_NM AS GESTOR_NM
FROM RH_FUNCIONARIO func
LEFT JOIN RH_FUNCIONARIO gestor ON gestor.FUNCIONARIO_ID = func.GESTOR_ID
WHERE func.GESTOR_ID = 100;
```

**Exemplo 3: Tabela Associativa Qualificada (TE074 3.2.11.15)**

Quando há **mais de 2 relacionamentos paralelos**, usar **tabela associativa qualificada** (com tipo de associação).

```sql
-- ❌ VEDADO: 3+ relacionamentos paralelos
CREATE TABLE DOC_DOCUMENTO_ERRADO (
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_TITULAR_ID BIGINT NULL,
    PESSOA_CORRESPONSAVEL_ID BIGINT NULL,
    PESSOA_FIADOR_ID BIGINT NULL,  -- ❌ 3º relacionamento paralelo
    
    CONSTRAINT PK_DOC_DOCUMENTO_ERRADO PRIMARY KEY (DOCUMENTO_ID)
);

-- ✅ CORRETO: Tabela associativa qualificada
CREATE TABLE DOC_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_DOCUMENTO_NR VARCHAR(30) NOT NULL,
    
    CONSTRAINT PK_DOC_DOCUMENTO PRIMARY KEY (DOCUMENTO_ID)
);

CREATE TABLE DOC_DOCUMENTO_PESSOA (
    DOCUMENTO_PESSOA_ID BIGINT IDENTITY(1,1) NOT NULL,
    DOCUMENTO_ID BIGINT NOT NULL,
    PESSOA_ID BIGINT NOT NULL,
    TIPO_PARTICIPACAO_TP VARCHAR(20) NOT NULL,  -- TITULAR, CORRESPONSAVEL, FIADOR, TESTEMUNHA
    ORDEM_ASSINATURA_SEQ INT NOT NULL DEFAULT 1,
    DATA_ASSINATURA_DT DATE NULL,
    
    CONSTRAINT PK_DOC_DOCUMENTO_PESSOA PRIMARY KEY (DOCUMENTO_PESSOA_ID),
    
    -- Unicidade: (documento, pessoa, tipo) único
    CONSTRAINT UK_DOC_DOCUMENTO_PESSOA UNIQUE (DOCUMENTO_ID, PESSOA_ID, TIPO_PARTICIPACAO_TP),
    
    -- FKs
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_DOCUMENTO FOREIGN KEY (DOCUMENTO_ID) 
        REFERENCES DOC_DOCUMENTO(DOCUMENTO_ID)
        ON DELETE CASCADE,
    CONSTRAINT FK_DOC_DOCUMENTO_PESSOA_PESSOA FOREIGN KEY (PESSOA_ID) 
        REFERENCES PES_PESSOA(PESSOA_ID),
    
    CONSTRAINT CK_DOC_DOCUMENTO_PESSOA_TIPO CHECK (TIPO_PARTICIPACAO_TP IN ('TITULAR', 'CORRESPONSAVEL', 'FIADOR', 'TESTEMUNHA'))
);

-- Consulta: Todas as pessoas de um documento
SELECT 
    doc.NUMERO_DOCUMENTO_NR,
    dp.TIPO_PARTICIPACAO_TP,
    pes.NOME_RAZAO_SOCIAL_NM,
    dp.DATA_ASSINATURA_DT
FROM DOC_DOCUMENTO doc
INNER JOIN DOC_DOCUMENTO_PESSOA dp ON dp.DOCUMENTO_ID = doc.DOCUMENTO_ID
INNER JOIN PES_PESSOA pes ON pes.PESSOA_ID = dp.PESSOA_ID
WHERE doc.DOCUMENTO_ID = 12345
ORDER BY dp.ORDEM_ASSINATURA_SEQ;
```

---

## 3.6 Integridade de Dados

### 3.6.1 Constraints de Domínio (CHECK)

**Definição**: Validam valores permitidos em uma ou mais colunas.

**Nomenclatura (PARTE 2, seção 2.7)**: `CK_[TABELA]_[COLUNA]_[REGRA]`

```sql
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    QUANTIDADE_PARCELAS_QT INT NOT NULL,
    TAXA_JUROS_ANUAL_PC DECIMAL(7,4) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    DATA_PRIMEIRO_VENCIMENTO_DT DATE NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    
    -- CHECK: Status válido
    CONSTRAINT CK_CON_CONTRATO_STATUS_VALIDO 
        CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    
    -- CHECK: Valor positivo
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO 
        CHECK (VALOR_CONTRATO_VL > 0),
    
    -- CHECK: Range de parcelas
    CONSTRAINT CK_CON_CONTRATO_PARCELAS_RANGE 
        CHECK (QUANTIDADE_PARCELAS_QT BETWEEN 1 AND 360),
    
    -- CHECK: Taxa de juros razoável
    CONSTRAINT CK_CON_CONTRATO_TAXA_RANGE 
        CHECK (TAXA_JUROS_ANUAL_PC BETWEEN 0 AND 20),
    
    -- CHECK: Consistência de datas (primeiro vencimento >= assinatura)
    CONSTRAINT CK_CON_CONTRATO_DATA_CONSISTENTE 
        CHECK (DATA_PRIMEIRO_VENCIMENTO_DT >= DATA_ASSINATURA_DT)
);
```

**CHECK com função (SQL Server 2016+):**
```sql
-- Função para validar CPF
CREATE FUNCTION dbo.FN_VALIDAR_CPF (@CPF_NR VARCHAR(11))
RETURNS BIT
AS
BEGIN
    -- Validação simplificada (implementação completa seria mais complexa)
    IF LEN(@CPF_NR) <> 11 RETURN 0;
    IF @CPF_NR LIKE '%[^0-9]%' RETURN 0;  -- Apenas dígitos
    
    -- CPFs inválidos conhecidos (111.111.111-11, etc.)
    IF @CPF_NR IN ('00000000000', '11111111111', '22222222222', '33333333333', 
                   '44444444444', '55555555555', '66666666666', '77777777777',
                   '88888888888', '99999999999') RETURN 0;
    
    RETURN 1;
END;
GO

-- CHECK com função
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT CK_CLI_CLIENTE_CPF_VALIDO CHECK (dbo.FN_VALIDAR_CPF(CPF_NR) = 1)
);
```

### 3.6.2 Constraints de Entidade (PRIMARY KEY, UNIQUE)

**PRIMARY KEY**: Unicidade + NOT NULL + Identificador principal
**UNIQUE**: Unicidade (permite NULL, exceto múltiplos NULLs dependendo do SGBD)

```sql
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    CPF_NR VARCHAR(11) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    NUMERO_CONTA_NR VARCHAR(20) NOT NULL,
    
    -- PRIMARY KEY: Identificador único
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    
    -- UNIQUE: CPF único (natural business key)
    CONSTRAINT UK_CLI_CLIENTE_CPF UNIQUE (CPF_NR),
    
    -- UNIQUE: Email único (permite NULL, mas se preenchido, deve ser único)
    CONSTRAINT UK_CLI_CLIENTE_EMAIL UNIQUE (EMAIL_NM),
    
    -- UNIQUE: Número de conta único
    CONSTRAINT UK_CLI_CLIENTE_CONTA UNIQUE (NUMERO_CONTA_NR)
);
```

**UNIQUE com múltiplas colunas:**
```sql
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR INT NOT NULL,
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    
    -- UNIQUE composto: (contrato, número_parcela) único
    CONSTRAINT UK_CON_PARCELA_CONTRATO_NUMERO UNIQUE (CONTRATO_ID, NUMERO_PARCELA_NR)
);
```

### 3.6.3 Triggers de Auditoria

**Padrão CAIXA**: Toda tabela transacional deve ter colunas de auditoria.

**Colunas obrigatórias:**
- `DT_CADASTRO`: Data de inserção (DEFAULT GETDATE())
- `USUARIO_CADASTRO_NM`: Usuário que inseriu (DEFAULT SUSER_SNAME())
- `DT_ATUALIZACAO`: Data da última atualização (trigger UPDATE)
- `USUARIO_ATUALIZACAO_NM`: Usuário que atualizou (trigger UPDATE)

**Soft Delete (opcional):**
- `DELETADO_IN`: S/N (trigger INSTEAD OF DELETE)
- `DT_EXCLUSAO`: Data da exclusão lógica
- `USUARIO_EXCLUSAO_NM`: Usuário que "excluiu"

```sql
-- Tabela com auditoria completa
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Auditoria de inserção (DEFAULT)
    DT_CADASTRO DATETIME2(3) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT SYSDATETIME(),
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO_CADASTRO DEFAULT SUSER_SNAME(),
    
    -- Auditoria de atualização (trigger)
    DT_ATUALIZACAO DATETIME2(3) NULL,
    USUARIO_ATUALIZACAO_NM VARCHAR(100) NULL,
    
    -- Soft delete (trigger)
    DELETADO_IN CHAR(1) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    DT_EXCLUSAO DATETIME2(3) NULL,
    USUARIO_EXCLUSAO_NM VARCHAR(100) NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S')),
    CONSTRAINT CK_CON_CONTRATO_DELETADO CHECK (DELETADO_IN IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);

-- Trigger de auditoria (UPDATE)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA_UPDATE
ON CON_CONTRATO
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE con
    SET con.DT_ATUALIZACAO = SYSDATETIME(),
        con.USUARIO_ATUALIZACAO_NM = SUSER_SNAME()
    FROM CON_CONTRATO con
    INNER JOIN INSERTED i ON i.CONTRATO_ID = con.CONTRATO_ID;
END;
GO

-- Trigger de soft delete (INSTEAD OF DELETE)
CREATE TRIGGER TRG_CON_CONTRATO_SOFT_DELETE
ON CON_CONTRATO
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE con
    SET con.DELETADO_IN = 'S',
        con.DT_EXCLUSAO = SYSDATETIME(),
        con.USUARIO_EXCLUSAO_NM = SUSER_SNAME()
    FROM CON_CONTRATO con
    INNER JOIN DELETED d ON d.CONTRATO_ID = con.CONTRATO_ID;
END;
GO

-- Consultas (filtrar deletados)
SELECT * FROM CON_CONTRATO WHERE DELETADO_IN = 'N';

-- View para facilitar consultas
CREATE VIEW VW_CON_CONTRATO_ATIVOS
AS
SELECT * FROM CON_CONTRATO WHERE DELETADO_IN = 'N';
GO
```

### 3.6.4 Validação de Integridade Cascata

**Ordem de criação de objetos:**
1. Tabelas sem FKs (tabelas de domínio, base)
2. Primary Keys
3. Foreign Keys (respeitando dependências)
4. Índices (especialmente em FKs)
5. Triggers
6. Views, Stored Procedures, Functions

**Ordem de deleção (inversa):**
1. Views, Stored Procedures, Functions
2. Triggers
3. Índices (exceto PKs/UKs)
4. Foreign Keys
5. Primary Keys
6. Tabelas

```sql
-- Script de criação (ordem correta)

-- 1. Tabelas base (sem FKs)
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,
    UF_NM VARCHAR(50) NOT NULL,
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_ID)
);

-- 2. Tabela com FKs para tabelas base
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    UF_CD CHAR(2) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_CLI_CLIENTE_UF FOREIGN KEY (UF_CD) REFERENCES DOM_UF(UF_CD)
);

-- 3. Tabela com múltiplas FKs
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_CONTRATO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_ID) 
        REFERENCES TAB_TIPO_CONTRATO(TIPO_CONTRATO_ID),
    CONSTRAINT FK_CON_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_ID) 
        REFERENCES CLI_CLIENTE(CLIENTE_ID)
);

-- 4. Índices em FKs
CREATE NONCLUSTERED INDEX IDX_CLI_CLIENTE_UF_CD ON CLI_CLIENTE(UF_CD);
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_TIPO ON CON_CONTRATO(TIPO_CONTRATO_ID);
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE ON CON_CONTRATO(CLIENTE_ID);

-- 5. Triggers (após todas as FKs)
CREATE TRIGGER TRG_CON_CONTRATO_AUDITORIA_UPDATE ON CON_CONTRATO AFTER UPDATE AS ...;
```

**Dependências circulares (evitar):**
```sql
-- ❌ PROBLEMA: A depende de B, B depende de A
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,  -- FK para B (mas B ainda não existe)
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,  -- FK para A
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- ✅ SOLUÇÃO: Criar tabelas primeiro, FKs depois
CREATE TABLE TAB_A (
    A_ID INT NOT NULL,
    B_ID INT NULL,
    CONSTRAINT PK_TAB_A PRIMARY KEY (A_ID)
);

CREATE TABLE TAB_B (
    B_ID INT NOT NULL,
    A_ID INT NULL,
    CONSTRAINT PK_TAB_B PRIMARY KEY (B_ID)
);

-- Adicionar FKs via ALTER TABLE
ALTER TABLE TAB_A ADD CONSTRAINT FK_A_B FOREIGN KEY (B_ID) REFERENCES TAB_B(B_ID);
ALTER TABLE TAB_B ADD CONSTRAINT FK_B_A FOREIGN KEY (A_ID) REFERENCES TAB_A(A_ID);
```

### 3.6.5 Checklist de Integridade de Dados

**Validação de Constraints:**
- [ ] Toda PK tem índice CLUSTERED ou NONCLUSTERED apropriado
- [ ] Toda FK tem índice NONCLUSTERED (Pré-Validador [V405])
- [ ] Todas as colunas obrigatórias marcadas NOT NULL
- [ ] CHECK constraints para validar valores (status, ranges, datas)
- [ ] UNIQUE constraints para business keys (CPF, CNPJ, códigos)

**Validação de Relacionamentos:**
- [ ] FKs referenciam PKs ou UKs existentes (TE074 3.2.11.11)
- [ ] Não há relacionamentos inversos (TE074 3.2.11.14)
- [ ] Relacionamentos paralelos ≤ 2 (TE074 3.2.11.15)
- [ ] Auto-relacionamentos com FKs opcionais (TE074 3.2.11.6)
- [ ] Relacionamentos N:M usam tabela associativa (TE074 3.2.11.3)

**Validação de Auditoria:**
- [ ] Tabelas transacionais com DT_CADASTRO, USUARIO_CADASTRO_NM
- [ ] Triggers UPDATE atualizam DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
- [ ] Soft delete implementado se necessário (DELETADO_IN)
- [ ] Histórico (tabela _HIST) para mudanças críticas

**Validação de Normalização:**
- [ ] Tabelas em 3NF (TE074 3.2.4)
- [ ] Desnormalização documentada e aprovada (se aplicável)
- [ ] Sem colunas repetitivas (telefone1, telefone2) - usar tabela 1:N
- [ ] Sem listas em colunas (usar tabela relacionada)

---

## PARTE 3 - Síntese Consolidada

### Conteúdo Completo da PARTE 3

Esta PARTE apresentou os fundamentos de **estruturação de tabelas e relacionamentos** no SQL Server, cobrindo:

**SUB-PARTE 3.1: Tipos de Tabelas e Normalização**
- **3.1 Tipos de Tabelas**: 6 classificações (transacional, apoio, histórico, auxiliar, log, stage)
- **3.2 Normalização**: 1NF (atomicidade), 2NF (dependência funcional completa), 3NF obrigatória (TE074 3.2.4), desnormalização controlada

**SUB-PARTE 3.2: Chaves Primárias e Estrangeiras**
- **3.3 Chaves Primárias**: Surrogate keys (BIGINT IDENTITY padrão), natural keys (UF, país), composite keys (N:M, particionamento)
- **3.4 Chaves Estrangeiras**: 16 regras TE074 3.2.11 (opcionalidade, cardinalidade, tabelas associativas, VEDAÇÕES), ON DELETE/UPDATE, índices obrigatórios [V405]

**SUB-PARTE 3.3: Relacionamentos e Integridade**
- **3.5 Relacionamentos**: 1:1 (separação dados sensíveis, especialização), 1:N (padrão mais comum), N:M (tabela associativa obrigatória), auto-relacionamentos (hierarquias)
- **3.6 Integridade de Dados**: CHECK constraints, PRIMARY KEY, UNIQUE, FOREIGN KEY, triggers auditoria (DT_CADASTRO, DT_ATUALIZACAO), soft delete

### Pontos-Chave da PARTE 3

1. **Normalização 3NF obrigatória** (TE074 3.2.4) para tabelas transacionais e de apoio
2. **Surrogate keys BIGINT IDENTITY** como padrão para PKs
3. **16 regras de relacionamento** do TE074 3.2.11 (especialmente 3.2.11.4 VEDAÇÃO, 3.2.11.6 auto-relacionamentos, 3.2.11.15 relacionamentos paralelos)
4. **Índices obrigatórios em FKs** (performance + validação Pré-Validador [V405])
5. **Tabelas associativas** para relacionamentos N:M (TE074 3.2.11.3)
6. **Auditoria completa**: DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
7. **Soft delete** preferível a DELETE físico (DELETADO_IN = 'S')

### Cross-References

**Relacionado com PARTE 2**:
- Nomenclatura de FKs: `FK_[ORIGEM]_[DESTINO]` (seção 2.4)
- Nomenclatura de PKs: `PK_[TABELA]` (seção 2.3)
- Nomenclatura de CHECKs: `CK_[TABELA]_[COLUNA]_[REGRA]` (seção 2.7)
- Índices em FKs: `IDX_[TABELA]_[COLUNA]` (seção 2.5)

**Relacionado com PARTE 4** (próxima):
- Tipos de dados para PKs: BIGINT (seção 4.1)
- Compactação de tabelas históricas: ROW/PAGE (seção 4.2)
- Particionamento de tabelas com volumetria >100M linhas/ano (seção 4.3)
- Temporal Tables para histórico automático (seção 4.5)

**Relacionado com PARTE 5**:
- Ciclo de vida de tabelas históricas (seção 5.1)
- LGPD e tabelas de dados sensíveis (seção 5.2)
- Spring Batch e tabelas auxiliares/stage (seção 5.4)
- Validação Pré-Validador [V405] FK sem índice (seção 5.6)

### Validações Pré-Validador Relacionadas

- **[V405]**: Foreign Key sem índice
- **[V901]**: Normalização 3NF não atendida
- **[V902]**: PK composta desnecessária
- **[V903]**: FK opcional na PK (violação 3.2.11.2)
- **[V904]**: Relacionamentos paralelos >2 (violação 3.2.11.15)
- **[V905]**: Relacionamentos inversos (violação 3.2.11.14)
- **[V906]**: Auto-relacionamento com FK obrigatória (violação 3.2.11.6)

---

**📊 Status da PARTE 3**: ✅ **COMPLETA (todas as 3 sub-partes)**

**Resumo Geral PARTE 3**:
- ✅ SUB-PARTE 3.1: Tipos de Tabelas (6 tipos) + Normalização (1NF-3NF)
- ✅ SUB-PARTE 3.2: Chaves Primárias (surrogate/natural/compostas) + Chaves Estrangeiras (16 regras TE074)
- ✅ SUB-PARTE 3.3: Relacionamentos (1:1, 1:N, N:M, auto-relacionamentos) + Integridade (constraints, triggers)

**Total**: ~18KB, 6 seções (3.1-3.6), 35+ exemplos SQL, 16 regras TE074 3.2.11

**Próxima PARTE**: PARTE 4 - Tipos de Dados e Otimização SQL Server

---

# PARTE 4: TIPOS DE DADOS E OTIMIZAÇÃO SQL SERVER

> **Referências Normativas**: TE074 3.2.9-3.2.12, Melhores Práticas em Modelagem

---

## 4.1 Tipos de Dados Recomendados SQL Server

### 4.1.1 Princípios de Seleção de Tipos

**Critérios de escolha**:
1. **Precisão**: Tipo reflete exatamente o domínio de dados
2. **Economia de espaço**: Menor tipo que atende aos requisitos
3. **Performance**: Tipos numéricos > strings, tipos fixos > variáveis
4. **Compatibilidade**: Facilita portabilidade entre SGBDs
5. **Manutenibilidade**: Tipos semânticos (DATE vs VARCHAR)

**TE074 3.2.12.6**: Tipos com tamanhos fixos ou sem tamanho (SMALLINT, INTEGER, TINYINT, BIGINT) devem ter campo personalizado "Tamanho" preenchido.

**TE074 3.2.12.6.3**: Tipos permitidos por SGBD documentados em ppds.caixa/Datatypes-SGBD.aspx

### 4.1.2 Identificadores Numéricos

**Padrão CAIXA**: BIGINT para PKs e FKs de tabelas transacionais.

| Tipo | Tamanho | Range | Uso CAIXA |
|------|---------|-------|-----------|
| **TINYINT** | 1 byte | 0 a 255 | Flags, contadores pequenos |
| **SMALLINT** | 2 bytes | -32,768 a 32,767 | Códigos de domínio (<30K) |
| **INT** | 4 bytes | -2.1B a 2.1B | Códigos médios, contadores |
| **BIGINT** | 8 bytes | -9.2E18 a 9.2E18 | **PKs/FKs transacionais (padrão)** |

```sql
-- ✅ CORRETO: BIGINT para PKs transacionais (volumetria alta)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,  -- ✅ Suporta bilhões de contratos
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- ✅ CORRETO: INT para tabelas de domínio (volumetria baixa)
CREATE TABLE TAB_TIPO_CONTRATO (
    TIPO_CONTRATO_ID INT IDENTITY(1,1) NOT NULL,  -- ✅ Máximo 2.1B tipos (suficiente)
    TIPO_CONTRATO_NM VARCHAR(100) NOT NULL,
    
    CONSTRAINT PK_TAB_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_ID)
);

-- ✅ CORRETO: SMALLINT para flags/códigos pequenos
CREATE TABLE CON_PARCELA (
    PARCELA_ID BIGINT IDENTITY(1,1) NOT NULL,
    CONTRATO_ID BIGINT NOT NULL,
    NUMERO_PARCELA_NR SMALLINT NOT NULL,  -- ✅ Max 360 parcelas (SMALLINT suficiente)
    
    CONSTRAINT PK_CON_PARCELA PRIMARY KEY (PARCELA_ID),
    CONSTRAINT CK_CON_PARCELA_NUMERO_RANGE CHECK (NUMERO_PARCELA_NR BETWEEN 1 AND 360)
);

-- ✅ CORRETO: TINYINT para flags booleanos/enums pequenos
CREATE TABLE USU_USUARIO (
    USUARIO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TENTATIVAS_LOGIN_FALHAS_QT TINYINT NOT NULL DEFAULT 0,  -- ✅ 0-255 suficiente
    
    CONSTRAINT PK_USU_USUARIO PRIMARY KEY (USUARIO_ID),
    CONSTRAINT CK_USU_USUARIO_TENTATIVAS_MAX CHECK (TENTATIVAS_LOGIN_FALHAS_QT <= 10)
);

-- ❌ EVITAR: INT para PKs de alta volumetria (limite 2.1B pode ser atingido)
CREATE TABLE TRA_TRANSACAO_ERRADO (
    TRANSACAO_ID INT IDENTITY(1,1) NOT NULL,  -- ❌ Risco: 10M transações/dia = 210 dias até limite
    CONSTRAINT PK_TRA_TRANSACAO_ERRADO PRIMARY KEY (TRANSACAO_ID)
);
```

### 4.1.3 Valores Decimais e Monetários

**Regra CAIXA**: DECIMAL para valores monetários (nunca FLOAT/REAL).

| Tipo | Precisão | Uso |
|------|----------|-----|
| **DECIMAL(p,s)** | Exata | **Valores monetários, percentuais (padrão)** |
| **NUMERIC(p,s)** | Exata (sinônimo DECIMAL) | Igual a DECIMAL |
| **MONEY** | 4 decimais fixos | ❌ Evitar (limitado, problemas arredondamento) |
| **FLOAT/REAL** | Aproximada | ❌ **NUNCA para valores monetários** |

```sql
-- ✅ CORRETO: DECIMAL para valores monetários
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,       -- ✅ 15 dígitos, 2 decimais
    TAXA_JUROS_ANUAL_PC DECIMAL(7,4) NOT NULL,      -- ✅ Percentual: 7 dígitos, 4 decimais
    TAXA_CET_PC DECIMAL(7,4) NULL,                  -- ✅ Custo Efetivo Total
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_VALOR_POSITIVO CHECK (VALOR_CONTRATO_VL > 0),
    CONSTRAINT CK_CON_CONTRATO_TAXA_RANGE CHECK (TAXA_JUROS_ANUAL_PC BETWEEN 0 AND 100)
);

-- Padrões CAIXA para DECIMAL:
-- Valores monetários: DECIMAL(15,2) - até 999.999.999.999,99 (999 bilhões)
-- Valores monetários grandes: DECIMAL(18,2) - até 999 trilhões
-- Percentuais: DECIMAL(7,4) - até 999,9999%
-- Taxas cambiais: DECIMAL(10,6) - precisão 6 casas decimais

-- ❌ EVITAR: FLOAT/REAL para valores monetários (arredondamento)
CREATE TABLE FIN_LANCAMENTO_ERRADO (
    LANCAMENTO_ID BIGINT NOT NULL,
    VALOR_LANCAMENTO_VL FLOAT NOT NULL,  -- ❌ ERRO: FLOAT tem arredondamento
    
    CONSTRAINT PK_FIN_LANCAMENTO_ERRADO PRIMARY KEY (LANCAMENTO_ID)
);

-- Demonstração do problema:
DECLARE @valor1 FLOAT = 10.35;
DECLARE @valor2 FLOAT = 10.30;
SELECT @valor1 - @valor2;  -- Retorna: 0.0500000000000007 (imprecisão!)

-- ✅ Com DECIMAL (exato):
DECLARE @valorDec1 DECIMAL(10,2) = 10.35;
DECLARE @valorDec2 DECIMAL(10,2) = 10.30;
SELECT @valorDec1 - @valorDec2;  -- Retorna: 0.05 (exato!)
```

### 4.1.4 Strings - VARCHAR vs NVARCHAR

**Regra CAIXA**: Preferir VARCHAR (menor tamanho) exceto para dados Unicode obrigatórios.

| Tipo | Codificação | Tamanho | Uso CAIXA |
|------|-------------|---------|-----------|
| **VARCHAR(n)** | ASCII/Latin1 | 1 byte/char | **Padrão** (nomes, endereços, códigos) |
| **NVARCHAR(n)** | Unicode (UTF-16) | 2 bytes/char | Dados multilíngues, emojis |
| **CHAR(n)** | ASCII fixo | n bytes | Códigos fixos (UF, status) |
| **NCHAR(n)** | Unicode fixo | 2n bytes | Raro (códigos Unicode fixos) |
| **VARCHAR(MAX)** | ASCII variável | Até 2GB | Textos grandes, JSON, XML |
| **NVARCHAR(MAX)** | Unicode variável | Até 2GB | Textos Unicode grandes |

```sql
-- ✅ CORRETO: VARCHAR para dados brasileiros (suficiente)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,           -- ✅ VARCHAR suficiente
    EMAIL_NM VARCHAR(100) NULL,                      -- ✅ ASCII
    LOGRADOURO_NM VARCHAR(200) NOT NULL,             -- ✅ Endereço
    CIDADE_NM VARCHAR(100) NOT NULL,                 -- ✅ Nome cidade
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- ✅ CORRETO: CHAR para códigos fixos
CREATE TABLE DOM_UF (
    UF_CD CHAR(2) NOT NULL,                          -- ✅ Sempre 2 caracteres (SP, RJ)
    UF_NM VARCHAR(50) NOT NULL,
    
    CONSTRAINT PK_DOM_UF PRIMARY KEY (UF_CD)
);

CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,             -- ✅ Sempre 1 caractere (A, C, Q)
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_STATUS CHECK (STATUS_CONTRATO_TP IN ('A', 'C', 'Q', 'S'))
);

-- ✅ NVARCHAR para dados multilíngues
CREATE TABLE PRO_PRODUTO (
    PRODUTO_ID INT IDENTITY(1,1) NOT NULL,
    PRODUTO_NM VARCHAR(200) NOT NULL,                -- ✅ Nome em português
    PRODUTO_NM_INTERNACIONAL NVARCHAR(200) NULL,     -- ✅ Unicode (chinês, árabe, etc.)
    DESCRICAO_DS VARCHAR(MAX) NULL,                  -- ✅ Texto grande português
    
    CONSTRAINT PK_PRO_PRODUTO PRIMARY KEY (PRODUTO_ID)
);

-- ❌ EVITAR: NVARCHAR desnecessário (dobra tamanho)
CREATE TABLE CLI_CLIENTE_ERRADO (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_CLIENTE_NM NVARCHAR(200) NOT NULL,  -- ❌ 400 bytes vs 200 bytes (VARCHAR)
    CPF_NR NVARCHAR(11) NOT NULL,            -- ❌ Apenas dígitos, VARCHAR suficiente
    
    CONSTRAINT PK_CLI_CLIENTE_ERRADO PRIMARY KEY (CLIENTE_ID)
);

-- Comparação de tamanho:
-- VARCHAR(200): 200 bytes
-- NVARCHAR(200): 400 bytes (2x maior)
-- Impacto: Índices, buffer pool, backup, transferência de rede
```

**Quando usar NVARCHAR:**
1. **Dados multilíngues**: Produtos internacionais, descrições em múltiplos idiomas
2. **Emojis**: Campos que podem conter emojis (redes sociais, mensagens)
3. **Integração externa**: APIs/sistemas que exigem Unicode
4. **Compliance**: Requisitos legais de suporte a múltiplos idiomas

### 4.1.5 Datas e Horários

**Padrão CAIXA**: DATE para datas, DATETIME2(3) para timestamps.

| Tipo | Precisão | Range | Tamanho | Uso CAIXA |
|------|----------|-------|---------|-----------|
| **DATE** | Dia | 0001-01-01 a 9999-12-31 | 3 bytes | **Datas puras (padrão)** |
| **TIME(n)** | Fração de segundo | 00:00:00 a 23:59:59 | 3-5 bytes | Horários sem data |
| **DATETIME2(n)** | Fração de segundo | 0001-01-01 a 9999-12-31 | 6-8 bytes | **Timestamps (padrão)** |
| **DATETIME** | 3.33ms | 1753-01-01 a 9999-12-31 | 8 bytes | ❌ Legado (evitar) |
| **SMALLDATETIME** | 1 minuto | 1900-01-01 a 2079-06-06 | 4 bytes | ❌ Legado (evitar) |
| **DATETIMEOFFSET(n)** | Fração + timezone | 0001-01-01 a 9999-12-31 | 8-10 bytes | Dados globais (UTC) |

```sql
-- ✅ CORRETO: DATE para datas puras (nascimento, vencimento)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_NASCIMENTO_DT DATE NOT NULL,                -- ✅ Apenas data (sem hora)
    DATA_CADASTRO_DT DATE NOT NULL DEFAULT GETDATE(), -- ✅ Data de cadastro
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- ✅ CORRETO: DATETIME2(3) para timestamps completos (auditoria)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,                            -- ✅ Apenas data
    DT_CADASTRO DATETIME2(3) NOT NULL DEFAULT SYSDATETIME(),     -- ✅ Timestamp preciso
    DT_ATUALIZACAO DATETIME2(3) NULL,                            -- ✅ Última atualização
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Precisão DATETIME2:
-- DATETIME2(0): 1 segundo (6 bytes)
-- DATETIME2(3): 1 milissegundo (7 bytes) - ✅ Recomendado CAIXA
-- DATETIME2(7): 100 nanosegundos (8 bytes) - Máxima precisão

-- ✅ CORRETO: DATETIMEOFFSET para dados globais
CREATE TABLE TRA_TRANSACAO_INTERNACIONAL (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_TRANSACAO_UTC_DT DATETIMEOFFSET(3) NOT NULL,  -- ✅ Timestamp + timezone
    
    CONSTRAINT PK_TRA_TRANSACAO_INTERNACIONAL PRIMARY KEY (TRANSACAO_ID)
);

-- Exemplo DATETIMEOFFSET:
INSERT INTO TRA_TRANSACAO_INTERNACIONAL (DATA_TRANSACAO_UTC_DT)
VALUES (SYSDATETIMEOFFSET());  -- '2026-01-06 14:30:25.123 -03:00'

-- ❌ EVITAR: DATETIME (legado, limitações)
CREATE TABLE LOG_EVENTO_ERRADO (
    EVENTO_ID BIGINT NOT NULL,
    DATA_EVENTO_DT DATETIME NOT NULL,  -- ❌ Precisão limitada (3.33ms), range limitado
    
    CONSTRAINT PK_LOG_EVENTO_ERRADO PRIMARY KEY (EVENTO_ID)
);

-- Problemas DATETIME:
-- 1. Precisão: 3.33ms (vs DATETIME2 com precisão de milissegundos)
-- 2. Range: 1753-01-01 (vs DATETIME2 desde 0001-01-01)
-- 3. Tamanho: 8 bytes (vs DATETIME2(3) com 7 bytes)
```

**Boas Práticas:**
1. **Datas de vencimento/nascimento**: DATE (sem necessidade de hora)
2. **Auditoria (DT_CADASTRO, DT_ATUALIZACAO)**: DATETIME2(3)
3. **Logs de aplicação**: DATETIME2(3) ou DATETIME2(7) (alta precisão)
4. **Sistemas globais**: DATETIMEOFFSET (preserva timezone)

### 4.1.6 Booleanos e Flags

**SQL Server não tem tipo BOOLEAN nativo**. Usar CHAR(1) ou BIT.

| Tipo | Tamanho | Valores | Uso CAIXA |
|------|---------|---------|-----------|
| **CHAR(1)** | 1 byte | 'S'/'N', 'A'/'I' | **Padrão CAIXA** (legibilidade) |
| **BIT** | 1 bit (agrupado) | 0/1 | Flags técnicos (menor tamanho) |

```sql
-- ✅ CORRETO: CHAR(1) para flags de negócio (padrão CAIXA)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    ATIVO_IN CHAR(1) NOT NULL DEFAULT 'S',           -- ✅ S/N (legível)
    DELETADO_IN CHAR(1) NOT NULL DEFAULT 'N',        -- ✅ Soft delete
    PRINCIPAL_IN CHAR(1) NOT NULL DEFAULT 'N',       -- ✅ Contrato principal
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID),
    CONSTRAINT CK_CON_CONTRATO_ATIVO CHECK (ATIVO_IN IN ('S', 'N')),
    CONSTRAINT CK_CON_CONTRATO_DELETADO CHECK (DELETADO_IN IN ('S', 'N')),
    CONSTRAINT CK_CON_CONTRATO_PRINCIPAL CHECK (PRINCIPAL_IN IN ('S', 'N'))
);

-- ✅ BIT para flags técnicos (economia de espaço)
CREATE TABLE CFG_CONFIGURACAO (
    CONFIGURACAO_ID INT IDENTITY(1,1) NOT NULL,
    CACHE_HABILITADO_IN BIT NOT NULL DEFAULT 1,      -- ✅ 0/1
    LOG_DEBUG_HABILITADO_IN BIT NOT NULL DEFAULT 0,  -- ✅ Performance flag
    COMPACTACAO_ATIVA_IN BIT NOT NULL DEFAULT 1,     -- ✅ Técnico
    
    CONSTRAINT PK_CFG_CONFIGURACAO PRIMARY KEY (CONFIGURACAO_ID)
);

-- Comparação:
-- CHAR(1): 1 byte/coluna = 3 bytes para 3 flags
-- BIT: 1 byte para até 8 flags (agrupadas pelo SQL Server)

-- Consultas:
-- CHAR(1): WHERE ATIVO_IN = 'S'  (✅ Mais legível)
-- BIT: WHERE CACHE_HABILITADO_IN = 1  (ou = 0)
```

**Recomendação**: CHAR(1) para flags de negócio (usuários entendem 'S'/'N'), BIT para flags técnicos.

### 4.1.7 Tipos Binários e JSON/XML

| Tipo | Tamanho Max | Uso |
|------|-------------|-----|
| **VARBINARY(n)** | 8000 bytes | Dados binários pequenos |
| **VARBINARY(MAX)** | 2GB | Arquivos, imagens, criptografia |
| **NVARCHAR(MAX)** | 2GB | JSON, XML |

```sql
-- ✅ Criptografia (Always Encrypted, TDE)
CREATE TABLE CLI_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,
    CPF_CRIPTOGRAFADO_BIN VARBINARY(256) NOT NULL,   -- ✅ CPF criptografado
    NUMERO_CONTA_BIN VARBINARY(256) NULL,            -- ✅ Conta bancária criptografada
    
    CONSTRAINT PK_CLI_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID)
);

-- ✅ JSON (para dados semi-estruturados)
CREATE TABLE LOG_EVENTO (
    EVENTO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TIPO_EVENTO_TP VARCHAR(50) NOT NULL,
    PAYLOAD_JSON NVARCHAR(MAX) NULL,                 -- ✅ JSON para dados variáveis
    
    CONSTRAINT PK_LOG_EVENTO PRIMARY KEY (EVENTO_ID),
    CONSTRAINT CK_LOG_EVENTO_JSON_VALIDO CHECK (ISJSON(PAYLOAD_JSON) = 1)  -- ✅ Valida JSON
);

-- Consulta JSON:
SELECT 
    EVENTO_ID,
    JSON_VALUE(PAYLOAD_JSON, '$.usuario') AS Usuario,
    JSON_VALUE(PAYLOAD_JSON, '$.acao') AS Acao
FROM LOG_EVENTO
WHERE JSON_VALUE(PAYLOAD_JSON, '$.nivel') = 'ERROR';

-- ✅ XML (para dados estruturados)
CREATE TABLE CFG_CONFIGURACAO_XML (
    CONFIGURACAO_ID INT IDENTITY(1,1) NOT NULL,
    CONFIGURACAO_XML XML NOT NULL,                   -- ✅ Tipo XML nativo
    
    CONSTRAINT PK_CFG_CONFIGURACAO_XML PRIMARY KEY (CONFIGURACAO_ID)
);
```

**TE074 3.2.12.6.2**: BLOB e CLOB avaliados com ABD (performance, volume).

---

## 4.2 Compactação de Dados (TE074 3.2.9)

### 4.2.1 Fundamentos de Compactação

**TE074 3.2.9.1**: Toda nova tabela tem indicação de compactação:
- **SQL Server**: DATA_COMPRESSION PAGE (padrão)
- **Oracle**: COMPRESS BASIC
- **DB2**: COMPRESS YES

**Benefícios:**
1. **Redução de espaço em disco**: 40-70% de economia
2. **Menos I/O**: Menos páginas lidas
3. **Melhor cache**: Mais dados na memória
4. **Backup menor**: Redução de tempo e espaço

**Trade-off**: CPU adicional para compactar/descompactar (geralmente compensado pelo I/O reduzido).

**TE074 3.2.9.3**: Não usar compactação requer relatório técnico ABD.

### 4.2.2 Tipos de Compactação SQL Server

| Tipo | Nível | Economia | CPU | Uso |
|------|-------|----------|-----|-----|
| **ROW** | Linha | 15-35% | Baixo | Tabelas quentes (muitos UPDATEs) |
| **PAGE** | Página | 40-70% | Médio | **Padrão CAIXA** (melhor custo-benefício) |
| **COLUMNSTORE** | Coluna | 70-90% | Alto | DW, analytics (leituras massivas) |

```sql
-- ✅ PADRÃO CAIXA: PAGE compression (melhor custo-benefício)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- ✅ ROW compression (tabelas quentes com muitas atualizações)
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    DATA_TRANSACAO_DT DATETIME2(3) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY (TRANSACAO_ID)
) WITH (DATA_COMPRESSION = ROW);

-- ✅ Compactação em índices
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_DATA_ASSINATURA
    ON CON_CONTRATO(DATA_ASSINATURA_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WITH (DATA_COMPRESSION = PAGE);

-- ✅ Compactação por partição (diferentes níveis)
CREATE TABLE TRA_TRANSACAO_PARTICIONADA (
    TRANSACAO_ID BIGINT NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,
    VALOR_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO_PARTICIONADA PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT)
WITH (
    DATA_COMPRESSION = PAGE ON PARTITIONS(1 TO 11),  -- Partições antigas: PAGE
    DATA_COMPRESSION = ROW ON PARTITIONS(12)         -- Partição atual: ROW (quente)
);

-- Alterar compactação de tabela existente
ALTER TABLE CON_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);

-- Alterar compactação de índice
ALTER INDEX IDX_CON_CONTRATO_DATA_ASSINATURA ON CON_CONTRATO
    REBUILD WITH (DATA_COMPRESSION = PAGE);
```

### 4.2.3 Análise de Compactação

```sql
-- Estimar economia de compactação (antes de aplicar)
EXEC sp_estimate_data_compression_savings 
    @schema_name = 'dbo',
    @object_name = 'CON_CONTRATO',
    @index_id = NULL,
    @partition_number = NULL,
    @data_compression = 'PAGE';

-- Resultado exemplo:
-- object_name | current_size_KB | compressed_size_KB | sample_size_current_KB | sample_size_compressed_KB
-- CON_CONTRATO | 512000         | 204800             | 51200                  | 20480
-- Economia: 60%

-- Verificar compactação atual de todas as tabelas
SELECT 
    s.name AS SchemaName,
    t.name AS TableName,
    p.partition_number AS PartitionNumber,
    p.data_compression_desc AS CompressionType,
    p.rows AS RowCount,
    CAST(SUM(a.total_pages) * 8 / 1024.0 AS DECIMAL(10,2)) AS SizeMB
FROM sys.tables t
INNER JOIN sys.schemas s ON s.schema_id = t.schema_id
INNER JOIN sys.partitions p ON p.object_id = t.object_id
INNER JOIN sys.allocation_units a ON a.container_id = p.partition_id
WHERE t.is_ms_shipped = 0
GROUP BY s.name, t.name, p.partition_number, p.data_compression_desc, p.rows
ORDER BY SizeMB DESC;
```

**Recomendações:**
1. **Tabelas transacionais**: PAGE compression (padrão)
2. **Tabelas históricas**: PAGE compression (maior economia)
3. **Tabelas de log**: ROW compression (escrita intensiva)
4. **Tabelas quentes (OLTP)**: ROW compression (menor CPU)
5. **Tabelas de analytics**: COLUMNSTORE compression

---

## 4.3 Particionamento (TE074 3.2.8)

### 4.3.1 Critérios para Particionamento

**TE074 3.2.8.1**: Critérios para particionamento:
- Volume inicial de dados
- Taxa de crescimento
- Características negociais (sazonalidade)
- Características do SGBD

**TE074 3.2.8.3**: Tabelas com > 100M linhas/ano devem ser sinalizadas no relatório ADI e consultar ABD.

**TE074 3.2.8.2**: Parecer ABD obrigatório para particionamento.

**Benefícios:**
1. **Performance de consultas**: Partition elimination (lê apenas partições necessárias)
2. **Manutenção**: REBUILD/REORGANIZE por partição
3. **Archiving**: Trocar partições antigas por tabelas de histórico
4. **Backup/Restore**: Por partição (mais rápido)

### 4.3.2 Estratégias de Particionamento SQL Server

**Particionamento por data (mais comum):**

```sql
-- 1. Criar função de partição (RANGE RIGHT = limite superior de cada partição)
CREATE PARTITION FUNCTION PF_TRANSACAO_MENSAL (DATE)
AS RANGE RIGHT FOR VALUES (
    '2025-02-01',  -- Partição 1: < 2025-02-01
    '2025-03-01',  -- Partição 2: >= 2025-02-01 AND < 2025-03-01
    '2025-04-01',  -- Partição 3: >= 2025-03-01 AND < 2025-04-01
    '2025-05-01',  -- Partição 4: >= 2025-04-01 AND < 2025-05-01
    '2025-06-01',  -- Partição 5: >= 2025-05-01 AND < 2025-06-01
    '2025-07-01',  -- Partição 6: >= 2025-07-01 AND < 2025-07-01
    '2025-08-01',
    '2025-09-01',
    '2025-10-01',
    '2025-11-01',
    '2025-12-01',
    '2026-01-01'   -- Partição 12: >= 2025-12-01 AND < 2026-01-01
);

-- 2. Criar esquema de partição (mapear partições para filegroups)
CREATE PARTITION SCHEME PS_TRANSACAO_MENSAL
AS PARTITION PF_TRANSACAO_MENSAL
ALL TO ([PRIMARY]);  -- Simplificado: todas em PRIMARY (ideal: filegroups separados)

-- 3. Criar tabela particionada
CREATE TABLE TRA_TRANSACAO (
    TRANSACAO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,                 -- ✅ Coluna de particionamento
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    -- PK deve incluir coluna de particionamento
    CONSTRAINT PK_TRA_TRANSACAO PRIMARY KEY NONCLUSTERED (TRANSACAO_ID, DATA_TRANSACAO_DT)
) ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT);

-- Clustered index na coluna de particionamento (aligned)
CREATE CLUSTERED INDEX CIX_TRA_TRANSACAO_DATA
    ON TRA_TRANSACAO(DATA_TRANSACAO_DT)
    ON PS_TRANSACAO_MENSAL(DATA_TRANSACAO_DT);

-- Índice não particionado (opcional, para queries que não filtram por data)
CREATE NONCLUSTERED INDEX IDX_TRA_TRANSACAO_NUMERO
    ON TRA_TRANSACAO(NUMERO_TRANSACAO_NR)
    INCLUDE (DATA_TRANSACAO_DT, VALOR_TRANSACAO_VL);
```

**Consultar dados particionados (partition elimination):**

```sql
-- ✅ Partition elimination: Lê apenas partição de dezembro 2025
SELECT * FROM TRA_TRANSACAO
WHERE DATA_TRANSACAO_DT >= '2025-12-01' 
  AND DATA_TRANSACAO_DT < '2026-01-01';

-- Verificar partições acessadas (query plan mostra "Partition Number: 12")

-- ❌ Sem filtro por data: Lê todas as partições
SELECT * FROM TRA_TRANSACAO
WHERE NUMERO_TRANSACAO_NR = '123456789';
```

### 4.3.3 Manutenção de Partições

```sql
-- Adicionar nova partição (próximo mês)
ALTER PARTITION SCHEME PS_TRANSACAO_MENSAL
    NEXT USED [PRIMARY];

ALTER PARTITION FUNCTION PF_TRANSACAO_MENSAL()
    SPLIT RANGE ('2026-02-01');

-- Arquivar partição antiga (trocar por tabela de histórico)
-- 1. Criar tabela de histórico (estrutura idêntica)
CREATE TABLE TRA_TRANSACAO_2025_01 (
    TRANSACAO_ID BIGINT NOT NULL,
    DATA_TRANSACAO_DT DATE NOT NULL,
    NUMERO_TRANSACAO_NR VARCHAR(30) NOT NULL,
    VALOR_TRANSACAO_VL DECIMAL(15,2) NOT NULL,
    STATUS_TP CHAR(1) NOT NULL,
    
    CONSTRAINT PK_TRA_TRANSACAO_2025_01 PRIMARY KEY (TRANSACAO_ID, DATA_TRANSACAO_DT),
    CONSTRAINT CK_TRA_TRANSACAO_2025_01_DATA CHECK (
        DATA_TRANSACAO_DT >= '2025-01-01' AND DATA_TRANSACAO_DT < '2025-02-01'
    )
) ON [HISTORICAL];  -- Filegroup de histórico (storage secundário)

-- 2. Trocar partição 1 pela tabela de histórico
ALTER TABLE TRA_TRANSACAO
SWITCH PARTITION 1 TO TRA_TRANSACAO_2025_01;

-- 3. Mesclar partição vazia (opcional, liberar limites)
ALTER PARTITION FUNCTION PF_TRANSACAO_MENSAL()
    MERGE RANGE ('2025-02-01');

-- Verificar estatísticas de partições
SELECT 
    OBJECT_NAME(p.object_id) AS TableName,
    p.partition_number AS PartitionNumber,
    p.rows AS RowCount,
    fg.name AS FileGroupName,
    prv.value AS PartitionBoundary
FROM sys.partitions p
INNER JOIN sys.indexes i ON i.object_id = p.object_id AND i.index_id = p.index_id
INNER JOIN sys.partition_schemes ps ON ps.data_space_id = i.data_space_id
INNER JOIN sys.partition_functions pf ON pf.function_id = ps.function_id
INNER JOIN sys.destination_data_spaces dds ON dds.partition_scheme_id = ps.data_space_id 
    AND dds.destination_id = p.partition_number
INNER JOIN sys.filegroups fg ON fg.data_space_id = dds.data_space_id
LEFT JOIN sys.partition_range_values prv ON prv.function_id = pf.function_id 
    AND prv.boundary_id = p.partition_number
WHERE OBJECT_NAME(p.object_id) = 'TRA_TRANSACAO'
ORDER BY p.partition_number;
```

### 4.3.4 Particionamento por Hash (distribuição uniforme)

**Quando usar**: Dados sem range natural (IDs, GUIDs).

```sql
-- Função de partição por HASH (4 partições)
CREATE PARTITION FUNCTION PF_CLIENTE_HASH (BIGINT)
AS RANGE LEFT FOR VALUES (
    2500000000000000000,  -- 25% dos BIGINT
    5000000000000000000,  -- 50%
    7500000000000000000   -- 75%
);  -- 4 partições: <25%, 25-50%, 50-75%, >75%

CREATE PARTITION SCHEME PS_CLIENTE_HASH
AS PARTITION PF_CLIENTE_HASH
TO (FG1, FG2, FG3, FG4);  -- 4 filegroups

-- Tabela particionada por CLIENTE_ID (hash-like distribution)
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
) ON PS_CLIENTE_HASH(CLIENTE_ID);
```

**TE074 3.2.8.6**: Tabelas HISTORICO/AUXILIAR podem usar mesmo critério de particionamento da tabela principal.

---

## 4.4 Indexação Avançada

### 4.4.1 Covering Indexes (Índices de Cobertura)

**Definição**: Índice que contém **todas** as colunas necessárias para uma query (evita lookup na tabela).

```sql
-- Query frequente: Buscar contratos por cliente
SELECT NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP
FROM CON_CONTRATO
WHERE CLIENTE_ID = 12345
  AND STATUS_CONTRATO_TP = 'A';

-- ❌ Índice simples (não covering): Requer lookup
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS
    ON CON_CONTRATO(CLIENTE_ID, STATUS_CONTRATO_TP);

-- Execution plan: Index Seek + Key Lookup (caro)

-- ✅ Covering index: Todas as colunas incluídas
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_CLIENTE_STATUS_COVERING
    ON CON_CONTRATO(CLIENTE_ID, STATUS_CONTRATO_TP)
    INCLUDE (NUMERO_CONTRATO_NR, DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- Execution plan: Index Seek apenas (sem lookup)
```

**Ordem das colunas no índice:**
1. **WHERE (filtro)**: Colunas mais seletivas primeiro
2. **JOIN**: Colunas de junção
3. **ORDER BY**: Colunas de ordenação
4. **INCLUDE**: Colunas de retorno (não participam da chave)

### 4.4.2 Filtered Indexes (Índices Filtrados)

**Definição**: Índice que cobre apenas um **subconjunto** dos dados (WHERE clause).

```sql
-- Cenário: 95% dos contratos são ativos (STATUS = 'A'), 5% cancelados/quitados

-- ❌ Índice completo: Desperdiça espaço em contratos inativos
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_STATUS
    ON CON_CONTRATO(STATUS_CONTRATO_TP, DATA_ASSINATURA_DT);

-- ✅ Filtered index: Apenas contratos ativos (menor, mais eficiente)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_ATIVOS
    ON CON_CONTRATO(DATA_ASSINATURA_DT)
    INCLUDE (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL)
    WHERE STATUS_CONTRATO_TP = 'A' AND DELETADO_IN = 'N';

-- Query otimizada automaticamente:
SELECT * FROM CON_CONTRATO
WHERE STATUS_CONTRATO_TP = 'A' 
  AND DELETADO_IN = 'N'
  AND DATA_ASSINATURA_DT >= '2025-01-01';
-- Usa índice filtrado automaticamente

-- Casos de uso filtered indexes:
-- 1. Soft delete (WHERE DELETADO_IN = 'N')
-- 2. Registros ativos (WHERE ATIVO_IN = 'S')
-- 3. Dados recentes (WHERE DATA_CADASTRO_DT >= '2025-01-01')
-- 4. Flags específicos (WHERE TIPO_TP = 'PREMIUM')
```

### 4.4.3 Columnstore Indexes (Colunar)

**Quando usar**: Analytics, DW, queries de agregação massiva.

**❌ Não usar para**: OLTP, queries de linha única, muitas atualizações.

```sql
-- Tabela de fatos (DW/Analytics)
CREATE TABLE FAT_VENDAS (
    VENDA_ID BIGINT NOT NULL,
    DATA_VENDA_DT DATE NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    VALOR_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL
);

-- ✅ Clustered Columnstore Index (ideal para DW)
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FAT_VENDAS ON FAT_VENDAS;

-- Query analítica (billions de linhas, agregação):
SELECT 
    YEAR(DATA_VENDA_DT) AS Ano,
    MONTH(DATA_VENDA_DT) AS Mes,
    SUM(VALOR_TOTAL_VL) AS TotalVendas,
    COUNT(*) AS QtdVendas
FROM FAT_VENDAS
WHERE DATA_VENDA_DT >= '2020-01-01'
GROUP BY YEAR(DATA_VENDA_DT), MONTH(DATA_VENDA_DT)
ORDER BY Ano, Mes;

-- Performance: 10-100x mais rápido que rowstore
-- Compactação: 70-90% de economia

-- ✅ Nonclustered Columnstore (OLTP com analytics)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    DATA_ASSINATURA_DT DATE NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)  -- Rowstore (OLTP)
);

-- Columnstore adicional para analytics (operational analytics)
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCI_CON_CONTRATO_ANALYTICS
    ON CON_CONTRATO (DATA_ASSINATURA_DT, VALOR_CONTRATO_VL);

-- OLTP: Usa PK (rowstore)
SELECT * FROM CON_CONTRATO WHERE CONTRATO_ID = 12345;

-- Analytics: Usa columnstore
SELECT YEAR(DATA_ASSINATURA_DT), SUM(VALOR_CONTRATO_VL)
FROM CON_CONTRATO
GROUP BY YEAR(DATA_ASSINATURA_DT);
```

---

## 4.5 Auditoria Nativa SQL Server

### 4.5.1 Temporal Tables (Tabelas Temporais)

**SQL Server 2016+**: Histórico automático de alterações.

**Vantagens sobre triggers manuais:**
1. **Performance**: Otimizado internamente
2. **Simplicidade**: Automático (sem código)
3. **Consistência**: Sempre habilitado
4. **Queries time-travel**: AS OF, FROM...TO

```sql
-- ✅ Criar tabela com system-versioning (temporal table)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    NUMERO_CONTRATO_NR VARCHAR(20) NOT NULL,
    VALOR_CONTRATO_VL DECIMAL(15,2) NOT NULL,
    STATUS_CONTRATO_TP CHAR(1) NOT NULL,
    
    -- Colunas de período (gerenciadas automaticamente)
    VALID_FROM DATETIME2(3) GENERATED ALWAYS AS ROW START NOT NULL,
    VALID_TO DATETIME2(3) GENERATED ALWAYS AS ROW END NOT NULL,
    PERIOD FOR SYSTEM_TIME (VALID_FROM, VALID_TO),
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
)
WITH (
    SYSTEM_VERSIONING = ON (
        HISTORY_TABLE = dbo.CON_CONTRATO_HISTORY,  -- Tabela de histórico
        DATA_CONSISTENCY_CHECK = ON
    )
);

-- Sistema automaticamente:
-- 1. Cria CON_CONTRATO_HISTORY
-- 2. Popula VALID_FROM/VALID_TO
-- 3. Move versões antigas para HISTORY em cada UPDATE/DELETE

-- Inserção (automática):
INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, VALOR_CONTRATO_VL, STATUS_CONTRATO_TP)
VALUES ('2026/00001', 250000.00, 'A');
-- VALID_FROM = 2026-01-06 14:30:25.123
-- VALID_TO = 9999-12-31 23:59:59.999 (current)

-- Atualização (histórico automático):
UPDATE CON_CONTRATO
SET STATUS_CONTRATO_TP = 'Q'
WHERE CONTRATO_ID = 1;

-- Sistema move versão antiga para CON_CONTRATO_HISTORY:
-- VALID_FROM = 2026-01-06 14:30:25.123
-- VALID_TO = 2026-01-06 15:45:10.456 (momento do UPDATE)

-- Nova versão em CON_CONTRATO:
-- VALID_FROM = 2026-01-06 15:45:10.456
-- VALID_TO = 9999-12-31 23:59:59.999

-- ✅ Consultar histórico (AS OF)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME AS OF '2026-01-06 14:35:00'
WHERE CONTRATO_ID = 1;
-- Retorna: STATUS = 'A' (antes do UPDATE)

-- ✅ Consultar todas as versões (ALL)
SELECT 
    CONTRATO_ID,
    NUMERO_CONTRATO_NR,
    STATUS_CONTRATO_TP,
    VALID_FROM,
    VALID_TO
FROM CON_CONTRATO
FOR SYSTEM_TIME ALL
WHERE CONTRATO_ID = 1
ORDER BY VALID_FROM DESC;

-- ✅ Consultar período (FROM...TO)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME FROM '2026-01-01' TO '2026-01-31'
WHERE CLIENTE_ID = 12345;

-- ✅ Consultar apenas alterações (BETWEEN)
SELECT * FROM CON_CONTRATO
FOR SYSTEM_TIME BETWEEN '2026-01-06 14:00:00' AND '2026-01-06 16:00:00'
ORDER BY VALID_FROM;
```

**Desabilitar/Habilitar System-Versioning:**

```sql
-- Desabilitar temporariamente (para manutenção em massa)
ALTER TABLE CON_CONTRATO SET (SYSTEM_VERSIONING = OFF);

-- Fazer alterações em massa...

-- Reabilitar
ALTER TABLE CON_CONTRATO SET (
    SYSTEM_VERSIONING = ON (
        HISTORY_TABLE = dbo.CON_CONTRATO_HISTORY
    )
);
```

### 4.5.2 Change Tracking (Rastreamento de Alterações)

**Quando usar**: Sincronização entre bancos, ETL incremental, cache invalidation.

**Diferença de Temporal Tables**: Change Tracking rastreia **quais linhas mudaram**, não o **valor anterior**.

```sql
-- Habilitar Change Tracking no banco
ALTER DATABASE MeuBanco
SET CHANGE_TRACKING = ON (
    CHANGE_RETENTION = 7 DAYS,      -- Manter por 7 dias
    AUTO_CLEANUP = ON
);

-- Habilitar Change Tracking na tabela
ALTER TABLE CON_CONTRATO
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = ON);  -- Rastrear quais colunas mudaram

-- Obter versão atual
DECLARE @current_version BIGINT = CHANGE_TRACKING_CURRENT_VERSION();

-- Inserções/Atualizações/Deleções...

-- Obter mudanças desde última sincronização
SELECT 
    ct.CONTRATO_ID,
    ct.SYS_CHANGE_OPERATION,  -- I=Insert, U=Update, D=Delete
    ct.SYS_CHANGE_VERSION,
    ct.SYS_CHANGE_CONTEXT,
    con.*
FROM CHANGETABLE(CHANGES CON_CONTRATO, @last_sync_version) AS ct
LEFT JOIN CON_CONTRATO con ON con.CONTRATO_ID = ct.CONTRATO_ID;

-- Uso típico (ETL incremental):
-- 1. Guardar @current_version após sync
-- 2. Próxima sync: Buscar mudanças desde @last_version
-- 3. Aplicar mudanças no destino
-- 4. Atualizar @last_version = @current_version
```

---

## 4.6 Valores Default e Computed Columns

### 4.6.1 Constraints DEFAULT

**TE074 3.2.12.5**: Cuidado com DEFAULT (perdura, pode divergir da atuação esperada em inserções futuras).

```sql
-- ✅ DEFAULT para auditoria (padrão CAIXA)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    
    -- DEFAULT para timestamps
    DT_CADASTRO DATETIME2(3) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DT_CADASTRO DEFAULT SYSDATETIME(),
    
    -- DEFAULT para usuário
    USUARIO_CADASTRO_NM VARCHAR(100) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_USUARIO DEFAULT SUSER_SNAME(),
    
    -- DEFAULT para soft delete
    DELETADO_IN CHAR(1) NOT NULL 
        CONSTRAINT DF_CON_CONTRATO_DELETADO DEFAULT 'N',
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Inserção (DEFAULTs aplicados automaticamente)
INSERT INTO CON_CONTRATO (NUMERO_CONTRATO_NR, VALOR_VL, STATUS_TP)
VALUES ('2026/00001', 250000.00, 'A');
-- DT_CADASTRO = SYSDATETIME() automaticamente
-- USUARIO_CADASTRO_NM = 'USUARIO_SQL' automaticamente
-- DELETADO_IN = 'N' automaticamente

-- ⚠️ CUIDADO: DEFAULT com regras de negócio variáveis
CREATE TABLE PED_PEDIDO_ERRADO (
    PEDIDO_ID BIGINT NOT NULL,
    TAXA_ENTREGA_VL DECIMAL(10,2) NOT NULL 
        CONSTRAINT DF_PED_PEDIDO_TAXA DEFAULT 15.00,  -- ⚠️ Taxa pode mudar!
    
    CONSTRAINT PK_PED_PEDIDO_ERRADO PRIMARY KEY (PEDIDO_ID)
);

-- Problema: Se taxa de entrega mudar para R$ 20,
-- DEFAULT continua 15 (não reflete mudança de negócio)

-- ✅ MELHOR: Buscar de tabela de parâmetros
CREATE TABLE CFG_PARAMETRO (
    PARAMETRO_CD VARCHAR(50) NOT NULL,
    PARAMETRO_VALOR_VL VARCHAR(200) NOT NULL,
    CONSTRAINT PK_CFG_PARAMETRO PRIMARY KEY (PARAMETRO_CD)
);

INSERT INTO CFG_PARAMETRO VALUES ('TAXA_ENTREGA_PADRAO', '15.00');

-- Aplicação busca valor atual:
SELECT CAST(PARAMETRO_VALOR_VL AS DECIMAL(10,2))
FROM CFG_PARAMETRO
WHERE PARAMETRO_CD = 'TAXA_ENTREGA_PADRAO';
```

### 4.6.2 Computed Columns (Colunas Calculadas)

**Tipos:**
1. **Non-persisted** (virtual): Calculada em cada SELECT (não ocupa espaço)
2. **PERSISTED** (persistida): Calculada no INSERT/UPDATE, armazenada fisicamente (pode ter índice)

```sql
-- ✅ Computed column não persistida (cálculo simples)
CREATE TABLE PED_PEDIDO_ITEM (
    ITEM_ID BIGINT IDENTITY(1,1) NOT NULL,
    QUANTIDADE_QT INT NOT NULL,
    PRECO_UNITARIO_VL DECIMAL(15,2) NOT NULL,
    
    -- Calculated (não armazenada fisicamente)
    VALOR_TOTAL_VL AS (QUANTIDADE_QT * PRECO_UNITARIO_VL),
    
    CONSTRAINT PK_PED_PEDIDO_ITEM PRIMARY KEY (ITEM_ID)
);

-- SELECT: VALOR_TOTAL_VL calculado automaticamente
SELECT ITEM_ID, QUANTIDADE_QT, PRECO_UNITARIO_VL, VALOR_TOTAL_VL
FROM PED_PEDIDO_ITEM;

-- ✅ Computed column PERSISTIDA (permite índice)
CREATE TABLE CON_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) NOT NULL,
    VALOR_PRODUTOS_VL DECIMAL(15,2) NOT NULL,
    VALOR_FRETE_VL DECIMAL(15,2) NOT NULL,
    VALOR_DESCONTO_VL DECIMAL(15,2) NOT NULL,
    
    -- PERSISTED: Armazenada fisicamente (ocupa espaço, mas permite índice)
    VALOR_TOTAL_VL AS (VALOR_PRODUTOS_VL + VALOR_FRETE_VL - VALOR_DESCONTO_VL) PERSISTED,
    
    CONSTRAINT PK_CON_CONTRATO PRIMARY KEY (CONTRATO_ID)
);

-- Índice em computed column (requer PERSISTED)
CREATE NONCLUSTERED INDEX IDX_CON_CONTRATO_VALOR_TOTAL
    ON CON_CONTRATO(VALOR_TOTAL_VL);

-- Query otimizada:
SELECT * FROM CON_CONTRATO
WHERE VALOR_TOTAL_VL > 100000;
-- Usa índice em VALOR_TOTAL_VL

-- ✅ Computed column com função
CREATE TABLE CLI_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) NOT NULL,
    NOME_CLIENTE_NM VARCHAR(200) NOT NULL,
    EMAIL_NM VARCHAR(100) NULL,
    
    -- Uppercase automático
    NOME_UPPER_NM AS (UPPER(NOME_CLIENTE_NM)) PERSISTED,
    
    -- Domínio do email
    EMAIL_DOMINIO_NM AS (
        CASE 
            WHEN EMAIL_NM IS NULL THEN NULL
            ELSE SUBSTRING(EMAIL_NM, CHARINDEX('@', EMAIL_NM) + 1, 100)
        END
    ) PERSISTED,
    
    CONSTRAINT PK_CLI_CLIENTE PRIMARY KEY (CLIENTE_ID)
);

-- Buscar por domínio de email (usa computed column)
SELECT * FROM CLI_CLIENTE
WHERE EMAIL_DOMINIO_NM = 'caixa.gov.br';
```

**Quando usar PERSISTED:**
1. **Índice necessário** (computed column deve ser PERSISTED)
2. **Cálculo complexo** (evitar recalcular a cada SELECT)
3. **Agregações** (SUM, COUNT em queries frequentes)
4. **Funções determinísticas** (mesmo input = mesmo output)

**Quando NÃO usar PERSISTED:**
1. **Cálculo simples** (multiplicação, soma) - overhead desnecessário
2. **Tabelas com muitas escritas** (recalcula a cada UPDATE)
3. **Funções não determinísticas** (GETDATE(), NEWID()) - não permitido em PERSISTED

---

**📊 Status da PARTE 4**: ✅ **COMPLETA**

**Resumo PARTE 4**:
- ✅ 4.1: Tipos de Dados (BIGINT para PKs, DECIMAL para monetários, VARCHAR vs NVARCHAR, DATE/DATETIME2)
- ✅ 4.2: Compactação (PAGE padrão, ROW para quentes, economia 40-70%)
- ✅ 4.3: Particionamento (>100M linhas/ano, RANGE RIGHT/LEFT, partition elimination)
- ✅ 4.4: Indexação Avançada (covering, filtered, columnstore)
- ✅ 4.5: Auditoria Nativa (temporal tables, change tracking)
- ✅ 4.6: DEFAULT e Computed Columns (PERSISTED para índices)

**Validações TE074**:
- ✅ 3.2.9.1: Compactação PAGE obrigatória em novas tabelas
- ✅ 3.2.8.3: Tabelas >100M linhas/ano sinalizadas no ADI
- ✅ 3.2.12.5: Cuidado com DEFAULT (perdura)
- ✅ 3.2.12.6: Tipos sem tamanho (BIGINT) com campo personalizado preenchido

**Próxima PARTE**: PARTE 5 - Ciclo de Vida, Frameworks e Validações

---

# PARTE 5: CICLO DE VIDA, FRAMEWORKS E VALIDAÇÕES
## SUB-PARTE 5.1: Ciclo de Vida dos Dados e LGPD (Parte 1 de 4)

> **Objetivo desta SUB-PARTE**: Definir políticas de retenção, arquivamento, expurgo de dados e conformidade com LGPD/CR439.  
> **Abrangência**: Seções 5.1 e 5.2  
> **Base normativa**: TE074 3.2.10, CR439, OR016, Lei Geral de Proteção de Dados (Lei nº 13.709/2018)

---

## 5.1 Ciclo de Vida dos Dados (TE074 3.2.10)

### 5.1.1 Visão Geral

O **ciclo de vida dos dados** define:
- **Retenção online**: Prazo que os dados permanecem na base transacional
- **Arquivamento**: Migração para tabelas históricas/auxiliares
- **Expurgo**: Remoção definitiva após fim do ciclo de vida

**Base normativa TE074 3.2.10**:
> "Definir o ciclo de vida dos dados, considerando:  
> - O prazo máximo de retenção baseado em regras de negócio, normas externas, leis e/ou normativos;  
> - Os dados na base online são mantidos por prazo necessário e suficiente;  
> - Dados que não necessitem permanecer nas Tabelas Transacionais são migrados para Tabelas Históricas ou Auxiliares a fim de garantir performance."

**Referência PPDS**:  
📖 [Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ciclo-de-Vida-dos-Dados.aspx)

---

### 5.1.2 Retenção Online (Base Transacional)

#### Critérios para Definição de Prazo

O **prazo de retenção online** é definido pelo **gestor da informação** considerando:

| Critério | Descrição | Exemplo |
|----------|-----------|---------|
| **Regras de negócio** | Tempo necessário para consultas operacionais | Contratos ativos: até quitação |
| **Normas externas** | Legislação fiscal, trabalhista, bancária | Comprovantes fiscais: 5 anos |
| **Performance** | Impacto de grandes volumes em queries OLTP | Tabelas >100M linhas: histórico necessário |
| **Custo de armazenamento** | Equilíbrio entre disponibilidade e custo | Logs: 90 dias online, resto arquivado |

**Obrigação do modelador (TE074 3.2.10.2.1)**:
> "A equipe de desenvolvimento registra em campos apropriados no modelo de dados o que foi definido pelo gestor e, preferencialmente, informa a qual coluna está vinculada."

#### Campos Obrigatórios no PowerDesigner

**Propriedades do objeto TABLE**:
```
RETENTION_POLICY: "5 anos base online, 10 anos histórico, expurgo após" 
RETENTION_COLUMN: "DT_CADASTRO" (coluna referência para cálculo)
BUSINESS_JUSTIFICATION: "Exigência Receita Federal IN 1.700/2017"
LIFECYCLE_OWNER: "Gerente Nacional Crédito Imobiliário"
```

**Exemplo: Contratos Habitacionais**

```sql
-- Tabela transacional (contratos ativos até quitação + 90 dias)
CREATE TABLE FIN_CONTRATO_HABITACIONAL (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NULL,  -- Gatilho para migração histórico
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL DEFAULT 'A',  -- A=Ativo, Q=Quitado, C=Cancelado
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    DT_ATUALIZACAO DATETIME2,
    USUARIO_ATUALIZACAO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABITACIONAL PRIMARY KEY (CONTRATO_HABITACIONAL_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela histórica (contratos quitados há mais de 90 dias)
CREATE TABLE FIN_CONTRATO_HABITACIONAL_HIST (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NOT NULL,  -- Obrigatório no histórico
    DT_MIGRACAO_HISTORICO DATETIME2 NOT NULL DEFAULT GETDATE(),
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,
    -- Auditoria (preservada da origem)
    DT_CADASTRO DATETIME2,
    USUARIO_CADASTRO_NM VARCHAR(50),
    DT_ATUALIZACAO DATETIME2,
    USUARIO_ATUALIZACAO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABIT_HIST PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) WITH (DATA_COMPRESSION = PAGE);

-- Índice para queries por data de quitação
CREATE INDEX IX_FIN_CONTRATO_HABIT_HIST_DT_QUIT 
ON FIN_CONTRATO_HABITACIONAL_HIST (DT_QUITACAO, DT_MIGRACAO_HISTORICO);
```

**Política de ciclo de vida documentada**:
```
Retenção online: Contratos ativos (STATUS='A') + 90 dias após quitação
Arquivamento: Contratos com DT_QUITACAO < GETDATE() - 90 (migração automática mensal)
Expurgo histórico: Após 10 anos da quitação (conformidade com prazo legal contratos habitacionais)
Coluna referência: DT_QUITACAO
Responsável: Gerente Nacional Crédito Imobiliário
```

---

### 5.1.3 Arquivamento (Migração para Histórico)

#### Diferença entre Tabelas Históricas e Auxiliares

| Tipo | Sufixo | Finalidade | Cardinalidade | Exemplo |
|------|--------|------------|---------------|---------|
| **Histórica** | `_HIST` | Dados inativos (completos) | 1:N temporal | `FIN_CONTRATO_HABITACIONAL_HIST` |
| **Auxiliar** | `_AUX` | Dados de apoio (referência) | 1:1 ou 1:N | `PES_CLIENTE_DADOS_COMERCIAIS_AUX` |

**Tabela Histórica (_HIST)**:
- **Quando usar**: Armazenar versões temporais de registros inativos (após conclusão do ciclo operacional)
- **PK**: ID original + data de migração/versão
- **Conteúdo**: Cópia completa do registro transacional no momento do arquivamento
- **Particionamento**: Obrigatório se volumetria > 100M/ano (TE074 3.2.8.3)

**Tabela Auxiliar (_AUX)**:
- **Quando usar**: Separar dados de baixa frequência de acesso ou volumosos (BLOBs)
- **PK**: ID da tabela principal (relacionamento 1:1) ou ID auxiliar (1:N)
- **Conteúdo**: Atributos não essenciais para queries principais
- **Exemplo**: Dados comerciais adicionais, documentos digitalizados, metadados extensos

#### Processo de Arquivamento Automatizado

**Stored Procedure de migração (executada mensalmente)**:

```sql
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_CONTRATOS_HABITACIONAIS
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @DataCorte DATE = DATEADD(DAY, -90, CAST(GETDATE() AS DATE));
    DECLARE @RowsAffected INT;

    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- 1. Inserir contratos quitados há mais de 90 dias no histórico
        INSERT INTO FIN_CONTRATO_HABITACIONAL_HIST (
            CONTRATO_HABITACIONAL_ID, CLIENTE_ID, DT_ASSINATURA, DT_QUITACAO,
            DT_MIGRACAO_HISTORICO, VALOR_TOTAL_VL, STATUS_CD,
            DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
        )
        SELECT 
            CONTRATO_HABITACIONAL_ID, CLIENTE_ID, DT_ASSINATURA, DT_QUITACAO,
            GETDATE() AS DT_MIGRACAO_HISTORICO, VALOR_TOTAL_VL, STATUS_CD,
            DT_CADASTRO, USUARIO_CADASTRO_NM, DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM
        FROM FIN_CONTRATO_HABITACIONAL
        WHERE STATUS_CD IN ('Q', 'C')  -- Quitado ou Cancelado
          AND DT_QUITACAO < @DataCorte;

        SET @RowsAffected = @@ROWCOUNT;

        -- 2. Remover da tabela transacional (liberação de espaço)
        DELETE FROM FIN_CONTRATO_HABITACIONAL
        WHERE STATUS_CD IN ('Q', 'C')
          AND DT_QUITACAO < @DataCorte;

        -- 3. Log de auditoria
        INSERT INTO SYS_LOG_ARQUIVAMENTO (TABELA_NM, QT_REGISTROS_MIGRADOS, DT_EXECUCAO)
        VALUES ('FIN_CONTRATO_HABITACIONAL', @RowsAffected, GETDATE());

        COMMIT TRANSACTION;

        PRINT 'Arquivamento concluído: ' + CAST(@RowsAffected AS VARCHAR(10)) + ' contratos migrados.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        
        DECLARE @ErrorMsg NVARCHAR(4000) = ERROR_MESSAGE();
        INSERT INTO SYS_LOG_ERROS (PROCESSO_NM, MENSAGEM_TX, DT_ERRO)
        VALUES ('SP_ARQUIVAR_CONTRATOS_HABITACIONAIS', @ErrorMsg, GETDATE());
        
        THROW;
    END CATCH
END;
GO
```

**SQL Server Agent Job (execução mensal)**:

```sql
EXEC msdb.dbo.sp_add_job
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';

EXEC msdb.dbo.sp_add_jobstep
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS',
    @step_name = N'Arquivar Contratos',
    @subsystem = N'TSQL',
    @command = N'EXEC SP_ARQUIVAR_CONTRATOS_HABITACIONAIS',
    @database_name = N'DB_FINANCEIRO';

EXEC msdb.dbo.sp_add_schedule
    @schedule_name = N'Primeiro_Dia_Mes',
    @freq_type = 16,  -- Mensal
    @freq_interval = 1,  -- Dia 1
    @active_start_time = 020000;  -- 02:00 AM

EXEC msdb.dbo.sp_attach_schedule
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS',
    @schedule_name = N'Primeiro_Dia_Mes';

EXEC msdb.dbo.sp_add_jobserver
    @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';
```

---

### 5.1.4 Expurgo (Remoção Definitiva)

**Expurgo** é a remoção definitiva de dados após o fim do ciclo de vida legal/normativo.

#### Políticas de Expurgo por Tipo de Dado

| Tipo de Dado | Prazo Legal | Retenção CAIXA | Expurgo após | Base Legal |
|--------------|-------------|----------------|--------------|------------|
| **Contratos habitacionais** | 10 anos após quitação | 10 anos | 10 anos | Código Civil Art. 205 |
| **Documentos fiscais** | 5 anos | 7 anos (segurança) | 7 anos | CTN Art. 174 |
| **Dados trabalhistas** | 30 anos | 30 anos | 30 anos | CLT Art. 11 |
| **Logs de aplicação (dev)** | N/A | 90 dias | 90 dias | Política interna |
| **Logs de aplicação (prod)** | N/A | 6 meses | 6 meses | Política interna |
| **Dados temporários (staging)** | N/A | 7 dias | 7 dias | Política interna |
| **Dados pessoais (LGPD)** | Até solicitação titular | Enquanto necessário | Após término finalidade | Lei 13.709/2018 Art. 16 |

#### Stored Procedure de Expurgo

```sql
CREATE OR ALTER PROCEDURE SP_EXPURGAR_CONTRATOS_HABITACIONAIS
    @DataCorteExpurgo DATE = NULL  -- Se NULL, calcula automaticamente (10 anos)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Cálculo automático: 10 anos antes da data atual
    IF @DataCorteExpurgo IS NULL
        SET @DataCorteExpurgo = DATEADD(YEAR, -10, CAST(GETDATE() AS DATE));

    DECLARE @RowsAffected INT;
    DECLARE @AprovacaoGestor BIT;

    -- IMPORTANTE: Expurgo requer aprovação do gestor (log manual)
    IF NOT EXISTS (
        SELECT 1 FROM SYS_APROVACAO_EXPURGO
        WHERE TABELA_NM = 'FIN_CONTRATO_HABITACIONAL_HIST'
          AND DATA_CORTE_DT = @DataCorteExpurgo
          AND STATUS_CD = 'APROVADO'
    )
    BEGIN
        RAISERROR('Expurgo não aprovado pelo gestor da informação. Processo abortado.', 16, 1);
        RETURN;
    END

    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- 1. Backup de segurança antes do expurgo (tabela de archive)
        SELECT *
        INTO FIN_CONTRATO_HABIT_HIST_ARCHIVE_20250120  -- Nome com data
        FROM FIN_CONTRATO_HABITACIONAL_HIST
        WHERE DT_QUITACAO < @DataCorteExpurgo;

        SET @RowsAffected = @@ROWCOUNT;

        -- 2. Expurgo definitivo da tabela histórica
        DELETE FROM FIN_CONTRATO_HABITACIONAL_HIST
        WHERE DT_QUITACAO < @DataCorteExpurgo;

        -- 3. Log de auditoria de expurgo (obrigatório LGPD)
        INSERT INTO SYS_LOG_EXPURGO (
            TABELA_NM, QT_REGISTROS_EXPURGADOS, DATA_CORTE_DT, 
            GESTOR_APROVADOR_NM, DT_EXECUCAO, USUARIO_EXECUCAO_NM
        )
        SELECT 
            'FIN_CONTRATO_HABITACIONAL_HIST', 
            @RowsAffected, 
            @DataCorteExpurgo,
            (SELECT GESTOR_NM FROM SYS_APROVACAO_EXPURGO 
             WHERE TABELA_NM = 'FIN_CONTRATO_HABITACIONAL_HIST' 
               AND DATA_CORTE_DT = @DataCorteExpurgo),
            GETDATE(),
            SUSER_SNAME();

        COMMIT TRANSACTION;

        PRINT 'Expurgo concluído: ' + CAST(@RowsAffected AS VARCHAR(10)) + ' contratos removidos.';
        PRINT 'Backup criado em: FIN_CONTRATO_HABIT_HIST_ARCHIVE_20250120';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
```

**Controle de aprovação de expurgo**:

```sql
CREATE TABLE SYS_APROVACAO_EXPURGO (
    APROVACAO_EXPURGO_ID BIGINT IDENTITY(1,1) NOT NULL,
    TABELA_NM VARCHAR(100) NOT NULL,
    DATA_CORTE_DT DATE NOT NULL,  -- Remover dados anteriores a esta data
    GESTOR_NM VARCHAR(100) NOT NULL,
    JUSTIFICATIVA_TX VARCHAR(500) NOT NULL,
    STATUS_CD CHAR(10) NOT NULL,  -- PENDENTE, APROVADO, REJEITADO
    DT_SOLICITACAO DATETIME2 DEFAULT GETDATE(),
    DT_APROVACAO DATETIME2,
    DOCUMENTO_ANEXO_TX VARCHAR(200),  -- Link para documento de aprovação
    CONSTRAINT PK_SYS_APROVACAO_EXPURGO PRIMARY KEY (APROVACAO_EXPURGO_ID),
    CONSTRAINT CK_SYS_APROV_EXPURGO_STATUS CHECK (STATUS_CD IN ('PENDENTE', 'APROVADO', 'REJEITADO'))
) WITH (DATA_COMPRESSION = PAGE);
```

**Exemplo de solicitação de expurgo**:

```sql
INSERT INTO SYS_APROVACAO_EXPURGO (
    TABELA_NM, DATA_CORTE_DT, GESTOR_NM, JUSTIFICATIVA_TX, STATUS_CD
)
VALUES (
    'FIN_CONTRATO_HABITACIONAL_HIST',
    '2015-01-01',  -- Contratos quitados antes de 2015 (>10 anos)
    'João Silva - GENAC/GEHAB',
    'Expurgo de contratos habitacionais conforme prazo legal de 10 anos (CC Art. 205)',
    'APROVADO'
);
```

---

### 5.1.5 Particionamento de Tabelas Históricas

Conforme **TE074 3.2.8.6**:
> "Se uma tabela transacional possuir tabelas HISTORICO e/ou AUXILIAR também podem ser candidatas ao mesmo critério de particionamento."

**Tabelas históricas** frequentemente excedem 100M linhas/ano, requerendo **particionamento**.

#### Exemplo: Particionamento por Ano de Migração

```sql
-- 1. Partition Function (por ano de migração ao histórico)
CREATE PARTITION FUNCTION PF_CONTRATO_HIST_ANO (DATETIME2)
AS RANGE RIGHT FOR VALUES (
    '2020-01-01', '2021-01-01', '2022-01-01', 
    '2023-01-01', '2024-01-01', '2025-01-01', '2026-01-01'
);

-- 2. Partition Scheme
CREATE PARTITION SCHEME PS_CONTRATO_HIST_ANO
AS PARTITION PF_CONTRATO_HIST_ANO
TO (FG_CONTRATO_HIST_2020, FG_CONTRATO_HIST_2021, FG_CONTRATO_HIST_2022,
    FG_CONTRATO_HIST_2023, FG_CONTRATO_HIST_2024, FG_CONTRATO_HIST_2025,
    FG_CONTRATO_HIST_2026, FG_CONTRATO_HIST_FUTURO);

-- 3. Criar tabela histórica particionada
CREATE TABLE FIN_CONTRATO_HABITACIONAL_HIST (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    CLIENTE_ID BIGINT NOT NULL,
    DT_ASSINATURA DATE NOT NULL,
    DT_QUITACAO DATE NOT NULL,
    DT_MIGRACAO_HISTORICO DATETIME2 NOT NULL DEFAULT GETDATE(),  -- Coluna de partição
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,
    DT_CADASTRO DATETIME2,
    USUARIO_CADASTRO_NM VARCHAR(50),
    CONSTRAINT PK_FIN_CONTRATO_HABIT_HIST PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) ON PS_CONTRATO_HIST_ANO(DT_MIGRACAO_HISTORICO)
WITH (DATA_COMPRESSION = PAGE);

-- 4. Índices também particionados
CREATE INDEX IX_FIN_CONTRATO_HABIT_HIST_DT_QUIT
ON FIN_CONTRATO_HABITACIONAL_HIST (DT_QUITACAO, DT_MIGRACAO_HISTORICO)
ON PS_CONTRATO_HIST_ANO(DT_MIGRACAO_HISTORICO)
WITH (DATA_COMPRESSION = PAGE);
```

**Gerenciamento de partições anuais** (adicionar nova partição para 2027):

```sql
-- Adicionar filegroup
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_HIST_2027;
ALTER DATABASE DB_FINANCEIRO ADD FILE (
    NAME = 'FG_CONTRATO_HIST_2027_DATA',
    FILENAME = 'D:\MSSQL\DATA\DB_FINANCEIRO_CONTRATO_HIST_2027.ndf',
    SIZE = 5GB, FILEGROWTH = 1GB
) TO FILEGROUP FG_CONTRATO_HIST_2027;

-- Dividir partição (adicionar 2027)
ALTER PARTITION SCHEME PS_CONTRATO_HIST_ANO NEXT USED FG_CONTRATO_HIST_2027;
ALTER PARTITION FUNCTION PF_CONTRATO_HIST_ANO() SPLIT RANGE ('2027-01-01');
```

**Arquivamento de partições antigas** (SWITCH para tabela de archive):

```sql
-- Arquivar partição de 2020 (após 10 anos, antes do expurgo)
CREATE TABLE FIN_CONTRATO_HABIT_HIST_ARCHIVE_2020 (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL,
    -- ... mesma estrutura da tabela principal
    CONSTRAINT PK_ARCHIVE_2020 PRIMARY KEY (CONTRATO_HABITACIONAL_ID, DT_MIGRACAO_HISTORICO)
) ON FG_CONTRATO_HIST_2020
WITH (DATA_COMPRESSION = PAGE);

-- SWITCH instantâneo (sem I/O de dados)
ALTER TABLE FIN_CONTRATO_HABITACIONAL_HIST
SWITCH PARTITION 1 TO FIN_CONTRATO_HABIT_HIST_ARCHIVE_2020;

-- Mesclar partição vazia
ALTER PARTITION FUNCTION PF_CONTRATO_HIST_ANO() MERGE RANGE ('2020-01-01');
```

---

## 5.2 LGPD e Proteção de Dados Sensíveis (CR439 + Lei 13.709/2018)

### 5.2.1 Classificação de Informação (OR016)

A **Orientação Normativa OR016** estabelece níveis de classificação:

| Nível | Sigla | Descrição | Exemplos | Controles |
|-------|-------|-----------|----------|-----------|
| **Público** | PUB | Informações divulgáveis externamente | Produtos bancários, taxas publicadas | Nenhum adicional |
| **Interno** | INT | Uso interno CAIXA (não confidencial) | Processos administrativos, org

anogramas | Controle de acesso básico |
| **Confidencial** | CONF | Informações estratégicas/competitivas | Planos de negócio, análises de risco | Criptografia recomendada, auditoria |
| **Restrito** | REST | Dados pessoais/sensíveis (LGPD) | CPF, dados bancários, saúde | **Criptografia obrigatória**, auditoria detalhada |

#### Mapeamento LGPD → OR016

| Tipo LGPD | Definição (Lei 13.709/2018) | Classificação OR016 | Controles Técnicos |
|-----------|------------------------------|---------------------|--------------------|
| **Dado pessoal** | Informação relacionada a pessoa identificada/identificável | **Confidencial (CONF)** | Pseudonimização, mascaramento |
| **Dado sensível** | Raça, religião, saúde, biometria, genética, orientação sexual | **Restrito (REST)** | Criptografia TDE/Always Encrypted, tabela separada |
| **Dado anonimizado** | Não permite identificação (irreversível) | **Interno (INT)** | Remoção de PII, agregação |

---

### 5.2.2 Dados Pessoais vs Dados Sensíveis

**Dados Pessoais (Art. 5º, I)**:
- Nome completo
- CPF, RG, CNH
- Endereço residencial
- E-mail, telefone
- Data de nascimento
- Dados bancários (conta, agência)
- IP address, geolocalização

**Dados Sensíveis (Art. 5º, II)** - **RESTRITO**:
- Origem racial ou étnica
- Convicção religiosa
- Opinião política
- Filiação sindical
- **Dados de saúde** (histórico médico, exames)
- **Dados biométricos** (impressão digital, reconhecimento facial)
- Dados genéticos
- Orientação sexual

---

### 5.2.3 Estratégias de Proteção de Dados Sensíveis

#### Opção 1: Tabela Separada 1:1 (RECOMENDADO para dados sensíveis)

**Princípio**: Isolar dados sensíveis em tabela dedicada com criptografia adicional.

```sql
-- Tabela principal (dados pessoais não sensíveis)
CREATE TABLE PES_CLIENTE (
    CLIENTE_ID BIGINT NOT NULL,
    NOME_COMPLETO_NM VARCHAR(200) NOT NULL,  -- Dado pessoal (CONF)
    CPF_CD VARCHAR(11) NOT NULL,  -- Dado pessoal (CONF) - hash ou criptografia leve
    EMAIL_TX VARCHAR(100),
    TELEFONE_NR VARCHAR(15),
    ENDERECO_TX VARCHAR(300),
    CLASSIFICACAO_INFO_CD CHAR(4) DEFAULT 'CONF',  -- Metadado OR016
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_PES_CLIENTE PRIMARY KEY (CLIENTE_ID)
) WITH (DATA_COMPRESSION = PAGE);

-- Tabela separada para dados sensíveis (1:1)
CREATE TABLE PES_CLIENTE_DADOS_SENSIVEIS (
    CLIENTE_ID BIGINT NOT NULL,  -- FK para PES_CLIENTE
    DADOS_SAUDE_CRIPTOGRAFADOS VARBINARY(MAX),  -- Always Encrypted ou TDE
    BIOMETRIA_DIGITAL_CRIPTOGRAFADA VARBINARY(MAX),
    ORIGEM_ETNICA_CD CHAR(2),  -- Códigos criptografados
    RELIGIAO_CD CHAR(2),
    CLASSIFICACAO_INFO_CD CHAR(4) DEFAULT 'REST',  -- Metadado OR016
    -- Auditoria específica (quem acessou dados sensíveis)
    DT_ULTIMO_ACESSO DATETIME2,
    USUARIO_ULTIMO_ACESSO_NM VARCHAR(50),
    JUSTIFICATIVA_ACESSO_TX VARCHAR(500),  -- Obrigatório para auditoria LGPD
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_PES_CLIENTE_DADOS_SENSIVEIS PRIMARY KEY (CLIENTE_ID),
    CONSTRAINT FK_PES_CLIENTE_DADOS_SENS FOREIGN KEY (CLIENTE_ID) 
        REFERENCES PES_CLIENTE (CLIENTE_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);

-- Índice proibido em colunas criptografadas (não permite busca)
-- Busca deve ser via CLIENTE_ID ou pseudônimo
```

**Benefícios**:
- ✅ Segregação física (backup separado, criptografia diferenciada)
- ✅ Controle de acesso granular (roles diferentes para cada tabela)
- ✅ Auditoria específica para dados sensíveis
- ✅ Performance: Queries comuns não carregam dados sensíveis

---

#### Opção 2: Criptografia de Coluna (TDE + Always Encrypted)

**TDE (Transparent Data Encryption)**: Criptografia no nível do banco de dados (toda a base).

```sql
-- Habilitar TDE (requer certificado)
USE master;
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SenhaForte@CAIXA2025';
CREATE CERTIFICATE TDE_Cert WITH SUBJECT = 'TDE Certificate CAIXA';

USE DB_FINANCEIRO;
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDE_Cert;

ALTER DATABASE DB_FINANCEIRO SET ENCRYPTION ON;
```

**Always Encrypted**: Criptografia no nível da coluna (dados criptografados mesmo para DBAs).

```sql
-- Coluna criptografada (Always Encrypted - requer configuração no application)
ALTER TABLE PES_CLIENTE_DADOS_SENSIVEIS
ADD DADOS_SAUDE_TX VARCHAR(500) ENCRYPTED WITH (
    COLUMN_ENCRYPTION_KEY = CEK_DADOS_SENSIVEIS,
    ENCRYPTION_TYPE = DETERMINISTIC,  -- Permite =, mas não LIKE
    ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256'
);
```

**IMPORTANTE**: Always Encrypted é transparente para aplicação via driver (Microsoft.Data.SqlClient).

---

#### Opção 3: Pseudonimização (Mascaramento Reversível)

**Pseudonimização**: Substituir identificadores diretos por pseudônimos (permite re-identificação com chave).

```sql
-- Função de pseudonimização (hash com salt)
CREATE FUNCTION dbo.FN_PSEUDONIMIZAR_CPF (@CPF VARCHAR(11))
RETURNS VARCHAR(64)
AS
BEGIN
    DECLARE @Salt VARCHAR(50) = 'CAIXA_SECRET_SALT_2025';  -- Armazenar em config segura
    RETURN CONVERT(VARCHAR(64), HASHBYTES('SHA2_256', @CPF + @Salt), 2);
END;
GO

-- Aplicar na inserção
INSERT INTO PES_CLIENTE (CLIENTE_ID, NOME_COMPLETO_NM, CPF_CD)
VALUES (1, 'João Silva', dbo.FN_PSEUDONIMIZAR_CPF('12345678901'));

-- Busca por CPF pseudonimizado
SELECT * FROM PES_CLIENTE
WHERE CPF_CD = dbo.FN_PSEUDONIMIZAR_CPF('12345678901');
```

**Limitações**:
- ❌ Busca parcial impossível (LIKE não funciona)
- ❌ Ordenação alfabética perdida
- ✅ Proteção contra acesso direto ao banco

---

#### Opção 4: Dynamic Data Masking (Mascaramento Dinâmico)

**DDM**: Mascara dados para usuários não autorizados (sem alterar dados físicos).

```sql
-- Criar coluna com máscara padrão
ALTER TABLE PES_CLIENTE
ADD CPF_MASCARADO_CD VARCHAR(11) MASKED WITH (FUNCTION = 'partial(0,"XXX.XXX.XXX-",2)');

-- Inserir dado real
INSERT INTO PES_CLIENTE (CLIENTE_ID, CPF_MASCARADO_CD)
VALUES (1, '12345678901');

-- Usuário SEM permissão UNMASK vê: XXX.XXX.XXX-01
-- Usuário COM permissão UNMASK vê: 12345678901

-- Conceder permissão para unmask
GRANT UNMASK TO [ROLE_GERENTES_CREDITO];
```

**Tipos de máscaras**:
- `default()`: Mascaramento completo (XXXX)
- `email()`: a***@domain.com
- `partial(prefix, mask, suffix)`: Personalizado
- `random(start, end)`: Valor aleatório (numérico)

---

### 5.2.4 Direito ao Esquecimento (LGPD Art. 18, VI)

**Requisito legal**: Titular pode solicitar **exclusão de dados pessoais** (15 dias para atendimento).

#### Estratégia: Soft Delete + Hard Delete (Expurgo)

```sql
-- Adicionar coluna de soft delete em todas tabelas com dados pessoais
ALTER TABLE PES_CLIENTE
ADD DATA_EXCLUSAO_LGPD DATETIME2 NULL,
    USUARIO_EXCLUSAO_LGPD_NM VARCHAR(50) NULL,
    MOTIVO_EXCLUSAO_LGPD_CD CHAR(2) NULL;  -- DT=Direito Titular, CS=Consentimento, FI=Fim Finalidade

CREATE INDEX IX_PES_CLIENTE_EXCLUSAO_LGPD 
ON PES_CLIENTE (DATA_EXCLUSAO_LGPD) 
WHERE DATA_EXCLUSAO_LGPD IS NOT NULL;

-- Stored Procedure de exclusão LGPD (soft delete)
CREATE OR ALTER PROCEDURE SP_EXCLUIR_CLIENTE_LGPD
    @ClienteID BIGINT,
    @MotivoCD CHAR(2) = 'DT'  -- DT=Direito Titular
AS
BEGIN
    UPDATE PES_CLIENTE
    SET DATA_EXCLUSAO_LGPD = GETDATE(),
        USUARIO_EXCLUSAO_LGPD_NM = SUSER_SNAME(),
        MOTIVO_EXCLUSAO_LGPD_CD = @MotivoCD
    WHERE CLIENTE_ID = @ClienteID;

    -- Soft delete em dados sensíveis
    UPDATE PES_CLIENTE_DADOS_SENSIVEIS
    SET DATA_EXCLUSAO_LGPD = GETDATE()
    WHERE CLIENTE_ID = @ClienteID;

    -- Log LGPD (obrigatório para comprovar atendimento)
    INSERT INTO SYS_LOG_EXCLUSAO_LGPD (
        TABELA_NM, REGISTRO_ID, MOTIVO_CD, DT_SOLICITACAO, DT_EXCLUSAO, USUARIO_NM
    )
    VALUES (
        'PES_CLIENTE', @ClienteID, @MotivoCD, GETDATE(), GETDATE(), SUSER_SNAME()
    );
END;
GO
```

**Queries devem filtrar soft deleted**:

```sql
-- ERRADO (retorna excluídos)
SELECT * FROM PES_CLIENTE WHERE CLIENTE_ID = 123;

-- CORRETO (filtrar soft delete)
SELECT * FROM PES_CLIENTE 
WHERE CLIENTE_ID = 123 
  AND DATA_EXCLUSAO_LGPD IS NULL;

-- Ou usar VIEW para filtrar automaticamente
CREATE VIEW VW_PES_CLIENTE_ATIVOS AS
SELECT * FROM PES_CLIENTE
WHERE DATA_EXCLUSAO_LGPD IS NULL;
```

**Hard delete (expurgo após 180 dias)**:

```sql
CREATE OR ALTER PROCEDURE SP_EXPURGAR_CLIENTES_LGPD
AS
BEGIN
    DECLARE @DataCorte DATETIME2 = DATEADD(DAY, -180, GETDATE());

    DELETE FROM PES_CLIENTE_DADOS_SENSIVEIS
    WHERE DATA_EXCLUSAO_LGPD < @DataCorte;

    DELETE FROM PES_CLIENTE
    WHERE DATA_EXCLUSAO_LGPD < @DataCorte;
END;
GO
```

---

### 5.2.5 Auditoria de Acesso a Dados Sensíveis (Rastreabilidade LGPD)

**Requisito legal**: Comprovar quem acessou/modificou dados pessoais.

#### Trigger de Auditoria para Dados Sensíveis

```sql
CREATE TABLE SYS_AUDITORIA_DADOS_SENSIVEIS (
    AUDITORIA_ID BIGINT IDENTITY(1,1) NOT NULL,
    TABELA_NM VARCHAR(100) NOT NULL,
    REGISTRO_ID BIGINT NOT NULL,
    OPERACAO_CD CHAR(1) NOT NULL,  -- I=Insert, U=Update, D=Delete, S=Select
    USUARIO_NM VARCHAR(50) NOT NULL,
    APLICACAO_NM VARCHAR(100),  -- APP_NAME()
    HOSTNAME_NM VARCHAR(100),  -- HOST_NAME()
    IP_ADDRESS_TX VARCHAR(50),  -- Conexão
    JUSTIFICATIVA_TX VARCHAR(500),  -- Obrigatório para acesso a dados sensíveis
    VALORES_ANTERIORES_TX NVARCHAR(MAX),  -- JSON before
    VALORES_NOVOS_TX NVARCHAR(MAX),  -- JSON after
    DT_OPERACAO DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_SYS_AUDITORIA_DADOS_SENS PRIMARY KEY (AUDITORIA_ID)
) WITH (DATA_COMPRESSION = PAGE);

CREATE INDEX IX_SYS_AUDIT_DADOS_SENS_DT 
ON SYS_AUDITORIA_DADOS_SENSIVEIS (DT_OPERACAO DESC);

CREATE INDEX IX_SYS_AUDIT_DADOS_SENS_USUARIO 
ON SYS_AUDITORIA_DADOS_SENSIVEIS (USUARIO_NM, DT_OPERACAO DESC);

-- Trigger UPDATE em dados sensíveis
CREATE OR ALTER TRIGGER TRG_AUDIT_PES_CLIENTE_DADOS_SENS_UPD
ON PES_CLIENTE_DADOS_SENSIVEIS
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO SYS_AUDITORIA_DADOS_SENSIVEIS (
        TABELA_NM, REGISTRO_ID, OPERACAO_CD, USUARIO_NM, APLICACAO_NM, HOSTNAME_NM,
        VALORES_ANTERIORES_TX, VALORES_NOVOS_TX
    )
    SELECT 
        'PES_CLIENTE_DADOS_SENSIVEIS',
        i.CLIENTE_ID,
        'U',
        SUSER_SNAME(),
        APP_NAME(),
        HOST_NAME(),
        (SELECT d.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER),  -- Before
        (SELECT i.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)   -- After
    FROM inserted i
    INNER JOIN deleted d ON i.CLIENTE_ID = d.CLIENTE_ID;
END;
GO
```

---

**📊 Resumo SUB-PARTE 5.1**:

| Seção | Tópicos Principais | Validações TE074 |
|-------|-------------------|------------------|
| **5.1 Ciclo de Vida** | Retenção online, arquivamento (_HIST/_AUX), expurgo, particionamento histórico | ✅ 3.2.10.1-3.2.10.3 |
| **5.2 LGPD** | Classificação OR016 (REST/CONF), dados sensíveis vs pessoais, criptografia (TDE/Always Encrypted), pseudonimização, DDM, direito ao esquecimento, auditoria de acesso | ✅ CR439, Lei 13.709/2018 |

**Próxima SUB-PARTE**: 5.2 - Frameworks ORM (JPA/Hibernate e Entity Framework Core)

---

## SUB-PARTE 5.2: Frameworks ORM e Boas Práticas (Parte 2 de 4)

> **Objetivo desta SUB-PARTE**: Integrar padrões TE074 com frameworks JPA/Hibernate (Java) e Entity Framework Core (.NET).  
> **Abrangência**: Seção 5.3 - Mapeamento ORM  
> **Base normativa**: TE074 3.2.1-3.2.12 (nomenclatura, tipos, relacionamentos)

---

## 5.3 Frameworks ORM - Mapeamento Objeto-Relacional

### 5.3.1 Princípio Fundamental: TE074 Prevalece Sobre Convenções

**Regra Geral (TE074 3.2.16)**:
> "As convenções dos frameworks ORM são **DESABILITADAS** quando conflitarem com padrões TE074. O modelo de dados CAIXA define a estrutura física, não o framework."

#### Configurações Obrigatórias

**Java - Spring Boot (application.properties)**:
```properties
# CRÍTICO: Desabilitar auto-DDL em TODOS os ambientes
spring.jpa.hibernate.ddl-auto=none

# Validar que o modelo JPA corresponde ao banco (não cria/altera tabelas)
spring.jpa.hibernate.naming.physical-strategy=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl

# Desabilitar schema auto-generation
spring.jpa.generate-ddl=false

# Mostrar SQL (apenas dev/homolog)
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

# Dialeto específico SQL Server
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.SQLServer2012Dialect
```

**.NET - Entity Framework Core (Program.cs/Startup.cs)**:
```csharp
services.AddDbContext<CaixaDbContext>(options =>
{
    options.UseSqlServer(connectionString);
    
    // CRÍTICO: Nunca usar EnsureCreated ou Migrate em runtime
    // options.Database.EnsureCreated();  // ❌ PROIBIDO
    
    // Logging apenas em desenvolvimento
    if (env.IsDevelopment())
    {
        options.EnableSensitiveDataLogging();
        options.LogTo(Console.WriteLine, LogLevel.Information);
    }
});
```

**Migrations controladas manualmente** (não automáticas):
```bash
# .NET - Gerar migration (revisar antes de aplicar)
dotnet ef migrations add MigracaoManual_20260107 --context CaixaDbContext

# Aplicar via script SQL (não via dotnet ef database update)
dotnet ef migrations script --output Scripts/Migration_20260107.sql
```

---

### 5.3.2 JPA/Hibernate - Mapeamento Java

#### Anotações Básicas Conformes TE074

```java
package br.gov.caixa.financeiro.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Data;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Entidade JPA: Contrato Habitacional
 * Tabela física: FIN_CONTRATO_HABITACIONAL (TE074 3.2.1.1)
 * 
 * Nomenclatura:
 * - Tabela: Prefixo FIN_ + nome plural sem abreviações (TE074 3.2.1.2)
 * - PK: CONTRATO_HABITACIONAL_ID (sufixo _ID, tipo BIGINT) (TE074 3.2.3.1)
 * - Colunas: Nome descritivo + sufixo tipo (_CD, _NM, _VL, _DT, _QT)
 */
@Entity
@Table(name = "FIN_CONTRATO_HABITACIONAL")  // TE074 3.2.1.1: Nome exato da tabela
@Data  // Lombok: getters/setters/equals/hashCode/toString
public class ContratoHabitacional {

    /**
     * Chave Primária (TE074 3.2.3.1)
     * - Nome: <TABELA_SEM_PREFIXO>_ID
     * - Tipo: BIGINT (nunca INT)
     * - Estratégia: IDENTITY (SQL Server) ou SEQUENCE (Oracle/PostgreSQL)
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // SQL Server IDENTITY
    @Column(name = "CONTRATO_HABITACIONAL_ID", nullable = false)
    private Long contratoHabitacionalId;

    /**
     * FK para PES_CLIENTE (TE074 3.2.11.5)
     * - Nome coluna: CLIENTE_ID (mesmo nome da PK da tabela pai)
     * - Relacionamento ManyToOne obrigatório
     * - FetchType.LAZY para performance (TE074 recomendação)
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
        name = "CLIENTE_ID",  // TE074 3.2.11.11: Nome exato da FK
        nullable = false,
        foreignKey = @ForeignKey(name = "FK_FIN_CONTRATO_HABIT_CLIENTE")  // TE074 3.2.11.8
    )
    private Cliente cliente;

    /**
     * Código do tipo de contrato (TE074 3.2.12.4)
     * - Tipo: VARCHAR (nunca INT para enumerações)
     * - Sufixo: _CD (código)
     * - Constraint CHECK (validação banco, não apenas Java)
     */
    @Column(name = "TIPO_CONTRATO_CD", nullable = false, length = 20)
    @NotNull
    @Pattern(regexp = "^(SBPE|FGTS|CCFGTS|PROHAB)$", message = "Tipo contrato inválido")
    private String tipoContratoCd;

    /**
     * Data de assinatura (TE074 3.2.12.3)
     * - Tipo: DATE (sem hora) - mapeia para LocalDate
     * - Sufixo: _DT (data sem hora)
     * - Nunca DATETIME/DATETIME2 para datas puras
     */
    @Column(name = "DT_ASSINATURA", nullable = false)
    @NotNull
    @PastOrPresent(message = "Data assinatura não pode ser futura")
    private LocalDate dtAssinatura;

    /**
     * Data de quitação (TE074 3.2.12.3)
     * - Nullable (contrato ainda ativo)
     * - Gatilho para migração ao histórico (_HIST)
     */
    @Column(name = "DT_QUITACAO")
    private LocalDate dtQuitacao;

    /**
     * Valor total do contrato (TE074 3.2.12.1)
     * - Tipo: DECIMAL(15,2) - NUNCA FLOAT/REAL
     * - Sufixo: _VL (valor monetário)
     * - Java: BigDecimal (precisão exata)
     * - Precision 15 (trilhões), scale 2 (centavos)
     */
    @Column(name = "VALOR_TOTAL_VL", nullable = false, precision = 15, scale = 2)
    @NotNull
    @DecimalMin(value = "0.01", message = "Valor deve ser positivo")
    private BigDecimal valorTotalVl;

    /**
     * Quantidade de parcelas (TE074 3.2.12.2)
     * - Tipo: INT (quantidade é inteiro)
     * - Sufixo: _QT (quantidade)
     */
    @Column(name = "PARCELAS_QT", nullable = false)
    @NotNull
    @Min(value = 1, message = "Mínimo 1 parcela")
    @Max(value = 420, message = "Máximo 420 parcelas (35 anos)")
    private Integer parcelasQt;

    /**
     * Status do contrato (TE074 3.2.12.5)
     * - Tipo: CHAR(1) - 'A'=Ativo, 'Q'=Quitado, 'C'=Cancelado
     * - DEFAULT 'A' no banco (não apenas no Java)
     * - Sufixo: _CD (código enumerado)
     */
    @Column(name = "STATUS_CD", nullable = false, length = 1, columnDefinition = "CHAR(1) DEFAULT 'A'")
    @NotNull
    @Pattern(regexp = "^[AQC]$", message = "Status: A/Q/C")
    private String statusCd = "A";  // Default também no Java

    /**
     * Observações (TE074 3.2.12.4)
     * - Tipo: VARCHAR(500) - evitar VARCHAR(MAX)
     * - Sufixo: _TX (texto)
     * - Nullable (opcional)
     */
    @Column(name = "OBSERVACOES_TX", length = 500)
    @Size(max = 500, message = "Máximo 500 caracteres")
    private String observacoesTx;

    // ========== AUDITORIA (TE074 3.2.12.7) ==========

    /**
     * Data de cadastro (TE074 3.2.12.7)
     * - Tipo: DATETIME2 (SQL Server) - mapeia para LocalDateTime
     * - DEFAULT GETDATE() no banco
     * - Sufixo: _DT se sem hora, sem sufixo se com hora
     * - Imutável após criação
     */
    @Column(name = "DT_CADASTRO", nullable = false, updatable = false, 
            columnDefinition = "DATETIME2 DEFAULT GETDATE()")
    private LocalDateTime dtCadastro;

    /**
     * Usuário que cadastrou (TE074 3.2.12.7)
     * - Tipo: VARCHAR(50)
     * - DEFAULT SUSER_SNAME() no banco
     * - Sufixo: _NM (nome/identificador)
     * - Imutável após criação
     */
    @Column(name = "USUARIO_CADASTRO_NM", nullable = false, length = 50, updatable = false,
            columnDefinition = "VARCHAR(50) DEFAULT SUSER_SNAME()")
    private String usuarioCadastroNm;

    /**
     * Data de última atualização (TE074 3.2.12.7)
     * - Nullable (NULL se nunca atualizado)
     * - Atualizado automaticamente por trigger ou JPA @PreUpdate
     */
    @Column(name = "DT_ATUALIZACAO")
    private LocalDateTime dtAtualizacao;

    /**
     * Usuário que atualizou (TE074 3.2.12.7)
     * - Nullable (NULL se nunca atualizado)
     */
    @Column(name = "USUARIO_ATUALIZACAO_NM", length = 50)
    private String usuarioAtualizacaoNm;

    // ========== LIFECYCLE CALLBACKS ==========

    /**
     * Callback antes de inserir (preencher auditoria se não veio do banco DEFAULT)
     */
    @PrePersist
    protected void onCreate() {
        if (this.dtCadastro == null) {
            this.dtCadastro = LocalDateTime.now();
        }
        if (this.usuarioCadastroNm == null) {
            // Em produção, obter do contexto de segurança (Spring Security)
            this.usuarioCadastroNm = System.getProperty("user.name");
        }
    }

    /**
     * Callback antes de atualizar
     */
    @PreUpdate
    protected void onUpdate() {
        this.dtAtualizacao = LocalDateTime.now();
        // Em produção, obter do contexto de segurança
        this.usuarioAtualizacaoNm = System.getProperty("user.name");
    }

    // ========== EQUALS/HASHCODE (ID-based) ==========

    /**
     * Equals/HashCode baseados APENAS na PK (TE074 3.2.3.1)
     * Lombok @Data gera baseado em todos os campos - sobrescrever
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContratoHabitacional)) return false;
        ContratoHabitacional that = (ContratoHabitacional) o;
        return contratoHabitacionalId != null && 
               contratoHabitacionalId.equals(that.contratoHabitacionalId);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();  // Fixo para entities não persistidas
    }
}
```

---

#### Relacionamentos JPA (TE074 3.2.11)

**1. OneToOne (1:1) - Tabelas Auxiliares**

```java
/**
 * Exemplo: PES_CLIENTE (1:1) PES_CLIENTE_DADOS_SENSIVEIS
 * TE074 3.2.11.2: FK vai na tabela dependente (dados sensíveis)
 */

// Lado principal (PES_CLIENTE)
@Entity
@Table(name = "PES_CLIENTE")
public class Cliente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    /**
     * Relacionamento 1:1 opcional (TE074 3.2.11.2)
     * - mappedBy: FK está na outra tabela
     * - optional=true: Cliente pode não ter dados sensíveis
     * - cascade: Operações propagam para dados sensíveis
     */
    @OneToOne(mappedBy = "cliente", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private ClienteDadosSensiveis dadosSensiveis;
}

// Lado dependente (PES_CLIENTE_DADOS_SENSIVEIS)
@Entity
@Table(name = "PES_CLIENTE_DADOS_SENSIVEIS")
public class ClienteDadosSensiveis {
    @Id
    @Column(name = "CLIENTE_ID")  // PK = FK (compartilhada)
    private Long clienteId;

    /**
     * Relacionamento 1:1 obrigatório (TE074 3.2.11.2)
     * - @MapsId: Usa clienteId como PK e FK
     * - optional=false: Dados sensíveis sempre vinculados a cliente
     */
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId  // PK compartilhada
    @JoinColumn(name = "CLIENTE_ID", foreignKey = @ForeignKey(name = "FK_PES_CLIENTE_DADOS_SENS"))
    private Cliente cliente;

    @Column(name = "DADOS_SAUDE_CRIPTOGRAFADOS")
    private byte[] dadosSaudeCriptografados;
}
```

**2. ManyToOne (N:1) - Relacionamento Padrão**

```java
/**
 * Exemplo: FIN_PARCELA (N) -> FIN_CONTRATO_HABITACIONAL (1)
 * TE074 3.2.11.4: FK PARCELA.CONTRATO_HABITACIONAL_ID referencia CONTRATO.CONTRATO_HABITACIONAL_ID
 */

@Entity
@Table(name = "FIN_PARCELA")
public class Parcela {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PARCELA_ID")
    private Long parcelaId;

    /**
     * FK para FIN_CONTRATO_HABITACIONAL (TE074 3.2.11.5)
     * - Obrigatória (optional=false)
     * - FetchType.LAZY para evitar N+1 queries
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
        name = "CONTRATO_HABITACIONAL_ID",
        nullable = false,
        foreignKey = @ForeignKey(
            name = "FK_FIN_PARCELA_CONTRATO",
            foreignKeyDefinition = "FOREIGN KEY (CONTRATO_HABITACIONAL_ID) " +
                                   "REFERENCES FIN_CONTRATO_HABITACIONAL (CONTRATO_HABITACIONAL_ID) " +
                                   "ON DELETE RESTRICT"  // TE074 3.2.11.12
        )
    )
    private ContratoHabitacional contratoHabitacional;

    @Column(name = "NUMERO_PARCELA_NR", nullable = false)
    private Integer numeroParcelaNr;

    @Column(name = "VALOR_VL", nullable = false, precision = 15, scale = 2)
    private BigDecimal valorVl;
}

// Lado inverso (opcional para navegação bidirecional)
@Entity
@Table(name = "FIN_CONTRATO_HABITACIONAL")
public class ContratoHabitacional {
    // ... outros campos

    /**
     * Navegação reversa (1:N) - TE074 3.2.11.3
     * - mappedBy: FK está em Parcela
     * - cascade: DELETE cascata (se contrato deletado, deleta parcelas)
     * - orphanRemoval: Remove parcelas órfãs
     */
    @OneToMany(mappedBy = "contratoHabitacional", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Parcela> parcelas = new ArrayList<>();

    // Métodos de conveniência
    public void addParcela(Parcela parcela) {
        parcelas.add(parcela);
        parcela.setContratoHabitacional(this);
    }

    public void removeParcela(Parcela parcela) {
        parcelas.remove(parcela);
        parcela.setContratoHabitacional(null);
    }
}
```

**3. ManyToMany (N:M) - Tabela Associativa (TE074 3.2.11.3)**

```java
/**
 * Exemplo: PES_CLIENTE (N) <-> FIN_PRODUTO (M) via FIN_CLIENTE_PRODUTO
 * TE074 3.2.11.15: Relacionamentos paralelos não permitidos - usar tabela associativa
 */

@Entity
@Table(name = "PES_CLIENTE")
public class Cliente {
    @Id
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    /**
     * ManyToMany com tabela associativa explícita (TE074 3.2.11.3)
     * - @JoinTable: Define tabela intermediária FIN_CLIENTE_PRODUTO
     * - joinColumns: FK para PES_CLIENTE
     * - inverseJoinColumns: FK para FIN_PRODUTO
     */
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "FIN_CLIENTE_PRODUTO",  // Tabela associativa
        joinColumns = @JoinColumn(
            name = "CLIENTE_ID",
            foreignKey = @ForeignKey(name = "FK_FIN_CLIENTE_PROD_CLIENTE")
        ),
        inverseJoinColumns = @JoinColumn(
            name = "PRODUTO_ID",
            foreignKey = @ForeignKey(name = "FK_FIN_CLIENTE_PROD_PRODUTO")
        )
    )
    private Set<Produto> produtos = new HashSet<>();
}

@Entity
@Table(name = "FIN_PRODUTO")
public class Produto {
    @Id
    @Column(name = "PRODUTO_ID")
    private Long produtoId;

    // Lado inverso (opcional)
    @ManyToMany(mappedBy = "produtos")
    private Set<Cliente> clientes = new HashSet<>();
}

/**
 * Se tabela associativa tem atributos extras (TE074 3.2.11.15.1)
 * - Criar entidade própria para FIN_CLIENTE_PRODUTO
 */
@Entity
@Table(name = "FIN_CLIENTE_PRODUTO")
public class ClienteProduto {
    @EmbeddedId
    private ClienteProdutoId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("clienteId")
    @JoinColumn(name = "CLIENTE_ID")
    private Cliente cliente;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("produtoId")
    @JoinColumn(name = "PRODUTO_ID")
    private Produto produto;

    @Column(name = "DT_VINCULACAO", nullable = false)
    private LocalDateTime dtVinculacao;

    @Column(name = "STATUS_CD", nullable = false, length = 1)
    private String statusCd = "A";
}

@Embeddable
public class ClienteProdutoId implements Serializable {
    @Column(name = "CLIENTE_ID")
    private Long clienteId;

    @Column(name = "PRODUTO_ID")
    private Long produtoId;

    // equals/hashCode obrigatórios
}
```

**4. Auto-relacionamento (TE074 3.2.11.6)**

```java
/**
 * Exemplo: Estrutura hierárquica (gerente -> funcionários)
 * TE074 3.2.11.6: Ambas associações opcionais (primeiro/último elemento)
 */

@Entity
@Table(name = "ORG_FUNCIONARIO")
public class Funcionario {
    @Id
    @Column(name = "FUNCIONARIO_ID")
    private Long funcionarioId;

    /**
     * Auto-relacionamento opcional (TE074 3.2.11.6)
     * - opcional=true: Funcionário raiz (presidente) não tem gerente
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(
        name = "GERENTE_ID",
        foreignKey = @ForeignKey(name = "FK_ORG_FUNCIONARIO_GERENTE")
    )
    private Funcionario gerente;

    /**
     * Navegação reversa (subordinados)
     */
    @OneToMany(mappedBy = "gerente")
    private List<Funcionario> subordinados = new ArrayList<>();
}
```

---

#### Naming Strategy Personalizada (TE074 compliance)

```java
package br.gov.caixa.infrastructure.jpa;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategy;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

/**
 * Strategy personalizada para garantir TE074 3.2.1.1
 * - Nomes em UPPERCASE
 * - Sem underscores automáticos (snake_case)
 * - Usa nomes exatos das anotações @Table/@Column
 */
public class TE074PhysicalNamingStrategy implements PhysicalNamingStrategy {

    @Override
    public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        // Usar nome exato de @Table (não converter para snake_case)
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        // Usar nome exato de @Column
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalSequenceName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalSchemaName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name != null ? Identifier.toIdentifier(name.getText().toUpperCase()) : null;
    }

    @Override
    public Identifier toPhysicalCatalogName(Identifier name, JdbcEnvironment jdbcEnvironment) {
        return name;
    }
}
```

**Configuração no application.properties**:
```properties
spring.jpa.hibernate.naming.physical-strategy=br.gov.caixa.infrastructure.jpa.TE074PhysicalNamingStrategy
```

---

### 5.3.3 Entity Framework Core - Mapeamento .NET

#### Configuração Fluent API (Recomendado para TE074)

```csharp
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.ComponentModel.DataAnnotations;

namespace Caixa.Financeiro.Domain.Entities
{
    /// <summary>
    /// Entidade: Contrato Habitacional
    /// Tabela: FIN_CONTRATO_HABITACIONAL (TE074 3.2.1.1)
    /// </summary>
    public class ContratoHabitacional
    {
        /// <summary>
        /// PK: CONTRATO_HABITACIONAL_ID (TE074 3.2.3.1)
        /// Tipo: BIGINT IDENTITY
        /// </summary>
        public long ContratoHabitacionalId { get; set; }

        /// <summary>
        /// FK para PES_CLIENTE (TE074 3.2.11.5)
        /// </summary>
        public long ClienteId { get; set; }

        /// <summary>
        /// Tipo de contrato (TE074 3.2.12.4)
        /// Valores: SBPE, FGTS, CCFGTS, PROHAB
        /// </summary>
        [Required]
        [StringLength(20)]
        [RegularExpression(@"^(SBPE|FGTS|CCFGTS|PROHAB)$")]
        public string TipoContratoCd { get; set; }

        /// <summary>
        /// Data de assinatura (TE074 3.2.12.3)
        /// Tipo: DATE (sem hora)
        /// </summary>
        [Required]
        public DateTime DtAssinatura { get; set; }

        /// <summary>
        /// Data de quitação (opcional) (TE074 3.2.12.3)
        /// </summary>
        public DateTime? DtQuitacao { get; set; }

        /// <summary>
        /// Valor total (TE074 3.2.12.1)
        /// Tipo: DECIMAL(15,2) - NUNCA FLOAT
        /// </summary>
        [Required]
        [Range(0.01, double.MaxValue)]
        public decimal ValorTotalVl { get; set; }

        /// <summary>
        /// Quantidade de parcelas (TE074 3.2.12.2)
        /// </summary>
        [Required]
        [Range(1, 420)]
        public int ParcelasQt { get; set; }

        /// <summary>
        /// Status (TE074 3.2.12.5)
        /// A=Ativo, Q=Quitado, C=Cancelado
        /// </summary>
        [Required]
        [StringLength(1)]
        [RegularExpression(@"^[AQC]$")]
        public string StatusCd { get; set; } = "A";

        /// <summary>
        /// Observações (TE074 3.2.12.4)
        /// </summary>
        [StringLength(500)]
        public string ObservacoesTx { get; set; }

        // ========== AUDITORIA (TE074 3.2.12.7) ==========

        [Required]
        public DateTime DtCadastro { get; set; }

        [Required]
        [StringLength(50)]
        public string UsuarioCadastroNm { get; set; }

        public DateTime? DtAtualizacao { get; set; }

        [StringLength(50)]
        public string UsuarioAtualizacaoNm { get; set; }

        // ========== NAVIGATION PROPERTIES ==========

        public Cliente Cliente { get; set; }
        public ICollection<Parcela> Parcelas { get; set; } = new List<Parcela>();
    }
}
```

**Configuração Fluent API (IEntityTypeConfiguration)**:

```csharp
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Caixa.Financeiro.Infrastructure.Persistence.Configurations
{
    /// <summary>
    /// Configuração EF Core para ContratoHabitacional
    /// Implementa regras TE074 via Fluent API
    /// </summary>
    public class ContratoHabitacionalConfiguration : IEntityTypeConfiguration<ContratoHabitacional>
    {
        public void Configure(EntityTypeBuilder<ContratoHabitacional> builder)
        {
            // ========== TABELA (TE074 3.2.1.1) ==========
            builder.ToTable("FIN_CONTRATO_HABITACIONAL");

            // ========== PRIMARY KEY (TE074 3.2.3.1) ==========
            builder.HasKey(c => c.ContratoHabitacionalId)
                .HasName("PK_FIN_CONTRATO_HABITACIONAL");

            builder.Property(c => c.ContratoHabitacionalId)
                .HasColumnName("CONTRATO_HABITACIONAL_ID")
                .IsRequired()
                .UseIdentityColumn();  // SQL Server IDENTITY

            // ========== FOREIGN KEYS (TE074 3.2.11) ==========
            builder.HasOne(c => c.Cliente)
                .WithMany()
                .HasForeignKey(c => c.ClienteId)
                .HasConstraintName("FK_FIN_CONTRATO_HABIT_CLIENTE")
                .OnDelete(DeleteBehavior.Restrict);  // TE074 3.2.11.12: RESTRICT padrão

            builder.Property(c => c.ClienteId)
                .HasColumnName("CLIENTE_ID")
                .IsRequired();

            // ========== COLUNAS COM TIPO ESPECÍFICO ==========

            // VARCHAR(20) com CHECK constraint (TE074 3.2.12.4)
            builder.Property(c => c.TipoContratoCd)
                .HasColumnName("TIPO_CONTRATO_CD")
                .HasColumnType("VARCHAR(20)")
                .IsRequired()
                .HasMaxLength(20);

            // Adicionar CHECK constraint manualmente via migration
            // ALTER TABLE FIN_CONTRATO_HABITACIONAL 
            // ADD CONSTRAINT CK_FIN_CONTRATO_TIPO 
            // CHECK (TIPO_CONTRATO_CD IN ('SBPE','FGTS','CCFGTS','PROHAB'))

            // DATE sem hora (TE074 3.2.12.3)
            builder.Property(c => c.DtAssinatura)
                .HasColumnName("DT_ASSINATURA")
                .HasColumnType("DATE")
                .IsRequired();

            builder.Property(c => c.DtQuitacao)
                .HasColumnName("DT_QUITACAO")
                .HasColumnType("DATE")
                .IsRequired(false);

            // DECIMAL(15,2) para monetário (TE074 3.2.12.1)
            builder.Property(c => c.ValorTotalVl)
                .HasColumnName("VALOR_TOTAL_VL")
                .HasColumnType("DECIMAL(15,2)")
                .IsRequired();

            // INT para quantidade (TE074 3.2.12.2)
            builder.Property(c => c.ParcelasQt)
                .HasColumnName("PARCELAS_QT")
                .HasColumnType("INT")
                .IsRequired();

            // CHAR(1) com DEFAULT (TE074 3.2.12.5)
            builder.Property(c => c.StatusCd)
                .HasColumnName("STATUS_CD")
                .HasColumnType("CHAR(1)")
                .IsRequired()
                .HasMaxLength(1)
                .HasDefaultValue("A");  // DEFAULT 'A' no banco

            // VARCHAR(500) (TE074 3.2.12.4 - evitar VARCHAR(MAX))
            builder.Property(c => c.ObservacoesTx)
                .HasColumnName("OBSERVACOES_TX")
                .HasColumnType("VARCHAR(500)")
                .IsRequired(false)
                .HasMaxLength(500);

            // ========== AUDITORIA (TE074 3.2.12.7) ==========

            builder.Property(c => c.DtCadastro)
                .HasColumnName("DT_CADASTRO")
                .HasColumnType("DATETIME2")
                .IsRequired()
                .HasDefaultValueSql("GETDATE()")  // DEFAULT GETDATE()
                .ValueGeneratedOnAdd();  // Não atualizar em UPDATE

            builder.Property(c => c.UsuarioCadastroNm)
                .HasColumnName("USUARIO_CADASTRO_NM")
                .HasColumnType("VARCHAR(50)")
                .IsRequired()
                .HasMaxLength(50)
                .HasDefaultValueSql("SUSER_SNAME()")  // DEFAULT SUSER_SNAME()
                .ValueGeneratedOnAdd();

            builder.Property(c => c.DtAtualizacao)
                .HasColumnName("DT_ATUALIZACAO")
                .HasColumnType("DATETIME2")
                .IsRequired(false);

            builder.Property(c => c.UsuarioAtualizacaoNm)
                .HasColumnName("USUARIO_ATUALIZACAO_NM")
                .HasColumnType("VARCHAR(50)")
                .IsRequired(false)
                .HasMaxLength(50);

            // ========== RELACIONAMENTOS (TE074 3.2.11) ==========

            // OneToMany: Contrato -> Parcelas
            builder.HasMany(c => c.Parcelas)
                .WithOne(p => p.ContratoHabitacional)
                .HasForeignKey(p => p.ContratoHabitacionalId)
                .HasConstraintName("FK_FIN_PARCELA_CONTRATO")
                .OnDelete(DeleteBehavior.Cascade);  // DELETE CASCADE para dependentes

            // ========== ÍNDICES (TE074 3.2.11.5) ==========

            // Índice em FK (obrigatório TE074)
            builder.HasIndex(c => c.ClienteId)
                .HasDatabaseName("IX_FIN_CONTRATO_HABIT_CLIENTE");

            // Índice composto (data assinatura + status)
            builder.HasIndex(c => new { c.DtAssinatura, c.StatusCd })
                .HasDatabaseName("IX_FIN_CONTRATO_DT_ASSIN_STATUS");

            // ========== COMPACTAÇÃO (TE074 3.2.9.1) ==========
            // Configurar via migration manual:
            // CREATE TABLE ... WITH (DATA_COMPRESSION = PAGE)
        }
    }
}
```

**DbContext**:

```csharp
using Microsoft.EntityFrameworkCore;

namespace Caixa.Financeiro.Infrastructure.Persistence
{
    public class CaixaDbContext : DbContext
    {
        public CaixaDbContext(DbContextOptions<CaixaDbContext> options) : base(options) { }

        public DbSet<ContratoHabitacional> ContratosHabitacionais { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Parcela> Parcelas { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Aplicar todas as configurações IEntityTypeConfiguration
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(CaixaDbContext).Assembly);

            // Convenções globais TE074
            foreach (var entityType in modelBuilder.Model.GetEntityTypes())
            {
                // Todas PKs são BIGINT
                var primaryKey = entityType.FindPrimaryKey();
                if (primaryKey != null)
                {
                    foreach (var property in primaryKey.Properties)
                    {
                        property.SetColumnType("BIGINT");
                    }
                }

                // Todas strings VARCHAR (não NVARCHAR) exceto se Unicode explícito
                foreach (var property in entityType.GetProperties())
                {
                    if (property.ClrType == typeof(string) && !property.IsUnicode())
                    {
                        property.SetIsUnicode(false);
                    }
                }
            }
        }

        public override int SaveChanges()
        {
            AtualizarAuditoria();
            return base.SaveChanges();
        }

        public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            AtualizarAuditoria();
            return await base.SaveChangesAsync(cancellationToken);
        }

        /// <summary>
        /// Atualiza campos de auditoria automaticamente (TE074 3.2.12.7)
        /// </summary>
        private void AtualizarAuditoria()
        {
            var entries = ChangeTracker.Entries()
                .Where(e => e.State == EntityState.Added || e.State == EntityState.Modified);

            foreach (var entry in entries)
            {
                if (entry.State == EntityState.Added)
                {
                    // Preencher DT_CADASTRO e USUARIO_CADASTRO_NM se não vieram do DEFAULT
                    if (entry.Property("DtCadastro").CurrentValue == null)
                    {
                        entry.Property("DtCadastro").CurrentValue = DateTime.Now;
                    }
                    if (entry.Property("UsuarioCadastroNm").CurrentValue == null)
                    {
                        // Em produção, obter do contexto de autenticação
                        entry.Property("UsuarioCadastroNm").CurrentValue = Environment.UserName;
                    }
                }
                else if (entry.State == EntityState.Modified)
                {
                    // Atualizar DT_ATUALIZACAO e USUARIO_ATUALIZACAO_NM
                    entry.Property("DtAtualizacao").CurrentValue = DateTime.Now;
                    // Em produção, obter do contexto de autenticação
                    entry.Property("UsuarioAtualizacaoNm").CurrentValue = Environment.UserName;
                }
            }
        }
    }
}
```

---

#### Migrations Manuais (Controle de DDL)

**Gerar migration**:
```bash
dotnet ef migrations add CriacaoTabelaContratoHabitacional --context CaixaDbContext --output-dir Infrastructure/Persistence/Migrations
```

**Revisar e ajustar migration gerada** (adicionar TE074 compliance):

```csharp
using Microsoft.EntityFrameworkCore.Migrations;

public partial class CriacaoTabelaContratoHabitacional : Migration
{
    protected override void Up(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.CreateTable(
            name: "FIN_CONTRATO_HABITACIONAL",
            columns: table => new
            {
                CONTRATO_HABITACIONAL_ID = table.Column<long>(type: "BIGINT", nullable: false)
                    .Annotation("SqlServer:Identity", "1, 1"),
                CLIENTE_ID = table.Column<long>(type: "BIGINT", nullable: false),
                TIPO_CONTRATO_CD = table.Column<string>(type: "VARCHAR(20)", maxLength: 20, nullable: false),
                DT_ASSINATURA = table.Column<DateTime>(type: "DATE", nullable: false),
                DT_QUITACAO = table.Column<DateTime>(type: "DATE", nullable: true),
                VALOR_TOTAL_VL = table.Column<decimal>(type: "DECIMAL(15,2)", nullable: false),
                PARCELAS_QT = table.Column<int>(type: "INT", nullable: false),
                STATUS_CD = table.Column<string>(type: "CHAR(1)", maxLength: 1, nullable: false, defaultValue: "A"),
                OBSERVACOES_TX = table.Column<string>(type: "VARCHAR(500)", maxLength: 500, nullable: true),
                DT_CADASTRO = table.Column<DateTime>(type: "DATETIME2", nullable: false, defaultValueSql: "GETDATE()"),
                USUARIO_CADASTRO_NM = table.Column<string>(type: "VARCHAR(50)", maxLength: 50, nullable: false, defaultValueSql: "SUSER_SNAME()"),
                DT_ATUALIZACAO = table.Column<DateTime>(type: "DATETIME2", nullable: true),
                USUARIO_ATUALIZACAO_NM = table.Column<string>(type: "VARCHAR(50)", maxLength: 50, nullable: true)
            },
            constraints: table =>
            {
                table.PrimaryKey("PK_FIN_CONTRATO_HABITACIONAL", x => x.CONTRATO_HABITACIONAL_ID);
                table.ForeignKey(
                    name: "FK_FIN_CONTRATO_HABIT_CLIENTE",
                    column: x => x.CLIENTE_ID,
                    principalTable: "PES_CLIENTE",
                    principalColumn: "CLIENTE_ID",
                    onDelete: ReferentialAction.Restrict);
            });

        // ========== AJUSTES MANUAIS TE074 ==========

        // 1. Compactação PAGE (TE074 3.2.9.1)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL REBUILD WITH (DATA_COMPRESSION = PAGE);
        ");

        // 2. CHECK Constraint para TIPO_CONTRATO_CD (TE074 3.2.12.4)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL
            ADD CONSTRAINT CK_FIN_CONTRATO_TIPO
            CHECK (TIPO_CONTRATO_CD IN ('SBPE', 'FGTS', 'CCFGTS', 'PROHAB'));
        ");

        // 3. CHECK Constraint para STATUS_CD (TE074 3.2.12.5)
        migrationBuilder.Sql(@"
            ALTER TABLE FIN_CONTRATO_HABITACIONAL
            ADD CONSTRAINT CK_FIN_CONTRATO_STATUS
            CHECK (STATUS_CD IN ('A', 'Q', 'C'));
        ");

        // 4. Índice em FK (TE074 3.2.11.5 - obrigatório)
        migrationBuilder.CreateIndex(
            name: "IX_FIN_CONTRATO_HABIT_CLIENTE",
            table: "FIN_CONTRATO_HABITACIONAL",
            column: "CLIENTE_ID")
            .Annotation("SqlServer:Include", new[] { "STATUS_CD", "DT_ASSINATURA" });  // Covering index

        // 5. Índice composto (queries comuns)
        migrationBuilder.CreateIndex(
            name: "IX_FIN_CONTRATO_DT_ASSIN_STATUS",
            table: "FIN_CONTRATO_HABITACIONAL",
            columns: new[] { "DT_ASSINATURA", "STATUS_CD" });

        // 6. Descrição da tabela (TE074 3.2.2.1 - metadados)
        migrationBuilder.Sql(@"
            EXEC sp_addextendedproperty 
                @name = N'MS_Description', 
                @value = N'Contratos habitacionais (SBPE, FGTS, CCFGTS, PROHAB) - Sistema Financeiro', 
                @level0type = N'SCHEMA', @level0name = N'dbo',
                @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL';
        ");

        // 7. Descrições de colunas principais
        migrationBuilder.Sql(@"
            EXEC sp_addextendedproperty 
                @name = N'MS_Description', 
                @value = N'Identificador único do contrato habitacional (PK)', 
                @level0type = N'SCHEMA', @level0name = N'dbo',
                @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL',
                @level2type = N'COLUMN', @level2name = N'CONTRATO_HABITACIONAL_ID';
        ");
    }

    protected override void Down(MigrationBuilder migrationBuilder)
    {
        migrationBuilder.DropTable(name: "FIN_CONTRATO_HABITACIONAL");
    }
}
```

**Gerar script SQL (não aplicar direto)**:
```bash
dotnet ef migrations script --output Scripts/Migration_20260107_ContratoHabitacional.sql --context CaixaDbContext
```

**Aplicar manualmente via SQL Server Management Studio** (SSMS) após revisão do ABD.

---

### 5.3.4 Boas Práticas Comuns (Java + .NET)

#### DTOs (Data Transfer Objects) - Evitar Exposição de Entities

```java
// Java - DTO para API REST
@Data
public class ContratoHabitacionalDTO {
    private Long contratoHabitacionalId;
    private Long clienteId;
    private String clienteNomeCompleto;  // JOIN com PES_CLIENTE
    private String tipoContratoCd;
    private LocalDate dtAssinatura;
    private LocalDate dtQuitacao;
    private BigDecimal valorTotalVl;
    private Integer parcelasQt;
    private String statusCd;
    
    // Conversão Entity -> DTO
    public static ContratoHabitacionalDTO fromEntity(ContratoHabitacional entity) {
        ContratoHabitacionalDTO dto = new ContratoHabitacionalDTO();
        dto.setContratoHabitacionalId(entity.getContratoHabitacionalId());
        dto.setClienteId(entity.getCliente().getClienteId());
        dto.setClienteNomeCompleto(entity.getCliente().getNomeCompletoNm());
        // ... outros campos
        return dto;
    }
}
```

```csharp
// .NET - DTO para API
public class ContratoHabitacionalDTO
{
    public long ContratoHabitacionalId { get; set; }
    public long ClienteId { get; set; }
    public string ClienteNomeCompleto { get; set; }
    public string TipoContratoCd { get; set; }
    public DateTime DtAssinatura { get; set; }
    public DateTime? DtQuitacao { get; set; }
    public decimal ValorTotalVl { get; set; }
    public int ParcelasQt { get; set; }
    public string StatusCd { get; set; }

    // Conversão Entity -> DTO (manual ou AutoMapper)
    public static ContratoHabitacionalDTO FromEntity(ContratoHabitacional entity)
    {
        return new ContratoHabitacionalDTO
        {
            ContratoHabitacionalId = entity.ContratoHabitacionalId,
            ClienteId = entity.ClienteId,
            ClienteNomeCompleto = entity.Cliente?.NomeCompletoNm,
            TipoContratoCd = entity.TipoContratoCd,
            DtAssinatura = entity.DtAssinatura,
            // ... outros campos
        };
    }
}
```

#### Projeções em Queries (Performance)

```java
// Java - Spring Data JPA Projection (evitar carregar entity completa)
public interface ContratoResumo {
    Long getContratoHabitacionalId();
    String getTipoContratoCd();
    BigDecimal getValorTotalVl();
    String getClienteNomeCompletoNm();  // JOIN
}

@Repository
public interface ContratoHabitacionalRepository extends JpaRepository<ContratoHabitacional, Long> {
    
    @Query("SELECT c.contratoHabitacionalId AS contratoHabitacionalId, " +
           "       c.tipoContratoCd AS tipoContratoCd, " +
           "       c.valorTotalVl AS valorTotalVl, " +
           "       cl.nomeCompletoNm AS clienteNomeCompletoNm " +
           "FROM ContratoHabitacional c " +
           "JOIN c.cliente cl " +
           "WHERE c.statusCd = :status " +
           "ORDER BY c.dtAssinatura DESC")
    List<ContratoResumo> findResumoPorStatus(@Param("status") String status);
}
```

```csharp
// .NET - LINQ Select Projection
var contratos = await _context.ContratosHabitacionais
    .Where(c => c.StatusCd == "A")
    .Select(c => new ContratoHabitacionalDTO
    {
        ContratoHabitacionalId = c.ContratoHabitacionalId,
        TipoContratoCd = c.TipoContratoCd,
        ValorTotalVl = c.ValorTotalVl,
        ClienteNomeCompleto = c.Cliente.NomeCompletoNm
    })
    .OrderByDescending(c => c.DtAssinatura)
    .ToListAsync();
```

---

**📊 Resumo SUB-PARTE 5.2**:

| Tópico | Java (JPA/Hibernate) | .NET (EF Core) | Validações TE074 |
|--------|----------------------|----------------|------------------|
| **DDL Auto-generation** | `ddl-auto=none` | Migrations manuais | ✅ 3.2.16: TE074 prevalece |
| **Nomenclatura** | `@Table(name="...")`<br>`@Column(name="...")` | `ToTable("...")`<br>`HasColumnName("...")` | ✅ 3.2.1.1: Nomes exatos |
| **PKs** | `BIGINT IDENTITY`<br>`@GeneratedValue` | `BIGINT IDENTITY`<br>`UseIdentityColumn()` | ✅ 3.2.3.1: BIGINT, sufixo _ID |
| **FKs** | `@ManyToOne`<br>`@JoinColumn` | `HasOne().WithMany()`<br>`HasForeignKey()` | ✅ 3.2.11.5: Nome = PK da tabela pai |
| **Tipos Monetários** | `BigDecimal`<br>`@Column(precision=15, scale=2)` | `decimal`<br>`HasColumnType("DECIMAL(15,2)")` | ✅ 3.2.12.1: DECIMAL(15,2), nunca FLOAT |
| **Enumerações** | `String VARCHAR(20)` | `string VARCHAR(20)` | ✅ 3.2.12.4: VARCHAR, não INT |
| **Auditoria** | `@PrePersist`/`@PreUpdate` | `SaveChanges()` override | ✅ 3.2.12.7: DT_CADASTRO, USUARIO_CADASTRO_NM |
| **Compactação** | Migration manual `DATA_COMPRESSION=PAGE` | Migration manual `DATA_COMPRESSION=PAGE` | ✅ 3.2.9.1: PAGE obrigatória |

**Próxima SUB-PARTE**: 5.3 - Spring Batch e Modelagem Dimensional

---

## SUB-PARTE 5.3: Spring Batch e Modelagem Dimensional (Parte 3 de 4)

> **Objetivo desta SUB-PARTE**: Definir padrões para tabelas Spring Batch e modelagem dimensional (Data Warehouse).  
> **Abrangência**: Seções 5.4 e 5.5  
> **Base normativa**: TE074 3.2.1-3.2.12 aplicados a contextos específicos (batch processing e analytics)

---

## 5.4 Spring Batch - Modelagem de Tabelas Metadata

### 5.4.1 Visão Geral do Spring Batch

**Spring Batch** é um framework Java para processamento em lote (batch processing):
- **Job**: Unidade de trabalho (ex: importação mensal de contratos)
- **Step**: Etapa do job (ex: leitura CSV → processamento → escrita no banco)
- **JobRepository**: Persistência de metadados de execução

**Tabelas padrão Spring Batch** (schema original):
- `BATCH_JOB_INSTANCE`: Instâncias de jobs (unique per parameters)
- `BATCH_JOB_EXECUTION`: Execuções de jobs (status, timestamps)
- `BATCH_STEP_EXECUTION`: Execuções de steps
- `BATCH_JOB_EXECUTION_PARAMS`: Parâmetros de cada execução
- `BATCH_JOB_EXECUTION_CONTEXT`: Contexto persistente (restart)
- `BATCH_STEP_EXECUTION_CONTEXT`: Contexto de steps

**Adaptação CAIXA** (TE074 3.2.1.1):
> Prefixo obrigatório: **SPB_** (Spring Batch)  
> Nomenclatura: **SPB_JOB_INSTANCIA**, **SPB_JOB_EXECUCAO**, etc.

---

### 5.4.2 Tabelas Spring Batch Adaptadas (TE074)

#### DDL Completo - SQL Server

```sql
-- ========================================
-- 1. SPB_JOB_INSTANCIA (BATCH_JOB_INSTANCE)
-- ========================================
-- Armazena instâncias únicas de jobs
-- PK: Identificador único da instância
-- UK: Job name + hash dos parâmetros (garante unicidade)

CREATE TABLE SPB_JOB_INSTANCIA (
    JOB_INSTANCIA_ID BIGINT NOT NULL IDENTITY(1,1),  -- TE074 3.2.3.1: BIGINT, sufixo _ID
    VERSAO_NR INT NOT NULL DEFAULT 0,  -- Controle de versionamento (optimistic locking)
    JOB_NM VARCHAR(100) NOT NULL,  -- Nome do job (TE074 3.2.12.4: _NM para nome)
    JOB_KEY_TX VARCHAR(32) NOT NULL,  -- Hash MD5 dos parâmetros (unicidade)
    -- Auditoria (TE074 3.2.12.7)
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_JOB_INSTANCIA PRIMARY KEY (JOB_INSTANCIA_ID),
    CONSTRAINT UK_SPB_JOB_INST_JOB_KEY UNIQUE (JOB_NM, JOB_KEY_TX)  -- TE074 3.2.6.1: UK explícita
) WITH (DATA_COMPRESSION = PAGE);  -- TE074 3.2.9.1: Compactação obrigatória
GO

CREATE INDEX IX_SPB_JOB_INSTANCIA_JOB_NM ON SPB_JOB_INSTANCIA (JOB_NM);
GO

-- ========================================
-- 2. SPB_JOB_EXECUCAO (BATCH_JOB_EXECUTION)
-- ========================================
-- Armazena execuções de jobs (pode haver múltiplas execuções da mesma instância)
-- Uma instância pode ter várias execuções (restarts)

CREATE TABLE SPB_JOB_EXECUCAO (
    JOB_EXECUCAO_ID BIGINT NOT NULL IDENTITY(1,1),
    VERSAO_NR INT NOT NULL DEFAULT 0,
    JOB_INSTANCIA_ID BIGINT NOT NULL,  -- FK para SPB_JOB_INSTANCIA
    DT_CRIACAO DATETIME2 NOT NULL DEFAULT GETDATE(),
    DT_INICIO DATETIME2 NULL,  -- Quando job iniciou (NULL se ainda não iniciado)
    DT_FIM DATETIME2 NULL,  -- Quando job terminou
    STATUS_CD VARCHAR(10) NOT NULL DEFAULT 'STARTED',  -- COMPLETED, STARTING, STARTED, STOPPING, STOPPED, FAILED, ABANDONED, UNKNOWN
    EXIT_CODE_CD VARCHAR(20) NULL,  -- COMPLETED, FAILED, STOPPED, UNKNOWN
    EXIT_MESSAGE_TX VARCHAR(2500) NULL,  -- Mensagem de saída (erro ou sucesso)
    ULTIMA_ATUALIZACAO_DT DATETIME2 NULL,  -- Timestamp da última atualização
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_JOB_EXECUCAO PRIMARY KEY (JOB_EXECUCAO_ID),
    CONSTRAINT FK_SPB_JOB_EXEC_INSTANCIA FOREIGN KEY (JOB_INSTANCIA_ID) 
        REFERENCES SPB_JOB_INSTANCIA (JOB_INSTANCIA_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_JOB_EXEC_STATUS CHECK (STATUS_CD IN ('COMPLETED', 'STARTING', 'STARTED', 'STOPPING', 'STOPPED', 'FAILED', 'ABANDONED', 'UNKNOWN'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_JOB_EXEC_INSTANCIA ON SPB_JOB_EXECUCAO (JOB_INSTANCIA_ID);
CREATE INDEX IX_SPB_JOB_EXEC_DT_INICIO ON SPB_JOB_EXECUCAO (DT_INICIO DESC);
CREATE INDEX IX_SPB_JOB_EXEC_STATUS ON SPB_JOB_EXECUCAO (STATUS_CD, DT_INICIO DESC);
GO

-- ========================================
-- 3. SPB_JOB_PARAMETRO (BATCH_JOB_EXECUTION_PARAMS)
-- ========================================
-- Armazena parâmetros de cada execução de job
-- Relacionamento: 1 JOB_EXECUCAO -> N PARAMETROS

CREATE TABLE SPB_JOB_PARAMETRO (
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- FK composta (parte da PK)
    PARAMETRO_NM VARCHAR(100) NOT NULL,  -- Nome do parâmetro
    TIPO_CD VARCHAR(10) NOT NULL,  -- STRING, DATE, LONG, DOUBLE
    VALOR_STRING_TX VARCHAR(250) NULL,  -- Valor se tipo STRING
    VALOR_DATA_DT DATETIME2 NULL,  -- Valor se tipo DATE
    VALOR_LONG_NR BIGINT NULL,  -- Valor se tipo LONG
    VALOR_DOUBLE_NR FLOAT NULL,  -- Valor se tipo DOUBLE (único caso onde FLOAT é aceitável - compatibilidade Spring Batch)
    IDENTIFICADOR_FL CHAR(1) NOT NULL DEFAULT 'S',  -- 'S'/'N' - Se compõe a identidade do job (TE074 3.2.12.5: CHAR(1))
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_SPB_JOB_PARAMETRO PRIMARY KEY (JOB_EXECUCAO_ID, PARAMETRO_NM),  -- PK composta (TE074 3.2.3.2)
    CONSTRAINT FK_SPB_JOB_PARAM_EXEC FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_JOB_PARAM_TIPO CHECK (TIPO_CD IN ('STRING', 'DATE', 'LONG', 'DOUBLE')),
    CONSTRAINT CK_SPB_JOB_PARAM_IDENT CHECK (IDENTIFICADOR_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_JOB_PARAM_EXEC_ID ON SPB_JOB_PARAMETRO (JOB_EXECUCAO_ID);
GO

-- ========================================
-- 4. SPB_PASSO_EXECUCAO (BATCH_STEP_EXECUTION)
-- ========================================
-- Armazena execuções de steps (passos de um job)
-- Relacionamento: 1 JOB_EXECUCAO -> N PASSO_EXECUCAO

CREATE TABLE SPB_PASSO_EXECUCAO (
    PASSO_EXECUCAO_ID BIGINT NOT NULL IDENTITY(1,1),
    VERSAO_NR INT NOT NULL DEFAULT 0,
    PASSO_NM VARCHAR(100) NOT NULL,  -- Nome do step
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- FK para SPB_JOB_EXECUCAO
    DT_INICIO DATETIME2 NOT NULL DEFAULT GETDATE(),
    DT_FIM DATETIME2 NULL,
    STATUS_CD VARCHAR(10) NOT NULL DEFAULT 'STARTED',  -- COMPLETED, STARTING, STARTED, STOPPING, STOPPED, FAILED, ABANDONED, UNKNOWN
    COMMIT_COUNT_QT INT NOT NULL DEFAULT 0,  -- Quantidade de commits (TE074 3.2.12.2: _QT para quantidade)
    READ_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens lidos
    FILTER_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens filtrados
    WRITE_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens escritos
    READ_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados na leitura (erro)
    WRITE_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados na escrita (erro)
    PROCESS_SKIP_COUNT_QT INT NOT NULL DEFAULT 0,  -- Itens pulados no processamento
    ROLLBACK_COUNT_QT INT NOT NULL DEFAULT 0,  -- Quantidade de rollbacks
    EXIT_CODE_CD VARCHAR(20) NULL,
    EXIT_MESSAGE_TX VARCHAR(2500) NULL,
    ULTIMA_ATUALIZACAO_DT DATETIME2 NULL,
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    USUARIO_CADASTRO_NM VARCHAR(50) DEFAULT SUSER_SNAME(),
    CONSTRAINT PK_SPB_PASSO_EXECUCAO PRIMARY KEY (PASSO_EXECUCAO_ID),
    CONSTRAINT FK_SPB_PASSO_EXEC_JOB FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE,
    CONSTRAINT CK_SPB_PASSO_EXEC_STATUS CHECK (STATUS_CD IN ('COMPLETED', 'STARTING', 'STARTED', 'STOPPING', 'STOPPED', 'FAILED', 'ABANDONED', 'UNKNOWN'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_SPB_PASSO_EXEC_JOB_ID ON SPB_PASSO_EXECUCAO (JOB_EXECUCAO_ID);
CREATE INDEX IX_SPB_PASSO_EXEC_DT_INICIO ON SPB_PASSO_EXECUCAO (DT_INICIO DESC);
GO

-- ========================================
-- 5. SPB_JOB_CONTEXTO (BATCH_JOB_EXECUTION_CONTEXT)
-- ========================================
-- Armazena contexto de execução de job (para restart)
-- Contexto serializado em JSON/XML

CREATE TABLE SPB_JOB_CONTEXTO (
    JOB_EXECUCAO_ID BIGINT NOT NULL,  -- PK = FK (1:1 com SPB_JOB_EXECUCAO)
    CONTEXTO_CURTO_TX VARCHAR(2500) NULL,  -- Contexto pequeno (< 2500 chars)
    CONTEXTO_SERIALIZADO_TX VARCHAR(MAX) NULL,  -- Contexto completo (JSON/XML)
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    DT_ATUALIZACAO DATETIME2,
    CONSTRAINT PK_SPB_JOB_CONTEXTO PRIMARY KEY (JOB_EXECUCAO_ID),
    CONSTRAINT FK_SPB_JOB_CTX_EXEC FOREIGN KEY (JOB_EXECUCAO_ID) 
        REFERENCES SPB_JOB_EXECUCAO (JOB_EXECUCAO_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- 6. SPB_PASSO_CONTEXTO (BATCH_STEP_EXECUTION_CONTEXT)
-- ========================================
-- Armazena contexto de execução de step (para restart)

CREATE TABLE SPB_PASSO_CONTEXTO (
    PASSO_EXECUCAO_ID BIGINT NOT NULL,  -- PK = FK (1:1 com SPB_PASSO_EXECUCAO)
    CONTEXTO_CURTO_TX VARCHAR(2500) NULL,
    CONTEXTO_SERIALIZADO_TX VARCHAR(MAX) NULL,
    -- Auditoria
    DT_CADASTRO DATETIME2 DEFAULT GETDATE(),
    DT_ATUALIZACAO DATETIME2,
    CONSTRAINT PK_SPB_PASSO_CONTEXTO PRIMARY KEY (PASSO_EXECUCAO_ID),
    CONSTRAINT FK_SPB_PASSO_CTX_EXEC FOREIGN KEY (PASSO_EXECUCAO_ID) 
        REFERENCES SPB_PASSO_EXECUCAO (PASSO_EXECUCAO_ID) ON DELETE CASCADE
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- SEQUENCES (caso não use IDENTITY)
-- ========================================
-- Spring Batch usa sequences para geração de IDs
-- SQL Server: IDENTITY é preferível (TE074), mas sequences são suportadas

CREATE SEQUENCE SEQ_SPB_JOB_INSTANCIA START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_SPB_JOB_EXECUCAO START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_SPB_PASSO_EXECUCAO START WITH 1 INCREMENT BY 1;
GO
```

---

### 5.4.3 Configuração Spring Batch (application.properties)

```properties
# ========================================
# SPRING BATCH - TABELAS PERSONALIZADAS CAIXA
# ========================================

# Prefixo das tabelas (TE074 3.2.1.2: SPB_)
spring.batch.jdbc.table-prefix=SPB_

# Schema (deixar vazio se usar schema padrão dbo)
spring.batch.jdbc.schema=

# Inicialização do schema (NEVER em produção - DDL manual)
spring.batch.jdbc.initialize-schema=never

# Isolamento transacional
spring.batch.jdbc.isolation-level-for-create=SERIALIZABLE

# ========================================
# DATASOURCE
# ========================================
spring.datasource.url=jdbc:sqlserver://localhost:1433;databaseName=DB_BATCH;encrypt=true;trustServerCertificate=true
spring.datasource.username=${DB_USER}
spring.datasource.password=${DB_PASSWORD}
spring.datasource.driver-class-name=com.microsoft.sqlserver.jdbc.SQLServerDriver

# Pool de conexões (HikariCP)
spring.datasource.hikari.maximum-pool-size=10
spring.datasource.hikari.minimum-idle=2
spring.datasource.hikari.connection-timeout=30000
```

---

### 5.4.4 Mapeamento Spring Batch (CustomBatchConfigurer)

**Classe customizada para usar nomenclatura CAIXA**:

```java
package br.gov.caixa.batch.config;

import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.repository.support.JobRepositoryFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

/**
 * Configurador customizado para usar prefixo SPB_ (TE074 3.2.1.2)
 * Sobrescreve configuração padrão do Spring Batch
 */
@Configuration
public class CaixaBatchConfigurer extends DefaultBatchConfigurer {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private PlatformTransactionManager transactionManager;

    @Override
    protected JobRepository createJobRepository() throws Exception {
        JobRepositoryFactoryBean factory = new JobRepositoryFactoryBean();
        factory.setDataSource(dataSource);
        factory.setTransactionManager(transactionManager);
        
        // Prefixo das tabelas (TE074 compliance)
        factory.setTablePrefix("SPB_");
        
        // Isolamento transacional
        factory.setIsolationLevelForCreate("ISOLATION_SERIALIZABLE");
        
        factory.afterPropertiesSet();
        return factory.getObject();
    }
}
```

**Exemplo de Job Definition**:

```java
package br.gov.caixa.batch.jobs;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import javax.sql.DataSource;
import java.math.BigDecimal;

@Configuration
@EnableBatchProcessing
public class ImportacaoContratosBatchConfig {

    @Autowired
    private JobBuilderFactory jobBuilderFactory;

    @Autowired
    private StepBuilderFactory stepBuilderFactory;

    @Autowired
    private DataSource dataSource;

    /**
     * Job: Importação mensal de contratos habitacionais
     * Nome: JOB_IMPORTACAO_CONTRATOS_MENSAL
     */
    @Bean
    public Job importacaoContratosJob() {
        return jobBuilderFactory.get("JOB_IMPORTACAO_CONTRATOS_MENSAL")
            .incrementer(new RunIdIncrementer())  // Parâmetro automático run.id
            .start(stepLeituraArquivo())
            .next(stepValidacaoDados())
            .next(stepGravacaoBanco())
            .build();
    }

    @Bean
    public Step stepLeituraArquivo() {
        return stepBuilderFactory.get("STEP_LEITURA_CSV")
            .<ContratoDTO, ContratoDTO>chunk(1000)  // Commit a cada 1000 registros
            .reader(contratoReader())
            .processor(contratoProcessor())
            .writer(contratoWriter())
            .faultTolerant()
            .skipLimit(10)  // Pula até 10 erros
            .skip(Exception.class)
            .build();
    }

    @Bean
    public FlatFileItemReader<ContratoDTO> contratoReader() {
        return new FlatFileItemReaderBuilder<ContratoDTO>()
            .name("contratoReader")
            .resource(new ClassPathResource("contratos_mensal.csv"))
            .delimited()
            .delimiter(";")
            .names("clienteId", "tipoContrato", "dtAssinatura", "valorTotal", "parcelas")
            .targetType(ContratoDTO.class)
            .build();
    }

    @Bean
    public ItemProcessor<ContratoDTO, ContratoDTO> contratoProcessor() {
        return contrato -> {
            // Validações customizadas
            if (contrato.getValorTotal().compareTo(BigDecimal.ZERO) <= 0) {
                throw new IllegalArgumentException("Valor total inválido");
            }
            return contrato;
        };
    }

    @Bean
    public JdbcBatchItemWriter<ContratoDTO> contratoWriter() {
        return new JdbcBatchItemWriterBuilder<ContratoDTO>()
            .dataSource(dataSource)
            .sql("INSERT INTO FIN_CONTRATO_HABITACIONAL " +
                 "(CLIENTE_ID, TIPO_CONTRATO_CD, DT_ASSINATURA, VALOR_TOTAL_VL, PARCELAS_QT, STATUS_CD) " +
                 "VALUES (:clienteId, :tipoContrato, :dtAssinatura, :valorTotal, :parcelas, 'A')")
            .beanMapped()
            .build();
    }

    // Steps adicionais...
}
```

---

### 5.4.5 Particionamento e Retenção (TE074 3.2.8.3, 3.2.10)

**Critério de particionamento**:
- Tabelas SPB_JOB_EXECUCAO e SPB_PASSO_EXECUCAO podem exceder **100M execuções/ano** em ambientes com muitos jobs
- **Particionamento por ano** (coluna DT_INICIO)

**Política de retenção**:
- **Desenvolvimento**: 90 dias
- **Produção**: 6 meses
- **Histórico**: Migrar para SPB_JOB_EXECUCAO_HIST após 6 meses

**Stored Procedure de arquivamento**:

```sql
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_EXECUCOES_BATCH
    @DiasRetencao INT = 180  -- 6 meses padrão
AS
BEGIN
    DECLARE @DataCorte DATETIME2 = DATEADD(DAY, -@DiasRetencao, GETDATE());

    -- Arquivar execuções antigas (apenas jobs concluídos/finalizados)
    INSERT INTO SPB_JOB_EXECUCAO_HIST 
    SELECT * FROM SPB_JOB_EXECUCAO
    WHERE DT_FIM < @DataCorte
      AND STATUS_CD IN ('COMPLETED', 'FAILED', 'STOPPED');

    -- Deletar (cascade deleta parametros, passos, contextos)
    DELETE FROM SPB_JOB_EXECUCAO
    WHERE DT_FIM < @DataCorte
      AND STATUS_CD IN ('COMPLETED', 'FAILED', 'STOPPED');
END;
GO
```

---

## 5.5 Modelagem Dimensional (Data Warehouse)

### 5.5.1 Conceitos Fundamentais

**Data Warehouse (DW)**: Repositório analítico otimizado para consultas agregadas (OLAP), não transações (OLTP).

**Diferenças OLTP vs OLAP**:

| Aspecto | OLTP (Transacional) | OLAP (Analítico/DW) |
|---------|---------------------|---------------------|
| **Objetivo** | Operações do dia-a-dia | Análises e relatórios |
| **Normalização** | 3NF (normalizado) | Desnormalizado (star/snowflake) |
| **Queries** | INSERT/UPDATE/DELETE frequentes | SELECT agregados (SUM, AVG, GROUP BY) |
| **Volumetria** | Dados recentes (online) | Histórico completo (anos) |
| **Performance** | Latência baixa (ms) | Throughput alto (milhões de linhas) |
| **Índices** | B-tree (PKs, FKs) | Columnstore, particionamento |
| **Exemplo** | FIN_CONTRATO_HABITACIONAL | FATO_CONTRATO_HABITACIONAL |

---

### 5.5.2 Nomenclatura TE074 para DW

| Tipo de Objeto | Prefixo | Exemplo | Descrição |
|----------------|---------|---------|-----------|
| **Tabela Fato** | `FATO_` | `FATO_VENDAS`, `FATO_CONTRATOS` | Métricas/medidas (valores, quantidades) |
| **Tabela Dimensão** | `DIM_` | `DIM_CLIENTE`, `DIM_TEMPO` | Atributos descritivos (quem, quando, onde) |
| **Staging** | `STG_` | `STG_VENDAS_CSV` | Área de carga inicial (raw data) |
| **Integração** | `INT_` | `INT_VENDAS_LIMPO` | Área de transformação/limpeza |
| **Data Mart** | `DM_` | `DM_VENDAS_REGIAO_SUL` | Subconjunto do DW (área específica) |

**Sufixos para colunas dimensionais/fatos**:

| Sufixo | Uso | Exemplo |
|--------|-----|---------|
| `_SK` | Surrogate Key (chave artificial da dimensão) | `CLIENTE_SK` (BIGINT IDENTITY) |
| `_NK` | Natural Key (chave de negócio original) | `CLIENTE_NK` (CPF, ID do sistema OLTP) |
| `_VL` | Valor/Medida (fato) | `VALOR_TOTAL_VL`, `RECEITA_VL` |
| `_QT` | Quantidade (fato) | `PARCELAS_QT`, `ITENS_VENDIDOS_QT` |
| `_DT` | Data (dimensão ou fato) | `DT_ASSINATURA`, `DT_VENDA` |
| `_DS` | Descrição | `CLIENTE_DS`, `PRODUTO_DS` |
| `_CD` | Código | `TIPO_CONTRATO_CD`, `REGIAO_CD` |

---

### 5.5.3 Star Schema (Esquema Estrela)

**Estrutura**:
- **1 tabela FATO** (centro): Métricas numéricas
- **N tabelas DIM** (pontas): Atributos descritivos
- **Relacionamentos**: Fato → Dimensão (N:1)

#### Exemplo: Fato Contratos Habitacionais

```sql
-- ========================================
-- DIMENSÕES
-- ========================================

-- DIM_CLIENTE (Slowly Changing Dimension Type 2)
CREATE TABLE DIM_CLIENTE (
    CLIENTE_SK BIGINT NOT NULL IDENTITY(1,1),  -- Surrogate key (TE074 3.2.3.1)
    CLIENTE_NK BIGINT NOT NULL,  -- Natural key (CLIENTE_ID do sistema OLTP)
    CPF_CD VARCHAR(11),  -- Atributo de negócio
    NOME_COMPLETO_NM VARCHAR(200),
    EMAIL_TX VARCHAR(100),
    TELEFONE_NR VARCHAR(15),
    ENDERECO_TX VARCHAR(300),
    CIDADE_NM VARCHAR(100),
    UF_CD CHAR(2),
    -- SCD Type 2 (versionamento)
    DT_INICIO_VIGENCIA DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE),  -- Quando essa versão começou
    DT_FIM_VIGENCIA DATE NULL,  -- Quando essa versão terminou (NULL = vigente)
    VERSAO_ATUAL_FL CHAR(1) NOT NULL DEFAULT 'S',  -- 'S' = versão atual, 'N' = histórica
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),  -- Quando foi carregado no DW
    CONSTRAINT PK_DIM_CLIENTE PRIMARY KEY (CLIENTE_SK),
    CONSTRAINT CK_DIM_CLIENTE_VERSAO_ATUAL CHECK (VERSAO_ATUAL_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_DIM_CLIENTE_NK ON DIM_CLIENTE (CLIENTE_NK, VERSAO_ATUAL_FL);
CREATE INDEX IX_DIM_CLIENTE_CPF ON DIM_CLIENTE (CPF_CD) WHERE VERSAO_ATUAL_FL = 'S';
GO

-- DIM_TEMPO (Dimensão de tempo pré-populada)
CREATE TABLE DIM_TEMPO (
    TEMPO_SK INT NOT NULL,  -- YYYYMMDD (ex: 20260107)
    DATA_COMPLETA_DT DATE NOT NULL,
    ANO_NR INT NOT NULL,
    MES_NR INT NOT NULL,
    DIA_NR INT NOT NULL,
    TRIMESTRE_NR INT NOT NULL,
    SEMESTRE_NR INT NOT NULL,
    DIA_SEMANA_NR INT NOT NULL,  -- 1=Domingo, 7=Sábado
    DIA_SEMANA_NM VARCHAR(20) NOT NULL,  -- 'Segunda-feira'
    MES_NM VARCHAR(20) NOT NULL,  -- 'Janeiro'
    DIA_UTIL_FL CHAR(1) NOT NULL,  -- 'S'/'N'
    FERIADO_FL CHAR(1) NOT NULL,  -- 'S'/'N'
    FERIADO_DS VARCHAR(100),  -- Nome do feriado
    ANO_MES_CD CHAR(6) NOT NULL,  -- YYYYMM (ex: 202601)
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_TEMPO PRIMARY KEY (TEMPO_SK),
    CONSTRAINT CK_DIM_TEMPO_DIA_UTIL CHECK (DIA_UTIL_FL IN ('S', 'N')),
    CONSTRAINT CK_DIM_TEMPO_FERIADO CHECK (FERIADO_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

CREATE INDEX IX_DIM_TEMPO_DATA ON DIM_TEMPO (DATA_COMPLETA_DT);
CREATE INDEX IX_DIM_TEMPO_ANO_MES ON DIM_TEMPO (ANO_NR, MES_NR);
GO

-- DIM_TIPO_CONTRATO (Dimensão pequena - lookup)
CREATE TABLE DIM_TIPO_CONTRATO (
    TIPO_CONTRATO_SK INT NOT NULL IDENTITY(1,1),
    TIPO_CONTRATO_CD VARCHAR(20) NOT NULL UNIQUE,  -- SBPE, FGTS, CCFGTS, PROHAB
    TIPO_CONTRATO_DS VARCHAR(100) NOT NULL,  -- Descrição completa
    CATEGORIA_NM VARCHAR(50),  -- Habitacional, Comercial, etc.
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_TIPO_CONTRATO PRIMARY KEY (TIPO_CONTRATO_SK)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- DIM_STATUS (Dimensão pequena - lookup)
CREATE TABLE DIM_STATUS (
    STATUS_SK INT NOT NULL IDENTITY(1,1),
    STATUS_CD CHAR(1) NOT NULL UNIQUE,  -- A, Q, C
    STATUS_DS VARCHAR(50) NOT NULL,  -- Ativo, Quitado, Cancelado
    CATEGORIA_NM VARCHAR(20),  -- Operacional, Finalizado
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    CONSTRAINT PK_DIM_STATUS PRIMARY KEY (STATUS_SK)
) WITH (DATA_COMPRESSION = PAGE);
GO

-- ========================================
-- TABELA FATO
-- ========================================

CREATE TABLE FATO_CONTRATO_HABITACIONAL (
    -- Surrogate Keys (FKs para dimensões)
    CLIENTE_SK BIGINT NOT NULL,  -- FK para DIM_CLIENTE
    DT_ASSINATURA_SK INT NOT NULL,  -- FK para DIM_TEMPO (YYYYMMDD)
    DT_QUITACAO_SK INT NULL,  -- FK para DIM_TEMPO (NULL se não quitado)
    TIPO_CONTRATO_SK INT NOT NULL,  -- FK para DIM_TIPO_CONTRATO
    STATUS_SK INT NOT NULL,  -- FK para DIM_STATUS
    
    -- Degenerate Dimension (chave de negócio no fato - sem dimensão própria)
    CONTRATO_HABITACIONAL_NK BIGINT NOT NULL,  -- ID original do OLTP
    
    -- Métricas/Medidas (aditivas)
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,  -- Valor total do contrato (TE074 3.2.12.1)
    PARCELAS_QT INT NOT NULL,  -- Quantidade de parcelas
    VALOR_PARCELA_VL DECIMAL(15,2) NOT NULL,  -- Valor médio da parcela
    PRAZO_MESES_QT INT NOT NULL,  -- Prazo em meses
    
    -- Métricas calculadas (semi-aditivas - depende da dimensão tempo)
    JUROS_TAXA_VL DECIMAL(5,4),  -- Taxa de juros anual (ex: 0.0850 = 8.5%)
    VALOR_TOTAL_PAGO_VL DECIMAL(15,2),  -- Total pago até o momento (parcial)
    SALDO_DEVEDOR_VL DECIMAL(15,2),  -- Saldo devedor atual
    
    -- Flags (fatos binários)
    QUITADO_FL CHAR(1) NOT NULL DEFAULT 'N',  -- 'S'/'N'
    INADIMPLENTE_FL CHAR(1) NOT NULL DEFAULT 'N',  -- 'S'/'N'
    
    -- Auditoria
    DT_CARGA DATETIME2 DEFAULT GETDATE(),  -- Quando foi carregado no DW
    DT_ATUALIZACAO DATETIME2,  -- Última atualização (para fatos mutáveis)
    
    -- Constraints
    CONSTRAINT PK_FATO_CONTRATO_HABIT PRIMARY KEY (CONTRATO_HABITACIONAL_NK),  -- PK = NK (único contrato)
    CONSTRAINT FK_FATO_CONTRATO_CLIENTE FOREIGN KEY (CLIENTE_SK) 
        REFERENCES DIM_CLIENTE (CLIENTE_SK),
    CONSTRAINT FK_FATO_CONTRATO_DT_ASSIN FOREIGN KEY (DT_ASSINATURA_SK) 
        REFERENCES DIM_TEMPO (TEMPO_SK),
    CONSTRAINT FK_FATO_CONTRATO_DT_QUIT FOREIGN KEY (DT_QUITACAO_SK) 
        REFERENCES DIM_TEMPO (TEMPO_SK),
    CONSTRAINT FK_FATO_CONTRATO_TIPO FOREIGN KEY (TIPO_CONTRATO_SK) 
        REFERENCES DIM_TIPO_CONTRATO (TIPO_CONTRATO_SK),
    CONSTRAINT FK_FATO_CONTRATO_STATUS FOREIGN KEY (STATUS_SK) 
        REFERENCES DIM_STATUS (STATUS_SK),
    CONSTRAINT CK_FATO_CONTRATO_QUITADO CHECK (QUITADO_FL IN ('S', 'N')),
    CONSTRAINT CK_FATO_CONTRATO_INADIM CHECK (INADIMPLENTE_FL IN ('S', 'N'))
) WITH (DATA_COMPRESSION = PAGE);
GO

-- Índices para análises comuns
CREATE INDEX IX_FATO_CONTRATO_CLIENTE ON FATO_CONTRATO_HABITACIONAL (CLIENTE_SK);
CREATE INDEX IX_FATO_CONTRATO_DT_ASSIN ON FATO_CONTRATO_HABITACIONAL (DT_ASSINATURA_SK);
CREATE INDEX IX_FATO_CONTRATO_TIPO ON FATO_CONTRATO_HABITACIONAL (TIPO_CONTRATO_SK);
CREATE INDEX IX_FATO_CONTRATO_STATUS ON FATO_CONTRATO_HABITACIONAL (STATUS_SK);

-- Índice columnstore para queries analíticas (TE074 3.2.4.4 - DW)
CREATE NONCLUSTERED COLUMNSTORE INDEX IX_FATO_CONTRATO_COLUMNSTORE
ON FATO_CONTRATO_HABITACIONAL (
    CLIENTE_SK, DT_ASSINATURA_SK, TIPO_CONTRATO_SK, STATUS_SK,
    VALOR_TOTAL_VL, PARCELAS_QT, VALOR_PARCELA_VL, QUITADO_FL
);
GO
```

---

### 5.5.4 Slowly Changing Dimensions (SCD)

**SCD Type 1**: Sobrescrever (sem histórico)

```sql
-- Exemplo: Correção de endereço (não guardar versão antiga)
UPDATE DIM_CLIENTE
SET ENDERECO_TX = 'Rua Nova, 123',
    CIDADE_NM = 'Brasília',
    UF_CD = 'DF',
    DT_ATUALIZACAO = GETDATE()
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'S';
```

**SCD Type 2**: Versionamento (histórico completo) - **RECOMENDADO CAIXA**

```sql
-- Exemplo: Cliente mudou de cidade - criar nova versão
BEGIN TRANSACTION;

-- 1. Expirar versão atual
UPDATE DIM_CLIENTE
SET DT_FIM_VIGENCIA = CAST(GETDATE() AS DATE),
    VERSAO_ATUAL_FL = 'N'
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'S';

-- 2. Inserir nova versão
INSERT INTO DIM_CLIENTE (
    CLIENTE_NK, CPF_CD, NOME_COMPLETO_NM, EMAIL_TX, TELEFONE_NR,
    ENDERECO_TX, CIDADE_NM, UF_CD,
    DT_INICIO_VIGENCIA, DT_FIM_VIGENCIA, VERSAO_ATUAL_FL
)
SELECT 
    CLIENTE_NK, CPF_CD, NOME_COMPLETO_NM, EMAIL_TX, TELEFONE_NR,
    'Rua Nova, 123' AS ENDERECO_TX,  -- Novo endereço
    'São Paulo' AS CIDADE_NM,  -- Nova cidade
    'SP' AS UF_CD,  -- Novo UF
    CAST(GETDATE() AS DATE) AS DT_INICIO_VIGENCIA,
    NULL AS DT_FIM_VIGENCIA,  -- Vigente
    'S' AS VERSAO_ATUAL_FL
FROM DIM_CLIENTE
WHERE CLIENTE_NK = 12345
  AND VERSAO_ATUAL_FL = 'N'  -- Versão que acabou de expirar
  AND DT_FIM_VIGENCIA = CAST(GETDATE() AS DATE);

COMMIT TRANSACTION;
```

**SCD Type 3**: Colunas separadas (versão atual + anterior)

```sql
-- Exemplo: Guardar apenas última alteração
ALTER TABLE DIM_CLIENTE ADD ENDERECO_ANTERIOR_TX VARCHAR(300);
ALTER TABLE DIM_CLIENTE ADD DT_MUDANCA_ENDERECO DATE;

UPDATE DIM_CLIENTE
SET ENDERECO_ANTERIOR_TX = ENDERECO_TX,  -- Guardar anterior
    ENDERECO_TX = 'Rua Nova, 123',  -- Atualizar atual
    DT_MUDANCA_ENDERECO = GETDATE()
WHERE CLIENTE_NK = 12345;
```

---

### 5.5.5 Snowflake Schema (Normalização de Dimensões)

**Quando usar**: Dimensões muito grandes com hierarquias (ex: Geografia: País → Estado → Cidade).

```sql
-- DIM_CIDADE (normalizada)
CREATE TABLE DIM_CIDADE (
    CIDADE_SK INT NOT NULL IDENTITY(1,1),
    CIDADE_NM VARCHAR(100) NOT NULL,
    UF_SK INT NOT NULL,  -- FK para DIM_UF
    POPULACAO_QT INT,
    CONSTRAINT PK_DIM_CIDADE PRIMARY KEY (CIDADE_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- DIM_UF (normalizada)
CREATE TABLE DIM_UF (
    UF_SK INT NOT NULL IDENTITY(1,1),
    UF_CD CHAR(2) NOT NULL UNIQUE,
    UF_NM VARCHAR(50) NOT NULL,
    REGIAO_SK INT NOT NULL,  -- FK para DIM_REGIAO
    CONSTRAINT PK_DIM_UF PRIMARY KEY (UF_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- DIM_REGIAO (normalizada)
CREATE TABLE DIM_REGIAO (
    REGIAO_SK INT NOT NULL IDENTITY(1,1),
    REGIAO_CD VARCHAR(10) NOT NULL UNIQUE,  -- SUL, SUDESTE, NORDESTE, NORTE, CENTRO-OESTE
    REGIAO_NM VARCHAR(50) NOT NULL,
    CONSTRAINT PK_DIM_REGIAO PRIMARY KEY (REGIAO_SK)
) WITH (DATA_COMPRESSION = PAGE);

-- FKs (snowflake)
ALTER TABLE DIM_CIDADE ADD CONSTRAINT FK_DIM_CIDADE_UF 
    FOREIGN KEY (UF_SK) REFERENCES DIM_UF (UF_SK);

ALTER TABLE DIM_UF ADD CONSTRAINT FK_DIM_UF_REGIAO 
    FOREIGN KEY (REGIAO_SK) REFERENCES DIM_REGIAO (REGIAO_SK);
```

**Vantagem**: Reduz redundância (nome da região não se repete em cada cidade).  
**Desvantagem**: Mais JOINs (performance), maior complexidade.

---

### 5.5.6 ETL Layers (Staging → Integration → Data Warehouse)

```sql
-- ========================================
-- LAYER 1: STAGING (STG_) - Carga bruta
-- ========================================
-- Dados extraídos "as is" de sistemas OLTP, CSVs, APIs

CREATE TABLE STG_CONTRATOS_OLTP (
    CONTRATO_ID BIGINT,  -- Sem constraints (aceita duplicados, nulos)
    CLIENTE_ID BIGINT,
    TIPO_CONTRATO VARCHAR(50),  -- Pode vir com inconsistências
    DT_ASSINATURA VARCHAR(20),  -- Texto (não validado)
    VALOR_TOTAL VARCHAR(30),  -- Texto (pode ter R$, vírgulas)
    PARCELAS VARCHAR(10),
    STATUS VARCHAR(10),
    -- Metadados de carga
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    ARQUIVO_ORIGEM_NM VARCHAR(200)
);
-- SEM compactação, SEM índices (tabela temporária, truncada a cada carga)

-- ========================================
-- LAYER 2: INTEGRATION (INT_) - Limpeza e transformação
-- ========================================
-- Dados limpos, validados, padronizados

CREATE TABLE INT_CONTRATOS_LIMPO (
    CONTRATO_ID BIGINT NOT NULL PRIMARY KEY,  -- Já validado (único)
    CLIENTE_ID BIGINT NOT NULL,
    TIPO_CONTRATO_CD VARCHAR(20) NOT NULL,  -- Padronizado (SBPE, FGTS)
    DT_ASSINATURA DATE NOT NULL,  -- Convertido para DATE
    VALOR_TOTAL_VL DECIMAL(15,2) NOT NULL,  -- Limpo (sem R$, vírgulas)
    PARCELAS_QT INT NOT NULL,
    STATUS_CD CHAR(1) NOT NULL,  -- A/Q/C
    -- Metadados
    DT_CARGA DATETIME2 DEFAULT GETDATE(),
    VALIDACAO_OK_FL CHAR(1) DEFAULT 'S'
) WITH (DATA_COMPRESSION = PAGE);

-- ========================================
-- LAYER 3: DATA WAREHOUSE (FATO_, DIM_)
-- ========================================
-- Modelo dimensional otimizado para análise (já criado acima)

-- ========================================
-- ETL PROCESS (exemplo simplificado)
-- ========================================

-- 1. Truncar staging (limpar carga anterior)
TRUNCATE TABLE STG_CONTRATOS_OLTP;

-- 2. Carregar dados brutos (BULK INSERT, SSIS, Azure Data Factory)
BULK INSERT STG_CONTRATOS_OLTP
FROM 'C:\Dados\contratos_20260107.csv'
WITH (FIELDTERMINATOR = ';', ROWTERMINATOR = '\n', FIRSTROW = 2);

-- 3. Limpar e transformar para INT_
INSERT INTO INT_CONTRATOS_LIMPO (
    CONTRATO_ID, CLIENTE_ID, TIPO_CONTRATO_CD, DT_ASSINATURA,
    VALOR_TOTAL_VL, PARCELAS_QT, STATUS_CD
)
SELECT 
    CONTRATO_ID,
    CLIENTE_ID,
    UPPER(LTRIM(RTRIM(TIPO_CONTRATO))) AS TIPO_CONTRATO_CD,  -- Limpar espaços
    TRY_CAST(DT_ASSINATURA AS DATE) AS DT_ASSINATURA,  -- Conversão segura
    TRY_CAST(REPLACE(REPLACE(VALOR_TOTAL, 'R$', ''), ',', '.') AS DECIMAL(15,2)) AS VALOR_TOTAL_VL,
    TRY_CAST(PARCELAS AS INT) AS PARCELAS_QT,
    LEFT(UPPER(STATUS), 1) AS STATUS_CD  -- Primeira letra (Ativo->A, Quitado->Q)
FROM STG_CONTRATOS_OLTP
WHERE TRY_CAST(DT_ASSINATURA AS DATE) IS NOT NULL  -- Filtrar inválidos
  AND TRY_CAST(VALOR_TOTAL AS DECIMAL(15,2)) IS NOT NULL;

-- 4. Carregar dimensões (lookup ou SCD Type 2)
-- ... (merge DIM_CLIENTE, DIM_TIPO_CONTRATO, etc.)

-- 5. Carregar fato (insert ou update)
INSERT INTO FATO_CONTRATO_HABITACIONAL (
    CLIENTE_SK, DT_ASSINATURA_SK, TIPO_CONTRATO_SK, STATUS_SK,
    CONTRATO_HABITACIONAL_NK, VALOR_TOTAL_VL, PARCELAS_QT, VALOR_PARCELA_VL
)
SELECT 
    dc.CLIENTE_SK,
    CAST(FORMAT(i.DT_ASSINATURA, 'yyyyMMdd') AS INT) AS DT_ASSINATURA_SK,
    dt.TIPO_CONTRATO_SK,
    ds.STATUS_SK,
    i.CONTRATO_ID AS CONTRATO_HABITACIONAL_NK,
    i.VALOR_TOTAL_VL,
    i.PARCELAS_QT,
    i.VALOR_TOTAL_VL / i.PARCELAS_QT AS VALOR_PARCELA_VL
FROM INT_CONTRATOS_LIMPO i
INNER JOIN DIM_CLIENTE dc ON i.CLIENTE_ID = dc.CLIENTE_NK AND dc.VERSAO_ATUAL_FL = 'S'
INNER JOIN DIM_TIPO_CONTRATO dt ON i.TIPO_CONTRATO_CD = dt.TIPO_CONTRATO_CD
INNER JOIN DIM_STATUS ds ON i.STATUS_CD = ds.STATUS_CD
WHERE i.VALIDACAO_OK_FL = 'S';
```

---

### 5.5.7 Queries Analíticas (Exemplos)

**Exemplo 1: Total de contratos por tipo e ano**

```sql
SELECT 
    dt.TIPO_CONTRATO_DS,
    t.ANO_NR,
    COUNT(*) AS CONTRATOS_QT,
    SUM(f.VALOR_TOTAL_VL) AS VALOR_TOTAL_VL,
    AVG(f.VALOR_TOTAL_VL) AS VALOR_MEDIO_VL
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_TIPO_CONTRATO dt ON f.TIPO_CONTRATO_SK = dt.TIPO_CONTRATO_SK
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
GROUP BY dt.TIPO_CONTRATO_DS, t.ANO_NR
ORDER BY t.ANO_NR DESC, CONTRATOS_QT DESC;
```

**Exemplo 2: Contratos por região (snowflake)**

```sql
SELECT 
    r.REGIAO_NM,
    t.ANO_NR,
    COUNT(*) AS CONTRATOS_QT,
    SUM(f.VALOR_TOTAL_VL) AS VALOR_TOTAL_VL
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_CLIENTE c ON f.CLIENTE_SK = c.CLIENTE_SK
INNER JOIN DIM_CIDADE cid ON c.CIDADE_NM = cid.CIDADE_NM
INNER JOIN DIM_UF u ON cid.UF_SK = u.UF_SK
INNER JOIN DIM_REGIAO r ON u.REGIAO_SK = r.REGIAO_SK
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
WHERE c.VERSAO_ATUAL_FL = 'S'  -- Apenas versão vigente do cliente
  AND t.ANO_NR >= 2024
GROUP BY r.REGIAO_NM, t.ANO_NR
ORDER BY t.ANO_NR, VALOR_TOTAL_VL DESC;
```

**Exemplo 3: Taxa de inadimplência por trimestre**

```sql
SELECT 
    t.ANO_NR,
    t.TRIMESTRE_NR,
    COUNT(*) AS CONTRATOS_TOTAL_QT,
    SUM(CASE WHEN f.INADIMPLENTE_FL = 'S' THEN 1 ELSE 0 END) AS CONTRATOS_INADIMPLENTES_QT,
    CAST(SUM(CASE WHEN f.INADIMPLENTE_FL = 'S' THEN 1 ELSE 0 END) AS DECIMAL(10,2)) / 
        NULLIF(COUNT(*), 0) * 100 AS TAXA_INADIMPLENCIA_PC
FROM FATO_CONTRATO_HABITACIONAL f
INNER JOIN DIM_TEMPO t ON f.DT_ASSINATURA_SK = t.TEMPO_SK
WHERE f.QUITADO_FL = 'N'  -- Apenas contratos ativos
GROUP BY t.ANO_NR, t.TRIMESTRE_NR
ORDER BY t.ANO_NR DESC, t.TRIMESTRE_NR DESC;
```

---

**📊 Resumo SUB-PARTE 5.3**:

| Seção | Tópicos Principais | Validações TE074 |
|-------|-------------------|------------------|
| **5.4 Spring Batch** | Prefixo SPB_, adaptação tabelas metadata, nomenclatura (_NM, _CD, _QT, _DT), particionamento >100M, retenção 90d (dev) / 6m (prod) | ✅ 3.2.1.2: Prefixo SPB_<br>✅ 3.2.3.1: PKs BIGINT<br>✅ 3.2.9.1: Compactação PAGE<br>✅ 3.2.10: Retenção definida |
| **5.5 Modelagem Dimensional** | Star schema, snowflake, FATO_ / DIM_ / STG_ / INT_, surrogate keys (_SK), natural keys (_NK), métricas (_VL, _QT), SCD Type 1/2/3, ETL layers, columnstore indexes | ✅ 3.2.1.1: Nomenclatura prefixos<br>✅ 3.2.3.1: PKs BIGINT<br>✅ 3.2.11: FKs dimensões<br>✅ 3.2.12.1: DECIMAL(15,2) monetário |

**Próxima SUB-PARTE**: 5.4 - Pré-Validador e Checklists ADI/ABD (Final)

---

## SUB-PARTE 5.4: Pré-Validador e Checklists de Aprovação (Parte 4 de 4)

> **Objetivo desta SUB-PARTE**: Garantir conformidade TE074 via validações automáticas e manuais antes da aprovação ADI/ABD.  
> **Abrangência**: Seções 5.6 e 5.7 + Síntese Consolidada PARTE 5  
> **Base normativa**: TE074 (todas as seções 3.2.1-3.2.18), processo de aprovação CAIXA

---

## 5.6 Pré-Validador PPDS (Validações Automáticas)

### 5.6.1 Visão Geral

**Ferramenta**: Pré-Validador PPDS  
**URL**: http://gestaodedados.coresp.caixa (intranet CAIXA)  
**Finalidade**: Validação automática de conformidade TE074 antes de submissão ao ADI

**Categorias de severidade**:

| Severidade | Impacto | Ação Obrigatória | Exemplos |
|------------|---------|------------------|----------|
| **CRÍTICO** | Bloqueia aprovação ADI | Correção obrigatória (0 críticas para aprovação) | Nomenclatura inválida, PK ausente, FK sem índice, tipos incompatíveis |
| **ALERTA** | Requer justificativa | Avaliar contexto e justificar se não corrigir | VARCHAR(MAX), ausência de descrições, relacionamentos N:M sem tabela associativa |
| **INFORMAÇÃO** | Orientação | Opcional (boas práticas) | Sugestão CHAR vs VARCHAR, índices adicionais, normalização |

---

### 5.6.2 Processo de Validação

**Workflow**:

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. DESENVOLVIMENTO                                              │
│    - Criar modelo PowerDesigner (.pdm)                          │
│    - Autovalidação (checklists internos)                        │
│    - Exportar PDM                                               │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 2. PRÉ-VALIDADOR                                                │
│    - Upload arquivo .pdm                                        │
│    - Execução de 100+ regras TE074                              │
│    - Geração de relatório (PDF + Excel)                         │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 3. ANÁLISE DE NÃO CONFORMIDADES                                 │
│    - Revisar CRÍTICAS (obrigatórias)                            │
│    - Revisar ALERTAS (justificar ou corrigir)                   │
│    - Revisar INFORMAÇÕES (avaliar)                              │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 4. CORREÇÕES NO MODELO                                          │
│    - Ajustar nomenclatura                                       │
│    - Adicionar PKs/FKs/índices                                  │
│    - Corrigir tipos de dados                                    │
│    - Preencher descrições                                       │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 5. RE-VALIDAÇÃO                                                 │
│    - Upload PDM corrigido                                       │
│    - Nova validação                                             │
│    - Repetir até 0 CRÍTICAS                                     │
└────────────────┬────────────────────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────────────────────┐
│ 6. SUBMISSÃO ADI                                                │
│    - PDM validado (0 críticas)                                  │
│    - Relatório de validação anexado                             │
│    - Documentação complementar                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

### 5.6.3 Categorias de Validação

#### V001-V099: Nomenclatura

**V001: Tabelas - Prefixo Obrigatório**
- **Regra**: Tabela DEVE ter prefixo de 3 caracteres (TE074 3.2.1.2)
- **Regex**: `^[A-Z]{3}_[A-Z0-9_]+$`
- **Exemplos válidos**: `PES_CLIENTE`, `FIN_CONTRATO`, `SPB_JOB_INSTANCIA`
- **Exemplos inválidos**: `CLIENTE` (sem prefixo), `PE_CLIENTE` (prefixo 2 chars), `pes_cliente` (lowercase)
- **Severidade**: **CRÍTICO**

**V002: Colunas - Sufixo Semântico**
- **Regra**: Colunas DEVEM ter sufixo semântico (TE074 3.2.12.4)
- **Sufixos válidos**: `_ID`, `_DT`, `_VL`, `_NM`, `_DS`, `_CD`, `_QT`, `_NR`, `_TX`, `_PC`, `_FL`
- **Exceções**: PKs compostas, colunas calculadas, casos justificados
- **Exemplos inválidos**: `VALOR` (deve ser `VALOR_VL`), `NOME` (deve ser `NOME_NM`)
- **Severidade**: **CRÍTICO**

**V003: Primary Key - Nomenclatura**
- **Regra**: `PK_<NOME_TABELA>` (TE074 3.2.3.1)
- **Exemplo válido**: `PK_PES_CLIENTE`
- **Exemplo inválido**: `PK_CLIENTE`, `PRIMARY_KEY_CLIENTE`
- **Severidade**: **CRÍTICO**

**V004: Foreign Key - Nomenclatura**
- **Regra**: `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>` (TE074 3.2.11.8)
- **Exemplo válido**: `FK_FIN_CONTRATO_CLIENTE`
- **Exemplo inválido**: `FK_CONTRATO_CLIENTE`, `FK_CLIENTE`
- **Severidade**: **CRÍTICO**

**V005: Unique Key - Nomenclatura**
- **Regra**: `UK_<TABELA>_<COLUNAS>` (TE074 3.2.6.1)
- **Exemplo válido**: `UK_PES_CLIENTE_CPF`
- **Severidade**: **CRÍTICO**

**V006: Índices - Nomenclatura**
- **Regra**: `IX_<TABELA>_<COLUNAS>` ou `IX_UK_<TABELA>_<COLUNAS>` (único)
- **Exemplo válido**: `IX_FIN_CONTRATO_DT_ASSINATURA`, `IX_UK_PES_CLIENTE_EMAIL`
- **Severidade**: **ALERTA**

---

#### V101-V199: Estrutura

**V101: Primary Key - Obrigatória**
- **Regra**: Toda tabela DEVE ter PK (TE074 3.2.3.1)
- **Exceção**: Tabelas de staging (STG_), views materializadas
- **Severidade**: **CRÍTICO**

**V102: Primary Key - Tipo BIGINT**
- **Regra**: PKs DEVEM ser BIGINT (TE074 3.2.3.1)
- **Exceção**: PKs compostas, tabelas lookup pequenas (<10K linhas)
- **Severidade**: **CRÍTICO**

**V103: Foreign Key - Índice Obrigatório**
- **Regra**: Toda FK DEVE ter índice (TE074 3.2.11.5)
- **Severidade**: **CRÍTICO**

**V104: Foreign Key - Tipo Compatível**
- **Regra**: FK DEVE ter mesmo tipo da PK referenciada
- **Exemplo inválido**: FK `INT` referenciando PK `BIGINT`
- **Severidade**: **CRÍTICO**

**V105: Colunas Nullable - Validação**
- **Regra**: Colunas NOT NULL DEVEM ter DEFAULT ou justificativa
- **Exceção**: PKs, FKs obrigatórias, colunas de auditoria
- **Severidade**: **ALERTA**

---

#### V201-V299: Descrições e Metadados

**V201: Tabelas - Descrição Obrigatória**
- **Regra**: Toda tabela DEVE ter descrição em português (TE074 3.2.2.1)
- **Mínimo**: 20 caracteres
- **Conteúdo**: Finalidade, contexto de negócio
- **Severidade**: **CRÍTICO**

**V202: Colunas - Descrição Obrigatória**
- **Regra**: Colunas DEVEM ter descrição (TE074 3.2.12.4)
- **Exceção**: Colunas auditoria padrão (DT_CADASTRO, USUARIO_CADASTRO_NM)
- **Mínimo**: 10 caracteres
- **Severidade**: **CRÍTICO**

**V203: Descrições - Idioma Português**
- **Regra**: Descrições DEVEM estar em português
- **Inválido**: "Customer ID", "Order Date"
- **Válido**: "Identificador único do cliente", "Data da assinatura do contrato"
- **Severidade**: **CRÍTICO**

**V204: Descrições - Não Técnicas**
- **Regra**: Descrições DEVEM evitar jargão técnico
- **Inválido**: "FK para tabela PES_CLIENTE via CLIENTE_ID"
- **Válido**: "Cliente titular do contrato habitacional"
- **Severidade**: **ALERTA**

---

#### V301-V399: Tipos de Dados

**V301: Monetários - DECIMAL(15,2)**
- **Regra**: Valores monetários DEVEM ser DECIMAL(15,2), NUNCA FLOAT/REAL (TE074 3.2.12.1)
- **Detecção**: Sufixo `_VL` + tipo FLOAT/REAL
- **Severidade**: **CRÍTICO**

**V302: Booleanos - CHAR(1)**
- **Regra**: Flags/indicadores DEVEM ser CHAR(1), não BIT (TE074 3.2.12.5)
- **Valores**: 'S'/'N', 'A'/'I', '0'/'1'
- **Severidade**: **ALERTA**

**V303: Enumerações - VARCHAR(n)**
- **Regra**: Enumerações DEVEM ser VARCHAR (string), não INT (TE074 3.2.12.4)
- **Detecção**: Sufixo `_CD` ou `_TP` + tipo INT
- **Severidade**: **CRÍTICO**

**V304: VARCHAR(MAX) - Evitar**
- **Regra**: Evitar VARCHAR(MAX), usar tamanho específico
- **Exceção**: BLOBs textuais (JSON, XML, logs extensos)
- **Recomendação**: VARCHAR(500), VARCHAR(2000), VARCHAR(4000)
- **Severidade**: **ALERTA**

**V305: NVARCHAR - Justificativa**
- **Regra**: NVARCHAR requer justificativa (Unicode necessário?)
- **Uso válido**: Multilinguagem, caracteres especiais (chinês, árabe)
- **Preferência**: VARCHAR (metade do espaço)
- **Severidade**: **INFORMAÇÃO**

---

#### V401-V499: Otimização

**V401: Compactação - DATA_COMPRESSION = PAGE**
- **Regra**: Novas tabelas DEVEM ter compactação PAGE (TE074 3.2.9.1)
- **Exceção**: Tabelas temporárias, staging, < 1000 linhas
- **Severidade**: **CRÍTICO**

**V402: Índices - Compactação**
- **Regra**: Índices DEVEM ter mesma compactação da tabela
- **Severidade**: **ALERTA**

---

#### V501-V599: Particionamento e Volumetria

**V501: Particionamento - Volumetria > 100M**
- **Regra**: Tabelas com > 100M linhas/ano DEVEM ser sinalizadas (TE074 3.2.8.3)
- **Campo PowerDesigner**: `NUMBER` (volumetria), `ROW GROWTH RATE` (taxa crescimento)
- **Severidade**: **ALERTA**

---

#### V601-V699: Ciclo de Vida

**V601: Retenção - Definição Obrigatória**
- **Regra**: Tabelas transacionais DEVEM ter política de retenção (TE074 3.2.10)
- **Campo PowerDesigner**: `RETENTION_POLICY`, `RETENTION_COLUMN`
- **Severidade**: **ALERTA**

---

#### V701-V799: Relacionamentos

**V701: Relacionamentos N:M - Tabela Associativa**
- **Regra**: N:M DEVE usar tabela associativa, não relacionamentos paralelos (TE074 3.2.11.15)
- **Severidade**: **CRÍTICO**

**V702: DELETE CASCADE - Cuidado**
- **Regra**: ON DELETE CASCADE requer justificativa
- **Preferência**: RESTRICT (padrão)
- **Severidade**: **ALERTA**

---

### 5.6.4 Exemplo de Relatório Pré-Validador

**Arquivo**: `Relatorio_Validacao_FIN_CONTRATOS_20260107.pdf`

```
═══════════════════════════════════════════════════════════════
PRÉ-VALIDADOR PPDS - RELATÓRIO DE CONFORMIDADE TE074
═══════════════════════════════════════════════════════════════

PROJETO: Sistema Financeiro - Módulo Contratos Habitacionais
MODELO: FIN_CONTRATOS_V1.0.pdm
DATA VALIDAÇÃO: 07/01/2026 14:30:15
DESENVOLVEDOR: João Silva (C137459)

───────────────────────────────────────────────────────────────
SUMÁRIO EXECUTIVO
───────────────────────────────────────────────────────────────

Total de Objetos Validados: 15 tabelas, 187 colunas, 23 constraints
Total de Não Conformidades: 8 CRÍTICAS, 12 ALERTAS, 5 INFORMAÇÕES

STATUS: ❌ REPROVADO (Existem CRÍTICAS - correção obrigatória)

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES CRÍTICAS (8)
───────────────────────────────────────────────────────────────

[V001] Tabela sem prefixo obrigatório
  • Objeto: PARCELAS
  • Regra: TE074 3.2.1.2 - Prefixo 3 caracteres obrigatório
  • Correção: Renomear para FIN_PARCELAS
  • Impacto: Alto - Bloqueia aprovação ADI

[V102] Primary Key tipo incorreto
  • Objeto: FIN_CONTRATO_HABITACIONAL.CONTRATO_ID
  • Regra: TE074 3.2.3.1 - PK deve ser BIGINT
  • Atual: INT
  • Correção: Alterar para BIGINT
  • Impacto: Crítico - Limita capacidade futura (2B contratos)

[V103] Foreign Key sem índice
  • Objeto: FIN_PARCELAS.CONTRATO_ID (FK)
  • Regra: TE074 3.2.11.5 - FK deve ter índice
  • Correção: Criar IX_FIN_PARCELAS_CONTRATO_ID
  • Impacto: Performance - Joins lentos

[V201] Tabela sem descrição
  • Objeto: FIN_PARCELAS
  • Regra: TE074 3.2.2.1 - Descrição obrigatória
  • Correção: Adicionar descrição em português (mínimo 20 chars)
  • Impacto: Documentação - Dificulta manutenção

[V301] Tipo monetário incorreto
  • Objeto: FIN_CONTRATO.VALOR_TOTAL_VL
  • Regra: TE074 3.2.12.1 - Monetário deve ser DECIMAL(15,2)
  • Atual: FLOAT
  • Correção: Alterar para DECIMAL(15,2)
  • Impacto: Precisão - Risco de arredondamentos incorretos

[V401] Compactação ausente
  • Objeto: FIN_CONTRATO_HABITACIONAL
  • Regra: TE074 3.2.9.1 - DATA_COMPRESSION = PAGE obrigatória
  • Correção: Adicionar WITH (DATA_COMPRESSION = PAGE)
  • Impacto: Espaço - Tabela ocupará 50-70% mais espaço

[V002] Coluna sem sufixo semântico
  • Objeto: FIN_CLIENTE.NOME
  • Regra: TE074 3.2.12.4 - Sufixo obrigatório
  • Correção: Renomear para NOME_NM
  • Impacto: Padronização - Inconsistência corporativa

[V003] Primary Key nomenclatura incorreta
  • Objeto: PK_CONTRATO
  • Regra: TE074 3.2.3.1 - Formato PK_<TABELA>
  • Correção: Renomear para PK_FIN_CONTRATO_HABITACIONAL
  • Impacto: Padronização

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES ALERTAS (12)
───────────────────────────────────────────────────────────────

[V304] VARCHAR(MAX) detectado
  • Objeto: FIN_CONTRATO.OBSERVACOES_TX
  • Recomendação: Usar VARCHAR(500) ou VARCHAR(2000)
  • Justificativa: Definir tamanho máximo esperado
  • Ação: Justificar ou corrigir

[V702] DELETE CASCADE detectado
  • Objeto: FK_FIN_PARCELAS_CONTRATO
  • Regra: ON DELETE CASCADE requer justificativa
  • Recomendação: Usar RESTRICT (padrão)
  • Ação: Justificar dependência de deleção

... (outros 10 alertas)

───────────────────────────────────────────────────────────────
NÃO CONFORMIDADES INFORMAÇÕES (5)
───────────────────────────────────────────────────────────────

[V305] NVARCHAR detectado
  • Objeto: FIN_CLIENTE.EMAIL_TX
  • Recomendação: Usar VARCHAR se não houver Unicode
  • Benefício: Economia 50% espaço
  • Ação: Opcional

... (outros 4 informações)

───────────────────────────────────────────────────────────────
AÇÕES OBRIGATÓRIAS PARA APROVAÇÃO
───────────────────────────────────────────────────────────────

1. Corrigir 8 CRÍTICAS listadas acima
2. Re-validar modelo após correções
3. Justificar ou corrigir 12 ALERTAS
4. Gerar novo relatório com 0 CRÍTICAS

───────────────────────────────────────────────────────────────
PRÓXIMOS PASSOS
───────────────────────────────────────────────────────────────

1. Ajustar modelo PowerDesigner conforme correções
2. Upload novo PDM no Pré-Validador
3. Validar até 0 CRÍTICAS
4. Submeter ao ADI com relatório aprovado anexado

═══════════════════════════════════════════════════════════════
FIM DO RELATÓRIO
═══════════════════════════════════════════════════════════════
```

---

## 5.7 Checklist Final de Conformidade

### 5.7.1 Fase ADI (Arquitetura de Dados e Informação)

**Responsabilidade**: Equipe ADI (Arquitetos de Dados)  
**Prazo SLA**: 5 dias úteis (TE074 3.1.9)

#### Checklist ADI (40 itens)

**A. Conformidade Normativa** (10 itens)

- [ ] **A01**: Modelo validado pelo Pré-Validador (0 CRÍTICAS)
- [ ] **A02**: TE074 - Nomenclatura de tabelas conforme (prefixo 3 chars)
- [ ] **A03**: TE074 - Nomenclatura de colunas conforme (sufixos semânticos)
- [ ] **A04**: TE074 - Nomenclatura de constraints conforme (PK_, FK_, UK_, CK_, DF_)
- [ ] **A05**: TE074 - Todas as tabelas possuem PK
- [ ] **A06**: TE074 - PKs são BIGINT (exceto justificadas)
- [ ] **A07**: TE074 - Todas as FKs possuem índices
- [ ] **A08**: TE074 - Compactação PAGE configurada
- [ ] **A09**: TE074 - Ciclo de vida definido (RETENTION_POLICY)
- [ ] **A10**: CR439 - Conformidade LGPD (dados sensíveis identificados)

**B. Normalização e Integridade** (8 itens)

- [ ] **B01**: 3NF alcançada (ou denormalização justificada)
- [ ] **B02**: Ausência de redundâncias não justificadas
- [ ] **B03**: Relacionamentos corretos (1:1, 1:N, N:M via tabela associativa)
- [ ] **B04**: Integridade referencial garantida (FKs corretas)
- [ ] **B05**: Constraints de domínio (CHECK) adequadas
- [ ] **B06**: Unique Keys para atributos únicos de negócio
- [ ] **B07**: Ausência de colunas multivaloradas (1NF)
- [ ] **B08**: Dependências funcionais válidas

**C. Documentação** (7 itens)

- [ ] **C01**: Todas as tabelas possuem descrição em português (mínimo 20 chars)
- [ ] **C02**: Todas as colunas possuem descrição em português (mínimo 10 chars)
- [ ] **C03**: Descrições são não-técnicas (contexto de negócio)
- [ ] **C04**: Relacionamentos possuem verbos de ligação (PARENT/CHILD ROLE)
- [ ] **C05**: Metadados de volumetria preenchidos (NUMBER, ROW GROWTH RATE)
- [ ] **C06**: Classificação de informação definida (OR016)
- [ ] **C07**: Documentação complementar anexada (casos de uso, regras de negócio)

**D. Tipos de Dados** (6 itens)

- [ ] **D01**: Monetários são DECIMAL(15,2), NUNCA FLOAT
- [ ] **D02**: Datas/timestamps são DATE ou DATETIME2, não DATETIME
- [ ] **D03**: Booleanos são CHAR(1), não BIT
- [ ] **D04**: Enumerações são VARCHAR(n), não INT
- [ ] **D05**: Textos são VARCHAR (ASCII) ou NVARCHAR (Unicode justificado)
- [ ] **D06**: Evitado VARCHAR(MAX) sem justificativa

**E. Integração Corporativa** (5 itens)

- [ ] **E01**: Alinhamento com modelos corporativos (Cliente, Produto, etc.)
- [ ] **E02**: Reutilização de entidades existentes (evitar duplicação)
- [ ] **E03**: Conformidade com TE124 (Cadastro de Clientes)
- [ ] **E04**: Conformidade com TE105 (Integração SICLI)
- [ ] **E05**: Ausência de conflitos com modelos de outros sistemas

**F. Auditoria e Rastreabilidade** (4 itens)

- [ ] **F01**: Colunas de auditoria obrigatórias (DT_CADASTRO, USUARIO_CADASTRO_NM)
- [ ] **F02**: Colunas de atualização (DT_ATUALIZACAO, USUARIO_ATUALIZACAO_NM)
- [ ] **F03**: Soft delete implementado (DATA_EXCLUSAO_LGPD) quando aplicável
- [ ] **F04**: Trilhas de auditoria para dados sensíveis

---

### 5.7.2 Fase ABD (Administração de Banco de Dados)

**Responsabilidade**: Equipe ABD (DBAs)  
**Prazo SLA**: 3 dias úteis (implementação física)

#### Checklist ABD (35 itens)

**A. Performance e Otimização** (12 itens)

- [ ] **A01**: Índices em FKs criados
- [ ] **A02**: Índices em colunas de predicados frequentes (WHERE, JOIN)
- [ ] **A03**: Covering indexes avaliados (INCLUDE)
- [ ] **A04**: Filtered indexes considerados (WHERE no índice)
- [ ] **A05**: Columnstore indexes avaliados (analytics/DW)
- [ ] **A06**: Estatísticas atualizadas
- [ ] **A07**: Query plans analisados
- [ ] **A08**: Ausência de full table scans não justificados
- [ ] **A09**: Índices duplicados/redundantes removidos
- [ ] **A10**: Fill factor adequado (90-95% para read-heavy, 70-80% para write-heavy)
- [ ] **A11**: Fragmentação de índices controlada (< 30%)
- [ ] **A12**: Particionamento implementado (se volumetria > 100M/ano)

**B. Compactação e Armazenamento** (6 itens)

- [ ] **B01**: DATA_COMPRESSION = PAGE aplicada
- [ ] **B02**: Índices com mesma compactação da tabela
- [ ] **B03**: Economia de espaço validada (sp_estimate_data_compression_savings)
- [ ] **B04**: Filegroups adequados (PRIMARY, SECONDARY, INDEXES)
- [ ] **B05**: Tablespaces dimensionados corretamente
- [ ] **B06**: Crescimento automático configurado (1GB increments, não %)

**C. Particionamento** (se aplicável - 7 itens)

- [ ] **C01**: Partition Function criada (RANGE RIGHT para datas)
- [ ] **C02**: Partition Scheme mapeado para filegroups
- [ ] **C03**: Sliding window implementado (SPLIT/MERGE)
- [ ] **C04**: Partition elimination validado (queries usam coluna de partição)
- [ ] **C05**: Alinhamento de índices (partitioned aligned)
- [ ] **C06**: Manutenção de partições agendada (adicionar futuras, remover antigas)
- [ ] **C07**: SWITCH testado (archiving instantâneo)

**D. Segurança e Permissões** (5 items)

- [ ] **D01**: Schemas criados (dbo, app_user, read_only)
- [ ] **D02**: Roles definidos (db_datareader, db_datawriter, custom roles)
- [ ] **D03**: Permissões granulares (GRANT SELECT/INSERT/UPDATE/DELETE)
- [ ] **D04**: Row-level security avaliado (filtros por usuário/departamento)
- [ ] **D05**: Dynamic Data Masking aplicado (dados sensíveis)

**E. Backup e Recovery** (5 itens)

- [ ] **E01**: Backup FULL agendado (diário)
- [ ] **E02**: Backup DIFFERENTIAL agendado (a cada 6h)
- [ ] **E03**: Backup LOG agendado (a cada 15 min - FULL recovery model)
- [ ] **E04**: Restore testado (RTO < 4h, RPO < 15 min)
- [ ] **E05**: Backup offsite configurado (Azure Blob Storage, tape)

**F. Monitoramento e Alertas** (5 itens)

- [ ] **F01**: Alertas de espaço em disco (< 20% livre)
- [ ] **F02**: Alertas de bloqueios/deadlocks
- [ ] **F03**: Monitoramento de performance (CPU, I/O, memória)
- [ ] **F04**: Extended Events configurados (long-running queries)
- [ ] **F05**: SQL Server Agent Jobs criados (manutenção, arquivamento)

---

### 5.7.3 Checklist de Implementação Física (ABD)

**Etapas de Deploy** (ambiente PRD):

```sql
-- ========================================
-- CHECKLIST FÍSICO - SCRIPT DE DEPLOY
-- ========================================

-- ✅ 1. VALIDAÇÕES PRÉ-DEPLOY
-- Verificar se banco de dados existe
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DB_FINANCEIRO')
BEGIN
    RAISERROR('Banco DB_FINANCEIRO não existe. Deploy abortado.', 16, 1);
    RETURN;
END

-- Verificar espaço em disco (mínimo 50GB livres)
EXEC sp_spaceused;

-- Validar permissões do usuário executor
IF IS_SRVROLEMEMBER('sysadmin') = 0
BEGIN
    RAISERROR('Usuário não possui permissões sysadmin. Deploy abortado.', 16, 1);
    RETURN;
END

-- ✅ 2. BACKUP PRÉ-DEPLOY (obrigatório)
BACKUP DATABASE DB_FINANCEIRO
TO DISK = 'E:\BACKUP\DB_FINANCEIRO_PRE_DEPLOY_20260107_1430.bak'
WITH COMPRESSION, INIT, NAME = 'Pre-Deploy Backup';

-- ✅ 3. CRIAR FILEGROUPS (se particionamento)
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2024;
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2025;
ALTER DATABASE DB_FINANCEIRO ADD FILEGROUP FG_CONTRATO_2026;

-- Adicionar arquivos aos filegroups
ALTER DATABASE DB_FINANCEIRO ADD FILE (
    NAME = 'FG_CONTRATO_2024_DATA',
    FILENAME = 'D:\MSSQL\DATA\DB_FINANCEIRO_CONTRATO_2024.ndf',
    SIZE = 10GB, FILEGROWTH = 1GB
) TO FILEGROUP FG_CONTRATO_2024;

-- (repetir para 2025, 2026...)

-- ✅ 4. CRIAR PARTITION FUNCTIONS E SCHEMES (se aplicável)
CREATE PARTITION FUNCTION PF_CONTRATO_ANO (DATE)
AS RANGE RIGHT FOR VALUES ('2024-01-01', '2025-01-01', '2026-01-01');

CREATE PARTITION SCHEME PS_CONTRATO_ANO
AS PARTITION PF_CONTRATO_ANO
TO (FG_CONTRATO_2024, FG_CONTRATO_2025, FG_CONTRATO_2026, FG_CONTRATO_FUTURO);

-- ✅ 5. CRIAR TABELAS (DDL completo com compactação)
CREATE TABLE FIN_CONTRATO_HABITACIONAL (
    CONTRATO_HABITACIONAL_ID BIGINT NOT NULL IDENTITY(1,1),
    CLIENTE_ID BIGINT NOT NULL,
    -- ... outras colunas
    CONSTRAINT PK_FIN_CONTRATO_HABITACIONAL PRIMARY KEY (CONTRATO_HABITACIONAL_ID)
) ON PS_CONTRATO_ANO(DT_ASSINATURA)  -- Particionado
WITH (DATA_COMPRESSION = PAGE);  -- TE074 3.2.9.1

-- ✅ 6. CRIAR FOREIGN KEYS
ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT FK_FIN_CONTRATO_HABIT_CLIENTE
FOREIGN KEY (CLIENTE_ID) REFERENCES PES_CLIENTE (CLIENTE_ID)
ON DELETE RESTRICT;

-- ✅ 7. CRIAR ÍNDICES (incluindo FKs)
CREATE INDEX IX_FIN_CONTRATO_HABIT_CLIENTE
ON FIN_CONTRATO_HABITACIONAL (CLIENTE_ID)
ON PS_CONTRATO_ANO(DT_ASSINATURA)  -- Índice particionado alinhado
WITH (DATA_COMPRESSION = PAGE);

CREATE INDEX IX_FIN_CONTRATO_DT_ASSIN_STATUS
ON FIN_CONTRATO_HABITACIONAL (DT_ASSINATURA, STATUS_CD)
INCLUDE (VALOR_TOTAL_VL, PARCELAS_QT)  -- Covering index
ON PS_CONTRATO_ANO(DT_ASSINATURA)
WITH (DATA_COMPRESSION = PAGE);

-- ✅ 8. CRIAR CHECK CONSTRAINTS
ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT CK_FIN_CONTRATO_TIPO
CHECK (TIPO_CONTRATO_CD IN ('SBPE', 'FGTS', 'CCFGTS', 'PROHAB'));

ALTER TABLE FIN_CONTRATO_HABITACIONAL
ADD CONSTRAINT CK_FIN_CONTRATO_STATUS
CHECK (STATUS_CD IN ('A', 'Q', 'C'));

-- ✅ 9. ADICIONAR EXTENDED PROPERTIES (descrições)
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Contratos habitacionais (SBPE, FGTS, CCFGTS, PROHAB)', 
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Identificador único do contrato habitacional', 
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'FIN_CONTRATO_HABITACIONAL',
    @level2type = N'COLUMN', @level2name = N'CONTRATO_HABITACIONAL_ID';

-- ✅ 10. CRIAR VIEWS (se aplicável)
CREATE VIEW VW_FIN_CONTRATOS_ATIVOS AS
SELECT 
    c.CONTRATO_HABITACIONAL_ID,
    cl.NOME_COMPLETO_NM,
    c.TIPO_CONTRATO_CD,
    c.DT_ASSINATURA,
    c.VALOR_TOTAL_VL,
    c.STATUS_CD
FROM FIN_CONTRATO_HABITACIONAL c
INNER JOIN PES_CLIENTE cl ON c.CLIENTE_ID = cl.CLIENTE_ID
WHERE c.STATUS_CD = 'A'  -- Apenas ativos
  AND c.DATA_EXCLUSAO_LGPD IS NULL;  -- Não soft deleted

-- ✅ 11. CRIAR STORED PROCEDURES (manutenção)
CREATE OR ALTER PROCEDURE SP_ARQUIVAR_CONTRATOS_HABITACIONAIS AS
BEGIN
    -- Migração para _HIST (já mostrado anteriormente)
END;

-- ✅ 12. CRIAR SQL SERVER AGENT JOBS (agendamento)
EXEC msdb.dbo.sp_add_job @job_name = N'JOB_ARQUIVAMENTO_MENSAL_CONTRATOS';
-- (configuração completa já mostrada anteriormente)

-- ✅ 13. ATUALIZAR ESTATÍSTICAS
UPDATE STATISTICS FIN_CONTRATO_HABITACIONAL WITH FULLSCAN;

-- ✅ 14. RECOMPILAR ÍNDICES (se fragmentação > 30%)
ALTER INDEX ALL ON FIN_CONTRATO_HABITACIONAL REBUILD
WITH (DATA_COMPRESSION = PAGE, ONLINE = ON);

-- ✅ 15. GRANT PERMISSÕES
-- Role aplicação (INSERT/UPDATE/SELECT)
GRANT SELECT, INSERT, UPDATE ON FIN_CONTRATO_HABITACIONAL TO [ROLE_APP_FINANCEIRO];

-- Role leitura (apenas SELECT)
GRANT SELECT ON FIN_CONTRATO_HABITACIONAL TO [ROLE_LEITURA_FINANCEIRO];

-- ✅ 16. VALIDAÇÕES PÓS-DEPLOY
-- Verificar se tabela foi criada
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = 'FIN_CONTRATO_HABITACIONAL')
BEGIN
    RAISERROR('Tabela FIN_CONTRATO_HABITACIONAL não criada. Deploy FALHOU.', 16, 1);
    -- ROLLBACK (se em transação)
    RETURN;
END

-- Verificar se compactação está ativa
SELECT 
    t.name AS Tabela,
    p.data_compression_desc AS Compactacao
FROM sys.tables t
INNER JOIN sys.partitions p ON t.object_id = p.object_id
WHERE t.name = 'FIN_CONTRATO_HABITACIONAL'
  AND p.data_compression_desc <> 'PAGE';  -- Deve ser PAGE

-- Verificar se índices em FKs foram criados
SELECT 
    fk.name AS FK_Name,
    CASE WHEN i.index_id IS NULL THEN 'AUSENTE' ELSE 'OK' END AS Status_Indice
FROM sys.foreign_keys fk
LEFT JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
LEFT JOIN sys.indexes i ON fkc.parent_object_id = i.object_id 
    AND fkc.parent_column_id = i.index_id
WHERE fk.parent_object_id = OBJECT_ID('FIN_CONTRATO_HABITACIONAL');

-- ✅ 17. BACKUP PÓS-DEPLOY (sucesso)
BACKUP DATABASE DB_FINANCEIRO
TO DISK = 'E:\BACKUP\DB_FINANCEIRO_POS_DEPLOY_20260107_1500.bak'
WITH COMPRESSION, INIT, NAME = 'Post-Deploy Backup SUCCESS';

PRINT 'Deploy concluído com sucesso!';
```

---

### 5.7.4 Checklist de Homologação (QA)

**Testes obrigatórios antes de PRD**:

- [ ] **T01**: Inserção de dados teste (100 registros)
- [ ] **T02**: Validação de constraints (CHECK, FK, UK)
- [ ] **T03**: Teste de performance (queries principais < 100ms)
- [ ] **T04**: Teste de carga (simular pico de tráfego)
- [ ] **T05**: Teste de concorrência (deadlocks, bloqueios)
- [ ] **T06**: Teste de particionamento (partition elimination)
- [ ] **T07**: Teste de arquivamento (migração para _HIST)
- [ ] **T08**: Teste de soft delete (LGPD)
- [ ] **T09**: Teste de backup/restore (RTO/RPO)
- [ ] **T10**: Teste de integração (APIs, serviços externos)

---

### 5.7.5 Documentação Final de Entrega

**Artefatos obrigatórios**:

1. **Modelo PowerDesigner** (.pdm) - validado (0 CRÍTICAS)
2. **Relatório Pré-Validador** (PDF) - aprovado
3. **DDL Scripts** (SQL) - CREATE TABLE, CREATE INDEX, etc.
4. **DML Scripts** (SQL) - INSERT dados de referência
5. **Dicionário de Dados** (Excel/PDF) - tabelas, colunas, tipos
6. **Diagrama ER** (PNG/PDF) - relacionamentos
7. **Documento de Volumetria** - estimativas, particionamento
8. **Documento de Ciclo de Vida** - retenção, arquivamento, expurgo
9. **Plano de Manutenção** - jobs, monitoramento, alertas
10. **Procedimento de Rollback** - reverter deploy em caso de falha

---

## 📊 SÍNTESE CONSOLIDADA DA PARTE 5

### Resumo Executivo

A **PARTE 5** concluiu o Guia Corporativo CAIXA de Modelagem SQL Server com os seguintes tópicos:

| SUB-PARTE | Seções | Conteúdo Principal | Tamanho |
|-----------|--------|-------------------|---------|
| **5.1** | 5.1-5.2 | Ciclo de Vida (retenção, arquivamento _HIST/_AUX, expurgo) + LGPD (dados sensíveis, criptografia, right to erasure, auditoria) | ~12KB |
| **5.2** | 5.3 | Frameworks ORM (JPA/Hibernate, Entity Framework Core, TE074 prevalece, DDL manual, auditoria automática) | ~14KB |
| **5.3** | 5.4-5.5 | Spring Batch (prefixo SPB_, 6 tabelas metadata, retenção) + Modelagem Dimensional (star/snowflake, FATO_/DIM_, SCD Type 1/2/3, ETL layers) | ~16KB |
| **5.4** | 5.6-5.7 | Pré-Validador (100+ regras TE074, 0 CRÍTICAS para aprovação) + Checklists ADI/ABD (75 itens, workflow completo) | ~14KB |

**Total PARTE 5**: ~56KB, 7 seções (5.1-5.7)

---

### Principais Validações TE074 - PARTE 5

| Regra TE074 | Seção | Validação | Criticidade |
|-------------|-------|-----------|-------------|
| **3.2.10** | 5.1 | Ciclo de vida definido (RETENTION_POLICY, coluna referência) | ✅ Obrigatório |
| **3.2.17** | 5.2 | LGPD - Dados sensíveis identificados, criptografia TDE/Always Encrypted | ✅ Obrigatório |
| **3.2.16** | 5.3 | Frameworks ORM - TE074 prevalece (ddl-auto=none, migrations manuais) | ✅ Crítico |
| **3.2.1.2** | 5.4 | Spring Batch - Prefixo SPB_ obrigatório | ✅ Crítico |
| **3.2.8.3** | 5.5 | DW - Particionamento se volumetria > 100M/ano | ✅ Obrigatório |
| **3.2.9.1** | 5.6 | Compactação PAGE obrigatória (validação V401) | ✅ Crítico |
| **3.2.2.1** | 5.7 | Descrições em português obrigatórias (validação V201-V203) | ✅ Crítico |

---

### Ferramentas e Processos - PARTE 5

**Pré-Validador PPDS**:
- URL: http://gestaodedados.coresp.caixa
- Validações: 100+ regras automáticas
- Severidades: CRÍTICO (bloqueador) / ALERTA / INFORMAÇÃO
- Aprovação: 0 CRÍTICAS obrigatório

**Workflow de Aprovação**:
```
Desenvolvimento → Pré-Validador → ADI (5 dias) → ABD (3 dias) → Homologação → Produção
```

**Checklists**:
- ADI: 40 itens (conformidade, normalização, documentação, integração)
- ABD: 35 itens (performance, compactação, particionamento, segurança, backup)
- Homologação: 10 testes obrigatórios

---

### Boas Práticas Destacadas - PARTE 5

1. **Ciclo de Vida**: Definir prazo de retenção com gestor, documentar no modelo (RETENTION_POLICY)
2. **LGPD**: Tabelas separadas 1:1 para dados sensíveis, soft delete + hard delete após 180 dias
3. **Criptografia**: TDE (nível banco) + Always Encrypted (nível coluna) para dados REST
4. **ORM**: Desabilitar auto-DDL, usar migrations manuais, TE074 prevalece sobre convenções
5. **Spring Batch**: Prefixo SPB_, retenção 90d (dev) / 6m (prod), particionamento se >100M execuções
6. **DW**: Star schema preferencial, SCD Type 2 para histórico completo, ETL em layers (STG→INT→DW)
7. **Pré-Validador**: Executar antes de submissão ADI, corrigir todas CRÍTICAS
8. **Checklist**: Revisar 75 itens (40 ADI + 35 ABD) antes de deploy produção

---

### Próximos Passos Após PARTE 5

✅ **PARTE 5 CONCLUÍDA**  
✅ **GUIA CORPORATIVO CAIXA SQL SERVER 100% COMPLETO**

**Arquivo final**: `guia-caixa-dados-sql.md`  
**Tamanho total estimado**: ~195-200KB  
**Estrutura completa**:
- PARTE 1: Fundamentos e Normas (15 seções, ~40KB)
- PARTE 2: Nomenclatura e Padronização (8 seções, ~20KB)
- PARTE 3: Estruturação de Tabelas (6 seções, ~18KB)
- PARTE 4: Tipos de Dados e Otimização (6 seções, ~22KB)
- PARTE 5: Ciclo de Vida, Frameworks e Validações (7 seções, ~56KB)

**Total**: 42 seções, 5 PARTES, conformidade 100% TE074

---

**🎯 PROJETO CONCLUÍDO COM SUCESSO! 🎉**

---


----


*FIM "guia-caixa-dados-sql.md"*


*INICIO "Melhores Práticas em Modelagem de Dados.md"*


----


# Melhores Práticas em Modelagem de Dados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Melhores Práticas Modelagem - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Melhores%20Práticas%20em%20Modelagem%20de%20Dados.aspx)

## Contexto

Este documento consolida **melhores práticas corporativas** para modelagem de dados na CAIXA, complementando a **TE074** com recomendações práticas, padrões de mercado e lições aprendidas.

## Referências

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **ISO/IEC 11179** - Metadata registries
- **The Data Model Resource Book** (Len Silverston)
- **Database Design for Mere Mortals** (Michael Hernandez)

## 1. Princípios Fundamentais

### 1.1. Modelagem é um Processo Iterativo

**Não espere perfeição na primeira versão**. Modelo evolui com:
- Reuniões com especialistas de negócio
- Validações com desenvolvedores
- Revisões com ADI/ABD
- Feedback de uso em produção

**Versionamento** (TE109): Controlar mudanças no modelo PowerDesigner.

### 1.2. Negócio Antes de Tecnologia

**Modelo conceitual primeiro**:
1. **Conceitual**: Entidades, atributos, relacionamentos (independente de SGBD)
2. **Lógico**: Normalização, chaves (independente de SGBD)
3. **Físico**: Tipos de dados, índices, particionamento (específico de SGBD)

**Evitar**: Começar direto no modelo físico SQL Server sem entender o negócio.

### 1.3. Documentação é Parte do Modelo

**Comments não são opcionais** (TE074 3.2.2). Documentar:
- **O quê**: Descrição da tabela/coluna
- **Por quê**: Justificativa de decisões (ex: desnormalização)
- **Quando**: Regras de lifecycle (retention, archiving)
- **Como**: Cálculos derivados, regras de negócio

## 2. Normalização

### 2.1. Sempre Normalizar Primeiro

**3NF obrigatória** em modelos transacionais (TE074 3.2.4).

**Benefícios**:
- Elimina redundância
- Facilita manutenção
- Evita anomalias de atualização
- Base sólida para desnormalização consciente

### 2.2. Desnormalizar Com Justificativa

**Quando considerar**:
- Data Warehouse/Analytics (Star Schema)
- Colunas de cache para performance crítica
- Dados históricos (snapshot tables)

**Sempre documentar**:
```sql
-- Comment no PowerDesigner:
-- "Coluna NOME_CLIENTE_NM desnormalizada para performance de relatórios.
--  Origem: DIM_CLIENTE.NOME_CLIENTE_NM. 
--  Atualização: Trigger TR_CLIENTE_AFTER_UPDATE."
```

### 2.3. Evitar Over-Normalization

**Exemplo de excesso**:
```sql
-- ❌ EVITAR: Tabela para cada enum simples
CREATE TABLE REF_TIPO_SEXO (
    SEXO_TP CHAR(1) PRIMARY KEY,
    DESCRICAO_DS VARCHAR(20)
);
-- Valores: M/F/O (apenas 3 registros)

-- ✅ PREFERIR: Check Constraint
CREATE TABLE PESSOA (
    -- ...
    SEXO_TP CHAR(1),
    CONSTRAINT CK_PESSOA_SEXO_TP CHECK (SEXO_TP IN ('M', 'F', 'O'))
);
```

**Quando criar tabela de referência**:
- Valores mudam frequentemente
- Necessidade de metadados adicionais (descrição longa, ordenação, flag ativo)
- Lista pode crescer (ex: estados, municípios, produtos)

## 3. Chaves

### 3.1. Primary Keys (PK)

#### Obrigatórias Sem Exceção

**TE074 3.2.4.1**: Toda tabela DEVE ter PK.

**Violações comuns**:
- Tabelas de log sem PK
- Tabelas de staging sem PK
- Tabelas de integração temporária

**Solução**: Se não há chave natural, criar surrogate key.

#### Natural vs Surrogate

**Natural Key**: Atributo do negócio (CPF, CNPJ, matrícula)
```sql
CREATE TABLE CLIENTE (
    CPF_CNPJ_NK VARCHAR(14) PRIMARY KEY,  -- Natural Key
    NOME_NM VARCHAR(200)
);
```

**Surrogate Key**: Identificador técnico sem significado de negócio
```sql
CREATE TABLE CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,  -- Surrogate Key
    CPF_CNPJ_NK VARCHAR(14) UNIQUE NOT NULL,      -- Natural Key (UK)
    NOME_NM VARCHAR(200)
);
```

**Recomendação CAIXA**:
- **Transacional (OLTP)**: Surrogate key preferida (BIGINT IDENTITY)
- **Dimensional (OLAP)**: Surrogate key obrigatória (permite SCD Type 2)
- **Referência**: Natural key aceitável (códigos fixos)

**Vantagens Surrogate Key**:
- Independência de mudanças de negócio (CPF muda? Improvável, mas possível)
- Performance (INT/BIGINT vs VARCHAR em FKs)
- Simplicidade em relacionamentos N:N
- Suporte a versionamento (SCD Type 2 em DW)

#### Composite Keys

**Evitar quando possível**:
```sql
-- ❌ EVITAR: PK composta propaga complexidade
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ID BIGINT,
    ITEM_SEQUENCIA_NR INT,
    PRIMARY KEY (PEDIDO_ID, ITEM_SEQUENCIA_NR)
);

-- FK em outra tabela também seria composta
CREATE TABLE PEDIDO_ITEM_ENTREGA (
    PEDIDO_ID BIGINT,           -- FK parte 1
    ITEM_SEQUENCIA_NR INT,      -- FK parte 2
    DATA_ENTREGA_DT DATETIME,
    FOREIGN KEY (PEDIDO_ID, ITEM_SEQUENCIA_NR) 
        REFERENCES PEDIDO_ITEM(PEDIDO_ID, ITEM_SEQUENCIA_NR)
);
```

**✅ PREFERIR: Surrogate key única**:
```sql
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ITEM_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    PEDIDO_ID BIGINT NOT NULL,
    ITEM_SEQUENCIA_NR INT NOT NULL,
    UNIQUE (PEDIDO_ID, ITEM_SEQUENCIA_NR)  -- Unicidade de negócio como UK
);

CREATE TABLE PEDIDO_ITEM_ENTREGA (
    PEDIDO_ITEM_ID BIGINT PRIMARY KEY,  -- FK simples
    DATA_ENTREGA_DT DATETIME,
    FOREIGN KEY (PEDIDO_ITEM_ID) REFERENCES PEDIDO_ITEM(PEDIDO_ITEM_ID)
);
```

### 3.2. Foreign Keys (FK)

#### Sempre Declarar FKs

**TE074 3.2.11**: Relacionamentos devem ter FKs no banco.

**Não confiar apenas na aplicação**:
```sql
-- ❌ EVITAR: FK apenas "lógica" (sem constraint)
CREATE TABLE CONTRATO (
    CLIENTE_ID BIGINT  -- FK "virtual", sem FOREIGN KEY
);

-- ✅ CORRETO: FK física
CREATE TABLE CONTRATO (
    CLIENTE_ID BIGINT NOT NULL,
    CONSTRAINT FK_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID)
);
```

**Benefícios**:
- Integridade garantida pelo SGBD
- Documentação automática (INFORMATION_SCHEMA)
- Diagramas PowerDesigner refletem realidade
- Proteção contra bugs da aplicação

#### Delete Rules (Regras de Deleção)

**Escolher adequadamente** (TE074 3.2.11.7):

| Delete Rule | Comportamento | Quando Usar |
|-------------|---------------|-------------|
| `NO ACTION` | Bloqueia exclusão se houver filhos | **Padrão** (maioria dos casos) |
| `RESTRICT` | Igual a NO ACTION (SQL Standard) | Portabilidade entre SGBDs |
| `CASCADE` | Exclui filhos automaticamente | Relações 1:N estritas (ex: Pedido→Itens) |
| `SET NULL` | Define FK como NULL | Relações opcionais (ex: Vendedor pode sair) |

**Exemplo CASCADE**:
```sql
-- Ao excluir PEDIDO, exclui automaticamente PEDIDO_ITEM
CREATE TABLE PEDIDO_ITEM (
    PEDIDO_ID BIGINT NOT NULL,
    CONSTRAINT FK_PEDIDO_ITEM_PEDIDO 
        FOREIGN KEY (PEDIDO_ID) REFERENCES PEDIDO(PEDIDO_ID)
        ON DELETE CASCADE
);
```

**⚠️ Cuidado com CASCADE**:
- Pode excluir grandes volumes inadvertidamente
- Dificulta auditoria (quem excluiu os filhos?)
- Preferir soft delete (flag `ATIVO_IN`)

#### Índices em FKs

**Sempre criar índices em colunas FK**:
```sql
CREATE TABLE CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    CLIENTE_ID BIGINT NOT NULL,
    PRODUTO_ID INT NOT NULL,
    CONSTRAINT FK_CONTRATO_CLIENTE 
        FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID),
    CONSTRAINT FK_CONTRATO_PRODUTO 
        FOREIGN KEY (PRODUTO_ID) REFERENCES PRODUTO(PRODUTO_ID)
);

-- Índices obrigatórios
CREATE INDEX IDX_CONTRATO_CLIENTE_ID ON CONTRATO(CLIENTE_ID);
CREATE INDEX IDX_CONTRATO_PRODUTO_ID ON CONTRATO(PRODUTO_ID);
```

**Benefícios**:
- Performance em JOINs
- Performance em DELETE da tabela pai (SGBD verifica filhos)
- Evita table scans

## 4. Tipos de Dados

### 4.1. Escolher Tipo Adequado

| Tipo de Dado | Usar | Evitar |
|--------------|------|--------|
| **Datas** | `DATE`, `DATETIME`, `DATETIME2` | VARCHAR, INT (yyyymmdd) |
| **Valores Monetários** | `DECIMAL(18,2)`, `MONEY` | FLOAT, REAL |
| **Flags** | `CHAR(1)` ('S'/'N'), `BIT` | VARCHAR(10) ('Sim'/'Não') |
| **IDs** | `BIGINT`, `INT` | VARCHAR (evitar) |
| **Textos Longos** | `VARCHAR(MAX)`, `TEXT` | VARCHAR(8000) truncado |

### 4.2. Precisão de DECIMAL

**Sempre especificar precisão e escala**:
```sql
-- ❌ EVITAR: Precisão padrão (pode variar)
VALOR_VL DECIMAL

-- ✅ CORRETO: Precisão explícita
VALOR_CONTRATO_VL DECIMAL(18,2)  -- 18 dígitos, 2 decimais
TAXA_JUROS_PC DECIMAL(5,4)        -- 99.9999%
```

### 4.3. VARCHAR vs CHAR

**VARCHAR**: Tamanho variável (recomendado)
```sql
NOME_NM VARCHAR(200)  -- Usa apenas o necessário
```

**CHAR**: Tamanho fixo (padding com espaços)
```sql
UF_SG CHAR(2)         -- Sempre 2 caracteres
ATIVO_IN CHAR(1)      -- Sempre 1 caractere ('S'/'N')
```

**Regra**: Use CHAR apenas para comprimento **sempre** fixo.

### 4.4. DATETIME vs DATETIME2

**SQL Server**:
- `DATETIME`: Precisão de 3.33ms, range 1753-9999
- `DATETIME2`: Precisão de 100ns, range 0001-9999, menor storage

**Recomendação**: `DATETIME2` em novos projetos.

```sql
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
```

### 4.5. NVARCHAR vs VARCHAR

**NVARCHAR**: Unicode (UTF-16), 2 bytes/char
**VARCHAR**: ANSI, 1 byte/char

**CAIXA**: Preferir `VARCHAR` (português não requer Unicode).

**Exceção**: Sistemas multilíngues ou com emojis.

## 5. Nomenclatura

### 5.1. Consistência é Fundamental

**Seguir TE074 3.2.1 rigorosamente**:
- Tabelas: `SYS_NOME_TABELA`
- Colunas: `NOME_COLUNA_SF` (com sufixo)
- PKs: `PK_NOME_TABELA`
- FKs: `FK_ORIGEM_DESTINO`

**Evitar criatividade**:
```sql
-- ❌ EVITAR: Nomes inconsistentes
tblCliente
cliente
TB_CLIENTES
Client

-- ✅ CORRETO: Padrão TE074
SPH_CLIENTE
```

### 5.2. Nomes Descritivos

**Evitar abreviações excessivas**:
```sql
-- ❌ EVITAR: Abreviação confusa
SPH_CTR_HAB

-- ✅ CORRETO: Nome claro
SPH_CONTRATO_HABITACIONAL
```

**Limite**: 30 caracteres (Oracle), 128 (SQL Server) - usar com sabedoria.

### 5.3. Plural vs Singular

**CAIXA**: **Singular** (TE074 padrão).

```sql
-- ❌ EVITAR
SPH_CLIENTES
SPH_CONTRATOS

-- ✅ CORRETO
SPH_CLIENTE
SPH_CONTRATO
```

### 5.4. Prefixos de Sistema

**Obrigatório** em ambientes multi-sistemas:
```sql
-- Sistema SPH (Plataforma Habitacional)
SPH_CLIENTE
SPH_CONTRATO

-- Sistema FIN (Financeiro)
FIN_CONTA
FIN_LANCAMENTO
```

**Benefícios**:
- Evita colisões de nomes
- Identifica origem em consultas cross-system
- Organização lógica

## 6. Performance

### 6.1. Índices Estratégicos

**Não criar índices às cegas**:
- **Muitos índices**: Degradam INSERT/UPDATE/DELETE
- **Poucos índices**: Degradam SELECT

**Estratégia**:
1. PK (automático)
2. FKs (obrigatório)
3. Colunas em WHERE frequente
4. Colunas em ORDER BY
5. Colunas em JOIN (além de FKs)

**Monitorar** (SQL Server):
```sql
-- Índices faltando (sugestão do SQL Server)
SELECT 
    DatabaseName = DB_NAME(mid.database_id),
    SchemaName = OBJECT_SCHEMA_NAME(mid.object_id, mid.database_id),
    TableName = OBJECT_NAME(mid.object_id, mid.database_id),
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns,
    mid.avg_user_impact,
    mid.user_seeks
FROM sys.dm_db_missing_index_details AS mid
ORDER BY mid.avg_user_impact DESC;

-- Índices não usados
SELECT 
    OBJECT_NAME(i.object_id) AS TableName,
    i.name AS IndexName,
    i.type_desc,
    us.user_seeks,
    us.user_scans,
    us.user_lookups,
    us.user_updates
FROM sys.indexes i
LEFT JOIN sys.dm_db_index_usage_stats us 
    ON i.object_id = us.object_id AND i.index_id = us.index_id
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
  AND i.index_id > 0  -- Não incluir heap
  AND us.user_seeks = 0
  AND us.user_scans = 0
  AND us.user_lookups = 0
ORDER BY us.user_updates DESC;
```

### 6.2. Compactação

**Sempre ativar** (TE074 3.2.9):
```sql
CREATE TABLE SPH_CONTRATO (...) 
WITH (DATA_COMPRESSION = PAGE);

-- Ou alterar existente
ALTER TABLE SPH_CONTRATO REBUILD WITH (DATA_COMPRESSION = PAGE);
```

**Benefícios**: 40-70% redução de espaço, melhor I/O.

### 6.3. Particionamento

**Avaliar para tabelas grandes** (TE074 3.2.8.3): > 100M linhas/ano.

**Benefícios**:
- Queries filtradas por período são mais rápidas
- Manutenção facilitada (TRUNCATE partição)
- Expurgo eficiente

**Exemplo**: Particionar por mês.

### 6.4. Columnstore Indexes

**SQL Server 2016+**: Para Data Warehouse.

```sql
CREATE CLUSTERED COLUMNSTORE INDEX CCI_FATO_VENDAS 
    ON DWH_FATO_VENDAS;
```

**Benefícios**: Compressão extrema, consultas analíticas 10-100x mais rápidas.

## 7. Segurança e Compliance

### 7.1. Dados Sensíveis

**LGPD/GDPR**: Identificar colunas com dados pessoais.

**Criptografia** (TE079):
- TDE (Transparent Data Encryption) - dados em repouso
- Always Encrypted - dados em uso
- Column-level encryption - colunas específicas

**Exemplo**:
```sql
-- Marcar coluna como sensível (comment)
CREATE TABLE SPH_CLIENTE (
    CPF_CNPJ_NK VARCHAR(14),  -- Dado Sensível: LGPD Art. 5º
    -- ...
);
```

### 7.2. Auditoria

**Tabelas de log** (sempre):
```sql
CREATE TABLE SPH_CLIENTE_AUDITORIA (
    AUDITORIA_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    CLIENTE_ID BIGINT,
    OPERACAO_TP CHAR(1),  -- I/U/D
    USUARIO_NM VARCHAR(100),
    DATA_OPERACAO_DT DATETIME2 DEFAULT GETDATE(),
    DADOS_ANTERIORES_JSON VARCHAR(MAX),
    DADOS_NOVOS_JSON VARCHAR(MAX)
) WITH (DATA_COMPRESSION = PAGE);
```

**Trigger de auditoria**:
```sql
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    INSERT INTO SPH_CLIENTE_AUDITORIA (
        CLIENTE_ID, OPERACAO_TP, USUARIO_NM, 
        DADOS_ANTERIORES_JSON, DADOS_NOVOS_JSON
    )
    SELECT 
        d.CLIENTE_ID, 
        'U', 
        SUSER_NAME(),
        (SELECT d.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER),
        (SELECT i.* FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)
    FROM deleted d
    INNER JOIN inserted i ON d.CLIENTE_ID = i.CLIENTE_ID;
END;
```

### 7.3. RBAC (Role-Based Access Control)

**Não usar usuário SA/DBO em aplicação**:
- Criar roles específicas: `APP_SPH_READ`, `APP_SPH_WRITE`
- Aplicação usa service account com role mínima

```sql
-- Azure SQL Database / SQL Server
CREATE USER [app_sph_service] WITH PASSWORD = 'xxx';
ALTER ROLE db_datareader ADD MEMBER [app_sph_service];
GRANT SELECT ON SCHEMA::dbo TO [app_sph_service];
```

## 8. Lifecycle de Dados

### 8.1. Retention Policies

**Definir** (TE074 3.2.10):
- **Transacional**: Quanto tempo em tabela ativa?
- **Histórico**: Migrar para tabela `_HISTORICO`?
- **Expurgo**: Quando deletar definitivamente?

**Exemplo**:
```sql
-- Dados ativos: 2 anos
-- Histórico: 5 anos adicionais (total 7 anos)
-- Expurgo: Após 7 anos

-- Automação: Job SQL Agent mensal
```

### 8.2. Soft Delete

**Preferir flag de exclusão**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    ATIVO_IN CHAR(1) DEFAULT 'S',
    DATA_EXCLUSAO_DT DATETIME2,
    USUARIO_EXCLUSAO_NM VARCHAR(100)
);

-- "Excluir"
UPDATE SPH_CONTRATO
SET ATIVO_IN = 'N',
    DATA_EXCLUSAO_DT = GETDATE(),
    USUARIO_EXCLUSAO_NM = SUSER_NAME()
WHERE CONTRATO_ID = 123;

-- Consultas filtram por ATIVO_IN
SELECT * FROM SPH_CONTRATO WHERE ATIVO_IN = 'S';
```

**Vantagens**:
- Recuperação fácil
- Auditoria completa
- Conformidade LGPD (direito ao esquecimento com prazo)

## 9. Documentação

### 9.1. Comments em Tudo

**Tabelas**:
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Armazena contratos habitacionais do SISPH. Inclui financiamentos, garantias e dados de parcelas.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO';
```

**Colunas**:
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Identificador único do contrato. PK, gerada automaticamente (IDENTITY).',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO',
    @level2type = N'COLUMN', @level2name = N'CONTRATO_ID';
```

### 9.2. Diagramas

**PowerDesigner**: Obrigatório (TE074).

**Dicas**:
- Um diagrama principal completo
- Diagramas secundários por módulo/domínio
- Atualizar modelo ao alterar banco

### 9.3. Dicionário de Dados

**Gerar automaticamente** do PowerDesigner ou INFORMATION_SCHEMA:

```sql
SELECT 
    t.TABLE_NAME AS Tabela,
    c.COLUMN_NAME AS Coluna,
    c.DATA_TYPE AS Tipo,
    CAST(ep.value AS VARCHAR(MAX)) AS Descricao
FROM INFORMATION_SCHEMA.TABLES t
INNER JOIN INFORMATION_SCHEMA.COLUMNS c ON t.TABLE_NAME = c.TABLE_NAME
LEFT JOIN sys.tables st ON st.name = t.TABLE_NAME
LEFT JOIN sys.columns sc ON sc.object_id = st.object_id AND sc.name = c.COLUMN_NAME
LEFT JOIN sys.extended_properties ep ON sc.object_id = ep.major_id 
    AND sc.column_id = ep.minor_id
    AND ep.name = 'MS_Description'
WHERE t.TABLE_SCHEMA = 'dbo'
ORDER BY t.TABLE_NAME, c.ORDINAL_POSITION;
```

## 10. Checklist de Revisão

### Antes de Submeter à ADI

- [ ] Nomenclatura TE074 em todos objetos
- [ ] Comments em todas tabelas e colunas
- [ ] PKs definidas em todas tabelas
- [ ] FKs declaradas no banco (não apenas lógicas)
- [ ] Índices em FKs
- [ ] Compactação PAGE configurada
- [ ] Tipos de dados adequados (DECIMAL para valores, DATETIME2 para datas)
- [ ] 3NF validada (ou desnormalização justificada)
- [ ] Pré-validador executado com sucesso
- [ ] Modelo PowerDesigner atualizado e documentado
- [ ] Volumetria estimada
- [ ] Retention policy definida
- [ ] Dados sensíveis identificados
- [ ] Auditoria planejada

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE109, TE124, ISO/IEC 11179


----


*FIM "Melhores Práticas em Modelagem de Dados.md"*


*INICIO "Microsoft SQL Server - Uso de Constraint Default.md"*


----


# Microsoft SQL Server - Uso de Constraint Default

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [SQL Server Constraint Default - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Microsoft%20SQL%20Server%20-%20Uso%20de%20Constraint%20Default.aspx)

## Contexto

Este documento estabelece **diretrizes para uso de constraints DEFAULT** em Microsoft SQL Server, cobrindo sintaxe, boas práticas, casos de uso e integração com **TE074**.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA (seção 3.2.12.5)
- **Microsoft SQL Server Documentation** - DEFAULT Constraints
- **ISO/IEC 9075** (SQL Standard)

## O Que São Constraints DEFAULT

### Definição

**DEFAULT constraint** define um **valor padrão** automático para uma coluna quando nenhum valor é fornecido explicitamente no `INSERT`.

**Sintaxe Básica**:
```sql
CREATE TABLE Exemplo (
    Coluna INT DEFAULT 0,
    OutraColuna VARCHAR(50) DEFAULT 'Valor Padrão'
);
```

**Comportamento**:
```sql
-- Omitir coluna: usa DEFAULT
INSERT INTO Exemplo (OutraColuna) VALUES ('Teste');
-- Resultado: Coluna = 0 (default)

-- Valor NULL explícito: ignora DEFAULT
INSERT INTO Exemplo (Coluna, OutraColuna) VALUES (NULL, 'Teste');
-- Resultado: Coluna = NULL (se permitido)

-- Valor explícito: usa valor fornecido
INSERT INTO Exemplo (Coluna, OutraColuna) VALUES (99, 'Teste');
-- Resultado: Coluna = 99
```

## Sintaxe e Criação

### Declaração Inline (Recomendada)

**Sem nome de constraint** (SQL Server gera nome automático):
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE(),
    ATIVO_IN CHAR(1) DEFAULT 'S',
    VALOR_ORIGINAL_VL DECIMAL(18,2) DEFAULT 0.00
);
```

**Com nome de constraint** (recomendado para controle):
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    DATA_CRIACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CONTRATO_DATA_CRIACAO_DT DEFAULT GETDATE(),
    ATIVO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S',
    VALOR_ORIGINAL_VL DECIMAL(18,2) 
        CONSTRAINT DF_SPH_CONTRATO_VALOR_ORIGINAL_VL DEFAULT 0.00
);
```

**Nomenclatura TE074**:
- Padrão: `DF_<TABELA>_<COLUNA>`
- Exemplo: `DF_SPH_CONTRATO_ATIVO_IN`

### Adicionar DEFAULT em Tabela Existente

```sql
-- Adicionar constraint com nome
ALTER TABLE SPH_CLIENTE
ADD CONSTRAINT DF_SPH_CLIENTE_DATA_CADASTRO_DT 
    DEFAULT GETDATE() FOR DATA_CADASTRO_DT;

-- Adicionar sem nome (SQL Server gera automaticamente)
ALTER TABLE SPH_CLIENTE
ADD DEFAULT 'N' FOR ACESSO_PORTAL_IN;
```

### Remover DEFAULT

```sql
-- Se tem nome de constraint
ALTER TABLE SPH_CONTRATO
DROP CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN;

-- Se não conhece o nome (descobrir primeiro)
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    dc.definition AS DefaultValue
FROM sys.default_constraints dc
WHERE OBJECT_NAME(dc.parent_object_id) = 'SPH_CONTRATO';

-- Depois usar o nome descoberto
ALTER TABLE SPH_CONTRATO
DROP CONSTRAINT [DF__SPH_CONTR__ATIVO__5AEE82B9];  -- Nome gerado automaticamente
```

## Casos de Uso Comuns

### 1. Data/Hora de Criação/Atualização

**Padrão corporativo** (TE074 3.2.12.5):
```sql
CREATE TABLE SPH_CLIENTE (
    CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    NOME_NM VARCHAR(200),
    
    -- Auditoria temporal
    DATA_CRIACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CLIENTE_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL,
    DATA_ALTERACAO_DT DATETIME2 
        CONSTRAINT DF_SPH_CLIENTE_DATA_ALTERACAO_DT DEFAULT GETDATE() NOT NULL,
    USUARIO_CRIACAO_NM VARCHAR(100) 
        CONSTRAINT DF_SPH_CLIENTE_USUARIO_CRIACAO_NM DEFAULT SUSER_NAME() NOT NULL,
    USUARIO_ALTERACAO_NM VARCHAR(100) 
        CONSTRAINT DF_SPH_CLIENTE_USUARIO_ALTERACAO_NM DEFAULT SUSER_NAME() NOT NULL
);

-- Trigger para atualizar DATA_ALTERACAO_DT automaticamente
CREATE TRIGGER TR_SPH_CLIENTE_AFTER_UPDATE
ON SPH_CLIENTE
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET DATA_ALTERACAO_DT = GETDATE(),
        USUARIO_ALTERACAO_NM = SUSER_NAME()
    FROM SPH_CLIENTE c
    INNER JOIN inserted i ON c.CLIENTE_ID = i.CLIENTE_ID;
END;
```

### 2. Flags e Indicadores

**Valores booleanos**:
```sql
CREATE TABLE SPH_CONTRATO (
    CONTRATO_ID BIGINT PRIMARY KEY,
    
    -- Flags com valores padrão
    ATIVO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S' NOT NULL
        CONSTRAINT CK_SPH_CONTRATO_ATIVO_IN CHECK (ATIVO_IN IN ('S', 'N')),
    
    ENVIO_EMAIL_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_ENVIO_EMAIL_IN DEFAULT 'S' NOT NULL,
    
    BLOQUEADO_IN CHAR(1) 
        CONSTRAINT DF_SPH_CONTRATO_BLOQUEADO_IN DEFAULT 'N' NOT NULL
);
```

### 3. Valores Numéricos

**Quantidades e valores iniciais**:
```sql
CREATE TABLE SPH_CONTA (
    CONTA_ID BIGINT PRIMARY KEY,
    
    -- Saldo inicial zero
    SALDO_VL DECIMAL(18,2) 
        CONSTRAINT DF_SPH_CONTA_SALDO_VL DEFAULT 0.00 NOT NULL,
    
    -- Contador de acessos
    ACESSOS_QT INT 
        CONSTRAINT DF_SPH_CONTA_ACESSOS_QT DEFAULT 0 NOT NULL,
    
    -- Taxa percentual
    TAXA_JUROS_PC DECIMAL(5,4) 
        CONSTRAINT DF_SPH_CONTA_TAXA_JUROS_PC DEFAULT 0.0000 NOT NULL
);
```

### 4. Status e Tipos

**Valores de enumeração**:
```sql
CREATE TABLE SPH_PEDIDO (
    PEDIDO_ID BIGINT PRIMARY KEY,
    
    -- Status inicial
    STATUS_TP VARCHAR(20) 
        CONSTRAINT DF_SPH_PEDIDO_STATUS_TP DEFAULT 'PENDENTE' NOT NULL
        CONSTRAINT CK_SPH_PEDIDO_STATUS_TP 
            CHECK (STATUS_TP IN ('PENDENTE', 'EM_ANALISE', 'APROVADO', 'REJEITADO')),
    
    -- Prioridade padrão
    PRIORIDADE_TP VARCHAR(10) 
        CONSTRAINT DF_SPH_PEDIDO_PRIORIDADE_TP DEFAULT 'NORMAL' NOT NULL
        CONSTRAINT CK_SPH_PEDIDO_PRIORIDADE_TP 
            CHECK (PRIORIDADE_TP IN ('BAIXA', 'NORMAL', 'ALTA', 'URGENTE'))
);
```

### 5. GUIDs

**Identificadores únicos universais**:
```sql
CREATE TABLE SPH_DOCUMENTO (
    DOCUMENTO_ID BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- GUID para integração externa
    GUID_EXTERNO UNIQUEIDENTIFIER 
        CONSTRAINT DF_SPH_DOCUMENTO_GUID_EXTERNO DEFAULT NEWID() NOT NULL UNIQUE,
    
    ARQUIVO_NOME_NM VARCHAR(255)
);
```

### 6. Sequências Customizadas

**Valores calculados**:
```sql
CREATE TABLE SPH_CONFIGURACAO (
    CONFIG_ID INT PRIMARY KEY,
    
    -- Ano fiscal padrão = ano corrente
    ANO_FISCAL_NR INT 
        CONSTRAINT DF_SPH_CONFIGURACAO_ANO_FISCAL_NR DEFAULT YEAR(GETDATE()) NOT NULL,
    
    -- Período padrão = mês corrente
    PERIODO_NR INT 
        CONSTRAINT DF_SPH_CONFIGURACAO_PERIODO_NR DEFAULT MONTH(GETDATE()) NOT NULL
);
```

## Boas Práticas

### ✅ FAZER

#### 1. Usar para Valores Consistentes

**Dados de auditoria**:
```sql
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE() NOT NULL
```

**Flags padrão**:
```sql
ATIVO_IN CHAR(1) DEFAULT 'S' NOT NULL
```

#### 2. Nomear Constraints

**Facilita manutenção**:
```sql
-- ✅ CORRETO: Nome explícito
CONSTRAINT DF_SPH_CLIENTE_ATIVO_IN DEFAULT 'S'

-- ❌ EVITAR: Nome automático gerado
DEFAULT 'S'  -- SQL Server gera: DF__SPH_CLIEN__ATIVO__5AEE82B9
```

#### 3. Combinar com NOT NULL

**Garantir valor sempre presente**:
```sql
DATA_CRIACAO_DT DATETIME2 
    CONSTRAINT DF_SPH_CONTRATO_DATA_CRIACAO_DT DEFAULT GETDATE() NOT NULL
```

#### 4. Documentar no PowerDesigner

**Comment** (TE074 3.2.2):
```sql
EXEC sys.sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Data de criação do registro. Preenchida automaticamente no INSERT via DEFAULT constraint.',
    @level0type = N'SCHEMA', @level0name = N'dbo',
    @level1type = N'TABLE',  @level1name = N'SPH_CONTRATO',
    @level2type = N'COLUMN', @level2name = N'DATA_CRIACAO_DT';
```

#### 5. Usar Funções Determinísticas Quando Possível

**Preferir funções que retornam o mesmo valor**:
```sql
-- ✅ Determinístico: Ano fiscal fixo
ANO_FISCAL_NR INT DEFAULT 2026

-- ⚠️ Não-determinístico: Valor muda a cada INSERT
DATA_CRIACAO_DT DATETIME2 DEFAULT GETDATE()
-- (Aceitável para auditoria, mas não para particionamento)
```

### ❌ EVITAR

#### 1. DEFAULT para Lógica de Negócio Complexa

**Lógica deve estar na aplicação**:
```sql
-- ❌ EVITAR: Lógica complexa em DEFAULT
PRAZO_DIAS_QT INT DEFAULT 
    CASE 
        WHEN EXISTS (SELECT 1 FROM OutraTabela WHERE ...) THEN 30
        ELSE 60
    END

-- ✅ PREFERIR: Aplicação calcula e fornece valor
```

#### 2. DEFAULT NULL

**Redundante**:
```sql
-- ❌ EVITAR: Redundante (NULL já é padrão se coluna aceita NULL)
OBSERVACAO_DS VARCHAR(MAX) DEFAULT NULL

-- ✅ PREFERIR: Omitir DEFAULT (NULL implícito)
OBSERVACAO_DS VARCHAR(MAX)
```

#### 3. DEFAULT em Colunas de PK

**PK deve ser sempre fornecida ou IDENTITY**:
```sql
-- ❌ EVITAR: DEFAULT em PK
CLIENTE_ID BIGINT PRIMARY KEY DEFAULT 0

-- ✅ CORRETO: IDENTITY ou valor fornecido
CLIENTE_ID BIGINT IDENTITY(1,1) PRIMARY KEY
```

#### 4. DEFAULT Substituindo Validação

**DEFAULT não substitui validação de negócio**:
```sql
-- ❌ EVITAR: Confiar apenas em DEFAULT
VALOR_VL DECIMAL(18,2) DEFAULT 0.00

-- ✅ CORRETO: DEFAULT + validação na aplicação
VALOR_VL DECIMAL(18,2) DEFAULT 0.00
-- Aplicação valida: if (valor < 0) throw Exception;
```

## Funções Comuns em DEFAULT

### Funções de Data/Hora

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `GETDATE()` | Data/hora atual | `DEFAULT GETDATE()` |
| `GETUTCDATE()` | Data/hora UTC | `DEFAULT GETUTCDATE()` |
| `SYSDATETIME()` | Maior precisão | `DEFAULT SYSDATETIME()` |
| `CURRENT_TIMESTAMP` | Equivalente a GETDATE() | `DEFAULT CURRENT_TIMESTAMP` |

**Recomendação**: `GETDATE()` ou `SYSDATETIME()` para auditoria.

### Funções de Usuário

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `SUSER_NAME()` | Login do usuário | `DEFAULT SUSER_NAME()` |
| `USER_NAME()` | Nome do usuário no banco | `DEFAULT USER_NAME()` |
| `ORIGINAL_LOGIN()` | Login original (antes de EXECUTE AS) | `DEFAULT ORIGINAL_LOGIN()` |

**Recomendação**: `SUSER_NAME()` para auditoria corporativa.

### Funções de GUID

| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `NEWID()` | GUID aleatório | `DEFAULT NEWID()` |
| `NEWSEQUENTIALID()` | GUID sequencial (melhor para PK) | `DEFAULT NEWSEQUENTIALID()` |

**Recomendação**: `NEWSEQUENTIALID()` se usar GUID como PK (melhor performance de índice).

### Funções Matemáticas

```sql
-- Ano corrente
ANO_NR INT DEFAULT YEAR(GETDATE())

-- Mês corrente
MES_NR INT DEFAULT MONTH(GETDATE())

-- Valor absoluto
VALOR_ABS_VL DECIMAL(18,2) DEFAULT ABS(-100.00)
```

### Constantes

```sql
-- Valores fixos
VERSAO_NR INT DEFAULT 1
TIPO_TP VARCHAR(10) DEFAULT 'PADRAO'
ATIVO_IN CHAR(1) DEFAULT 'S'
SALDO_VL DECIMAL(18,2) DEFAULT 0.00
```

## Performance e Impacto

### Impacto em INSERT

**Minimal** - DEFAULT constraint é avaliada no momento do INSERT:
- Não degrada performance
- Evita roundtrips aplicação↔banco para valores padrão

**Benchmark** (exemplo):
```sql
-- Sem DEFAULT: 100.000 INSERTs = 2.5 segundos
INSERT INTO Tabela (ID, Coluna1, Coluna2, Coluna3) VALUES (...)

-- Com DEFAULT: 100.000 INSERTs = 2.5 segundos (mesma performance)
INSERT INTO Tabela (ID, Coluna1) VALUES (...)  -- Coluna2, Coluna3 usam DEFAULT
```

### Storage

**Não adiciona overhead** - valor DEFAULT é armazenado normalmente como qualquer outro valor.

### Índices

**DEFAULT não afeta índices** - valores são indexados normalmente.

## Validação e Monitoramento

### Consultar Constraints DEFAULT

```sql
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_SCHEMA_NAME(dc.parent_object_id) AS SchemaName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    dc.definition AS DefaultValue,
    dc.create_date AS CreatedDate
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
ORDER BY TableName, ColumnName;
```

### Validar Nomenclatura

```sql
-- Verificar constraints DEFAULT com nomenclatura incorreta
SELECT 
    OBJECT_NAME(dc.object_id) AS ConstraintName,
    OBJECT_NAME(dc.parent_object_id) AS TableName,
    COL_NAME(dc.parent_object_id, dc.parent_column_id) AS ColumnName,
    CASE 
        WHEN OBJECT_NAME(dc.object_id) LIKE 'DF[_]' + OBJECT_NAME(dc.parent_object_id) + '[_]%' 
            THEN 'OK'
        ELSE 'ERRO: Nomenclatura incorreta (esperado: DF_' + OBJECT_NAME(dc.parent_object_id) + '_' + COL_NAME(dc.parent_object_id, dc.parent_column_id) + ')'
    END AS ValidacaoNome
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
ORDER BY TableName;
```

### Script de Correção de Nomenclatura

```sql
-- Gerar comandos ALTER TABLE para renomear constraints
SELECT 
    'EXEC sp_rename ''' + OBJECT_SCHEMA_NAME(dc.parent_object_id) + '.' + OBJECT_NAME(dc.object_id) + ''', ' +
    '''DF_' + OBJECT_NAME(dc.parent_object_id) + '_' + COL_NAME(dc.parent_object_id, dc.parent_column_id) + ''', ''OBJECT'';' AS ComandoRenomear
FROM sys.default_constraints dc
WHERE OBJECT_SCHEMA_NAME(dc.parent_object_id) = 'dbo'
  AND OBJECT_NAME(dc.object_id) NOT LIKE 'DF[_]' + OBJECT_NAME(dc.parent_object_id) + '[_]%';
```

## Integração com PowerDesigner

### Definir DEFAULT no PowerDesigner

**Passos**:
1. Selecionar coluna
2. Aba **General** → **Standard Checks**
3. Campo **Default Value**: `GETDATE()` (sem aspas para funções)
4. Para strings: `'S'` (com aspas simples)

**Gerar DDL**: PowerDesigner inclui constraint DEFAULT automaticamente.

### Nomenclatura Automática

**PowerDesigner Preferences**:
1. **Database** → **Microsoft SQL Server** → **Script** → **Objects**
2. **Default**: `DF_%TABLE%_%COLUMN%`

**Resultado**:
```sql
CONSTRAINT DF_SPH_CONTRATO_ATIVO_IN DEFAULT 'S'
```

## Checklist de Conformidade

### Desenvolvimento

- [ ] DEFAULT usado para valores consistentes (auditoria, flags, zeros)
- [ ] Nomenclatura: `DF_<TABELA>_<COLUNA>`
- [ ] Funções apropriadas (GETDATE, SUSER_NAME, etc.)
- [ ] Combinado com NOT NULL quando aplicável
- [ ] Documentado no PowerDesigner (comment)
- [ ] Não substitui validação de negócio da aplicação

### Validação ADI

- [ ] Constraints DEFAULT nomeadas (não geradas automaticamente)
- [ ] Valores DEFAULT adequados ao tipo de dado
- [ ] Não há lógica complexa em DEFAULT
- [ ] Conforme TE074 3.2.12.5

### Implementação ABD

- [ ] DDL revisado
- [ ] Constraints criadas corretamente
- [ ] Nomenclatura validada via query

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074 (3.2.12.5), ISO/IEC 9075


----


*FIM "Microsoft SQL Server - Uso de Constraint Default.md"*


*INICIO "Critérios para Validação de Modelos de Dados.md"*


----


# Critérios para Validação de Modelos de Dados

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Critérios para Validação de Modelos - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Critérios%20para%20Validação%20de%20Modelos%20de%20Dados.aspx)

## Contexto

Este documento estabelece os **critérios de validação** que modelos de dados devem atender antes da implementação em ambientes produtivos, conforme diretrizes da **TE074** e processos da **ADI** (Administração de Dados).

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **TE079** - Segurança da Informação
- **TE105** - Integração e Compartilhamento de Dados
- **TE109** - Controle de Versão
- **TE124** - Governança de Dados
- **ISO/IEC 11179** - Registro de Metadados

## Categorias de Validação

### 1. Validações Estruturais

#### 1.1 Nomenclatura de Objetos

**Tabelas**:
- [ ] Prefixo de sistema adequado (3 caracteres)
- [ ] Nome descritivo em português
- [ ] Sem caracteres especiais (exceto _)
- [ ] Máximo de caracteres respeitado (SGBD específico)

**Colunas**:
- [ ] Nome descritivo em português
- [ ] Padrão de nomenclatura consistente
- [ ] Sufixos adequados para tipos (DT, VL, ID, etc.)

**Constraints**:
- [ ] PK: `PK_<NomeTabela>`
- [ ] FK: `FK_<TabelaOrigem>_<TabelaDestino>`
- [ ] UK: `UK_<NomeTabela>_<Colunas>`
- [ ] CK: `CK_<NomeTabela>_<Regra>`

#### 1.2 Chaves Primárias

- [ ] Toda tabela possui PK definida
- [ ] PK identifica univocamente cada registro
- [ ] Nome da constraint segue padrão
- [ ] Tipo de dados adequado (INT, BIGINT, UNIQUEIDENTIFIER)

#### 1.3 Chaves Estrangeiras

- [ ] Todas FKs possuem constraint nomeada
- [ ] Ações referênciais definidas (CASCADE, SET NULL, RESTRICT)
- [ ] Evitado uso de DISABLE/NOVALIDATE (Oracle)
- [ ] Cardinalidade e opcionalidade corretas
- [ ] Papéis de relacionamento (parent/child) documentados

#### 1.4 Integridade Referencial

- [ ] Todos relacionamentos possuem FK física
- [ ] Constraints de verificação (CHECK) para domínios limitados
- [ ] Valores DEFAULT apropriados
- [ ] Campos obrigatórios (NOT NULL) corretamente identificados

### 2. Validações de Normalização

#### 2.1 Terceira Forma Normal (3NF)

- [ ] Modelo em 3NF obrigatória (TE074 3.2.4)
- [ ] Eliminação de dependências transitivas
- [ ] Eliminação de dependências parciais
- [ ] Justificativa documentada para desnormalizações

#### 2.2 Redundância de Dados

- [ ] Ausência de colunas repetidas
- [ ] Dados derivados/calculados minimizados
- [ ] Justificativa para dados replicados (performance)

### 3. Validações de Metadados

#### 3.1 Descrições (Comments)

- [ ] **Tabelas**: descrição obrigatória em português (TE074 3.2.2)
- [ ] **Colunas**: descrição obrigatória em português
- [ ] Descrições claras e completas
- [ ] Glossário de negócio aderente

#### 3.2 Propriedades do Modelo

- [ ] Nome do modelo: `<SISTEMA>_DIAGRAMA_PRINCIPAL`
- [ ] OWNER = DBO (SQL Server)
- [ ] DBMS definido corretamente
- [ ] Versão do modelo documentada

### 4. Validações de Volumetria e Performance

#### 4.1 Particionamento

- [ ] Tabelas com 100M+ registros/ano avaliadas para particionamento (TE074 3.2.8.3)
- [ ] Estratégia de particionamento definida (RANGE, LIST, HASH)
- [ ] Aprovação ABD para particionamento

#### 4.2 Compactação

- [ ] Novas tabelas com compactação habilitada (TE074 3.2.9.1)
- [ ] Tipo de compactação adequado ao SGBD:
  - SQL Server: `DATA_COMPRESSION(PAGE)`
  - Oracle: `COMPRESS(BASIC)`
  - DB2: `COMPRESS(YES)`

#### 4.3 Índices

- [ ] Índices para colunas de FK (quando apropriado)
- [ ] Índices para colunas de busca frequente
- [ ] Evitar sobre-indexação
- [ ] Índices únicos para constraints UK

### 5. Validações de Ciclo de Vida

#### 5.1 Política de Retenção

- [ ] Política de retenção definida (TE074 3.2.10)
- [ ] Responsável pelo dado identificado (gestor)
- [ ] Critérios de migração para histórico definidos
- [ ] Regras de expurgo documentadas

#### 5.2 Tipos de Tabelas

**Tabelas Transacionais (Negociais)**:
- [ ] Dados operacionais de alta frequência
- [ ] Performance otimizada

**Tabelas de Apoio (Support)**:
- [ ] Dados de referência/domínio
- [ ] Baixa volatilidade

**Tabelas Históricas**:
- [ ] Estrutura compatível com origem
- [ ] Compactação aplicada
- [ ] Particionamento por período (se aplicável)

### 6. Validações de Segurança

#### 6.1 Dados Sensíveis

- [ ] Campos sensíveis identificados (CPF, CNPJ, senhas)
- [ ] Estratégia de criptografia definida (se aplicável)
- [ ] Conformidade com LGPD
- [ ] Mascaramento de dados em ambientes não-produtivos

#### 6.2 Controle de Acesso

- [ ] Perfis de acesso definidos (RBAC)
- [ ] Conformidade com TE079
- [ ] Auditoria de acessos configurada

### 7. Validações de Integração

#### 7.1 Compartilhamento de Dados

- [ ] Conformidade com TE105 (integração)
- [ ] Conformidade com TE124 (governança)
- [ ] APIs públicas vs privadas identificadas
- [ ] Contratos de dados documentados

#### 7.2 ETL/Migração

- [ ] Mapeamento de origem → destino definido
- [ ] Transformações documentadas
- [ ] Validações de qualidade implementadas

### 8. Validações de Documentação

#### 8.1 Documentação do Modelo

- [ ] Diagrama ER completo e legível
- [ ] Dicionário de dados atualizado
- [ ] Regras de negócio documentadas
- [ ] Glossário de termos

#### 8.2 Rastreabilidade

- [ ] Versionamento no RTC/Git
- [ ] Histórico de alterações documentado
- [ ] Responsáveis identificados

## Ferramentas de Validação

### Pré-Validador de Modelos

**URL**: `http://gestaodedados.coresp.caixa`

**Validações Automatizadas**:
1. Nomenclatura de objetos
2. Presença de descrições
3. Chaves primárias obrigatórias
4. Compactação em novas tabelas
5. Conformidade com padrões TE074

**Processo**:
1. Exportar modelo do PowerDesigner (.pdm)
2. Submeter ao pré-validador
3. Revisar relatório de validação
4. Corrigir inconformidades
5. Revalidar até aprovação

### PowerDesigner - Validação Manual

1. **Model → Check Model** (F4)
   - Valida integridade estrutural
   - Detecta FK órfãs
   - Verifica constraints

2. **Model → Generate Report**
   - Documentação completa
   - Dicionário de dados

## Workflow de Aprovação

### Etapa 1: Desenvolvimento

1. Modelagem conceitual/lógica
2. Modelo físico no PowerDesigner
3. Autovalidação com Check Model
4. Exportação DDL

### Etapa 2: Pré-Validação

1. Submissão ao pré-validador
2. Correção de inconformidades
3. Revalidação até 100% conforme

### Etapa 3: Validação ADI

1. Abertura de solicitação no RTC
2. ADI revisa modelo:
   - Conformidade normativa
   - Qualidade de metadados
   - Aderência a padrões corporativos
3. ADI aprova ou solicita ajustes

### Etapa 4: Implementação ABD

1. ABD recebe modelo aprovado
2. Executa DDL em ambiente alvo
3. Valida implementação física
4. Documenta objetos criados

## Checklist Completo de Validação

### Estrutural
- [ ] Nomenclatura padronizada
- [ ] PKs em todas tabelas
- [ ] FKs com constraints
- [ ] Descrições completas

### Normalização
- [ ] 3NF obrigatória
- [ ] Desnormalizações justificadas

### Performance
- [ ] Particionamento avaliado
- [ ] Compactação aplicada
- [ ] Índices adequados

### Metadados
- [ ] Comments em todos objetos
- [ ] Modelo nomeado corretamente
- [ ] OWNER = DBO (SQL Server)

### Ciclo de Vida
- [ ] Política de retenção definida
- [ ] Tipo de tabela classificado

### Segurança
- [ ] Dados sensíveis identificados
- [ ] Controle de acesso definido

### Integração
- [ ] Conformidade TE105/TE124
- [ ] Contratos de integração

### Documentação
- [ ] Diagrama ER completo
- [ ] Dicionário de dados
- [ ] Versionamento no RTC

### Ferramentas
- [ ] Validação no pré-validador: 100%
- [ ] PowerDesigner Check Model: OK
- [ ] Aprovação ADI via RTC
- [ ] Implementação ABD confirmada

## Não Conformidades Comuns

### Críticas (Impedem Aprovação)

1. **Ausência de PK**
2. **Nomenclatura fora do padrão**
3. **Descrições ausentes**
4. **Modelo não em 3NF (sem justificativa)**
5. **Compactação não definida (novas tabelas)**

### Médias (Requerem Ajuste)

1. FK sem constraint nomeada
2. Índices ausentes em FKs
3. Política de retenção não definida
4. Documentação incompleta

### Baixas (Recomendações)

1. Descrições genéricas
2. Glossário incompleto
3. Histórico de versões não detalhado

## Referências e Links

- **Pré-Validador**: http://gestaodedados.coresp.caixa
- **RTC Workflow**: Sistema de solicitações ADI/ABD
- **PowerDesigner Repository**: Repositório corporativo de modelos
- **TE074**: Norma completa de modelagem
- **ISO/IEC 11179**: Padrão internacional de metadados

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Normas relacionadas**: TE074, TE079, TE105, TE109, TE124, ISO/IEC 11179


----


*FIM "Critérios para Validação de Modelos de Dados.md"*


*INICIO "Validações executadas no Pré-Validador.md"*


----


# Validações executadas no Pré-Validador

> **Fonte**: Portal de Práticas para Desenvolvimento de Software - CAIXA  
> **Página original**: [Validações executadas no Pré-Validador - PPDS SharePoint](https://caixa.sharepoint.com/sites/PPDS/SitePages/Validações-executadas-no-Pré-Validador.aspx)

## Contexto

Este documento detalha as **validações automáticas** executadas pela ferramenta **Pré-Validador de Modelos de Dados** (http://gestaodedados.coresp.caixa), conforme **TE074**, incluindo critérios, mensagens de erro e processo de correção.

## Referências Normativas

- **TE074** - Modelagem de Dados para Sistemas CAIXA
- **Pré-Validador** - http://gestaodedados.coresp.caixa
- **Fluxo de Aprovação** - ADI → ABD

## O Que é o Pré-Validador

### Definição

**Pré-Validador** é uma ferramenta web interna da CAIXA que **valida automaticamente modelos de dados** (arquivos PDM do PowerDesigner) contra as normas da **TE074**.

**Objetivo**: Identificar **não-conformidades** antes da submissão para aprovação ADI/ABD.

### Acesso

**URL**: http://gestaodedados.coresp.caixa (rede CAIXA)

**Perfil requerido**: Desenvolvedor, Arquiteto de Dados, DBA

### Workflow de Validação

```
1. Desenvolvedor cria modelo no PowerDesigner (PDM - Physical Data Model)
   ↓
2. Upload do arquivo .pdm no Pré-Validador
   ↓
3. Ferramenta executa validações automáticas (TE074)
   ↓
4. Relatório gerado (PDF/Excel) com não-conformidades
   ↓
5. Desenvolvedor corrige modelo no PowerDesigner
   ↓
6. Re-upload e validação até 0 não-conformidades CRÍTICAS
   ↓
7. Submissão para ADI (Arquitetura de Dados e Informação)
   ↓
8. Aprovação ADI + ABD
   ↓
9. Implementação em banco de dados
```

## Categorias de Validação

### Classificação de Severidade

**CRÍTICO**: **Bloqueia aprovação ADI/ABD**. Deve ser corrigido obrigatoriamente.

**ALERTA**: **Não bloqueia**, mas requer justificativa documentada.

**INFORMAÇÃO**: Sugestões de melhorias, não obrigatório corrigir.

### Categorias Validadas

1. **Nomenclatura** (tabelas, colunas, constraints, índices)
2. **Chaves Primárias** (presença, nomenclatura)
3. **Chaves Estrangeiras** (nomenclatura, relacionamentos)
4. **Colunas** (sufixos, tipos de dados, descrições)
5. **Índices** (nomenclatura, unicidade)
6. **Constraints** (nomenclatura, regras de negócio)
7. **Descrições** (português, completude)
8. **Compactação** (habilitada para tabelas grandes)
9. **Particionamento** (critérios de volumetria)
10. **Lifecycle** (políticas de retenção)

## Validações de Nomenclatura

### Validação 001: Nome de Tabela (Regex)

**Regra TE074 (3.2.1.1)**: Tabelas devem seguir padrão `^[A-Z]{3}_[A-Z0-9_]+$`

**Exemplos VÁLIDOS**:
- `PES_PESSOA`
- `CON_CONTRATO`
- `POI_TRILHA_AUDITORIA`
- `TAB_MUNICIPIO`

**Exemplos INVÁLIDOS**:
- `Pessoa` → **CRÍTICO**: Nome não segue padrão TE074 (falta prefixo, lowercase)
- `PESPESSOA` → **CRÍTICO**: Falta separador `_` entre prefixo e nome
- `PE_PESSOA` → **CRÍTICO**: Prefixo deve ter exatamente 3 caracteres
- `PES_pessoa` → **CRÍTICO**: Nome deve ser uppercase

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'Pessoa': Nome não conforme TE074 3.2.1.1. 
Padrão esperado: {3-char-prefix}_{NOME_DESCRITIVO}
Exemplo: PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Properties → General → Name
-- Antes: Pessoa
-- Depois: PES_PESSOA
```

### Validação 002: Nome de Coluna (Sufixos)

**Regra TE074 (3.2.1.2)**: Colunas devem ter sufixo conforme tipo de dado.

**Sufixos Obrigatórios**:
- `_ID`: Identificadores (INT, BIGINT)
- `_DT`: Datas/timestamps (DATE, DATETIME, DATETIME2)
- `_VL`: Valores monetários (DECIMAL, NUMERIC)
- `_QT`: Quantidades (INT, DECIMAL)
- `_PC`: Percentuais (DECIMAL)
- `_NM`: Nomes (VARCHAR, NVARCHAR)
- `_DS`: Descrições (VARCHAR, NVARCHAR, TEXT)
- `_IN`: Indicadores/flags (CHAR(1))
- `_TP`: Tipos/categorias (VARCHAR)
- `_NR`: Números (CPF, CNPJ, telefone - VARCHAR)

**Exemplos INVÁLIDOS**:
- `NOME` (VARCHAR) → **CRÍTICO**: Falta sufixo `_NM` (esperado: `NOME_NM` ou `NOME_COMPLETO_NM`)
- `DATA_NASCIMENTO` (DATE) → **CRÍTICO**: Falta sufixo `_DT` (esperado: `DATA_NASCIMENTO_DT`)
- `VALOR` (DECIMAL) → **CRÍTICO**: Falta sufixo `_VL` (esperado: `VALOR_VL` ou `VALOR_CONTRATO_VL`)
- `ATIVO` (CHAR(1)) → **CRÍTICO**: Falta sufixo `_IN` (esperado: `ATIVO_IN`)

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.NOME': Nome não conforme TE074 3.2.1.2.
Tipo de dado: VARCHAR(200)
Sufixo esperado: _NM (nomes)
Sugestão: Renomear para 'NOME_COMPLETO_NM'
```

**Correção**:
```sql
-- PowerDesigner: Table → Columns → Name
-- Antes: NOME
-- Depois: NOME_COMPLETO_NM
```

### Validação 003: Nome de Primary Key

**Regra TE074 (3.2.11.1)**: PKs devem seguir padrão `PK_<NOME_TABELA>`

**Exemplos VÁLIDOS**:
- `PK_PES_PESSOA`
- `PK_CON_CONTRATO`
- `PK_POI_TRILHA_AUDITORIA`

**Exemplos INVÁLIDOS**:
- `PK_Pessoa` → **CRÍTICO**: Deve ser `PK_PES_PESSOA` (uppercase)
- `PRIMARY_KEY_PESSOA` → **CRÍTICO**: Padrão deve ser `PK_<TABELA>`
- `PESSOA_PK` → **CRÍTICO**: Prefixo `PK_` deve vir antes

**Mensagem de Erro**:
```
[CRÍTICO] Constraint PK 'PRIMARY_KEY_PESSOA' na tabela 'PES_PESSOA': 
Nome não conforme TE074 3.2.11.1.
Nome esperado: PK_PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Table → Keys → Primary Key → Name
-- Antes: PRIMARY_KEY_PESSOA
-- Depois: PK_PES_PESSOA
```

### Validação 004: Nome de Foreign Key

**Regra TE074 (3.2.11.2)**: FKs devem seguir padrão `FK_<TABELA_ORIGEM>_<TABELA_DESTINO>`

**Exemplos VÁLIDOS**:
- `FK_CON_CONTRATO_PES_PESSOA` (Contrato → Pessoa)
- `FK_POI_AUDITORIA_POI_USUARIO` (Auditoria → Usuario)

**Exemplos INVÁLIDOS**:
- `FK_CONTRATO_PESSOA` → **CRÍTICO**: Faltam prefixos das tabelas
- `FK_PESSOA` → **CRÍTICO**: Deve incluir nome da tabela origem
- `FK_CON_CONTRATO_PESSOA` → **CRÍTICO**: Tabela destino deve incluir prefixo (`PES_PESSOA`)

**Mensagem de Erro**:
```
[CRÍTICO] Constraint FK 'FK_CONTRATO_PESSOA' na tabela 'CON_CONTRATO': 
Nome não conforme TE074 3.2.11.2.
Origem: CON_CONTRATO, Destino: PES_PESSOA
Nome esperado: FK_CON_CONTRATO_PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner: Table → References → Name
-- Antes: FK_CONTRATO_PESSOA
-- Depois: FK_CON_CONTRATO_PES_PESSOA
```

### Validação 005: Nome de Índice

**Regra TE074 (3.2.1.3)**: Índices devem seguir padrão:
- Único: `IDX_UK_<TABELA>_<COLUNAS>`
- Não-único: `IDX_<TABELA>_<COLUNAS>`

**Exemplos VÁLIDOS**:
- `IDX_PES_PESSOA_CPF_NR` (índice único em CPF)
- `IDX_UK_PES_PESSOA_CPF_NR` (alternativa com UK)
- `IDX_CON_CONTRATO_STATUS_IN` (índice não-único em Status)

**Exemplos INVÁLIDOS**:
- `IX_PESSOA_CPF` → **CRÍTICO**: Deve ser `IDX_PES_PESSOA_CPF_NR`
- `INDEX_STATUS` → **CRÍTICO**: Falta padrão `IDX_<TABELA>_`

**Mensagem de Erro**:
```
[CRÍTICO] Índice 'IX_PESSOA_CPF' na tabela 'PES_PESSOA': 
Nome não conforme TE074 3.2.1.3.
Tipo: Único
Nome esperado: IDX_UK_PES_PESSOA_CPF_NR (ou IDX_PES_PESSOA_CPF_NR se único via constraint)
```

### Validação 006: Nome de Sequence (Oracle)

**Regra TE074 (3.2.1.4)**: Sequences devem seguir padrão `SEQ_<TABELA>_ID`

**Exemplos VÁLIDOS**:
- `SEQ_PES_PESSOA_ID`
- `SEQ_CON_CONTRATO_ID`

**Exemplos INVÁLIDOS**:
- `SEQ_PESSOA` → **CRÍTICO**: Falta sufixo `_ID`
- `PESSOA_SEQ` → **CRÍTICO**: Prefixo `SEQ_` deve vir antes

## Validações de Estrutura

### Validação 101: Presença de Primary Key

**Regra TE074 (3.2.11.1)**: **Toda tabela deve ter PK**.

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'PES_ENDERECO': Não possui Primary Key.
TE074 3.2.11.1 exige PK em todas as tabelas.
```

**Correção**:
```sql
-- Adicionar PK no PowerDesigner:
-- Table → Keys → Primary Key → Add
-- Selecionar coluna (ex: ENDERECO_ID)
```

### Validação 102: Coluna PK sem IDENTITY/Sequence

**Regra TE074 (3.2.11.1)**: PKs surrogate devem usar IDENTITY (SQL Server) ou Sequence (Oracle).

**Mensagem de Erro**:
```
[ALERTA] Coluna PK 'PESSOA_ID' na tabela 'PES_PESSOA': 
Não configurada como IDENTITY (SQL Server) ou associada a Sequence (Oracle).
Recomendação: Habilitar auto-increment.
```

**Correção**:
```sql
-- PowerDesigner (SQL Server): 
-- Column → Properties → Identity → Yes

-- PowerDesigner (Oracle):
-- Criar Sequence: SEQ_PES_PESSOA_ID
-- Associar à coluna via trigger ou DEFAULT NEXT VALUE
```

### Validação 103: Foreign Key sem Constraint

**Regra TE074 (3.2.11.2)**: Relacionamentos devem ter constraint FK declarada.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'CON_CONTRATO.PESSOA_ID' parece ser FK (nome termina em _ID), 
mas não possui constraint FK declarada.
Tabela destino provável: PES_PESSOA
```

**Correção**:
```sql
-- PowerDesigner:
-- Table CON_CONTRATO → References → New Reference
-- Parent Table: PES_PESSOA
-- Foreign Key Columns: PESSOA_ID → PESSOA_ID
-- Name: FK_CON_CONTRATO_PES_PESSOA
```

### Validação 104: FK sem Índice

**Regra TE074 (3.2.11.2)**: Colunas FK devem ter índice (performance de JOINs).

**Mensagem de Erro**:
```
[ALERTA] Coluna FK 'CON_CONTRATO.PESSOA_ID': Não possui índice.
Recomendação: Criar IDX_CON_CONTRATO_PESSOA_ID para melhorar performance de JOINs.
```

**Correção**:
```sql
-- PowerDesigner:
-- Table CON_CONTRATO → Indexes → New Index
-- Columns: PESSOA_ID
-- Name: IDX_CON_CONTRATO_PESSOA_ID
```

### Validação 105: Coluna Nullable sem Justificativa

**Regra TE074 (3.2.12)**: Colunas importantes não devem ser nullable sem justificativa.

**Mensagem de Erro**:
```
[ALERTA] Coluna 'PES_PESSOA.CPF_NR': Definida como nullable.
CPF é dado crítico, considere tornar NOT NULL.
```

**Correção**:
```sql
-- PowerDesigner:
-- Column CPF_NR → Properties → Mandatory: Yes
```

## Validações de Descrições

### Validação 201: Tabela sem Descrição

**Regra TE074 (3.2.1.1)**: **Todas as tabelas** devem ter descrição em **português**.

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'PES_PESSOA': Descrição ausente ou vazia.
TE074 exige descrição em português para todas as tabelas.
Exemplo: "Cadastro de pessoas físicas e jurídicas do sistema."
```

**Correção**:
```sql
-- PowerDesigner:
-- Table → Properties → Comment
-- Inserir: "Cadastro de pessoas físicas e jurídicas, incluindo clientes, funcionários e fornecedores."
```

### Validação 202: Coluna sem Descrição

**Regra TE074 (3.2.1.2)**: **Todas as colunas** devem ter descrição em **português**.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.CPF_NR': Descrição ausente ou vazia.
TE074 exige descrição em português para todas as colunas.
Exemplo: "CPF da pessoa (11 dígitos, sem formatação)."
```

**Correção**:
```sql
-- PowerDesigner:
-- Column CPF_NR → Properties → Comment
-- Inserir: "Número do CPF (Cadastro de Pessoa Física), composto por 11 dígitos numéricos, armazenado sem formatação (pontos/hífen)."
```

### Validação 203: Descrição em Inglês

**Regra TE074 (3.2.1)**: Descrições devem ser em **português do Brasil**.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'PES_PESSOA': Descrição parece estar em inglês.
Descrição atual: "Person table for customer registration"
TE074 exige descrições em português.
```

**Correção**:
```sql
-- Antes: "Person table for customer registration"
-- Depois: "Cadastro de pessoas físicas e jurídicas, incluindo clientes, funcionários e fornecedores."
```

### Validação 204: Descrição Genérica

**Regra**: Descrições devem ser **específicas e informativas**.

**Mensagem de Erro**:
```
[INFORMAÇÃO] Coluna 'PES_PESSOA.NOME_NM': Descrição genérica.
Descrição atual: "Nome"
Sugestão: Expandir para "Nome completo da pessoa física ou razão social da pessoa jurídica."
```

## Validações de Tipos de Dados

### Validação 301: Tipo de Dado Incompatível com Sufixo

**Regra TE074 (3.2.12)**: Tipo de dado deve corresponder ao sufixo da coluna.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'PES_PESSOA.DATA_NASCIMENTO_DT': 
Tipo de dado VARCHAR(10) incompatível com sufixo _DT.
Esperado: DATE ou DATETIME2
```

**Correção**:
```sql
-- PowerDesigner:
-- Column DATA_NASCIMENTO_DT → Data Type: DATE (ou DATETIME2 se incluir hora)
```

### Validação 302: Uso de FLOAT para Valores Monetários

**Regra TE074 (3.2.12)**: Valores monetários devem usar DECIMAL(15,2), **nunca FLOAT**.

**Mensagem de Erro**:
```
[CRÍTICO] Coluna 'CON_CONTRATO.VALOR_VL': 
Tipo FLOAT inadequado para valores monetários.
Risco: Erros de arredondamento.
Correção obrigatória: Alterar para DECIMAL(15,2)
```

**Correção**:
```sql
-- PowerDesigner:
-- Column VALOR_VL → Data Type: DECIMAL(15,2)
```

### Validação 303: Tamanho de VARCHAR Excessivo

**Regra**: Evitar VARCHAR(MAX) quando tamanho máximo conhecido.

**Mensagem de Erro**:
```
[ALERTA] Coluna 'PES_PESSOA.NOME_NM': 
Tipo VARCHAR(MAX) pode impactar performance.
Recomendação: Definir tamanho máximo (ex: VARCHAR(200) para nomes).
```

**Correção**:
```sql
-- PowerDesigner:
-- Column NOME_NM → Data Type: VARCHAR(200)
```

### Validação 304: CHAR vs VARCHAR

**Regra**: Usar CHAR para colunas de tamanho fixo, VARCHAR para variável.

**Mensagem de Erro**:
```
[INFORMAÇÃO] Coluna 'PES_PESSOA.UF_SG': 
Tipo VARCHAR(2) pode ser otimizado para CHAR(2).
UF tem tamanho fixo (2 caracteres).
```

**Correção**:
```sql
-- PowerDesigner:
-- Column UF_SG → Data Type: CHAR(2)
```

## Validações de Compactação

### Validação 401: Tabela Grande sem Compactação

**Regra TE074 (3.2.9)**: Tabelas novas devem ter compactação habilitada (PAGE).

**Mensagem de Erro**:
```
[CRÍTICO] Tabela 'POI_TRILHA_AUDITORIA': 
Compactação não configurada.
TE074 3.2.9 exige DATA_COMPRESSION = PAGE para novas tabelas (SQL Server).
```

**Correção**:
```sql
-- PowerDesigner (SQL Server):
-- Table → Properties → Physical Options → Extended Attributes
-- Adicionar: DATA_COMPRESSION = PAGE

-- DDL gerado:
CREATE TABLE POI_TRILHA_AUDITORIA (
    ...
) WITH (DATA_COMPRESSION = PAGE);
```

### Validação 402: Índice sem Compactação

**Regra TE074 (3.2.9)**: Índices em tabelas grandes devem ter compactação.

**Mensagem de Erro**:
```
[ALERTA] Índice 'IDX_POI_AUDITORIA_DATA_EVENTO_DT' na tabela 'POI_TRILHA_AUDITORIA': 
Compactação não configurada.
Recomendação: DATA_COMPRESSION = PAGE para economizar espaço.
```

**Correção**:
```sql
-- DDL:
CREATE INDEX IDX_POI_AUDITORIA_DATA_EVENTO_DT 
    ON POI_TRILHA_AUDITORIA(DATA_EVENTO_DT)
    WITH (DATA_COMPRESSION = PAGE);
```

## Validações de Particionamento

### Validação 501: Tabela Grande sem Particionamento

**Regra TE074 (3.2.8)**: Tabelas com volumetria > 100M linhas/ano devem ser particionadas.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'POI_TRILHA_AUDITORIA': 
Volumetria estimada > 100M linhas/ano.
TE074 3.2.8 recomenda particionamento.
Ação: Avaliar particionamento mensal por DATA_EVENTO_DT.
```

**Correção**:
```sql
-- Documentar decisão:
-- 1. Implementar particionamento (criar partition function/scheme)
-- 2. OU justificar não-aplicabilidade (ex: dados temporários com expurgo rápido)
```

## Validações de Lifecycle

### Validação 601: Tabela sem Política de Retenção

**Regra TE074 (3.2.10)**: Tabelas transacionais devem ter política de retenção/expurgo.

**Mensagem de Erro**:
```
[ALERTA] Tabela 'POI_TRILHA_AUDITORIA': 
Política de retenção não documentada.
TE074 3.2.10 exige definição de:
- Período de retenção (ex: 24 meses)
- Procedimento de expurgo (soft delete, archiving, hard delete)
```

**Correção**:
```sql
-- PowerDesigner:
-- Table → Properties → Comment
-- Adicionar seção:
-- "RETENÇÃO: Dados mantidos por 24 meses. Após esse período, migrar para tabela histórica POI_TRILHA_AUDITORIA_HIST e comprimir."
```

## Validações de Relacionamentos

### Validação 701: Relacionamento N:M sem Tabela Associativa

**Regra TE074**: Relacionamentos N:M devem usar tabela associativa.

**Mensagem de Erro**:
```
[CRÍTICO] Relacionamento N:M entre 'PES_PESSOA' e 'CON_PRODUTO' 
sem tabela associativa.
Ação obrigatória: Criar tabela CON_PESSOA_PRODUTO com FKs para ambas tabelas.
```

**Correção**:
```sql
-- PowerDesigner:
-- Criar tabela: CON_PESSOA_PRODUTO
-- Colunas: PESSOA_ID (FK → PES_PESSOA), PRODUTO_ID (FK → CON_PRODUTO)
-- PK composta: (PESSOA_ID, PRODUTO_ID)
```

### Validação 702: Cascade Delete Perigoso

**Regra**: ON DELETE CASCADE deve ser usado com cautela.

**Mensagem de Erro**:
```
[ALERTA] FK 'FK_CON_CONTRATO_PES_PESSOA' configurada com ON DELETE CASCADE.
Risco: Deletar pessoa pode deletar todos os contratos automaticamente.
Recomendação: Avaliar se ON DELETE RESTRICT é mais seguro.
```

**Correção**:
```sql
-- PowerDesigner:
-- Reference → Delete Rule: Restrict (ao invés de Cascade)
```

## Relatório do Pré-Validador

### Formato do Relatório

**Outputs**:
- **PDF**: Relatório formatado para impressão/aprovação
- **Excel**: Planilha com detalhes de cada não-conformidade (filtros, ordenação)

### Estrutura do Relatório

**Seções**:
1. **Resumo Executivo**:
   - Total de objetos validados (tabelas, colunas, constraints, índices)
   - Total de não-conformidades (CRÍTICO, ALERTA, INFORMAÇÃO)
   - Taxa de conformidade (% de regras atendidas)

2. **Não-Conformidades CRÍTICAS** (bloqueia aprovação):
   - Código da validação (ex: V001, V101, V201)
   - Objeto afetado (tabela, coluna, constraint)
   - Mensagem de erro
   - Correção sugerida
   - Referência TE074

3. **Não-Conformidades ALERTA** (não bloqueia, requer justificativa):
   - Mesmo formato das CRÍTICAS

4. **Informações** (sugestões de melhoria):
   - Otimizações de performance
   - Boas práticas adicionais

### Exemplo de Relatório (Excel)

| ID | Severidade | Tipo | Objeto | Mensagem | Correção | TE074 |
|----|------------|------|--------|----------|----------|-------|
| V001 | CRÍTICO | Nomenclatura | Tabela: Pessoa | Nome não conforme TE074 3.2.1.1. Padrão esperado: {3-char}_{NOME} | Renomear para PES_PESSOA | 3.2.1.1 |
| V002 | CRÍTICO | Nomenclatura | Coluna: Pessoa.NOME | Falta sufixo _NM | Renomear para NOME_COMPLETO_NM | 3.2.1.2 |
| V101 | CRÍTICO | Estrutura | Tabela: Endereco | Não possui Primary Key | Criar PK_PES_ENDERECO em ENDERECO_ID | 3.2.11.1 |
| V201 | CRÍTICO | Descrição | Tabela: PES_PESSOA | Descrição ausente | Adicionar descrição em português | 3.2.1.1 |
| V301 | CRÍTICO | Tipo de Dado | Coluna: Contrato.VALOR_VL | FLOAT inadequado para monetário | Alterar para DECIMAL(15,2) | 3.2.12 |
| V401 | CRÍTICO | Compactação | Tabela: POI_TRILHA_AUDITORIA | Sem compactação | Habilitar DATA_COMPRESSION = PAGE | 3.2.9 |
| V104 | ALERTA | Performance | Coluna: FK Contrato.PESSOA_ID | FK sem índice | Criar IDX_CON_CONTRATO_PESSOA_ID | 3.2.11.2 |
| V303 | ALERTA | Tipo de Dado | Coluna: Pessoa.NOME_NM | VARCHAR(MAX) excessivo | Definir tamanho: VARCHAR(200) | - |
| V501 | ALERTA | Particionamento | Tabela: POI_TRILHA_AUDITORIA | Volumetria > 100M, avaliar particionamento | Criar particionamento mensal | 3.2.8 |
| V304 | INFORMAÇÃO | Otimização | Coluna: Pessoa.UF_SG | VARCHAR(2) pode ser CHAR(2) | Alterar para CHAR(2) | - |

## Workflow de Correção

### Passo 1: Análise do Relatório

1. Ordenar por severidade (CRÍTICO primeiro)
2. Agrupar por tipo (Nomenclatura, Estrutura, Descrição, etc.)
3. Identificar correções rápidas vs complexas

### Passo 2: Correções no PowerDesigner

**Nomenclatura**:
- Renomear objetos (tabelas, colunas, constraints, índices)
- Aplicar padrões TE074

**Estrutura**:
- Adicionar PKs faltantes
- Criar FKs omitidas
- Adicionar índices em FKs

**Descrições**:
- Preencher Comments em português
- Detalhar colunas críticas (CPF, CNPJ, valores monetários)

**Tipos de Dados**:
- Corrigir FLOAT → DECIMAL
- Ajustar tamanhos VARCHAR
- Aplicar sufixos corretos

**Compactação**:
- Habilitar DATA_COMPRESSION = PAGE (Extended Attributes)

### Passo 3: Regenerar e Re-validar

1. Salvar modelo corrigido no PowerDesigner
2. Fazer upload novamente no Pré-Validador
3. Verificar redução de não-conformidades
4. Repetir até **0 CRÍTICAS**

### Passo 4: Submissão ADI/ABD

**Critério de Aprovação**:
- **0 não-conformidades CRÍTICAS**
- **ALERTAS justificados** (documentar no modelo ou em documento anexo)

**Exemplo de Justificativa**:
```
[ALERTA] V501: Tabela POI_TRILHA_AUDITORIA sem particionamento

JUSTIFICATIVA:
Volumetria atual: 50M linhas
Crescimento estimado: 30M linhas/ano
Política de expurgo: 12 meses (hard delete mensal)
Decisão: Não particionar neste momento. Reavaliar em 2027 se volumetria exceder 100M.
Aprovado por: João Silva (Arquiteto ADI) - 2026-01-15
```

## Checklist Pré-Submissão

### Antes de Submeter ao Pré-Validador
- [ ] Modelo físico (PDM) criado no PowerDesigner
- [ ] SGBD configurado corretamente (SQL Server, Oracle, DB2)
- [ ] Nomenclatura aplicada (3-char prefix, sufixos)
- [ ] PKs criadas em todas as tabelas
- [ ] FKs declaradas para todos os relacionamentos
- [ ] Índices criados em colunas FK
- [ ] Descrições em português (tabelas e colunas)
- [ ] Tipos de dados corretos (DECIMAL para valores, DATE para datas)
- [ ] Compactação configurada (DATA_COMPRESSION = PAGE)

### Após Validação
- [ ] Relatório gerado (PDF/Excel)
- [ ] Todas não-conformidades CRÍTICAS corrigidas
- [ ] Não-conformidades ALERTA justificadas (se aplicável)
- [ ] Modelo re-validado (0 CRÍTICAS)
- [ ] DDL gerado e revisado
- [ ] Documentação atualizada (políticas de retenção, particionamento)

### Submissão ADI
- [ ] PDM final anexado
- [ ] Relatório Pré-Validador (0 CRÍTICAS) anexado
- [ ] Justificativas para ALERTAS documentadas
- [ ] DDL gerado anexado
- [ ] Diagrama ER exportado (PDF/PNG)
- [ ] Solicitação via ferramenta de workflow (RTC, Jira, etc.)

## FAQ - Perguntas Frequentes

### 1. O Pré-Validador gera DDL?

**Não**. O Pré-Validador **apenas valida** o modelo contra TE074. DDL deve ser gerado pelo **PowerDesigner** (Database → Generate Database).

### 2. Posso ter ALERTAS no relatório final?

**Sim**, desde que **justificados**. CRÍTICAS bloqueiam aprovação, ALERTAS não.

### 3. Como validar modelos Oracle?

Configurar SGBD como Oracle no PowerDesigner. Pré-Validador aplicará regras específicas (sequences, COMPRESS(BASIC), etc.).

### 4. Pré-Validador valida scripts SQL diretamente?

**Não**. Apenas arquivos PDM (PowerDesigner). Para validar scripts DDL, usar PowerDesigner Reverse Engineering (Script → PDM).

### 5. Como configurar compactação no PowerDesigner?

**SQL Server**:
- Table → Properties → Physical Options → Extended Attributes
- Add: `DATA_COMPRESSION = PAGE`

**Oracle**:
- Table → Properties → Physical Options → Tablespace Options
- Add: `COMPRESS BASIC` (ou `COMPRESS ADVANCED`)

### 6. Posso desabilitar validações específicas?

**Não**. Todas as validações TE074 são obrigatórias. Não-conformidades devem ser **corrigidas** ou **justificadas**.

### 7. Quanto tempo leva a validação?

**Varia por tamanho do modelo**:
- Modelos pequenos (<50 tabelas): 1-2 minutos
- Modelos médios (50-200 tabelas): 5-10 minutos
- Modelos grandes (>200 tabelas): 15-30 minutos

### 8. Pré-Validador substitui revisão ADI/ABD?

**Não**. É uma **validação preliminar** que acelera o processo. Revisão humana ADI/ABD continua necessária.

---

**Última atualização**: 2026-01-06  
**Status**: Documento base - requer preenchimento manual do conteúdo SharePoint  
**Ferramenta**: http://gestaodedados.coresp.caixa  
**Normas relacionadas**: TE074 (todas seções)


----


*FIM "Validações executadas no Pré-Validador.md"*


*INICIO "Nomenclatura_Objetos.md"*


----


# Nomenclatura de Objetos

**Navegação:** PPDS >> Guias >> Guias: Arquitetura de Dados >> Modelagem de Dados para Sistemas CAIXA >> Nomenclatura de Objetos

---

## 1. DEFINIÇÕES GERAIS DOS OBJETOS

1.1. O nome (também chamado de nome lógico e, no PowerDesigner, *NAME*) desses objetos não deve ser abreviado.

1.2. O código (também chamado de nome físico e, no PowerDesigner, *CODE*) desses objetos não deve ser abreviado caso haja espaço suficiente para o extenso.

1.3. O tamanho do código do objeto fica condicionado ao SGBD utilizado para o seu registro. Na Caixa o tamanho máximo vigente está limitado a 30 caracteres.

1.4. O nome e código desses objetos devem ser grafado no singular e preferencialmente no gênero masculino.

1.5. Os termos utilizados na denominação de objetos, suas abreviaturas e contextos de utilização devem estar registrados no glossário de termos.

1.6. Caso o espaço reservado para a denominação seja insuficiente, os termos são abreviados a partir da palavra menos significativa para o entendimento do conceito do objeto.

1.7. Como forma de evitarem-se ambiguidades, adota-se apenas uma abreviatura para cada termo válido.

1.8. Caso o termo pretendido não existir, cabem as avaliações constantes no item 5.

---

## 2. NOMENCLATURA DE TABELA

2.1. O nome de uma tabela (*NAME*) deve ser aquele mais apropriado para representar o fato do mundo real no contexto do negócio.

2.2. O código da tabela (*CODE*) é formado pelo prefixo elaborado conforme descrito na página [Expressões Regulares que definem objetos físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx) adicionando, na sequência, os termos mais significativos (determinados pelo desenvolvedor com base no negócio envolvido na funcionalidade), abreviando, se necessário.

2.2.1. Nos casos onde é necessária a eliminação de termos para a formação do código, elimina-se os termos menos significativos da direita para a esquerda.

---

## 3. NOMENCLATURA DE COLUNA

3.1. A estrutura de denominação para a coluna é composta pela classe abreviada da coluna (conforme item 4) e pelos termos que completam seu nome, separados por *underscore*.

3.1.1. Estrutura de nomeação da Coluna:

```
XX_XXXXXXXXXXXXXXXXXXXXXXXXXX
```

- **XX** = Abreviatura da classe da Coluna
- **XXXXXXXXXXXXXXXXXXXXXXXXXX** = Termos que completam seu nome

**Exemplos:**
- `NO_EMPREGADO`
- `NU_UNIDADE`

3.2. Os objetos são nomeados utilizando-se de termos que não causem interpretações dúbias.

**Exemplo:**

| Correto | | |
|---------|---|---------|
| IC_FORMA_PAGAMENTO | à | (Correto) |
| IC_FORMA | à | (Incorreto) |

3.3. Não deve ser utilizada denominação em língua estrangeira, exceto em casos em que não exista correspondência na língua portuguesa.

**Exemplo:**

| | | |
|---------|---|---------|
| IC_SITUACAO_UNIDADE | à | (Correto) |
| IC_STATUS_UNIDADE | à | (Incorreto) |

3.4. Não é permitida a utilização de vícios de linguagem e jargão fora do contexto.

**Exemplo:**

| | | |
|---------|---|---------|
| VR_A_PAGAR | à | (Correto) |
| VR_PENDURADO | à | (Incorreto) |

3.5. Os termos que usualmente são identificados por siglas já consagradas são registrados no Glossário de Termos.

**Exemplo:**

| | | |
|---------|---|---------|
| NU_FGTS | à | (Correto) |
| NU_FUNDO_GRNTA_TEMPO_SRVCO | à | (Incorreto) |

3.6. Não são utilizados nomes ou siglas de unidades/sistemas da CAIXA para denominar objetos.

**Exemplo:**

| | | |
|---------|---|---------|
| NO_RESPONSAVEL_UNIDADE | à | (Correto) |
| NU_CONTRATO_SIEMP | à | (Incorreto) |
| NO_RESPONSAVEL_SUART | à | (Incorreto) |

3.7. A denominação é efetuada utilizando-se de verbos no particípio quando a qualificação do nome se referir a uma ação concluída.

**Exemplo:**

| | | |
|---------|---|---------|
| VR_FGTS_RECOLHIDO | à | (Correto) |
| VR_FGTS_RECOLHER | à | (Incorreto) |

3.8. O nome do objeto é formado pelas palavras mais significativas para expressar o negócio envolvido, usando separador "_", conhecido como *underscore*, entre os termos.

**Exemplo:**

| | | |
|---------|---|---------|
| VR_CORRECAO_MONETARIA_APLICACAO | | |
| VR_CRCO_MONETARIA_APLICACAO | à | (Melhor prática) |
| VR_CORRECAO_MNTRA_APLICACAO | à | (Incorreto neste caso) |
| VR_CORRECAO_MONETARIA_APLCO | à | (Incorreto neste caso) |

3.8.1. Cabe salientar que esta avaliação é subjetiva e voltada ao negócio. No caso acima, os termos mais significativos no contexto aplicado, são as palavras MONETÁRIA e APLICAÇÃO.

3.9. Preposições, artigos e conjunções irrelevantes para o significado do objeto não são utilizados na denominação dos objetos.

**Exemplos:**

| | | |
|---------|---|---------|
| NU_AGENCIA_ORIGEM | à | (Correto) |
| VR_A_PAGAR | à | (Correto) |
| NU_AGENCIA_DE_ORIGEM | à | (Incorreto) |

3.10. Numerais devem ser representados por algarismos arábicos.

**Exemplo:**

| | | |
|---------|---|---------|
| PC_RENDIMENTO_GARANTIDO_2_ANO | à | (Correto) |
| PC_RENDIMENTO_GARANTIDO_II_ANO | à | (Incorreto) |

3.11. Os termos redundantes, cuja natureza já esteja embutida no identificador do objeto a que pertence ou em outro componente da estrutura, não são utilizados.

**Exemplo:**

| | | |
|---------|---|---------|
| VR_BRUTO_SALARIO | à | (Correto) |
| VR_VALOR_BRUTO_SALARIO | à | (Incorreto) |

3.12. Os sinônimos para um mesmo contexto são evitados.

**Exemplo:**

| | | |
|---------|---|---------|
| HH_FIM_JORNADA_TRABALHO | à | (Correto) |
| HH_TERMINO_JORNADA_TRABALHO | à | (Incorreto) |

---

## 4. CLASSE DE COLUNA

4.1. As classes das colunas utilizadas na denominação de objetos estão registradas no glossário de termos, conforme abaixo:

| Discriminação | Identificador | Descrição |
|---------------|---------------|-----------|
| **ANO** | **AA** | Atribuída aos dados de natureza numérica que expressam o ano no calendário civil.<br>Exemplo: AA_COMPETÊNCIA |
| **ÁUDIO** | **AU** | Atribuída aos dados que designam colunas referentes a som.<br>Exemplo: AU_ALARME |
| **CÓDIGO** | **CO** | Identificador unívoco de um objeto, alfanumérico, formado por um ou mais colunas. Difere da sigla e do número porque o significado de cada caractere constituinte de seu(s) coluna(s), tomado isoladamente, não é de interesse da Empresa.<br>Exemplo: CO_CHASSI_AUTOMÓVEL<br>CO_DEPENDENTE (matrícula do empregado + número do dependente) |
| **DATA** | **DT** | Atribuída aos dados de natureza numérica que expressam o dia, mês e ano no calendário civil.<br>Exemplo: DT_NASCIMENTO |
| **DATA E HORA** | **DH** | Atribuída aos dados de natureza *datetime* que expressam o dia, mês, ano, hora, minuto e segundo, sem milésimos de segundo.<br>Exemplo: DH_ALTERACAO_REGISTRO |
| **DESCRIÇÃO** | **DE** | Atribuída aos dados cujo conteúdo, livre e em forma discursiva (não codificada), se utiliza para descrever algo associado ao objeto.<br>Exemplo: DE_ADITIVO_CONTRATO |
| **DIA** | **DD** | Atribuída aos dados de natureza numérica que expressam o dia no calendário civil.<br>Exemplo: DD_DEBITO |
| **ENDEREÇO** | **ED** | Atribuída aos dados de natureza textual utilizados para designar qualquer tipo de domicílio: residencial, comercial, endereço eletrônico ou endereço lógico (e-mail, conta/perfil rede social ou endereço de um arquivo).<br>Exemplo: ED_COMERCIAL<br>ED_EMAIL_CORPORATIVO |
| **HORA** | **HH** | Atribuída aos dados de natureza numérica que expressam uma hora em qualquer formato com ou sem precisão de minutos e/ou quaisquer outras frações.<br>Exemplo: HH_ABERTURA |
| **IMAGEM** | **IM** | Atribuída aos dados com representação de imagem, no todo ou em parte, independente de seu formato.<br>Exemplo: IM_ASSINATURA |
| **INDICADOR** | **IC** | Atribuída aos dados de natureza numérica ou alfanumérica cujo conteúdo obrigatório assume um de dois valores negociais possíveis.<br>Exemplos: IC_SITUACAO_UNIDADE (A = Ativa ou I = Inativa), IC_FORMA_PAGAMENTO (1 = À vista ou 2 = À Prazo) |
| **ÍNDICE** | **IN** | Coluna numérico relativo que serve para comparação de fenômenos e situações diversas<br>Exemplo: IN_BOLSA_VALORES |
| **MÊS** | **MM** | Atribuída aos dados de natureza numérica que expressam o mês em um calendário civil.<br>Exemplo: MM_VENCIMENTO |
| **NOME** | **NO** | Atribuída aos dados de natureza alfabética ou alfanumérica cujo conteúdo expressa uma denominação por extenso e composta de palavras, abreviaturas ou ambas.<br>Exemplo: NO_EMPREGADO |
| **NÚMERO** | **NU** | Atribuída aos dados de natureza numérica cuja identificação se faz por valores absolutos.<br>Exemplo: NU_UNIDADE |
| **PERCENTUAL** | **PC** | Atribuída aos dados de natureza numérica que expressam uma parte de uma quantidade de 100 (cem) unidades.<br>Exemplo: PC_INADIMPLENCIA |
| **PESO** | **PS** | Atribuída aos dados numéricos que expressam o peso do objeto cujo nome deve ser relacionado a uma unidade de medida a fim de que se possa expressar a real grandeza.<br>Exemplo: PS_JOIA_GRAMA |
| **PRAZO** | **PZ** | Atribuída aos dados de natureza numérica que expressam um intervalo de tempo e cujo nome deve ser relacionado a uma unidade de medida a fim de que se possa expressar a real grandeza.<br>Exemplo: PZ_VALIDADE |
| **QUANTIDADE** | **QT** | Atribuída aos dados de natureza numérica que determinam um conjunto de coisas e pessoas consideradas como equivalentes e suscetíveis de aumento e diminuição. Ao nomeá-los deve ser relacionado a uma unidade de medida para expressar a real grandeza, exceto quando se tratar de medida escalar do sistema decimal.<br>Exemplo: QT_PROGRAMA |
| **SÉRIE DE DADOS** | **SD** | **Classe de uso restrito utilizada somente sob autorização da ADI.**<br>Atribuída aos dados de natureza alfanumérica que podem ser multivalorados, ou não, e permitem a troca de dados (JSON, XML) entre diferentes aplicações, plataformas ou sistemas de forma padronizada.<br>Deve obrigatoriamente ser acompanhada pelo tipo de série de dados utilizado, p.ex.: API, WS (WEBService).<br>Exemplo: SD_RESPOSTA_API |
| **SIGLA** | **SG** | Atribuída aos dados de natureza alfabética ou alfanumérica que expressam a forma sintética de um conteúdo extenso através da redução de palavras ou expressões a letras ou sílabas iniciais.<br>Exemplo: SG_UF |
| **TIMESTAMP** | **TS** | Atribuída aos dados de natureza numérica que representam um momento no tempo composto por data, hora, minuto, segundo e milésimo de segundo.<br>Exemplo: TS_ATUALIZAÇAO_COTAÇAO |
| **VALOR** | **VR** | Atribuída aos dados de natureza numérica que expressam uma importância monetária.<br>Exemplo: VR_SALÁRIO |
| **VÍDEO** | **VI** | Atribuída aos dados que designam colunas referentes a vídeo.<br>Exemplo: VI_AGENCIA |

---

## 5. REGRAS DE ABREVIATURA

5.1. As abreviaturas utilizadas são as existentes no glossário de termos.

5.2. Quando um termo não for encontrado no glossário de termos, a solicitação de inclusão é encaminhada à equipe de ADI para análise.

5.3. A equipe de ADI analisa a solicitação e, em caso de deferimento, efetua a inclusão da palavra e sua respectiva abreviatura no glossário de termos obedecendo aos critérios abaixo.

5.4. A primeira e a última letra da palavra também são a primeira e a última da abreviatura.

**Exemplo:**

| | | |
|---------|---|---------|
| POSSIBILIDADE | à | P _ _ _ E |

5.5. As vogais intermediárias são eliminadas.

**Exemplo:**

| | | |
|---------|---|---------|
| P SS B L D DE | à | P _ _ _ E |

5.6. Elimina-se uma das consoantes dos dígrafos "RR e SS".

**Exemplo:**

| | | |
|---------|---|---------|
| P S B L D DE | à | P _ _ _ E |

5.7. As consoantes restantes são utilizadas para preencher as posições da abreviatura na ordem em que aparecem na palavra original, respeitando-se o limite máximo de cinco caracteres da abreviatura.

**Exemplo:**

| | | |
|---------|---|---------|
| P S B L D DE | à | P S B L E |

5.8. A utilização da regra pode originar uma abreviatura de 3 a 5 caracteres.

**Exemplo:**

| | | | | |
|---------|---|---------|---|---------|
| PESSOA | à | PSSA | à | PSA |
| REMESSA | à | RMSSA | à | RMSA |

5.9. Caso as palavras apresentem conflito de abreviação depois de aplicada a regra substitui-se a última consoante pela próxima consoante ainda não aproveitada, da direita para esquerda (preservando a mais significativa), repetindo enquanto persistir a colisão.

**Exemplo:** para colisão das abreviaturas considere que os termos foram abreviados na ordem abaixo.

| | | |
|---------|---|---------|
| TRANSACAO | à | TRNSO |
| TRANSFERIDO | à | TRNDO |
| TRANSFORMACAO | à | TRNCO |
| TRANSITO | à | TRNTO |
| TRANSMISSAO | à | TRNMO |
| TRANSPORTADO | à | TRNRO |

5.10. Os termos que possuem tamanho igual ou inferior a cinco posições também são abreviados.

**Exemplo:**

| | | |
|---------|---|---------|
| NU_PRODUTO_CONTA_DEBITO | à | NU_PRDTO_CNTA_DBTO |
| NU_PRODUTO_CONTA_CREDITO | à | NU_PRDTO_CNTA_CRDO |

5.11. Caso exista uma abreviatura consagrada para um dos termos em conflito, usa–se a consagrada e aplica-se a regra de abreviatura para o outro termo.

5.12. Caso a sigla consagrada regional entre em conflito com a sigla nacional prevalecerá a de abrangência nacional sendo abreviada a regional.

5.13. Se a abreviatura resultante já existir no glossário de termos para outra palavra mesmo depois de aplicada a regra de colisão, cabe a equipe de ADI resolver o conflito.

5.14. Apenas uma abreviatura é atribuída quando o substantivo composto for grafado por uma única palavra.

5.15. Para o substantivo composto todas as palavras são abreviadas.

**Exemplo:**

| | | |
|---------|---|---------|
| CONTRA–INDICADO | à | CNTRA_INDDO |
| MOTOTAXI | à | MTTXI |

---

## 6. RELACIONAMENTO

6.1. Os relacionamentos (*Reference*) são caracterizados através de um VERBO. Pode ser utilizado o VERBO na voz ativa e passiva para estabelecer esta conexão. Eventualmente são utilizadas locuções verbais para estabelecer estas conexões.

6.1.1. Deverão ser utilizados verbos ou locuções verbais que refletirão exatamente as regras de negócio definidas.

6.1.2. A voz ativa deve partir do sujeito da ação (verbo).

6.1.3. A voz passiva deve partir do objeto.

**Exemplo:**

- Voz Ativa > Cada PESSOA **utiliza** CARRO
- Voz Passiva > Cada CARRO **é utilizado** por PESSOA

6.2. Como alternativa adicional para a denominação, pode-se ainda utilizar um substantivo para indicar o papel que cada tabela representa no relacionamento.

6.3. Nos casos de existência de auto relacionamento torna-se obrigatório o preenchimento de "ROLENAME", uma vez que os objetos envolvidos pertencem ao mesmo conjunto e apenas o nome da tabela pode não ser suficiente para esclarecer os papéis envolvidos.

---

## 7. ÁREA DE INTERESSE

7.1. O nome da área de interesse é especificado no plural.

**Exemplo:**

| |
|---------|
| <Nome da Área de Interesse> |
| RECURSOS_HUMANOS |

---

**Autor:** Thiago Bezerra Torres - COOR PROJ/PROCES MATRIZ


----


*FIM "Nomenclatura_Objetos.md"*


*INICIO "Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ.md"*


----


# ‘Controle do Documento

Informação do Documento

|  |  |  |  |
|----|----|----|----|
| N<sup>o</sup> Versão do Doc: | 05 | Data da Versão do Doc: | 21/03/2024 |
| Preparado Por: | Alessandra Barbarino | Data de Preparação: | 08/11/2021 |
| Revisado Por: | Alessandra Barbarino | Data da Revisão: | 21/03/2024 |

# 1. Introdução 

Esse documento tem por objetivo apresentar as informações necessárias para que os DBAs da

CESOB011-NPRD possam, fazendo uso do mesmo, acessar o ambiente Social ( RJ ) e gerar, por exemplo, uma DDL para os ambientes de DESE, TQS, HMP e PRD. Tal documento foi preparado visando o atendimento aos RDBMS SQL Server, Oracle e Postgree ( HAWQ ). Esse documento possibilitará também, identificar as permissões necessárias que o DBA deva ter para poder fazer tal atendimento.

**2. Infraestrutura**

<table style="width:98%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr>
<th colspan="4"><strong>SQL SERVER - Desenvolvimento</strong></th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
<td>Versão</td>
</tr>
<tr>
<td>SRJDEDADNT030</td>
<td>10.116.92.87</td>
<td>SQLDES01</td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>SRJDEDADNT024</td>
<td>10.116.93.114</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>SRJDEDADNT029</td>
<td>10.116.93.151</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>CRJDEDADNT009</td>
<td>10.116.100.127</td>
<td></td>
<td>1433</td>
<td>Sql Server 2019</td>
</tr>
<tr>
<td colspan="4"><strong>SQL SERVER - TQS</strong></td>
<td></td>
</tr>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
<td>Versão</td>
</tr>
<tr>
<td>SRJTQDADNT0003</td>
<td>10.116.28.45</td>
<td></td>
<td>1433</td>
<td>Sql Server 2016</td>
</tr>
<tr>
<td>CRJTQDADNT010</td>
<td>10.116.29.228</td>
<td></td>
<td>1433</td>
<td>Sql Server 2019</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 36%" />
<col style="width: 14%" />
<col style="width: 41%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr>
<th colspan="4" style="text-align: center;">ORACLE Exadata - Desenvolvimento</th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>INSTANCIA</td>
<td>Porta</td>
</tr>
<tr>
<td>SSH:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>cnpexdadvm01clu01.extra.caixa.gov.br</td>
<td>10.116.101.1</td>
<td>orad01sc1, orad02sc1, orad03sc1, orad04sc1</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm02clu01.extra.caixa.gov.br</td>
<td>10.116.101.2</td>
<td>orad01sc2, orad02sc2, orad03sc2, orad04sc2</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm03clu01.extra.caixa.gov.br</td>
<td>10.116.101.3</td>
<td>orad01sc3, orad02sc3, orad03sc3, orad04sc3</td>
<td>1521</td>
</tr>
<tr>
<td>VIP’s:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td>10.116.101.4</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.5</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.6</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td>SCAN:</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td>10.116.101.7</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.8</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.101.9</td>
<td>orad01sc&lt;123&gt;, orad02sc&lt;123&gt;, orad03sc&lt;123&gt;, orad04sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td colspan="4">ORACLE Exadata - TQS</td>
</tr>
<tr>
<td>cnpexdadvm02clu02.extra.caixa.gov.br</td>
<td>10.116.33.1</td>
<td>orat01sc1, orat02sc1</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm03clu02.extra.caixa.gov.br</td>
<td>10.116.33.2</td>
<td>orat01sc2, orat02sc2</td>
<td>1521</td>
</tr>
<tr>
<td>cnpexdadvm04clu02.extra.caixa.gov.br</td>
<td>10.116.33.3</td>
<td>orat01sc3, orat02sc3</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>VIP’s</td>
<td>10.116.33.4</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.5</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.6</td>
<td></td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>SCAN</td>
<td>10.116.33.7</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.8</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
<tr>
<td></td>
<td>10.116.33.9</td>
<td>orat01sc&lt;123&gt;, orat02sc&lt;123&gt;</td>
<td>1521</td>
</tr>
</tbody>
</table>

Instancias definidas dentro do ambiente EXADATA de Desenvolvimento:

ORAD01SC 🡪 Contempla as antigas instancias ORADES01 e ORADES02

ORAD02SC 🡪 Ferramenta B2B

ORAD03SC 🡪 Ferramenta Control Center

ORAD04SC 🡪 Sistemas SSO e SISET

 

Instancias definidas dentro do ambiente EXADATA de TQS:

ORAT01SC 🡪 Contempla a instância ORATQS01

ORAT02SC 🡪 Sistemas SSO e SISET

<table style="width:80%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 14%" />
<col style="width: 23%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th colspan="4">POSTGREE (HAWQ) - Desenvolvimento</th>
</tr>
</thead>
<tbody>
<tr>
<td>Servidor</td>
<td>IP</td>
<td>Instância</td>
<td>Porta</td>
</tr>
<tr>
<td>srjdeaprlx0023.des.dtc.caixa</td>
<td>10.116.84.227</td>
<td>sildc</td>
<td>8132</td>
</tr>
</tbody>
</table>

3\. Permissionamento

3.1 Acesso ao RDBMS

> Para acesso as Bases de Dados, é necessário abertura de FICUS, via GSC, solicitando as permissões abaixo:

| SQL SERVER     | ORACLE    | POSTGREE        |
|----------------|-----------|-----------------|
| Role: sysadmin | Role: DBA | Role: SuperUser |

3.2 Acesso ao SO

> Para acesso aos servidores de Banco de Dados relacionados no item 2, é necessário abrir FICUS via GSC, solicitando as permissões abaixo:

| SQL SERVER | ORACLE | POSTGREE |
|----|----|----|
| Perfil de admin no servidor SRJDEDADNTXXX (xx.xxx.xx.xxx) para o usuário desenvolvimento\Pxxxxxx. | Acesso ao usuário Pxxxxxx e conceder grant de dba, sysdba para no banco Oracle ORAXXXX localizado no servidor ds0000vxxxx | Não se aplica. |

**4. Processo para os ambientes DES – (implementação e modelo)**

- Uma característica importante do Site Rio de Janeiro é que possuímos e mantemos modelos somente para o ambiente de Desenvolvimento;

- A base para o trabalho nos outros ambientes (TQS, HMP e PRD) será sempre a DDL gerada e testada no ambiente de Desenvolvimento (DES);

- Um ponto importante é sempre observar o padrão de nomes das DDLs e os nomes dos “owner’s” das Views e Sequences em cada ambiente;

- A demanda sempre passa pela validação do ADI com exceção dos seguintes casos:

  - Criação e alteração de índices por problemas de desempenho;

  - Criação e alteração de Sequences;

  - Alteração de definições físicas de armazenamento (ex: particionamento de tabelas ou tablespaces, de índices, etc).

> **4.1 Demandas recebidas pela equipe ABD**
>
> **4.1.1 Insumos**

- PPDS: Solicitação de Validação do Modelo de Dados (opcional se a demanda passou pelo ADI e obrigatória quando a demanda vem direto para o ABD);

- PPDS: Documento de Validação Modelo de Dados (ADI) - Objetos Aprovados – **somente cobrado se passou pelo ADI;**

- Nome e número da versão do modelo de desenvolvimento correspondente à demanda passada pela validação do ADI atualizado no repositório unificado de São Paulo (PowerDesigner);

- Quando não houver validação do ADI a equipe de projeto baixa e altera a última versão do modelo do repositório o enviando-a diretamente para o ABD.

> **4.1.2 Processo**
>
> **4.1.2.1 Validação dos requisitos para atendimento**

- A equipe de desenvolvimento deve abrir uma requisição no GSC (servicos.caixa), no seguinte caminho: Registro da solicitação --\>

Tecnologia da Informação e Comunicação (Subcategorias) --\>

Centralizadoras de Tecnologia da Informação (Subcategorias) --\>

Suporte à Infraestrutura de TI - Não produção --\>

Suporte à Banco de dados

- Os atendimentos para o site Rio de Janeiro deverão ser abertos selecionando no campo Segmento a opção “Social/Rio de Janeiro”;

- Em toda requisição do GSC deverá estar explicitada de forma clara e completa:

<!-- -->

- Indicação do ambiente. Ex: DESENVOLVIMENTO;

- Verificar se há indicação de outros ambientes diferentes deste, onde deverá ser executada a requisição (ex: DES, TQS, HMP e PRD);

<!-- -->

- Os arquivos PPDS de Solicitação de Validação do Modelo de Dados (opcional) e PPDS de Validação Modelo de Dados (ADI), devem ser anexados à requisição quando for o caso;

- Toda solicitação deverá estar explicitada no documento de Solicitação de Validação do Modelo de Dados.

- Nome e número da versão do modelo de desenvolvimento correspondente à validação da ADI atualizada no repositório unificada de SP deve ser informada na requisição (pode estar tanto no laudo da ADI quanto no texto da própria requisição);

- Verificar, quando for o caso, se todas as solicitações que constam no PPDS de Solicitação de Validação constam como aprovadas no laudo da ADI, no que lhe é pertinente;

<!-- -->

- Indicar procedimento que deve ser adotado quanto aos dados, no caso de objetos já existentes e populados (ex: explicando se os dados deverão ser salvos ou não em caso de inclusão de campo NOT NULL, etc);

- Baixar a versão informada do modelo e verificar se constam nela todas as manutenções aprovadas no laudo da ADI;

- Verificar a volumetria dos itens requeridos para analisar uma possível necessidade de particionamento de tabelas ou tablespaces;

> **4.1.2.2 Preparação do modelo para implementação**

- Realizar os ajustes físicos necessários no modelo de dados **de acordo com o padrão da TE074** e melhores práticas descritas abaixo;

- Os ajustes físicos ligados as opções de armazenamento de Tablespaces, Tabelas e Índices são atualizados no modelo pelos DBAs;

- Nomenclatura dos itens a serem verificados no modelo, conforme a padronização especificada na TE074 – Anexo II Denominação de Objetos Físicos (Observação: para este documento foi utilizada a versão 19 do manual normativo);

5\. Diretório Compartilhado – DDL’s de DES e TQS

Depois que a DDL foi aplicada nos ambientes de DES e TQS, para qualquer SGBD da baixa plataforma, a mesma deve ser incluída ( “versionada” ) no caminho abaixo:

[<u>\\10.116.18.75\estruturas\RJ\CEDES_DES</u>](file://10.116.18.75/estruturas/RJ/CEDES_DES)

![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.png>)

Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-001.md>)

> Cada pasta SGBD é separada pela sigla do sistema.
>
> Ex: (Sql Server)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-002.md>)
>
> Ex: (Oracle)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-003.md>)
>
> Ex: (PostGree)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-004.md>)
>
> Dentro de cada pasta de sistema, possui outra pasta com o número da REQ atendida ou a data do atendimento. A mesma deve possuir o PPDS de validação do AD ( com os objetos aprovados ), bem com o arquivo contendo a DDL aplicada no ambiente.
>
> Ex: (Sql Server)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-005.md>)
>
> Ex: (Oracle)
>
> ![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.png>)
>
> Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-006.md>)
>
> Ex: (PostGree)

![Imagem](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.png>)

Descrição da imagem - [./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.md](<./imagem/Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ-imagem-007.md>)

6\. Diretório Compartilhado – DDL’s para HMP e/ou PRD

(passagem para outro ambiente)

Quando for solicitado, via GSC, a confecção da DDL para HMP e/ou PRD, a mesma deve ser preparada a partir da DDL de DES ou TQS, observado as possíveis diferenças que possam existir entre os ambientes. Resumindo, a DDL deve ser preparada observando- se a DDL integral do ambiente destino e a mesma deve ser disponibilizada no diretório compartilhado com a CEPTIRJ:

[<u>\\10.116.18.75\estruturas\RJ\TQS\DDL</u>](file://10.116.18.75/estruturas/RJ/TQS/DDL)

7\. Nomenclatura DDL

> Toda e qualquer DDL disponibilizada para os ambientes de HMP e PRD possuem um padrão de nome para serem enviados para os demais ambientes:

ORACLE:

> ORA.\[sigla_sistema\]0001.\[num da REQ\].\[versão da ddl\].SQL\[ambiente\].sql

EX: ORA.SGF0001.REQ000051374857.V1.SQLPRD.sql

ORA.SGF0001.REQ000051374857.V2.SQLHMP.sql

SQL SERVER:

> SQL.\[sigla_sistema\]0001.\[num da REQ\].\[versão da ddl\].SQL\[ambiente\].sql

EX: SQL.CRB0001.REQ000051374856.V1.SQLPRD.sql

SQL.CRB0001.REQ000051374856.V2.SQLHMP.sql

Ao responder o atendimento na requisição, não esquecer de informar o caminho e o nome do arquivo no formato acima especificado.

Ex:

DDL disponibilizada no caminho:

\\10.116.18.75\estruturas\RJ\TQS\DDL

Arquivo: SQL.CSD0001.REQ000051674447.V1.SQLPRD.sql

8\. Arquivo TNSNAMES.ora (Oracle)

Segue abaixo o arquivo de configuração ( TNSNAMES ) para acesso às instancias Oracle exadata do Segmento Social ( RJ ):

ORAD01SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad01sc)

)

)

ORAD02SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad02sc)

)

)

ORAD03SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad03sc)

)

)

ORAD04SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan1)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orad04sc)

)

)

ORAT01SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan2)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orat01sc)

)

)

ORAT02SC =

(DESCRIPTION =

(ADDRESS = (PROTOCOL = TCP)(HOST = cnpexdadvm01-scan2)(PORT = 1521))

(CONNECT_DATA =

(SERVER = DEDICATED)

(SERVICE_NAME = orat02sc)

)

)


----


*FIM "Guia-DBA-Oracle-SqlServer-Postgree-Site-RJ.md"*


*INICIO "Arquitetura-de-Dados.md"*


----


# Arquitetura de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> Arquitetura de Dados

A Arquitetura de Dados na CAIXA trata de temas como Modelagem de Dados, ETL, Qualificação de Dados, Metadados e Arquitetura da Informação, entre outros.

Descreve normas, procedimento e padrões para a Arquitetura de Dados na CAIXA, bem como ferramentas utilizadas, metodologias e fluxos de trabalho.

O objetivo e disponibilizar manuais, guias operacionais, padrões de nomenclatura, arquiteturas de referência e tudo o mais que for obrigatório e também útil para o *compliance* e agilidade dos processos de dados na CAIXA.

Lista de Guias de Arquitetura de Dados

- [Diretrizes para Stored Procedures (SP)](https://caixa.sharepoint.com/sites/PPDS/SitePages/Diretrizes-para-Stored-Procedures-(SP).aspx)

- [Ferramenta ETL, Metadados e Qualii.Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ferramenta-ETL,-Metadados-e-Qualii.Dados.aspx)

- [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) [Critérios para Validação de Modelos de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Crit%C3%A9rios-para-Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx) [Expressões Regulares que Definem Objetos Físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx) [Guia de Padronização e Organização Gráfica de Modelos de Dados](https://caixa.sharepoint.com/sites/5141/SitePages/Guia_Qualificacao_Grafica.aspx) [Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-de-Modelagem-e-Diagramacao-Dimensional.aspx) [Lista de Objetos para Validação do Modelo de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx) [Melhores Práticas em Modelagem de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Melhores-Pr%C3%A1ticas-em-Modelagem-de-Dados.aspx) [Nomenclatura de Objetos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx) [Microsoft SQL Server - Uso de Constraint Default](https://caixa.sharepoint.com/sites/PPDS/SitePages/SQLServer-Constraint-Default.aspx) ​​​​​​​ [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) [Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ciclo-de-Vida-dos-Dados.aspx) [Compactação](https://caixa.sharepoint.com/sites/PPDS/SitePages/Compacta%C3%A7%C3%A3o.aspx) [Expurgo](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expurgo.aspx) [Particionamento](https://caixa.sharepoint.com/sites/PPDS/SitePages/Particionamento.aspx) [Regras de modelagem para Frameworks Autorizados​​​​​​​](https://caixa.sharepoint.com/sites/PPDS/SitePages/Regras-de-modelagem-para-Frameworks-Autorizados.aspx) [Spring Batch](https://caixa.sharepoint.com/sites/PPDS/SitePages/Spring-Batch.aspx) [Validações executadas no Pré-Validador](https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3%B5es-executadas-no-Pr%C3%A9-Validador.aspx)

- [Privacy by Design](https://caixa.sharepoint.com/sites/5141/SitePages/Guia-Privacy-by-Design-da-Arquitetura-de-TI.aspx)

- [Qualificação de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Qualifica%C3%A7%C3%A3o-de-Dados.aspx)

## Normas relacionadas

[TE074](https://normas.caixa/normativo/TE074)

[TE172](https://normas.caixa/normativo/TE172)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Arquitetura-de-Dados.md"*


*INICIO "Criterios-para-Validacao-de-Modelos-de-Dados.md"*


----


# Critérios para Validação de Modelos de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> Critérios para Validação de Modelos de Dados

1. O primeiro passo na validação de um modelo de dados é a utilização da ferramenta de pré-validação localizada neste [link](http://gestaodedados.coresp.caixa/) . Sua utilização é obrigatória e pré-requisito para início da validação pela ADI. Essa ferramenta gera um relatório com erros e alertas baseadas nas validações contidas neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3%B5es-executadas-no-Pr%C3%A9-Validador.aspx) para o modelador poder avaliar as situações que se enquadrem fora das instruções normativas desta norma, considerando sempre o último modelo aprovado, de forma a não revalidar o legado já implantado. A ferramenta também gera o documento de Solicitação de Validação de Modelo de Dados pré-preenchido, insumo para o início do atendimento pelo ADI. Cabe frisar que as informações devem ser validadas pelo usuário, além de eventuais complementações que se façam necessárias.

2. Para que a demanda de validação possa ser iniciada, são necessários os insumos a seguir:

- Relatório de pré-validação sem erros ou com suas devidas justificativas;

- Solicitação de validação de modelo de dados preenchida e contendo os objetos alvo da demanda;

- Regras de negócio;

- Histórias de Usuário;

- Descrição de Interface; Os insumos abaixo não são obrigatórios, visto que nem toda demanda requer sua geração, porém podem auxiliar na validação do modelo pela ADI:

- Requisitos não-funcionais;

- Especificações Suplementares;

- Layouts de telas;

- Documento(s) legal(is);

- Documento que descreva o fluxo do processo da aplicação;

1. A Validação do Modelo de Dados na CAIXA contempla a avaliação dos seguintes critérios:

- Adequação às Normas e Padrões – adequação do modelo de dados aos normativos e padrões adotados na CAIXA;

- Técnicas de Modelagem – aderência às técnicas de modelagem de dados adotadas na CAIXA;

- Aderência às Regras de Negócio – coerência entre a documentação de requisitos, histórias de usuário ou casos de uso e o modelo de dados;

- Integração e Compartilhamento de Dados – integração com as bases compartilhadas de dados ou de outros sistemas corporativos. O modelo de dados é também validado sob a ótica da ABD para garantir a padronização dos objetos do modelo físico, a implementação e manutenção desse modelo e possibilitar o adequado comportamento de desempenho dos sistemas. Os objetos do modelo físico são padronizados com base nas instruções contidas neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx) , conforme o SGBD de implementação, e são utilizadas as melhores [práticas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Praticas.aspx) para o armazenamento e desempenho apropriado de cada objeto nesse SGBD. A Lista de Inconsistência de objetos do modelo de dados consta no neste [link](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx) .

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Criterios-para-Validacao-de-Modelos-de-Dados.md"*


*INICIO "Melhores-Praticas-em-Modelagem-de-Dados.md"*


----


# Melhores Práticas em Modelagem de Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> Melhores Práticas em Modelagem de Dados

## 1. Chave Primária

1.1 A Chave Primária tem a função básica de garantir a integridade referencial nos relacionamentos e a unicidade das linhas na tabela.

1.2 Critérios que usamos para identificar e escolher uma PK, dentre as chaves candidatas:

- Aplicável: O valor da PK deve determinar o valor de todo e qualquer coluna da tabela – dependência funcional;

- Não Nula: O valor deve existir para cada uma das instâncias (não se permite nulidade);

- Única: O valor da PK deve garantir que cada linha da tabela seja única;

- Estável: O domínio dos valores da PK deve permanecer estável ao longo do tempo;

- Mínima: Deve haver uma única coluna ou um conjunto mínimo de colunas para tornar a PK única;

- Imutável: A PK não pode ser alterada.

1.3 Chaves Naturais não devem ser utilizadas.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Melhores-Praticas-em-Modelagem-de-Dados.md"*


*INICIO "Modelagem-de-Dados-para-Sistemas-CAIXA.md"*


----


# Modelagem de Dados para Sistemas CAIXA

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> Modelagem de Dados para Sistemas CAIXA

## ÍNDEX

#### Lista de Guias de Modelagem de Dados

- [Critérios para Validação de Modelos de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Crit%C3%A9rios-para-Valida%C3%A7%C3%A3o-de-Modelos-de-Dados.aspx)

- [Expressões Regulares que Definem Objetos Físicos dos SGBD](https://caixa.sharepoint.com/sites/PPDS/SitePages/Express%C3%B5es-Regulares-que-Definem-Objetos-F%C3%ADsicos-dos-SGBD.aspx)

- [Guia de Padronização e Organização Gráfica de Modelos de Dados](https://caixa.sharepoint.com/sites/5141/SitePages/Guia_Qualificacao_Grafica.aspx)

- [Guia de Padrões e Convenções na Modelagem e Diagramação de Modelos de Dados Dimensionais](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guia-de-Modelagem-e-Diagramacao-Dimensional.aspx)

- [Lista de Objetos para Validação do Modelo de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Lista-de-Objetos-para-Valida%C3%A7%C3%A3o-do-Modelo-de-Dados.aspx)

- [Melhores Práticas em Modelagem de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Melhores-Pr%C3%A1ticas-em-Modelagem-de-Dados.aspx)

- [Nomenclatura de Objetos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Nomenclatura-de-Objetos.aspx)

- [Microsoft SQL Server - Uso de Constraint Default](https://caixa.sharepoint.com/sites/PPDS/SitePages/SQLServer-Constraint-Default.aspx)

- [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) [Ciclo de Vida dos Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/Ciclo-de-Vida-dos-Dados.aspx) [Compactação](https://caixa.sharepoint.com/sites/PPDS/SitePages/Compacta%C3%A7%C3%A3o.aspx) [Expurgo](https://caixa.sharepoint.com/sites/PPDS/SitePages/Expurgo.aspx) [Particionamento](https://caixa.sharepoint.com/sites/PPDS/SitePages/Particionamento.aspx)

- [Regras de modelagem para Frameworks Autorizados​​​​​​​](https://caixa.sharepoint.com/sites/PPDS/SitePages/Regras-de-modelagem-para-Frameworks-Autorizados.aspx) [Spring Batch](https://caixa.sharepoint.com/sites/PPDS/SitePages/Spring-Batch.aspx)

- [Validações executadas no Pré-Validador](https://caixa.sharepoint.com/sites/PPDS/SitePages/Valida%C3%A7%C3%B5es-executadas-no-Pr%C3%A9-Validador.aspx)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Modelagem-de-Dados-para-Sistemas-CAIXA.md"*


*INICIO "Particionamen.md"*


----


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


----


*FIM "Particionamen.md"*


*INICIO "Compactac.md"*


----


# Compactação

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Compactação

## Quais são os benefícios?

- **Tamanho:** O motivo mais óbvio para a compactação do banco de dados é a redução da área de armazenamento geral do banco de dados da organização. Dependendo da cardinalidade dos dados (extensão da repetição nos valores dos dados), a compactação pode reduzir consideravelmente o consumo de armazenamento, normalmente variando entre 20% e 60% do espaço original. Tabelas que possuem dados que ocorrem com frequência apresentam uma compactação mais eficiente;

- **Velocidade:** As operações de leitura de banco de dados podem se tornar muito mais rápidas, pois quantidades menores de dados físicos precisam ser movidas do disco para a memória. No entanto, o desempenho das operações de gravação pode ser afetado, dependendo do algoritmo de compactação;

- **Utilização de recursos:** Mais dados caberão em uma página no disco, na memória ou no buffer pool, aumentando a probabilidade de que os dados residam no cache. A compactação também resulta em grande redução nos tempos de backup/restauração.

## Quais as desvantagens?

- **Overhead de controle:** A maioria dos algoritmos de compactação cria um dicionário de codificação interno para gerenciar as palavras-chave de compactação. Quando o tamanho do objeto envolvido é pequeno , o resultado da compactação pode ser maior que os arquivos não compactados devido à criação do dicionário e/ou estruturas internas;

- **Overhead de processamento:** Para qualquer banco de dados, compactação e descompactação é uma tarefa adicional às suas operações DML/DDL regulares. Ele consome CPU/memória adicional. Portanto, a compactação deve ser utilizada quando o ganho na CPU/memória devido às leituras de página otimizadas for muito maior do que a sobrecarga de compactação;

- **Latência:** Embora a compactação possa ocorrer em paralelo como uma tarefa em segundo plano, a descompactação pode introduzir latência do lado do cliente à medida que ocorre em primeiro plano após uma consulta.

- **Efetividade:** A compactação não é recomendada quando a cardinalidade e/ou frequência dos dados é pobre , com *caracteres* não repetitivos. Para tipos de dados como dados BLOB (imagens, áudio) ou dados pré-compactados, dependendo do algoritmo de compactação, o tamanho do armazenamento pode ser reduzido ou aumentado.

Em resumo, é importante estimar a volumetria e características negociais, assim como contrapesar com o custo de processamento adicional.

## Qual o efeito da compressão nos datatypes mais comuns?

A compactação é uma função DDL que pode ser aplicada seletivamente a tabelas, índices ou partições com os comandos CREATE, ALTER e BACKUP.

A compactação de dados se aplica a esses objetos de banco de dados – *heaps* (tabelas sem índices clusterizados), índices clusterizados, índices não clusterizados, partições, views indexadas, etc.

A compactação em nível de linha (ROW Compress) converte tipos de dados de comprimento fixo em tipos de comprimento variável. Campos criados como tipos de comprimento fixo, como Char(100), podem não preencher os 100 caracteres inteiros de cada registro. Portanto, isso funciona bem para texto de tamanho fixo e campos numéricos (Char, Integer, Float). Por exemplo, armazenar 23 em uma coluna integer exigirá apenas 1 byte quando compactado em vez de todos os 4 bytes alocados. Nenhum espaço é consumido para valores NULL ou 0.

A compactação de página (Page Compress) é mais avançada. Ele invoca internamente a compactação de linha. A semelhança nos dados da página é extraída e codificada, uma coluna por vez ou todas as colunas juntas. Os dados reais são então substituídos pelos códigos. Objetos grandes (LOB) não são compactados diretamente, em vez disso eles são armazenados em uma página separada para recuperação direta.


----


*FIM "Compactac.md"*


*INICIO "Expurgo.md"*


----


# Expurgo

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Expurgo

Por expurgo deve-se entender a remoção dos dados do banco de dados online, seja para remoção definitiva, seja para movimentação para uma mídia mais barata (fitas/SSD de backup), com isso reduzindo o espaço utilizado no ambiente produtivo, aumentando o desempenho das aplicações e permitindo um uso mais eficaz da infraestrutura corporativa compartilhada.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Expurgo.md"*


*INICIO "Ciclo-de.md"*


----


# Ciclo de Vida dos Dados

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx?csf=1&web=1&e=dr4xqj) >> [Guias: Arquitetura de Dados](https://caixa.sharepoint.com/sites/PPDS/SitePages/GuiasArquiteturaDeDados.aspx) >> [Modelagem de Dados para Sistemas CAIXA](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelagem-de-Dados-para-Sistemas-CAIXA.aspx) >> [Otimização de Tabelas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Otimizacao-de-Tabelas.aspx) >> Ciclo de Vida dos Dados

**O que é a Gestão do Ciclo de Vida dos Dados?**

Para proteger seus dados, você precisa conhecer seus dados – onde os dados são criados, armazenados, usados, adulterados e excluídos. O gerenciamento do ciclo de vida dos dados é uma abordagem baseada em políticas que gerencia o caminho dos dados ao longo de seu ciclo de vida: da criação à exclusão.

As políticas de gerenciamento do ciclo de vida dos dados ajudam as empresas a gerenciar o enorme tamanho, as variações e a velocidade dos dados recebidos. As empresas desfrutam de menores custos de armazenamento, maior desempenho comercial, maiores margens e melhor proteção de dados. No entanto, a recompensa ocorre apenas quando as políticas de ciclo de vida dos dados são bem-sucedidas.

**Ciclo de Vida dos Dados e a LGPD**

A Lei Geral de Proteção de Dados (LGPD) determina que uma pessoa natural ou jurídica, de direito público ou privado, deve deixar claro para qual finalidade utilizará dados pessoais, solicitar o consentimento de seus titulares e realizar o devido tratamento dos dados.

Entender e classificar corretamente os dados se torna um processo importante para estar em conformidade com a lei, através da implementação de políticas, processos e programas apropriados para gerenciar a forma de coletar, processar, analisar, armazenar, compartilhar, reutilizar e eliminar esses dados.

Diante desse contexto, a Gestão do Ciclo de Vida dos Dados deve ser incorporado ao negócio, considerando a finalidade do fornecimento de seus bens e serviços.

A LGPD considera como um **tratamento** todas as operações de diferentes propósitos que são realizadas com os dados pessoais dos usuários. É definido como Ciclo de Vida dos Dados o conjunto de fases em que são realizadas operações específicas com os dados do usuário, desde sua aquisição, até exclusão.

Podem ser consideradas fases do ciclo de vida:

Compreender as diferentes fases é importante para que a gestão do ciclo dentro de um negócio seja realizada sempre em conformidade com a lei através de políticas e processos adequados. Diante deste contexto, vamos conhecer a seguir os detalhes de cada uma das fases do Ciclo de Vida dos Dados:

**Coleta**

Refere-se a coleta, produção e recepção de todos os dados pessoais (Independentemente do meio utilizado, online ou documentos de papel). Os dados pessoais coletados devem obedecer ao princípio da necessidade e da finalidade.

**Processamento**

Corresponde às operações que envolvem classificação, utilização, reprodução, processamento, avaliação ou controle da informação e extração dos dados pessoais. O processamento de dados só poderá ser realizado se o tratamento estiver enquadrado no Art. 7º da LGPD.

**Análise**

A análise de dados deve levar em consideração a finalidade da coleta. Devem ser obedecidos os princípios de tratamento, com propósito legítimo, específico e explícito.

**Compartilhamento**

O compartilhamento de dados deve ser expressamente consentido pelos seus titulares. Envolve qualquer tipo de operação de transmissão, distribuição, comunicação, transferência, difusão e uso compartilhado de dados pessoais.

**Armazenamento**

Os dados pessoais devem ser armazenados e mantidos por prazos definidos, ou seja, até que a finalidade seja alcançada ou deixem de ser necessários ou pertinentes ao alcance da finalidade.

**Reutilização**

Refere-se a reutilização dos dados para alguma finalidade específica. Também deve obter um novo consentimento, visto que há mudança de finalidade.

**Eliminação**

É a operação final do ciclo, que tem como objetivo excluir um dado ou um conjunto de dados pessoais armazenados em um banco de dados.

**4 Erros da Gestão do Ciclo de Vida dos Dados**

**Erro #1: Detalhes Antes do Contexto**

As empresas tendem a comunicar o quê da política, não o porquê. A implementação de uma política de gerenciamento de ciclo de vida de dados significa que todos precisam estar envolvidos, pois cada funcionário tem um papel a desempenhar. A única maneira de isso acontecer é quando você oferece contexto sobre porque a política é importante para os negócios e como ela afetará os funcionários.

**Erro #2: Tratar Todos os Dados Como Iguais**

Os dados do cliente serão gerenciados de maneira diferente dos dados contábeis por um motivo simples: eles atendem a propósitos comerciais diferentes. A verdade é que cada conjunto de dados tem seu significado e tratá-los como uma grande entidade pode ser um erro caro.

Estabeleça os tipos de dados no estágio de coleta, mas lembre-se de que os conjuntos de dados podem pular de um tipo para outro ao longo do ciclo de vida à medida que sua utilidade é alterada. Você pode personalizar políticas de retenção, capacidade de armazenamento e métodos de exclusão para cada tipo de dados.

Por exemplo, um método de classificação popular é agrupar dados com base em seu valor para o negócio. Alguns dos tipos de dados são públicos, internos, confidenciais ou restritos, conforme classificação da informação (OR016). Cada tipo de dados terá suas políticas exclusivas para armazenamento, retenção e exclusão.

**Erro #3: Ignorar o “Humano”**

Um quarto da perda de dados é devido a erro humano. Muitas vezes, as empresas tendem a desconsiderar essa tendência, o que acaba sendo uma lição cara e dolorosa.

**Erro #4: Considerar a Exclusão Como o Fim do Jogo**

Muitas empresas operam com um equívoco de que, no final do ciclo de vida, os dados são retidos ou destruídos. Sendo que, na realidade, os dados são retidos, destruídos ou restaurados.

Os dados podem ser excluídos por erro humano, desastres naturais ou ataques cibernéticos. Os dados já descartados podem conter informações que podem ser significativas posteriormente.

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Ciclo-de.md"*


*INICIO "Capitulo-de-Administracao-e-Banco-de-Dados.md"*


----


# Capítulo de Administração e Banco de Dados

**GECPA10 - Capítulo de Administração e Banco de Dados**

ADI e ADB

**ADI**

Administração de dados e informações em ambiente NPRD

**ABD**

Administração de bancos de dados em ambiente de NPRD

**Mandato**

“Planejar, organizar, integrar, implementar, controlar e prestar suporte aos dados e suas estruturas em Banco de Dados, garantindo a qualidade das informações oferecidas a partir de seus significados e valores para a CAIXA.”

[Links Úteis](https://caixa.sharepoint.com/:u:/r/sites/NPRD/SitePages/LinksUteis.aspx?csf=1&web=1&e=yOyb1M)


----


*FIM "Capitulo-de-Administracao-e-Banco-de-Dados.md"*


*INICIO "Boas práticas para implantações.md"*


----


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


----


*FIM "Boas práticas para implantações.md"*


*INICIO "Modelo de Uso do Grafana.md"*


----


# Modelo de Uso do Grafana

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Capítulos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Capitulos.aspx) >> [Integração e Implantações](https://caixa.sharepoint.com/sites/PPDS/SitePages/CapitulosIntegracaoImplantacoes.aspx) >> Modelo de Uso do Grafana

Este modelo tem como objetivo apresentar as principais características das ferramentas Grafana e *Prometheus* , instrumentos essenciais para o processo de monitoramento dos aplicativos CAIXA, em especial, os desenvolvidos pelas esteiras DevOps.

O conhecimento sobre estas ferramentas e sobre o modelo adotado facilita a compreensão e a democratização do seu uso, tornando-o acessível a todos os interessados, desenvolvedores, operações e suporte, para acompanhamento e monitoração da aplicação publicada, inclusive para ser alertado sobre eventuais problemas.

A primeira parte do documento apresenta detalhes sobre a arquitetura, a lógica de captura de dados, *Prometheus* e PromQL.

A segunda parte do documento apresenta o Grafana e suas principais características, formas de construir consultas, painéis, variáveis e alertas.

A terceira parte apresenta os principais painéis utilizados em [http://monitoracaodevops.produtos.caixa](http://monitoracaodevops.produtos.caixa/) , pesquisa e solicitação de suporte.

[Modelo de Uso do Grafana](https://caixa.sharepoint.com/sites/PPDS/_layouts/15/viewer.aspx?sourcedoc=%7b76059655-31ef-4ee7-a525-ea437ebc9949%7d)

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)


----


*FIM "Modelo de Uso do Grafana.md"*


*INICIO "Atividades e atores do contexto de implantação.md"*


----


[Ir para conteúdo principal](https://caixa.sharepoint.com/sites/PPDS/SitePages/Atividades-e-atores-do-contexto-de-implantacao.aspx#)

[SharePoint](https://caixa.sharepoint.com/_layouts/15/sharepoint.aspx?&login_hint=c137459@corp.caixa.gov.br)

[Portal de Práticas para Desenvolvimento de Software](https://caixa.sharepoint.com/sites/PPDS)

[Capítulos / Células Especializadas](https://caixa.sharepoint.com/sites/PPDS/SitePages/Capitulos.aspx) [Guias](https://caixa.sharepoint.com/sites/PPDS/SitePages/Guias.aspx) [Modelos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Modelos.aspx) [Suporte à Edição](https://caixa.sharepoint.com/sites/PPDS/SitePages/AjudaPaginas.aspx) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx) [Versão Anterior do PPDS](http://ppdswp.caixa/)

# Atividades e atores do contexto de implantação

[PPDS](https://caixa.sharepoint.com/sites/PPDS) >> [Capítulos](https://caixa.sharepoint.com/sites/PPDS/SitePages/Capitulos.aspx) >> [Integração e Implantações](https://caixa.sharepoint.com/sites/PPDS/SitePages/CapitulosIntegracaoImplantacoes.aspx) >> Atividades e atores do contexto de implantação

Responsável pelo site - GECPA (GN Capacidade e Padrões) [Fale Conosco](https://caixa.sharepoint.com/sites/PPDS/SitePages/FaleConosco.aspx)

EOC0(2ms)

EOC1(8ms)

Adicionar este site aos seus favoritos

- Cleudson de Jesus Cavalcante


----


*FIM "Atividades e atores do contexto de implantação.md"*
