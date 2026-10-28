-- Run this against (localdb)\MSSQLLocalDB
IF DB_ID('InventryDB') IS NULL CREATE DATABASE InventryDB;
GO
USE InventryDB;
GO
IF OBJECT_ID('Products') IS NULL
CREATE TABLE Products (
    ProductID   INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Quantity    INT NOT NULL,
    Price       DECIMAL(10,2) NOT NULL
);
GO
INSERT INTO Products (ProductName, Quantity, Price) VALUES
('Keyboard', 20, 10000.00),
('Mouse', 30, 250.00),
('Monitor', 10, 7500.00);
GO
