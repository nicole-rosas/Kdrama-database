CREATE DATABASE  IF NOT EXISTS `kdrama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kdrama`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: kdrama
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(200) DEFAULT NULL,
  `actor_bday` date DEFAULT NULL,
  `actor_desc` varchar(10000) DEFAULT NULL,
  `num_awards` int DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Tang Joon-Sang','2003-08-13','Tang Jun-sang is a South Korean actor who gained recognition for his role in the series Crash Landing on You and his leading role in Move to Heaven and Racket Boys.',2),(2,'Hong Seung-hee','1997-08-19','Hong Seung-hee is a South Korean actress known for her roles in Just Dance, Navillera, and Move to Heaven.',0),(3,'Cho Jung-seok','1980-12-26','Cho Jung-seok is an actor who began his career in theater.',37),(4,'Yoo Yeon-seok','1984-04-11','Yoo Yeon-seok is an actor who made his debut in 2003 with a small role in Oldboy. His notable works include the films Re-encounter, A Werewolf Boy, and Perfect Proposal, as well as the tv series Mr. Sunshine and Hospital Playlist.',11),(5,'Bae Doona ','2018-11-01','Bae Doona is an actress and photographer known for her works in Kingdom, The Silent Sea, and Mr. Vengeance',19),(6,'Moon Chae-won','1986-11-13','Moon Chae-won is an actress who first attracted attention in 2008 for her supporting role in Painter of the Wind. 2011 marked her career breakthrough with leading roles in The Princess\' Man and War of the Arrows.',20),(7,'Lee Ji-eun','1993-05-16','Lee Ji-eun (IU) is a sing-songwriter, record producer, and actress. Her stage name IU means \"you and I become one through music\"\"\"',125),(8,'Park Hae-soo','1981-11-21','Park Hae-soo is an actor best known for his roles in Prison Playbook and Squid Game',3),(9,'Jung Kyung-ho','1983-08-31','Jung Kyung-ho is an actor well known for his roles in I\'m Sorry, I Love You and Time Between Dog and Wolf',7),(10,'Lee Hye-ri','1994-06-09','Lee Hye-ri is an actress, singer, and television personality. She rose to fame as a member of girl group Girl\'s day and was named as the \"Nation\'s Little Sister\"\"\"',14),(11,'Go Kyung-pyo','1990-06-11','Go Kyung-pyo is an actor and comedian. He gained recognition for his role in the series Reply 1988',1),(12,'Kim Soo-hyun','1988-02-16','Kim Soo-hyun is one of the highest paid actors in South Korea. From 2012 to 2016, he has appeared in Forbes Korean Power Celebrity 40 list and was featured by Forbes in their 30 Under 30 Asia list of 2016',74),(13,'Seo Ye-ji','1990-04-06','Seo Ye-ji is an actress who began her acting career in the sitcom Potato Star 2013QR3 and rose to prominence with the romance drama It\'s Okay to Not Be Okay in 2020',7),(14,'Shin Hye-sun','1989-08-31','Shin Hye-sun is an actress who made her debut in the series School 2013 and became well-known in the weekend drama My Golden Life which garnered more than 8 million viewers.',8),(15,'Kim Jung-hyun','1990-04-05','Kim Jung-hyun is an actor best known for his lead roles in popular television series School 2017 and Welcome to Waikiki. He gained international recognition by starring in Crash Landing on You which ranks as one of the highest rated korean dramas in cable television history.',1),(16,'Lee Bo-Young','1979-01-12','Lee Bo-Young is an actress best known for her roles in My Daughter Seo-young, I Can Hear Your Voice, and Mine. She was Gallup Korea\'s Television Actor of the Year in 2013',20),(17,'Heo Yool','2009-08-29','Heo Yool is a child actress best known for starring in the drama Mother',1),(18,'Lee Je-hoon','1984-07-04','Lee Je-hoon is an actor who started his career in indie films, then went on to appear in commercial films like The Front Line, Architecture 101, and My Paparotti and series like Fashion King.',30),(19,'Kim Hye-soo','1970-09-05','Kim Hye-soo is an actress best known for her roles in the films Tazza: The High Rollers, The Thieves, and Familyhood, as well as the tv series Signal and Hyena. She is known for her versatility and acting range.',55),(20,'Park In-hwan','1945-01-06','Park In-hwan is a veteran actor with more than four decades of career. ',10),(21,'Song Kang','1994-04-23','Song Kang is an actor who is popularly known as the \"Son of Netflix\"\" because most of his series are aired on the platform.\"',4),(22,'Han Hyo-joo','1987-02-22','Han Hyo-joo is a film and television actress, model, and singer. She is known for leading roles in series such as Heaven & Earth, Iljimae, Dong Yi, W, and Happiness, as well as the film Masquerade which is one of the highest grossing Korean films of all time.',34),(23,'Park Hyung-sik','1991-11-16','Park Hyung-sik is an actor, singer, and dancer. He is a member of the kpop boy group ZE:A and also stars in musicial theatre productions. ',12),(24,'Song Joong-ki','1985-09-19','Song Joong-ki is an actor who rose to fame in the historical coming-of-age drama Sungkyunkwan Scandal in 2010 and the variety show Running Man as one of the original cast members. Since then, he has played a diverse spectrum of roles in the television series The Innocent Man, Descendants of the Sun, and Arthdal Chronicles, as well as the hit films A Werewolf Boy and Space Sweepers.',38),(25,'Ok Taec-yeon','1988-12-27','Ok Taec-yeon is a rapper, singer, songwriter, actor, and entrepreneur. He is the main rapper of the boy band 2PM',2),(26,'Hyun Bin','1982-09-25','Hyun Bin is an actor who first gained wide recognition for his role in the 2005 romantic comedy television drama My Name is Kim Sam-soon. Since then, he has appeared in leading roles in other successful television shows include: Secret Garden, Memories of the Alhambra, and Crash Landing On You. The success of his works internationally established him as a top Hallyu star. He is one of the highest paid and most influencial actors in South Korea',24),(27,'Son Ye-jin','1982-01-11','Son Ye-jin is an actress who rose to fame in 2003 for The Classic and Summer Scent. Her early roles in films garnered her the title \"Nation\'s First Love\"\" and she since has won various acting recognitions and acted in high-profile films\"',51),(28,'Yum Jung-ah','1972-07-28','Yum Jung-ah is an actress who is known for her notable films A Tale of Two Sisters and The Big Swindle, as well as tv series Royal Family and Sky Castle',14),(29,'Lee Tae-ran','1975-03-25','Lee Tae-ran is an actress best known for her roles in dramas Yellow Hankerchief, My Rosy Life, and Sky Castle',3),(30,'Ju Ji-hoon','1982-05-16','Ju Ji-hoon is an actor and model. His first leading role was in the 2006 hit drama Princess Hours. His other notable works include Antique and Kingdom.',29),(31,'Lee Byung-hun','1970-07-12','Lee Byung-hun is an actor and singer. He received critical acclaim for his work in a wide variety of genres. Lee was Gallup Korea\'s Actor of the Year in the Film division in 2012.',87),(32,'Kim Tae-ri','1990-04-24','Kim Tae-ri is an actress best known for starring in The Handmaiden, Little Forest, and Mr. Sunshine. More recentlly, Kim gained further recognition for her leading role in the coming-of-age drama Twenty-Five Twenty-One.',18),(33,'Ji Chang-wook','1987-07-05','Ji Chang-wook is an actor and singer. He rose to fame for playing the lead role of Dong-hae in daily drama series Smile Again and had lead roles in series Warrior Baek Dong-soo, Empress Ki, and The K2.',10),(34,'Park Min-young','1986-03-04','Park Min-young is an actress who rose to fame in 2010 for her role in Sungkyunkwan Scandal and has since starred in popular tv series City Hunter, Glory Jane, A New Leaf, and Forecasting Love and Weather.',27),(35,'Cho Seung-woo','1980-03-28','Cho Seung-woo is an actor and singer best known for his leading roles in the films The Classic and Marathon, as well as in the stage musicials Jekyll & Hyde, and the Angry Inch and Man of La Mancha. ',27),(36,'Lee Sun-kyun','1975-03-02','Lee Sun-kyun is an actor who began his career in musicial theatre. For many years Lee was relegated to minor and supporting roles onscreen. He later worked with TV director Lee Yoon-jung on Taereung National Village in 2005 which led him to being cast in her later series Coffee Prince in 2007 which brough him mainstream popularity.',10),(37,'Lee Joon-gi','1982-04-17','Lee Joon-gi is an actor, singer, dancer, and model. He rose to fame on his first leading role playing a clown in the critically acclaimed film The King and the Clown. Since then, he has diversified into other genres such as historical dramas and action thrillers. The popularity of his work overseas, especially in Asia, have established him as a top Hallyu star.',43),(38,'Nam Joo-hyuk','1994-02-22','Nam Joo-hyuk is a model and actor who rose to prominence with his role in the tv series Who Are You: School 2015, Weightlifitng Fairy Kim Bok-joo, and Start Up. In 2021, he was featured in Forbes 30 Under 30 owning to his successful modeling and acting career.',15);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(200) DEFAULT NULL,
  `director_bday` date DEFAULT NULL,
  `director_desc` varchar(10000) DEFAULT NULL,
  `num_awards` int DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Kim Sung-ho','1970-01-09','Kim Sung-ho is a director who directed Move To Heaven ',NULL),(2,'Shin Won-ho','1975-08-28','Shin Won-ho is a director and television producer who is known for producing and directing the acclaimed anthology series Reply',4),(3,'Kim Cheol-kyu',NULL,'Kim Cheol-kyu is a director who directed popular tv series such as Flower of Evil, Mother, Chicago Typewriter, and Emergency Couple',1),(4,'Kim Won-seok',NULL,'Kim Won-seok is a television director who directed Sungkyunkwan Scandal in 2010, Monstar in 2013, Misaeng in 2014, Signal in 2016, and My Mister in 2018',5),(5,'Park Shin-woo',NULL,'Park Shin-woo is a director who directed the tv series Lovestruck in the City, It\'s Okay to Not Be Okay, Encounter, Jealousy Incarnate, and Angel Eyes',NULL),(6,'Yoon Sung-sik',NULL,'Yoon Sung-sik is a television director and producer most known for his works: Bridal Mask, Hwarang, Mr. Queen, and You\'re the Best, Lee Soon-shin',NULL),(7,'Han Dong-hwa',NULL,'Han Dong-hwa is a director who directed the tv series Navillera in 2021',NULL),(8,'Ahn Gil-ho',NULL,'Ahn Gil-ho is a director who directed the popular tv series: Happiness, Record of Youth, Memories of the Alhambra, Stranger, and Rooftop Prince',NULL),(9,'Kim Hee-won',NULL,'Kim Hee-won is a director who directed Vincenzo in 2021, The Crowned Clown in 2019, and Money Flower in 2017',1),(10,'Lee Jung-hyo','1974-10-09','Lee Jung-hyo is a famous director who has a directed a number of popular and award winning dramas such as Crash Landing on You, Romance is a Bonus Book, Criminal Minds, and Cruel City',NULL),(11,'Jo Hyun-tak',NULL,'Jo Hyun-tak is a director who directed notable tv series: Snowdrop, SKY Castle, and Dae Mul',1),(12,'Kim Seong-hun','1971-02-20','Kim Seong-hun is a film and television director. He directed A Hard Day in 2014 and has been working on Kingdom since 2019',7),(13,'Lee Eung-bok',NULL,'Lee Eung-bok is a director who directed famous dramas such as Jirisan, Sweet Home, Mr. Sunshine, Guardian: The Lonely and Great God, Descendants of the Sun, School 2013, and Dream High',NULL),(14,'Lee Jung-sub',NULL,'Lee Jung-sub is a director who directed the tv series: Angel\'s Last Mission: Love, Queen For Seven Days, Healer, and Bread Love and Dreams',NULL),(15,'Jung Ji-hyun',NULL,'Jung Ji-hyun is a director who directed dramas such as Twenty Five Twenty One, The King: Eternal Monarch, and Mr. Sunshine.',NULL);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_actors`
--

DROP TABLE IF EXISTS `drama_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_actors` (
  `drama_ID` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`drama_ID`,`actor_id`),
  KEY `actor_fk3` (`actor_id`),
  CONSTRAINT `actor_fk3` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `drama_fk4` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_actors`
--

LOCK TABLES `drama_actors` WRITE;
/*!40000 ALTER TABLE `drama_actors` DISABLE KEYS */;
INSERT INTO `drama_actors` VALUES (1,1),(1,2),(2,3),(2,4),(17,5),(20,5),(3,6),(5,7),(6,8),(6,9),(7,10),(7,11),(8,12),(8,13),(9,14),(9,15),(10,16),(10,17),(11,18),(11,19),(12,20),(12,21),(13,22),(13,23),(14,24),(14,25),(15,26),(15,27),(16,28),(16,29),(17,30),(18,31),(4,32),(18,32),(19,33),(19,34),(20,35),(5,36),(3,37),(4,38);
/*!40000 ALTER TABLE `drama_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_awards`
--

DROP TABLE IF EXISTS `drama_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_awards` (
  `award_ID` int NOT NULL AUTO_INCREMENT,
  `award_title` varchar(300) DEFAULT NULL,
  `award_year` year DEFAULT NULL,
  `drama_ID` int DEFAULT NULL,
  PRIMARY KEY (`award_ID`),
  KEY `drama_fk2` (`drama_ID`),
  CONSTRAINT `drama_fk2` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_awards`
--

LOCK TABLES `drama_awards` WRITE;
/*!40000 ALTER TABLE `drama_awards` DISABLE KEYS */;
INSERT INTO `drama_awards` VALUES (1,'3rd Asia Contents Award: Best Creative Award',2021,1),(2,'Asian Academy Creative Awards: Best Drama Series',2021,1),(3,'Brand of the Year Awards: Best Drama',2020,2),(4,'2nd The Seoul Awards: Grand Prize',2018,5),(5,'55th Baeksang Arts Awards: Best Drama',2019,5),(6,'12th Korean Cable TV Awards: Best Drama',2018,6),(7,'tvN10 Awards: Grand Prize (Daesang) ',2016,7),(8,'tvN10 Awards: Best Content Award, Drama',2016,7),(9,'Korean Academy of Theater Arts: Art of the Year Award',2020,8),(10,'Daejeon Visual Art Tech Awards: Visual of the Year Award ',2020,8),(11,'54th Baeksang Arts Awards: Best Drama',2018,10),(12,'13th Seoul International Drama Awards: Best Mini-series',2018,10),(13,'52nd Baeksang Arts Awards: Best Drama',2016,11),(14,'tvN Awards: Best Content Award, Drama',2016,11),(15,'Brand of the Year Awards: Drama of the Year',2021,14),(16,'Seoul International Drama Awards: Top Excellence Korean Drama',2021,14),(17,'15th Seoul International Drama Awards: Outstanding Korean Drama',2020,15),(18,'3rd Annual Global TV Demand Awards: Most In-Demand Korean Drama Series',2020,15),(19,'12th Korean Drama Awards: Best Drama',2019,16),(20,'24th Asian Television Awards: Best Drama Series',2019,16),(21,'2nd Asia Contents Awards: Visual Effects Award',2018,17),(22,'6th APAN Star Awards: Drama of the Year',2018,18),(23,'3rd Asia Artist Awards: Korean Tourism Appreciation Award',2018,18),(24,'4th Annual DramaFever Awards: Best Korean Drama - Melodrama',2016,19),(25,'1st Seoul Awards: Grand Prize (Daesang)',2017,20);
/*!40000 ALTER TABLE `drama_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_character`
--

DROP TABLE IF EXISTS `drama_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_character` (
  `char_name` varchar(200) NOT NULL,
  `char_role` varchar(300) DEFAULT NULL,
  `actor_id` int DEFAULT NULL,
  `drama_ID` int NOT NULL,
  PRIMARY KEY (`char_name`,`drama_ID`),
  KEY `drama_char_fk` (`drama_ID`),
  KEY `actor_fk2` (`actor_id`),
  CONSTRAINT `actor_fk2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `drama_char_fk` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_character`
--

LOCK TABLES `drama_character` WRITE;
/*!40000 ALTER TABLE `drama_character` DISABLE KEYS */;
INSERT INTO `drama_character` VALUES ('Ahn Jeong-won','an assistant professor of pediatric surgery',4,2),('Baek Hee-sung','a man who hides his identity and past from his wife',5,3),('Baek Yi-jin','a hardworking young man whose chaebol family went bankrupt during the IMF crisis',38,4),('Cha Ji-won','Hee-sung\'s wife who is a detective',6,3),('Cha Soo-hyun','first woman police officer in the Special Task Force',19,11),('Chae-Young Shin','strong-willed and quirky internet news reporter who dreams of becoming a legendary reporter',34,19),('Duk-sun','middle child of her family and is infamously ranked 999th in school',10,7),('Eugene Choi','a slave who managed to escape to the USA and become Captain of the Marine Corps',31,18),('Go Ae-shin','Joseon noblewoman who lost her parents as an infant',32,18),('Han Geu-ru','20-year old with autism spectrum disorder',1,1),('Han Seo-jin','overzealous mother who wants nothing more than her daughter to get into Seoul National University',28,16),('Han Yeo-jin','homicide lieutenant and later Senior Inspector at Yongsan Police Station',5,20),('Hwang Si-mok','prosecutor who works in the 3rd Division of Seoul Western District Prosecutors\' Office',35,20),('Hye-na','one of Soo-jin\'s students and soon adopted daughter',17,10),('Jang Joon-woo','intern in Wusang Law Firm ',25,14),('Jung Yi-hyun','smart and honest detective',23,13),('Kim Je-hyeok','superstar baseball player who turns into a convict overnight',8,6),('Kim So-yong','queen of Joseon who has the soul of a man in her body',14,9),('King Cheoljong','25th king of the Joseon Dynasty',15,9),('Ko Moon-young','famous children\'s book writer who is rumored to have antisocial personality disorder',13,8),('Lee Chae-rok','23-year old ballerino who is struggling financially',21,12),('Lee Chang','Crown Prince of Joseon and heir to the throne',30,17),('Lee Ik-joon','an associate professor of general surgery',3,2),('Lee Ji-An','woman who is enduring many hardships in life',7,5),('Lee Joon-ho','elite prison guard and Je-hyeok\'s best friend',9,6),('Lee Soo-im','new member of the neighborhood who disapproves of the other parents\' methods for getting their kids into university',29,16),('Moon Gang-tae','caretaker working at a psychiatric ward who does not believe in love',12,8),('Na Hee-do','a fencing prodigy who transfers schools to fence with her idol',32,4),('Park Dong-hun','second oldest of three brothers',36,5),('Park Hae-Young','criminal profiler who solves cold cases',18,11),('Ri Jeong-hyeok','emotionally-reserved Captain in North Korean People\'s Army',26,15),('Seo Jung-Hoo','illegal \"night courier\"\" who works under the alias \"\"Healer\"\"\"',33,19),('Seo-bi','physician and one of the only two survivors of the plague\'s original outburst',5,17),('Sim Deok-chool','70-year old retired mailman who decides to pursue his life-long dream of learning ballet',20,12),('Soo-jin','Yoon-bok\'s teacher and soon adoptive mother',16,10),('Sun-woo','class president, caring brother, and dependable son to his widowed mother',11,7),('Vincenzo Vassano','Italian lawyer and Mafia consigliere of Korean descent',24,14),('Yoo Na-mu','Geu-ru\'s best friend and neighbor',2,1),('Yoon Sae-bom','member of a Special Operation Unit police squad',22,13),('Yoon Se-ri','successful South Korean CEO and chaebol heiress',27,15);
/*!40000 ALTER TABLE `drama_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_genre`
--

DROP TABLE IF EXISTS `drama_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_genre` (
  `drama_ID` int NOT NULL,
  `genre_name` varchar(200) NOT NULL,
  PRIMARY KEY (`drama_ID`,`genre_name`),
  KEY `genre_fk` (`genre_name`),
  CONSTRAINT `drama_genre_fk` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `genre_fk` FOREIGN KEY (`genre_name`) REFERENCES `genre` (`genre_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_genre`
--

LOCK TABLES `drama_genre` WRITE;
/*!40000 ALTER TABLE `drama_genre` DISABLE KEYS */;
INSERT INTO `drama_genre` VALUES (13,'Action'),(19,'Action'),(6,'Comedy'),(7,'Comedy'),(8,'Comedy'),(9,'Comedy'),(14,'Comedy'),(15,'Comedy'),(3,'Crime'),(6,'Crime'),(14,'Crime'),(1,'Drama'),(5,'Drama'),(6,'Drama'),(8,'Drama'),(12,'Drama'),(13,'Drama'),(14,'Drama'),(16,'Drama'),(20,'Drama'),(1,'Family'),(5,'Family'),(7,'Family'),(12,'Family'),(16,'Family'),(13,'Fantasy'),(2,'Friendship'),(4,'Friendship'),(12,'Friendship'),(9,'Historical'),(17,'Historical'),(18,'Historical'),(17,'Horror'),(14,'Law'),(20,'Law'),(1,'Life'),(2,'Life'),(4,'Life'),(5,'Life'),(6,'Life'),(12,'Life'),(2,'Medical'),(3,'Melodrama'),(10,'Melodrama'),(18,'Melodrama'),(15,'Military'),(18,'Military'),(9,'Mystery'),(10,'Mystery'),(11,'Mystery'),(16,'Mystery'),(19,'Mystery'),(20,'Mystery'),(15,'Political'),(5,'Psychological'),(8,'Psychological'),(10,'Psychological'),(16,'Psychological'),(2,'Romance'),(3,'Romance'),(4,'Romance'),(7,'Romance'),(8,'Romance'),(9,'Romance'),(15,'Romance'),(18,'Romance'),(19,'Romance'),(11,'Sci-Fi'),(17,'Supernatural'),(3,'Thriller'),(10,'Thriller'),(11,'Thriller'),(13,'Thriller'),(17,'Thriller'),(19,'Thriller'),(20,'Thriller'),(4,'Youth'),(7,'Youth');
/*!40000 ALTER TABLE `drama_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_network`
--

DROP TABLE IF EXISTS `drama_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_network` (
  `drama_ID` int NOT NULL,
  `network_name` varchar(64) NOT NULL,
  PRIMARY KEY (`drama_ID`,`network_name`),
  KEY `network_fk` (`network_name`),
  CONSTRAINT `drama_prov_fk` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `network_fk` FOREIGN KEY (`network_name`) REFERENCES `network` (`network_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_network`
--

LOCK TABLES `drama_network` WRITE;
/*!40000 ALTER TABLE `drama_network` DISABLE KEYS */;
INSERT INTO `drama_network` VALUES (16,'JTBC'),(19,'KBS2'),(1,'Netflix'),(2,'Netflix'),(4,'Netflix'),(6,'Netflix'),(8,'Netflix'),(12,'Netflix'),(14,'Netflix'),(15,'Netflix'),(17,'Netflix'),(18,'Netflix'),(20,'Netflix'),(2,'tvN'),(3,'tvN'),(4,'tvN'),(5,'tvN'),(6,'tvN'),(7,'tvN'),(8,'tvN'),(9,'tvN'),(10,'tvN'),(11,'tvN'),(12,'tvN'),(13,'tvN'),(14,'tvN'),(15,'tvN'),(18,'tvN'),(20,'tvN');
/*!40000 ALTER TABLE `drama_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama_tag`
--

DROP TABLE IF EXISTS `drama_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama_tag` (
  `drama_ID` int NOT NULL,
  `tag_name` varchar(64) NOT NULL,
  PRIMARY KEY (`drama_ID`,`tag_name`),
  KEY `tag_fk` (`tag_name`),
  CONSTRAINT `drama_fk3` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tag_fk` FOREIGN KEY (`tag_name`) REFERENCES `tag` (`tag_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama_tag`
--

LOCK TABLES `drama_tag` WRITE;
/*!40000 ALTER TABLE `drama_tag` DISABLE KEYS */;
INSERT INTO `drama_tag` VALUES (4,'Age Gap'),(5,'Age Gap'),(1,'Autism'),(12,'Ballet'),(6,'Baseball'),(9,'Body Swap'),(18,'Bromance'),(6,'Character Development'),(7,'Childhood Friends'),(8,'Childhood Friends'),(1,'Cleaning'),(11,'Corruption'),(20,'Crime Solving Duo'),(3,'Deception'),(19,'Double Identity'),(12,'Dream'),(13,'Fake Marriage'),(3,'Family Secret'),(15,'Fate'),(16,'Female Centered Plot'),(5,'Hardship'),(5,'Healing'),(8,'Healing'),(4,'Heartfelt'),(7,'Heartfelt'),(2,'Hospital'),(13,'Illness'),(14,'Injustice'),(20,'Investigation'),(18,'Japanese Colonial Rule'),(9,'Joseon Dynasty'),(1,'Life Lesson'),(12,'Life Lesson'),(14,'Mafia'),(3,'Married Couple'),(8,'Mental Health'),(10,'Motherhood'),(7,'Neighbors'),(15,'North and South Korea'),(17,'Palace Politics'),(17,'Power Struggle'),(6,'Prison'),(10,'Psychopath'),(18,'Rebellion'),(14,'Revenge'),(19,'Secret'),(16,'Social Commentary'),(16,'Social Satire'),(15,'Star Crossed Lovers'),(10,'Strong Female Lead'),(20,'Strong Female Lead'),(2,'Strong Friendship'),(4,'Strong Friendship'),(13,'Survival'),(11,'Time Altering'),(9,'Time Travel'),(11,'Tragic Past'),(19,'Trauma'),(2,'Workplace'),(17,'Zombies');
/*!40000 ALTER TABLE `drama_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_name` varchar(200) NOT NULL,
  PRIMARY KEY (`genre_name`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (''),('Action'),('Comedy'),('Crime'),('Drama'),('Family'),('Fantasy'),('Friendship'),('Historical'),('Horror'),('Law'),('Life'),('Medical'),('Melodrama'),('Military'),('Mystery'),('Political'),('Psychological'),('Romance'),('Sci-Fi'),('Supernatural'),('Thriller'),('Youth');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kdrama`
--

DROP TABLE IF EXISTS `kdrama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kdrama` (
  `drama_ID` int NOT NULL AUTO_INCREMENT,
  `drama_title` varchar(200) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `drama_year` year DEFAULT NULL,
  `num_episodes` int DEFAULT NULL,
  `synopsis` varchar(10000) DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  `writer_id` int DEFAULT NULL,
  PRIMARY KEY (`drama_ID`),
  KEY `director_fk` (`director_id`),
  KEY `writer_fk` (`writer_id`),
  CONSTRAINT `director_fk` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `writer_fk` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`writer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kdrama`
--

LOCK TABLES `kdrama` WRITE;
/*!40000 ALTER TABLE `kdrama` DISABLE KEYS */;
INSERT INTO `kdrama` VALUES (1,'Move to Heaven',9.2,2021,10,'Geu Roo is a young autistic man who works for his father*s business Move to Heaven. Their job is to arrange items left by deceased people. One day, his father dies and Geu Roo is left alone, but his uncle Sang Koo suddenly appears in front of him. Sang Koo is a cold man but he now becomes Geu Roo*s guardian. They run Move To Heaven together.',1,1),(2,'Hospital Playlist',9.1,2020,12,'The stories of people going through their days that are seemingly ordinary but actually special, at the hospital, a place known as the microcosm of life, where someone is being born and someone*s life meets their ending. The five doctors are long-time friends of 20 years who started their undergrad in 1999 in the same medical school and now are colleagues in the same hospital and have a band together.',2,2),(3,'Flower of Evil',9.1,2020,16,'Although Baek See Sung is hiding a dark secret surrounding his true identity, he has established a happy family life and a successful career. He is a loving husband and doting father to his young daughter. But his perfect facade begins to crumble when his wife, a homicide detective, begins investigating a string of serial murders from 15 years ago.',3,3),(4,'Twenty-Five Twenty-One',9.1,2022,16,'Twenty-Five Twenty-One is about two young adults, Baek Ye-jin, a young man who is new to town, and Na Hee-do, a high school fencing prodigy, who fall in love with each other after they meet at the ages of 25 and 21.',15,18),(5,'My Mister',9.1,2018,16,'Park Dong Hoon is a middle-aged engineer who is married to attorney Kang Koon Hee. However, his life is not that happy as he has two unemployed brothers, Sang Hoon and Gi Hoon, who rely on him. Moreover, his wife is secretly having an affair with his CEO.',4,4),(6,'Prison Playbook',9.1,2017,16,'Kim Je Hyuk, a famous baseball player, is arrested after using excessive force while chasing a man trying to sexually assault his sister. The drama revolves around his time in prison, as well as the prisoners he meets and events that take place there.',2,5),(7,'Reply 1988',9,2015,20,'Five childhood friends, who all live in the same neighborhood of Seoul, lean on each other to survive their challenging teen years and set a path for their futures.',2,2),(8,'It\'s Okay to Not Be Okay',9,2020,16,'Moon Gang Tae is a community health worker at a psychiatric ward, who was blessed with everything, including a great body, smarts, ability to sympathize with others, and more. Meanwhile, Ko Moon Young is a popular writer of children*s literature who, due to suffering from an antisocial personality disorder, seems extremely selfish, arrogant, and rude.',5,6),(9,'Mr. Queen',9,2020,20,'Jang Bong Hwan is a chef who has risen up the ranks to cook for the country*s top politicians in the Blue House*s presidential residences. After a serious accident, he finds himself in the body of the young queen, Kim So Yong, when whisked away to an era deep in Korea*s past.',6,7),(10,'Mother',9,2018,16,'Realizing one of her students is being abused, school teacher and bird researcher Soo Jin impulsively kidnaps the girl and acts as a substitute mother in an attempt to take care of her.',3,8),(11,'Signal',9,2016,16,'Fifteen years ago, a young girl was kidnapped on the way from school, and Park Hae Yeong, who was an elementary school student at that time, witnessed the crime. A few days later, the girl was found dead, and the police were not able to find the culprit. As time went by, Hae Yeong started distrusting the police.',4,9),(12,'Navillera',9,2021,12,'A 70-year old with a dream and a 23 year old with a gift lift each other out of harsh realities and rise to the challenge of becoming ballerinos.',7,10),(13,'Happiness',9,2021,12,'A deadly new strain of a virus is spreading throughout the city. An apartment building that is home to people from different classes remains in quarantine. Its residents must survive in their new habitat fearing both the virus and the potential conflicts between disparate social groups.',8,11),(14,'Vincenzo',9,2021,20,'At the age of eight, Park Joo Hyeong went to Italy after being adopted. Now an adult, he is known as Vincenzo Cassano to the Mafia, who employ him as a consigliere. Now back at his motherland, he gives an unrivaled conglomerate a taste of its own medicine with a side of justice.',9,12),(15,'Crash Landing On You',9,2019,16,'After getting into a paragliding accident, heiress Yoon Se Ro crash lands in North Korea. There, she meets North Korean army officer Ri Jung Hyuk, who agrees to help her return to South Korea. Despite the tension between their countries, the two of them start falling for one another.',10,13),(16,'SKY Castle',8.9,2018,20,'The plot revolves around families who live in SKY Castle, a luxury private neighborhood hosting wealthy doctors and professors. All of the women wish for their children to enter prestigious universities and are actively supporting their education.',11,14),(17,'Kingdom',8.9,2020,6,'Set in the medieval Joseon period, it tells the story of Crown Prince Lee Chang who becomes embroiled in a coup/political conspiracy and is forced to embark upon a mission to investigate the spread of a mysterious undead plague that has beset the current emperor and the country*s southern provinces.',12,9),(18,'Mr. Sunshine',8.9,2018,24,'Mr. Sunshine centers on a young boy born into a house servant*s family and travels to the United States. He returns to his homeland later as a U.S. marine officer where he meets and falls in love with an aristocrat*s daughter. At the same time, he discovers a plot by foreign forces to colonize Korea.',13,15),(19,'Healer',8.9,2014,20,'An old murder incident involving a group who ran an illegal broadcasting station brings together different people - a mysterious errand guy *Healer* who possesses disguise and fighting skills, a reporter from a second-rate tabloid, and a famous journalist.',14,16),(20,'Stranger',8.9,2017,16,'The plot revolves around a cold prosecutor and a police lieutenant who work together to eradicate corruption at the prosecutor*s office and solve a serial murder case.',8,17);
/*!40000 ALTER TABLE `kdrama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `network_name` varchar(64) NOT NULL,
  `year_founded` year DEFAULT NULL,
  `location_city` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`network_name`),
  UNIQUE KEY `network_name` (`network_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('JTBC',2011,'Seoul'),('KBS2',1980,'Seoul'),('Netflix',1997,'California'),('tvN',2006,'Seoul');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_name` varchar(200) NOT NULL,
  PRIMARY KEY (`tag_name`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (''),('Age Gap'),('Autism'),('Ballet'),('Band'),('Baseball'),('Best Friends'),('Body Swap'),('Bromance'),('Character Development'),('Childhood Friends'),('Cleaning'),('Corruption'),('Crime Solving Duo'),('Deception'),('Double Identity'),('Dream'),('Fake Marriage'),('Family Secret'),('Fate'),('Female Centered Plot'),('Hardship'),('Healing'),('Heartfelt'),('Hospital'),('Illness'),('Injustice'),('Investigation'),('Japanese Colonial Rule'),('Joseon Dynasty'),('Life Lesson'),('Mafia'),('Married Couple'),('Mental Health'),('Motherhood'),('Neighbors'),('North and South Korea'),('Palace Politics'),('Power Struggle'),('Prison'),('Psychopath'),('Rebellion'),('Revenge'),('Secret'),('Social Commentary'),('Social Satire'),('Star Crossed Lovers'),('Strong Female Lead'),('Strong Friendship'),('Survival'),('Time Altering'),('Time Travel'),('Tragic Past'),('Trauma'),('Workplace'),('Zombies');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reviews` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `text_review` varchar(10000) DEFAULT NULL,
  `drama_ID` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_rating` double DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `drama_review_fk` (`drama_ID`),
  KEY `user_fk` (`user_id`),
  CONSTRAINT `drama_review_fk` FOREIGN KEY (`drama_ID`) REFERENCES `kdrama` (`drama_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews`
--

LOCK TABLES `user_reviews` WRITE;
/*!40000 ALTER TABLE `user_reviews` DISABLE KEYS */;
INSERT INTO `user_reviews` VALUES (1,'The actors are great and the storyline flows very nicely, I have nothing but praises for this series. This series will make you cry though. So if you want to let a good cry out, this is the exact series that you need to watch.',1,1,9.4),(2,'Binged watched the show the day it came out. I started crying 15 min into the first episode. The amount of respect and care the characters showed while doing their work was amazing.',1,2,9.5),(3,'This drama is so healing. After watching this, you would want to be productive in life. Go for it. This is a bet recommendation.',2,3,9.2),(4,'THE CAST WAS AMAZING AMAXING ,I DONT THINK IF IT WAS WITH DIFFERENT CAST IT COULD BE ANY BETTER THAN THIS .',3,4,9),(5,'Love love loved the first two episodes. The storyline is fresh. The fact that it\'s set in late 1990s, makes me feel nostalgic even though I was born in 2000. ',4,5,9.6),(6,'An unexpectedly beautiful, deeply touching show. I\'ve been avoiding this drama because of it\'s boring posters, but it turns out to be a pleasant surprise.',5,6,9.7),(7,'10000000000000 stars for this awesome movie and great great actors',6,7,9.5),(8,'I wasn\'t expecting the drama to be THIS. GOOD!! I was worried that I might give up watching since it\'s 1.5 hours per episode but MY GOD now I think I want more..',7,8,9.3),(9,'Overrated drama. The producer and director was too confused- he picked up one topic didn\'t finish it went to another- the two brothers love is so strong but gets very weak.',8,9,6),(10,'First thing that comes to my mind is that, it\'s a historical kdrama which was actually fun, had great comedy instead of the usual sad painful types. Every minute, every second, of each episode I was so thoroughly entertained. ',9,10,9.4),(11,'I hope the cast and crew know what a gift they have created for humanity - no other culture could have produced this exquisite look into motherhood.',10,11,9.5),(12,'I\'m currently rewatching this drama, and ....this is still as good as the first time i watched it 3 years ago. One of the best thriller drama i\'ve ever watched. Kudos, Kim Eun-hee!',11,12,9.1),(13,'Such a wholesome and a beautiful drama. Kindly keep a box of tissues ready because there\'s gonna be some some waterworks ...',12,13,9),(14,'DAEBAK!! I honestly had high expectations from this drama, and it is safe to say that the first episode met all of them.',13,14,8.9),(15,'ok, this drama is absolutely worth watching. it\'s 10/10 for me and it climbed up my top few favourites of dramas. it\'s literally worth sacrificing my studies to binge watch this because it was so good.',14,1,9.6),(16,'Oh, where to begin, where to begin? This Kdrama is so amazing, I couldn\'t stop watching it with my dear grandparents all day! ',15,2,9.2),(17,'Don\'t be fooled by the promotional posters/images - this is not your average rich housewives drama. It tackles sensitive issues such as mental health, exam stress (education system), parental expectations and family dynamics. At its core, it is about how parents grow up to truly understand their kids. ',16,3,8.7),(18,'Apart from the closer chapter of a show about dragons and thrones, I can\'t imagine anything else on television making this big an impression on me this year.',17,4,9.3),(19,'I must say this is the best series I have watched in a long time . Every episode and every event that took place in the series got me so involved, I somehow felt like i was part of it as well.',18,5,9.2),(20,'I think i could watch an entire series of Ji Chang Wook just doing dishes in the kitchen. He has such a beautiful face, oh those eyes!!! ',19,6,9.4),(21,'I just don\'t know how to describe this masterpiece! I watched both the seasons and absolutely loved both of them! ',20,7,8.8);
/*!40000 ALTER TABLE `user_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'connie123'),(2,'nicole098'),(3,'kassy453'),(4,'durant236'),(5,'zeng246'),(6,'rosas374'),(7,'liu15'),(8,'snell347'),(9,'chair1273'),(10,'lisa17'),(11,'irina26'),(12,'adeel100'),(13,'henrietta'),(14,'marino237');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer`
--

DROP TABLE IF EXISTS `writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writer` (
  `writer_id` int NOT NULL AUTO_INCREMENT,
  `writer_name` varchar(200) DEFAULT NULL,
  `writer_bday` date DEFAULT NULL,
  `writer_desc` varchar(10000) DEFAULT NULL,
  `num_awards` int DEFAULT NULL,
  PRIMARY KEY (`writer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer`
--

LOCK TABLES `writer` WRITE;
/*!40000 ALTER TABLE `writer` DISABLE KEYS */;
INSERT INTO `writer` VALUES (1,'Yoon Ji-ryeon',NULL,'Yoon Ji-ryeon is a scriptwriter best known for writing Boys Over Flowers and Angel Eyes. ',NULL),(2,'Lee Woo-jung',NULL,'Lee Woo-jung is a television scriptwriter best known for writing the tvN dramas Reply series: Reply 1997, Reply 1994, and Reply 1988',2),(3,'Yoo Jung-hee','1956-02-20','Yoo Jung-hee is best known for writing tv series Flower of Evil',NULL),(4,'Park Hae-young',NULL,'Park Hae-young is a screenwriter who wrote the series My Liberation Notes which is recently airing on Netflix.',2),(5,'Jung Bo-hoon',NULL,'Jung Bo-hoon is a screenwriter who wrote the series Racket Boys and Prison Playbook',NULL),(6,'Jo Yong',NULL,'Jo Yong is a screenwriter who wrote the tv series It\'s Okay to Not Be Okay and After The Rain',NULL),(7,'Park Gye-ok','1970-01-03','Park Gye-ok is a screenwriter who wrote the popular tv series Mr. Queen and Cain and Abel',NULL),(8,'Chung Seo-kyung',NULL,'Chung Seo-kyung is a famous screenwriter who graduated from the Korea National University of Arts. ',NULL),(9,'Kim Eun-hee','1972-01-07','Kim Eun-hee is a playwright and screenwriter. She has been working on the Netflix series Kingdom since 2011',5),(10,'Lee Eun-mi',NULL,'Lee Eun-mi is a screenwriter, editor, and director whose notable films include Tunnel and The Story of Mr.Sorry',NULL),(11,'Han Sang-woon',NULL,'Han Sang-woon is a screenwriter known for writing the series Happiness',NULL),(12,'Park Jae-bum',NULL,'Park Jae-bum is a screenwriter known for writing the tv series Vincenzo and The Fiery Priest',1),(13,'Park Ji-eun',NULL,'Park Ji-eun is a screenwriter who wrote the hit dramas Queen of Housewives, My Love From the Star, Legend of the Blue Sea, and Crash Landing on You',6),(14,'Yoon Hyun-mi',NULL,'Yoon Hyun-mi is a screenwriter who wrote the notable tv series Snowdrop, Sky Castle, and Bridal Mask',NULL),(15,'Kim Eun-sook',NULL,'Kim Eun-sook is a screenwriter who wrote the popular television dramas Lovers in Paris, Secret Garden, The Heirs, Descendants of the Sun, Guardian: the Lonely and Great God, and Mr. Sunshine',13),(16,'Song Ji-na','1959-09-12','Song Ji-na is a screenwriter who is best known for writing Eyes of Dawn and Sandglass which are two of the most influential and highly rated Korean dramas of all time',4),(17,'Lee Soo-yeon',NULL,'Lee Soo-yeon is a screenwriter who wrote the series Stranger',1),(18,'Kwon Do-eun',NULL,'Kwon Do-eun is a scriptwriter who wrote the 2022 drama Twenty-Five Twenty-One',NULL);
/*!40000 ALTER TABLE `writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kdrama'
--
/*!50003 DROP FUNCTION IF EXISTS `check_director` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_director`(dir_name VARCHAR(200)) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE dir_exists INT;
    DECLARE dir_id INT;
    SELECT count(*) INTO dir_exists FROM director WHERE dir_name  = director_name;
    
    IF (dir_exists = 0) THEN
		INSERT INTO director(director_name) VALUES (dir_name );
	END IF;
    
    SELECT director_id INTO dir_id FROM director WHERE dir_name  = director_name LIMIT 1;
    RETURN dir_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_writer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_writer`(writ_name VARCHAR(200)) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE writer_exists INT;
    DECLARE writ_id INT;
    SELECT count(*) INTO writer_exists FROM writer WHERE writ_name = writer_name;
    
    IF (writer_exists = 0) THEN
		INSERT INTO writer(writer_name) VALUES (writ_name);
	END IF;
    
    SELECT writer_id INTO writ_id FROM writer WHERE writ_name = writer_name LIMIT 1;
    RETURN writ_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_kdrama` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_kdrama`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_review`(IN text_reviews VARCHAR(500),
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_award` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_award`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_character_connect_actor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_character_connect_actor`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_genre`(IN genre VARCHAR(200))
BEGIN
	DECLARE genre_exists INT;
    SELECT count(*) INTO genre_exists FROM genre WHERE genre = genre_name;
    
    IF (genre_exists = 0) THEN
		INSERT INTO genre(genre_name) VALUES (genre);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_network` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_network`(IN network VARCHAR(64))
BEGIN
	DECLARE network_exists INT;
    SELECT count(*) INTO network_exists FROM network WHERE network = network_name;
    
    IF (network_exists = 0) THEN
		INSERT INTO network(network_name) VALUES (network);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_tag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_tag`(IN tag VARCHAR(200))
BEGIN
	DECLARE tag_exists INT;
    SELECT count(*) INTO tag_exists FROM tag WHERE tag = tag_name;
    
    IF (tag_exists = 0) THEN
		INSERT INTO tag(tag_name) VALUES (tag);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_kdrama` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_kdrama`(IN k_id INT)
BEGIN
	DELETE FROM drama_awards WHERE drama_ID = k_id;
	DELETE FROM drama_genre WHERE drama_ID = k_id;
	DELETE FROM drama_tag WHERE drama_ID = k_id;
	DELETE FROM drama_network WHERE drama_ID = k_id;
    DELETE FROM drama_character WHERE drama_ID = k_id;
	DELETE FROM drama_actors WHERE drama_ID = k_id;
	DELETE FROM user_reviews WHERE drama_ID = k_id;
	DELETE FROM kdrama WHERE drama_ID = k_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_review` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_review`(IN rev_num INT)
delete_rev: BEGIN
	DECLARE rev_exists INT;
    SELECT count(*) INTO rev_exists FROM user_reviews WHERE rid = rev_num;
    
    -- if rating doesn't exist, exit procedure
    IF (rev_exists = 0) THEN
		LEAVE delete_rev;
	END IF;
    
    DELETE FROM user_reviews WHERE rid = rev_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_actor_drama` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_actor_drama`(IN k_title VARCHAR(200))
BEGIN
	SELECT actor_id, actor_name, actor_bday, actor_desc, num_awards
    FROM kdrama NATURAL JOIN drama_actors NATURAL JOIN actors WHERE INSTR(drama_title, k_title) 
    GROUP BY actor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_actor_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_actor_name`(IN a_name VARCHAR(200))
BEGIN
	SELECT * FROM actors WHERE INSTR(actor_name, a_name) > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_actor_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_actor_year`(IN yr YEAR)
BEGIN
	SELECT * FROM actors WHERE YEAR(actor_bday) = yr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_drama_actor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_drama_actor`(
	IN act_name VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE INSTR(actors.actor_name, act_name) > 0 GROUP BY drama_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_drama_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_drama_rating`(
	IN rate DOUBLE
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE rating >= rate GROUP BY drama_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_drama_station` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_drama_station`(
	IN net_name VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors 
    NATURAL JOIN drama_awards NATURAL JOIN drama_network
	WHERE net_name = drama_network.network_name GROUP BY drama_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_drama_title` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_drama_title`(
	IN title VARCHAR(200)
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE INSTR(drama_title, title) > 0 GROUP BY drama_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_drama_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_drama_year`(
	IN yr INT
)
BEGIN
	SELECT * FROM kdrama NATURAL JOIN drama_character NATURAL JOIN actors NATURAL JOIN drama_awards
	WHERE drama_year = yr GROUP BY drama_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `see_all_reviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `see_all_reviews`()
BEGIN
	SELECT drama_title, rid, text_review, user_id, user_rating FROM
    kdrama NATURAL JOIN user_reviews GROUP BY kdrama.drama_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_award` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_award`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_kdrama` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_kdrama`(
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

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_rating`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_drama_awards` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_drama_awards`()
BEGIN
	SELECT drama_title, award_title, award_year FROM kdrama NATURAL JOIN drama_awards;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 17:55:27
