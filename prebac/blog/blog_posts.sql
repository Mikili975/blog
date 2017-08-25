-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Naslov 1','Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 ',1,'Mickey','2017-08-12 19:25:32','2017-08-12 19:25:32'),(2,'Naslov 2','Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 ',1,'Mickey','2017-08-12 19:51:55','2017-08-12 19:51:55'),(3,'Naslov 3','Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 ',1,'Mickey','2017-08-12 20:24:55','2017-08-12 20:24:55'),(4,'Naslov 4','Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 ',0,'Mickey','2017-08-12 20:54:55','2017-08-12 20:54:55'),(5,'Naslov 5','Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 ',0,'Mickey','2017-08-13 06:54:44','2017-08-13 06:54:44'),(6,'Naslov 6','Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6',0,'Mickey','2017-08-16 22:41:24','2017-08-16 22:41:24'),(7,'Naslov 7','Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7',0,'Mickey','2017-08-16 22:44:55','2017-08-16 22:44:55'),(8,'Naslov 8','Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8',0,'Mickey','2017-08-19 18:30:44','2017-08-19 18:30:44'),(9,'lfjn\'lkb ndc','ljkfdjnb\'kg\'lknmb\'ngkfmgnh',0,'Mickey','2017-08-19 18:35:58','2017-08-19 18:35:58'),(10,'uihkjtduidhjk','gtjlkfksdryurhgjfdhidryjsfhjtj  yt y ry yr ryu rtry',0,'Mickey','2017-08-19 18:36:54','2017-08-19 18:36:54'),(11,'Utorke mrzim','Al ipak jos jedan utorak, sto ja ne bezim zar sam vezan, rekoh joj normalno kako cu s tobom kad sam trezan, trezan sam tako bezvezan',0,'Mickey','2017-08-22 19:37:58','2017-08-22 19:37:58'),(12,'Danas je novi dan','Jebes zivot kad u petak moras da pises blog',0,'Mickey','2017-08-25 12:49:26','2017-08-25 12:49:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-25 18:43:23
