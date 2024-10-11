-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: covoit2024
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CovoitUser`
--

DROP TABLE IF EXISTS `CovoitUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CovoitUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CovoitUser`
--

LOCK TABLES `CovoitUser` WRITE;
/*!40000 ALTER TABLE `CovoitUser` DISABLE KEYS */;
INSERT INTO `CovoitUser` VALUES (1,'User2010','Thomas','101010101','user1@example.com','$2b$12$H6PTTP30pKf2ZksoqZiCJ.l3PlEy07S7NheMg1GqDdKhQzZKoeXi2'),(2,'User2011','Lucas','202020202','user2@example.com','$2b$12$Jp/sytogZiQemyd/RHkKauaKkJagT/xVPEEbqz20FK/eGFSafPg0G'),(3,'User2012','Cleman','303030303','user3@example.com','$2b$12$cne/wOJKeX7BqMoeZDs8j.BLmA1i4vgSYSjmHDgMhVYmHBG2agUC2'),(4,'User2013','Tristan','404040404','user4@example.com','$2b$12$iUv2RHykmHNoU56CCtIM6e.0V/mNLTKCpP6WCBU4iZQ65bOL.2YHe'),(5,'User2014','Nathan','505050505','user5@example.com','$2b$12$f4slOz0P6EUR8IaV8s1MP.teCiUXx29twMnKXu7.iTByNkpjKB8V2'),(6,'User2015','Jade','606060606','user6@example.com','$2b$12$bu/Lf3/gg/KhWrJNvPJ/su8V5sPpPwi8F8OunD91b1h8IrMkg4Auu'),(7,'User2016','Tom','707070707','user7@example.com','$2b$12$BbxG5.l7CYwkjsWWIXWjkexJiRXIU1TrB2Eaec9oXvGFL7qITwVKK'),(8,'User2017','Alice','808080808','user8@example.com','$2b$12$iSTsnsRfKCFZ0YA67FjlaewfZTXELSFFVEjwOtMVloOu62p9/eCvW'),(9,'User2018','Marion','909090909','user9@example.com','$2b$12$SDiYyInPXxwaJ6y83DHTgOmUNR12qA2eYNXEsoOB2AaxQWpOOnfl6'),(10,'User2019','Amélia','644090989','user10@example.com','$2b$12$FfvatgGjqnIiLMRJ3UAoX.mTQj2KND6uAHE1JXiHaXxoVDE..oj8m');
/*!40000 ALTER TABLE `CovoitUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OffreCovoit`
--

DROP TABLE IF EXISTS `OffreCovoit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OffreCovoit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` enum('lundi','mardi','mercredi','jeudi','vendredi') NOT NULL,
  `heure` time NOT NULL,
  `date` date NOT NULL,
  `lieu` varchar(40) NOT NULL,
  `chauffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chauffeur` (`chauffeur`),
  CONSTRAINT `OffreCovoit_ibfk_1` FOREIGN KEY (`chauffeur`) REFERENCES `CovoitUser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OffreCovoit`
--

LOCK TABLES `OffreCovoit` WRITE;
/*!40000 ALTER TABLE `OffreCovoit` DISABLE KEYS */;
/*!40000 ALTER TABLE `OffreCovoit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11  9:48:51
