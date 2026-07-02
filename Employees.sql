
CREATE TABLE Employees(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(50),
Salary INT,
Age INT,
City VARCHAR(50)
);

INSERT INTO Employees
VALUES
(101,'Amit','HR',35000,24,'Pune'),
(102,'Priya','IT',55000,26,'Mumnai'),
(103,'Rahul','IT',60000,28,'Pune'),
(104,'Sneha','SALES',45000,25,'Nashik'),
(105,'Kiran','HR',40000,30,'Nagpur'),
(106,'Neha','IT',70000,29,'Pune'),
(107,'Rohit','SALES',48000,27,'Mumbai'),
(108,'Anjali','FINANCE',65000,31,'Pune'),
(109,'Vijay','FINANCE',72000,32,'Nagpur'),
(110,'Pooja','IT',58000,26,'Nashik');'

SELECT * FROM Employees;
SELECT Name,Department FROM Employees;

SELECT Name FROM Employees
WHERE Salary > 50000;

SELECT * FROM Employees
WHERE Department = 'IT';

SELECT * FROM Employees
WHERE City = 'Pune';

SELECT name FROM Employees
WHERE age<28;

SELECT * FROM Employees
WHERE Salary BETWEEN 40000 AND 60000;

SELECT * FROM Employees
WHERE City = 'Pune' OR City = 'Mumbai';

SELECT Name FROM Employees
WHERE NOT Department = 'IT';

SELECT Name FROM Employees
WHERE Name LIKE 'P%';

SELECT Name FROM Employees
ORDER BY Name;

SELECT *
FROM Employees
ORDER BY Salary DESC;

SELECT MAX(Salary) FROM Employees;
SELECT MIN(Salary) FROM Employees;
SELECT AVG(Salary) FROM Employees;
SELECT SUM(Salary) FROM Employees;

SELECT Department, COUNT(EmpID)
FROM Employees
GROUP BY Department;

SELECT City, COUNT(City)
FROM Employees
GROUP BY City;

SELECT Department, AVG(Salary)
FROM Employees
GROUP By Department;

SELECT Department, MAX(Salary)
FROM Employees
GROUP BY DEPARTMENT;

SELECT DEpartment, COUNT(EmpID)
FROM Employees
GROUP BY DEPARTMENT
HAVING COUNT(EmpID)>2;

SELECT Department, AVG(Salary)
FROM Employees
GROUP By Department
HAVING AVG(Salary)>55000;

SELECT MAX(Salary) FROM Employees
WHERE Salary <(
SELECT MAX(Salary)
FROM Employees
);

SELECT MAX(Salary) FROM Employees
WHERE Salary < (
	SELECT MAX(Salary)
	FROM Employees
		WHERE Salary<(
		SELECT MAX(Salary)
		FROM Employees
		)
);

SELECT MAX(age) FROM Employees;
SELECT MIN(age) FROM Employees;

SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 3;

SELECT City,COUNT(EmpID) 
FROM Employees
GROUP BY City;

SELECT Name
FROM Employees
WHERE Salary>(
SELECT AVG(Salary)
FROM Employees
)

UPDATE Employees
SET Salary = Salary*1.10
WHERE Department = 'IT';
