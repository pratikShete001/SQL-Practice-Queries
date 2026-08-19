CREATE TABLE Department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(50),
    dept_id INT,
    hire_date DATE,
    manager_id INT,
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance');

INSERT INTO Employee VALUES
(101,'Pratik',50000,21,'Pune',1,'2024-01-10',NULL),
(102,'Amit',60000,25,'Mumbai',1,'2023-02-15',101),
(103,'Sneha',45000,24,'Pune',2,'2024-03-12',101),
(104,'Rahul',70000,28,'Delhi',3,'2022-04-20',102),
(105,'Neha',55000,23,NULL,1,'2024-06-01',102);

UPDATE Employee
SET salary = 65000
WHERE emp_id = 102;

ALTER TABLE Employee
ADD email VARCHAR(100);

SELECT *
FROM Employee
WHERE salary > 50000;

SELECT
COUNT(*) AS TotalEmployees,
SUM(salary) AS TotalSalary,
AVG(salary) AS AvgSalary,
MAX(salary) AS HighestSalary,
MIN(salary) AS LowestSalary
FROM Employee;

SELECT *
FROM Employee
WHERE salary > 50000
AND city='Pune';

SELECT *
FROM Employee
WHERE city='Pune'
OR city='Mumbai';

SELECT *
FROM Employee
WHERE NOT city='Delhi';

select *
FROM Employee
WHERE city IN ('Pune','Mumbai');

select *
FROM Employee
WHERE emp_name LIKE 'S%';

select * from Employee;

select *
FROM Employee
WHERe emp_name LIKE '%a';

select *
from Employee
WHERE city IS NULL;

select emp_name,
LENGTH(emp_name) AS NameLength
FROM Employee;

select *
FROM Employee
ORDER BY salary DESC;

select e.emp_name,
	   d.dept_name
FROM Employee e
INNER JOIN Department d
ON e.dept_id = d.dept_id;

SELECT dept_id,
	   AVG(salary)
FROM Employee
GROUP BY dept_id;

SELECT dept_id,
	   AVG(salary)
FROM Employee
GROUP BY dept_id
HAVING AVG(salary) > 50000;

SELECT city FROM Employee
UNION
SELECT dept_name FROM Department;

SELECT city FROM Employee
UNION ALL
SELECT dept_name FROM Department;

CREATE VIEW IT_Employee AS
SELECT *
FROM Employee
WHERE dept_id = 1;

SELECT * FROM IT_Employee;

CREATE INDEX idx_emp_name
ON Employee(emp_name);

select * from Employee;

select emp_name,
	salary,
	RANK() OVER(ORDER BY salary DESC) AS rnk
FROM Employee;

SELECT emp_name,
	salary,
	DENSE_RANK() OVER(ORDER BY salary DESC) AS drnk
FROM Employee;

select emp_name,
	dept_id,
	salary,
	RANK() OVER(
		PARTITION BY dept_id
		ORDER BY salary DESC
	) AS dept_rank
from Employee;

SELECT emp_name,
	salary,
	LAG(salary)
	OVER(ORDER BY salary)AS PreviousSalary
FROM Employee;

select emp_name,
	salary,
	SUM (salary)
	OVER(ORDER BY emp_id) AS RunningTotal
FROM Employee;

SELECT *
FROM Employee
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employee
);

select * from Employee
WHERE salary = 
(
SELECT MAX(salary)
FROM Employee
);