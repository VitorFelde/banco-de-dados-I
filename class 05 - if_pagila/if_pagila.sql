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

SELECT 
	film_id,
	title
FROM 
	film
ORDER BY
	2 ASC
LIMIT 10 OFFSET 20; /*here were showing since 10 till 20*/

SELECT 
	customer_id,
	amount,
	amount * 0.2 base/*here were adding a math calculation*/
	amount * 0.3 profif
FROM
	payment;

SELECT 
	customer_id,
	amount,
	round (amount * 0.7, 2) base,
	round (amount * 0.3, 2) profif
FROM
	payment;

SELECT 
	*
FROM
	actor
WHERE
	actor_id <= 20 OR
	actor_id >= 190;

SELECT 
	city_id,
	city
FROM
	city
WHERE
	city like 'S%' AND
	city like '%s'; /*it needs to starts with a upper case and finishes with a lowercase s*/