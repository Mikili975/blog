-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_index` (`post_id`),
  KEY `post_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,1,2),(2,1,3),(3,2,4),(4,2,5),(5,3,1),(6,3,3),(7,4,3),(8,4,4),(9,5,1),(10,5,4),(11,6,2),(12,6,4),(13,7,1),(14,7,3),(15,8,1),(16,8,2),(17,9,1),(18,9,5),(19,10,2),(20,10,3),(21,11,1),(22,11,2),(23,12,1),(24,12,4),(25,13,1),(26,13,2),(27,14,3),(28,14,4),(29,15,3),(30,15,5),(31,16,3),(32,16,4),(33,17,3),(34,17,4),(35,18,1),(36,18,2),(37,19,3),(38,19,5),(39,20,2),(40,20,3),(41,21,1),(42,21,2),(43,22,2),(44,22,4),(45,23,2),(46,23,5),(47,24,2),(48,24,3),(49,25,3),(50,25,5),(51,26,2),(52,26,3),(53,27,4),(54,27,5),(55,28,2),(56,28,4),(57,29,2),(58,29,5),(59,30,4),(60,30,5),(61,31,2),(62,31,5),(63,32,1),(64,32,2),(65,33,2),(66,33,5),(67,34,3),(68,34,4),(69,35,3),(70,35,4),(71,36,1),(72,36,5),(73,37,1),(74,37,3),(75,38,1),(76,38,3),(77,39,3),(78,39,4),(79,40,4),(80,40,5),(81,41,3),(82,41,4),(83,42,1),(84,42,2),(85,43,3),(86,43,4),(87,44,1),(88,44,2),(89,45,2),(90,45,4),(91,46,2),(92,46,5),(93,47,2),(94,47,4),(95,48,2),(96,48,5),(97,49,2),(98,49,4),(99,50,2),(100,50,3),(101,51,1),(102,51,2),(103,52,1),(104,52,3),(105,53,2),(106,53,5),(107,54,1),(108,54,2),(109,55,2),(110,55,5),(111,56,3),(112,56,5),(113,57,1),(114,57,4),(115,58,4),(116,58,5),(117,59,1),(118,59,3),(119,60,1),(120,60,2),(121,61,2),(122,61,4),(123,62,2),(124,62,5),(125,63,2),(126,63,5),(127,64,1),(128,64,4),(129,65,1),(130,65,5),(131,66,1),(132,66,4),(133,67,4),(134,67,5),(135,68,1),(136,68,3),(137,69,1),(138,69,4),(139,70,1),(140,70,5),(141,71,2),(142,71,5),(143,72,4),(144,72,5),(145,73,1),(146,73,5),(147,74,1),(148,74,3),(149,75,4),(150,75,5),(151,76,3),(152,76,5),(153,77,3),(154,77,4),(155,78,2),(156,78,3),(157,79,1),(158,79,3),(159,80,2),(160,80,4),(161,81,2),(162,81,3),(163,82,1),(164,82,4),(165,83,4),(166,83,5),(167,84,2),(168,84,4),(169,85,4),(170,85,5),(171,86,2),(172,86,3),(173,87,3),(174,87,4),(175,88,2),(176,88,4),(177,89,3),(178,89,4),(179,90,4),(180,90,5),(181,91,2),(182,91,3),(183,92,3),(184,92,4),(185,93,2),(186,93,5),(187,94,3),(188,94,5),(189,95,2),(190,95,4),(191,96,2),(192,96,3),(193,97,4),(194,97,5),(195,98,1),(196,98,3),(197,99,1),(198,99,4),(199,100,1),(200,100,2);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-22 22:12:27
