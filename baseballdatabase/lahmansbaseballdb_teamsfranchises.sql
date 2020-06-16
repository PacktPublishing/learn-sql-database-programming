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
-- Table structure for table `teamsfranchises`
--

DROP TABLE IF EXISTS `teamsfranchises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teamsfranchises` (
  `franchID` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `franchName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NAassoc` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`franchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamsfranchises`
--

LOCK TABLES `teamsfranchises` WRITE;
/*!40000 ALTER TABLE `teamsfranchises` DISABLE KEYS */;
INSERT INTO `teamsfranchises` VALUES ('ALT','Altoona Mountain City','N',NULL),('ANA','Los Angeles Angels of Anaheim','Y',NULL),('ARI','Arizona Diamondbacks','Y',NULL),('ATH','Philadelphia Athletics','N','PNA'),('ATL','Atlanta Braves','Y','BNA'),('BAL','Baltimore Orioles','Y',NULL),('BFB','Buffalo Bisons','N',NULL),('BFL','Buffalo Bisons','N',NULL),('BLC','Baltimore Canaries','NA',NULL),('BLO','Baltimore Orioles','N',NULL),('BLT','Baltimore Terrapins','N',NULL),('BLU','Baltimore Monumentals','N',NULL),('BNA','Boston Red Stockings','NA','ATL'),('BOS','Boston Red Sox','Y',NULL),('BRA','Brooklyn Atlantics','NA',NULL),('BRD','Boston Reds','N',NULL),('BRG','Brooklyn Gladiators','N',NULL),('BRS','Boston Reds','N',NULL),('BTT','Brooklyn Tip-Tops','N',NULL),('BUF','Buffalo Bisons','N',NULL),('BWW','Brooklyn Ward\'s Wonders','N',NULL),('CBK','Columbus Buckeyes','N',NULL),('CBL','Cleveland Blues','N',NULL),('CEN','Philadelphia Centennials','NA',NULL),('CFC','Cleveland Forest Citys','NA',NULL),('CHC','Chicago Cubs','Y','CNA'),('CHH','Chicago Whales','N',NULL),('CHP','Chicago Pirates','N',NULL),('CHW','Chicago White Sox','Y',NULL),('CIN','Cincinnati Reds','Y',NULL),('CKK','Cincinnati Kelly\'s Killers','N',NULL),('CLE','Cleveland Indians','Y',NULL),('CLI','Cleveland Infants','N',NULL),('CLS','Columbus Solons','N',NULL),('CLV','Cleveland Spiders','N',NULL),('CNA','Chicago White Stockings','NA','CHC'),('CNR','Cincinnati Reds','N',NULL),('COL','Colorado Rockies','Y',NULL),('COR','Cincinnati Outlaw Reds','N',NULL),('CPI','Chicago/Pittsburgh (Union League)','N',NULL),('DET','Detroit Tigers','Y',NULL),('DTN','Detroit Wolverines','N',NULL),('ECK','Brooklyn Eckfords','NA',NULL),('FLA','Florida Marlins','Y',NULL),('HAR','Hartford Dark Blues','N','HNA'),('HNA','Hartford Dark Blues','NA','HAR'),('HOU','Houston Astros','Y',NULL),('IBL','Indianapolis Blues','N',NULL),('IHO','Indianapolis Hoosiers','N',NULL),('IND','Indianapolis Hoosiers','N',NULL),('KCC','Kansas City Cowboys','N',NULL),('KCN','Kansas City Cowboys','N',NULL),('KCP','Kansas City Packers','N',NULL),('KCR','Kansas City Royals','Y',NULL),('KCU','Kansas City Cowboys','N',NULL),('KEK','Fort Wayne Kekiongas','NA',NULL),('LAD','Los Angeles Dodgers','Y',NULL),('LGR','Louisville Grays','N',NULL),('LOU','Louisville Colonels','N',NULL),('MAN','Middletown Mansfields','NA',NULL),('MAR','Baltimore Marylands','NA',NULL),('MIL','Milwaukee Brewers','Y',NULL),('MIN','Minnesota Twins','Y',NULL),('MLA','Milwaukee Brewers','N',NULL),('MLG','Milwaukee Grays','N',NULL),('MLU','Milwaukee Brewers','N',NULL),('NAT','Washington Nationals','NA',NULL),('NEW','Newark Pepper','N',NULL),('NHV','New Haven Elm Citys','NA',NULL),('NNA','New York Mutuals','NA','NYU'),('NYI','New York Giants','N',NULL),('NYM','New York Mets','Y',NULL),('NYP','New York Metropolitans','N',NULL),('NYU','New York Mutuals','N','NNA'),('NYY','New York Yankees','Y',NULL),('OAK','Oakland Athletics','Y',NULL),('OLY','Washington Olympics','NA',NULL),('PBB','Pittsburgh Burghers','N',NULL),('PBS','Pittsburgh Rebels','N',NULL),('PHA','Philadelphia Athletics','N',NULL),('PHI','Philadelphia Phillies','Y',NULL),('PHK','Philadelphia Keystones','N',NULL),('PHQ','Philadelphia Athletics','N',NULL),('PIT','Pittsburgh Pirates','Y',NULL),('PNA','Philadelphia Athletics','NA','ATH'),('PRO','Providence Grays','N',NULL),('PWS','Philadelphia White Stockings','NA',NULL),('RES','Elizabeth Resolutes','NA',NULL),('RIC','Richmond Virginians','N',NULL),('ROC','Rochester Broncos','N',NULL),('ROK','Rockford Forest Citys','NA',NULL),('SBS','St. Louis Brown Stockings','N','SNA'),('SDP','San Diego Padres','Y',NULL),('SEA','Seattle Mariners','Y',NULL),('SFG','San Francisco Giants','Y',NULL),('SLI','St. Louis Terriers','N',NULL),('SLM','St. Louis Maroons','N',NULL),('SLR','St. Louis Red Stockings','NA',NULL),('SNA','St. Louis Brown Stockings','NA','SBS'),('STL','St. Louis Cardinals','Y',NULL),('STP','St. Paul Apostles','N',NULL),('SYR','Syracuse Stars','N',NULL),('SYS','Syracuse Stars','N',NULL),('TBD','Tampa Bay Rays','Y',NULL),('TEX','Texas Rangers','Y',NULL),('TLM','Toledo Maumees','N',NULL),('TOL','Toledo Blue Stockings','N',NULL),('TOR','Toronto Blue Jays','Y',NULL),('TRO','Troy Haymakers','NA',NULL),('TRT','Troy Trojans','N',NULL),('WAS','Washington Senators','N',NULL),('WBL','Washington Blue Legs','NA',NULL),('WES','Keokuk Westerns','NA',NULL),('WIL','Wilmington Quicksteps','N',NULL),('WNA','Washington Nationals','N',NULL),('WNL','Washington Nationals','N',NULL),('WNT','Washington Nationals','NA',NULL),('WOR','Worcester Ruby Legs','N',NULL),('WSN','Washington Nationals','Y',NULL),('WST','Washington Statesmen','N',NULL);
/*!40000 ALTER TABLE `teamsfranchises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 18:01:58
