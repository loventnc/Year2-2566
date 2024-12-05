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