-- Active: 1691512005411@@127.0.0.1@5432@school

CREATE DATABASE school;

use school;

CREATE Table class (
    roll int PRIMARY KEY,
    name VARCHAR(50),
    section VARCHAR(10),
    age INT not NULL
);

insert INTO
    class (roll, name, section, age)
VALUES (1, 'John', 'A', 10),
    (2, 'Doe', 'B', 11),
    (3, 'Jane', 'C', 12);

-- insert into
--     class (roll, name, section, age)
-- values (2, 'Doe', 'B', 11);

-- insert into
--     class (roll, name, section, age)
-- values (3, 'Jane', 'C', 12);

SELECT * FROM class;

drop Table class;

CREATE DATABASE xyz;

use xyz;

CREATE Table employees (
    id int PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT into
    employees (id, name, salary)
VALUES (1, 'John', 1000.00),
    (2, 'Doe', 2000.00),
    (3, 'Jane', 3000.00);

SELECT * FROM employees;