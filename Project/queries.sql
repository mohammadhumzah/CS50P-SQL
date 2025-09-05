-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- Query fo finding top 3 most viewed video by a creator given creator id
SELECT "title", "views" FROM "videos"
WHERE "creator_id" = 1
ORDER BY "views" DESC
LIMIT 3;

--Query for finding channels with more than 10 millions subs in India
SELECT "name" FROM "users"
JOIN "creators" ON "creators"."user_id" = "users"."id"
WHERE "creators"."subscribers" > 1000000 AND "users"."country" = 'India';

-- Listing all videos that were uploaded after a particular date  arranged in decreasing order of comments
SELECT "title", COUNT("comments"."id") AS "total_comments" FROM "videos"
LEFT JOIN "comments" ON "comments"."video_id" = "videos"."id"
WHERE "videos"."upload_date" > 2018-12-31
GROUP BY "videos"."id"
ORDER BY "total_comments" DESC;

--User who has written most comments
SELECT "name", COUNT("comments"."id") AS "comments_made" FROM "users"
JOIN "comments" ON "comments"."user_id" = "users"."id"
GROUP BY "users"."id"
ORDER BY "comments_made"
LIMIT 1;



-- Insert data into users
INSERT INTO "users" ("id","name","country") VALUES
(1,'MrBeast','USA'),
(2,'CarryMinati','India'),
(3,'Ducky Bhai','Pakistan'),
(4,'Alice','USA'),
(5,'Rahul','India');

-- Insert creators which is subset of users
INSERT INTO "creators" ( "user_id","subscribers") VALUES
(1, 250000000),
(2, 42000000),
(3, 6000000);

--Insert into videos table some data

INSERT INTO "videos" ("id","creator_id","title","views","upload_date") VALUES
(1,1,'World''s Largest Pizza',300000000,'2023-01-15'),
(2,2,'YouTube vs TikTok',200000000,'2021-06-01'),
(3,3,'Funny Roast 2024',15000000,'2024-02-20'),
(4,1,'24 Hours in Antarctica',180000000,'2022-12-01'),
(5,2,'Gaming Setup Roast',50000000,'2023-03-10');


--Data for comments table
INSERT INTO "comments" ("id","video_id","user_id","likes") VALUES
(1,1,4,10000),
(2,1,5,8000),
(3,2,4,20000),
(4,3,5,12000),
(5,5,4,5000);
