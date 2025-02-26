CREATE TABLE class (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(50) NOT NULL
);

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        1,
        'John',
        25,
        50000,
        'New York'
    );

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        2,
        'Doe',
        30,
        60000,
        'California'
    );

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        3,
        'Smith',
        35,
        70000,
        'Texas'
    );

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        4,
        'Alex',
        40,
        80000,
        'Florida'
    );

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        5,
        'David',
        45,
        90000,
        'Washington'
    );

INSERT INTO
    class (
        id,
        name,
        age,
        salary,
        location
    )
VALUES (
        6,
        'John',
        25,
        50000,
        'New York'
    ),
    (
        7,
        'Doe',
        30,
        60000,
        'California'
    ),
    (
        8,
        'Smith',
        35,
        70000,
        'Texas'
    ),
    (
        9,
        'Alex',
        40,
        80000,
        'Florida'
    ),
    (
        10,
        'David',
        45,
        90000,
        'Washington'
    );

SELECT * FROM class;

SELECT location from class GROUP BY location;

SELECT location, AVG(salary) as avg_salary
from class
GROUP BY
    location;

SELECT name FROM class GROUP BY name;

SELECT name, SUM(age) as Total_Sum FROM class GROUP BY name;

SELECT location, COUNT(location) from class GROUP BY location;

SELECT
    location,
    ROUND(avg(salary)) as avg_salary,
    COUNT(location) as total_employee
FROM class
GROUP BY
    location;

SELECT
    name,
    ROUND(avg(salary)) as avg_salary,
    COUNT(name) as total_employee
FROM class
GROUP BY
    name;

SELECT name FROM class GROUP BY name ORDER BY name DESC;

SELECT name, salary FROM class GROUP BY name, salary ORDER BY name;

SELECT location, salary
from class
GROUP BY
    location,
    salary
ORDER BY AVG(salary) ASC;

SELECT age, COUNT(name) FROM class GROUP BY age ORDER BY age DESC;

SELECT age, COUNT(age) FROM class GROUP BY age ORDER BY age DESC;

SELECT age, location, AVG(salary) as avg_salary
FROM class
GROUP BY
    age,
    location,
    name
HAVING
    AVG(salary) > 50000
ORDER BY age DESC;


