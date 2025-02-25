-- Database Related Queries
CREATE DATABASE house;
DROP DATABASE house;
-- USE house;
-- CREATE DATABASE IF NOT EXISTS house;
-- DROP DATABASE IF EXISTS house;

-- SHOW DATABASES;

-- SHOW TABLES;

-- TABLE Related Queries

CREATE TABLE rooms(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50),
    owner VARCHAR(50)
);

-- Select and View All Columns
SELECT * FROM rooms;

-- Insert Into Table
INSERT INTO rooms (id, name, location, owner) VALUES 
(1, 'Khairul House', 'Gaibandha', 'Khairul Alam'),
(2, 'Mozid House', 'Gaibandha', 'Addul Mozid');


-- PRIMARY KEY: It is a COLUMN in a TABLE that uniquely Indetifies each ROW. There is only 1 FOREIGN KEY AND it should be not NULL;

-- FOREIGN KEY: It is a COLUMN in a TABLE that refers to the primary key in another table. There can be multiple FOREIGN KEYS;
-- Foreign Key have duplicates and NULL VALUES 