\c if_pagila

select * from inventory;

SELECT
    film_id,
    title,
    COUNT(film_id)
FROM
    inventory
INNER JOIN film USING(film_id)
GROUP BY film_id
ORDER BY film_id ASC;

SELECT
    film_id,
    title,
    category_id,
    name
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
ORDER BY film_id ASC;

SELECT
    film_id,
    title,
    category_id,
    name
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
ORDER BY film_id ASC;

SELECT
    category_id,
    name,
    COUNT (category_id)
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
GROUP BY category_id;

SELECT
    inventory_id,
    film_id,
    title,
    category_id,
    name,
    rental_id,
    amount
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
INNER JOIN rental USING(inventory_id)
INNER JOIN payment USING (rental_id);

SELECT
    category_id,
    name,
    SUM(amount)
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
INNER JOIN rental USING(inventory_id)
INNER JOIN payment USING (rental_id)
GROUP BY category_id
ORDER BY SUM(amount) DESC
LIMIT 3;

SELECT
    film_id,
    title,
    SUM(amount)
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING (category_id)
INNER JOIN rental USING(inventory_id)
INNER JOIN payment USING (rental_id)
GROUP BY film_id
ORDER BY 3 DESC /*when we do this to say that we want the column 3*/
LIMIT 10;

SELECT
    SUM(amount)
FROM
    inventory
INNER JOIN film USING(film_id)
INNER JOIN film_category USING(film_id)
INNER JOIN category USING (category_id)
INNER JOIN rental USING(inventory_id)
INNER JOIN payment USING (rental_id)
GROUP BY film_id
ORDER BY 1 DESC 
LIMIT 10;