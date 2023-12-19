-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: teamtechsupport
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `mID` int NOT NULL,
  `mNAMES` varchar(45) DEFAULT NULL,
  `mBIO` varchar(1000) DEFAULT NULL,
  `mIMAGE` blob,
  `tID` int DEFAULT NULL,
  `jID` int DEFAULT NULL,
  PRIMARY KEY (`mID`),
  KEY `tID_idx` (`tID`),
  KEY `jID_idx` (`jID`),
  CONSTRAINT `jID` FOREIGN KEY (`jID`) REFERENCES `jobstable` (`jID`),
  CONSTRAINT `tID` FOREIGN KEY (`tID`) REFERENCES `teamtable` (`tID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Riyan Anosh','He is profecient in HTML, Python, and knows how to host a website. He enjoys playing old-school video games and hanging out with his brother, Rehan Anosh.',NULL,NULL,1),(2,'Rehan Mohammad','He knows HTML and some Python. He enjoys reading classics, such as The Three Musketeers. He also enjoys playing sports such as Badminton and Basketball. He also enjoys playing video games with his friends',NULL,NULL,5),(3,'Amaan Mohammad','He is skilled in Python HTML, Java, and Javascript. He enjoys gaming, reading literary classics, and his favorite color is blue.',NULL,NULL,4),(4,'Varin Adusumalli','He is skilled in C, Python, HTML, and other languages. He enjoys the movie Intersteller, knows Muay Thai and boxing, loves football, and enjoys... French',NULL,NULL,3),(5,'Rishaan Joshi','He has a bad sense of humor, is rather creative, has generally good ideas, and is a movie addict. He also enjoys digital photography. He created our team logo.',NULL,NULL,2),(6,'Jason Lai','He is experienced in Python, HTML, Lua, and knows a little bit of Java/C/C++. He enjoys swimming, badminton,  and tinkering with DIY inventions.',NULL,NULL,3);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 10:34:37
