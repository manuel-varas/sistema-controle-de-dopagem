-- Inserts para ENDERECO
INSERT INTO endereco (cep, complemento) VALUES
('12345-678', 'Apto 101'),
('23456-789', 'Casa 2'),
('34567-890', 'Sala 3'),
('45678-901', 'Bloco B'),
('56789-012', 'Apto 202'),
('67890-123', 'Casa 5'),
('78901-234', 'Sala 10'),
('89012-345', 'Bloco C');

-- Inserts para ESPORTE
INSERT INTO esporte (modalidade) VALUES
('Futebol'),
('Vôlei'),
('Basquete'),
('Tênis'),
('Natação'),
('Atletismo'),
('Judô'),
('Boxe');

-- Inserts para EVENTO_ESPORTIVO
INSERT INTO evento_esportivo (tipo_evento, nome, data_inicio, data_fim) VALUES
('Campeonato', 'Copa do Mundo', '2023-11-20', '2023-12-18'),
('Torneio', 'Superliga de Vôlei', '2023-10-01', '2023-12-15'),
('Campeonato', 'NBA Finals', '2023-06-01', '2023-06-15'),
('Torneio', 'Wimbledon', '2023-07-03', '2023-07-16'),
('Campeonato', 'Olimpíadas', '2024-07-26', '2024-08-11'),
('Torneio', 'Tour de France', '2023-07-01', '2023-07-23'),
('Campeonato', 'Mundial de Natação', '2023-07-14', '2023-07-30'),
('Torneio', 'Grand Slam de Judô', '2023-08-25', '2023-08-27');

-- Inserts para TREINADOR
INSERT INTO treinador (nome, sobrenome, assinatura) VALUES
('João', 'Silva', NULL),
('Maria', 'Santos', NULL),
('Pedro', 'Oliveira', NULL),
('Ana', 'Costa', NULL),
('Carlos', 'Pereira', NULL),
('Mariana', 'Rodrigues', NULL),
('Paulo', 'Almeida', NULL),
('Fernanda', 'Lima', NULL);

-- Inserts para ATLETA
INSERT INTO atleta (nome, sobrenome, data_nascimento, nacionalidade, telefone, assinatura, email, sexo, status_aprovacao, status_competicao, codigo_evento_esportivo, codigo_esporte, codigo_treinador, codigo_endereco) VALUES
('Lionel', 'Messi', '1987-06-24', 'Argentina', '123456789', NULL, 'messi@email.com', 'M', TRUE, TRUE, 1, 1, 1, 1),
('Cristiano', 'Ronaldo', '1985-02-05', 'Portugal', '987654321', NULL, 'ronaldo@email.com', 'M', TRUE, TRUE, 1, 1, 2, 2),
('Neymar', 'Jr', '1992-02-05', 'Brasil', '456789123', NULL, 'neymar@email.com', 'M', TRUE, TRUE, 1, 1, 3, 3),
('Serena', 'Williams', '1981-09-26', 'EUA', '321654987', NULL, 'serena@email.com', 'F', TRUE, TRUE, 4, 4, 4, 4),
('Simone', 'Biles', '1997-03-14', 'EUA', '654987321', NULL, 'biles@email.com', 'F', TRUE, TRUE, 5, 5, 5, 5),
('Usain', 'Bolt', '1986-08-21', 'Jamaica', '789123456', NULL, 'bolt@email.com', 'M', TRUE, TRUE, 6, 6, 6, 6),
('Michael', 'Phelps', '1985-06-30', 'EUA', '987321654', NULL, 'phelps@email.com', 'M', TRUE, TRUE, 7, 7, 7, 7),
('Rafael', 'Nadal', '1986-06-03', 'Espanha', '654321987', NULL, 'nadal@email.com', 'M', TRUE, TRUE, 4, 4, 8, 8);

-- Inserts para EVENTO_ESPORTE
INSERT INTO evento_esporte (codigo_evento, codigo_esporte) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Inserts para CATEGORIA_ESPORTE
INSERT INTO categoria_esporte (codigo_esporte, modalidade) VALUES
(1, 'Futebol de Campo'),
(2, 'Vôlei de Quadra'),
(3, 'Basquete Profissional'),
(4, 'Tênis de Quadra'),
(5, 'Natação Olímpica'),
(6, 'Atletismo de Pista'),
(7, 'Judô Competitivo'),
(8, 'Boxe Profissional');

-- Inserts para REPRESENTANTE
INSERT INTO representante (nome, sobrenome, assinatura) VALUES
('Carlos', 'Mendes', NULL),
('Ana', 'Ferreira', NULL),
('Pedro', 'Costa', NULL),
('Mariana', 'Oliveira', NULL),
('Ricardo', 'Santos', NULL),
('Fernanda', 'Rocha', NULL),
('Paulo', 'Lima', NULL),
('Juliana', 'Almeida', NULL);

-- Inserts para ATLETA_REPRESENTANTE
INSERT INTO atleta_representante (codigo_atleta, codigo_representante) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Inserts para TIPO_DOCUMENTO
INSERT INTO tipo_documento (rg, cpf, passaporte, codigo_atleta) VALUES
('1234567', '123.456.789-00', 'AB123456', 1),
('2345678', '234.567.890-11', 'CD234567', 2),
('3456789', '345.678.901-22', 'EF345678', 3),
('4567890', '456.789.012-33', 'GH456789', 4),
('5678901', '567.890.123-44', 'IJ567890', 5),
('6789012', '678.901.234-55', 'KL678901', 6),
('7890123', '789.012.345-66', 'MN789012', 7),
('8901234', '890.123.456-77', 'OP890123', 8);

-- Inserts para COLABORADOR
INSERT INTO colaborador (nome, cargo, assinatura) VALUES
('João', 'Analista', NULL),
('Maria', 'Coordenadora', NULL),
('Pedro', 'Técnico', NULL),
('Ana', 'Supervisora', NULL),
('Carlos', 'Gerente', NULL),
('Mariana', 'Assistente', NULL),
('Paulo', 'Consultor', NULL),
('Fernanda', 'Diretora', NULL);

-- Inserts para EQUIPAMENTO
INSERT INTO equipamento (modelo, fabricante) VALUES
('Model X', 'Fabricante 1'),
('Model Y', 'Fabricante 2'),
('Model Z', 'Fabricante 3'),
('Model A', 'Fabricante 4'),
('Model B', 'Fabricante 5'),
('Model C', 'Fabricante 6'),
('Model D', 'Fabricante 7'),
('Model E', 'Fabricante 8');

-- Inserts para LABORATORIO
INSERT INTO laboratorio (nome) VALUES
('Lab A'),
('Lab B'),
('Lab C'),
('Lab D'),
('Lab E'),
('Lab F'),
('Lab G'),
('Lab H');

-- Inserts para CONFIRMACAO_PROCEDIMENTO
INSERT INTO confirmacao_procedimento (data, hora, id_colaborador, id_representante, id_atleta) VALUES
('2023-10-01', '10:00:00', 1, 1, 1),
('2023-10-02', '11:00:00', 2, 2, 2),
('2023-10-03', '12:00:00', 3, 3, 3),
('2023-10-04', '13:00:00', 4, 4, 4),
('2023-10-05', '14:00:00', 5, 5, 5),
('2023-10-06', '15:00:00', 6, 6, 6),
('2023-10-07', '16:00:00', 7, 7, 7),
('2023-10-08', '17:00:00', 8, 8, 8);

-- Inserts para AMOSTRA
INSERT INTO amostra (num_cod_amostra, num_amostra, id_confirmacao, id_equipamento, id_laboratorio, id_atleta) VALUES
(1001, 1, 1, 1, 1, 1),
(1002, 2, 2, 2, 2, 2),
(1003, 3, 3, 3, 3, 3),
(1004, 4, 4, 4, 4, 4),
(1005, 5, 5, 5, 5, 5),
(1006, 6, 6, 6, 6, 6),
(1007, 7, 7, 7, 7, 7),
(1008, 8, 8, 8, 8, 8);

-- Inserts para TIPO_AMOSTRA
INSERT INTO tipo_amostra (volume, nome_tipo, densidade, id_amostra) VALUES
(5.5, 'Tipo A', '1.2 g/cm³', 1),
(6.0, 'Tipo B', '1.3 g/cm³', 2),
(6.5, 'Tipo C', '1.4 g/cm³', 3),
(7.0, 'Tipo D', '1.5 g/cm³', 4),
(7.5, 'Tipo E', '1.6 g/cm³', 5),
(8.0, 'Tipo F', '1.7 g/cm³', 6),
(8.5, 'Tipo G', '1.8 g/cm³', 7),
(9.0, 'Tipo H', '1.9 g/cm³', 8);