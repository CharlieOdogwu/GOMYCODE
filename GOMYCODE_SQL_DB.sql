--CREATE GOMYCODE SQL DB
CREATE DATABASE GOMYCODE_SQL_DB
Go

--Access the new gomycode sql db;
USE GOMYCODE_SQL_DB
Go

CREATE TABLE Customer(
  customer_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(200) NOT NULL);

CREATE TABLE Product(
  product_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  price DECIMAL (5,2) CHECK(price >0) NOT NULL);

CREATE TABLE Orders(
  order_id INT PRIMARY KEY,
  customer_id INT FOREIGN KEY (customer_id) REFERENCES Customer (customer_id) NOT NULL,
  product_id INT FOREIGN KEY (product_id) REFERENCES Product (product_id) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL);


--CHECKPOINT FOR DML
--INSERT INTO PRODUCT TABLE
INSERT INTO Product (product_id, name, price)
VALUES
(1, 'Cookies', 10),
(2, 'Candy', 5.2);

--INSERT INTO CUSTOMER TABLE
INSERT INTO Customer (customer_id, name, address)
VALUES
(1, 'Ahmed', 'Tunisia'),
(2, 'Coulibaly', 'Senegal'),
(3, 'Hasan', 'Eygpt');

--INSERT INTO ORDER TABLE
INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 2, 3, '2023-01-22'),
(2, 2, 1, 10, '2023-04-14');

--UPDATE THE ORDER TABLE
UPDATE Orders
SET quantity = 6
WHERE order_id = 2 and customer_id = 2

--DELETE FROM CUSTOMER TABLE
DELETE FROM Customer
WHERE customer_id = 3

--DELETE FROM Orders
DELETE FROM Orders;

-- DROP THE ORDER TABLE
DROP TABLE Orders;