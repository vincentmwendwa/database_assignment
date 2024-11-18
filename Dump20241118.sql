-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: transport_system
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `assignment_id` varchar(20) NOT NULL,
  `vehicle_id` varchar(20) DEFAULT NULL,
  `driver_id` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` varchar(20) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `license_number` varchar(20) DEFAULT NULL,
  `license_expiry` date DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fuel_log`
--

DROP TABLE IF EXISTS `fuel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel_log` (
  `fuel_log_id` varchar(20) NOT NULL,
  `vehicle_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `liters` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`fuel_log_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `fuel_log_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inspection`
--

DROP TABLE IF EXISTS `inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection` (
  `inspection_id` varchar(20) NOT NULL,
  `vehicle_id` varchar(20) DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `inspector_name` varchar(50) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`inspection_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `inspection_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `maintenance_id` varchar(20) NOT NULL,
  `vehicle_id` varchar(20) DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `description` text,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`maintenance_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` varchar(20) NOT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `license_plate` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 21:17:27
