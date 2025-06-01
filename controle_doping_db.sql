CREATE DATABASE controle_doping_db;
USE controle_doping_db;

CREATE TABLE endereco (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    cep CHAR(10) NOT NULL,
    complemento VARCHAR(50)
);

CREATE TABLE esporte (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    modalidade VARCHAR(50)
);

CREATE TABLE evento_esportivo (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    tipo_evento VARCHAR(40),
    nome VARCHAR(50),
    data_inicio VARCHAR(10),
    data_fim VARCHAR(10)
);

CREATE TABLE treinador (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25),
    sobrenome VARCHAR(50),
    assinatura BLOB
);

CREATE TABLE atleta (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento VARCHAR(10) NOT NULL,
    nacionalidade VARCHAR(25) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    assinatura BLOB,
    email VARCHAR(50),
    sexo CHAR(1),
    status_aprovacao BOOLEAN,
    status_competicao BOOLEAN,
    codigo_evento_esportivo INT,
    codigo_esporte INT,
    codigo_treinador INT,
    codigo_endereco INT,
    FOREIGN KEY (codigo_esporte) REFERENCES esporte(codigo),
    FOREIGN KEY (codigo_evento_esportivo) REFERENCES evento_esportivo(codigo),
    FOREIGN KEY (codigo_treinador) REFERENCES treinador(codigo),
    FOREIGN KEY (codigo_endereco) REFERENCES endereco(codigo)
);

CREATE TABLE evento_esporte (
    codigo_evento INT,
    codigo_esporte INT,
    PRIMARY KEY (codigo_evento, codigo_esporte),
    FOREIGN KEY (codigo_evento) REFERENCES evento_esportivo(codigo),
    FOREIGN KEY (codigo_esporte) REFERENCES esporte(codigo)
);

CREATE TABLE categoria_esporte (
    codigo_esporte INT,
    modalidade VARCHAR(50) NOT NULL,
    PRIMARY KEY (codigo_esporte),
    FOREIGN KEY (codigo_esporte) REFERENCES esporte(codigo)
);

CREATE TABLE representante (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25),
    sobrenome VARCHAR(50),
    assinatura BLOB
);

CREATE TABLE atleta_representante (
    codigo_atleta INT,
    codigo_representante INT,
    PRIMARY KEY (codigo_atleta, codigo_representante),
    FOREIGN KEY (codigo_atleta) REFERENCES atleta(codigo),
    FOREIGN KEY (codigo_representante) REFERENCES representante(codigo)
);

CREATE TABLE tipo_documento (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    rg VARCHAR(12),
    cpf VARCHAR(15),
    passaporte VARCHAR(12),
    codigo_atleta INT,
    FOREIGN KEY (codigo_atleta) REFERENCES atleta(codigo)
);

CREATE TABLE colaborador (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    cargo VARCHAR(30),
    assinatura BLOB
);

CREATE TABLE equipamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(40) NOT NULL,
    fabricante VARCHAR(20) NOT NULL
);

CREATE TABLE laboratorio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE confirmacao_procedimento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    id_colaborador INT NOT NULL,
    id_representante INT NOT NULL,
    id_atleta INT NOT NULL
);

CREATE TABLE amostra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_cod_amostra INT NOT NULL,
    num_amostra INT NOT NULL,
    hora_selagem TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_confirmacao INT,
    id_equipamento INT NOT NULL,
    id_laboratorio INT NOT NULL,
    id_atleta INT NOT NULL,
    FOREIGN KEY (id_confirmacao) REFERENCES confirmacao_procedimento(id),
    FOREIGN KEY (id_equipamento) REFERENCES equipamento(id),
    FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id)
);

CREATE TABLE tipo_amostra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    volume DECIMAL(10, 2) NOT NULL,
    nome_tipo VARCHAR(20) NOT NULL,
    densidade VARCHAR(20) NOT NULL,
    hora_coleta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_amostra INT NOT NULL,
    FOREIGN KEY (id_amostra) REFERENCES amostra(id)
);