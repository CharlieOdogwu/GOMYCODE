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