-- Active: 1747477117878@@127.0.0.1@5432@ph@public
CREATE TABLE "user"(
    id SERIAL PRIMARY Key,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
  id SERIAL PRIMARY Key,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE   -- with delete also other table where foriegn kay used 
);


 DROP TABLE post;
 DROP TABLE "user";
 

ALTER TABLE post
 ALTER COLUMN user_id SET NOT NULL;


INSERT INTO "user"(username)
 VALUES ('akash'),
        ('batash'),
        ('sagor'),
        ('nodi');

SELECT * FROM "user";

INSERT INTO post (title, user_id) VALUES
('First Post', 1),
('Learning SQL', 2),
('PostgreSQL Tips', 4),
('Final Project Ideas', 4);

SELECT * FROM post;

INSERT INTO post (title, user_id) VALUES('learn sql on next-2', 1);


--------  foreign key delete behavior----------------------------------

-- delete user and all post from all table

-- create table for cascade thats delete also user post relation data
CREATE TABLE post(
  id SERIAL PRIMARY Key,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE   -- with delete also other table where foriegn kay used 
);

DELETE FROM "user"
 WHERE id = 4 ;


-- create table for Set null 
CREATE TABLE post(
  id SERIAL PRIMARY Key,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL   -- with SET value NULL 
);

DELETE FROM "user"
 WHERE id = 4 ;


 -- create table and when user Delete set Default value
CREATE TABLE post(
  id SERIAL PRIMARY Key,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2    -- with SET Default Value 
);

DELETE FROM "user"
 WHERE id = 4 ;