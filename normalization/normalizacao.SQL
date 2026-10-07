/*regra FN1*/

CREATE DATABASE normalizacao;

\c normalizacao;

CREATE TABLE aluno (
	matricula INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE telefone_aluno (
	id_fone INT PRIMARY KEY,
	matricula INT,
	telefone VARCHAR(20),
	FOREIGN KEY (matricula)
	REFERENCES aluno(matricula)

);

SELECT * from aluno;

\dt;

\d telefone_aluno;

\d aluno;

/*regra FN2*/

CREATE TABLE disciplina (
      cod_disciplina INT PRIMARY KEY,
      nome VARCHAR (100) NOT NULL
);

CREATE TABLE matricula (
      matricula_aluno INT,
      cod_disciplina INT,
      nota DECIMAL (4, 2),
      PRIMARY KEY (matricula_aluno, cod_disciplina),
      FOREIGN KEY (matricula_aluno)
        REFERENCES aluno(matricula),
      FOREIGN KEY (cod_disciplina)
        REFERENCES disciplina(cod_disciplina)
);