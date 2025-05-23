-- Active: 1747477117878@@127.0.0.1@5432@test2@public
CREATE TABLE post (
    post_id SERIAL PRIMARY KEY ,
    title TEXT,
    student_id INTEGER REFERENCES student(id) ON DELETE CASCADE
);


INSERT INTO post (title, student_id) VALUES
('Introduction to SQL', 1),
('Learning PostgreSQL', 2),
('Advanced Queries', 3),
('Database Normalization', 3),
('Foreign Key Example', 5);


CREATE TABLE student(
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    email VARCHAR(50)
)

INSERT INTO student (student_name, age, email) VALUES
('Rakib', 24, 'rakib@gmail.com'),
('Sadia', 22, 'sadia@gmail.com'),
('Nayeem', 25, 'nayeem@gmail.com'),
('Mitu', 23, 'mitu@gmail.com'),
('Arif', 26, 'arif@gmail.com');


DELETE FROM student
 WHERE id = 3;

SELECT * FROM post;
SELECT * FROM student;