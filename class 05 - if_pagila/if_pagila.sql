CREATE DATABASE if_pagila

\c if_pagila

\i pagila-805d1f8d80434893849ebb155e1774bd.sql

\dt

\d film

\d actor


SELECT actor_id, first_name, last_name FROM actor;

SELECT
	actor_id id,
	first_name nome,
	last_name sobrenome
FROM actor; //here we just said how we want our headline to print each column, and we can add AS between first_name and nome, for example