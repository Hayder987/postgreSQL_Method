-- Active: 1747477117878@@127.0.0.1@5432@orin@public
/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();

CREATE TRIGGER TR
BEFORE DELETE
ON "user"    -- ON table_name
FOR EACH ROW

SELECT * FROM "user";

CREATE TABLE my_user(
    user_name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO my_user VALUES('orin', 'orin@gmail.com')

SELECT * FROM my_user;

CREATE TABLE deleted_user_info(
    deleted_user_name VARCHAR(50),
    delete_date TIMESTAMP
);

SELECT * FROM deleted_user_info

-- Create Trigger
CREATE TRIGGER save_deleted_user
BEFORE DELETE
ON my_user
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user_info();

-- trigger Function
CREATE OR REPLACE Function save_deleted_user_info()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
 BEGIN
  INSERT INTO deleted_user_info VALUES (OLD.user_name, now());
  RETURN OLD;
 END
$$;



DELETE FROM my_user WHERE user_name = 'orin';
