Create Table Customers (
CustomerID INT PRIMARY KEY IDENTITY(1,1),
FirstName Nvarchar(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Phone VARCHAr(15) NOT NULL,
Email NVARCHAR(50)
 )

 Create Table Products(
 ProductID int PRIMARY KEY NOT NUll IDENTITY(1,1),
 ProductName VArchar(100) NOT NULL,
 Price decimal(10, 2) NOT NULL,
 Stock int
 )

create Table Orders(
  OrderID INT Primary Key Identity(1,1),
  CustomerID int,
  Foreign key (CustomerID) references Customers(CustomerID),
  OrderDate date default GETDATE()
  )

  create Table OrderDetails(
  OrderDetailsID int Primary Key IDENTITY(1,1),
  OrderID INt,
  Foreign key (OrderID) references Orders(OrderID),
  ProductID int,
  Foreign Key (ProductID) references Products(ProductID),
  Quantity INT 
  )




INSERT INTO Customers (FirstName, LastName, Phone, Email)
 VALUES
 (N'ALi', N'KARIMI', '01920000001','Ali.karimi@example.com'),
 (N'Sara', N'Mohammadi', '01920000002', 'Sara.Mohammadi@example.com'),
 (N'Reza', N'Ahmadi', '01920000003','Reza.ahmadi@example.com'),
 (N'Neda', N'Hosseini', '01920000004','Neda.Hosseini@example.com'),
 (N'Hamed', N'Rostami', '01920000005','Hamed.Rostami@example.com')
 Insert into Products(ProductName, Price, Stock)
 Values
 ('Green Tea 200g', 6.50, 200),
 ('Coffe Beans 1kg', 18.90, 120),
 ('Orange Juice 1L', 3.80, 150),
 ('Potato Chips 150g', 2.50, 300),
 ('Chocolate Bar 80g', 1.80, 400)

Insert into Orders( CustomerID, OrderDate)
Values
(1, '2025-07-20'), 
(2, '2025-07-21'),
(3, '2025-07-22'),
(4, '2025-07-23')

Insert into OrderDetails(OrderID , ProductID , Quantity)
values
(1, 1, 3),
(1, 2, 3),
(2, 3, 4),
(2, 5, 8),
(3, 4, 1),
(4, 2, 8)

use StoreDB
Select * from Customers
Select * from Products
Select * from Orders
Select * from OrderDetails

SELECT od.OrderID, p.ProductName, od.Quantity
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;

SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;


select o.OrderDate, c.FirstName, c.LastName, o.OrderID
from Orders o 
join Customers C on o.CustomerID= c.CustomerID;


select Od.OrderID, p.ProductName, od.Quantity
from Products p 
JOIN OrderDetails od on od.ProductID= p.ProductID


select 
o.OrderID,
c.FirstName, 
c.LastName, 
o.OrderDate, 
p.ProductName, 
od.Quantity
from Orders o
JOIN OrderDetails od on o.OrderID = od.OrderID
JOIN Products p ON p.ProductID= od.ProductID
JOIN Customers c on c.CustomerID= o.CustomerID