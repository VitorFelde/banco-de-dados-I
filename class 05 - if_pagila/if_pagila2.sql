/*1)*/

SELECT 
    title AS titulo,
    length AS duracao_min,
    rental_rate as preco_aluguel
FROM film
ORDER BY titulo ASC
LIMIT 10;

/*2)*/

SELECT 
	title AS titulo,
	length AS duracao_min,
	round ((length /60.0), 2) AS duracao_horas
FROM film
WHERE length >= 184 /*we always need to use the original name of the parameter*/
ORDER BY length DESC,
title ASC;

/*3)*/

SELECT
	title AS titulo,
	rental_rate AS preco_dolar,
	round ((rental_rate * 5.50), 2) AS preco_reais
	rating AS classificacao /*here were doing this to real check the information were getting*/
FROM film
WHERE rating = 'G' AND length < 50
ORDER BY rental_rate DESC,
title ASC;

/*4)*/

SELECT 
    title AS titulo,
    film_id AS codigo,
    rental_rate AS preco,
    rental_duration AS dias,
    round ((rental_rate / rental_duration), 2) AS preco_por_dia
FROM film
WHERE film_id > 0 AND film_id < 11
ORDER BY preco_por_dia DESC,
title ASC;

/*5)*/

SELECT 
    title AS titulo,
    replacement_cost AS custo_reposicao,
    rental_rate AS preco_aluguel,
    CEIL (replacement_cost / rental_rate) AS alugueis_para_pagar
FROM film
WHERE film_id > 0 AND film_id < 11
ORDER BY alugueis_para_pagar DESC,
title ASC;

/*6)*/

SELECT 
    film_id AS codigo,
    title AS titulo
FROM film
WHERE film_id > 10 AND film_id < 21
ORDER BY title ASC;

/*7)*/

SELECT 
	title AS titulo,
	length AS duracao_min,
	round ((length /60.0), 2) AS horas
FROM film
WHERE length < 50
ORDER BY length DESC,
title ASC;

/*8)*/

SELECT
    first_name AS nome,
    last_name AS sobrenome,
    email AS email,
    active AS estado
FROM customer
WHERE store_id = 2 AND active = 0
ORDER BY last_name ASC;

/*9)*/

SELECT 
    payment_id AS pagamento,
    customer_id AS cliente,
    amount AS valor,
    round ((amount * 0.90), 2) AS valor_com_desconto
FROM payment
WHERE amount > 10
ORDER BY amount DESC, payment_id DESC
LIMIT 5;

/*10)*/

SELECT 
    title AS titulo,
    length AS duracao_min
FROM film 
ORDER BY length DESC, title ASC
LIMIT 3 OFFSET 2;




