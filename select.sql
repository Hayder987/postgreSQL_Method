-- Active: 1747477117878@@127.0.0.1@5432@ph@public

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(80),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

-- add data on table
INSERT INTO student
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
  ('hayder', 'ali', 26, 'A', 'nxt-2', 'hayder@gmail.com', '2024-01-25', 'O+', 'BD'),
  ('rakib', 'hasan', 29, 'B', 'math', 'rakib@gmail.com', '2024-07-08', 'AB+', 'USA'),
  ('orin', 'akter', 24, 'C', 'physics', 'orin@gmail.com', '2024-08-02', 'O+', ''),
  ('sadia', 'hossain', 22, 'A', 'biology', 'sadia@gmail.com', '2002-03-15', 'A+', 'BD'),
  ('mohsin', 'khan', 28, 'B', 'chemistry', 'mohsin@gmail.com', '1996-11-10', 'B+', 'UK'),
  ('tania', 'islam', 25, 'A', 'english', 'tania@gmail.com', '1999-04-09', 'O-', 'CAN'),
  ('fahim', 'ahmed', 27, 'C', 'computer', 'fahim@gmail.com', '1997-06-22', 'AB-', 'AUS'),
  ('sajib', 'rahman', 23, 'B', 'math', 'sajib@gmail.com', '2001-09-30', 'A-', 'BD'),
  ('maisha', 'akter', 21, 'A', 'psychology', 'maisha@gmail.com', '2003-05-12', 'B+', 'BD'),
  ('rony', 'miah', 30, 'C', 'history', 'rony@gmail.com', '1994-12-01', 'O+', 'UK'),
  ('lima', 'begum', 20, 'B', 'economics', 'lima@gmail.com', '2004-02-25', 'AB+', 'BD'),
  ('arif', 'hassan', 26, 'A', 'engineering', 'arif@gmail.com', '1998-07-17', 'O-', 'USA'),
  ('samiha', 'zaman', 22, 'B', 'statistics', 'samiha@gmail.com', '2002-06-06', 'A+', 'BD'),
  ('emon', 'karim', 28, 'C', 'finance', 'emon@gmail.com', '1996-03-03', 'B-', 'CAN'),
  ('nodi', 'israt', 24, 'A', 'sociology', 'nodi@gmail.com', '2000-11-11', 'O+', 'BD'),
  ('hasib', 'rahman', 27, 'B', 'marketing', 'hasib@gmail.com', '1997-09-19', 'A-', 'AUS'),
  ('sumaiya', 'sultana', 23, 'A', 'literature', 'sumaiya@gmail.com', '2001-10-30', 'AB+', 'UK'),
  ('reaz', 'uddin', 25, 'C', 'geography', 'reaz@gmail.com', '1999-08-14', 'B+', 'BD');


INSERT INTO student
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES ('Rokeya', 'ali', 26, 'A', 'nxt-2', NULL, '2024-01-25', 'O+', 'BD');

-- get all value
SELECT * from student;

-- get single value;
SELECT email,age,blood_group from student;

-- get data by short assending
SELECT * FROM student ORDER BY first_name ASC;

SELECT country FROM student ORDER BY country ASC;


-- unique data get no repeat
SELECT DISTINCT country FROM student ;

-- sorting data by condition;
SELECT * FROM student
 WHERE country = 'BD';

-- double and condition
 SELECT * FROM student
  WHERE grade = 'A' AND course='english';

-- double OR condition
SELECT * FROM student
 WHERE country = 'UK' OR country='BD';

 -- double OR AND Both condition
SELECT * FROM student
 WHERE (country = 'UK' OR country='BD') AND age<=25;

-- not equal
SELECT * FROM student
 WHERE age != 26 ;

SELECT * FROM student
 WHERE country <> 'BD' ;

SELECT * FROM student
 WHERE NOT country = 'BD';

 ----------------Function------------------------>
--  uppercase
SELECT upper(first_name) FROM student;
SELECT UPPER(first_name) AS upper_name, * FROM student;

-- concat
SELECT concat(first_name, last_name) FROM student;
SELECT concat(first_name,' ', last_name) FROM student;
SELECT concat(first_name,' ', last_name) AS full_name FROM student;

-- length
SELECT length(first_name) FROM student;

-- --------aggregate function
SELECT AVG(age) FROM student;
SELECT MIN(age) FROM student;
SELECT MAX(age) FROM student;
SELECT SUM(age) FROM student;
SELECT COUNT(*) FROM student;  -- get total row data

-- get most length name 
SELECT max(length(first_name)) FROM student;

-- NULL------
-- get all value
SELECT * from student;

SELECT * FROM student
 WHERE email IS NULL;

SELECT * FROM student
 WHERE email IS NOT NULL;

--  Null-Coalescing
SELECT COALESCE(email, 'not Provied') FROM student;
SELECT COALESCE(email, 'not Provied') as "Email" ,blood_group ,age FROM student;

-- Exploring IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL

-- IN--Multiploe or
SELECT * FROM student
 WHERE country IN ('BD', 'USA');

-- NOT IN
 SELECT * FROM student
 WHERE country NOT IN ('BD', 'USA');

-- BETWEEN
 SELECT * FROM student
  WHERE age BETWEEN 25 AND 26;

  SELECT * FROM student
  WHERE dob BETWEEN '2001-01-01' AND '2003-01-01';

  SELECT * FROM student
  WHERE dob BETWEEN '2001-01-01' AND '2003-01-01' ORDER BY dob LIMIT 2;

  -- like case sensitive
  -- last value a search
  SELECT * FROM student
   WHERE first_name LIKE '%a';

  -- first value a search
  SELECT * FROM student
   WHERE first_name LIKE 's%' ORDER BY first_name;

    -- middle 2 oreder value a search
  SELECT * FROM student
   WHERE first_name LIKE '__y%' ORDER BY first_name;

  --  ILIKE case insensitive;
  SELECT * FROM student
   WHERE first_name ILIKE 'S%';

  -- ----------- LIMIT for Pagination----------------------------
  -- LIMIT
  SELECT * FROM student LIMIT 10;
  -- OFFSET / SKIP
  SELECT * FROM student LIMIT 10 OFFSET 3;

  -- pagination
  SELECT * FROM student LIMIT 5 OFFSET 5*0;
  SELECT * FROM student LIMIT 5 OFFSET 5*1;
  SELECT * FROM student LIMIT 5 OFFSET 5*2;

  ----- DELETE DATA----------
  -- get all Data
  SELECT * FROM student;
  
  -- DELETE All Data
  DELETE FROM student;

  -- Delete sepecific data
  DELETE FROM student
   WHERE grade ='C';
  -- doubble condition
  DELETE FROM student
   WHERE grade ='B' AND country = 'BD';

  --------  Update ---------------------------
  --  update email by id single column
  UPDATE student
   SET email = 'default@gmail.com'
   WHERE student_id = 76;

  --  update email by id multi column
  UPDATE student
   SET email = 'default@gmail.com', age=30, grade='B'
   WHERE student_id = 76;
