CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY NOT NULL,
    user_name VARCHAR (50) NOT NULL,
    user_email VARCHAR (255) UNIQUE,
    user_country VARCHAR(50)
);

CREATE TABLE posts (
    post_id BIGSERIAL PRIMARY KEY NOT NULL,
    post_url TEXT,
    post_caption VARCHAR (255),
    post_timestamp TIMESTAMP NOT NULL,
    post_fk INT,
    CONSTRAINT fk_user FOREIGN KEY (post_fk) REFERENCES users(user_id)
);

CREATE TABLE likes (
    like_id BIGSERIAL PRIMARY KEY NOT NULL,
    like_fk INT NOT NULL,
    like_by VARCHAR(255),
    like_timestamp TIMESTAMP NOT NULL,
    CONSTRAINT fk_like_posts FOREIGN KEY (like_fk) REFERENCES posts(post_id)
);

CREATE TABLE comments (
    comment_id BIGSERIAL PRIMARY KEY NOT NULL,
    comment_fk INT NOT NULL,
    comment_by VARCHAR(255),
    comment_text VARCHAR(255),
    comment_timestamp TIMESTAMP NOT NULL,
    CONSTRAINT fk_comment_posts FOREIGN KEY (comment_fk) REFERENCES posts(post_id)
);

-- \i 'C:/Projects/boilerplate & helpers/postgres/create-tables.sql'