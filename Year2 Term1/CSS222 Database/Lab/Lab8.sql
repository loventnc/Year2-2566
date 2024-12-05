use sakila;

-- 1
ALTER TABLE rental 
ADD CONSTRAINT
FOREIGN KEY (customer_id)
REFERENCES customer(customer_id)
ON DELETE RESTRICT;

-- 2
CREATE INDEX index_pay ON payment (customer_id,amount,payment_date);