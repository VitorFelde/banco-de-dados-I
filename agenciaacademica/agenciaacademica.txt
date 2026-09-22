psql -U postgres -h localhost -p 5432

CREATE DATABASE agenda_academica;

\c agenda_academica;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR (80) NOT NULL,
	fone VARCHAR (14) NOT NULL,
	email VARCHAR (120) NOT NULL CHECK (email LIKE '%@%'),
	nascimento DATE NOT NULL DEFAULT now()
	
	);

CREATE TABLE professor (
	id SERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR (80) NOT NULL,
	email VARCHAR (120) NOT NULL CHECK (email LIKE '%@%'),
	cpf CHAR(14) NOT NULL UNIQUE
	);
	
CREATE TABLE atividade (
	id SERIAL PRIMARY KEY NOT NULL,
	nome_ativ VARCHAR (50) NOT NULL,
	professor_id INT NOT NULL,
    	FOREIGN KEY (professor_id) REFERENCES professor(id)
	);
	
CREATE TABLE inscricao_atividade (
	id SERIAL PRIMARY KEY NOT NULL,
	aluno_id INT NOT NULL,
    	atividade_id INT NOT NULL,
    	FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    	FOREIGN KEY (atividade_id) REFERENCES atividade(id)
	);
	
INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('João da Silva', '45 9999-9999', 'joaodasilva@gmail.com', '01/01/2000');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Amanda Telles', '45 8888-8888', 'amandatelles@gmail.com', '02/02/2001');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Maria Ferreira', '45 7777-7777', 'mariaferreira@gmail.com', '03/03/2002');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Fabio Moraes', '45 6666-6666', 'fabiomoraes@gmail.com', '04/04/2003');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Gabriela Gomes', '45 5555-5555', 'gabrielagomes@gmail.com', '05/05/2004');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Felipe Freitas', '45 4444-4444', 'felipefreitas@gmail.com', '06/06/2005');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Juliana Prates', '45 3333-3333', 'julianaprates@gmail.com', '07/07/2006');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Julio Royer', '45 2222-2222', 'julioroyer@gmail.com', '08/08/2007');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Ana dos Santos', '45 1111-1111', 'anadossantos@gmail.com', '09/09/2008');

INSERT INTO aluno(nome, fone, email, nascimento) VALUES ('Cristiano Ronaldo', '45 0000-0000', 'joaodasilva@gmail.com', '10/10/2009');

SELECT * from aluno;

INSERT INTO professor (nome, email, cpf) VALUES ('Daniel Di Domenico', 'daniel.domenico@ifpr.edu.br', '000.000.000-00');
INSERT INTO professor (nome, email, cpf) VALUES ('Humberto Beneduzzi ', 'humbertobeneduzzi@ifpr.edu.br', '111.111.111-11');
INSERT INTO professor (nome, email, cpf) VALUES ('Marcos Rosa', 'marcos.rosa@ifpr.edu.br', '222.222.222-22');

SELECT * from professor;

INSERT INTO atividade (nome_ativ, professor_id) VALUES ('Modo Kernel', 3);
INSERT INTO atividade (nome_ativ, professor_id) VALUES ('Formulario HTML', 1);
INSERT INTO atividade (nome_ativ, professor_id) VALUES ('Encapsulamento', 2);
INSERT INTO atividade (nome_ativ, professor_id) VALUES ('Semáforos', 3);
INSERT INTO atividade (nome_ativ, professor_id) VALUES ('ClientServer', 1);

SELECT * from atividade;

INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (1, 1);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (2, 1);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (3, 1);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (4, 1);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (5, 1);

INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (6, 2);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (7, 2);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (8, 2);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (9, 2);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (10, 2);

INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (2, 3);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (4, 3);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (6, 3);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (8, 3);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (10, 3);

INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (1, 4);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (3, 4);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (5, 4);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (7, 4);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (9, 4);

INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (1, 5);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (4, 5);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (7, 5);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (8, 5);
INSERT INTO inscricao_atividade (aluno_id, atividade_id) VALUES (9, 5);

SELECT * from inscricao_atividade;

UPDATE atividade SET nome_ativ = 'Array' WHERE id = 2;

SELECT * from atividade;

UPDATE aluno SET email = 'cristianogoat@gmail,com' WHERE id = 10;

SELECT * from aluno;

INSERT INTO professor(nome, email, cpf) VALUES ('Felippe Scheidt', 'felippe.scheidt@ifpr.edu.br', '444.444.444-44');

SELECT * from professor;

DELETE FROM professor WHERE id = 4;

SELECT * from professor;
