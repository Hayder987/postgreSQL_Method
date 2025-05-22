-- Active: 1747477117878@@127.0.0.1@5432@orin@public

CREATE TABLE employees (
  emp_no SERIAL PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender CHAR(1) CHECK (gender IN ('M', 'F')) NOT NULL,
  hiring_date DATE NOT NULL
);


INSERT INTO employees (birth_date, first_name, last_name, gender, hiring_date)
VALUES 
('1990-05-01', 'John', 'Doe', 'M', '2015-06-01'),
('1985-07-15', 'Jane', 'Smith', 'F', '2013-09-01'),
('1992-03-12', 'Robert', 'Brown', 'M', '2016-04-15'),
('1988-11-25', 'Emily', 'Davis', 'F', '2012-01-20'),
('1993-01-30', 'Michael', 'Wilson', 'M', '2018-02-10'),
('1991-04-22', 'Linda', 'Taylor', 'F', '2014-07-23'),
('1989-10-10', 'David', 'Anderson', 'M', '2011-03-12'),
('1995-02-18', 'Barbara', 'Thomas', 'F', '2019-09-19'),
('1987-09-05', 'James', 'Jackson', 'M', '2010-11-02'),
('1990-08-08', 'Susan', 'White', 'F', '2016-08-30'),
('1986-12-12', 'William', 'Harris', 'M', '2009-10-10'),
('1994-06-16', 'Jessica', 'Martin', 'F', '2017-03-22'),
('1993-03-03', 'Richard', 'Thompson', 'M', '2018-12-01'),
('1990-09-09', 'Sarah', 'Garcia', 'F', '2015-05-20'),
('1985-05-05', 'Charles', 'Martinez', 'M', '2008-07-15'),
('1988-08-18', 'Karen', 'Robinson', 'F', '2012-06-10'),
('1992-11-11', 'Joseph', 'Clark', 'M', '2017-11-11'),
('1987-04-04', 'Nancy', 'Rodriguez', 'F', '2010-10-01'),
('1991-01-01', 'Thomas', 'Lewis', 'M', '2014-01-05'),
('1989-02-14', 'Betty', 'Lee', 'F', '2011-02-14'),
('1995-06-06', 'Christopher', 'Walker', 'M', '2020-01-01'),
('1986-07-07', 'Margaret', 'Hall', 'F', '2009-07-07'),
('1993-12-12', 'Daniel', 'Allen', 'M', '2018-03-03'),
('1988-03-17', 'Dorothy', 'Young', 'F', '2012-04-05'),
('1990-10-20', 'Matthew', 'Hernandez', 'M', '2015-10-10'),
('1985-11-11', 'Lisa', 'King', 'F', '2008-08-08'),
('1994-02-02', 'Anthony', 'Wright', 'M', '2017-05-05'),
('1992-05-15', 'Sandra', 'Lopez', 'F', '2016-11-11'),
('1991-09-09', 'Mark', 'Hill', 'M', '2014-04-04'),
('1987-01-20', 'Ashley', 'Scott', 'F', '2010-05-01'),
('1989-12-01', 'Steven', 'Green', 'M', '2011-06-06'),
('1993-08-08', 'Donna', 'Adams', 'F', '2018-09-09'),
('1986-10-30', 'Paul', 'Baker', 'M', '2009-03-03'),
('1990-06-06', 'Carol', 'Gonzalez', 'F', '2015-02-02'),
('1992-07-07', 'Andrew', 'Nelson', 'M', '2016-06-06'),
('1988-01-01', 'Michelle', 'Carter', 'F', '2012-12-12'),
('1985-08-08', 'Joshua', 'Mitchell', 'M', '2008-01-01'),
('1991-03-03', 'Laura', 'Perez', 'F', '2014-03-03'),
('1994-04-04', 'Kevin', 'Roberts', 'M', '2017-07-07'),
('1990-07-07', 'Amy', 'Turner', 'F', '2015-01-01'),
('1987-06-06', 'Brian', 'Phillips', 'M', '2010-09-09'),
('1989-09-09', 'Angela', 'Campbell', 'F', '2011-11-11'),
('1995-01-01', 'Edward', 'Parker', 'M', '2020-05-05'),
('1992-02-02', 'Helen', 'Evans', 'F', '2016-10-10'),
('1988-05-05', 'Ronald', 'Edwards', 'M', '2012-07-07'),
('1986-09-09', 'Sharon', 'Collins', 'F', '2009-06-06'),
('1993-07-07', 'Jason', 'Stewart', 'M', '2018-01-01'),
('1991-11-11', 'Cynthia', 'Sanchez', 'F', '2014-11-11'),
('1985-06-06', 'Jeffrey', 'Morris', 'M', '2008-12-12');


-- query explain------------------
EXPLAIN ANALYSE
SELECT * FROM employees;

EXPLAIN ANALYSE
SELECT * FROM employees WHERE last_name = 'Lee';

-- Create Index-----------
CREATE INDEX idx_emp_last_name
ON employees (last_name);


-- get data directory path
SHOW data_directory;

-- create index with name
CREATE INDEX idx_emp_last_name_hash
ON employees USING HASH (last_name);

