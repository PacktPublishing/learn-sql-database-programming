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
-- Table structure for table `managershalf`
--

DROP TABLE IF EXISTS `managershalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managershalf` (
  `playerID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `yearID` smallint(6) NOT NULL,
  `teamID` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lgID` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `inseason` smallint(6) DEFAULT NULL,
  `half` smallint(6) NOT NULL,
  `G` smallint(6) DEFAULT NULL,
  `W` smallint(6) DEFAULT NULL,
  `L` smallint(6) DEFAULT NULL,
  `rank` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`teamID`,`half`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managershalf`
--

LOCK TABLES `managershalf` WRITE;
/*!40000 ALTER TABLE `managershalf` DISABLE KEYS */;
INSERT INTO `managershalf` VALUES ('amalfjo01',1981,'CHN','NL',1,1,54,15,37,6),('amalfjo01',1981,'CHN','NL',1,2,52,23,28,5),('andersp01',1981,'DET','AL',1,1,57,31,26,4),('andersp01',1981,'DET','AL',1,2,52,29,23,2),('ansonca01',1892,'CHN','NL',1,1,71,31,39,8),('ansonca01',1892,'CHN','NL',1,2,76,39,37,7),('barnibi01',1892,'WAS','NL',1,1,2,0,2,7),('buckeal99',1892,'PIT','NL',1,1,29,15,14,6),('buckeal99',1892,'PIT','NL',3,2,66,38,27,4),('burnsto01',1892,'PIT','NL',2,1,47,22,25,6),('burnsto01',1892,'PIT','NL',2,2,13,5,7,4),('carutbo01',1892,'SLN','NL',5,2,50,16,32,11),('chapmja01',1892,'LS3','NL',1,1,54,21,33,11),('comisch01',1892,'CIN','NL',1,1,77,44,31,4),('comisch01',1892,'CIN','NL',1,2,78,38,37,8),('coxbo01',1981,'ATL','NL',1,1,55,25,29,4),('coxbo01',1981,'ATL','NL',1,2,52,25,27,5),('crookja01',1892,'SLN','NL',3,1,47,24,22,9),('crookja01',1892,'SLN','NL',3,2,15,3,11,11),('fanniji01',1981,'MON','NL',2,2,27,16,11,1),('fregoji01',1981,'CAL','AL',1,1,47,22,25,4),('freyji99',1981,'KCA','AL',1,1,50,20,30,5),('freyji99',1981,'KCA','AL',1,2,20,10,10,1),('garcida99',1981,'CLE','AL',1,1,50,26,24,6),('garcida99',1981,'CLE','AL',1,2,53,26,27,5),('gardnbi02',1981,'MIN','AL',2,1,20,6,14,7),('gardnbi02',1981,'MIN','AL',2,2,53,24,29,4),('glassja01',1892,'SLN','NL',1,1,4,1,3,9),('gorege01',1892,'SLN','NL',4,2,16,6,9,11),('goryljo01',1981,'MIN','AL',1,1,37,11,25,7),('greenda02',1981,'PHI','NL',1,1,55,34,21,1),('greenda02',1981,'PHI','NL',1,2,52,25,27,3),('hanlone01',1892,'BLN','NL',3,1,56,17,39,12),('hanlone01',1892,'BLN','NL',3,2,77,26,46,10),('herzowh01',1981,'SLN','NL',1,1,51,30,20,2),('herzowh01',1981,'SLN','NL',1,2,52,29,23,2),('houkra01',1981,'BOS','AL',1,1,56,30,26,5),('houkra01',1981,'BOS','AL',1,2,52,29,23,2),('howarfr01',1981,'SDN','NL',1,1,56,23,33,6),('howarfr01',1981,'SDN','NL',1,2,54,18,36,6),('howsedi01',1981,'KCA','AL',2,2,33,20,13,1),('irwinar01',1892,'WAS','NL',2,1,74,35,39,7),('irwinar01',1892,'WAS','NL',2,2,34,11,21,12),('lachere01',1981,'SEA','AL',2,1,33,15,18,6),('lachere01',1981,'SEA','AL',2,2,52,23,29,5),('larusto01',1981,'CHA','AL',1,1,53,31,22,3),('larusto01',1981,'CHA','AL',1,2,53,23,30,6),('lasorto01',1981,'LAN','NL',1,1,57,36,21,1),('lasorto01',1981,'LAN','NL',1,2,53,27,26,4),('lemonbo01',1981,'NYA','AL',2,2,25,11,14,6),('martibi02',1981,'OAK','AL',1,1,60,37,23,1),('martibi02',1981,'OAK','AL',1,2,49,27,22,2),('mattibo01',1981,'TOR','AL',1,1,58,16,42,7),('mattibo01',1981,'TOR','AL',1,2,48,21,27,7),('mauchge01',1981,'CAL','AL',2,1,13,9,4,4),('mauchge01',1981,'CAL','AL',2,2,50,20,30,7),('mcnamjo99',1981,'CIN','NL',1,1,56,35,21,2),('mcnamjo99',1981,'CIN','NL',1,2,52,31,21,2),('michage01',1981,'NYA','AL',1,1,56,34,22,1),('michage01',1981,'NYA','AL',1,2,26,14,12,6),('pfefffr01',1892,'LS3','NL',2,1,23,9,14,11),('pfefffr01',1892,'LS3','NL',2,2,77,33,42,9),('powerpa99',1892,'NY1','NL',1,1,74,31,43,10),('powerpa99',1892,'NY1','NL',1,2,79,40,37,6),('richada01',1892,'WAS','NL',3,2,43,12,31,12),('robinfr02',1981,'SFN','NL',1,1,59,27,32,5),('robinfr02',1981,'SFN','NL',1,2,52,29,23,3),('rodgebu01',1981,'ML4','AL',1,1,56,31,25,3),('rodgebu01',1981,'ML4','AL',1,2,53,31,22,1),('seleefr99',1892,'BSN','NL',1,1,75,52,22,1),('seleefr99',1892,'BSN','NL',1,2,77,50,26,2),('striccu01',1892,'SLN','NL',2,1,23,6,17,9),('tannech01',1981,'PIT','NL',1,1,49,25,23,4),('tannech01',1981,'PIT','NL',1,2,54,21,33,6),('tebeapa01',1892,'CL4','NL',1,1,74,40,33,5),('tebeapa01',1892,'CL4','NL',1,2,79,53,23,1),('torrejo01',1981,'NYN','NL',1,1,52,17,34,5),('torrejo01',1981,'NYN','NL',1,2,53,24,28,4),('vanhage01',1892,'BLN','NL',1,1,11,1,10,12),('virdobi01',1981,'HOU','NL',1,1,57,28,29,3),('virdobi01',1981,'HOU','NL',1,2,53,33,20,1),('waltzjo99',1892,'BLN','NL',2,1,8,2,6,12),('wardjo01',1892,'BRO','NL',1,1,78,51,26,2),('wardjo01',1892,'BRO','NL',1,2,80,44,33,3),('weaveea99',1981,'BAL','AL',1,1,54,31,23,2),('weaveea99',1981,'BAL','AL',1,2,51,28,23,4),('willidi02',1981,'MON','NL',1,1,55,30,25,3),('willidi02',1981,'MON','NL',1,2,26,14,12,1),('willsma01',1981,'SEA','AL',1,1,25,6,18,6),('wrighha01',1892,'PHI','NL',1,1,77,46,30,3),('wrighha01',1892,'PHI','NL',1,2,78,41,36,5),('zimmedo01',1981,'TEX','AL',1,1,55,33,22,2),('zimmedo01',1981,'TEX','AL',1,2,50,24,26,3);
/*!40000 ALTER TABLE `managershalf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 18:01:50
