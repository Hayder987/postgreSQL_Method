-- Active: 1747406855061@@127.0.0.1@5432@ph
SELECT
    *
FROM
    person2;

-- add column 
ALTER TABLE person2
ADD COLUMN email VARCHAR(50) DEFAULT 'abc@gmail.com' NOT NULL;

INSERT INTO person2 VALUES(6, 'test', 65);

-- delete column
ALTER TABLE person2 
 DROP COLUMN email;

--  rename column 
ALTER TABLE person2
 RENAME COLUMN age to user_age;

-- change data Type
 ALTER TABLE person2
  ALTER COLUMN user_name TYPE VARCHAR(50);

-- set constrains
  ALTER TABLE person2
   ALTER COLUMN user_age set NOT NULL;

   -- Delete constrains
  ALTER TABLE person2
   ALTER COLUMN user_age DROP NOT NULL;

-- add constrain
   ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age);

-- drop Table
DROP TABLE person3;

---------TRUNCATE-------------------
-- delete all row data on table
TRUNCATE TABLE person2;