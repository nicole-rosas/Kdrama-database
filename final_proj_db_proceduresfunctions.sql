USE kdrama;
-- ---------------------------------------------------------------------------------------
-- CREATES
-- ---------------------------------------------------------------------------------------

-- create a user review associated with a user, rating, and kdrama. If invalid rating_num 
-- (rating_id), leaves without doing anything
DROP PROCEDURE IF EXISTS add_review;
DELIMITER $$

CREATE PROCEDURE add_review(IN text_reviews VARCHAR(500),
    IN drama_name VARCHAR(64), IN username VARCHAR(64), IN overall DOUBLE)
BEGIN
	DECLARE drama_exists INT;
    DECLARE user_exists INT;
    DECLARE drama_num INT;
    DECLARE user_num INT;
    SELECT count(*) INTO drama_exists FROM kdrama WHERE drama_title = drama_name;
    SELECT count(*) INTO user_exists FROM users WHERE user_name = username;
    
    -- if drama doesn't already exist
    IF (drama_exists = 0) THEN
		INSERT INTO kdrama(drama_title) VALUES (drama_name);
    END IF;
    
    -- if user doens't exist
    IF (user_exists = 0) THEN
		INSERT INTO users(user_name) VALUES (username);
    END IF;
    
    -- select corresponding ids 
    SELECT drama_ID INTO drama_num FROM kdrama WHERE drama_title = drama_name LIMIT 1;
    SELECT user_id INTO user_num FROM users WHERE user_name = username LIMIT 1;
    INSERT INTO user_reviews(text_review, drama_ID,
		user_id, user_rating ) VALUES (text_reviews, drama_num, user_num, overall);
END $$
DELIMITER ;  

-- test
/*
DELETE FROM  user_reviews WHERE text_review = 'I really enjoyed watching this drama! Highly recommend!';
CALL add_review('I really enjoyed watching this drama! Highly recommend!', 'Move To Heaven', 'kzeng24', 9.3);
SELECT * FROM user_reviews;*/

-- create a connection between actor and character and db
DROP PROCEDURE IF EXISTS create_character_connect_actor;
DELIMITER $$ 
CREATE PROCEDURE create_character_connect_actor(
	IN title VARCHAR(200),
    IN act_name VARCHAR(200),
    IN char_name VARCHAR(200),
    IN char_role VARCHAR(300),
    IN act_bday DATE,
    IN act_desc VARCHAR(10000)
)
BEGIN
	DECLARE drama_exists INT;
    DECLARE actor_exists INT;
    DECLARE act_id INT;
    DECLARE drama_id2 INT;
    SELECT count(*) INTO drama_exists FROM kdrama WHERE drama_title = title;
    SELECT count(*) INTO actor_exists FROM actors WHERE actor_name = act_name;
    
	IF (drama_exists = 0) THEN
		INSERT INTO kdrama(drama_title) VALUES (title);
    END IF;
    
	IF (actor_exists = 0) THEN
		INSERT INTO actors(actor_name, actor_bday, actor_desc) VALUES (act_name, act_bday, act_desc);
    END IF;
    
	SELECT drama_ID INTO drama_id2 FROM kdrama WHERE drama_title = title LIMIT 1;
    SELECT actor_id INTO act_id FROM actors WHERE actor_name = act_name LIMIT 1;
    INSERT INTO drama_character VALUES (char_name, char_role, act_id, drama_id2);
END$$
DELIMITER ;  

-- test
-- for pre-existing drama 
/*
DELETE FROM drama_character WHERE char_name = 'Choi Taek';
CALL create_character_connect_actor('Reply 1988', 'Park Bo-gum', 'Choi Taek',
'an internationally reknowned genius Baduk player who has a quiet personality',
'1993-06-16', 'Park Bo-gum is an actor and singer who gained recognition for his diverse range of roles in film and television, notably a psychopathic lawer in Hello Monster, genius Go player in Reply 1988, and a model who overcomes various hardships in Record of Youth');
SELECT * FROM actors WHERE actor_name = 'Park Bo-gum';
SELECT * FROM drama_character WHERE char_name = 'Choi Taek';

-- for non-existing drama
DELETE FROM drama_character WHERE char_name = 'Crown Prince Lee Shin';
CALL create_character_connect_actor('Princess Hours', 'Ju Ji-hoon', 'Crown Prince Lee Shin',
'a lonely young man who decides to proceed with an arranged marriage',
'1982-05-16', 'Ju Ji-hoon is an actor and model. His first leading role was in the 2006 hit drama Princess Hours. His other notable works include Antique and Kingdom.');
SELECT * FROM actors WHERE actor_name = 'Ju Ji-hoon';
SELECT * FROM drama_character WHERE char_name = 'Crown Prince Lee Shin';
SELECT * FROM kdrama WHERE drama_title = 'Princess Hours';*/

-- create an award
DROP PROCEDURE IF EXISTS create_award;
DELIMITER $$ 
CREATE PROCEDURE create_award(
	IN d_title VARCHAR(200),
    IN a_title VARCHAR(300),
    IN a_year YEAR
)
BEGIN
	DECLARE drama_exists INT;
    DECLARE drama_id3 INT;
    SELECT count(*) INTO drama_exists FROM kdrama WHERE drama_title = d_title;
    
    IF (drama_exists = 0) THEN
		INSERT INTO kdrama(drama_title) VALUES (d_title);
    END IF;
    
    SELECT drama_ID INTO drama_id3 FROM kdrama WHERE drama_title = d_title LIMIT 1;
    INSERT INTO drama_awards(award_title, award_year, drama_ID) VALUES (a_title, a_year, drama_id3);
END$$
DELIMITER ;  

-- test
-- if drama exists already
/*
DELETE FROM drama_awards WHERE award_title = '1st Seoul International Drama Awards: Princess Hours';
CALL create_award(
	'Princess Hours',
    '1st Seoul International Drama Awards: Princess Hours',
    2006);
SELECT * FROM drama_awards WHERE award_title = '1st Seoul International Drama Awards: Princess Hours';

-- if drama does not exist already
DELETE FROM drama_awards WHERE award_title = '4th Seoul International Drama Awards: Boys Over Flowers';
CALL create_award(
	'Boys Over Flowers',
    '4th Seoul International Drama Awards: Boys Over Flowers',
    2009);
SELECT * FROM kdrama WHERE drama_title = 'Boys Over Flowers';
SELECT * FROM drama_awards WHERE award_title = '4th Seoul International Drama Awards: Boys Over Flowers';*/

-- ----------------------------------------------------------
-- RELATED FUNCTIONS AND PROCEDURES TO CREATE A KDRAMA
-- --------------------------------------------------------
-- add a writer if necessary and return writer id (if there are multiple writers of the
-- same name, selects first writer)
DROP FUNCTION IF EXISTS check_writer;
DELIMITER $$ 
CREATE FUNCTION check_writer(writ_name VARCHAR(200)) 
	RETURNS INT 
    DETERMINISTIC 
    READS SQL DATA
BEGIN
	DECLARE writer_exists INT;
    DECLARE writ_id INT;
    SELECT count(*) INTO writer_exists FROM writer WHERE writ_name = writer_name;
    
    IF (writer_exists = 0) THEN
		INSERT INTO writer(writer_name) VALUES (writ_name);
	END IF;
    
    SELECT writer_id INTO writ_id FROM writer WHERE writ_name = writer_name LIMIT 1;
    RETURN writ_id;
END$$
DELIMITER ;  

-- -----------------------------------------------------------------
-- add director if necessary and return director id
DROP FUNCTION IF EXISTS check_director;
DELIMITER $$ 
CREATE FUNCTION check_director(dir_name VARCHAR(200)) 
	RETURNS INT 
    DETERMINISTIC 
    READS SQL DATA
BEGIN
	DECLARE dir_exists INT;
    DECLARE dir_id INT;
    SELECT count(*) INTO dir_exists FROM director WHERE dir_name  = director_name;
    
    IF (dir_exists = 0) THEN
		INSERT INTO director(director_name) VALUES (dir_name );
	END IF;
    
    SELECT director_id INTO dir_id FROM director WHERE dir_name  = director_name LIMIT 1;
    RETURN dir_id;
END$$
DELIMITER ;  

-- ------------------------------------
-- SUB PROCEDURES TO ADD GENRE, TAG, NETWORK

DROP PROCEDURE IF EXISTS create_network;
DELIMITER $$ 
CREATE PROCEDURE create_network(IN network VARCHAR(64))
BEGIN
	DECLARE network_exists INT;
    SELECT count(*) INTO network_exists FROM network WHERE network = network_name;
    
    IF (network_exists = 0) THEN
		INSERT INTO network(network_name) VALUES (network);
	END IF;
END$$
DELIMITER ;  

DROP PROCEDURE IF EXISTS create_genre;
DELIMITER $$ 
CREATE PROCEDURE create_genre(IN genre VARCHAR(200))
BEGIN
	DECLARE genre_exists INT;
    SELECT count(*) INTO genre_exists FROM genre WHERE genre = genre_name;
    
    IF (genre_exists = 0) THEN
		INSERT INTO genre(genre_name) VALUES (genre);
	END IF;
END$$
DELIMITER ;  

DROP PROCEDURE IF EXISTS create_tag;
DELIMITER $$ 
CREATE PROCEDURE create_tag(IN tag VARCHAR(200))
BEGIN
	DECLARE tag_exists INT;
    SELECT count(*) INTO tag_exists FROM tag WHERE tag = tag_name;
    
    IF (tag_exists = 0) THEN
		INSERT INTO tag(tag_name) VALUES (tag);
	END IF;
END$$
DELIMITER ;  

-- ----------------------------------------------------------------
-- CREATE KDRAMA
DROP PROCEDURE IF EXISTS add_kdrama;
DELIMITER $$ 
CREATE PROCEDURE add_kdrama(
	IN title VARCHAR(200),
    IN rating_num DOUBLE,
    IN d_year YEAR,
    IN num_ep INT,
    IN synop VARCHAR(10000),
    IN dir_name VARCHAR(200),
    IN writ_name VARCHAR(200),
    IN network VARCHAR(64),
    IN genre VARCHAR(200),
    IN tag VARCHAR(200)
)
BEGIN
	DECLARE writer_id INT;
    DECLARE director_id INT;
    DECLARE kdrama_id INT;
    
    SELECT check_writer(writ_name) INTO writer_id;
    SELECT check_director(dir_name) INTO director_id;
    CALL create_network(network);
    CALL create_genre(genre);
    CALL create_tag(tag);
    
    INSERT INTO kdrama(drama_title, rating, drama_year, num_episodes, synopsis, director_id, writer_id)
    VALUES (title, rating_num, d_year, num_ep, synop, director_id, writer_id);
    
    -- obtain new drama_id to update many-many tables
    SELECT drama_ID INTO kdrama_id FROM kdrama WHERE drama_title = title LIMIT 1;
    INSERT INTO drama_genre(drama_ID, genre_name) VALUES (kdrama_id, genre);
    INSERT INTO drama_tag(drama_ID, tag_name) VALUES (kdrama_id, tag);
    INSERT INTO drama_network(drama_ID, network_name) VALUES (kdrama_id, network);
END$$
DELIMITER ;  

-- test
/*
CALL delete_kdrama(29);
SELECT * FROM kdrama;
CALL add_kdrama(
	'Business Proposal',
    9.4,
    2022,
    12,
    'Business Proposal tells the story of an employee who accepts to go on a blind date in place of her friend, but finds out that her date is actually her boss',
    'Park Seon-ho',
    'Han Seol-hee',
    'MBC',
    'Romantic Comedy',
    'Quirky'
);
SELECT * FROM kdrama WHERE drama_title = 'Business Proposal';
SELECT * FROM drama_tag WHERE drama_ID = 29;
SELECT * FROM tag WHERE tag_name = 'Quirky';
SELECT * FROM drama_genre WHERE drama_ID = 29;
SELECT * FROM genre WHERE genre_name = 'Romantic Comedy';
SELECT * FROM drama_network WHERE drama_ID = 29;
SELECT * FROM director;
SELECT * FROM writer;
SELECT * FROM network;*/

-- ----------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------
-- READ/SELECT PROCEDURES
-- ---------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------

-- select drama by title
DROP PROCEDURE IF EXISTS find_drama_title;
DELIMITER $$
CREATE PROCEDURE find_drama_title(
	IN title VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE INSTR(drama_title, title) > 0 GROUP BY drama_ID;
END$$
DELIMITER ;  

-- select drama by actor
DROP PROCEDURE IF EXISTS find_drama_actor;
DELIMITER $$
CREATE PROCEDURE find_drama_actor(
	IN act_name VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE INSTR(actors.actor_name, act_name) > 0 GROUP BY drama_id;
END$$
DELIMITER ;  

-- select drama by year
DROP PROCEDURE IF EXISTS find_drama_year;
DELIMITER $$
CREATE PROCEDURE find_drama_year(
	IN yr INT
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE drama_year = yr GROUP BY drama_id;
END$$
DELIMITER ;  

-- select drama by station
DROP PROCEDURE IF EXISTS find_drama_station;
DELIMITER $$
CREATE PROCEDURE find_drama_station(
	IN net_name VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors 
    NATURAL JOIN drama_awards NATURAL JOIN drama_network
	WHERE net_name = drama_network.network_name GROUP BY drama_id;
END$$
DELIMITER ;  

-- select drama by rating
DROP PROCEDURE IF EXISTS find_drama_rating;
DELIMITER $$
CREATE PROCEDURE find_drama_rating(
	IN rate DOUBLE
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE rating >= rate GROUP BY drama_id;
END$$
DELIMITER ;  

-- view all awards associated with each drama
DROP PROCEDURE IF EXISTS view_drama_awards;
DELIMITER $$
CREATE PROCEDURE view_drama_awards()
BEGIN
	SELECT drama_title, award_title, award_year FROM kdrama NATURAL JOIN drama_awards;
END$$
DELIMITER ;  

-- find actor by name
DROP PROCEDURE IF EXISTS find_actor_name;
DELIMITER $$
CREATE PROCEDURE find_actor_name(IN a_name VARCHAR(200))
BEGIN
	SELECT * FROM actors WHERE INSTR(actor_name, a_name) > 0;
END$$ 
DELIMITER ;  

-- find actor by year
DROP PROCEDURE IF EXISTS find_actor_year;
DELIMITER $$
CREATE PROCEDURE find_actor_year(IN yr YEAR)
BEGIN
	SELECT * FROM actors WHERE YEAR(actor_bday) = yr;
END$$
DELIMITER ;  

-- find actor by drama
DROP PROCEDURE IF EXISTS find_actor_drama;
DELIMITER $$
CREATE PROCEDURE find_actor_drama(IN k_title VARCHAR(200))
BEGIN
	SELECT actor_id, actor_name, actor_bday, actor_desc, num_awards
    FROM kdrama NATURAL JOIN drama_actors NATURAL JOIN actors WHERE INSTR(drama_title, k_title) 
    GROUP BY actor_id;
END$$
DELIMITER ;  

-- see all reviews
DROP PROCEDURE IF EXISTS see_all_reviews;
DELIMITER $$
CREATE PROCEDURE see_all_reviews() 
BEGIN
	SELECT drama_title, rid, text_review, user_id, user_rating FROM
    kdrama NATURAL JOIN user_reviews GROUP BY kdrama.drama_id;
END$$
DELIMITER ;  

-- ----------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------
-- UPDATES
-- ---------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------

-- update an award with the given information
DROP PROCEDURE IF EXISTS update_award;
DELIMITER $$ 
CREATE PROCEDURE update_award(
	IN a_id INT,
	IN d_title VARCHAR(200),
    IN a_title VARCHAR(300),
    IN a_year YEAR
)
up_aw: BEGIN
	DECLARE drama_exists INT;
    DECLARE award_exists INT;
    DECLARE dram_id INT;
    SELECT count(*) INTO drama_exists FROM kdrama WHERE drama_title = d_title;
    SELECT count(*) INTO award_exists FROM drama_awards  WHERE award_ID = a_id;
    
    IF (drama_exists = 0 OR award_exists = 0) THEN
		leave up_aw; -- exit procedure if drama doens't exist
    END IF;
    
    SELECT drama_ID INTO dram_id FROM kdrama WHERE drama_title = d_title LIMIT 1;
    UPDATE drama_awards
    SET
		award_title = a_title,
        award_year = a_year,
		drama_ID = dram_id
	WHERE award_ID = a_id;
END$$
DELIMITER ;

-- test
-- if drama exists
/*
SELECT * FROM drama_awards WHERE award_ID = 1;
CALL update_award(1,
	'Move To Heaven',
    '4th Asia Contents Award: Best Creative Award',
    2023
);
SELECT * FROM drama_awards WHERE award_ID = 1;

-- if award doesn't exist
SELECT * FROM drama_awards WHERE award_ID = 100;
CALL update_award(100,
	'Move To Heaven',
    '4th Asia Contents Award: Best Creative Award',
    2023
);
SELECT * FROM drama_awards WHERE award_ID = 100;

-- if drama doesn't exist
CALL update_award(1,
	'Move To Heavennn',
    '4th Asia Contents Award: Best Creative Award',
    2023
);
SELECT * FROM drama_awards WHERE award_ID = 1;*/

-- update a rating with the given information
DROP PROCEDURE IF EXISTS update_rating;
DELIMITER $$ 
CREATE PROCEDURE update_rating(
	IN rating_id INT,
    IN texts VARCHAR(10000),
    IN rating DOUBLE
)
up_rev: BEGIN
    DECLARE rating_exists INT;
    SELECT count(*) INTO rating_exists FROM user_reviews WHERE rid = rating_id;
    IF (rating_exists = 0) THEN
		leave up_rev; -- exit procedure if rating doens't exist
    END IF;
    
    UPDATE user_reviews 
    SET
		text_review = texts,
        user_rating  = rating
	WHERE rid = rating_id;
END$$
DELIMITER ; 

-- test
/*
CALL update_rating(
	11,
    'OMG MUST WATCH!!! <33',
    9.7
);
SELECT * FROM user_reviews WHERE rid = 11;
SELECT * FROM user_reviews;*/


-- update a kdrama with the given info
DROP PROCEDURE IF EXISTS update_kdrama;
DELIMITER $$ 
CREATE PROCEDURE update_kdrama(
	IN d_id INT,
	IN title VARCHAR(200),
    IN rating_num DOUBLE,
    IN num_ep INT,
    IN synop VARCHAR(10000)
)
up_kd: BEGIN
	DECLARE drama_exists INT;
    SELECT count(*) INTO drama_exists FROM kdrama WHERE drama_id = d_id;
	IF (drama_exists = 0) THEN
		leave up_kd; -- exit procedure if drama doens't exist
    END IF;
    
	UPDATE kdrama  
    SET
		drama_title = title,
        rating = rating_num,
        num_episodes = num_ep,
        synopsis = synop
	WHERE drama_id = d_id;

    
END$$
DELIMITER ;

-- test
/*
CALL update_kdrama(
	2,
	'Hospital Playlist 2',
    9.2,
    16,
    'This picks up after season 1 that tells stories of people going through their days that are seemingly ordinary but actually special, at the hospital.'
);
SELECT * FROM kdrama WHERE drama_ID = 2;*/

-- ----------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------
-- DELETES
-- ---------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------

-- deletes kdramas with given id (including from all related tables)
DROP PROCEDURE IF EXISTS delete_kdrama;
DELIMITER $$ 
CREATE PROCEDURE delete_kdrama(IN k_id INT)
BEGIN
	DELETE FROM drama_awards WHERE drama_ID = k_id;
	DELETE FROM drama_genre WHERE drama_ID = k_id;
	DELETE FROM drama_tag WHERE drama_ID = k_id;
	DELETE FROM drama_network WHERE drama_ID = k_id;
    DELETE FROM drama_character WHERE drama_ID = k_id;
	DELETE FROM drama_actors WHERE drama_ID = k_id;
	DELETE FROM user_reviews WHERE drama_ID = k_id;
	DELETE FROM kdrama WHERE drama_ID = k_id;
END$$

DELIMITER ;

-- test
/*
select * from kdrama;
select * from drama_awards;
select * from drama_genre order by drama_id;
call delete_kdrama(1);
call delete_kdrama(1444);*/


DELIMITER $$
-- delete review with given id
DROP PROCEDURE IF EXISTS delete_review;
CREATE PROCEDURE delete_review(IN rev_num INT)
delete_rev: BEGIN
	DECLARE rev_exists INT;
    SELECT count(*) INTO rev_exists FROM user_reviews WHERE rid = rev_num;
    
    -- if rating doesn't exist, exit procedure
    IF (rev_exists = 0) THEN
		LEAVE delete_rev;
	END IF;
    
    DELETE FROM user_reviews WHERE rid = rev_num;
END$$
DELIMITER ;

-- test
/*
SELECT * FROM user_reviews WHERE rid = 2;
CALL delete_review(2);
SELECT * FROM user_reviews WHERE rid = 2;*/


