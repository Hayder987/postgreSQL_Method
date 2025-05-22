-- Active: 1747477117878@@127.0.0.1@5432@test@public

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date Date
);

INSERT INTO employee (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'HR', 52000.00, '2020-03-15'),
('Bob Smith', 'Finance', 61000.00, '2019-06-12'),
('Charlie Adams', 'IT', 72000.50, '2021-09-20'),
('Diana Evans', 'Marketing', 58000.75, '2022-01-10'),
('Ethan Brown', 'Sales', 55000.00, '2023-07-01'),
('Fiona Wilson', 'IT', 69000.00, '2020-11-05'),
('George King', 'HR', 53000.00, '2018-04-23'),
('Hannah Scott', 'Finance', 64000.00, '2021-03-14'),
('Ian Walker', 'Marketing', 60000.00, '2020-12-02'),
('Jenny White', 'Sales', 56000.00, '2022-05-18'),
('Kevin Hall', 'IT', 73000.00, '2023-02-27'),
('Laura Young', 'HR', 51000.00, '2019-09-09'),
('Mike Green', 'Finance', 67000.00, '2018-08-08'),
('Nina Lewis', 'Marketing', 59000.00, '2021-11-11'),
('Oliver Wright', 'Sales', 57000.00, '2020-06-06'),
('Paula Turner', 'IT', 75000.00, '2023-03-03'),
('Quentin Hill', 'HR', 50000.00, '2017-07-07'),
('Rachel Adams', 'Finance', 66000.00, '2022-02-22'),
('Steve Baker', 'Marketing', 61000.00, '2023-04-04'),
('Tina Foster', 'Sales', 58000.00, '2021-10-10');


-- get all Data
SELECT * FROM employee;

-- drop table
DROP TABLE employee;

-- ----------Exploring Subqueries----------------------------------->

-- Retrieve all employees whose salary is greater than the highest salary of the HR department
-- 63000

 SELECT * FROM employee 
 WHERE salary > (SELECT max(salary) FROM employee 
 WHERE department_name = 'HR');

--  subquries
SELECT *, (SELECT sum(salary) FROM employee) FROM employee;

SELECT * FROM (SELECT department_name, sum(salary) FROM employee GROUP BY department_name) as dept_sum_salary;