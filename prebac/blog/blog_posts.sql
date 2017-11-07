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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,7,'Naslov 1','Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 Blog 1 ',1,'2017-08-12 19:25:32','2017-08-12 19:25:32'),(2,8,'Naslov 2','Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 Blog 2 ',1,'2017-08-12 19:51:55','2017-08-12 19:51:55'),(3,8,'Naslov 3','Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 Blog 3 ',1,'2017-08-12 20:24:55','2017-08-12 20:24:55'),(4,7,'Naslov 4','Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 Blog 4 ',0,'2017-08-12 20:54:55','2017-08-12 20:54:55'),(5,8,'Naslov 5','Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 Blog 5 ',0,'2017-08-13 06:54:44','2017-08-13 06:54:44'),(6,8,'Naslov 6','Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6 Blog 6',0,'2017-08-16 22:41:24','2017-08-16 22:41:24'),(7,8,'Naslov 7','Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7 Blog 7',0,'2017-08-16 22:44:55','2017-08-16 22:44:55'),(8,7,'Naslov 8','Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8 Blog 8',0,'2017-08-19 18:30:44','2017-08-19 18:30:44'),(9,7,'lfjn\'lkb ndc','ljkfdjnb\'kg\'lknmb\'ngkfmgnh',0,'2017-08-19 18:35:58','2017-08-19 18:35:58'),(10,7,'uihkjtduidhjk','gtjlkfksdryurhgjfdhidryjsfhjtj  yt y ry yr ryu rtry',0,'2017-08-19 18:36:54','2017-08-19 18:36:54'),(11,7,'Utorke mrzim','Al ipak jos jedan utorak, sto ja ne bezim zar sam vezan, rekoh joj normalno kako cu s tobom kad sam trezan, trezan sam tako bezvezan',0,'2017-08-22 19:37:58','2017-08-22 19:37:58'),(12,8,'Danas je novi dan','Jebes zivot kad u petak moras da pises blog',0,'2017-08-25 12:49:26','2017-08-25 12:49:26'),(13,7,'Jebe me chrome','Jebem ja i Chrome i njihov security',0,'2017-10-29 15:34:23','2017-10-29 15:34:23'),(14,8,'Jebe me Chrome','Jebe me Chrome, i to bas...',0,'2017-10-29 15:35:47','2017-10-29 15:35:47'),(15,8,'Mirza probo','Pa se zajebo',0,'2017-10-29 15:38:37','2017-10-29 15:38:37'),(16,8,'Mirza konj','Najveci',0,'2017-10-29 20:14:33','2017-10-29 20:14:33'),(17,8,'Ajde Miki','Mozda i radi',0,'2017-10-29 20:21:15','2017-10-29 20:21:15'),(18,7,'ldjerfng[ldk','kfgojkfdgkbm[fo',0,'2017-10-29 20:30:20','2017-10-29 20:30:20'),(23,8,'jnhasojgas','pivfjdf[oijv[ doodfvijv dpouh pouhdgf pdoah ghpaoifgh [a gh[a hgsdo hgfosh ghpadkihj kug dokhu dh dsuhf soi gh',0,'2017-10-30 06:45:40','2017-10-30 06:45:40'),(24,8,'Ajmo ponovo','jnbsj jufgnsd dkj vsdk fd',0,'2017-10-30 18:29:41','2017-10-30 18:29:41'),(25,7,'hfdjndf djn','jfdkijd iojrjt osj orj toij gorj b',0,'2017-10-30 18:52:05','2017-10-30 18:52:05'),(26,8,'yjky','rhnry',0,'2017-10-30 18:59:22','2017-10-30 18:59:22'),(27,8,'hgjkdhjh','tjtjrghrh wr r  rwty wr tu',0,'2017-10-30 19:11:29','2017-10-30 19:11:29'),(44,8,'Proba maila','Da vidimo da li radi novi post - mail veza',0,'2017-11-02 13:01:11','2017-11-02 13:01:11'),(45,8,'Novi blog sa from admin','Promenjeno from',0,'2017-11-02 13:06:39','2017-11-02 13:06:39'),(46,8,'Proba najnovija','Ajde radi',0,'2017-11-02 17:06:41','2017-11-02 17:06:41'),(48,17,'Lepa Mara i njen blog','Lepa Mara pise blog...',0,'2017-11-03 18:11:26','2017-11-03 18:11:26'),(49,13,'Lepi Mica','Mica je lepsi od Mare',0,'2017-11-03 18:12:19','2017-11-03 18:12:19');
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

-- Dump completed on 2017-11-07 15:30:39
