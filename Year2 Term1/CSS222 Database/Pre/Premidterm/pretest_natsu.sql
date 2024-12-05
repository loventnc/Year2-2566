use sakila;

-- No.1 แสดงชื่อลูกค้าที่ไม่เคยเช่าหนังเลย
		select distinct customer_id from rental;
		select * from rental where rental_date is null;
select first_name, last_name from customer as c left join rental as r on c.customer_id = r.customer_id where r.customer_id is null;

-- No.2 แสดงชื่อหมวดหมู่หนังทั้งหมด พร้อมกับจำนวนหนังในแต่ละหมวดนั้น เรียงจากชื่อหมวด A ไป Z
select name, count(fc.film_id) as "number of movies" from category as c inner join film_category as fc on c.category_id = fc.category_id group by fc.category_id order by name;

-- no.3
select f.title,f.length,f.rating from film as f where f.length is not null AND (
    SELECT
        COUNT(*)
    FROM
        film AS subfilm
    WHERE
        subfilm.rating = f.rating
        AND subfilm.length >= f.length
) <= 3 order by f.length DESC limit 3;

-- No.4  แสดงผลต่างของความยาวหนังที่มากที่สุดและความยาวหนังที่น้อยที่สุดในร้าน
select (max(length)-min(length)) as "diff of length" from film;

-- No.5 แสดงข้อความ “xxx is the answer!” โดยที่ xxx คือชื่อหนังที่มีความยาวสูงที่สุด
SELECT CONCAT(title, ' is the answer!') FROM film WHERE length(title) = (SELECT MAX(length(title)) FROM film);

-- No.6 แสดงข้อมูลวันแรกที่มีการเช่าหนัง วันสุดท้ายที่มีการเช่าหนัง และระยะห่างระหว่างวันแรกและวันสุดท้ายของแต่ละสาขา โดยแสดงข้อมูลในรูปแบบดังตัวอย่าง Monday 13th January 2005

		select * from rental as r left join staff as s on r.staff_id = s.staff_id group by store_id;

		select * from rental as r left join staff as s on r.staff_id = s.staff_id where r.staff_id = s.staff_id;

		select staff_id, min(rental_date),max(return_date) from rental group by staff_id;

select store_id ,date_format(min(rental_date),'%W %D %b %Y'), date_format(max(return_date),'%W %D %b %Y'), datediff(max(return_date),min(rental_date)) as "diff of date" from rental as r left join staff as s on r.staff_id = s.staff_id group by store_id;

-- No.7  แสดงรายละเอียดทุกอย่างของหนังที่ลงท้ายด้วย er และขึ้นต้นด้วย m
select * from film where title like "M%" and title like "%ER";

-- No.8 แสดง 10 รายชื่อแรกที่เช่าหนังมากที่สุด
select first_name, count(r.rental_id) as count from customer as c left outer join rental as r on r.customer_id = c.customer_id group by c.customer_id order by count DESC limit 10;


-- No.9 แสดงสาขาที่มีความนิยมสูงที่สุด
select store_id ,count(rental_id) from rental as r left join staff as s on r.staff_id = s.staff_id group by store_id order by count(rental_id) desc limit 1;


-- No.10 แสดงชื่อของหนังที่มีจำนวน copy สำหรับเช่ามากที่สุดรวมทั้ง 2 สาขา
select title, count(inventory_id) from film as f right join inventory as i on f.film_id = i.film_id group by i.film_id order by count(inventory_id) desc ;


-- No.11 แสดงชื่อลูกค้าที่ยืมหนัง 1 เรื่องใช้เวลานานที่สุด และจำนวนวันที่ยืมไป
select first_name, last_name, datediff(max(return_date),min(rental_date)) as "rented days" from customer as c right join rental as r on c.customer_id = r.customer_id group by r.customer_id order by datediff(max(return_date),min(rental_date)) desc limit 1;


-- NO.13  แสดงข้อมูลการเช่าทั้งหมดของ rental_id 1 ได้แก่ชื่อหนัง วันเวลาที่ยืม วันเวลาที่คืน ชื่อคนที่ยืม ยืมจากสาขาไหน เป็นต้น
select rental_id,
(select title from film 
 right join
	(
	select film_id from rental
	left join inventory
	using(inventory_id)
	where rental_id=1
	) as fID using(film_id)
) as name,
rental_date,
return_date,
(select first_name from rental
left join customer
using(customer_id)
where rental_id=1
) as first_name,
(select last_name from rental
left join customer
using(customer_id)
where rental_id=1
) as last_name,
(select store_id from rental
left join staff
using (staff_id)
where rental_id=1) as store_id
from rental
where rental_id=1;

-- No.14  จาก ER diagram ต่อไปนี้จงเขียนคำสั่ง SQL สร้าง table ทั้งหมด
create schema pretest;
use pretest;

create table Customers (
    customer_ID int primary key,
    name varchar(25),
    contact_add varchar(50),
    address varchar(50)
);

create table Catagories (
    catagory_ID int primary key,
    category_name varchar(25),
    category_type varchar(15)
);

create table Products (
    product_ID int primary key,
    product_name varchar(25),
    catagory_ID int,
    foreign key (catagory_ID) references Catagories(catagory_ID)
);

create table Seller (
    seller_ID int primary key,
    name varchar(25),
    product_ID int,
    foreign key (product_ID) references Products(product_ID)
);

create table Shopping_Order (
    order_ID int primary key,
    date date,
    customer_ID int,
    foreign key (customer_ID) references Customers(customer_ID)
);

create table Payment (
    payment_ID int primary key,
    date date,
    catagory_ID int,
    foreign key (catagory_ID) references Catagories(catagory_ID)
);

create table Deliveries (
    deliveries_ID int primary key,
    date date,
    customer_ID int,
    foreign key (customer_ID) references Customers(customer_ID)
);

create table Transaction_Reports (
    report_ID int primary key,
    customer_ID int,
    order_ID int,
    product_ID int,
    payment_ID int,
    foreign key (customer_ID) references Customers(customer_ID),
    foreign key (order_ID) references Shopping_Order(order_ID),
    foreign key (product_ID) references Products(product_ID),
    foreign key (payment_ID) references Payment(payment_ID)
);





