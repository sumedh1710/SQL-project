-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: epl_1
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BOOKING_ID` int NOT NULL,
  `MATCH_ID` int DEFAULT NULL,
  `PLAYER_ID` int DEFAULT NULL,
  `CARD_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BOOKING_ID`),
  KEY `MATCH_ID` (`MATCH_ID`),
  KEY `PLAYER_ID` (`PLAYER_ID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`MATCH_ID`) REFERENCES `matches` (`MATCH_ID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`PLAYER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,1,'Red'),(2,2,2,'Yellow'),(3,3,3,'Yellow'),(4,4,4,'Red');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `CLUB_ID` int NOT NULL,
  `CLUB_NAME` varchar(255) DEFAULT NULL,
  `FOUNDED_YEAR` int DEFAULT NULL,
  `HOME_STADIUM` varchar(255) DEFAULT NULL,
  `MANAGER_NAME` varchar(255) DEFAULT NULL,
  `CLUB_VALUE` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1,'Manchester United',1878,'Old Trafford','Ole Gunnar',3500000000.00),(2,'Manchester City',1880,'Etihad Stadium','Pep Guardiola',4000000000.00),(3,'Liverpool',1892,'Anfield','Jurgen Klopp',3200000000.00),(4,'Chelsea',1905,'Stamford Bridge','Thomas Tuchel',3800000000.00);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `GOAL_ID` int NOT NULL,
  `MATCH_ID` int DEFAULT NULL,
  `PLAYER_ID` int DEFAULT NULL,
  PRIMARY KEY (`GOAL_ID`),
  KEY `MATCH_ID` (`MATCH_ID`),
  KEY `PLAYER_ID` (`PLAYER_ID`),
  CONSTRAINT `goals_ibfk_1` FOREIGN KEY (`MATCH_ID`) REFERENCES `matches` (`MATCH_ID`),
  CONSTRAINT `goals_ibfk_2` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`PLAYER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `injuries`
--

DROP TABLE IF EXISTS `injuries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `injuries` (
  `INJURY_ID` int NOT NULL,
  `PLAYER_ID` int DEFAULT NULL,
  `INJURY_TYPE` varchar(50) DEFAULT NULL,
  `INJURY_DATE` date DEFAULT NULL,
  `RECOVERY_DATE` date DEFAULT NULL,
  PRIMARY KEY (`INJURY_ID`),
  KEY `PLAYER_ID` (`PLAYER_ID`),
  CONSTRAINT `injuries_ibfk_1` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`PLAYER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `injuries`
--

LOCK TABLES `injuries` WRITE;
/*!40000 ALTER TABLE `injuries` DISABLE KEYS */;
INSERT INTO `injuries` VALUES (1,1,'Hamstring','2023-01-20','2023-02-10'),(2,2,'Ankle','2023-02-05','2023-03-01'),(3,3,'Knee','2023-01-25','2023-02-15'),(4,4,'Groin','2023-02-10','2023-03-05');
/*!40000 ALTER TABLE `injuries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `MANAGER_ID` int NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `NATIONALITY` varchar(50) DEFAULT NULL,
  `CLUB_ID` int DEFAULT NULL,
  PRIMARY KEY (`MANAGER_ID`),
  KEY `CLUB_ID` (`CLUB_ID`),
  CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Ole','Gunnar','1973-05-26','Norwegian',1),(2,'Pep','Guardiola','1971-01-18','Spanish',2),(3,'Jurgen','Klopp','1967-06-16','German',3),(4,'Thomas','Tuchel','1973-08-29','German',4);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `MATCH_ID` int NOT NULL,
  `MATCH_DATE` date DEFAULT NULL,
  `HOME_CLUB_ID` int DEFAULT NULL,
  `AWAY_CLUB_ID` int DEFAULT NULL,
  `HOME_GOALS` int DEFAULT NULL,
  `AWAY_GOALS` int DEFAULT NULL,
  PRIMARY KEY (`MATCH_ID`),
  KEY `HOME_CLUB_ID` (`HOME_CLUB_ID`),
  KEY `AWAY_CLUB_ID` (`AWAY_CLUB_ID`),
  CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`HOME_CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`),
  CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`AWAY_CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,'2023-01-01',1,2,2,2),(2,'2023-01-02',3,2,0,3),(3,'2023-01-03',4,1,1,2),(4,'2023-01-04',2,3,3,1);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `PLAYER_ID` int NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `POSITION` varchar(50) DEFAULT NULL,
  `CLUB_ID` int DEFAULT NULL,
  PRIMARY KEY (`PLAYER_ID`),
  KEY `CLUB_ID` (`CLUB_ID`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Bruno','Fernandes','1995-09-08','Midfield',1),(2,'Kevin','De Bruyne','1991-06-28','Midfield',2),(3,'Mohamed','Salah','1992-06-15','Winger',3),(4,'Timo','Werner','1996-03-06','Forward',4);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referees` (
  `REFEREE_ID` int NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `NATIONALITY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REFEREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
INSERT INTO `referees` VALUES (1,'Mike','Dean','English'),(2,'Martin','Atkinson','English'),(3,'Anthony','Taylor','English'),(4,'Felix','Brych','German');
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadiums`
--

DROP TABLE IF EXISTS `stadiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadiums` (
  `STADIUM_ID` int NOT NULL,
  `STADIUM_NAME` varchar(255) DEFAULT NULL,
  `CAPACITY` int DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  `HOME_CLUB_ID` int DEFAULT NULL,
  PRIMARY KEY (`STADIUM_ID`),
  KEY `HOME_CLUB_ID` (`HOME_CLUB_ID`),
  CONSTRAINT `stadiums_ibfk_1` FOREIGN KEY (`HOME_CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadiums`
--

LOCK TABLES `stadiums` WRITE;
/*!40000 ALTER TABLE `stadiums` DISABLE KEYS */;
INSERT INTO `stadiums` VALUES (1,'Old Trafford',74000,'Manchester',1),(2,'Etihad Stadium',53000,'Manchester',2),(3,'Anfield',54074,'Liverpool',3),(4,'Stamford Bridge',40834,'London',4);
/*!40000 ALTER TABLE `stadiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standings`
--

DROP TABLE IF EXISTS `standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standings` (
  `STANDING_ID` int NOT NULL,
  `SEASON` int DEFAULT NULL,
  `CLUB_ID` int DEFAULT NULL,
  `POINTS` int DEFAULT NULL,
  `POSITION` int DEFAULT NULL,
  PRIMARY KEY (`STANDING_ID`),
  KEY `CLUB_ID` (`CLUB_ID`),
  CONSTRAINT `standings_ibfk_1` FOREIGN KEY (`CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standings`
--

LOCK TABLES `standings` WRITE;
/*!40000 ALTER TABLE `standings` DISABLE KEYS */;
INSERT INTO `standings` VALUES (1,2021,2,98,1),(2,2021,1,101,2),(3,2021,3,95,3),(4,2021,4,88,4);
/*!40000 ALTER TABLE `standings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfers` (
  `TRANSFER_ID` int NOT NULL,
  `PLAYER_ID` int DEFAULT NULL,
  `PREVIOUS_CLUB_ID` int DEFAULT NULL,
  `NEW_CLUB_ID` int DEFAULT NULL,
  PRIMARY KEY (`TRANSFER_ID`),
  KEY `PLAYER_ID` (`PLAYER_ID`),
  KEY `PREVIOUS_CLUB_ID` (`PREVIOUS_CLUB_ID`),
  KEY `NEW_CLUB_ID` (`NEW_CLUB_ID`),
  CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`PLAYER_ID`),
  CONSTRAINT `transfers_ibfk_2` FOREIGN KEY (`PREVIOUS_CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`),
  CONSTRAINT `transfers_ibfk_3` FOREIGN KEY (`NEW_CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` VALUES (1,1,3,1),(2,2,1,2),(3,3,2,3),(4,4,3,4);
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trophies`
--

DROP TABLE IF EXISTS `trophies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trophies` (
  `TROPHY_ID` int NOT NULL,
  `CLUB_ID` int DEFAULT NULL,
  `TROPHY_NAME` varchar(255) DEFAULT NULL,
  `YEAR_WON` int DEFAULT NULL,
  PRIMARY KEY (`TROPHY_ID`),
  KEY `CLUB_ID` (`CLUB_ID`),
  CONSTRAINT `trophies_ibfk_1` FOREIGN KEY (`CLUB_ID`) REFERENCES `clubs` (`CLUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trophies`
--

LOCK TABLES `trophies` WRITE;
/*!40000 ALTER TABLE `trophies` DISABLE KEYS */;
INSERT INTO `trophies` VALUES (1,1,'Premier League',2021),(2,2,'Champions League',2011),(3,3,'Premier League',2020),(4,4,'FA Cup',2018);
/*!40000 ALTER TABLE `trophies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'epl_1'
--

--
-- Dumping routines for database 'epl_1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 18:37:51
