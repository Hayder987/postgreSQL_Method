-- Active: 1747477117878@@127.0.0.1@5432@ph@public
SELECT * FROM student;

SELECT country FROM student
 GROUP BY country;

--  group by age
SELECT country, count(age) FROM student
 GROUP BY country;

SELECT country,count(age), avg(age) FROM student
 GROUP BY country;

-- having-----conditon
SELECT country,count(age), avg(age) FROM student
 GROUP BY country
  HAVING avg(age) > 26;

SELECT country, avg(age) FROM student
 GROUP BY country
  HAVING avg(age) > 26.9;

-- count student born in each year
SELECT extract(YEAR FROM dob) AS birth_year,
 count(*)
 FROM student
  GROUP BY birth_year