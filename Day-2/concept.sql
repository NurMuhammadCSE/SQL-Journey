-- Active: 1691512005411@@127.0.0.1@5432@test3


-- CREATE DATABASE students;
CREATE TABLE MainEmployees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);


ALTER TABLE MainEmployees ADD COLUMN age INT;
ALTER TABLE MAINEMPLOYEES DROP COLUMN age;

ALTER TABLE MAINEMPLOYEES ADD COLUMN email VARCHAR(100);

ALTER Table mainemployees RENAME COLUMN email TO email_address;

alter table mainemployees MODIFY COLUMN salary FLOAT;