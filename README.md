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
create Table Categories(
CategoryID int Primary key Identity(1,1),
CategoryName Nvarchar(50),
Description nvarchar(225)
)

Alter table Categories 
ADD description nvarchar(225)

Create Table Suppliers(
SupplierID int Primary key Identity(1,1),
SupplierName nvarchar(100),
ContactEmail nvarchar(50),
PhoneNumber varchar(15)
)

alter table suppliers
ADD  ContactName nvarchar(50),
 
 Alter Table Suppliers 
Add Address NVARCHAR(225)

EXEC sp_rename 'Suppliers.ContactEmail', 'Email', 'Column'
EXEC sp_rename 'Suppliers.PhoneNumber', 'Phone', 'Column'


َAlter Table Products
ADD CategoryID INT 
 
 Alter Table Products 
 ADD constraint FK_Products_categories
 Foreign key (CategoryID) references Categories(CategoryID)

 
 alter table products 
 add SupplierID int
 
 Alter Table Products 
 add constraint FK_Products_Suppliers
 Foreign key (SupplierID) References Suppliers(SupplierID)

INSERT INTO Categories(CategoryName , Description)
Values
('Beverages', 'Drinks and Liquids'),
('Snacks', 'Light food items'),
('Confectionary', 'Sweets and chocolates')

Insert into Suppliers(SupplierName,ContactName ,Phone, Email, Address)
values
('Tea Supplier', 'Alireza', '09120000006', 'Ali@teaSupplier.com',
' Tehran, Iran'),
('Snack Supplier', 'Sara Jafari', '09120000007', 'sara@snacksupplier.com',
'ISfahan, Iran')

Update Products
set CategoryID = 1, SupplierID= 1
where ProductID=1

update Products 
set CategoryID= 1, SupplierID = 2
where productId=3

update Products 
set CategoryID= 2, SupplierID = 2
where productId=4

Select p.ProductName, p.Price, p.Stock, c.CategoryName, s.SupplierName
From Products p
JOIN Categories c ON p.CategoryID= c.CategoryID
join Suppliers s on p.SupplierID= s.SupplierID
