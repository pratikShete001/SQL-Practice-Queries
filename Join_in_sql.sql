CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders_of_customer (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO Customers (customer_id, customer_name)
VALUES
(1, 'Pratik'),
(2, 'Rahul'),
(3, 'Sneha'),
(4, 'Amit');

INSERT INTO Orders_of_customer (order_id, customer_id, amount)
VALUES
(101, 1, 500),
(102, 1, 700),
(103, 2, 300),
(104, 5, 900);

select * from Customers;
select * from Orders_of_customer;

select
	c.customer_id,
	c.customer_name,
	o.order_id,
	o.amount
from Customers c
 join Orders_of_customer o
on c.customer_id = o.customer_id;

select
	c.customer_id,
	c.customer_name,
	o.order_id,
	o.amount
from Customers c
left join Orders_of_customer o
on c.customer_id = o.customer_id;

select
	c.customer_id,
	c.customer_name,
	o.order_id,
	o.amount
from Customers c
right join Orders_of_customer o
on c.customer_id = o.customer_id;

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM Customers c
LEFT JOIN Orders_of_customer o
ON c.customer_id = o.customer_id

UNION

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM Customers c
RIGHT JOIN Orders_of_customer o
ON c.customer_id = o.customer_id;
