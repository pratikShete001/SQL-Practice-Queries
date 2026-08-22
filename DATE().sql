drop table sales;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    sale_date DATE
);

INSERT INTO sales VALUES
(1, 'Laptop', '2024-08-01 10:15:00'),
(2, 'Mouse', '2024-08-05 14:30:00'),
(3, 'Keyboard', '2024-08-10 09:45:00');

select * from sales;
select NOW() AS current_datetime;

SELECT
	sale_id,
	product_name,
	DATE(sale_date) AS only_date
FROM sales;

SELECT 
	sale_id,
	product_name,
	EXTRACT(YEAR from sale_date) as sale_year
from sales;

