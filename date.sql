-- Active: 1747477117878@@127.0.0.1@5432@ph@public
SHOW timezone;

------ Time Stamp----------------
-- now time stamp
SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);
INSERT INTO timez VALUES('2024-05-24 10:48:00','2024-05-24 10:48:00');

SELECT * FROM timez;

-- current only date
SELECT CURRENT_DATE;
SELECT current_time;
SELECT now()::date;
SELECT now()::time;

-- date format
SELECT to_char(now(), 'dd/mm/yyyy');
SELECT to_char(now(), 'Month');
SELECT to_char(now(), 'DDD');

-- current date to past 1 year see INTERVAL
SELECT CURRENT_DATE - INTERVAL '1 year';
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

-- age get
SELECT age(CURRENT_DATE , '1995-12-10');
SELECT age(now() , '1995-12-10');

SELECT * FROM student;

-- get student age
SELECT *, age(CURRENT_DATE, dob) AS "Student Age" FROM student;

-- Extract Year

SELECT extract(year FROM '2027-01-24'::DATE);
SELECT extract(Day FROM '2027-01-24'::DATE);