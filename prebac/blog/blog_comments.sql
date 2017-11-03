-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.04.1

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
  `user_id` int(10) unsigned DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,7,'Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 Komentar 1 ','2017-08-19 13:55:47','2017-08-19 13:55:47'),(2,3,8,'Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 Komentar 2 vv','2017-08-19 14:57:21','2017-08-19 14:57:21'),(3,2,7,'Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 Komentar 3 ','2017-08-19 15:42:22','2017-08-19 15:42:22'),(4,2,8,'Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 Komentar 4 ','2017-08-19 15:55:14','2017-08-19 15:55:14'),(5,4,7,'Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 Komentar 5 ','2017-08-19 16:12:55','2017-08-19 15:55:14'),(6,3,7,'hfgshjsfgj','2017-08-22 20:17:10','2017-08-22 20:17:10'),(7,3,7,'Aj sad','2017-08-22 20:22:48','2017-08-22 20:22:48'),(8,3,7,'Da li je moguce da radi','2017-08-22 20:29:25','2017-08-22 20:29:25'),(9,3,8,'Moze i ovako','2017-08-22 20:31:08','2017-08-22 20:31:08'),(10,11,8,'a, ovde kur moj komentari','2017-08-22 20:35:56','2017-08-22 20:35:56'),(11,6,7,'Aj, da probam danas.','2017-08-23 16:17:02','2017-08-23 16:17:02'),(12,2,7,'Ovo kurcu ne valja','2017-08-23 16:26:44','2017-08-23 16:26:44'),(13,6,7,'r r ureywhr re jte ghje jhj dsgh','2017-08-23 17:15:01','2017-08-23 17:15:01'),(14,12,8,'A\' si ga napis\'o!!!','2017-08-25 12:49:52','2017-08-25 12:49:52'),(15,4,8,'oifow ouihgw oi oiutg oihjg rokj oerghj','2017-10-31 18:43:59','2017-10-31 18:43:59'),(16,4,8,'Komentar','2017-10-31 18:50:03','2017-10-31 18:50:03'),(17,4,8,'KOmentar damp','2017-10-31 18:56:16','2017-10-31 18:56:16'),(18,5,8,'Komentar kao komentar','2017-10-31 19:04:58','2017-10-31 19:04:58'),(19,23,8,'Sad da vidimo da li ce se pojaviti komentar kako treba','2017-11-02 16:36:43','2017-11-02 16:36:43'),(20,23,8,'Bilo je sranje, aj sad da vidimo, \'ocel\' bit bolje...','2017-11-02 16:38:47','2017-11-02 16:38:47'),(21,23,8,'Bilo je sranje, aj sad da vidimo, \'ocel\' bit bolje...','2017-11-02 16:39:10','2017-11-02 16:39:10'),(22,45,8,'jfdjgn[sdokbj[]w','2017-11-02 16:48:39','2017-11-02 16:48:39');
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

-- Dump completed on 2017-11-03 16:37:10
