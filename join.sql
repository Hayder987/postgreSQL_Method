-- Active: 1747477117878@@127.0.0.1@5432@ph@public

CREATE TABLE "user"(
    id SERIAL PRIMARY Key,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
  id SERIAL PRIMARY Key,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) 
);

-- DROP Table
DROP TABLE post;
DROP TABLE "user";


INSERT INTO "user"(username)
 VALUES ('akash'),
        ('batash'),
        ('sagor'),
        ('nodi');

INSERT INTO post (title, user_id) VALUES
('First Post', 1),
('Learning SQL', 2),
('PostgreSQL Tips', 4),
('Final Project Ideas', 4);

INSERT INTO post(id, title, user_id) VALUES
(5,'this is test post', NULL);

-- get all data
SELECT * FROM "user";
SELECT * FROM post;

-- Join Table ---------------------------------------

-- join table and get data inner join
SELECT title, username FROM post
 JOIN "user" ON post.user_id = "user".id;

-- get all Data inner join
SELECT * FROM post
 JOIN "user" ON post.user_id = "user".id;

-- get all data with table rename key join
SELECT * FROM post as p
 JOIN "user" as u ON p.user_id = u.id;

 SELECT * FROM "user"
 JOIN post ON post.user_id = "user".id;

--  left join----------------
SELECT * FROM post as p
 LEFT JOIN "user" as u ON p.user_id = u.id;

-- right join------------
SELECT * FROM post as p
 RIGHT JOIN "user" as u ON p.user_id = u.id;

-- Full JOIN------------
SELECT * FROM post as p
 FULL JOIN "user" as u ON p.user_id = u.id;