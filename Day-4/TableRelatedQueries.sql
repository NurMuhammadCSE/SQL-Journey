CREATE table student (
    id int PRIMARY key,
    name VARCHAR(50)
);

INSERT into
    student (id, name)
VALUES
    (102, 'Mur'),
    (103, 'John'),
    (104, 'Doe'),
    (105, 'Jane'),
    (106, 'Doe');


SELECT * FROM student;
DROP Table student;


create table shop (
    id int,
    product VARCHAR(50),
    location VARCHAR(50),
    monthly_sales int
);

insert INTO shop (id, product, location, monthly_sales) VALUES 
(1, 'Apple', 'New York', 100),
(2, 'Banana', 'New York', 200),
(3, 'Apple', 'New York', 300),
(4, 'Banana', 'New York', 400),
(5, 'Apple', 'New York', 500),
(6, 'Banana', 'New York', 600),
(7, 'Apple', 'New York', 700),
(8, 'Banana', 'New York', 800),
(9, 'Apple', 'New York', 900),
(10, 'Banana', 'New York', 1000);


INSERT INTO SHOP VALUES (11, 'Muushtac', 'India', 600);

INSERT INTO shop VALUES 
(12, 'mamaearth', 'usa', 600),
(13, 'Studio x', 'new york', 400);

SELECT * FROM SHOP;

-- Practice Question

CREATE Table xyz_company(
    id int PRIMARY KEY,
    name VARCHAR(50),
    salary FLOAT
);

insert into xyz_company (id, name, salary)
VALUES
(1, 'Nur', 40000),
(2, 'Muhammad', 800000),
(3, 'Nur Muhammad', 50000);

SELECT * from xyz_company;


-- Keys -> Primary Keys + Foreign Key
-- PRIMARY KEY: Column in a TABLE that UNIQUE identifies each row;
-- Foreign Key () REFERENCES ()
-- FOREIGN KEY: Column in a TABLE that refers to the PRIMARY KEY each row;
-- FK -> Multiple Foreign Keys, Duplicate Values, NULL VALUES


-- CONSTRAINTS: Used to specify rules for data in a TABLE. 
-- NOT NULL: Columns can't have a null value
-- UNIQUE: All VALUES in COLUMN are different
