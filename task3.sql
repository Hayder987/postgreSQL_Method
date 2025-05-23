-- Active: 1747477117878@@127.0.0.1@5432@task3@public

CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO departments (name) VALUES 
('CSE'),   
('EEE'),   
('BBA'),   
('LLB'),   
('English'),
('Physics'),
('Mathematics'),
('Civil Engineering'),
('Mechanical Engg'),
('Economics');


CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    score INTEGER,
    department_id INTEGER REFERENCES departments(department_id) ON DELETE CASCADE
);

INSERT INTO students (name, age, score, department_id) VALUES
('Alice', 20, 85, 1),
('Bob', 22, 90, 2),
('Charlie', 21, 78, 3),
('David', 23, 88, 3),
('Eve', 20, 92, 5),
('Fahim', 24, 70, 6),
('Gita', 22, 95, 4),
('Hassan', 23, 67, 2),
('Irene', 21, 80, 9),
('Jamal', 25, 75, 1);



CREATE TABLE course_enrollments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    course_title VARCHAR(50),
    enrolled_on DATE
);

INSERT INTO course_enrollments (student_id, course_title, enrolled_on) VALUES
(1, 'Data Structures', '2025-01-10'),
(2, 'Database Systems', '2025-01-11'),
(3, 'Computer Networks', '2025-01-12'),
(4, 'Operating Systems', '2025-01-13'),
(5, 'Machine Learning', '2025-01-14'),
(6, 'Artificial Intelligence', '2025-01-15'),
(7, 'Software Engineering', '2025-01-16'),
(8, 'Web Development', '2025-01-17'),
(9, 'Mobile App Development', '2025-01-18'),
(10, 'Cybersecurity Fundamentals', '2025-01-19');

-- practise Area

--1. Retrieve all students who scored higher than the average score.

 SELECT *, (SELECT AVG(score) FROM students) AS avg_score FROM students
  WHERE score> (SELECT AVG(score) FROM students)

-- 2.Find students whose age is greater than the average age of all students.
SELECT *, (SELECT AVG(age) FROM students) AS avg_age FROM students
 WHERE age> (SELECT AVG(age) FROM students);

-- 3. Get names of students who are enrolled in any course (use IN with subquery).
DELETE FROM course_enrollments
 WHERE student_id IN (9, 8)

SELECT name FROM students
 WHERE id IN (SELECT student_id FROM course_enrollments);

--  4.Retrieve departments with at least one student scoring above 90 (use EXISTS).

SELECT * FROM departments d
 WHERE EXISTS(
    SELECT * FROM students s
    WHERE s.department_id = d.department_id AND score>90
 );


-- 5. Create a view to show each student’s name, department, and score.
CREATE VIEW student_view AS
 SELECT students.name, departments.name AS department, score FROM students
  JOIN departments ON departments.department_id = students.department_id;

  DROP VIEW student_view;

SELECT * FROM student_view;

-- Create a view that lists all students enrolled in any course with the enrollment date.
CREATE VIEW enrollment_student AS
SELECT * FROM students
 JOIN course_enrollments ON students.id = course_enrollments.student_id;

CREATE VIEW enrollment_student AS
SELECT students.name, course_enrollments.enrolled_on
FROM students
JOIN course_enrollments ON students.id = course_enrollments.student_id;

SELECT * FROM enrollment_student;






SELECT * FROM departments;
SELECT * FROM students;
SELECT * FROM course_enrollments;