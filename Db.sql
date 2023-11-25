CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `date_of_booking` date DEFAULT (curdate()),
  `time_of_booking` time DEFAULT (curtime()),
  `no_of_tickets` int DEFAULT NULL,
  `travel_schedule_id` int DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `travel_schedule_id` (`travel_schedule_id`),
  KEY `fk_booking_user` (`user_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`travel_schedule_id`) REFERENCES `travel_schedule` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_booking_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (8,'2023-11-06','10:00:00',2,2,'Pending',NULL),(13,'2023-10-25','06:30:00',2,1,'Pending',NULL),(14,'2023-10-25','06:30:00',2,1,'Pending',NULL),(16,'2023-11-06','10:00:00',2,1,'Pending',NULL),(18,'2023-11-04','07:00:00',2,3,'Pending',NULL),(19,'2023-11-01','04:00:00',4,3,'Pending',NULL),(20,'2023-11-02','01:00:00',1,1,'Pending',NULL),(21,'2023-10-26','07:00:00',2,2,'Pending',NULL),(22,'2023-11-03','05:24:00',4,1,'Pending',NULL),(23,'2023-11-23','21:51:45',2,1,'Pending',NULL),(24,'2023-11-23','22:31:40',4,3,'Pending',NULL),(25,'2023-11-23','22:32:00',4,3,'Pending',NULL),(26,'2023-11-23','22:34:48',4,2,'Pending',NULL),(27,'2023-11-23','22:35:12',1,2,'Pending',NULL),(28,'2023-11-23','22:35:24',3,2,'Pending',NULL),(29,'2023-11-23','22:35:52',3,2,'Pending',NULL),(30,'2023-11-23','22:39:31',2,2,'Pending',NULL),(31,'2023-11-23','22:42:28',2,2,'Pending',NULL),(32,'2023-11-23','22:42:45',2,2,'Pending',NULL),(33,'2023-11-23','22:42:58',2,2,'Pending',NULL),(34,'2023-11-23','22:44:12',2,2,'Pending',NULL),(35,'2023-11-23','22:44:47',2,2,'Pending',NULL),(36,'2023-11-23','22:45:11',2,2,'Pending',NULL),(37,'2023-11-23','22:45:27',2,2,'Pending',NULL),(38,'2023-11-23','22:46:33',2,2,'Pending',NULL),(39,'2023-11-23','22:47:06',2,2,'Pending',NULL),(40,'2023-11-23','22:47:26',2,2,'Pending',NULL),(41,'2023-11-23','22:47:35',2,2,'Pending',NULL),(42,'2023-11-23','22:48:27',2,2,'Pending',NULL),(43,'2023-11-23','22:48:36',2,2,'Pending',NULL),(44,'2023-11-23','22:49:32',2,2,'Pending',NULL),(45,'2023-11-23','22:49:55',2,2,'Pending',NULL),(46,'2023-11-23','22:50:10',2,2,'Pending',NULL),(47,'2023-11-23','23:46:12',1,1,'Pending',NULL),(48,'2023-11-24','00:01:57',1,1,'Pending',NULL),(49,'2023-11-24','00:03:13',1,1,'Pending',NULL),(50,'2023-11-24','00:03:32',1,1,'Pending',NULL),(51,'2023-11-24','00:04:17',1,1,'Pending',NULL),(52,'2023-11-24','00:04:43',1,1,'Pending',NULL),(53,'2023-11-24','00:05:39',1,1,'Pending',NULL),(54,'2023-11-24','00:06:00',1,1,'Pending',NULL),(55,'2023-11-24','00:06:02',1,1,'Pending',NULL),(56,'2023-11-24','00:06:56',1,1,'Pending',NULL),(57,'2023-11-24','00:07:07',1,1,'Pending',NULL),(58,'2023-11-24','00:09:09',1,1,'Pending',NULL),(59,'2023-11-24','00:09:29',1,1,'Pending',NULL),(60,'2023-11-24','00:12:14',2,1,'Pending',NULL),(61,'2023-11-24','00:14:06',2,3,'Pending',NULL),(62,'2023-11-24','00:15:25',1,1,'Paid',NULL),(63,'2023-11-24','00:16:48',1,2,'Paid',NULL),(64,'2023-11-24','00:29:07',3,1,'Paid',NULL),(65,'2023-11-24','00:36:45',1,2,'Paid',NULL),(66,'2023-11-24','00:37:40',1,1,'Paid',NULL),(67,'2023-11-24','00:38:57',1,1,'Paid',NULL),(68,'2023-11-24','00:40:34',1,3,'Paid',NULL),(69,'2023-11-24','00:44:16',1,1,'Paid',NULL),(70,'2023-11-24','00:48:45',1,1,'Paid',NULL),(71,'2023-11-24','00:50:24',1,1,'Paid',NULL),(72,'2023-11-24','00:52:03',1,1,'Paid',NULL),(73,'2023-11-24','00:58:02',1,1,'Paid',NULL),(74,'2023-11-24','01:03:50',1,1,'Pending',NULL),(75,'2023-11-24','01:04:58',1,1,'Paid',10),(76,'2023-11-24','01:05:19',4,1,'Paid',10),(77,'2023-11-24','01:06:55',1,1,'Paid',10),(80,'2023-11-24','02:04:32',1,1,'Paid',11),(81,'2023-11-24','12:53:32',2,2,'Paid',13);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `capacity` int NOT NULL,
  `plate_no` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `depot` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,50,'KA-01-1234','sleeper','1'),(2,60,'KA-02-5678','semiSleeper','1'),(3,55,'KA-03-9101','nonSleeper','2'),(4,144,'KA01G2000','sleeper','3'),(5,133,'ghj','sleep','1');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_stand`
--

DROP TABLE IF EXISTS `bus_stand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_stand` (
  `bus_stand_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_stand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_stand`
--

LOCK TABLES `bus_stand` WRITE;
/*!40000 ALTER TABLE `bus_stand` DISABLE KEYS */;
INSERT INTO `bus_stand` VALUES (1,'wodeyar','Mysore'),(2,'kempegowda','Bangalore');
/*!40000 ALTER TABLE `bus_stand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `dl` varchar(255) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'manju','1234567890','DL-01-1234'),(2,'manu','0987654321','DL-02-5678'),(3,'govindu','1122334455','DL-03-9101'),(4,'ashay','8528528522','LSNAD852852'),(5,'manju','852','cfghjkl');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_driver` BEFORE INSERT ON `driver` FOR EACH ROW BEGIN
    DECLARE driver_count INT;

    SELECT COUNT(*) INTO driver_count
    FROM driver
    WHERE name = NEW.name;

    IF driver_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Driver with the same name already exists';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `enquire`
--

DROP TABLE IF EXISTS `enquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquire` (
  `booking_id` int NOT NULL,
  `travel_schedule_id` int NOT NULL,
  PRIMARY KEY (`booking_id`,`travel_schedule_id`),
  KEY `travel_schedule_id` (`travel_schedule_id`),
  CONSTRAINT `enquire_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `enquire_ibfk_2` FOREIGN KEY (`travel_schedule_id`) REFERENCES `travel_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquire`
--

LOCK TABLES `enquire` WRITE;
/*!40000 ALTER TABLE `enquire` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_access`
--

DROP TABLE IF EXISTS `manage_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_access` (
  `user_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `travel_schedule_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`booking_id`,`travel_schedule_id`),
  KEY `booking_id` (`booking_id`),
  KEY `travel_schedule_id` (`travel_schedule_id`),
  CONSTRAINT `manage_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `manage_access_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `manage_access_ibfk_3` FOREIGN KEY (`travel_schedule_id`) REFERENCES `travel_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_access`
--

LOCK TABLES `manage_access` WRITE;
/*!40000 ALTER TABLE `manage_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `payment_amt` decimal(10,2) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_id`,`booking_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (2,8,0.00,'PaymentType'),(5,18,600.00,'PaymentType'),(6,19,1200.00,'PaymentType'),(7,20,100.00,'PaymentType'),(8,21,400.00,'PaymentType'),(9,22,400.00,'PaymentType'),(11,62,100.00,'Credit Card'),(12,63,200.00,'Credit Card'),(13,64,300.00,'Netbanking'),(14,65,200.00,'Debit Card'),(15,66,100.00,'UPI'),(16,67,100.00,'UPI'),(17,68,300.00,'UPI'),(18,69,100.00,'UPI'),(19,70,100.00,'UPI'),(20,71,100.00,'UPI'),(21,72,100.00,'UPI'),(22,73,100.00,'UPI'),(23,75,100.00,'UPI'),(24,76,400.00,'Debit Card'),(25,77,100.00,'UPI'),(26,80,100.00,'Netbanking'),(27,81,400.00,'Debit Card');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_payment_insert` AFTER INSERT ON `payment` FOR EACH ROW BEGIN
    DECLARE v_booking_id INT;
    DECLARE v_bus_id INT;
    DECLARE v_trip_date DATE;
    DECLARE v_trip_time TIME;
    DECLARE v_description VARCHAR(255);

    
    SELECT b.booking_id, ts.bus_id, ts.scheduled_date, ts.departure_time, CONCAT('Bus trip from ', bs_source.name, ' to ', bs_destination.name) 
    INTO v_booking_id, v_bus_id, v_trip_date, v_trip_time, v_description
    FROM booking b
    JOIN travel_schedule ts ON b.travel_schedule_id = ts.id
    JOIN bus_stand bs_source ON ts.source = bs_source.bus_stand_id
    JOIN bus_stand bs_destination ON ts.destination = bs_destination.bus_stand_id
    WHERE b.booking_id = NEW.booking_id;

    
    INSERT INTO ticket (bus_id, booking_id, trip_date, trip_time, description)
    VALUES (v_bus_id, v_booking_id, v_trip_date, v_trip_time, v_description);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_payment_update_seatno` AFTER INSERT ON `payment` FOR EACH ROW BEGIN
    DECLARE v_booking_id INT;
    DECLARE v_travel_schedule_id INT;
    DECLARE v_no_of_tickets INT;

    
    SELECT booking_id, travel_schedule_id INTO v_booking_id, v_travel_schedule_id
    FROM booking
    WHERE booking_id = NEW.booking_id;

    
    SELECT no_of_tickets INTO v_no_of_tickets
    FROM booking
    WHERE booking_id = NEW.booking_id;

    
    UPDATE travel_schedule
    SET no_of_seats = no_of_seats - v_no_of_tickets
    WHERE id = v_travel_schedule_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `trip_date` date NOT NULL,
  `trip_time` time NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`ticket_id`,`booking_id`),
  KEY `bus_id` (`bus_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (2,3,18,'2023-11-08','10:00:00','Description'),(3,3,19,'2023-11-01','04:00:00','Description'),(4,1,20,'2023-11-06','08:00:00','Description'),(5,2,21,'2023-11-07','09:00:00','Description'),(6,1,22,'2023-11-06','08:00:00','Description'),(7,1,64,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(8,2,65,'2023-11-07','09:00:00','Bus trip from wodeyar to kempegowda'),(9,1,66,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(10,1,67,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(11,3,68,'2023-11-08','10:00:00','Bus trip from kempegowda to wodeyar'),(12,1,69,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(13,1,70,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(14,1,71,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(15,1,72,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(16,1,73,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(17,1,75,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(18,1,76,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(19,1,77,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(20,1,80,'2023-11-06','08:00:00','Bus trip from wodeyar to kempegowda'),(21,2,81,'2023-11-07','09:00:00','Bus trip from wodeyar to kempegowda');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_schedule`
--

DROP TABLE IF EXISTS `travel_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bus_id` int DEFAULT NULL,
  `driver_id` int DEFAULT '1',
  `source` int NOT NULL,
  `destination` int NOT NULL,
  `scheduled_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `route` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `no_of_seats` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id` (`bus_id`),
  KEY `driver_id` (`driver_id`),
  KEY `source` (`source`),
  KEY `destination` (`destination`),
  CONSTRAINT `travel_schedule_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`),
  CONSTRAINT `travel_schedule_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_schedule`
--

LOCK TABLES `travel_schedule` WRITE;
/*!40000 ALTER TABLE `travel_schedule` DISABLE KEYS */;
INSERT INTO `travel_schedule` VALUES (1,1,1,1,2,'2023-11-06','08:00:00','10:00:00','Bangalore-Mandya-Mysore',100.00,18),(2,2,2,1,2,'2023-11-07','09:00:00','11:00:00','Bangalore-Ramanagar-Mandya-Mysore',200.00,3),(3,3,3,2,1,'2023-11-08','10:00:00','12:00:00','Bangalore-Ramanagar-ChamarajNagar-Mysore',300.00,44),(5,NULL,1,12,143,'2023-11-24','03:45:00','02:33:00','sedfeedf',1445.00,144),(6,NULL,1,3,2,'2023-11-24','00:30:00','12:41:00','asdasd',130.00,144),(7,NULL,1,1,1,'2023-11-24','12:54:00','12:54:00','dasjkghasd',999.00,133);
/*!40000 ALTER TABLE `travel_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `contactNo` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `FirstName` varchar(31) NOT NULL,
  `LastName` varchar(31) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1234567890','john.doe@example.com','1990-01-01','John','Doe','',0),(3,'9365421708','abc@gmail.com','2003-06-09','virat','kohli','abc@123',0),(4,'852852852','as@gmail.com','2023-11-22','ashay','naik','ashaynaik',1),(5,'64531321','sadjknadkjb','2023-11-22','slkancasc','mdx ncsam dc','as,cnas,bc',1),(6,'09481685519','aldsaln','2023-11-23','aslkjdna','saknjd','aslkjdaslkdjalsdj',1),(7,'8528528524','sadm.dn','2023-11-23','sd,cnbsede','s,dckcdn','ewldkfnwelkfn',1),(8,'8528528522','lkdslksn','2023-11-23','virat','sharma','dlnkcsdl',2),(9,'','ashu.kavita2003@gmail.com','2023-11-23','','','ashay',1),(10,'9481685519','ashu.kavita@gmail.com','2023-11-23','Ashay','Naik','ashay',1),(11,'69','aa','2023-11-24','aa','aa','aa',0),(12,'852852','a','2023-11-24','a','a','a',1),(13,'852','asdasdds,k','2023-11-24','assa','asdas','asdasdadsddsaa',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project'
--

--
-- Dumping routines for database 'project'
--
/*!50003 DROP PROCEDURE IF EXISTS `make_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `make_payment`(
    IN p_booking_id INT,
    IN p_amount DECIMAL(10, 2),
    IN p_payment_type VARCHAR(255),
    OUT p_result_message VARCHAR(255)
)
BEGIN
    
    DECLARE v_booking_exists INT;
    SELECT COUNT(*) INTO v_booking_exists FROM booking WHERE booking_id = p_booking_id ;

    IF v_booking_exists = 0 THEN
        SET p_result_message = 'Invalid booking ID for the specified user.';
    ELSE
        
        BEGIN
            
            START TRANSACTION;

            
            INSERT INTO payment (booking_id, payment_amt,payment_type) VALUES ( p_booking_id, p_amount,p_payment_type );

            
            UPDATE booking SET status = 'Paid' WHERE booking_id = p_booking_id;

            
            SET p_result_message = 'Payment successful!';

            
            COMMIT;
        END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `perform_booking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `perform_booking`(
    IN p_user_id INT,
    IN p_schedule_id INT,
    IN p_no_of_tickets INT,
    OUT p_result_message VARCHAR(255)
)
BEGIN
    DECLARE v_available_seats INT;

    
    SELECT No_of_seats INTO v_available_seats FROM travel_schedule WHERE id = p_schedule_id;

    IF v_available_seats < p_no_of_tickets THEN
        SET p_result_message = 'Not enough seats available for booking.';
    ELSE
        
        BEGIN
            
            START TRANSACTION;

            
            UPDATE travel_schedule SET No_of_seats = v_available_seats - p_no_of_tickets WHERE id = p_schedule_id;

            
            INSERT INTO booking ( user_id,travel_schedule_id, no_of_tickets) VALUES (p_user_id, p_schedule_id, p_no_of_tickets);

            
            SET p_result_message = 'Booking successful!';

            
            COMMIT;
        END;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `schedule_travel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `schedule_travel`(
    IN p_route VARCHAR(255),
    IN p_source VARCHAR(255),
    IN p_destination VARCHAR(255),
    IN p_departure_date DATE,
    IN p_departure_time TIME,
    IN p_arrival_time TIME,
    IN p_total_seats INT,
    IN p_amt INT,
    OUT p_result_message VARCHAR(255)
)
BEGIN
    
    INSERT INTO travel_schedule (route, source ,destination,scheduled_date, arrival_time,departure_time, no_of_seats,amount)
    VALUES (p_route,p_source,p_destination, p_departure_date, p_arrival_time,p_departure_time, p_total_seats,p_amt);

    
    SET p_result_message = 'Travel schedule added successfully!';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_user_tickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_user_tickets`(
    IN p_user_id INT
)
BEGIN
    DECLARE v_ticket_id INT;
    DECLARE v_trip_date DATE;
    DECLARE v_trip_time TIME;
    DECLARE v_description VARCHAR(255);
    DECLARE v_route VARCHAR(255);
    DECLARE v_source VARCHAR(255);
    DECLARE v_destination VARCHAR(255);
    DECLARE v_scheduled_date DATE;
    DECLARE v_departure_time TIME;
    DECLARE v_arrival_time TIME;
    DECLARE v_no_of_tickets INT;
    DECLARE v_amount DECIMAL(10, 2);

    DECLARE ticket_cursor CURSOR FOR
        SELECT t.ticket_id, t.trip_date, t.trip_time, t.description,
               ts.route, bs_source.name AS source, bs_destination.name AS destination,
               ts.scheduled_date, ts.departure_time, ts.arrival_time,
               b.no_of_tickets, p.payment_amt AS amount
        FROM ticket t
        JOIN booking b ON t.booking_id = b.booking_id
        JOIN travel_schedule ts ON b.travel_schedule_id = ts.id
        JOIN bus_stand bs_source ON ts.source = bs_source.bus_stand_id
        JOIN bus_stand bs_destination ON ts.destination = bs_destination.bus_stand_id
        LEFT JOIN payment p ON b.booking_id = p.booking_id
        WHERE b.user_id = p_user_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET v_ticket_id = NULL;

    OPEN ticket_cursor;

    FETCH ticket_cursor INTO v_ticket_id, v_trip_date, v_trip_time, v_description,
                               v_route, v_source, v_destination, v_scheduled_date, v_departure_time, v_arrival_time,
                               v_no_of_tickets, v_amount;

    IF v_ticket_id IS NOT NULL THEN
        ticket_loop: LOOP
            SELECT
                CONCAT('Ticket ID: ', v_ticket_id,
                       ', User ID: ', p_user_id,
                       ', No of Tickets: ', v_no_of_tickets,
                       ', Amount: ', v_amount,
                       ', Trip Date: ', v_trip_date,
                       ', Trip Time: ', v_trip_time,
                       ', Description: ', v_description,
                       ', Route: ', v_route,
                       ', Source: ', v_source,
                       ', Destination: ', v_destination,
                       ', Scheduled Date: ', v_scheduled_date,
                       ', Departure Time: ', v_departure_time,
                       ', Arrival Time: ', v_arrival_time)
            AS ticket_info;

            FETCH ticket_cursor INTO v_ticket_id, v_trip_date, v_trip_time, v_description,
                                       v_route, v_source, v_destination, v_scheduled_date, v_departure_time, v_arrival_time,
                                       v_no_of_tickets, v_amount;

            IF v_ticket_id IS NULL THEN
                LEAVE ticket_loop;
            END IF;
        END LOOP;
    ELSE
        SELECT CONCAT('No tickets found for User ID: ', p_user_id) AS ticket_info;
    END IF;

    CLOSE ticket_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_login`(
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255),
    OUT p_user_id INT
)
BEGIN
    DECLARE v_user_id INT;

    
    SELECT id INTO v_user_id FROM user WHERE email = p_email AND password = p_password;

    
    SET p_user_id = v_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_signup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_signup`(
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255),
    IN p_first_name VARCHAR(255),
    IN p_last_name VARCHAR(255),
    IN p_contact_no VARCHAR(20),
    IN p_date_of_birth DATE,
    IN p_role VARCHAR(20)
)
BEGIN
    INSERT INTO user (email, password, FirstName, LastName, contactNo, dateOfBirth, role)
    VALUES (p_email, p_password, p_first_name, p_last_name, p_contact_no, p_date_of_birth, p_role);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 13:05:45
