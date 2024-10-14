-- MySQL dump 10.13  Distrib 9.0.1, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `captain`
--

DROP TABLE IF EXISTS `captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captain` (
  `captain_id` varchar(30) NOT NULL,
  `captain_name` varchar(30) DEFAULT NULL,
  `team_id` varchar(30) DEFAULT NULL,
  `player_id` varchar(30) DEFAULT NULL,
  `no_of_wins` int DEFAULT NULL,
  `no_of_loses` int DEFAULT NULL,
  `accuracy_per` float DEFAULT NULL,
  PRIMARY KEY (`captain_id`),
  KEY `team_id` (`team_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `captain_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `captain_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captain`
--

LOCK TABLES `captain` WRITE;
/*!40000 ALTER TABLE `captain` DISABLE KEYS */;
INSERT INTO `captain` VALUES
  ('CPTAFG001','Hashmatullah Shahidi','AFG23006','AFG004',4,5,44.44),
  ('CPTAUS001','Pat Cummins','AUS23003','AUS008',9,2,81.81),
  ('CPTBAN001','Shakib Al Hasan','BAN23008','BAN004',2,7,22.22),
  ('CPTENG001','Jos Buttler','ENG23007','ENG005',3,6,33.33),
  ('CPTIND001','Rohit Sharma','IND23001','IND001',10,1,90.9),
  ('CPTNED001','Scott Edwards','NED23010','NED006',2,7,22.22),
  ('CPTNZ001','Kane Williamson','NZ23004','NZ003',6,4,60),
  ('CPTPAK001','Babar Azam','PAK23005','PAK003',4,5,44.44),
  ('CPTSA001','Temba Bavuma','SA23002','SA002',7,3,70),
  ('CPTSL001','Kusal Mendis','SL23009','SL003',2,7,22.22);
/*!40000 ALTER TABLE `captain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` varchar(30) NOT NULL,
  `team_id` varchar(30) DEFAULT NULL,
  `coach_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES
  ('Coach_001','IND23001','Rahul Dravid'),
  ('Coach_002','SA23002','Rob Walter'),
  ('Coach_003','AUS23003','Andrew McDonald'),
  ('Coach_004','NZ23004','Gary Stead'),
  ('Coach_005','PAK23005','Grant Bradburn'),
  ('Coach_006','AFG23006','Jonathan Trott'),
  ('Coach_007','ENG23007','Matthew Mott'),
  ('Coach_008','BAN23008','Chandrika Hathurusingha'),
  ('Coach_009','SL23009','Chris Silverwood'),
  ('Coach_010','NED23010','Ryan Cook');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `match_id` varchar(20) NOT NULL,
  `match_date` date DEFAULT NULL,
  `match_time` time DEFAULT NULL,
  `team_1_name` varchar(30) DEFAULT NULL,
  `team_2_name` varchar(30) DEFAULT NULL,
  `loser` varchar(30) DEFAULT NULL,
  `winner` varchar(30) DEFAULT NULL,
  `stadium` varchar(300) DEFAULT NULL,
  `umpire_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `umpire_id` (`umpire_id`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`umpire_id`) REFERENCES `umpire` (`umpire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES
  ('WC2023001','2023-10-05','14:30:00','England','New Zealand','England','New Zealand','Narendra Modi Stadium','UMPELT23001'),
  ('WC2023002','2023-10-06','14:30:00','Pakistan','Netherlands','Netherlands','Pakistan','Rajiv Gandhi International Stadium','UMPELT23002'),
  ('WC2023003','2023-10-07','10:30:00','Bangladesh','Afghanistan','Afghanistan','Bangladesh','Himachal Pradesh Cricket Association Stadium','UMPELT23003'),
  ('WC2023004','2023-10-07','14:30:00','South Africa','Sri Lanka','Sri Lanka','South Africa','Arun Jaitley Stadium','UMPELT23004'),
  ('WC2023005','2023-10-08','14:30:00','India','Australia','Australia','India','M. A. Chidambaram Stadium','UMPELT23005'),
  ('WC2023006','2023-10-09','14:30:00','New Zealand','Netherlands','Netherlands','New Zealand','Rajiv Gandhi International Stadium','UMPELT23006'),
  ('WC2023007','2023-10-10','14:30:00','England','Bangladesh','England','Bangladesh','Himachal Pradesh Cricket Association Stadium','UMPELT23007'),
  ('WC2023008','2023-10-11','14:30:00','India','Afghanistan','Afghanistan','India','Arun Jaitley Stadium','UMPELT23008'),
  ('WC2023009','2023-10-12','14:30:00','Pakistan','Sri Lanka','Pakistan','Sri Lanka','Rajiv Gandhi International Stadium','UMPELT23009'),
  ('WC2023010','2023-10-13','14:30:00','Australia','South Africa','South Africa','Australia','Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium','UMPELT23010'),
  ('WC2023011','2023-10-14','10:30:00','New Zealand','Bangladesh','Bangladesh','New Zealand','M. A. Chidambaram Stadium','UMPELT23011'),
  ('WC2023012','2023-10-14','14:30:00','India','Pakistan','Pakistan','India','Narendra Modi Stadium','UMPELT23012'),
  ('WC2023013','2023-10-15','14:30:00','England','Afghanistan','England','Afghanistan','Arun Jaitley Stadium','UMPELT23001'),
  ('WC2023014','2023-10-16','14:30:00','Australia','Sri Lanka','Sri Lanka','Australia','Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium','UMPELT23002'),
  ('WC2023015','2023-10-17','14:30:00','South Africa','Netherlands','Netherlands','South Africa','Himachal Pradesh Cricket Association Stadium','UMPELT23003'),
  ('WC2023016','2023-10-18','14:30:00','New Zealand','Afghanistan','Afghanistan','New Zealand','M. A. Chidambaram Stadium','UMPELT23004'),
  ('WC2023017','2023-10-19','14:30:00','India','Bangladesh','Bangladesh','India','Maharashtra Cricket Association Stadium','UMPELT23005'),
  ('WC2023018','2023-10-20','14:30:00','Australia','Pakistan','Australia','Pakistan','M. Chinnaswamy Stadium','UMPELT23006'),
  ('WC2023019','2023-10-21','10:30:00','Netherlands','Sri Lanka','Netherlands','Sri Lanka','Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium','UMPELT23007'),
  ('WC2023020','2023-10-21','14:30:00','England','South Africa','South Africa','England','Wankhede Stadium','UMPELT23008'),
  ('WC2023021','2023-10-22','14:30:00','India','New Zealand','New Zealand','India','Himachal Pradesh Cricket Association Stadium','UMPELT23009'),
  ('WC2023022','2023-10-23','14:30:00','Pakistan','Afghanistan','Afghanistan','Pakistan','M. A. Chidambaram Stadium','UMPELT23010'),
  ('WC2023023','2023-10-24','14:30:00','South Africa','Bangladesh','Bangladesh','South Africa','Wankhede Stadium','UMPELT23011'),
  ('WC2023024','2023-10-25','14:30:00','Australia','Netherlands','Netherlands','Australia','Arun Jaitley Stadium','UMPELT23012'),
  ('WC2023025','2023-10-26','14:30:00','England','Sri Lanka','England','Sri Lanka','M. Chinnaswamy Stadium','UMPELT23001'),
  ('WC2023026','2023-10-27','14:30:00','Pakistan','South Africa','Pakistan','South Africa','M. A. Chidambaram Stadium','UMPELT23002'),
  ('WC2023027','2023-10-28','10:30:00','Australia','New Zealand','New Zealand','Australia','Himachal Pradesh Cricket Association Stadium','UMPELT23003'),
  ('WC2023028','2023-10-28','14:30:00','Netherlands','Bangladesh','Netherlands','Bangladesh','Eden Gardens','UMPELT23004'),
  ('WC2023029','2023-10-29','14:30:00','India','England','England','India','Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium','UMPELT23005'),
  ('WC2023030','2023-10-30','14:30:00','Afghanistan','Sri Lanka','Afghanistan','Sri Lanka','Maharashtra Cricket Association Stadium','UMPELT23006'),
  ('WC2023031','2023-10-31','14:30:00','Pakistan','Bangladesh','Pakistan','Bangladesh','Eden Gardens','UMPELT23007'),
  ('WC2023032','2023-11-01','14:30:00','New Zealand','South Africa','South Africa','New Zealand','Maharashtra Cricket Association Stadium','UMPELT23008'),
  ('WC2023033','2023-11-02','14:30:00','India','Sri Lanka','Sri Lanka','India','Wankhede Stadium','UMPELT23009'),
  ('WC2023034','2023-11-03','14:30:00','Netherlands','Afghanistan','Netherlands','Afghanistan','Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium','UMPELT23010'),
  ('WC2023035','2023-11-04','10:30:00','New Zealand','Pakistan','Pakistan','New Zealand','M. Chinnaswamy Stadium','UMPELT23011'),
  ('WC2023036','2023-11-04','14:30:00','England','Australia','England','Australia','Narendra Modi Stadium','UMPELT23012'),
  ('WC2023037','2023-11-05','14:30:00','India','South Africa','South Africa','India','Eden Gardens','UMPELT23001'),
  ('WC2023038','2023-11-06','14:30:00','Bangladesh','Sri Lanka','Bangladesh','Sri Lanka','Arun Jaitley Stadium','UMPELT23002'),
  ('WC2023039','2023-11-07','14:30:00','Australia','Afghanistan','Afghanistan','Australia','Wankhede Stadium','UMPELT23003'),
  ('WC2023040','2023-11-08','14:30:00','England','Netherlands','England','Netherlands','Maharashtra Cricket Association Stadium','UMPELT23004'),
  ('WC2023041','2023-11-09','14:30:00','New Zealand','Sri Lanka','Sri Lanka','New Zealand','M. Chinnaswamy Stadium','UMPELT23005'),
  ('WC2023042','2023-11-10','14:30:00','South Africa','Afghanistan','Afghanistan','South Africa','Narendra Modi Stadium','UMPELT23006'),
  ('WC2023043','2023-11-11','10:30:00','Australia','Bangladesh','Bangladesh','Australia','Maharashtra Cricket Association Stadium','UMPELT23007'),
  ('WC2023044','2023-11-11','14:30:00','England','Pakistan','Pakistan','England','Eden Gardens','UMPELT23008'),
  ('WC2023045','2023-11-12','14:30:00','India','Netherlands','Netherlands','India','M. Chinnaswamy Stadium','UMPELT23009'),
  ('WC2023FNL','2023-11-19','14:30:00','India','Australia','Australia','India','Narendra Modi Stadium','UMPELT23012'),
  ('WC2023SF1','2023-11-15','14:30:00','India','New Zealand','New Zealand','India','Wankhede Stadium','UMPELT23010'),
  ('WC2023SF2','2023-11-16','14:30:00','South Africa','Australia','South Africa','Australia','Eden Gardens','UMPELT23011');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` varchar(30) NOT NULL,
  `team_id` varchar(30) DEFAULT NULL,
  `player_name` varchar(100) DEFAULT NULL,
  `no_of_worldcups` int DEFAULT NULL,
  `number_of_matches` int DEFAULT NULL,
  `batting_average` decimal(5,2) DEFAULT NULL,
  `no_of_sixes` int DEFAULT NULL,
  `no_of_fours` int DEFAULT NULL,
  `no_of_totalruns` int DEFAULT NULL,
  `no_of_wickets` int DEFAULT NULL,
  `type_of_bowler` varchar(30) DEFAULT NULL,
  `economy` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES
  ('AFG001','AFG23006','Rahmanullah Gurbaz',1,9,25.33,10,22,280,0,NULL,NULL),
  ('AFG002','AFG23006','Ibrahim Zadran',1,9,36.44,4,28,328,0,NULL,NULL),
  ('AFG003','AFG23006','Rahmat Shah',2,9,21.00,0,14,126,0,NULL,NULL),
  ('AFG004','AFG23006','Hashmatullah Shahidi',2,9,35.28,1,24,235,0,NULL,NULL),
  ('AFG005','AFG23006','Azmatullah Omarzai',1,9,38.80,3,21,194,7,'Right-arm medium-fast',6.27),
  ('AFG006','AFG23006','Mohammad Nabi',3,9,19.60,3,9,98,7,'Right-arm off-break',4.78),
  ('AFG007','AFG23006','Rashid Khan',2,9,24.75,7,8,99,11,'Right-arm leg-break',5.52),
  ('AFG008','AFG23006','Mujeeb Ur Rahman',2,9,7.66,1,2,23,9,'Right-arm off-break',5.51),
  ('AFG009','AFG23006','Naveen-ul-Haq',1,8,2.50,0,1,5,11,'Right-arm medium-fast',6.71),
  ('AFG010','AFG23006','Fazalhaq Farooqi',1,9,1.00,0,0,1,7,'Left-arm medium-fast',5.27),
  ('AFG011','AFG23006','Noor Ahmad',1,7,3.00,0,1,6,6,'Left-arm wrist-spin',5.28),
  ('AFG012','AFG23006','Najibullah Zadran',2,2,8.50,0,2,17,0,NULL,NULL),
  ('AFG013','AFG23006','Riaz Hassan',1,0,NULL,0,0,0,0,NULL,NULL),
  ('AFG014','AFG23006','Abdul Rahman',1,0,NULL,0,0,0,0,'Right-arm medium',NULL),
  ('AFG015','AFG23006','Ikram Alikhil',2,0,NULL,0,0,0,0,NULL,NULL),
  ('AUS001','AUS23003','David Warner',4,11,69.85,9,59,535,0,NULL,NULL),
  ('AUS002','AUS23003','Travis Head',1,9,38.00,11,30,329,2,'Right-arm off-break',6.95),
  ('AUS003','AUS23003','Mitchell Marsh',2,10,39.20,21,22,441,1,'Right-arm medium',6.75),
  ('AUS004','AUS23003','Steve Smith',3,10,31.70,0,29,302,0,NULL,NULL),
  ('AUS005','AUS23003','Marnus Labuschagne',1,11,39.66,0,26,358,1,'Right-arm leg-break',5.24),
  ('AUS006','AUS23003','Glenn Maxwell',3,9,74.50,22,23,398,5,'Right-arm off-break',5.80),
  ('AUS007','AUS23003','Josh Inglis',1,10,28.50,3,17,159,0,NULL,NULL),
  ('AUS008','AUS23003','Pat Cummins',2,11,20.33,4,7,128,15,'Right-arm fast',5.75),
  ('AUS009','AUS23003','Mitchell Starc',3,11,8.66,1,3,26,16,'Left-arm fast',6.55),
  ('AUS010','AUS23003','Adam Zampa',2,11,3.00,0,0,3,23,'Right-arm leg-break',5.36),
  ('AUS011','AUS23003','Josh Hazlewood',2,11,NULL,0,0,0,16,'Right-arm fast-medium',5.40),
  ('AUS012','AUS23003','Alex Carey',2,2,35.00,0,7,35,0,NULL,NULL),
  ('AUS013','AUS23003','Sean Abbott',1,1,NULL,0,0,0,1,'Right-arm fast-medium',8.25),
  ('AUS014','AUS23003','Marcus Stoinis',2,4,10.66,1,3,32,1,'Right-arm medium',10.50),
  ('AUS015','AUS23003','Cameron Green',1,2,13.00,0,2,13,0,'Right-arm fast-medium',7.66),
  ('BAN001','BAN23008','Litton Das',2,9,21.77,2,20,196,0,NULL,NULL),
  ('BAN002','BAN23008','Tanzid Hasan',1,8,14.62,2,9,117,0,NULL,NULL),
  ('BAN003','BAN23008','Najmul Hossain Shanto',1,9,35.55,5,26,320,0,NULL,NULL),
  ('BAN004','BAN23008','Shakib Al Hasan',4,6,17.16,1,9,103,7,'Left-arm orthodox',5.45),
  ('BAN005','BAN23008','Mushfiqur Rahim',5,9,35.55,1,27,320,0,NULL,NULL),
  ('BAN006','BAN23008','Towhid Hridoy',1,9,22.66,3,14,136,0,NULL,NULL),
  ('BAN007','BAN23008','Mahmudullah',4,8,56.40,11,22,282,4,'Right-arm off-break',5.84),
  ('BAN008','BAN23008','Mehidy Hasan Miraz',2,9,21.28,2,13,149,9,'Right-arm off-break',5.89),
  ('BAN009','BAN23008','Taskin Ahmed',2,8,4.50,0,2,9,9,'Right-arm fast',6.32),
  ('BAN010','BAN23008','Mustafizur Rahman',2,9,1.00,0,0,2,10,'Left-arm medium-fast',6.52),
  ('BAN011','BAN23008','Shoriful Islam',1,6,5.50,0,2,11,5,'Left-arm medium-fast',7.00),
  ('BAN012','BAN23008','Nasum Ahmed',1,2,1.00,0,0,1,1,'Left-arm orthodox',6.12),
  ('BAN013','BAN23008','Mahedi Hasan',1,1,14.00,0,1,14,0,'Right-arm off-break',7.00),
  ('BAN014','BAN23008','Hasan Mahmud',1,3,2.00,0,0,2,4,'Right-arm medium-fast',7.32),
  ('BAN015','BAN23008','Ebadot Hossain',1,0,NULL,0,0,0,0,'Right-arm fast-medium',NULL),
  ('ENG001','ENG23007','Jonny Bairstow',2,9,21.88,6,19,175,0,NULL,NULL),
  ('ENG002','ENG23007','Dawid Malan',1,9,39.00,6,30,314,0,NULL,NULL),
  ('ENG003','ENG23007','Joe Root',3,9,30.33,0,23,252,1,'Right-arm off-break',6.40),
  ('ENG004','ENG23007','Ben Stokes',2,6,35.40,5,18,177,1,'Right-arm fast-medium',6.45),
  ('ENG005','ENG23007','Jos Buttler',3,9,15.33,3,11,138,0,NULL,NULL),
  ('ENG006','ENG23007','Liam Livingstone',1,8,21.00,5,9,126,6,'Right-arm off-break',6.19),
  ('ENG007','ENG23007','Moeen Ali',2,7,19.20,3,7,96,5,'Right-arm off-break',5.80),
  ('ENG008','ENG23007','Chris Woakes',3,9,13.25,1,5,53,11,'Right-arm fast-medium',6.62),
  ('ENG009','ENG23007','David Willey',1,8,15.25,2,5,61,7,'Left-arm medium-fast',5.96),
  ('ENG010','ENG23007','Adil Rashid',3,9,7.00,0,1,14,15,'Right-arm leg-break',5.23),
  ('ENG011','ENG23007','Mark Wood',2,7,5.00,1,1,15,8,'Right-arm fast',6.46),
  ('ENG012','ENG23007','Harry Brook',1,4,36.66,2,11,110,0,NULL,NULL),
  ('ENG013','ENG23007','Gus Atkinson',1,1,NULL,0,0,0,1,'Right-arm fast',8.00),
  ('ENG014','ENG23007','Reece Topley',1,4,NULL,0,0,0,8,'Left-arm fast-medium',5.34),
  ('ENG015','ENG23007','Sam Curran',1,3,4.00,0,1,8,1,'Left-arm medium-fast',8.51),
  ('IND001','IND23001','Rohit Sharma',3,11,51.72,31,31,597,0,NULL,NULL),
  ('IND002','IND23001','Virat Kohli',4,11,95.62,8,67,765,0,NULL,NULL),
  ('IND003','IND23001','KL Rahul',2,11,54.12,9,34,452,0,NULL,NULL),
  ('IND004','IND23001','Shreyas Iyer',1,11,55.80,13,30,530,0,NULL,NULL),
  ('IND005','IND23001','Ravindra Jadeja',3,11,37.50,2,11,120,16,'Left-arm orthodox',4.25),
  ('IND006','IND23001','Jasprit Bumrah',2,11,5.00,0,1,5,20,'Right-arm fast',4.06),
  ('IND007','IND23001','Mohammed Shami',3,7,2.50,0,0,5,24,'Right-arm fast',5.26),
  ('IND008','IND23001','Kuldeep Yadav',2,11,6.00,0,0,6,15,'Left-arm wrist-spin',4.32),
  ('IND009','IND23001','Mohammed Siraj',1,11,5.00,0,1,5,14,'Right-arm fast',5.68),
  ('IND010','IND23001','Shubman Gill',1,9,44.50,7,28,354,0,NULL,NULL),
  ('IND011','IND23001','Suryakumar Yadav',1,8,21.33,5,10,106,0,NULL,NULL),
  ('IND012','IND23001','Ishan Kishan',1,2,18.50,1,5,37,0,NULL,NULL),
  ('IND013','IND23001','Ravichandran Ashwin',3,1,NULL,0,0,0,1,'Right-arm off-break',6.80),
  ('IND014','IND23001','Shardul Thakur',1,1,NULL,0,0,0,1,'Right-arm medium-fast',7.00),
  ('IND015','IND23001','Prasidh Krishna',1,0,NULL,0,0,0,0,'Right-arm fast',NULL),
  ('NED001','NED23010','Vikramjit Singh',1,9,21.22,2,16,191,0,NULL,NULL),
  ('NED002','NED23010','Max O Dowd',1,9,18.77,3,14,169,0,NULL,NULL),
  ('NED003','NED23010','Colin Ackermann',1,9,29.00,3,17,203,5,'Right-arm off-break',5.63),
  ('NED004','NED23010','Bas de Leede',1,9,23.22,3,17,209,8,'Right-arm medium-fast',6.76),
  ('NED005','NED23010','Teja Nidamanuru',1,8,19.71,4,9,138,0,NULL,NULL),
  ('NED006','NED23010','Scott Edwards',1,9,46.16,3,24,277,0,NULL,NULL),
  ('NED007','NED23010','Sybrand Engelbrecht',1,9,19.66,1,10,118,1,'Right-arm off-break',5.88),
  ('NED008','NED23010','Logan van Beek',1,9,15.80,3,7,79,7,'Right-arm medium-fast',6.12),
  ('NED009','NED23010','Roelof van der Merwe',2,7,10.00,0,4,30,3,'Left-arm orthodox',5.55),
  ('NED010','NED23010','Aryan Dutt',1,7,3.33,0,1,10,7,'Right-arm off-break',5.93),
  ('NED011','NED23010','Paul van Meekeren',1,9,5.25,0,2,21,8,'Right-arm fast-medium',6.47),
  ('NED012','NED23010','Shariz Ahmad',1,2,1.00,0,0,1,1,'Right-arm leg-break',5.66),
  ('NED013','NED23010','Wesley Barresi',1,2,7.50,0,2,15,0,NULL,NULL),
  ('NED014','NED23010','Noah Croes',1,0,NULL,0,0,0,0,NULL,NULL),
  ('NED015','NED23010','Ryan Klein',1,2,1.00,0,0,1,2,'Right-arm fast-medium',7.37),
  ('NZ001','NZ23004','Devon Conway',1,9,41.75,4,29,329,0,NULL,NULL),
  ('NZ002','NZ23004','Rachin Ravindra',1,10,76.00,13,47,578,5,'Left-arm orthodox',6.00),
  ('NZ003','NZ23004','Kane Williamson',4,6,77.20,1,33,256,0,NULL,NULL),
  ('NZ004','NZ23004','Daryl Mitchell',1,10,66.44,21,39,552,1,'Right-arm medium',6.52),
  ('NZ005','NZ23004','Tom Latham',3,10,35.55,4,27,320,0,NULL,NULL),
  ('NZ006','NZ23004','Glenn Phillips',1,10,39.40,9,17,295,6,'Right-arm off-break',5.17),
  ('NZ007','NZ23004','Mitchell Santner',2,10,25.40,3,9,127,16,'Left-arm orthodox',5.10),
  ('NZ008','NZ23004','Matt Henry',2,6,6.00,0,2,12,11,'Right-arm fast-medium',5.64),
  ('NZ009','NZ23004','Lockie Ferguson',2,8,1.00,0,0,1,10,'Right-arm fast',6.04),
  ('NZ010','NZ23004','Trent Boult',4,10,4.66,0,2,14,14,'Left-arm fast-medium',5.46),
  ('NZ011','NZ23004','Tim Southee',4,7,8.00,1,1,16,7,'Right-arm medium-fast',6.31),
  ('NZ012','NZ23004','Will Young',1,3,25.66,1,8,77,0,NULL,NULL),
  ('NZ013','NZ23004','James Neesham',2,3,10.00,1,2,20,2,'Right-arm medium',6.61),
  ('NZ014','NZ23004','Ish Sodhi',2,4,14.00,0,2,14,2,'Right-arm leg-break',7.21),
  ('NZ015','NZ23004','Mark Chapman',1,0,NULL,0,0,0,0,'Left-arm orthodox',NULL),
  ('PAK001','PAK23005','Abdullah Shafique',1,8,36.85,5,24,258,0,NULL,NULL),
  ('PAK002','PAK23005','Imam-ul-Haq',2,7,30.16,1,20,181,0,NULL,NULL),
  ('PAK003','PAK23005','Babar Azam',2,9,50.33,1,40,320,0,NULL,NULL),
  ('PAK004','PAK23005','Mohammad Rizwan',1,9,41.55,3,28,329,0,NULL,NULL),
  ('PAK005','PAK23005','Saud Shakeel',1,9,37.00,2,20,214,1,'Left-arm orthodox',5.57),
  ('PAK006','PAK23005','Iftikhar Ahmed',1,9,36.16,8,16,217,2,'Right-arm off-break',5.46),
  ('PAK007','PAK23005','Shadab Khan',2,7,13.20,2,4,66,2,'Right-arm leg-break',6.23),
  ('PAK008','PAK23005','Shaheen Afridi',1,9,15.25,2,7,63,18,'Left-arm fast',5.71),
  ('PAK009','PAK23005','Haris Rauf',1,9,5.33,0,2,16,16,'Right-arm fast',6.71),
  ('PAK010','PAK23005','Mohammad Wasim Jr',1,7,15.00,1,4,30,8,'Right-arm fast-medium',6.90),
  ('PAK011','PAK23005','Hasan Ali',2,8,8.66,1,3,26,9,'Right-arm fast-medium',6.72),
  ('PAK012','PAK23005','Fakhar Zaman',2,4,43.33,8,11,160,0,NULL,NULL),
  ('PAK013','PAK23005','Agha Salman',1,5,21.66,1,7,65,4,'Right-arm off-break',5.15),
  ('PAK014','PAK23005','Usama Mir',1,2,7.00,0,1,7,3,'Right-arm leg-break',7.00),
  ('PAK015','PAK23005','Mohammad Nawaz',1,1,NULL,0,0,0,0,'Left-arm orthodox',8.33),
  ('SA001','SA23002','Quinton de Kock',3,10,70.00,4,59,594,0,NULL,NULL),
  ('SA002','SA23002','Temba Bavuma',1,10,18.70,0,17,145,0,NULL,NULL),
  ('SA003','SA23002','Rassie van der Dussen',1,10,48.00,2,29,448,0,NULL,NULL),
  ('SA004','SA23002','Aiden Markram',1,10,55.00,9,28,397,2,'Right-arm off-break',6.30),
  ('SA005','SA23002','Heinrich Klaasen',1,10,90.00,12,30,350,0,NULL,NULL),
  ('SA006','SA23002','David Miller',3,10,40.00,6,17,290,0,NULL,NULL),
  ('SA007','SA23002','Marco Jansen',1,10,18.00,2,8,142,14,'Left-arm fast-medium',5.92),
  ('SA008','SA23002','Gerald Coetzee',1,8,15.00,1,6,75,20,'Right-arm fast',6.20),
  ('SA009','SA23002','Keshav Maharaj',1,10,5.50,0,1,11,14,'Left-arm orthodox',4.15),
  ('SA010','SA23002','Kagiso Rabada',2,9,7.00,0,2,14,13,'Right-arm fast',5.49),
  ('SA011','SA23002','Lungi Ngidi',1,7,3.00,0,0,3,8,'Right-arm fast',6.22),
  ('SA012','SA23002','Reeza Hendricks',1,1,12.00,0,2,12,0,NULL,NULL),
  ('SA013','SA23002','Tabraiz Shamsi',1,2,NULL,0,0,0,2,'Left-arm wrist-spin',7.14),
  ('SA014','SA23002','Andile Phehlukwayo',2,1,NULL,0,0,0,1,'Right-arm medium-fast',7.00),
  ('SA015','SA23002','Lizaad Williams',1,0,NULL,0,0,0,0,'Right-arm fast-medium',NULL),
  ('SL001','SL23009','Pathum Nissanka',1,9,37.22,6,32,335,0,NULL,NULL),
  ('SL002','SL23009','Kusal Perera',3,9,28.77,4,30,259,0,NULL,NULL),
  ('SL003','SL23009','Kusal Mendis',2,9,27.00,8,20,243,0,NULL,NULL),
  ('SL004','SL23009','Sadeera Samarawickrama',1,9,39.28,3,31,353,0,NULL,NULL),
  ('SL005','SL23009','Charith Asalanka',1,9,34.14,5,19,239,2,'Right-arm off-break',6.33),
  ('SL006','SL23009','Dhananjaya de Silva',2,9,26.85,3,18,188,4,'Right-arm off-break',5.88),
  ('SL007','SL23009','Dushan Hemantha',1,4,6.00,0,1,12,2,'Right-arm leg-break',6.57),
  ('SL008','SL23009','Maheesh Theekshana',1,9,8.00,0,3,24,9,'Right-arm off-break',5.27),
  ('SL009','SL23009','Kasun Rajitha',1,8,3.33,0,1,10,9,'Right-arm medium-fast',6.62),
  ('SL010','SL23009','Dilshan Madushanka',1,9,2.00,0,0,4,21,'Left-arm medium-fast',6.70),
  ('SL011','SL23009','Lahiru Kumara',1,6,1.00,0,0,1,6,'Right-arm fast',7.00),
  ('SL012','SL23009','Dimuth Karunaratne',2,4,23.00,0,12,69,0,NULL,NULL),
  ('SL013','SL23009','Dunith Wellalage',1,5,8.33,0,3,25,5,'Left-arm orthodox',5.65),
  ('SL014','SL23009','Chamika Karunaratne',1,1,NULL,0,0,0,0,'Right-arm medium',9.00),
  ('SL015','SL23009','Angelo Mathews',4,1,5.00,0,1,5,0,'Right-arm medium',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays`
--

DROP TABLE IF EXISTS `plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
  
CREATE TABLE 'plays` (
  'team1_id' varchar(30) DEFAULT NULL,
  'team2_id' varchar(30) DEFAULT NULL,
  'match_id varchar(20) DEFAULT NULL,
  KEY `team1_id` (`team1_id`),
  KEY `team2_id` (`team2_id`),
  KEY `match_id` (`match_id`),
  CONSTRAINT `plays_ibfk_1` FOREIGN KEY (`team1_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `plays_ibfk_2` FOREIGN KEY (`team2_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `plays_ibfk_3` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays'  WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
  
INSERT INTO `plays' VALUES 
  ('ENG23007','NZ23004','WC2023001'),
  ('PAK23005','NED23010','WC2023002'),
  ('BAN23008','AFG23006','WC2023003'),
  ('SA23002','SL23009','WC2023004'),
  ('IND23001','AUS23003','WC2023005'),
  ('NZ23004','NED23010','WC2023006'),
  ('ENG23007','BAN23008','WC2023007'),
  ('IND23001','AFG23006','WC2023008'),
  ('PAK23005','SL23009','WC2023009'),
  ('AUS23003','SA23002','WC2023010'),
  ('NZ23004','BAN23008','WC2023011'),
  ('IND23001','PAK23005','WC2023012'),
  ('ENG23007','AFG23006','WC2023013'),
  ('AUS23003','SL23009','WC2023014'),
  ('SA23002','NED23010','WC2023015'),
  ('NZ23004','AFG23006','WC2023016'),
  ('IND23001','BAN23008','WC2023017'),
  ('AUS23003','PAK23005','WC2023018'),
  ('NED23010','SL23009','WC2023019'),
  ('ENG23007','SA23002','WC2023020'),
  ('IND23001','NZ23004','WC2023021'),
  ('PAK23005','AFG23006','WC2023022'),
  ('SA23002','BAN23008','WC2023023'),
  ('AUS23003','NED23010','WC2023024'),
  ('ENG23007','SL23009','WC2023025'),
  ('PAK23005','SA23002','WC2023026'),
  ('AUS23003','NZ23004','WC2023027'),
  ('NED23010','BAN23008','WC2023028'),
  ('IND23001','ENG23007','WC2023029'),
  ('AFG23006','SL23009','WC2023030'),
  ('PAK23005','BAN23008','WC2023031'),
  ('NZ23004','SA23002','WC2023032'),
  ('IND23001','SL23009','WC2023033'),
  ('NED23010','AFG23006','WC2023034'),
  ('NZ23004','PAK23005','WC2023035'),
  ('ENG23007','AUS23003','WC2023036'),
  ('IND23001','SA23002','WC2023037')
  ('BAN23008','SL23009','WC2023038'),
  ('AUS23003','AFG23006','WC2023039'),
  ('ENG23007','NED23010','WC2023040'),
  ('NZ23004','SL23009','WC2023041'),
  ('SA23002','AFG23006','WC2023042'),
  ('AUS23003','BAN23008','WC2023043'),
  ('ENG23007','PAK23005','WC2023044'),
  ('IND23001','NED23010','WC2023045'),
  ('IND23001','NZ23004','WC2023SF1'),
  ('SA23002','AUS23003','WC2023SF2'),
  ('IND23001','AUS23003','WC2023FNL');
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` varchar(30) NOT NULL,
  `team_rank` int DEFAULT NULL,
  `team_name` varchar(20) NOT NULL,
  `no_of_wins` int DEFAULT NULL,
  `no_of_loses` int DEFAULT NULL,
  `no_of_draws` int DEFAULT NULL,
  `no_of_matches` int DEFAULT NULL,
  `no_of_bowlers` int DEFAULT NULL,
  `no_of_batsmans` int DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES
  ('AFG23006',6,'Afghanistan',4,5,0,9,NULL,NULL),
  ('AUS23003',3,'Australia',7,2,0,9,NULL,NULL),
  ('BAN23008',8,'Bangladesh',2,7,0,9,NULL,NULL),
  ('ENG23007',7,'England',3,6,0,9,NULL,NULL),
  ('IND23001',1,'India',9,0,0,9,NULL,NULL),
  ('NED23010',10,'Netherlands',2,7,0,9,NULL,NULL),
  ('NZ23004',4,'New Zealand',5,4,0,9,NULL,NULL),
  ('PAK23005',5,'Pakistan',4,5,0,9,NULL,NULL),
  ('SA23002',2,'South Africa',7,2,0,9,NULL,NULL),
  ('SL23009',9,'Sri Lanka',2,7,0,9,NULL,NULL);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpire`
--

DROP TABLE IF EXISTS `umpire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umpire` (
  `umpire_id` varchar(30) NOT NULL,
  `umpire_name` varchar(30) DEFAULT NULL,
  `no_of_matches` int DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`umpire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpire`
--

LOCK TABLES `umpire` WRITE;
/*!40000 ALTER TABLE `umpire` DISABLE KEYS */;
INSERT INTO `umpire` VALUES
  ('UMPELT23001','Nitin Menon',8,'India'),
  ('UMPELT23002','Marais Erasmus',8,'South Africa'),
  ('UMPELT23003','Christopher Gaffaney',7,'New Zealand'),
  ('UMPELT23004','Michael Gough ',6,'England'),
  ('UMPELT23005','Paul Reiffel',8,'Australia'),
  ('UMPELT23006','Richard Illingworth',8,'England'),
  ('UMPELT23007','Richard Kettleborough',6,'England'),
  ('UMPELT23008','Rodney Tucker',8,'Australia'),
  ('UMPELT23009','Joel Wilson',7,'West Indies'),
  ('UMPELT23010','Ahsan Raza',6,'Pakistan'),
  ('UMPELT23011','Adrian Holdstock ',7,'South Africa'),
  ('UMPELT23012','Kumar Dharmsena',8,'Sri Lanka'),
  ('UMPEMG23001','Sharfuddoula Ibne Shahid ',5,'Bangladesh'),
  ('UMPEMG23002','Paul Wilson',5,'Australia'),
  ('UMPEMG23003','Alex Wharf',5,'England'),
  ('UMPEMG23004','Chris Brown ',5,'New Zealand');
/*!40000 ALTER TABLE `umpire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpired_by`
--

DROP TABLE IF EXISTS `umpired_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umpired_by` (
  `match_id` varchar(20) DEFAULT NULL,
  `umpire_id` varchar(30) DEFAULT NULL,
  KEY `match_id` (`match_id`),
  KEY `umpire_id` (`umpire_id`),
  CONSTRAINT `umpired_by_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `umpired_by_ibfk_2` FOREIGN KEY (`umpire_id`) REFERENCES `umpire` (`umpire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpired_by`
--

LOCK TABLES `umpired_by` WRITE;
/*!40000 ALTER TABLE `umpired_by` DISABLE KEYS */;
INSERT INTO `umpired_by` VALUES
  ('WC2023001','UMPELT23001'),
  ('WC2023002','UMPELT23002'),
  ('WC2023003','UMPELT23003'),
  ('WC2023004','UMPELT23004'),
  ('WC2023005','UMPELT23005'),
  ('WC2023006','UMPELT23006'),
  ('WC2023007','UMPELT23007'),
  ('WC2023008','UMPELT23008'),
  ('WC2023009','UMPELT23009'),
  ('WC2023010','UMPELT23010'),
  ('WC2023011','UMPELT23011'),
  ('WC2023012','UMPELT23012'),
  ('WC2023013','UMPELT23001'),
  ('WC2023014','UMPELT23002'),
  ('WC2023015','UMPELT23003'),
  ('WC2023016','UMPELT23004'),
  ('WC2023017','UMPELT23005'),
  ('WC2023018','UMPELT23006'),
  ('WC2023019','UMPELT23007'),
  ('WC2023020','UMPELT23008'),
  ('WC2023021','UMPELT23009'),
  ('WC2023022','UMPELT23010'),
  ('WC2023023','UMPELT23011'),
  ('WC2023024','UMPELT23012'),
  ('WC2023025','UMPELT23001'),
  ('WC2023026','UMPELT23002'),
  ('WC2023027','UMPELT23003'),
  ('WC2023028','UMPELT23004'),
  ('WC2023029','UMPELT23005'),
  ('WC2023030','UMPELT23006'),
  ('WC2023031','UMPELT23007'),
  ('WC2023032','UMPELT23008'),
  ('WC2023033','UMPELT23009'),
  ('WC2023034','UMPELT23010'),
  ('WC2023035','UMPELT23011'),
  ('WC2023036','UMPELT23012'),
  ('WC2023037','UMPELT23001'),
  ('WC2023038','UMPELT23002'),
  ('WC2023039','UMPELT23003'),
  ('WC2023040','UMPELT23004'),
  ('WC2023041','UMPELT23005'),
  ('WC2023042','UMPELT23006'),
  ('WC2023043','UMPELT23007'),
  ('WC2023044','UMPELT23008'),
  ('WC2023045','UMPELT23009'),
  ('WC2023SF1','UMPELT23010'),
  ('WC2023SF2','UMPELT23011'),
  ('WC2023FNL','UMPELT23012');
/*!40000 ALTER TABLE `umpired_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wicket_keeper`
--

DROP TABLE IF EXISTS `wicket_keeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wicket_keeper` (
  `wk_id` varchar(20) NOT NULL,
  `team_id` varchar(30) DEFAULT NULL,
  `wk_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`wk_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `wicket_keeper_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wicket_keeper`
--

LOCK TABLES `wicket_keeper` WRITE;
/*!40000 ALTER TABLE `wicket_keeper` DISABLE KEYS */;
INSERT INTO `wicket_keeper` VALUES
  ('Wk_001','IND23001','Ishan kishan'),
  ('Wk_002','IND23001','Kl Rahul'),
  ('Wk_003','SA23002','Quinton de Kock'),
  ('Wk_004','SA23002','Heinrich klaasen'),
  ('Wk_005','AUS23003','Alex carey'),
  ('Wk_006','AUS23003','Josh inglis'),
  ('Wk_007','NZ23004','Devon Conway'),
  ('Wk_008','NZ23004','Tom Latham'),
  ('Wk_009','PAK23005','Mohammad Rizwan'),
  ('Wk_010','AFG23006','Rahmanullah Gurbaz'),
  ('Wk_011','AFG23006','Ikram Alikhil'),
  ('Wk_012','ENG23007','Joss Buttler'),
  ('Wk_013','ENG23007','Jonny Bairstow'),
  ('Wk_014','BAN23008','Mushfiqur Rahim'),
  ('Wk_015','BAN23008','Litton Das'),
  ('Wk_016','BAN23008','Anamul Haque'),
  ('Wk_017','SL23009','Kusal Mendis'),
  ('Wk_018','SL23009','Kusal Perera'),
  ('Wk_019','SL23009','Sadeera Samarawickrama'),
  ('Wk_020','NED23010','Scott Edwards'),
  ('Wk_021','NED23010','Wesley Barresi'),
  ('Wk_022','NED23010','Noah Croes');
/*!40000 ALTER TABLE `wicket_keeper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 15:03:04
