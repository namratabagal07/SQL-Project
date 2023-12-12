create database E_commerceWebsite;
use E_commerceWebsite;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    Description TEXT,
    StockQuantity INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

desc categories;
desc customers;
desc orderitems;
desc orders;
desc products;


insert into categories values(1,'Electronics'),
(2,	'Clothing'),
(3 ,'Books'),
(4, 'Beauty'),
(5,	'Home & Kitchen'),
(6,	'Sports & Outdoors'),
(7, 'Toys & Games'),
(8,	'Health & Fitness'),
(9, 'Jewelry'),
(10, 'Music');
select * from products;

insert into products values(1, 'Smartphone', 1, 599, 'Latest model with advanced features', 100);
insert into products values
(2, 'T-shirt', 2, 199, 'Cotton t-shirt with logo print', 200),
(3,	'Novel'	,3,	60,	'Bestseller fiction novel',	50),
(4,	'Laptop', 1,  7999,	'High-performance laptop',50),
(5,	'Dress', 2,	449.99,	'Elegant evening dress', 100),
(6,	'Cookware Set', 5, 249.99,	'Non-stick cookware set',30),
(7,	'Hair Dryer', 4, 200, 'Ionic hair dryer with multiple settings',80),
(8,	'Jeans', 2,	299, 'Denim jeans with a modern fit', 150),
(9,	'Fitness Tracker', 1, 159,'Tracks steps, heart rate, and calories', 70),
(10, 'Soccer Ball', 6, 199,	'Size 5 soccer ball', 75),
(11, 'Puzzle', 7, 59,'1000-piece jigsaw puzzle',	40),
(12, 'Yoga Mat', 8,	99,	'Non-slip yoga mat',100),
(13, 'Necklace', 9, 60,	'Sterling silver pendant necklace', 90),
(14, 'Vinyl Record',10,	199, 'Classic rock vinyl record',60),
(15, 'Lipstick', 4, 149, 'Long-lasting matte lipstick',	200),
(16, 'Coffee Table', 5,	899, 'Wooden coffee table with storage', 25),
(17, 'External Hard Drive',	1,	1299, '1 TB portable external hard drive', 30),
(18, 'Hiking Backpack',	6,	499, 'Lightweight hiking backpack', 40),
(19, 'Remote Control Car',	7,	299, 'RC car for kids',	80),
(20, 'Exercise Ball', 8, 179, 'Stability exercise ball', 40),
(21,' Earrings', 9,	87,	'Stud earrings', 80),
(22,'Music Book', 10, 99, 'Sheet music book', 100),
(23,'Ring',	9,	199, 'Minimalist design ring', 100),
(24, 'Resistance Bands', 8,	149, 'Set of fitness bands', 70),
(25,'Bicycle',	6,	2499, 'Mountain bike', 20);

select * from products;

select * from customers;
-- delete from customers where customerID = 1;


insert into customers values 
(1,	'Janki','Patel', 'janpatel@gmail.com', '9807564367','Mumbai');
insert into customers values 
(2,'Vrushali', 'Patil', 'Vpatil@gmail.com', '9876543210','Pune'),
(3,'Dhruv',	'Choudhury', 'dhruv@gmail.com', '9876543226', 'Delhi'),
(4,	'Tanvi','Iyer',	'tanvi@gmail.com','9876543227', 'Bangalore'),
(5,'Vihan',	'Pillai', 'vihan@gmail.com', '9876543228', 'Chennai'),
(6,	'Sia', 'Menon',	'sia@gmail.com', '9876543229', 'Kolkata'),
(7, 'Arush','Nair',	'arush@gmail.com', '9876543230',	'Hyderabad'),
(8,	'Saanvi' , 'Rajan',	'saanvi@gmail.com', '9876543231',	'Pune'),
(9,'Yug', 'Kumar', 'yug@gmail.com', '9876543240',	'Nagpur'),
(10, 'Myra','Desai','myra@gmail.com',	'9876543241','Surat'),
(11, 'Arnav','Reddy', 'arnav@gmail.com', '9876543244', 'Kanpur'),
(12, 'Saisha', 'Bhat', 'saisha@gmail.com', '9876543245',	'Delhi'),
(13, 'Aarna', 'Singh',	'aarna@gmail.com', '9876543247', 'Jaipur'),
(14, 'Shanaya',	'Singh', 'shanaya@gmail.com',	'9876543238', 'Indore'),
(15,'Khushi', 'Sharma',	'khushi@gmail.com', '9876543235',	'Chandigarh');

select * from customers;


desc orders;
insert into orders values
(1,	1,	'2023-08-01', 790),
(2,	3,	'2023-08-15', 1988),
(3,	7,	'2023-08-20', 349.95),
(4,	12,	'2023-08-25', 199.97),
(5,	5,	'2023-08-28', 179.97),
(6,	6,	'2023-09-05', 1000),
(7,	9,	'2023-09-10', 699),
(8,	15,	'2023-09-15', 899),
(9,	2,	'2023-09-20', 550),
(10, 11, '2023-09-25', 750);
select * from products;

insert into orderitems values
(1,	1,	1,	2,	1199.98),
(2,	1,	2,	3,	59.97),
(3,	2,	3,	1,	9.99),
(4,	3,	5,	2,	99.98),
(5,	4,	4,	1,	899.99),
(6,	4,	6,	1,	149.99),
(7,	5,	9,	2,	159.98),
(8,	5,	12,	3,	29.97),
(9,	6,	8,	1,	24.99),
(10, 6,	15,	3,	89.97),
(11, 7,	18,	2,	25.98),
(12, 7,	22,	1,	19.99),
(13, 8,	25,	1,	59.99),
(14, 9,	15,	2,	49.98),
(15, 10, 21, 1,	24.99),
(16, 10, 19, 3,	44.97),
(17, 5,	12,	1,	59.99),
(18, 9,	7,	2,	49.98),
(19, 2, 23, 1,	24.99),
(20, 4, 9, 3,	44.97);

select * from orderitems;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM Customers
WHERE CustomerID IN (SELECT DISTINCT CustomerID FROM Orders);


SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName, SUM(TotalAmount) AS TotalSpent
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName, Address, Phone
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT o.CustomerID
    FROM Orders o
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    JOIN Products p ON oi.ProductID = p.ProductID
    WHERE p.CategoryID = 6
);


/*SELECT c.CategoryName, p1.ProductName AS HighestPricedProduct, p1.Price AS HighestPrice
       p2.ProductName AS LowestPricedProduct, p2.Price AS LowestPrice
FROM Categories c
LEFT JOIN Products p1 
ON c.CategoryID = p1.CategoryID
LEFT JOIN Products p2 ON c.CategoryID = p2.CategoryID
WHERE p1.Price = (SELECT MAX(Price) FROM Products WHERE CategoryID = c.CategoryID);
  AND p2.Price = (SELECT MIN(Price) FROM Products WHERE CategoryID = c.CategoryID);*/

SELECT c.CategoryName, p1.ProductName AS HighestPricedProduct, p1.Price AS HighestPrice
FROM Categories c
LEFT JOIN Products p1 
ON c.CategoryID = p1.CategoryID
WHERE p1.Price = (SELECT MAX(Price) FROM Products WHERE CategoryID = c.CategoryID);

SELECT c.CategoryName, p.ProductName AS LowestPricedProduct, p.Price AS LowestPrice
FROM Categories c
LEFT JOIN Products p 
ON c.CategoryID = p.CategoryID
WHERE p.Price = (SELECT min(Price) FROM Products WHERE CategoryID = c.CategoryID);
  


SELECT p.ProductID, p.ProductName, MAX(CountedDate) AS MostBoughtDate
FROM Products p
JOIN (
    SELECT oi.ProductID, o.OrderDate AS CountedDate, COUNT(*) AS OrderCount
    FROM OrderItems oi
    JOIN Orders o ON oi.OrderID = o.OrderID
    GROUP BY oi.ProductID, o.OrderDate
) AS ProductOrderCounts ON p.ProductID = ProductOrderCounts.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY MAX(CountedDate) DESC;

SELECT p.ProductID, p.ProductName, p.Price, COALESCE(OrderCount, 0) AS PurchaseCount
FROM Products p
LEFT JOIN (
    SELECT oi.ProductID, COUNT(*) AS OrderCount
    FROM OrderItems oi
    GROUP BY oi.ProductID
) AS ProductPurchaseCounts ON p.ProductID = ProductPurchaseCounts.ProductID
ORDER BY PurchaseCount DESC;

SELECT c.CategoryName, COUNT(p.ProductID) AS NumberOfProducts
FROM Categories c
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName, OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT c.CategoryName, AVG(p.Price) AS AvgPrice
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName, TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY TotalAmount DESC;

SELECT p.ProductName, SUM(oi.Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName;

SELECT p.ProductName, SUM(oi.Quantity) AS TotalQuantityOrdered
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName;



SELECT *
FROM Categories
WHERE CategoryID IN (
    SELECT DISTINCT p.CategoryID
    FROM Products p
    WHERE p.Price > (
        SELECT AVG(Price)
        FROM Products
    )
);

SELECT p.productname , CONCAT(FirstName, ' ', LastName) AS CustomerName, email, phone, address
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT o.CustomerID
    FROM Orders o
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    JOIN Products p ON oi.ProductID = p.ProductID
    WHERE p.Price > 250.00
);

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderDate, p.ProductName, p.Price
FROM Customers c
inner JOIN Orders o 
ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
WHERE p.Price > 400
ORDER BY CustomerName, o.OrderDate;

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, Orders.OrderDate, Products.ProductName
FROM Customers c
LEFT JOIN Orders ON c.CustomerID = Orders.CustomerID
LEFT JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
LEFT JOIN Products ON OrderItems.ProductID = Products.ProductID;


SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderDate, p.ProductName
FROM Customers c
CROSS JOIN Orders o
CROSS JOIN Products p;

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderDate, p.ProductName
FROM Customers c
RIGHT JOIN Orders o 
ON c.CustomerID = o.CustomerID
RIGHT JOIN OrderItems oi ON o.OrderID = oi.OrderID
RIGHT JOIN Products p ON oi.ProductID = p.ProductID;

SELECT o.OrderID, o.CustomerID, o.OrderDate
FROM Orders o
LEFT JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

SELECT Customers.CustomerID, Customers.FirstName
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

SELECT c.CustomerID, c.FirstName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

SELECT CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM Customers 
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
);

SELECT CategoryName
FROM Categories
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Products
    GROUP BY CategoryID
    HAVING AVG(Price) > 100
);

SELECT ProductName, Price
FROM Products p
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
    WHERE CategoryID = p.CategoryID
);

SELECT concat(FirstName, ' ', LastName) as CustomerName
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);

SELECT concat(firstname,' ', lastname) as CustomerName
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);


SELECT FirstName, TotalSpent
FROM (
    SELECT o.CustomerID, SUM(TotalAmount) AS TotalSpent
    FROM Orders o
    GROUP BY o.CustomerID
) AS CustomerSpending
JOIN Customers c ON CustomerSpending.CustomerID = c.CustomerID;


SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 5;


SELECT ProductName, StockQuantity
FROM Products
WHERE StockQuantity > 10 ;

SELECT p.ProductName, c.CategoryName
FROM Products p
inner JOIN 
Categories c 
ON p.CategoryID = c.CategoryID;

SELECT AVG(Quantity) AS AvgQuantity
FROM OrderItems;


SELECT ProductName, Price, Price * 0.9 AS DiscountedPrice
FROM Products;


SELECT ProductName, ROUND(Price) AS RoundedPrice
FROM Products;

SELECT firstname, (
    SELECT MAX(TotalAmount)
    FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
) AS MaxOrderAmount
FROM Customers;

select * from orderitems;