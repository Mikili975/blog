-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,'Mickey','Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 ','2017-08-19 13:55:47','2017-08-19 13:55:47'),(2,3,'Neko drugi','Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 vv','2017-08-19 14:57:21','2017-08-19 14:57:21'),(3,2,'Neko treci','Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 ','2017-08-19 15:42:22','2017-08-19 15:42:22'),(4,2,'Mickey','Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 ','2017-08-19 15:55:14','2017-08-19 15:55:14'),(5,4,'Neko drugi','Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 ','2017-08-19 16:12:55','2017-08-19 15:55:14'),(6,3,'ghsfghw','hfgshjsfgj','2017-08-22 20:17:10','2017-08-22 20:17:10'),(7,3,'Mickey','Aj sad','2017-08-22 20:22:48','2017-08-22 20:22:48'),(8,3,'Neko levi','Da li je moguce da radi','2017-08-22 20:29:25','2017-08-22 20:29:25'),(9,3,'Ludilo','Moze i ovako','2017-08-22 20:31:08','2017-08-22 20:31:08'),(10,11,'Mickey','a, ovde kur moj komentari','2017-08-22 20:35:56','2017-08-22 20:35:56'),(11,6,'Mickey','Aj, da probam danas.','2017-08-23 16:17:02','2017-08-23 16:17:02'),(12,2,'Chackie','Ovo kurcu ne valja','2017-08-23 16:26:44','2017-08-23 16:26:44'),(13,6,'hgfs','r r ureywhr re jte ghje jhj dsgh','2017-08-23 17:15:01','2017-08-23 17:15:01'),(14,12,'Mili','A\' si ga napis\'o!!!','2017-08-25 12:49:52','2017-08-25 12:49:52');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 22:52:59
