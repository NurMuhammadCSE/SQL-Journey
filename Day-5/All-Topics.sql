-- Database Related Queries
CREATE DATABASE house;

DROP DATABASE house;
-- USE house;
-- CREATE DATABASE IF NOT EXISTS house;
-- DROP DATABASE IF EXISTS house;

-- SHOW DATABASES;

-- SHOW TABLES;

-- TABLE Related Queries

CREATE TABLE rooms (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50),
    owner VARCHAR(50)
);

-- Select and View All Columns
SELECT * FROM rooms;

-- Insert Into Table
INSERT INTO
    rooms (id, name, location, owner)
VALUES (
        1,
        'Khairul House',
        'Gaibandha',
        'Khairul Alam'
    ),
    (
        2,
        'Mozid House',
        'Gaibandha',
        'Addul Mozid'
    );

-- PRIMARY KEY: It is a COLUMN in a TABLE that uniquely Indetifies each ROW. There is only 1 FOREIGN KEY AND it should be not NULL;

-- FOREIGN KEY: It is a COLUMN in a TABLE that refers to the primary key in another table. There can be multiple FOREIGN KEYS;
-- Foreign Key have duplicates and NULL VALUES

-- CONSTRAINTS:

CREATE TABLE student (
    -- id INT NOT NULL,
    -- id INT UNIQUE,
    -- id INT PRIMARY KEY,
    id INT,
    name VARCHAR(50),
    PRIMARY KEY (id, name),
    Foreign Key (id) REFERENCES courses (id)
);

INSERT INTO student VALUES (101, 'Nur Muhammad');

INSERT INTO student VALUES (102, 'Nur Muhammad');

CREATE TABLE courses ( id INT PRIMARY KEY, name VARCHAR(50) );

INSERT INTO courses VALUES (201, 'Al-Quran');

SELECT * FROM student;

SELECT * FROM courses;

DROP Table student;

DROP Table courses;

CREATE TABLE college (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO
    college (id, name, marks, grade, city)
VALUES (
        101,
        'Nur',
        85,
        '5.00',
        'Gazipur'
    ),
    (
        102,
        'Mishu',
        95,
        '5.00',
        'Dhaka'
    ),
    (
        103,
        'Darda',
        80,
        '5.00',
        'Gaibandha'
    ),
    (
        104,
        'Didar',
        55,
        '5.00',
        'Gazipur'
    ),
    (
        105,
        'Zihad',
        55,
        '5.00',
        'Gazipur'
    );

SELECT * FROM college;

SELECT * FROM college WHERE marks >= 90;

SELECT * FROM college WHERE city = 'Gazipur';

SELECT * FROM college WHERE grade >= '4';

SELECT * FROM college WHERE marks > 85 AND city = 'Dhaka';

SELECT * FROM college WHERE marks >= 80 OR city = 'Gazipur';

SELECT * FROM college WHERE marks BETWEEN 70 AND 90;

SELECT * FROM college where city IN ('Dhaka', 'Gazipur');

SELECT * FROM college where city NOT IN ('Dhaka', 'Gazipur');

SELECT * FROM college LIMIT 3;

SELECT * FROM college ORDER BY city ASC;

SELECT * FROM college ORDER BY marks DESC;

SELECT * FROM college ORDER BY name ASC;

SELECT * FROM college ORDER BY city DESC;

SELECT MAX(marks) FROM college;

SELECT AVG(marks) FROM college;

SELECT COUNT(city) FROM college;

SELECT MIN(marks) FROM college;

SELECT SUM(marks) FROM college;

SELECT COUNT(name) FROM college;

SELECT COUNT(city) FROM college;

-- GROUP BY CLAUSE
SELECT city, COUNT(city) FROM college GROUP BY city;

SELECT name, COUNT(name) FROM college GROUP BY name;

SELECT COUNT(city), city
FROM college
GROUP BY
    city
HAVING
    MAX(marks) > 90;

SELECT COUNT(name), name
FROM college
GROUP BY
    name
HAVING
    MAX(marks) > 50;

--? GENERAL ORDER

-- SELECT column
-- FROM table_name
-- WHERE condition
-- GROUP BY column
-- HAVING condition
-- ORDER BY column (ASC || DESC)

UPDATE shop SET location = 'Dhaka' WHERE location = 'New York';

UPDATE shop set product = 'Lichi' WHERE product = 'Apple';

DELETE FROM shop WHERE monthly_sales < 300;

SELECT * from shop;

SELECT DISTINCT product FROM shop;

-- SET SQL_SAFE_UPDATES = 0;

CREATE TABLE dept ( id int PRIMARY key, name VARCHAR(50) );

CREATE Table teacher (
    id int PRIMARY key,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO
    dept (id, name)
VALUES (101, 'English'),
    (102, 'Science'),
    (103, 'Physics'),
    (104, 'Chemistry');

UPDATE dept
SET id=105
WHERE id=103;

SELECT * FROM dept;

INSERT INTO
    teacher (id, name, dept_id)
VALUES (101, 'Nur', 103),
    (102, 'Mishu', 101),
    (103, 'Zihad', 102),
    (104, 'Didar', 101),
    (105, 'Darda', 103);

SELECT * FROM teacher;

TRUNCATE TABLE teacher;

DROP Table teacher;

DROP Table dept;

ALTER Table student ADD COLUMN age INT; 

ALTER Table student DROP COLUMN age;

SELECT * FROM student;