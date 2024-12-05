use sakila;
select * from rental;
select * from film;
select * from customer;
select * from category;
select * from film_category;
select distinct rating from film;

-- 1
SELECT c.first_name, c.last_name
FROM customer as c
LEFT JOIN rental as r ON c.customer_id = r.customer_id
WHERE r.customer_id IS NULL;



select * from customer as c left join rental as r on c.customer_id = r.customer_id where rental_id is null ;

select c.name , count(fc.category_id) as all_filmincat from film_category as fc join category as c on fc.category_id = c.category_id group by c.name;

(SELECT title, length, rating FROM film WHERE rating = 'G' ORDER BY length DESC LIMIT 3)
UNION 
(SELECT title, length, rating FROM film WHERE rating = 'PG' ORDER BY length DESC LIMIT 3)
UNION 
(SELECT title, length, rating FROM film WHERE rating = 'NC-17' ORDER BY length DESC LIMIT 3)
UNION 
(SELECT title, length, rating FROM film WHERE rating = 'PG-13' ORDER BY length DESC LIMIT 3)
UNION
(SELECT title, length, rating FROM film WHERE rating = 'R' ORDER BY length DESC LIMIT 3);

select (max(length) - min(length)) as monkey_way from film;

select concat((select title from film where length(title) = (select max(length(title)) from film ) limit 1) 
, " is the answer") as title from film limit 1;

select f.title,r.rental_date as rantal,r.return_date as "return",
concat(c.first_name , " " ,c.last_name) as name,  r.staff_id as branch
from rental as r join inventory as i on r.inventory_id = i.inventory_id
join film as f on i.film_id = f.film_id 
join customer as c on c.customer_id = r.customer_id 
where r.rental_id = 1;


select * from rental;
select * from store;

(select (date_format(min((rental_date)) , '%W %D %M %Y')) as first_day, datediff(max(rental_date) , min(rental_date)) as day
,(date_format(max((rental_date)) , '%W %D %M %Y')) as last_day, staff_id as branch from rental
where staff_id = "1" order by rental_date limit 1) 
union
(select (date_format((min(rental_date)) , '%W %D %M %Y')), datediff(max(rental_date) , min(rental_date)) as day
,(date_format((max(rental_date)) , '%W %D %M %Y')),  staff_id as branch  from rental 
where staff_id = "2" order by rental_date limit 1);  

select * from film where title like "m%er";

select c.first_name , c.last_name,count(r.customer_id) as "rental count" from rental as r 
join customer as c on r.customer_id = c.customer_id 
group by r.customer_id order by count(c.customer_id) desc limit 10;

select staff_id as branch from rental group by staff_id order by count(staff_id) desc limit 1;

select f.title , count(i.film_id) as copy from inventory as i join film as f 
on i.film_id = f.film_id group by i.film_id order by count(i.film_id) desc limit 1;

select c.first_name , c.last_name , max(datediff(r.return_date , r.rental_date)) from rental as r
join customer as c on c.customer_id = r.customer_id 
group BY r.customer_id order by max(datediff(r.return_date , r.rental_date)) desc ;

select f.title as Title, r.rental_date as Rent , r.return_date as "Return" , concat(c.first_name , " " , 
c.last_name ) as Name, r.staff_id as Branch
from rental as r join inventory as i on r.inventory_id = i.inventory_id
join customer as c on c.customer_id = r.customer_id 
join film as f on f.film_id = i.film_id
where r.rental_id = 1; 