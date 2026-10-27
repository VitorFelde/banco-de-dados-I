aula 01/09

psql -U postgres -h localhost -p 5432

\c clube_livro

\h - comandos de help 

\h CREATE TABLE - criar tabela fera demais

/*---------------------------------------------------------------*/
aula 08/09

CONSTRAINTS - RESTRICOES
  CHAVE PRIMARIA //chave primaria nao pode repetir um numero
  CHAVE ESTRANGEIRA //chave estrangeira se um registro estiver em outra tabela esse registro nao pode ser apagado
  NULO //nao poder ser nulo
  CHECAGEM //checando se o que o usuario digitou esta dentro do que queremos - validação da info
  UNICO //pode ter apenas um nessa categoria, nao pode repetir
  DEFAULT //valor padrao



CREATE TABLE associado (
  id SERIAL PRIMARY KEY NOT NULL,
  nome VARCHAR(80) NOT NULL,
  endereco TEXT NOT NULL, 
  cpf CHAR(14) NOT NULL UNIQUE, //tem que ser unico e nao pode ser vazio
  email VARCHAR(120) NOT NULL CHECK (email LIKE '%@%'), 
  /*mais uma restrição para integridade de informação - vendo se contem esse elemento*/
  celular CHAR(16) NOT NULL,
  nascimento DATE NOT NULL DEFAULT now() //default - quando eu quero que um dado seja preenchido automaticamento caso o usuario nao coloque
  //nesse caso colocamos o now pq dai pega a data atual e lança como date
);


select * from associado


/*---------------------------------------------------------------*/
aula 15/09

ALTER TABLE - //LISTA TUDO QUE TEM NO COMANDO ALKTER

ALTER TABLE distributors ADD COLUMN ifpr varchar(20);
ALTER TABLE distributors ADD COLUMN address varchar(30);

ALTER TABLE distributors DROP COLUMN ifpr; 

ALTER
TABLE distributors RENAME TO suppliers;

DROP TABLE suppliers;

---------------

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR (80) NOT NULL,
	fone VARCHAR (14) NOT NULL
);

DML - DATA MANIPULATION LANGUAGE

INSERT INTO aluno(nome, fone) VALUES ('AMANDA DE ALMEIDA', '9999-9999');
INSERT INTO aluno(nome, fone) VALUES ('VITOR FELDE', '8888-8888');
INSERT INTO aluno(nome, fone) VALUES ('CRISTIANO RONALDO', '6767-6767');
INSERT INTO aluno(fone, nome) VALUES ('6868-6868', 'EVERTON CEBOLINHA');

SELECT * FROM aluno;

UPDATE aluno SET nome = 'ARTHUR MELO' WHERE id = 4; //SE NAO COLOCAR O WHERE ALTERA EM TODOS OS CADASTROS

UPDATE aluno SET fone = '9995-7501' WHERE id = 4;

SELECT * FROM aluno ORDER BY id asc;

DELETE FROM aluno WHERE id = 4;

INSERT INTO aluno(fone, nome) VALUES ('6868-6868', 'EVERTON CEBOLINHA');

UPDATE aluno SET id =  4 WHERE id = 5;

DELETE FROM aluno; //exclui todos os cadastros de aluno

//aqui inserimos todos, mas dai com novos id's
INSERT INTO aluno(nome, fone) VALUES ('AMANDA DE ALMEIDA', '9999-9999');
INSERT INTO aluno(nome, fone) VALUES ('VITOR FELDE', '8888-8888');
INSERT INTO aluno(nome, fone) VALUES ('CRISTIANO RONALDO', '6767-6767');
INSERT INTO aluno(fone, nome) VALUES ('6868-6868', 'EVERTON CEBOLINHA');

INSERT INTO aluno(nome, fone) VALUES ('AMANDA TELLES', '4444-4444'), ('VITOR MOREIRA', '2222-2222'); //conseguimos adicionar com apenas um INSERT se separarmos por vírgula

DELETE FROM aluno WHERE id IN(9,11);
