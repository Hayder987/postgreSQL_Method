-- Active: 1747477117878@@127.0.0.1@5432@test@public

SELECT * FROM employee;

-- create view
CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employee
 GROUP BY department_name;

-- display view
SELECT * FROM dept_avg_salary;