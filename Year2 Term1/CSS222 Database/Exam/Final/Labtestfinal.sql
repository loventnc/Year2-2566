use sakila;
select * from film;
select * from customer;
select * from film_actor;
select * from actor;

-- 1
use sakila;
SELECT film.title, AVG(CHAR_LENGTH(film.description)) AS average_length
FROM film
GROUP BY film.title
ORDER BY average_length DESC;



-- 2
-- Subquery สามารถใช้ในคิวรีที่ซ้อนกันได้ และช่วยกรองข้อมูลตามเงื่อนไขต่างๆ ได้
use sakila;
select * from film;
SELECT * FROM film
WHERE lenght = (SELECT MAX(lenght) FROM film);


-- 3
alter table employees add store_manager varchar(50) not null;
GRANT update ON film TO store_manager;
REVOKE update ON film from store_manager;


-- 4
use university;
select * from student;
SELECT tot_cred,
  CASE
    WHEN name IN ('') THEN ''
    WHEN name IN ('') THEN ''
    ELSE 'F'
  END;
FROM student;


-- 5
-- 5.1
DELIMITER $$
create procedure lastcustomer(
	IN namefilm VARCHAR(25),
    OUT lastcustomer VARCHAR(25)
)
BEGIN 
SELECT first_name
INTO lastcustomer
from customer
where RENTAL_DATE = LAST_DAY(RENTAL_DATE);
END $$
DELIMITER ; 

call lastcustomer('customer',@lastcustomer)
select @lastcustomer;

-- 5.2
CREATE PROCEDURE getfilmactor(IN actor_name VARCHAR(50))
BEGIN
    SELECT film.title
    FROM film
    JOIN film_actor ON film.film_id = film_actor.film_id
    JOIN actor ON film_actor.actor_id = actor.actor_id
    WHERE actor.first_name = SUBSTRING_INDEX(actor_name, ' ', 1)
        AND actor.last_name = SUBSTRING_INDEX(actor_name, ' ', -1);
END


-- 6
CREATE VIEW filmchild AS
SELECT title,description
FROM film
WHERE rating = 'G' with check option;
-- จากการหาข้อมูลพบว่าหนังที่ rating G จะเเป็นเรทภาพยนตร์ที่สามารถรับชมได้ทุกเพศทุกวัย  หนังตลกที่ไม่มีคำหยาบ ไม่มีเครื่องดื่มมึนเมา หรือสารเสพติดในเรื่อง เยาวชนก็สามารถชมได้ สรุปคือจะเด็กหรือผู้ใหญ่ ชมได้หมดเลยจ้า หลัก ๆ จะเป็นการ์ตูนซะมากกว่า


-- 7
alter table jobs update min_salary DECIMAL (8, 2) not null;


-- 8
CREATE TABLE employeescopy AS
SELECT * FROM employees;


-- 9
use exam;
create index employeeIDX on employees(employee_id);
create index jobIDX on jobs(job_id);
create index departmentIDX on departments(department_id);


-- 10
use exam;
select * from employees;
select * from jobs;
select first_name,salary
from employees join jobs on employees.
where max(salary) in jobs.job_id = employees.job_id
group by job_id ;