# StoreDB SQL Project

## Overview
This is a sample SQL project for a store database. It demonstrates creating tables, inserting sample data, and running queries to explore relationships between customers, products, orders, and order details.

## Project Structure
- `document.sql` : Database creation, table definitions, and data insertion scripts.
-Project

## Ove: Sample queries demonstrating data retrieval and joins.

## Database Tables
1.# Overview
This Stores customer information (FirstName, LastName, Phone, Email).  
2.roject

## Ove Stores product information (ProductName, Price, Stock).  
3.eDB SQL Proj Stores orders made by customers with the order date.  
4.toreDB SQL Project Stores details of each order (ProductID, Quantity, linked to Orders).

## Sample Queries
-his is a sample SQL```sql
SELECT * FROM Customers;

 • All Products

SELECT * FROM Products;

 • Order Details with Product Names

SELECT od.OrderID, p.ProductName, od.Quantity
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;

 • Orders with Customer Information

SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

 • Complete Order Details

SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate, p.ProductName, od.Quantity
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON p.ProductID = od.ProductID
JOIN Customers c ON c.CustomerID = o.CustomerID;

How to Run
 1. Open SQL Server Management Studio (SSMS).
 2. Execute document.sql to create the StoreDB database and insert sample data.
 3. Execute queries.sql to run sample queries and explore the database.

License

This project is for learning purposes and can be freely used or modified.
