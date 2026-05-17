
CREATE DATABASE EasyTracker_DB;
USE EasyTracker_DB;

CREATE TABLE products (product_id INT PRIMARY KEY AUTO_INCREMENT,
             product_name VARCHAR(255) NOT NULL,
             category VARCHAR(100) DEFAULT 'Digital',
             price_usd DECIMAL(10,2) NOT NULL );
             
CREATE TABLE customers (customer_id INT PRIMARY KEY AUTO_INCREMENT,
			 customer_name VARCHAR(255),
             email VARCHAR(255) UNIQUE,
             country VARCHAR(100));
             
CREATE TABLE sales (sale_id INT PRIMARY KEY AUTO_INCREMENT,
             product_id INT,
             customer_id INT,
             sale_date DATE,
             quantity INT DEFAULT 1,
             FOREIGN KEY (product_id)REFERENCES products(product_id),
             FOREIGN KEY (customer_id)REFERENCES customers(customer_id));
             
INSERT INTO products (product_name,price_usd)
VALUES ('Monthly Budget Tracker',9.99),
       ('Debt Payoff Tool', 12.50),('Savings Challenge Spreadsheet', 7.00);
       
 INSERT INTO customers (customer_name,email,country)
 VALUES('Aung Aung','aung@gmail.com','Myanmar'),
       ('John Smith','john@gmail.com','USA');
       
INSERT INTO sales (product_id,customer_id,sale_date,quantity)
VALUES (1,1,'2026-05-10',1),
       (2,2,'2026-05-12',2);
