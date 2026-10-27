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
FROM actor; 
/*here we just said how we want our headline to print each column, and we can add AS between first_name and nome, for example*/

SELECT * FROM films;

SELECT 
	film_id,
	title
FROM film;

SELECT 
	film_id,
	title
FROM 
	film
ORDER BY
	title ASC; /*ordering by alphabetic*/

SELECT 
	film_id,
	title
FROM 
	film
ORDER BY
	2 ASC; /*here were justing ordering the second column, what gives us the same result, but its a good programation practice*/
