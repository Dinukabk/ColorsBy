-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: colorbydiyaa
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='The administrator''s table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Lahiru','lahiru@gmail.com','lahiru','lahiru123',725674839);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `add_line_01` varchar(45) DEFAULT NULL,
  `add_line_02` varchar(45) DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `a_admin_id` int DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  KEY `fk_admin_01_idx` (`a_admin_id`),
  CONSTRAINT `fk_admin_01` FOREIGN KEY (`a_admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registered artists';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (2,'Deepthi',113456778,'kasun@gmail.com','good','31/1','Gampaha',11170,'Western province','Gampaha','Sri Lanka',1,NULL,NULL),(3,'Deepthi',113456778,'kasun@gmail.com','good','31/1','Gampaha',11170,'Western province','Gampaha','Sri Lanka',1,'deepthi123','Deepthi');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_event`
--

DROP TABLE IF EXISTS `artist_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_event` (
  `event_id` int NOT NULL,
  `artist_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_artist_02_idx` (`artist_id`),
  CONSTRAINT `fk_artist_02` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  CONSTRAINT `fk_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_event`
--

LOCK TABLES `artist_event` WRITE;
/*!40000 ALTER TABLE `artist_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_request`
--

DROP TABLE IF EXISTS `artist_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_request` (
  `artist_request_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `a_admin_id` int DEFAULT NULL,
  PRIMARY KEY (`artist_request_id`),
  KEY `a_admin_id_02_idx` (`a_admin_id`),
  CONSTRAINT `a_admin_id_02` FOREIGN KEY (`a_admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_request`
--

LOCK TABLES `artist_request` WRITE;
/*!40000 ALTER TABLE `artist_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `painting_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (33,3,3,4),(34,4,1,4);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) DEFAULT NULL,
  `add_line_01` varchar(45) DEFAULT NULL,
  `add_line_02` varchar(45) DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `p_payment_id` int DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_pay_id_idx` (`p_payment_id`),
  CONSTRAINT `fk_pay_id` FOREIGN KEY (`p_payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` binary(1) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `a_admin_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_admin_idx` (`a_admin_id`),
  CONSTRAINT `fk_admin` FOREIGN KEY (`a_admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_photo`
--

DROP TABLE IF EXISTS `event_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_photo` (
  `event_photo_id` int NOT NULL AUTO_INCREMENT,
  `e_event_id` int NOT NULL,
  PRIMARY KEY (`event_photo_id`,`e_event_id`),
  KEY `e_event_id_idx` (`e_event_id`),
  CONSTRAINT `e_event_id` FOREIGN KEY (`e_event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_photo`
--

LOCK TABLES `event_photo` WRITE;
/*!40000 ALTER TABLE `event_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_video`
--

DROP TABLE IF EXISTS `event_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_video` (
  `event_video_id` int NOT NULL AUTO_INCREMENT,
  `e_event_id` int DEFAULT NULL,
  PRIMARY KEY (`event_video_id`),
  KEY `e_event_id_idx` (`e_event_id`),
  CONSTRAINT `e_event_id_02` FOREIGN KEY (`e_event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_video`
--

LOCK TABLES `event_video` WRITE;
/*!40000 ALTER TABLE `event_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negotiate_price`
--

DROP TABLE IF EXISTS `negotiate_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `negotiate_price` (
  `price_req_id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(500) DEFAULT NULL,
  `c_customer_id` int DEFAULT NULL,
  `p_painting_id` int DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`price_req_id`),
  KEY `fk_cus_id_idx` (`c_customer_id`),
  KEY `fk_painting_id_idx` (`p_painting_id`),
  CONSTRAINT `fk_cus_id_02` FOREIGN KEY (`c_customer_id`) REFERENCES `registered_customer` (`customer_id`),
  CONSTRAINT `fk_painting_id` FOREIGN KEY (`p_painting_id`) REFERENCES `painting` (`painting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Price negotiation details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negotiate_price`
--

LOCK TABLES `negotiate_price` WRITE;
/*!40000 ALTER TABLE `negotiate_price` DISABLE KEYS */;
INSERT INTO `negotiate_price` VALUES (17,'500000',1,1,0),(19,'6000',1,1,0),(20,'15000',1,1,1),(21,'50000',1,1,1);
/*!40000 ALTER TABLE `negotiate_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painting` (
  `painting_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `drawn_date` datetime DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `in_stock` binary(1) DEFAULT NULL,
  `frame` varchar(45) DEFAULT NULL,
  `a_artist_id` int DEFAULT NULL,
  `c_cart_id` int DEFAULT NULL,
  PRIMARY KEY (`painting_id`),
  KEY `fk_artist_idx` (`a_artist_id`),
  KEY `fk_cart_idx` (`c_cart_id`),
  CONSTRAINT `fk_artist` FOREIGN KEY (`a_artist_id`) REFERENCES `artist` (`artist_id`),
  CONSTRAINT `fk_cart` FOREIGN KEY (`c_cart_id`) REFERENCES `shopping_cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Details of paintings uploaded to the website';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES (1,'Beach','Beach','5000',NULL,NULL,34,34,34,'deepthi_03.JPG',NULL,NULL,NULL,3,1),(2,'Lake','Lake','1500',NULL,NULL,34,34,34,'deepthi_04.JPG',NULL,NULL,NULL,3,1),(3,'Daladamaligawa','Temple','5000',NULL,NULL,NULL,NULL,NULL,'deepthi_02.JPG',NULL,NULL,NULL,3,1),(4,'Flower','Flower','1000',NULL,NULL,NULL,NULL,NULL,'deepthi_06.JPG',NULL,NULL,NULL,3,1);
/*!40000 ALTER TABLE `painting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_date` datetime DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `status` binary(1) DEFAULT NULL,
  `c_customer_id` int DEFAULT NULL,
  `c_cart_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_cus_id_04_idx` (`c_customer_id`),
  KEY `fk_cart_02_idx` (`c_cart_id`),
  CONSTRAINT `fk_cart_02` FOREIGN KEY (`c_cart_id`) REFERENCES `shopping_cart` (`cart_id`),
  CONSTRAINT `fk_cus_id_04` FOREIGN KEY (`c_customer_id`) REFERENCES `registered_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered_customer`
--

DROP TABLE IF EXISTS `registered_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `add_line_01` varchar(45) DEFAULT NULL,
  `add_line_02` varchar(45) DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_customer`
--

LOCK TABLES `registered_customer` WRITE;
/*!40000 ALTER TABLE `registered_customer` DISABLE KEYS */;
INSERT INTO `registered_customer` VALUES (1,'Ravi','r1@gmail.com','1','725647847','14/B','Colombo',555,'Western','Colombo','Sri Lanka'),(4,'Ravindu','r2@gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `registered_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_painting`
--

DROP TABLE IF EXISTS `sample_painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample_painting` (
  `sample_paint_id` int NOT NULL AUTO_INCREMENT,
  `art_request_id` int NOT NULL,
  PRIMARY KEY (`sample_paint_id`,`art_request_id`),
  KEY `art_request_id_idx` (`art_request_id`),
  CONSTRAINT `art_request_id` FOREIGN KEY (`art_request_id`) REFERENCES `artist_request` (`artist_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_painting`
--

LOCK TABLES `sample_painting` WRITE;
/*!40000 ALTER TABLE `sample_painting` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_painting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `r_customer_id` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `fk_cus_id_idx` (`r_customer_id`),
  CONSTRAINT `fk_cus_id` FOREIGN KEY (`r_customer_id`) REFERENCES `registered_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,1);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart_painting`
--

DROP TABLE IF EXISTS `shoppingcart_painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart_painting` (
  `c_cart_id` int NOT NULL,
  `p_painting_id` int NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`c_cart_id`,`p_painting_id`),
  KEY `fk_paint_id_idx` (`p_painting_id`),
  CONSTRAINT `fk_cart_id` FOREIGN KEY (`c_cart_id`) REFERENCES `shopping_cart` (`cart_id`),
  CONSTRAINT `fk_paint_id` FOREIGN KEY (`p_painting_id`) REFERENCES `painting` (`painting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart_painting`
--

LOCK TABLES `shoppingcart_painting` WRITE;
/*!40000 ALTER TABLE `shoppingcart_painting` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart_painting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_request`
--

DROP TABLE IF EXISTS `special_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `special_request` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `photograph` varchar(45) DEFAULT NULL,
  `add_line_01` varchar(45) DEFAULT NULL,
  `add_line_02` varchar(45) DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `c_customer_id` int DEFAULT NULL,
  `artist_name` int DEFAULT NULL,
  `accept` tinyint DEFAULT '0',
  PRIMARY KEY (`request_id`),
  KEY `fk_cus_id_03_idx` (`c_customer_id`),
  KEY `fk_artist_name_idx` (`artist_name`),
  CONSTRAINT `fk_artist_name` FOREIGN KEY (`artist_name`) REFERENCES `artist` (`artist_id`),
  CONSTRAINT `fk_cus_id_03` FOREIGN KEY (`c_customer_id`) REFERENCES `registered_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_request`
--

LOCK TABLES `special_request` WRITE;
/*!40000 ALTER TABLE `special_request` DISABLE KEYS */;
INSERT INTO `special_request` VALUES (53,'test2',123,'lochanawijerathna27@gmail.com','test','deepthi_02.JPG','123','line 02',12,'Western','badulla','Sri',1,3,1),(55,'button test',123,'lochanawijerathna27@gmail.com','check this','deepthi_02.JPG','123','line 02',12,'Western province','badulla','Sri',1,3,1);
/*!40000 ALTER TABLE `special_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 23:03:44
