-- Drop the database if it already exists
DROP DATABASE IF EXISTS office_db;

-- Create Database
CREATE DATABASE office_db;
USE office_db;

-- Create Department Table
CREATE TABLE department1 (
    depart_id INT PRIMARY KEY,
    depart_name VARCHAR(50) NOT NULL
);

-- Insert 5 Departments
INSERT INTO department1 (depart_id, depart_name) VALUES
(101, 'AIML'),
(102, 'AIDS'),
(103, 'AICS'),
(104, 'AI'),
(105, 'ML');

-- Display Department Table
SELECT * FROM department1;

-- Create Employee Table
CREATE TABLE Employee1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    emp_email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) DEFAULT 25000,
    age INT CHECK (age >= 18),
    depart_id INT,
    FOREIGN KEY (depart_id) 
    REFERENCES department1(depart_id)
);

-- Insert 10 Employees
INSERT INTO Employee1
(emp_id, emp_name, emp_email, salary, age, depart_id)
VALUES
(201, 'Lakshmi', 'lakshmi@gmail.com', 60000, 19, 101),
(202, 'Manu', 'manu@gmail.com', 55000, 20, 102),
(203, 'Teju', 'teju@gmail.com', 50000, 21, 103),
(204, 'Magi', 'magi@gmail.com', 62000, 22, 104),
(205, 'Lucy', 'lucy@gmail.com', 58000, 23, 105),
(206, 'Dimple', 'dimple@gmail.com', 61000, 24, 101),
(207, 'Spanda', 'spandana@gmail.com', 59000, 25, 102),
(208, 'Taj', 'taj@gmail.com', 64000, 26, 103),
(209, 'Mahi', 'mahi@gmail.com', 63000, 27, 104),
(210, 'Vinitha', 'vinitha@gmail.com', 65000, 28, 105);

-- Display all Employees
SELECT * FROM Employee1;
-- task-2 --
-- Display all Employees
SELECT * FROM Employee1;


select emp_name,salary
from Employee1;

SELECT *
FROM Employee1
WHERE salary > 50000;

SELECT *
FROM Employee1
WHERE age BETWEEN 25 AND 30;


SELECT DISTINCT depart_id
FROM Employee1;

SELECT *
FROM Employee1
ORDER BY salary DESC;

SELECT *
FROM Employee1
LIMIT 5;

SELECT *
FROM Employee1
WHERE emp_name LIKE 'm%';


-- Total Employees
SELECT COUNT(*) AS Total_Employees
FROM Employee1;

-- Maximum Salary
SELECT MAX(salary) AS Maximum_Salary
FROM Employee1;

-- Minimum Salary
SELECT MIN(salary) AS Minimum_Salary
FROM Employee1;

-- Average Salary
SELECT AVG(salary) AS Average_Salary
FROM Employee1;

SELECT depart_id, COUNT(*) AS total_employees
FROM Employee1
GROUP BY depart_id;

SELECT depart_id, COUNT(*) AS total_employees
FROM Employee1
GROUP BY depart_id
HAVING COUNT(*) > 1;

SELECT e.emp_name, d.depart_name
FROM Employee1 AS e
INNER JOIN department1 AS d
ON e.depart_id = d.depart_id;