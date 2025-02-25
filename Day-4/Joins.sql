CREATE DATABASE JoinSchool;

USE JoinSchool;

CREATE Table student (
    id int PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO
    student (id, name)
VALUES (101, 'adam'),
    (102, 'bob'),
    (103, 'casey');

CREATE Table course (
    id int PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO
    course (id, course)
VALUES (101, 'EEE'),
    (102, 'cse'),
    (103, 'CSE'),
    (104, 'Physics'),
    (105, 'Math');

TRUNCATE Table course;

SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM student INNER JOIN course ON student.id = course.id;

-- Alias means Alternative
SELECT * FROM student as s INNER JOIN course as c ON s.id = c.id;

-- Left Join or Left Outer Join
SELECT * FROM student as s LEFT JOIN course as c on s.id = c.id;

-- Right Join or Right Outer Join
SELECT * from student as s RIGHT JOIN course as c on s.id = c.id;

-- Full Join or Full Outer Join
SELECT *
FROM student as s
    LEFT JOIN course as c on s.id = c.id
UNION
SELECT *
FROM student as s
    RIGHT JOIN course as c on s.id = c.id;

-- Left Exclusive Join
SELECT *
from student as s
    left JOIN course as c on s.id = c.id
WHERE
    c.id is NULL;

-- Right Exclusive Join
SELECT *
FROM student as s
    RIGHT JOIN course as c on s.id = c.id
WHERE
    c.id is NULL;

CREATE Table employee (
    id int PRIMARY key,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO
    employee (id, name, manager_id)
VALUES (101, 'adam', 103),
    (102, 'bob', 104),
    (103, 'casey', NULL),
    (104, 'donald', 103);

SELECT * FROM employee;

-- Self Join
SELECT *
FROM employee as a
    join employee as b on a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
    join employee as b on a.id = b.manager_id;

-- Union or Set
SELECT name from employee UNION SELECT name from employee;

SELECT name from employee UNION ALL SELECT name from employee;

CREATE Table students (
    roll int PRIMARY key,
    name VARCHAR(50),
    marks int,
    city VARCHAR(50)
);

INSERT INTO
    students (roll, name, marks, city)
VALUES (101, 'Anil', 85, 'dhaka'),
    (102, 'Mim', 88, 'gazipur'),
    (103, 'Ruhika', 77, 'mirpur'),
    (104, 'Sabahat', 98, 'Gulshan'),
    (
        105,
        'Rushda',
        100,
        'Gaibandha'
    );

DROP Table students;

SELECT * FROM students;

SELECT avg(marks) from students;

SELECT name from students where marks > 87;

-- SQL Sub Queries
SELECT name, marks
from students
where
    marks > (
        SELECT AVG(marks)
        from students
    );

SELECT name, roll from students where roll % 2 = 0;

SELECT name, roll from students where roll in (102, 104, 106);

SELECT name, roll
from students
where
    roll in (
        SELECT roll
        from students
        WHERE
            roll % 2 = 0
    );

SELECT * from students where city = 'dhaka';

SELECT MAX(marks) FROM students where city = 'dhaka';

SELECT MAX(marks)
from (
        select *
        from students
        where
            city = 'dhaka'
    ) as temp;

SELECT MAX(marks) from students WHERE city = 'Gulshan';

SELECT ( SELECT MAX(marks) FROM students ), name from students;


-- MySQL Views
CREATE VIEW view1 as SELECT roll, name, marks from students;

SELECT * from view1;

SELECT roll, name, marks from students;

SELECT * FROM view1;

