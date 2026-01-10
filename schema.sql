CREATE DATABASE Ecommerce_analytics;

USE Ecommerce_analytics;

SELECT DATABASE();

CREATE TABLE customers (
	customer_id VARCHAR(50) PRIMARY KEY,
    customer_unique_id VARCHAR(50),
    customer_city VARCHAR(50),
    customer_state VARCHAR(10)
);

CREATE TABLE orders(
	order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    order_status VARCHAR(30),
    order_purchase_timestamp DATETIME,
    order_delivered_customer_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products(
	product_id VARCHAR(50) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

CREATE TABLE sellers(
	seller_id VARCHAR(50) PRIMARY KEY,
    seller_city VARCHAR(50),
    seller_state VARCHAR(10)
);

CREATE TABLE order_items(
	order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

CREATE TABLE payments (
	payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    payment_type VARCHAR(30),
    payment_installments INT,
    payment_value DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE geolocation (
	geolocation_zip_code_prefix INT,
    geolocation_lat DECIMAL(10,6),
    geolocation_lng DECIMAL(10,6),
    geolocation_city VARCHAR(50),
    geolocation_state VARCHAR(10)
);

SHOW tables;

select * from customers;
select count(*) from customers;
select count(distinct customer_id) from customers;

SET foreign_key_checks = 0;
TRUNCATE TABLE customers;
SET foreign_key_checks = 1;
DROP TABLE customers;

select customer_city, customer_state from customers limit 5;
truncate table orders;
truncate table order_items;

select count(*) from customers;
select count(*) from sellers;
select count(*) from products;
select count(*) from orders;
select count(*) from order_items;
select count(*) from payments;
select count(*) from geolocation;

select count(distinct customer_id) as unique_customers
from customers;


