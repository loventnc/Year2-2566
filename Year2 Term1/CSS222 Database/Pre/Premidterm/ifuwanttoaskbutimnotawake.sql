use sakila;

-- 1

SELECT customer.customer_id, customer.first_name, customer.last_name
FROM customer
LEFT JOIN rental
ON customer.customer_id = rental.customer_id
WHERE rental.rental_id IS NULL;



-- 2

SELECT category.name, count(name)  FROM category 
LEFT JOIN film_category ON category.category_id = film_category.category_id
LEFT JOIN film ON film.film_id = film_category.film_id
GROUP BY category.name 
ORDER BY category.name;



-- 3 

SELECT title, length, rating FROM (
SELECT *,
ROW_NUMBER() OVER(PARTITION BY rating ORDER BY length DESC) AS top_rating FROM film) AS top_title
WHERE top_rating <= 3;



-- 4

SELECT (max(length) - min(length)) AS min_max_length_diff FROM film;



-- 5     

-- 5.1
SELECT CONCAT(
	(SELECT title FROM film WHERE LENGTH(title) = (SELECT MAX(LENGTH(title)) FROM film)), 
    ' is the answer!'
    ) AS answer;

-- 5.2
SELECT CONCAT(title, ' is the answer!') AS answer 
FROM film 
ORDER BY LENGTH(title) DESC 
LIMIT 1;



-- 6 ** NOT FINISHED

SELECT * FROM film;
SELECT * FROM store;

SELECT * FROM inventory;

SELECT * FROM rental;

WITH first_date AS (SELECT max(rental_date) FROM rental),
	last_date AS (SELECT max(rental_date) FROM rental)

SELECT date.f, date.l, DATEDIFF(date.f, date.l) FROM (SELECT * FROM first_date AS f 
							UNION ALL
							SELECT * FROM last_date AS l) AS date;

WITH rental_table 
AS (SELECT rental.inventory_id, rental.rental_id, inventory.film_id, inventory.store_id 
	FROM rental, inventory 
	FULL JOIN inventory
    USING (inventory_id, last_update))

SELECT * FROM rental_table;

SELECT min(rental_date) AS min_date, 
	max(rental_date) AS max_date, 
    datediff(max(rental_date), min(rental_date))
FROM rental_table;

WITH rental_table 
AS (SELECT inventory_id, rental_id, film_id, store_id 
	FROM rental 
	LEFT JOIN inventory
    USING (inventory_id, last_update))

SELECT ROW_NUMBER() Over(PARTITION BY store_id ORDER BY store_id ASC)
FROM rental_table;



-- 7

SELECT * FROM film WHERE title LIKE '%er' OR title LIKE 'm%'



-- 8

WITH count_id AS 
(SELECT count(*), 
	customer_id 
FROM rental 
GROUP BY customer_id
ORDER BY count(*) DESC
LIMIT 10)

SELECT customer.first_name, customer.last_name 
FROM customer 
JOIN count_id
ON customer.customer_id = count_id.customer_id;



-- 9

WITH rent_store AS
(SELECT inventory.store_id, rental.rental_id
FROM inventory 
INNER JOIN rental
ON inventory.inventory_id = rental.inventory_id
)

SELECT concat(
(SELECT store_id FROM rent_store GROUP BY store_id ORDER BY count(*) DESC LIMIT 1),
' is more popular! with ',
(SELECT count(*) FROM rent_store GROUP BY store_id ORDER BY count(*) DESC LIMIT 1),
' rent.',
(SELECT store_id FROM rent_store GROUP BY store_id ORDER BY count(*) ASC LIMIT 1),
' with ',
(SELECT count(*) FROM rent_store GROUP BY store_id ORDER BY count(*) ASC LIMIT 1),
' rent.'
) 
AS answer



-- 10

WITH count_copy AS
(SELECT film_id, count(*) AS copy
FROM inventory 
GROUP BY film_id 
ORDER BY count(*) DESC)

SELECT *
FROM count_copy AS cc
INNER JOIN film_text AS ft
ON cc.film_id = ft.film_id
WHERE cc.copy = (SELECT max(copy) FROM count_copy);



-- 11

WITH max_rental_day 
AS (SELECT r.customer_id, 
	r.rental_id, 
    datediff(r.return_date, r.rental_date) AS day,
    ROW_NUMBER() Over(partition by r.customer_id order by datediff(r.return_date, r.rental_date) DESC) AS rn
	FROM rental AS r)

SELECT c.first_name, c.last_name, md.day
FROM max_rental_day AS md
INNER JOIN customer AS c
ON md.customer_id = c.customer_id
WHERE md.rn = 1 AND md.day = (SELECT max(day) FROM max_rental_day);


-- 12 ** NOT FINISHED



-- 13 ** NOT FINISHED



-- 14 ** NOT FINISHED



