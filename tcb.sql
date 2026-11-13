CREATE DATABASE veterinaria;
USE veterinaria;

CREATE TABLE CLIENTE (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(13) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(200)
);

CREATE TABLE PET (
    id_pet INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    data_nascimento DATE,
    idade_estimada INT NOT NULL,
    unidade_idade VARCHAR(10) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    peso_estimado DOUBLE not null,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE VETERINARIO (
    id_veterinario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    crmv VARCHAR(20) NOT NULL,
    telefone VARCHAR(13) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE SERVICO (
    id_servico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    valor double NOT NULL
);

CREATE TABLE CONSULTA (
    id_consulta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    horario TIME NOT NULL,
    motivo VARCHAR(200),
    observacoes TEXT,
    diagnostico TEXT,
    prescricao TEXT,
    status VARCHAR(20) NOT NULL,
    id_pet INT NOT NULL,
    id_veterinario INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES PET(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES VETERINARIO(id_veterinario)
);

CREATE TABLE PRODUTO (
    id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    valor DOUBLE NOT NULL,
    quantidade_estoque INT NOT NULL DEFAULT 0
);

CREATE TABLE MOVIMENTACAO_ESTOQUE (
    id_movimentacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(10) NOT NULL,
    quantidade INT NOT NULL,
    data DATE NOT NULL,
    descricao VARCHAR(200),
    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES PRODUTO(id_produto)
);

CREATE TABLE RESPONSAVEL_SERVICO (
    id_responsavelservico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(13) NOT NULL,
    funcao VARCHAR(50) NOT NULL
);
