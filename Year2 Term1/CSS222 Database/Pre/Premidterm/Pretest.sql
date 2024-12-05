use sakila;
select * from customer;
select * from rental;
select * from film_category;
select * from category;
select * from film;

-- 1
select customer.customer_id, customer.first_name, customer.last_name
from customer
left join rental
on customer.customer_id = rental.customer_id
where rental.rental_id is null;

-- 2
select category.name, count(name) as num_film from category
inner join film_category
on category.category_id = film_category.category_id
group by category.name;

-- 3

