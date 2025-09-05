CREATE TABLE "users"(
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "country" TEXT NOT NULL
);


CREATE TABLE "creators"(
    "user_id" INTEGER PRIMARY KEY,
    "subscribers" INTEGER NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE "videos"(
    "id" INTEGER,
    "creator_id" INTEGER,
    "title" TEXT,
    "views" INTEGER,
    "upload_date" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("creator_id") REFERENCES "creators"("user_id")
);

CREATE TABLE "comments"(
    "id" INTEGER,
    "video_id" INTEGER,
    "user_id" INTEGER,
    "likes" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("video_id") REFERENCES "videos"("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);



