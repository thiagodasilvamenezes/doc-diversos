# Especificação auxiliar do diagrama SIADL para Draw.io ou PowerDesigner

## Objetivo
Reconstruir o modelo conceitual ideal do SIADL em ferramenta visual, mantendo cardinalidades, classes de entidade e principais regras.

## Entidades

1. **CLIENTE** — entidade forte/dado mestre.
   - Chave: `id_cliente`.
   - Atributos conceituais: documento, nome, data_cadastro, status, segmento/tipo cliente.
   - Observação: admite especialização conceitual PF/PJ.

2. **CONTA** — entidade forte dependente de CLIENTE.
   - Chave: `id_conta`.
   - Relacionamento: CLIENTE 1:N CONTA.

3. **CANAL** — entidade de domínio.
   - Chave: `id_canal`.
   - Relacionamentos: CANAL 1:N TRANSACAO; CANAL 1:N ATENDIMENTO.

4. **ATENDIMENTO** — entidade transacional/operacional.
   - Chave: `id_atendimento`.
   - Relacionamentos: CLIENTE 1:N ATENDIMENTO; CANAL 1:N ATENDIMENTO; ATENDIMENTO 1:N INTERACAO_ATENDIMENTO.

5. **INTERACAO_ATENDIMENTO** — entidade histórica/dependente.
   - Chave: `id_interacao`.
   - Relacionamentos: ATENDIMENTO 1:N INTERACAO_ATENDIMENTO; CLIENTE 1:N INTERACAO_ATENDIMENTO como participação/rastreio.

6. **DISPOSITIVO_CLIENTE** — entidade operacional de segurança.
   - Chave: `id_dispositivo`.
   - Relacionamento: CLIENTE 1:N DISPOSITIVO_CLIENTE.

7. **LIMITE_CONTA** — entidade temporal de vigência de negócio.
   - Chave: `id_limite`.
   - Relacionamento: CONTA 1:N LIMITE_CONTA.
   - Regra: não deve haver sobreposição de vigência por conta/tipo.

8. **TRANSACAO** — entidade transacional crítica.
   - Chave: `id_transacao`.
   - Relacionamentos: CONTA 1:N TRANSACAO; CANAL 1:N TRANSACAO; TRANSACAO 1:N TRANSACAO_HISTORICO.

9. **TRANSACAO_HISTORICO** — entidade histórica append-only.
   - Chave: `id_transacao_historico`.
   - Relacionamento: TRANSACAO 1:N TRANSACAO_HISTORICO.

## Cardinalidades

| Origem | Cardinalidade | Destino | Verbo |
|---|---:|---|---|
| CLIENTE | 1:N | CONTA | possui |
| CLIENTE | 1:N | ATENDIMENTO | solicita |
| CLIENTE | 1:N | DISPOSITIVO_CLIENTE | vincula |
| CLIENTE | 1:N | INTERACAO_ATENDIMENTO | participa de |
| CONTA | 1:N | TRANSACAO | movimenta |
| CONTA | 1:N | LIMITE_CONTA | possui |
| CANAL | 1:N | TRANSACAO | origina |
| CANAL | 1:N | ATENDIMENTO | recebe |
| ATENDIMENTO | 1:N | INTERACAO_ATENDIMENTO | registra |
| TRANSACAO | 1:N | TRANSACAO_HISTORICO | altera estado |

## Observações para PowerDesigner

- Usar notação James Martin / pé-de-galinha.
- Registrar domínios para status, tipo, origem, prioridade e canal.
- Registrar descrições não tautológicas para tabelas e colunas.
- Classificar dados sensíveis: documento do cliente, hash de dispositivo, valores financeiros e trilhas de auditoria.
- No modelo físico, indicar particionamento por data nas tabelas massivas e compactação conforme SGBD SQL Server.
