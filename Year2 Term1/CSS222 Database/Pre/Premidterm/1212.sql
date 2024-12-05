create schema test;
use test;
CREATE TABLE Customer(
	Customer_ID				VARCHAR(10) 		NOT NULL PRIMARY KEY,
	fullname				VARCHAR(10) 		NOT NULL ,
    contact_add				NUMERIC(10,2)		NOT NULL ,
    address					VARCHAR(100)			NOT NULL
);

CREATE TABLE Categories(
	category_ID 			VARCHAR(10) 		NOT NULL PRIMARY KEY,
    category_name 			VARCHAR(35) 		NOT NULL ,
    category_type 			VARCHAR(35)			NOT NULL 
    );
    
CREATE TABLE Shopping_Order(
	order_ID				VARCHAR(10) 		NOT NULL PRIMARY KEY,
    Customer_ID				VARCHAR(35) 		NOT NULL,
	date_time 				DATE				not null,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Deliveries(
	Deliveries_ID			VARCHAR(10) 		NOT NULL ,
    Customer_ID 			varchar(10)			not null,
    date_time 				DATE 				not null,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Payment(
	Payment_ID				VARCHAR(10) 		NOT NULL PRIMARY KEY,
    category_ID  			VARCHAR(10) 		NOT NULL ,
    date_time				date 				NOT NULL ,
    FOREIGN KEY (category_ID) REFERENCES Categories(category_ID)
    );
    
CREATE TABLE Seller(
	seller_ID				VARCHAR(10) 		NOT NULL ,
    product_ID				VARCHAR(10) 		NOT NULL ,
	fullname 				VARCHAR(25) 		NOT NULL,
    FOREIGN KEY (product_ID) REFERENCES Product(product_ID)
    );

CREATE TABLE Products(
	Product_ID			int 		NOT NULL ,
	category_ID			int 		NOT NULL ,
    product_name 		int 		not null,
    FOREIGN KEY (category_ID) REFERENCES Categories(category_ID)
    );

CREATE TABLE Transaction_Reports(
	report_ID			VARCHAR(10) 		NOT NULL primary key ,
    customer_ID			VARCHAR(10) 		NOT NULL ,
    Order_ID 			VARCHAR(10) 		not null,
    Product_ID 			varchar(10) 		not null,
	Payment_ID 			Varchar(10) 		not null,
    FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID) ,
    FOREIGN KEY (Order_ID) REFERENCES Shopping_order(Order_ID) ,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) ,
    FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID)
    );