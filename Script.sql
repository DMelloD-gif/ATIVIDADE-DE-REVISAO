CREATE database escritorio;

CREATE TABLE funcionario (
	id serial,
	nome varchar(50),
	DataNascimento date,
	cpf char(11),
	endereco_id int,
	cargo_id int
);

CREATE TABLE endereco (
	id serial,
	logadrouro varchar(110),
	localidade varchar(110),
	uf varchar(2),
	cep varchar(8),
	bairro varchar(50)
);

CREATE TABLE cargo (
	id serial,
	nome varchar(50),
	decricao varchar(300)
);

ALTER TABLE funcionario
ADD PRIMARY KEY (id);
ALTER TABLE endereco
ADD PRIMARY KEY (id);
ALTER TABLE cargo
ADD PRIMARY KEY (id);

ALTER TABLE funcionario 
ADD CONSTRAINT fk_funcionario_endereco 
FOREIGN KEY (endereco_id) 
REFERENCES endereco(id);
ALTER TABLE funcionario 
ADD CONSTRAINT fk_funcionario_cargo 
FOREIGN KEY (cargo_id) 
REFERENCES cargo(id);


--script
INSERT INTO funcionario (nome, data_nascimento, cpf, endereco_id, cargo_id) VALUES
('Robson Aranda', '13/02/00', '12637281683', '1', '1'),
('Miranda Alves', '12/04/07', '31237414144', '2', '2'),
('Juliano Trevis', '03/05/01'), '01037434124', '3', '3')
('Carla Menezes', '08/21/98', '23123123123', '4', '4'),
('Lucas Ferreira', '11/10/99', '87654321987', '5', '5');

INSERT INTO endereco (logradouro, localidade, uf, cep, bairro) VALUES
('Rua das Flores, 123', 'São Paulo', 'SP', '0100100', 'Centro'),
('Av. Brasil, 456', 'Rio de Janeiro', 'RJ', '2004000', 'Copacabana'),
('Rua das Acácias, 789', 'Curitiba', 'PR', '80010400', 'Batel'),
('Rua Dom Pedro, 321', 'Salvador', 'BA', '4001000', 'Barra'),
('Av. Paulista, 1000', 'São Paulo', 'SP', '0131000', 'Bela Vista');


INSERT INTO cargo (nome, descricao) VALUES
('Analista de Sistemas', 'Responsável pelo desenvolvimento e manutenção de sistemas.'),
('Assistente Administrativo', 'Auxila em tarefas administrativas do escritório.'),
('Gerente de Projetos', 'Coordena e supervisiona projetos da empresa.'),
('Secretária', 'Atende chamadas, organiz agendas e documentos.'),
('Designer Gráfico', 'Cria artes visuais para materiais de marketing.');



