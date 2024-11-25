-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: modunlogin
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
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `username` varchar(255) NOT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `expiration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES ('admin','039644','2024-11-25 17:10:05','2024-11-25 17:12:05');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `role` enum('Admin','Manager','Staff','Customer') NOT NULL DEFAULT 'Customer',
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `google_id` (`google_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,'9daa4dd90a6611307c186e85a26e6c02babd1871e6d5f9cd91a64c4e37a9fd58','ea8ec46157a1180445744b80200abf6c','Admin',NULL,'2024-11-23 19:15:00'),(2,'customer',NULL,'e396a610aebd726d8d5abaed8b883e7a728413791d8b160a27058009ebf1e2e6','9a1961223c2cc5b874f34c382c67fb74','Customer',NULL,'2024-11-23 19:15:38'),(3,'manager',NULL,'455e8f9f8a7adb0124b28be3adb5ede3094fe8d394da01a3673a2268bd341a4b','5e4e10006b9ad6b35ccf6742b2beb38f','Manager',NULL,'2024-11-23 19:16:12'),(4,'staff',NULL,'227edb821fb3917aeda60c39ca1e1383656530e86adfaedb3dcd206db1750196','d0f0321cefb5ca16285e2a285f5fe236','Staff',NULL,'2024-11-23 19:16:47'),(5,'giakhai182','phamg2944@gmail.com','438e54b9aeca743a01ff3151ae986166da99e28a55fc95b1a49d944810191407','ef501764c81d72c079becfea431e8d98','Customer',NULL,'2024-11-23 19:18:01'),(6,'giakhai456','khaipham182@gmail.com','998f9f1c5e60f704720a15c1b2af46bb8166e00c7e148151b04146827a74a593','f6b1556e6e0c3ebd3ed1f2f42dc95cb7','Customer',NULL,'2024-11-25 12:04:06'),(7,'giakhai1412@gmail.com','giakhai1412@gmail.com','3bbe70442f46041d8f6c3f9ff57661b550523b6537487012fc4c41e04875a202','e59a5702fcdad5d57096597bff829234','Customer','107393152548047597586','2024-11-25 12:18:07');
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

-- Dump completed on 2024-11-26  0:34:22
