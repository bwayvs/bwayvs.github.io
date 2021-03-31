-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: salon
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `cust_firstname` varchar(45) NOT NULL,
  `cust_lastname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jeana','Bradford','jb@gmail.com','111222333'),(2,'Sandra','Hobbs','sh@gmail.com','1112223334'),(3,'Ryan','Taylor','rt@gmail.com','1112223335'),(4,'Michelle','Drake','md@gmail.com','1112223336'),(5,'Heidi','Nolan','hn@gmail.com','1112223337'),(6,'Karen','Smith','ks@gmail.com','1112223338'),(7,'Jose','Medez','jm@gmail.com','1112223339');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_firstname` varchar(45) NOT NULL,
  `emp_lastname` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `hire_date` date NOT NULL,
  `termination_date` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `location_location_id` int NOT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`),
  KEY `fk_employee_location_idx` (`location_location_id`),
  CONSTRAINT `fk_employee_location` FOREIGN KEY (`location_location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jenny','Jensen','Owner','2013-06-15',NULL,'jensenj@salon.com','2081112222',1,NULL),(2,'Haley','Lopez','Assistant Manager','2013-08-23',NULL,'lopezh@salon.com','2083334444',1,1),(3,'Robert','Green','Associate','2014-01-03',NULL,'greenr@salon.com','2085556666',1,2),(4,'Olive','Adams','Manager','2015-07-12',NULL,'adamso@salon.com','2087778888',2,1),(5,'Julie','Davis','Associate','2015-10-20',NULL,'davisj@salon.com','2089990000',2,4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `address1` varchar(45) NOT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `zipcode` int NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'100 N Main St.','Suite 3','Rexburg','ID',83441),(2,'200 N Center St.',NULL,'Rigby','ID',83442);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `type` enum('Product','Service') NOT NULL,
  `unit_size` varchar(8) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Shampoo','Product','8 oz',4.95),(2,'Shampoo','Product','16 oz',8.95),(3,'Conditioner','Product','12 oz',8.95),(4,'Hairspray','Product','8 oz',7.95),(5,'Shampoo','Service',NULL,8.00),(6,'Men Hair Cut','Service',NULL,15.00),(7,'Women Hair Cut','Service',NULL,25.00),(8,'Color','Service',NULL,50.00),(9,'Perm','Service',NULL,60.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tran`
--

DROP TABLE IF EXISTS `tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tran` (
  `tran_id` int NOT NULL AUTO_INCREMENT,
  `employee_emp_id` int NOT NULL,
  `customer_customer_id` int NOT NULL,
  `tran_date` date NOT NULL,
  PRIMARY KEY (`tran_id`),
  UNIQUE KEY `tran_id_UNIQUE` (`tran_id`),
  KEY `fk_transaction_employee1_idx` (`employee_emp_id`),
  KEY `fk_transaction_customer1_idx` (`customer_customer_id`),
  CONSTRAINT `fk_transaction_customer1` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_transaction_employee1` FOREIGN KEY (`employee_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tran`
--

LOCK TABLES `tran` WRITE;
/*!40000 ALTER TABLE `tran` DISABLE KEYS */;
INSERT INTO `tran` VALUES (1,1,7,'2019-03-25'),(2,1,6,'2019-03-25'),(3,2,5,'2019-03-25'),(4,3,4,'2019-03-25'),(5,4,3,'2019-03-25');
/*!40000 ALTER TABLE `tran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_detail`
--

DROP TABLE IF EXISTS `transaction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_detail` (
  `tran_detail_id` int NOT NULL AUTO_INCREMENT,
  `transaction_tran_id` int NOT NULL,
  `product_product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`tran_detail_id`),
  UNIQUE KEY `tran_detail_id_UNIQUE` (`tran_detail_id`),
  KEY `fk_transaction_detail_transaction1_idx` (`transaction_tran_id`),
  KEY `fk_transaction_detail_product1_idx` (`product_product_id`),
  CONSTRAINT `fk_transaction_detail_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_transaction_detail_transaction1` FOREIGN KEY (`transaction_tran_id`) REFERENCES `tran` (`tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_detail`
--

LOCK TABLES `transaction_detail` WRITE;
/*!40000 ALTER TABLE `transaction_detail` DISABLE KEYS */;
INSERT INTO `transaction_detail` VALUES (1,1,1,2),(2,1,6,1),(3,2,9,1),(4,2,3,3),(5,3,8,1),(6,4,7,1),(7,4,2,1),(8,5,6,1);
/*!40000 ALTER TABLE `transaction_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'salon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 15:26:22
