\c if_pagila

\d actor

\d film_actor

SELECT
    *
FROM
    actor;

SELECT
    *
FROM
    actor
INNER JOIN film_actor USING (actor_id);

SELECT
    *
FROM
    actor
INNER JOIN film_actor USING (actor_id)
INNER JOIN film USING (film_id);

SELECT
    actor_id,
    first_name,
    last_name,
    film_id,
    title
FROM
    actor
INNER JOIN film_actor USING (actor_id)
INNER JOIN film USING (film_id);

SELECT
    actor_id,
    first_name,
    last_name,
    film_id,
    title
FROM
    actor
INNER JOIN film_actor USING (actor_id)
INNER JOIN film USING (film_id)
ORDER BY film_id;

SELECT
    actor_id,
    first_name,
    last_name,
    film_id,
    title
FROM
    actor
INNER JOIN film_actor USING (actor_id)
INNER JOIN film USING (film_id)
ORDER BY film_id ASC, first_name ASC;

SELECT
    actor_id,
    first_name || ' ' || last_name fullname,
    film_id,
    title
FROM
    actor
INNER JOIN film_actor USING (actor_id)
INNER JOIN film USING (film_id)
ORDER BY film_id ASC, first_name ASC;

/*using eliminates the ambiguouty*/

SELECT
    actor.actor_id,
    first_name || ' ' || last_name fullname,
    film.film_id,
    title
FROM
    actor
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id
ORDER BY film_id ASC, first_name ASC;

SELECT
    category_id,
    name,
    film_id,
    title
FROM
    category
INNER JOIN film_category USING (category_id)
INNER JOIN film USING (film_id)
ORDER BY film_id ASC, name ASC;
