use sakila;

select * from city;
select * from address;
select * from customer;
select * from actor;
select * from film_actor;
select * from film;
select * from film_category;
select * from rental;
select * from inventory;
select * from film_text;
select * from store;
select * from staff;
select * from payment;

-- 1
SELECT actor.first_name, actor.last_name,film_actor.film_id
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.first_name
order by count(actor_id) desc
LIMIT 1;

-- 2
SELECT store_id,first_name,last_name
FROM staff;

-- 3
SELECT film.title,COUNT(actor_id)
FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
GROUP BY film.title;

-- 4
SELECT concat(customer.first_name," ",customer.last_name) as customer_name,
SUM(payment.amoung)
GROUP BY concat(customer.first_name," ",customer.last_name)

-- 5
SELECT AVG()

-- 6
SELECT city.city, COUNT(city) 
FROM city
INNER JOIN address 
ON city.city_id = address.city_id
GROUP BY city.city;

-- 7

-- 9
SELECT AVG(length) AS test
FROM film;

-- 10
SELECT customer.first_name,customer.last_name
FROM customer
INNER JOIN film
ON customer.customer_id =  film.customer_id
WHERE rating('NC-17') and rental_duration > 2;

-- 11
SELECT AVG(rental_duration) 
FROM film;

-- 12
Table Customers {
  customer_ID int [pk]
  name varchar(25)
  contact_add varchar(50)
  address varchar(50)
}

Table Catagories {
  catagory_ID int [pk]
  category_name varchar(25)
  category_type varchar(15)
}

Table Products {
  product_ID int [pk]
  product_name varchar(25)
  catagory_ID int
}

Table Seller {
  seller_ID int [pk]
  name varchar(25)
  product_ID int
}

Table Shopping_Order {
  order_ID int [pk]
  date date
  customer_I int
}

Table Payment {
  payment_ID int [pk]
  dat date
  catagory_ID int
}

Table Deliveries {
  deliveries_ID int [pk]
  date date
  customer_ID int
}

Table Transaction_Reports {
  report_ID int [pk]
  customer_ID int
  order_ID int
  product_ID int
  payment_ID int
}

Ref:Catagories.catagory_ID < Products.catagory_ID
Ref:Products.product_ID < Seller.product_ID
Ref:Customers.customer_ID < Shopping_Order.customer_ID
Ref:Catagories.catagory_ID < Payment.catagory_ID
Ref:Customers.customer_ID < Deliveries.customer_ID
Ref:Customers.customer_ID < Transaction_Reports.customer_ID
Ref:Shopping_Order.order_ID < Transaction_Reports.order_ID
Ref:Products.product_ID < Transaction_Reports.product_ID
Ref:Payment.payment_ID < Transaction_Reports.payment_ID

