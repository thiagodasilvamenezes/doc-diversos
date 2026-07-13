Option Explicit

' ==============================================================
' SIADL - Modelo Conceitual de Dados (CDM) - Versao 4 consolidada
' Execucao: PowerDesigner > Tools > Execute Commands > VBScript
' Compativel com a linha PowerDesigner 16.x.
' Inclui: regras corrigidas, PI nomeados, cores, links de dominio, legenda visual
' e adequacao do identificador fiscal CPF/CNPJ ao CNPJ alfanumerico (GECPA10).
' ==============================================================

Dim mdl, dgm

Set mdl = CreateModel(PdCDM.Cls_Model)
If mdl Is Nothing Then
   MsgBox "Nao foi possivel criar o modelo conceitual.", vbCritical, "SIADL"
   WScript.Quit
End If

mdl.SetNameAndCode "SIADL - Modelo Conceitual", "SIADL_CDM"
mdl.Comment = "Modelo conceitual proposto para o Sistema de Atendimento Digital - SIADL. Versao ajustada para representar o identificador fiscal CPF/CNPJ em coluna unica, preservando compatibilidade com a DDL existente e alinhando o CNPJ ao formato alfanumerico orientado pela GECPA10."
Set dgm = ActiveDiagram

Function ColorLong(r, g, b)
   ColorLong = r + (g * 256) + (b * 65536)
End Function

Function AddEntity(entityName, entityCode, entityComment, x, y, w, h, fillColor)
   Dim ent, sym
   Set ent = mdl.Entities.CreateNew()
   ent.SetNameAndCode entityName, entityCode
   ent.Comment = entityComment
   Set sym = dgm.AttachObject(ent)

   On Error Resume Next
   sym.Position = NewPoint(x, y)
   sym.Width = w
   sym.Height = h
   sym.FillColor = fillColor
   sym.LineWidth = 2
   On Error GoTo 0

   Set AddEntity = ent
End Function

Sub AddAttribute(ent, attrName, attrCode, dataType, mandatory, isPrimary, attrComment)
   Dim attr
   Set attr = ent.Attributes.CreateNew()
   attr.SetNameAndCode attrName, attrCode
   attr.DataType = dataType
   attr.Mandatory = mandatory
   attr.Comment = attrComment

   If isPrimary Then
      On Error Resume Next
      attr.PrimaryIdentifier = True
      On Error GoTo 0
   End If
End Sub

Function AddRelationship(relName, relCode, obj1, obj2, card1, card2, relComment)
   Dim rel, sym
   Set rel = mdl.Relationships.CreateNew()
   rel.SetNameAndCode relName, relCode
   Set rel.Object1 = obj1
   Set rel.Object2 = obj2
   rel.Comment = relComment & " | Cardinalidades: " & card1 & " -> " & card2

   ' As propriedades de cardinalidade podem variar conforme a notacao
   ' configurada na instalacao. O script tenta os nomes usuais e mantem
   ' a cardinalidade registrada no comentario caso o recurso nao exista.
   On Error Resume Next
   Call rel.SetAttributeText("Cardinality1", card1)
   Call rel.SetAttributeText("Cardinality2", card2)
   Call rel.SetAttributeText("Role1", relName)
   On Error GoTo 0

   Set sym = dgm.AttachLinkObject(rel)
   On Error Resume Next
   sym.LineWidth = 2
   On Error GoTo 0

   Set AddRelationship = rel
End Function

Sub AddRule(ruleName, ruleCode, ruleText, targetObject)
   Dim br
   Set br = mdl.BusinessRules.CreateNew()
   br.SetNameAndCode ruleName, ruleCode

   ' O objeto BusinessRule nao possui um campo textual Definition
   ' acessivel por atribuicao direta nesta interface de automacao.
   ' O enunciado da regra fica armazenado no campo Comment.
   br.Comment = ruleText

   ' A colecao disponivel para associar a regra pode variar conforme
   ' a versao e o tipo de modelo. Tenta-se a forma principal e,
   ' se necessario, uma forma alternativa sem interromper o script.
   On Error Resume Next
   targetObject.AttachedRules.Add br
   If Err.Number <> 0 Then
      Err.Clear
      targetObject.BusinessRules.Add br
   End If
   On Error GoTo 0
End Sub

' ----------------------------------------------------------------
' Paleta
' ----------------------------------------------------------------
Dim C_BLUE, C_GREEN, C_YELLOW, C_PURPLE, C_WHITE
C_BLUE   = ColorLong(217, 234, 247)
C_GREEN  = ColorLong(221, 238, 219)
C_YELLOW = ColorLong(255, 240, 214)
C_PURPLE = ColorLong(232, 221, 240)
C_WHITE  = ColorLong(255, 255, 255)

' ----------------------------------------------------------------
' Entidades
' ----------------------------------------------------------------
Dim cliente, pf, pj, conta, atendimento, interacao
Dim transacao, historico, limite, dispositivo, canal
Dim tipoTransacao, situacaoTransacao, tipoAtendimento
Dim situacaoAtendimento, prioridade, tipoLimite

Set pf = AddEntity( _
   "PESSOA_FISICA", "PESSOA_FISICA", _
   "Subtipo de CLIENTE. Especializacao total e exclusiva.", _
   22000, 16000, 26000, 15000, C_BLUE)
AddAttribute pf, "Data de nascimento", "DT_NASCIMENTO", "Date", True, False, ""
AddAttribute pf, "Sexo", "IC_SEXO", "Character", False, False, ""

Set pj = AddEntity( _
   "PESSOA_JURIDICA", "PESSOA_JURIDICA", _
   "Subtipo de CLIENTE. Especializacao total e exclusiva.", _
   65000, 16000, 28000, 15000, C_BLUE)
AddAttribute pj, "Natureza juridica", "CO_NATUREZA_JURIDICA", "Integer", True, False, ""
AddAttribute pj, "Data de constituicao", "DT_CONSTITUICAO", "Date", True, False, ""

Set cliente = AddEntity( _
   "CLIENTE", "CLIENTE", _
   "Superentidade cadastral. Todo cliente e PF ou PJ, nunca ambos. O identificador fiscal CPF/CNPJ e preservado em coluna unica por compatibilidade com a DDL existente, com suporte ao CNPJ alfanumerico conforme orientacao GECPA10.", _
   43000, 46000, 33000, 27000, C_BLUE)
AddAttribute cliente, "Numero do cliente", "NU_CLIENTE", "Integer", True, True, "Identificador."
AddAttribute cliente, "Nome", "NO_CLIENTE", "Variable Characters (150)", True, False, ""
AddAttribute cliente, "Codigo do identificador fiscal CPF/CNPJ", "CO_CPF_CNPJ", "Characters (14)", True, False, "Identificador fiscal unico por tipo de pessoa, mantido em coluna unica por compatibilidade com a DDL existente. CPF e CNPJ devem ser armazenados sem mascara; CNPJ suporta formato alfanumerico de 14 posicoes conforme orientacao GECPA10."
AddAttribute cliente, "Tipo de pessoa", "IC_TIPO_PESSOA", "Character", True, False, "Dominio PF/PJ."
AddAttribute cliente, "Situacao", "CO_SITUACAO_CLIENTE", "Integer", True, False, "Dominio."
AddAttribute cliente, "Segmento", "CO_SEGMENTO_CLIENTE", "Integer", True, False, "Dominio."
AddAttribute cliente, "Data e hora de cadastro", "DH_CADASTRO", "Date & Time", True, False, ""

Set dispositivo = AddEntity( _
   "DISPOSITIVO_CLIENTE", "DISPOSITIVO_CLIENTE", _
   "Dispositivo vinculado ao cliente.", _
   3000, 52000, 30000, 24000, C_BLUE)
AddAttribute dispositivo, "Numero do dispositivo", "NU_DISPOSITIVO", "Integer", True, True, ""
AddAttribute dispositivo, "Tipo", "CO_TIPO_DISPOSITIVO", "Integer", True, False, ""
AddAttribute dispositivo, "Sistema operacional", "NO_SISTEMA_OPERACIONAL", "Variable Characters (50)", False, False, ""
AddAttribute dispositivo, "Identificador tecnico", "CO_IDENTIFICADOR_TECNICO", "Variable Characters (200)", True, False, "Unico."
AddAttribute dispositivo, "Data do vinculo", "DH_VINCULO", "Date & Time", True, False, ""
AddAttribute dispositivo, "Situacao", "CO_SITUACAO_DISPOSITIVO", "Integer", True, False, ""

Set conta = AddEntity( _
   "CONTA", "CONTA", _
   "Conta vinculada ao cliente.", _
   39000, 92000, 31000, 22000, C_BLUE)
AddAttribute conta, "Numero interno da conta", "NU_CONTA", "Long Integer", True, True, ""
AddAttribute conta, "Numero da conta", "CO_CONTA", "Variable Characters (30)", True, False, "Unico."
AddAttribute conta, "Tipo", "CO_TIPO_CONTA", "Integer", True, False, "Dominio."
AddAttribute conta, "Situacao", "CO_SITUACAO_CONTA", "Integer", True, False, "Dominio."
AddAttribute conta, "Data de abertura", "DT_ABERTURA", "Date", True, False, ""

Set atendimento = AddEntity( _
   "ATENDIMENTO", "ATENDIMENTO", _
   "Atendimento digital aberto por um cliente e originado por um canal.", _
   98000, 45000, 35000, 23000, C_GREEN)
AddAttribute atendimento, "Numero do atendimento", "NU_ATENDIMENTO", "Long Integer", True, True, ""
AddAttribute atendimento, "Data e hora de abertura", "DH_ABERTURA", "Date & Time", True, False, ""
AddAttribute atendimento, "Data e hora de fechamento", "DH_FECHAMENTO", "Date & Time", False, False, ""
AddAttribute atendimento, "Situacao", "CO_SITUACAO_ATENDIMENTO", "Integer", True, False, "Dominio."
AddAttribute atendimento, "Prioridade", "CO_PRIORIDADE", "Integer", True, False, "Dominio."

Set interacao = AddEntity( _
   "INTERACAO_ATENDIMENTO", "INTERACAO_ATENDIMENTO", _
   "Entidade fraca: nao existe sem ATENDIMENTO.", _
   145000, 45000, 39000, 23000, C_YELLOW)
AddAttribute interacao, "Numero da interacao", "NU_INTERACAO", "Long Integer", True, True, ""
AddAttribute interacao, "Tipo", "CO_TIPO_INTERACAO", "Integer", True, False, "Dominio."
AddAttribute interacao, "Data e hora", "DH_INTERACAO", "Date & Time", True, False, ""
AddAttribute interacao, "Origem", "CO_ORIGEM_INTERACAO", "Integer", True, False, "Dominio."
AddAttribute interacao, "Conteudo resumido", "DE_CONTEUDO_RESUMIDO", "Variable Characters (500)", False, False, ""

Set canal = AddEntity( _
   "CANAL", "CANAL", _
   "Entidade de dominio que origina atendimentos e transacoes.", _
   108000, 12000, 28000, 19000, C_PURPLE)
AddAttribute canal, "Numero do canal", "NU_CANAL", "Integer", True, True, ""
AddAttribute canal, "Nome", "NO_CANAL", "Variable Characters (80)", True, False, ""
AddAttribute canal, "Tipo", "CO_TIPO_CANAL", "Integer", True, False, ""
AddAttribute canal, "Situacao", "CO_SITUACAO_CANAL", "Integer", True, False, ""

Set transacao = AddEntity( _
   "TRANSACAO", "TRANSACAO", _
   "Operacao financeira realizada em uma conta e originada por um canal.", _
   90000, 93000, 35000, 23000, C_GREEN)
AddAttribute transacao, "Numero da transacao", "NU_TRANSACAO", "Long Integer", True, True, ""
AddAttribute transacao, "Data e hora", "DH_TRANSACAO", "Date & Time", True, False, ""
AddAttribute transacao, "Valor", "VR_TRANSACAO", "Decimal (17,2)", True, False, ""
AddAttribute transacao, "Tipo", "CO_TIPO_TRANSACAO", "Integer", True, False, "Dominio."
AddAttribute transacao, "Situacao corrente", "CO_SITUACAO_TRANSACAO", "Integer", True, False, "Dominio."

Set historico = AddEntity( _
   "TRANSACAO_HISTORICO", "TRANSACAO_HISTORICO", _
   "Entidade fraca e historica. Somente inclusao (append-only).", _
   140000, 93000, 40000, 23000, C_YELLOW)
AddAttribute historico, "Numero do evento", "NU_EVENTO", "Long Integer", True, True, ""
AddAttribute historico, "Data e hora do evento", "DH_EVENTO", "Date & Time", True, False, ""
AddAttribute historico, "Situacao anterior", "CO_SITUACAO_ANTERIOR", "Integer", False, False, ""
AddAttribute historico, "Situacao nova", "CO_SITUACAO_NOVA", "Integer", True, False, ""
AddAttribute historico, "Origem do evento", "CO_ORIGEM_EVENTO", "Integer", True, False, ""

Set limite = AddEntity( _
   "LIMITE_CONTA", "LIMITE_CONTA", _
   "Limite temporal associado a conta.", _
   35000, 130000, 37000, 23000, C_BLUE)
AddAttribute limite, "Numero do limite", "NU_LIMITE", "Long Integer", True, True, ""
AddAttribute limite, "Tipo de limite", "CO_TIPO_LIMITE", "Integer", True, False, "Dominio."
AddAttribute limite, "Valor", "VR_LIMITE", "Decimal (17,2)", True, False, ""
AddAttribute limite, "Data inicial da vigencia", "DT_INICIO_VIGENCIA", "Date", True, False, ""
AddAttribute limite, "Data final da vigencia", "DT_FIM_VIGENCIA", "Date", False, False, "Nulo indica vigente."

' Dominios
Set tipoTransacao = AddEntity("TIPO_TRANSACAO", "TIPO_TRANSACAO", "Dominio.", 193000, 18000, 26000, 14000, C_PURPLE)
AddAttribute tipoTransacao, "Codigo", "CO_TIPO_TRANSACAO", "Integer", True, True, ""
AddAttribute tipoTransacao, "Nome", "NO_TIPO_TRANSACAO", "Variable Characters (80)", True, False, ""

Set situacaoTransacao = AddEntity("SITUACAO_TRANSACAO", "SITUACAO_TRANSACAO", "Dominio.", 193000, 39000, 26000, 14000, C_PURPLE)
AddAttribute situacaoTransacao, "Codigo", "CO_SITUACAO_TRANSACAO", "Integer", True, True, ""
AddAttribute situacaoTransacao, "Nome", "NO_SITUACAO_TRANSACAO", "Variable Characters (80)", True, False, ""

Set tipoAtendimento = AddEntity("TIPO_ATENDIMENTO", "TIPO_ATENDIMENTO", "Dominio.", 193000, 60000, 26000, 14000, C_PURPLE)
AddAttribute tipoAtendimento, "Codigo", "CO_TIPO_ATENDIMENTO", "Integer", True, True, ""
AddAttribute tipoAtendimento, "Nome", "NO_TIPO_ATENDIMENTO", "Variable Characters (80)", True, False, ""

Set situacaoAtendimento = AddEntity("SITUACAO_ATENDIMENTO", "SITUACAO_ATENDIMENTO", "Dominio.", 193000, 81000, 26000, 14000, C_PURPLE)
AddAttribute situacaoAtendimento, "Codigo", "CO_SITUACAO_ATENDIMENTO", "Integer", True, True, ""
AddAttribute situacaoAtendimento, "Nome", "NO_SITUACAO_ATENDIMENTO", "Variable Characters (80)", True, False, ""

Set prioridade = AddEntity("PRIORIDADE", "PRIORIDADE", "Dominio.", 193000, 102000, 26000, 14000, C_PURPLE)
AddAttribute prioridade, "Codigo", "CO_PRIORIDADE", "Integer", True, True, ""
AddAttribute prioridade, "Nome", "NO_PRIORIDADE", "Variable Characters (80)", True, False, ""

Set tipoLimite = AddEntity("TIPO_LIMITE", "TIPO_LIMITE", "Dominio.", 193000, 123000, 26000, 14000, C_PURPLE)
AddAttribute tipoLimite, "Codigo", "CO_TIPO_LIMITE", "Integer", True, True, ""
AddAttribute tipoLimite, "Nome", "NO_TIPO_LIMITE", "Variable Characters (80)", True, False, ""

' ----------------------------------------------------------------
' Relacionamentos
' ----------------------------------------------------------------
Call AddRelationship("possui", "REL_CLIENTE_CONTA", cliente, conta, "1", "0..N", "Um cliente pode possuir varias contas.")
Call AddRelationship("abre", "REL_CLIENTE_ATENDIMENTO", cliente, atendimento, "1", "0..N", "Um cliente pode abrir varios atendimentos.")
Call AddRelationship("vincula", "REL_CLIENTE_DISPOSITIVO", cliente, dispositivo, "1", "0..N", "Um cliente pode vincular varios dispositivos.")

' Especializacao representada por relacionamentos e regra explicita.
' Caso a instalacao utilize a ferramenta nativa de Inheritance,
' substitua visualmente estes dois relacionamentos por uma heranca.
Call AddRelationship("especializa em PF", "REL_CLIENTE_PF", cliente, pf, "1", "0..1", "Especializacao total e exclusiva.")
Call AddRelationship("especializa em PJ", "REL_CLIENTE_PJ", cliente, pj, "1", "0..1", "Especializacao total e exclusiva.")

Call AddRelationship("realiza", "REL_CONTA_TRANSACAO", conta, transacao, "1", "0..N", "Uma conta realiza varias transacoes.")
Call AddRelationship("recebe", "REL_CONTA_LIMITE", conta, limite, "1", "1..N", "Uma conta possui historico de limites.")
Call AddRelationship("e detalhado por", "REL_ATENDIMENTO_INTERACAO", atendimento, interacao, "1", "1..N", "Relacionamento identificador.")
Call AddRelationship("origina atendimento", "REL_CANAL_ATENDIMENTO", canal, atendimento, "1", "0..N", "Canal de origem do atendimento.")
Call AddRelationship("origina transacao", "REL_CANAL_TRANSACAO", canal, transacao, "1", "0..N", "Canal de origem da transacao.")
Call AddRelationship("gera", "REL_TRANSACAO_HISTORICO", transacao, historico, "1", "1..N", "Relacionamento identificador; historico append-only.")

Call AddRelationship("classifica", "REL_TIPO_TRANSACAO", tipoTransacao, transacao, "1", "0..N", "Dominio.")
Call AddRelationship("qualifica", "REL_SITUACAO_TRANSACAO", situacaoTransacao, transacao, "1", "0..N", "Dominio.")
Call AddRelationship("classifica", "REL_TIPO_ATENDIMENTO", tipoAtendimento, interacao, "1", "0..N", "Dominio.")
Call AddRelationship("qualifica", "REL_SITUACAO_ATENDIMENTO", situacaoAtendimento, atendimento, "1", "0..N", "Dominio.")
Call AddRelationship("qualifica", "REL_PRIORIDADE", prioridade, atendimento, "1", "0..N", "Dominio.")
Call AddRelationship("classifica", "REL_TIPO_LIMITE", tipoLimite, limite, "1", "0..N", "Dominio.")

' ----------------------------------------------------------------
' Regras de negocio
' ----------------------------------------------------------------
Call AddRule( _
   "Especializacao CLIENTE", "RN_CLIENTE_ESPECIALIZACAO", _
   "Especializacao total e exclusiva: todo CLIENTE e PESSOA_FISICA ou PESSOA_JURIDICA, nunca ambos.", _
   cliente)

Call AddRule( _
   "Identificador fiscal CPF/CNPJ", "RN_CLIENTE_CPF_CNPJ_GECPA10", _
   "Como o SIADL parte de DDL existente com CPF e CNPJ em coluna unica, o modelo conceitual preserva essa estrutura no atributo CO_CPF_CNPJ. IC_TIPO_PESSOA distingue pessoa fisica de pessoa juridica; o valor deve ser normalizado sem mascara; e o CNPJ deve suportar formato alfanumerico de 14 posicoes, conforme orientacao GECPA10.", _
   cliente)

Call AddRule( _
   "Vigencia de limite", "RN_LIMITE_VIGENCIA", _
   "Vigencias nao podem se sobrepor por conta e tipo de limite; no maximo um registro vigente.", _
   limite)

Call AddRule( _
   "Historico append-only", "RN_TRANSACAO_HISTORICO", _
   "TRANSACAO_HISTORICO permite apenas inclusao. Alteracoes geram um novo evento.", _
   historico)


' =================================================================
' POS-PROCESSAMENTO VISUAL E DE IDENTIFICADORES — VERSAO 3
' =================================================================

Function IsInCodeList(value, values)
   Dim idx
   IsInCodeList = False
   For idx = 0 To UBound(values)
      If UCase(Trim(value)) = UCase(values(idx)) Then
         IsInCodeList = True
         Exit Function
      End If
   Next
End Function

Sub ForceBoxStyle(symbolObject, fillColor, lineColor)
   On Error Resume Next

   symbolObject.SetAttribute "IconMode", -1
   symbolObject.SetAttribute "FillColor", fillColor
   symbolObject.SetAttribute "LineColor", lineColor
   symbolObject.SetAttribute "BrushStyle", 6
   symbolObject.SetAttribute "GradientFillMode", 65
   symbolObject.SetAttribute "GradientEndColor", ColorLong(255, 255, 255)
   symbolObject.SetAttribute "ShadowColor", ColorLong(210, 214, 220)

   symbolObject.FillColor = fillColor
   symbolObject.LineColor = lineColor
   symbolObject.BrushStyle = 6
   symbolObject.GradientFillMode = 65
   symbolObject.GradientEndColor = ColorLong(255, 255, 255)

   Err.Clear
   On Error GoTo 0
End Sub

Sub ForceDomainLinkStyle(symbolObject)
   On Error Resume Next

   symbolObject.SetAttribute "LineColor", ColorLong(139, 106, 163)
   symbolObject.LineColor = ColorLong(139, 106, 163)

   ' As propriedades de tracejado variam entre versoes/notacoes.
   symbolObject.SetAttribute "LineStyle", 2
   symbolObject.SetAttribute "PenStyle", 2
   symbolObject.SetAttribute "DashStyle", 1

   Err.Clear
   On Error GoTo 0
End Sub

Sub RenamePrimaryIdentifier(entityObject)
   Dim identifierObject, desiredName, desiredCode

   desiredName = "Identificador primario de " & entityObject.Name
   desiredCode = "PI_" & entityObject.Code

   On Error Resume Next
   For Each identifierObject In entityObject.Identifiers
      If identifierObject.PrimaryIdentifier Then
         identifierObject.SetNameAndCode desiredName, desiredCode
         Exit For
      End If
   Next

   If Err.Number <> 0 Then
      Output "Aviso: nao foi possivel renomear o PI de " & entityObject.Code & _
             ": " & Err.Description
      Err.Clear
   End If
   On Error GoTo 0
End Sub

Function FindBusinessRuleByCode(ruleCode)
   Dim currentRule
   Set FindBusinessRuleByCode = Nothing

   For Each currentRule In mdl.BusinessRules
      If UCase(currentRule.Code) = UCase(ruleCode) Then
         Set FindBusinessRuleByCode = currentRule
         Exit Function
      End If
   Next
End Function

Function FindOrCreateLegendRule(ruleName, ruleCode, ruleComment)
   Dim legendRule
   Set legendRule = FindBusinessRuleByCode(ruleCode)

   If legendRule Is Nothing Then
      Set legendRule = mdl.BusinessRules.CreateNew()
      legendRule.SetNameAndCode ruleName, ruleCode
   Else
      legendRule.Name = ruleName
   End If

   legendRule.Comment = ruleComment
   Set FindOrCreateLegendRule = legendRule
End Function

Sub AddLegendSymbol(ruleName, ruleCode, ruleComment, x, y, w, h, fillColor, lineColor)
   Dim legendRule, legendSymbol
   Set legendRule = FindOrCreateLegendRule(ruleName, ruleCode, ruleComment)

   On Error Resume Next
   Set legendSymbol = dgm.AttachObject(legendRule)

   If Not legendSymbol Is Nothing Then
      legendSymbol.Position = NewPoint(x, y)
      legendSymbol.Width = w
      legendSymbol.Height = h
      ForceBoxStyle legendSymbol, fillColor, lineColor
   Else
      Output "Aviso: a legenda " & ruleCode & " foi criada em Business Rules, " & _
             "mas nao foi anexada automaticamente ao diagrama."
   End If

   If Err.Number <> 0 Then
      Output "Aviso ao criar legenda " & ruleCode & ": " & Err.Description
      Err.Clear
   End If
   On Error GoTo 0
End Sub

Sub ApplyVisualClassificationAndIdentifiers()
   Dim masterEntities, transactionalEntities, weakEntities
   Dim domainEntities, domainRelationships
   Dim diagramSymbol, representedObject, objectCode
   Dim modelEntity
   Dim coloredCount, linkCount, idCount

   masterEntities = Array( _
      "CLIENTE", _
      "PESSOA_FISICA", _
      "PESSOA_JURIDICA", _
      "CONTA", _
      "LIMITE_CONTA", _
      "DISPOSITIVO_CLIENTE" _
   )

   transactionalEntities = Array( _
      "ATENDIMENTO", _
      "TRANSACAO" _
   )

   weakEntities = Array( _
      "INTERACAO_ATENDIMENTO", _
      "TRANSACAO_HISTORICO" _
   )

   domainEntities = Array( _
      "CANAL", _
      "TIPO_TRANSACAO", _
      "SITUACAO_TRANSACAO", _
      "TIPO_ATENDIMENTO", _
      "SITUACAO_ATENDIMENTO", _
      "PRIORIDADE", _
      "TIPO_LIMITE" _
   )

   domainRelationships = Array( _
      "REL_TIPO_TRANSACAO", _
      "REL_SITUACAO_TRANSACAO", _
      "REL_TIPO_ATENDIMENTO", _
      "REL_SITUACAO_ATENDIMENTO", _
      "REL_PRIORIDADE", _
      "REL_TIPO_LIMITE" _
   )

   coloredCount = 0
   linkCount = 0
   idCount = 0

   For Each modelEntity In mdl.Entities
      RenamePrimaryIdentifier modelEntity
      idCount = idCount + 1
   Next

   For Each diagramSymbol In dgm.Symbols
      Set representedObject = Nothing

      On Error Resume Next
      Set representedObject = diagramSymbol.Object
      On Error GoTo 0

      If Not representedObject Is Nothing Then
         objectCode = UCase(Trim(representedObject.Code))

         If IsInCodeList(objectCode, masterEntities) Then
            ForceBoxStyle diagramSymbol, ColorLong(217, 234, 247), ColorLong(68, 114, 167)
            coloredCount = coloredCount + 1

         ElseIf IsInCodeList(objectCode, transactionalEntities) Then
            ForceBoxStyle diagramSymbol, ColorLong(221, 238, 219), ColorLong(93, 145, 88)
            coloredCount = coloredCount + 1

         ElseIf IsInCodeList(objectCode, weakEntities) Then
            ForceBoxStyle diagramSymbol, ColorLong(255, 240, 214), ColorLong(193, 138, 42)
            coloredCount = coloredCount + 1

         ElseIf IsInCodeList(objectCode, domainEntities) Then
            ForceBoxStyle diagramSymbol, ColorLong(232, 221, 240), ColorLong(139, 106, 163)
            coloredCount = coloredCount + 1

         ElseIf IsInCodeList(objectCode, domainRelationships) Then
            ForceDomainLinkStyle diagramSymbol
            linkCount = linkCount + 1
         End If
      End If
   Next

   AddLegendSymbol _
      "LEGENDA — CLASSIFICACAO VISUAL", _
      "LEG_TITULO", _
      "As cores representam classes funcionais e nao alteram a semantica.", _
      82000, -12000, 72000, 9000, _
      ColorLong(31, 78, 120), ColorLong(31, 78, 120)

   AddLegendSymbol _
      "Azul-claro — entidade mestre, cadastral ou operacional", _
      "LEG_MESTRE", _
      "CLIENTE, PF, PJ, CONTA, LIMITE_CONTA e DISPOSITIVO_CLIENTE.", _
      82000, -23000, 72000, 9000, _
      ColorLong(217, 234, 247), ColorLong(68, 114, 167)

   AddLegendSymbol _
      "Verde-claro — entidade transacional", _
      "LEG_TRANSACIONAL", _
      "ATENDIMENTO e TRANSACAO.", _
      82000, -34000, 72000, 9000, _
      ColorLong(221, 238, 219), ColorLong(93, 145, 88)

   AddLegendSymbol _
      "Amarelo-claro — entidade fraca, dependente ou historica", _
      "LEG_FRACA", _
      "INTERACAO_ATENDIMENTO e TRANSACAO_HISTORICO.", _
      82000, -45000, 72000, 9000, _
      ColorLong(255, 240, 214), ColorLong(193, 138, 42)

   AddLegendSymbol _
      "Roxo-claro — entidade de dominio", _
      "LEG_DOMINIO", _
      "CANAL e demais vocabularios controlados.", _
      82000, -56000, 72000, 9000, _
      ColorLong(232, 221, 240), ColorLong(139, 106, 163)

   AddLegendSymbol _
      "Linha continua — relacionamento de negocio", _
      "LEG_REL_NEGOCIO", _
      "Exemplo: CLIENTE possui CONTA.", _
      158000, -23000, 61000, 9000, _
      ColorLong(255, 255, 255), ColorLong(71, 84, 103)

   AddLegendSymbol _
      "Linha roxa tracejada — classificacao ou qualificacao por dominio", _
      "LEG_REL_DOMINIO", _
      "Exemplo: TIPO_TRANSACAO classifica TRANSACAO.", _
      158000, -34000, 61000, 11000, _
      ColorLong(250, 247, 252), ColorLong(139, 106, 163)

   AddLegendSymbol _
      "Nota amarela — regra de negocio ou restricao complementar", _
      "LEG_REGRA", _
      "Exemplos: vigencia nao sobreposta e historico append-only.", _
      158000, -47000, 61000, 11000, _
      ColorLong(255, 248, 231), ColorLong(217, 164, 65)

   Output "Pos-processamento SIADL concluido."
   Output "Entidades com PI renomeado: " & CStr(idCount)
   Output "Entidades coloridas: " & CStr(coloredCount)
   Output "Relacionamentos de dominio destacados: " & CStr(linkCount)
End Sub

Call ApplyVisualClassificationAndIdentifiers()

Output "SIADL_CDM criado com sucesso. Identificador fiscal ajustado para CO_CPF_CNPJ alfanumerico conforme GECPA10."
Output "Revise a notacao em Tools > Model Options e execute Tools > Check Model."
Output "Salve o arquivo como SIADL_DER_Conceitual.cdm."

MsgBox "Modelo conceitual SIADL criado." & vbCrLf & _
       "Revise a notacao/cardinalidades e salve como .cdm.", _
       vbInformation, "SIADL"
