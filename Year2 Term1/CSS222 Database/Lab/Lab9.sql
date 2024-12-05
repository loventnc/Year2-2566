use sakila;

-- 1
CREATE VIEW customer_obscured AS
SELECT
    customer_id,
    first_name,
    last_name,
    '*****' AS email
FROM
    customer;

-- 2
CREATE VIEW monthly_category_sales AS
SELECT
    DATE_FORMAT(payment.payment_date, '%Y-%m') AS month,
    category.name AS category_name,
    SUM(payment.amount) AS total_sales
FROM
    payment
    JOIN rental ON payment.rental_id = rental.rental_id
    JOIN inventory ON rental.inventory_id = inventory.inventory_id
    JOIN film ON inventory.film_id = film.film_id
    JOIN film_category ON film.film_id = film_category.film_id
    JOIN category ON film_category.category_id = category.category_id
GROUP BY
    month, category_name;
    
-- 3
CREATE VIEW monthly_film_report AS
SELECT
    DATE_FORMAT(payment.payment_date, '%Y-%m') AS month,
    film.film_id,
    film.title AS film_title,
    category.name AS category_name,
    COUNT(actor.actor_id) AS num_actors,
    SUM(inventory.inventory_id) AS total_copies,
    COUNT(rental.rental_id) AS num_rentals
FROM
    payment
    JOIN rental ON payment.rental_id = rental.rental_id
    JOIN inventory ON rental.inventory_id = inventory.inventory_id
    JOIN film ON inventory.film_id = film.film_id
    JOIN film_category ON film.film_id = film_category.film_id
    JOIN category ON film_category.category_id = category.category_id
    LEFT JOIN film_actor ON film.film_id = film_actor.film_id
    LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY
    month, film.film_id, film_title, category_name;



SELECT * FROM customer_obscured;
SELECT * FROM monthly_category_sales;
SELECT * FROM monthly_film_report;