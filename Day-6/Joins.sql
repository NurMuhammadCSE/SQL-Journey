CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(50) NOT NULL
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO departments VALUES 
(101, 'CSE'),
(102, 'EEE'),
(103, 'ECE'),
(104, 'Physics'),
(105, 'Math');


INSERT INTO employees VALUES 
(101, 'Nur', 22, 25000, 'Gazipur'),
(102, 'Mishu', 22, 25000, 'Gaibandha'),
(103, 'Darda', 22, 25000, 'Dhaka'),
(104, 'Didar', 22, 25000, 'Dhaka'),
(105, 'Zihad', 22, 25000, 'Gazipur'),
(106, 'Rushda', 22, 25000, 'Rangpur');

SELECT * FROM employees;

SELECT * FROM departments;


SELECT * FROM employees INNER JOIN departments ON employees.id = departments.id;
SELECT * FROM employees LEFT JOIN departments ON employees.id = departments.id;
SELECT * FROM employees RIGHT JOIN departments ON employees.id = departments.id;

SELECT * FROM departments LEFT JOIN employees ON departments.id = employees.id;
SELECT * FROM departments RIGHT JOIN employees ON departments.id = employees.id;

SELECT * FROM employees FULL JOIN departments ON employees.id = departments.id;

SELECT * FROM employees LEFT JOIN departments ON employees.id = departments.id
UNION
SELECT * FROM employees RIGHT JOIN departments ON employees.id = departments.id;

SELECT * FROM employees LEFT JOIN departments ON employees.id = departments.id WHERE departments.id IS NOT NULL;
SELECT * FROM employees LEFT JOIN departments ON employees.id = departments.id WHERE departments.id IS NULL;
SELECT * FROM employees RIGHT JOIN departments ON employees.id = departments.id WHERE departments.id IS NOT NULL;
SELECT * FROM employees RIGHT JOIN departments ON employees.id = departments.id WHERE departments.id IS NULL;



SELECT employees.name, departments.name FROM employees JOIN departments ON employees.id = departments.id;


CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);


INSERT INTO employee VALUES
(101, 'Nur', 101),
(102, 'Mishu', 102),
(103, 'Khadija', 103),
(104, 'Zihad', 102),
(105, 'Darda', 103),
(106, 'Didar', 105);

SELECT * FROM employee;


SELECT * FROM employee as a JOIN employee as b ON a.id = b.manager_id;
SELECT a.name as manager_name, b.name FROM employee as a JOIN employee as b ON a.id = b.manager_id;


SELECT name FROM employee UNION SELECT name from employee;
SELECT name FROM employee UNION ALL SELECT name from employee;





SELECT salary from employees;

SELECT Round(AVG(salary))FROM employees;


SELECT name,salary FROM employees WHERE salary >= (SELECT AVG(salary) FROM employees);

SELECT id FROM employees WHERE id % 2 = 0;

SELECT * FROM employees WHERE id IN(102, 105);


SELECT name, id FROM employees WHERE id IN (
    SELECT id FROM employees WHERE id % 2 = 0
);


SELECT * FROM employees WHERE location='Gazipur';


SELECT MAX(salary) FROM (SELECT * FROM employees WHERE location='Dhaka') as temp; 

DROP TABLE employees;
DROP TABLE departments;