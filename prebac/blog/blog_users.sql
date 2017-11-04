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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'chackie','1981-12-13 00:00:00','chackie@example.com','$2y$10$4lbyltDV1EHIMQ8JxYYehOwN5OHIGnkYBfwVOLdAURx95xgH1bega','UbOhnAfJGWHbJN5I5mT0jAhA7PnluMOTxaFQuFBt2qZLFYxswbDxJBLDZPKc','2017-09-26 18:14:05','2017-09-26 18:14:05'),(8,'mickey','1975-06-14 00:00:00','mickey@example.com','$2y$10$6uwbNI/70HCmOl958T4wQ.SDGUSuJSnHCL0Q6tpsisKTjCNzF.Rsu','q0M9SLNDjHmiFHmKuJTujguXl327uTQyMuYIgmTqAW1nnEN9mWrvQ6gCCFOR','2017-10-29 15:12:20','2017-10-29 15:12:20'),(12,'lepicane','1954-11-20 00:00:00','lepi.cane@example.com','$2y$10$Osn1J3UEX6GkifLZbfdhYeNtpP3vahiUH5oB1CZLajoILctsizJgK','8dCkkyaODiKnye8qbTtD9dXMN1J2cUcTjpx6AcIDiwV3QtjVDU1m9XFIBYyA','2017-11-03 13:55:00','2017-11-03 13:55:00'),(13,'lepimica','1978-01-13 00:00:00','lepi.mica@example.com','$2y$10$y/oQjGy.9GOIX8PnYW/gZ.URGLkhEPAhy..AAMlJXMs0eOGVX615e','FPG0izZxLO1fHrRjWrZrInPjdirALk27hUNitt2OSMY9UxgiGnKwdJD1y9fl','2017-11-03 14:35:57','2017-11-03 14:35:57'),(14,'lepisale','1983-04-03 00:00:00','lepi.sale@example.com','$2y$10$gowlAS3AL2o5pX65cCdlhu0MxR4hR6thgtseatgFY5TMepb3eHUmi','LHOnur5MbY9xeCmQmafNnd85Nw4uLrmF4QhxNYfdvGpOXhdICfpCubcHHvGr','2017-11-03 15:58:56','2017-11-03 15:58:56'),(17,'lepamara','1998-12-20 00:00:00','lepa.mara@example.com','$2y$10$Jrn0/c2Hie.IoVAnjWYPneCE9WsLMejawK/3Fxu.8LZF4apvBVuum','quHdkXqzh2ViW1yrrUU0MJjzGUoHBKahb1DIPh0I8n4TmJlE1NiR9eOSzfoo','2017-11-03 18:05:57','2017-11-03 18:05:57'),(18,'lepiboki','1988-03-19 00:00:00','lepi.boki@example.com','$2y$10$FYAoi2fSOcr/sLIpWG0/ZujqKZ6cAut3FrX3DugfAvHrd4OL.//8i','mRtPm2VF12pApbT9l372JUrW4Nz7TELyQLJXUkblQRUEr3B8HR9tDAkE2A3s','2017-11-03 18:14:44','2017-11-03 18:14:44'),(19,'flashgordon','1999-08-10 00:00:00','flash.gordon@example.com','$2y$10$gKmoqsN.s3Mk26IY7ebBWe6BbNk9vH6SdjKEUvcGrdzirnrrzDdni','3M5na6WFiXg2tm8f20xKIrM8xaTM0DYOhmkPkR4bDiW3fJXUEksAl0YXg1pd','2017-11-04 13:57:02','2017-11-04 13:57:02'),(20,'mynameisflash','1978-07-20 00:00:00','my.name.is.flash@example.com','$2y$10$17HJW1Po1DjyDRCaTLeu4uzpQ.mvpa/bRbhDp7GNMz.XnKDrSxVyS','ZdFUZedaR4iXDHQiYAit9a1viFTVmXA06TGGQkv4as6l4H4ica3VNSh0I6dP','2017-11-04 14:05:03','2017-11-04 14:05:03'),(21,'somethinglikeflash','1971-09-17 00:00:00','something.like.flash@gmail.com','$2y$10$AJ5bqbq37qvDCOk.Fzk/UeI.DdkOtEOipVjl5sdmeTDjwbf2KRbDW','q5RG0rtEr8cXmIMHD44xp5tVCW3vnz6JlUWtbP3KNnFWh61Odxo5ugej6Qc5','2017-11-04 14:13:52','2017-11-04 14:13:52');
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

-- Dump completed on 2017-11-04 16:16:15
