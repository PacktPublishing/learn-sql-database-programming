CREATE DATABASE  IF NOT EXISTS `lahmansbaseballdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lahmansbaseballdb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lahmansbaseballdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `teamshalf`
--

DROP TABLE IF EXISTS `teamshalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teamshalf` (
  `yearID` smallint(6) NOT NULL,
  `lgID` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teamID` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Half` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `divID` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DivWin` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rank` smallint(6) DEFAULT NULL,
  `G` smallint(6) DEFAULT NULL,
  `W` smallint(6) DEFAULT NULL,
  `L` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`lgID`,`teamID`,`Half`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamshalf`
--

LOCK TABLES `teamshalf` WRITE;
/*!40000 ALTER TABLE `teamshalf` DISABLE KEYS */;
INSERT INTO `teamshalf` VALUES (1981,'AL','BAL','1','E','N',2,54,31,23),(1981,'AL','BAL','2','E','N',4,51,28,23),(1981,'AL','BOS','1','E','N',5,56,30,26),(1981,'AL','BOS','2','E','N',2,52,29,23),(1981,'AL','CAL','1','W','N',4,60,31,29),(1981,'AL','CAL','2','W','N',6,50,20,30),(1981,'AL','CHA','1','W','N',3,53,31,22),(1981,'AL','CHA','2','W','N',6,53,23,30),(1981,'AL','CLE','1','E','N',6,50,26,24),(1981,'AL','CLE','2','E','N',5,53,26,27),(1981,'AL','DET','1','E','N',4,57,31,26),(1981,'AL','DET','2','E','N',2,52,29,23),(1981,'AL','KCA','1','W','N',5,50,20,30),(1981,'AL','KCA','2','W','N',1,53,30,23),(1981,'AL','MIN','1','W','N',7,56,17,39),(1981,'AL','MIN','2','W','N',4,53,24,29),(1981,'AL','ML4','1','E','N',3,56,31,25),(1981,'AL','ML4','2','E','N',1,53,31,22),(1981,'AL','NYA','1','E','N',1,56,34,22),(1981,'AL','NYA','2','E','N',5,51,25,26),(1981,'AL','OAK','1','W','N',1,60,37,23),(1981,'AL','OAK','2','W','N',2,49,27,22),(1981,'AL','SEA','1','W','N',6,57,21,36),(1981,'AL','SEA','2','W','N',5,52,23,29),(1981,'AL','TEX','1','W','N',2,55,33,22),(1981,'AL','TEX','2','W','N',3,50,24,26),(1981,'AL','TOR','1','E','N',7,58,16,42),(1981,'AL','TOR','2','E','N',6,48,21,27),(1981,'NL','ATL','1','W','N',4,54,25,29),(1981,'NL','ATL','2','W','N',5,52,25,27),(1981,'NL','CHN','1','E','N',6,52,15,37),(1981,'NL','CHN','2','E','N',5,51,23,28),(1981,'NL','CIN','1','W','N',2,56,35,21),(1981,'NL','CIN','2','W','N',2,52,31,21),(1981,'NL','HOU','1','W','N',3,57,28,29),(1981,'NL','HOU','2','W','N',1,53,33,20),(1981,'NL','LAN','1','W','N',1,57,36,21),(1981,'NL','LAN','2','W','N',4,53,27,26),(1981,'NL','MON','1','E','N',3,55,30,25),(1981,'NL','MON','2','E','N',1,53,30,23),(1981,'NL','NYN','1','E','N',5,51,17,34),(1981,'NL','NYN','2','E','N',4,52,24,28),(1981,'NL','PHI','1','E','N',1,55,34,21),(1981,'NL','PHI','2','E','N',3,52,25,27),(1981,'NL','PIT','1','E','N',4,48,25,23),(1981,'NL','PIT','2','E','N',6,54,21,33),(1981,'NL','SDN','1','W','N',6,56,23,33),(1981,'NL','SDN','2','W','N',6,54,18,36),(1981,'NL','SFN','1','W','N',5,59,27,32),(1981,'NL','SFN','2','W','N',3,52,29,23),(1981,'NL','SLN','1','E','N',2,50,30,20),(1981,'NL','SLN','2','E','N',2,52,29,23);
/*!40000 ALTER TABLE `teamshalf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 18:01:57
