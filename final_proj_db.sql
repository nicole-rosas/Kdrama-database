DROP DATABASE kdrama;
CREATE DATABASE IF NOT EXISTS kdrama;
USE kdrama;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(64)
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
	genre_name VARCHAR(200) PRIMARY KEY UNIQUE
);

DROP TABLE IF EXISTS tag;
CREATE TABLE tag (
	tag_name VARCHAR(200) PRIMARY KEY UNIQUE
);

DROP TABLE IF EXISTS actors;
CREATE TABLE actors (
	actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(200),
    actor_bday DATE,
    actor_desc VARCHAR(10000),
    num_awards INT
);

DROP TABLE IF EXISTS writer;
CREATE TABLE writer (
	writer_id INT PRIMARY KEY AUTO_INCREMENT,
    writer_name VARCHAR(200),
    writer_bday DATE,
    writer_desc VARCHAR(10000),
    num_awards INT
);

DROP TABLE IF EXISTS director;
CREATE TABLE director (
	director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(200),
    director_bday DATE,
    director_desc VARCHAR(10000),
    num_awards INT
);

DROP TABLE IF EXISTS network;
CREATE TABLE network(
	network_name VARCHAR(64) PRIMARY KEY UNIQUE,
    year_founded YEAR,
    location_city VARCHAR(64)
);

DROP TABLE IF EXISTS kdrama;
CREATE TABLE kdrama (
	drama_ID INT PRIMARY KEY AUTO_INCREMENT,
    drama_title VARCHAR(200),
    rating DOUBLE,
    drama_year YEAR,
    num_episodes INT,
    synopsis VARCHAR(10000),
    director_id INT,
    writer_id INT, -- NEW
    CONSTRAINT director_fk
		FOREIGN KEY (director_id)
		REFERENCES director (director_id) 
        ON UPDATE CASCADE ON DELETE CASCADE,
	 CONSTRAINT writer_fk
		FOREIGN KEY (writer_id)
		REFERENCES writer (writer_id) 
        ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS drama_awards;
CREATE TABLE drama_awards (
	award_ID INT PRIMARY KEY AUTO_INCREMENT, 
	award_title VARCHAR(300),
	award_year YEAR,
    drama_ID INT,
    CONSTRAINT drama_fk2
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS drama_genre;
CREATE TABLE drama_genre (
	drama_ID INT,
    genre_name VARCHAR(200),
    PRIMARY KEY (drama_ID, genre_name),
    CONSTRAINT drama_genre_fk
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT genre_fk
		FOREIGN KEY (genre_name)
		REFERENCES genre (genre_name)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS drama_tag;
CREATE TABLE drama_tag (
	drama_ID INT,
    tag_name VARCHAR(64),
    PRIMARY KEY (drama_ID, tag_name),
    CONSTRAINT drama_fk3
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT tag_fk
		FOREIGN KEY (tag_name)
		REFERENCES tag (tag_name)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS drama_character;
CREATE TABLE drama_character (
	char_name VARCHAR(200),
    char_role VARCHAR(300),
    actor_id INT,
    drama_ID INT,
    PRIMARY KEY (char_name, drama_ID),
    CONSTRAINT drama_char_fk
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT actor_fk2
		FOREIGN KEY (actor_id)
		REFERENCES actors (actor_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS drama_actors;
CREATE TABLE drama_actors (
    drama_ID INT,
    actor_id INT,
    PRIMARY KEY (drama_ID, actor_id),
    CONSTRAINT drama_fk4
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT actor_fk3
		FOREIGN KEY (actor_id)
		REFERENCES actors (actor_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS drama_network;
CREATE TABLE drama_network (
	drama_ID INT,
    network_name VARCHAR(64),
    PRIMARY KEY (drama_ID, network_name),
    CONSTRAINT drama_prov_fk
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT network_fk
		FOREIGN KEY (network_name)
		REFERENCES network (network_name)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

DROP TABLE IF EXISTS user_reviews;
CREATE TABLE user_reviews (
	rid INT PRIMARY KEY AUTO_INCREMENT,
    text_review VARCHAR(10000),
    drama_ID INT,
    user_id INT,
    user_rating DOUBLE, -- NEW
	CONSTRAINT drama_review_fk
		FOREIGN KEY (drama_ID)
		REFERENCES kdrama (drama_ID)
        ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT user_fk
		FOREIGN KEY (user_id)
		REFERENCES users (user_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

