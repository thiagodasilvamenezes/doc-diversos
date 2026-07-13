/* ============================================================================
   ANEXO — DDL ORIGINAL DO SIADL (situação atual, conforme enunciado da PT)
   PSI nº 15358 — Estudo de Caso do Sistema de Atendimento Digital — SIADL
   SGBD: Microsoft SQL Server 2025
   Observação: esta DDL contém as não conformidades analisadas na seção 2.2
   da Produção Temática (TIMESTAMP para datas de negócio, canal como texto
   livre, status VARCHAR sem domínio, ausência de particionamento, compressão,
   índices e auditoria, nomenclatura fora do padrão corporativo).
   ============================================================================ */

CREATE TABLE CLIENTE (
    id_cliente BIGINT PRIMARY KEY,
    nome_cliente VARCHAR(150) NOT NULL,
    documento_cliente VARCHAR(20) NOT NULL UNIQUE,
    data_cadastro TIMESTAMP NOT NULL,
    status_cliente VARCHAR(20) NOT NULL,
    segmento VARCHAR(30) NOT NULL
);

CREATE TABLE CANAL (
    id_canal INT PRIMARY KEY,
    descricao_canal VARCHAR(80) NOT NULL,
    tipo_canal VARCHAR(30) NOT NULL,
    status_canal VARCHAR(20) NOT NULL
);

CREATE TABLE CONTA (
    id_conta BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    numero_conta VARCHAR(30) NOT NULL UNIQUE,
    tipo_conta VARCHAR(30) NOT NULL,
    data_abertura TIMESTAMP NOT NULL,
    status_conta VARCHAR(20) NOT NULL,
    CONSTRAINT fk_conta_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE ATENDIMENTO (
    id_atendimento BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    canal VARCHAR(30) NOT NULL,
    data_abertura TIMESTAMP NOT NULL,
    data_fechamento TIMESTAMP NULL,
    status_atendimento VARCHAR(20) NOT NULL,
    prioridade VARCHAR(20) NOT NULL,
    CONSTRAINT fk_atendimento_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE INTERACAO_ATENDIMENTO (
    id_interacao BIGINT PRIMARY KEY,
    id_atendimento BIGINT NOT NULL,
    tipo_interacao VARCHAR(30) NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    origem VARCHAR(30) NOT NULL,
    conteudo_resumido VARCHAR(500) NULL,
    CONSTRAINT fk_interacao_atendimento FOREIGN KEY (id_atendimento) REFERENCES ATENDIMENTO(id_atendimento)
);

CREATE TABLE DISPOSITIVO_CLIENTE (
    id_dispositivo BIGINT PRIMARY KEY,
    id_cliente BIGINT NOT NULL,
    tipo_dispositivo VARCHAR(30) NOT NULL,
    sistema_operacional VARCHAR(30) NOT NULL,
    hash_dispositivo VARCHAR(128) NOT NULL UNIQUE,
    data_vinculo TIMESTAMP NOT NULL,
    CONSTRAINT fk_dispositivo_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE LIMITE_CONTA (
    id_limite BIGINT PRIMARY KEY,
    id_conta BIGINT NOT NULL,
    tipo_limite VARCHAR(30) NOT NULL,
    valor_limite DECIMAL(18,2) NOT NULL,
    data_inicio_vigencia TIMESTAMP NOT NULL,
    data_fim_vigencia TIMESTAMP NULL,
    CONSTRAINT fk_limite_conta FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta),
    CONSTRAINT ck_valor_limite CHECK (valor_limite >= 0)
);

CREATE TABLE TRANSACAO (
    id_transacao BIGINT PRIMARY KEY,
    id_conta BIGINT NOT NULL,
    id_canal INT NOT NULL,
    data_hora_transacao TIMESTAMP NOT NULL,
    valor DECIMAL(18,2) NOT NULL,
    tipo_transacao VARCHAR(30) NOT NULL,
    status_transacao VARCHAR(20) NOT NULL,
    CONSTRAINT fk_transacao_conta FOREIGN KEY (id_conta) REFERENCES CONTA(id_conta),
    CONSTRAINT fk_transacao_canal FOREIGN KEY (id_canal) REFERENCES CANAL(id_canal),
    CONSTRAINT ck_valor_transacao CHECK (valor > 0)
);

CREATE TABLE TRANSACAO_HISTORICO (
    id_transacao_historico BIGINT PRIMARY KEY,
    id_transacao BIGINT NOT NULL,
    data_evento TIMESTAMP NOT NULL,
    status_anterior VARCHAR(20) NOT NULL,
    status_novo VARCHAR(20) NOT NULL,
    origem_evento VARCHAR(30) NOT NULL,
    CONSTRAINT fk_hist_transacao FOREIGN KEY (id_transacao) REFERENCES TRANSACAO(id_transacao)
);
