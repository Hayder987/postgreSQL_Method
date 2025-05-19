
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(1, 'Alice Johnson', 101),
(2, 'Bob Smith', 102),
(3, 'Charlie Lee', 101),
(4, 'Diana Prince', 103),
(5, 'Ethan Hunt', 102);

INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'Human Resources'),
(102, 'Engineering'),
(103, 'Marketing'),
(104, 'Finance'),
(105, 'Sales');


-- get All Data
SELECT * FROM employees;
SELECT * FROM departments;


-- CROSS JOIN ----------------------------
SELECT * FROM employees
 CROSS JOIN departments;

-- NATURAL JOIN
SELECT * FROM employees
 NATURAL JOIN departments;