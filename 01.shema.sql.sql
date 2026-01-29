DROP DATABASE retail_sales;
CREATE DATABASE retail_sales;
USE retail_sales; 
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    store VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2)
);

-- adding 2nd table with dirty (error) data under same data base

create table products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    cost_price NUMERIC(10,2),
    supplier VARCHAR(50),
    launch_date DATE,
    discontinued BOOLEAN,
    product_code VARCHAR(20)
);

-- creating 3rd table with NULL values 

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    signup_date DATE
);
