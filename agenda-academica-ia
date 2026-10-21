NOME: VITOR MOREIRA FELDE - ALUNO DO SEGUNDO SEMESTRE TADS - IFPR FOZ

psql -U postgres -h localhost -p 5432

postgres=# \i Downloads/atividade-e6d8efd3988d4f5f93e168521abbad4e/sql_codigo.txt //here were acessing our file and automatically creating all the necessary tables

//part 1

//changes on the tables

ALTER TABLE aluno ADD COLUMN cidade VARCHAR(100); //here were adding one more column into the table cidade
 
ALTER TABLE atividade 
ADD COLUMN carga_horaria INTEGER CHECK (carga_horaria > 0),
ADD COLUMN vagas INTEGER CHECK (vagas > 0); //these CHECKS are used to verify if the value that will be inserted will be higher than 0

ALTER TABLE inscricao_atividade 
ADD COLUMN data_inscricao DATE DEFAULT CURRENT_DATE,
ADD COLUMN frequencia NUMERIC(5,2) CHECK (frequencia >= 0 AND frequencia <= 100); //if the client dont insert a date, the program/database take as reference the current date

//visualizing our changes

\d aluno;

\d atividade;

\d inscricao_atividade;

//adding informations to our new columns

UPDATE aluno SET cidade = 'Foz do Iguaçu' WHERE id_aluno IN (1, 2, 3, 4);
UPDATE aluno SET cidade = 'Cascavel' WHERE id_aluno IN (5, 6, 7);
UPDATE aluno SET cidade = 'Curitiba' WHERE id_aluno IN (8, 9, 10);


UPDATE atividade SET carga_horaria = 40, vagas = 15 WHERE id_atividade = 1; -- Robótica
UPDATE atividade SET carga_horaria = 20, vagas = 10 WHERE id_atividade = 2; -- Xadrez
UPDATE atividade SET carga_horaria = 30, vagas = 20 WHERE id_atividade = 3; -- Clube de Leitura
UPDATE atividade SET carga_horaria = 50, vagas = 12 WHERE id_atividade = 4; -- Programação em Python
UPDATE atividade SET carga_horaria = 35, vagas = 15 WHERE id_atividade = 5; -- Oficina de Banco de Dados


UPDATE inscricao_atividade SET frequencia = 85.00 WHERE id_aluno = 1 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 60.50 WHERE id_aluno = 2 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 90.00 WHERE id_aluno = 3 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 45.00 WHERE id_aluno = 4 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 78.00 WHERE id_aluno = 5 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 95.00 WHERE id_aluno = 6 AND id_atividade = 1;
UPDATE inscricao_atividade SET frequencia = 70.00 WHERE id_aluno = 7 AND id_atividade = 1;

UPDATE inscricao_atividade SET frequencia = 100.00 WHERE id_aluno = 1 AND id_atividade = 2;
UPDATE inscricao_atividade SET frequencia = 50.00 WHERE id_aluno = 3 AND id_atividade = 2;
UPDATE inscricao_atividade SET frequencia = 80.00 WHERE id_aluno = 5 AND id_atividade = 2;
UPDATE inscricao_atividade SET frequencia = 65.00 WHERE id_aluno = 8 AND id_atividade = 2;
UPDATE inscricao_atividade SET frequencia = 92.00 WHERE id_aluno = 9 AND id_atividade = 2;

UPDATE inscricao_atividade SET frequencia = 72.00 WHERE id_aluno = 2 AND id_atividade = 3;
UPDATE inscricao_atividade SET frequencia = 88.00 WHERE id_aluno = 4 AND id_atividade = 3;
UPDATE inscricao_atividade SET frequencia = 40.00 WHERE id_aluno = 6 AND id_atividade = 3;
UPDATE inscricao_atividade SET frequencia = 96.00 WHERE id_aluno = 8 AND id_atividade = 3;
UPDATE inscricao_atividade SET frequencia = 74.00 WHERE id_aluno = 10 AND id_atividade = 3;

UPDATE inscricao_atividade SET frequencia = 83.00 WHERE id_aluno = 1 AND id_atividade = 4;
UPDATE inscricao_atividade SET frequencia = 55.00 WHERE id_aluno = 2 AND id_atividade = 4;
UPDATE inscricao_atividade SET frequencia = 91.00 WHERE id_aluno = 5 AND id_atividade = 4;
UPDATE inscricao_atividade SET frequencia = 68.00 WHERE id_aluno = 7 AND id_atividade = 4;
UPDATE inscricao_atividade SET frequencia = 89.00 WHERE id_aluno = 9 AND id_atividade = 4;
UPDATE inscricao_atividade SET frequencia = 76.00 WHERE id_aluno = 10 AND id_atividade = 4;

UPDATE inscricao_atividade SET frequencia = 94.00 WHERE id_aluno = 3 AND id_atividade = 5;
UPDATE inscricao_atividade SET frequencia = 58.00 WHERE id_aluno = 4 AND id_atividade = 5;
UPDATE inscricao_atividade SET frequencia = 82.00 WHERE id_aluno = 6 AND id_atividade = 5;
UPDATE inscricao_atividade SET frequencia = 49.00 WHERE id_aluno = 8 AND id_atividade = 5;
UPDATE inscricao_atividade SET frequencia = 90.00 WHERE id_aluno = 9 AND id_atividade = 5;
UPDATE inscricao_atividade SET frequencia = 71.00 WHERE id_aluno = 10 AND id_atividade = 5;

//part 2

SELECT * FROM aluno;

//visualizing our informations from table in alfabetic order

SELECT nome, email 
FROM aluno 
ORDER BY nome ASC;

//here were listing the alunos from the city foz do iguacu, just to view 

SELECT * 
FROM aluno 
WHERE cidade = 'Foz do Iguaçu';

//here were listing the names that begin with m, when we put LIKE and %, were saying that we want names that start with M, in this case

SELECT * 
FROM aluno 
WHERE nome LIKE 'M%';

//here were listing alunos that were born between these years, and to do this we use between 

SELECT * 
FROM aluno 
WHERE data_nascimento BETWEEN '2000-01-01' AND '2005-12-31';

SELECT * 
FROM atividade 
WHERE carga_horaria > 20 
ORDER BY carga_horaria DESC; //this desc means in decrescent way that will be listed



SELECT * 
FROM atividade 
ORDER BY vagas DESC 
LIMIT 3;

//part 3

SELECT a.nome AS atividade, p.nome AS professor //selecting both tables
FROM atividade a
JOIN professor p USING (id_professor); //this join connects the professor table to our query

SELECT al.nome AS aluno, at.nome AS atividade
FROM aluno al
JOIN inscricao_atividade USING (id_aluno)
JOIN atividade at USING (id_atividade);


//same thing but now were taking the emails from the professors
SELECT a.nome AS atividade, p.nome AS professor, p.email AS email_professor
FROM atividade a
JOIN professor p USING (id_professor);

SELECT al.nome AS aluno, at.nome AS atividade
FROM aluno al
JOIN inscricao_atividade USING (id_aluno)
JOIN atividade at USING (id_atividade)
ORDER BY al.nome ASC;

SELECT al.nome AS aluno
FROM aluno al
JOIN inscricao_atividade USING (id_aluno)
JOIN atividade at USING (id_atividade) //enter the table activity and then search for course name robotica
WHERE at.nome = 'Robótica';

SELECT at.nome AS atividade
FROM atividade at
JOIN professor p USING (id_professor)
WHERE p.nome = 'Marta Reis';

SELECT at.nome AS atividade
FROM atividade at
JOIN inscricao_atividade USING (id_atividade)
JOIN aluno al USING (id_aluno)
WHERE al.nome = 'Ana Souza';

SELECT al.nome AS aluno, at.nome AS atividade, ia.frequencia
FROM inscricao_atividade ia
JOIN aluno al USING (id_aluno)
JOIN atividade at USING (id_atividade)
WHERE ia.frequencia < 75;

SELECT al.nome AS aluno, at.nome AS atividade, p.nome AS professor
FROM aluno al
JOIN inscricao_atividade USING (id_aluno)
JOIN atividade at USING (id_atividade)
JOIN professor p USING (id_professor);

//part 4
