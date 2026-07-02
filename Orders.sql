CREATE Table Orders(
OrderID INT,
CustomerName VARCHAR(30),
Product VARCHAR(30),
Amount INT,
City VARCHAR(20)
);

INSERT INTO Orders
VALUES
(6,'Pratik','Bag',550,'Pune');
(1,'Pratik','Laptop',55000,'Pune'),
(2,'Rahul','Mouse',800,'Mumbai'),
(3,'Sneha','Keyboard',1500,'Pune'),
(4,'Amit','Monitor',12000,'Nashik'),
(5,'Priya','Laptop',60000,'Mumbai'),



SELECT SUM(Amount) FROM Orders;

SELECT MAX(Amount) FROM Orders;
SELECT Product 
FROM Orders
WHERE City = 'Pune';

SELECT AVG(Amount) FROM Orders;

SELECT Product, SUM(Amount) 
FROM Orders
Group By Product

SELECT CustomerName, SUM(Amount) 
FROM Orders
GROUP BY CustomerName;

