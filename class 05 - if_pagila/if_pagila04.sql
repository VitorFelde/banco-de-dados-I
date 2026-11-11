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


