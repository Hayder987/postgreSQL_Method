-- Active: 1747477117878@@127.0.0.1@5432@test@public

CREATE DATABASE test;

CREATE TABLE students (
    _id SERIAL PRIMARY KEY,
    roll VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT,
    department VARCHAR(50),
    score NUMERIC(5, 2),
    status VARCHAR(20),
    last_login DATE
);

ALTER TABLE students
 ADD COLUMN email VARCHAR(50) NOT NULL;
 
 ALTER TABLE students
 RENAME COLUMN email to student_email;

 ALTER TABLE students
  ADD constraint test_email UNIQUE(student_email);

ALTER TABLE students
DROP COLUMN student_email;

INSERT INTO students (roll, name, age, department, score, status, last_login, email)
VALUES (1001, 'Ayesha Rahman', 20, 'CSE', 85, 'passed', '2025-05-15', 'ayesha.rahman@example.com'),
       (1002, 'Tanvir Hasan', 22, 'EEE', 42, 'passed', '2024-05-12', 'tanvir.hasan@example.com'),
       (1003, 'Nabila Islam', 21, 'CSE', 92, 'passed', '2025-05-16', 'nabila.islam@example.com'),
       (1004, 'Rafiq Karim', 23, 'BBA', NULL, 'failed', '2023-05-10', 'rafiq.karim@example.com'),
       (1005, 'Mithila Khan', 20, 'CSE', 54, 'passed', '2025-05-13', 'rafiq.karim@example.com'),
       (1006, 'Shakil Ahmed', 24, 'EEE', 65, 'failed', '2025-05-11', 'shakil.ahmed@example.com'),
       (1007, 'Farzana Haque', 22, 'CSE', 81, 'passed', '2024-05-14', 'farzana.haque@example.com'),
       (1008, 'Jamil Rana', 21, 'BBA', 72, 'passed', '2025-05-13', 'jamil.rana@example.com'),
       (1009, 'Kazi Maruf', 20, 'EEE', 49, 'failed', '2025-05-09', 'kazi.maruf@example.com'),
       (1010, 'Shormi Akter', 22, 'CSE', 90, 'passed', '2025-05-17', 'shormi.akter@example.com');


SELECT * FROM students;

SELECT * FROM students
 WHERE score >=85 AND score IS NOT NULL;


SELECT * FROM students
 WHERE NOT department='EEE';

-- Fetch students whose names start with ‘A’ using LIKE and ILIKE.
SELECT * FROM students
 WHERE name LIKE('%a')

SELECT * FROM students
 WHERE name ILIKE('a%');

SELECT * FROM students
 WHERE age BETWEEN 20 AND 21;

SELECT * FROM students
 WHERE roll IN ('1008','1003') ORDER BY roll DESC;

SELECT COUNT(*) as all_student FROM students;


SELECT AVG(score) FROM students
 WHERE department = 'EEE' AND score IS NOT NUll;

SELECT MIN(score) FROM students;
SELECT MAX(score) FROM students;


SELECT * FROM students;


UPDATE students
 set status='Passed'
  WHERE score > 80 AND score IS NULL;

DELETE FROM students;

DELETE FROM students
 WHERE last_login < '2025-01-01';

 DELETE FROM students
WHERE score IS NULL;

SELECT * FROM students LIMIT 3 OFFSET 3*1;