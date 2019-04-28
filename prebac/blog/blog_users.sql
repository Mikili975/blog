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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dulce64','1998-06-03 08:23:10','tkilback@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','Gapj0pjaKR','2017-11-17 19:45:33','2017-11-17 19:45:33'),(2,'wdicki','1973-09-05 08:19:18','reynolds.maggie@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','YAcrH8Gu30','2017-11-17 19:45:33','2017-11-17 19:45:33'),(3,'ewest','1998-11-26 17:09:07','nolan28@example.net','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','2N0uQa2LL0','2017-11-17 19:45:33','2017-11-17 19:45:33'),(4,'gerlach.otilia','1963-08-13 20:36:27','hintz.destany@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','XaMV1mTkMj','2017-11-17 19:45:33','2017-11-17 19:45:33'),(5,'ghalvorson','1990-08-17 23:52:01','dbrown@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','OBCZw64sy4','2017-11-17 19:45:33','2017-11-17 19:45:33'),(6,'wwolf','1968-04-24 14:20:20','micah.gottlieb@example.net','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','toXVkSz5pM','2017-11-17 19:45:33','2017-11-17 19:45:33'),(7,'abelardo.senger','1960-09-11 23:07:51','edmund.keebler@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','OeCHSBDpOe','2017-11-17 19:45:33','2017-11-17 19:45:33'),(8,'alexander.spinka','1981-05-10 05:09:27','phyllis.zemlak@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','mn9G9VykC5','2017-11-17 19:45:33','2017-11-17 19:45:33'),(9,'gilberto.crist','1990-12-30 03:22:28','carrie43@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','NTOozmw8bE','2017-11-17 19:45:33','2017-11-17 19:45:33'),(10,'elvera66','1993-04-30 11:14:18','lschroeder@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','8QYn5XSZaO','2017-11-17 19:45:33','2017-11-17 19:45:33'),(11,'ywaelchi','1995-09-25 18:49:15','kenna90@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','wLdeIHJGYS','2017-11-17 19:45:33','2017-11-17 19:45:33'),(12,'alexzander.mraz','1970-06-08 00:03:09','ike.krajcik@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','O6XfrcVFXM','2017-11-17 19:45:33','2017-11-17 19:45:33'),(13,'vdare','1972-09-21 19:59:11','sauer.santos@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','TxvlyNAHXo','2017-11-17 19:45:33','2017-11-17 19:45:33'),(14,'guiseppe.flatley','1953-08-04 05:53:55','tfisher@example.net','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','hzy10IXih8','2017-11-17 19:45:33','2017-11-17 19:45:33'),(15,'ehalvorson','1958-06-14 19:20:53','armand.konopelski@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','hCWcQOk9Bg','2017-11-17 19:45:33','2017-11-17 19:45:33'),(16,'kuhlman.angie','1974-09-07 04:15:35','janae74@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','pbPTdEDArq','2017-11-17 19:45:33','2017-11-17 19:45:33'),(17,'tcummings','1971-11-02 22:35:02','elmore28@example.com','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','asfskNh31D','2017-11-17 19:45:33','2017-11-17 19:45:33'),(18,'jeanie31','1966-10-01 05:59:53','christ.williamson@example.net','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','xaIX6oOFYO','2017-11-17 19:45:33','2017-11-17 19:45:33'),(19,'yschulist','1990-12-15 13:30:34','sean.fisher@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','nAr11QGcMr','2017-11-17 19:45:33','2017-11-17 19:45:33'),(20,'bartell.florencio','1983-01-19 19:36:32','steuber.enos@example.org','$2y$10$QhxB1pEEb2lN6rc7XhKJi.ZlAtFb8S5MJG8jjbZCMrL6nqKe59eVG','3ngw0OrUc6','2017-11-17 19:45:33','2017-11-17 19:45:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
