-- Active: 1691512005411@@127.0.0.1@5432@postgres
CREATE DATABASE students;

CREATE DATABASE IF NOT EXISTS students;

USE students;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
-- How to add values
INSERT INTO student (id, name, age) VALUES (1, 'Zihad', 20);

INSERT INTO student (id, name, age) VALUES (2, 'Darda', 18);

INSERT INTO student (id, name, age) VALUES (3, 'Didar', 17);

INSERT INTO student (id, name, age) VALUES (4, 'Polash', 30);

-- How to see table
SELECT * FROM student;

SHOW DATABASE;

SHOW TABLES
-- Give me data types -> Char, varchar, int, boolean

CREATE DATABASE temp1;

drop DATABASE temp1;

DROP DATABASE IF EXISTS temp1;

SHOW DATABASE;