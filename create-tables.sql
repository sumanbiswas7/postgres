CREATE TABLE likes (
    like_id BIGSERIAL PRIMARY KEY NOT NULL,
    like_by VARCHAR(255),
    like_timestamp TIMESTAMP NOT NULL
);

CREATE TABLE comments (
    comment_id BIGSERIAL PRIMARY KEY NOT NULL,
    comment_by VARCHAR(255),
    comment_text VARCHAR(255),
    comment_timestamp TIMESTAMP NOT NULL
);

CREATE TABLE posts (
    post_id BIGSERIAL PRIMARY KEY NOT NULL,
    post_url TEXT,
    post_caption VARCHAR (255),
    post_timestamp TIMESTAMP NOT NULL,
    post_likes BIGINT REFERENCES likes (like_id),
    post_comments BIGINT REFERENCES comments (comment_id)
);

CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY NOT NULL,
    user_name VARCHAR (50) NOT NULL,
    user_email VARCHAR (255) UNIQUE,
    user_country VARCHAR(50),
    user_posts BIGINT REFERENCES posts (post_id)
);

-- \i 'C:/Projects/boilerplate & helpers/postgres/create-tables.sql'