
CREATE DATABASE hotel;

CREATE TABLE funcionario (
    id serial PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11),
    cargo_id INT,
    FOREIGN KEY (cargo_id) 
    REFERENCES cargo(id)
);

CREATE TABLE cargo (
    id serial PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE hospede (
    id serial PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11),
    endereco_id INT,
    FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);

CREATE TABLE endereco (
    id serial PRIMARY KEY,
    logradouro VARCHAR(100),
    localidade VARCHAR(100),
    cep CHAR(8),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    uf CHAR(2)
);

CREATE TABLE agenda (
    id serial PRIMARY KEY,
    data_checkin DATE,
    data_checkout DATE,
    hospede_id INT,
    funcionario_id INT,
    FOREIGN KEY (hospede_id) REFERENCES hospede(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);

--5 inserts 
INSERT INTO funcionario (nome, cpf, cargo_id) VALUES
('João Silva', '12345678901', 1),
('Maria Oliveira', '23456789012', 2),
('Carlos Souza', '34567890123', 3),
('Ana Paula', '45678901234', 4),
('Rafael Costa', '56789012345', 5);
INSERT INTO cargo (nome) VALUES
('Recepcionista'),
('Gerente'),
('Camareira'),
('Segurança'),
('Atendente');
INSERT INTO hospede (nome, cpf, endereco_id) VALUES
('Lucas Martins', '65432109876', '1'),
('Fernanda Lima', '76543210987', '2'),
('Diego Ramos', '87654321098', '3'),
('Patrícia Alves', '98765432109', '4'),
('Bruno Ferreira', '09876543210', '5');
INSERT INTO endereco (logradouro, localidade, cep, numero, bairro, uf) VALUES
('Rua das Flores', 'São Paulo', '0100100', '123', 'Centro', 'SP'),
('Av. Brasil', 'Rio de Janeiro', '2004000', '456', 'Copacabana', 'RJ'),
('Rua das Acácias', 'Curitiba', '8001000', '789', 'Batel', 'PR'),
('Av. Paulista', 'São Paulo', '0131000', '1000', 'Bela Vista', 'SP'),
('Rua Bahia', 'Belo Horizonte', '3014000', '321', 'Funcionários', 'MG');
INSERT INTO agenda (data_checkin, data_checkout, hospede_id, funcionario_id) VALUES
('08/01/25', '08/05/25', '1', '1'),
('08/02/25', '08/06/25', '2', '2'),
('08/03/25', '08/07/25', '3', '3'),
('08/04/25', '08/08/25', '4', '4'),
('08/05/25', '08/09/25', '5', '5');


 --5 queries simples (select)
SELECT nome FROM funcionario;
SELECT * FROM cargo;
SELECT cpf FROM hospede;
SELECT localidade FROM endereco;
SELECT data_checkin FROM agenda;
