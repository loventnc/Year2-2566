use sakila;
-- P.15
SELECT payment_id,customer_id,amount FROM payment WHERE amount > 10.99;
SELECT sum(amount) FROM payment WHERE amount > 10.99;
-- P.16
SELECT payment_id,payment_date,amount FROM payment WHERE amount != 0.99;
-- P.19
SELECT * FROM address WHERE address2 IS NOT NULL;
-- P.20
SELECT title,length FROM film WHERE length < 60 OR length > 100;
-- Homework
-- 1
SELECT DISTINCT rental_duration FROM film;
-- 2
SELECT * FROM film WHERE length BETWEEN 60 AND 100;
-- 3
SELECT * FROM city WHERE city LIKE 'G%' OR city LIKE '%Z%';
-- 4
SELECT actor_id,first_name,last_name FROM actor WHERE last_name IN ('Williams','Davis');
-- 5
SELECT * FROM film ORDER BY rental_rate DESC; 