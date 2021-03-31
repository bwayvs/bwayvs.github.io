-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: university
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `prof_id` int NOT NULL,
  `class_section` int NOT NULL,
  `class_capacity` int NOT NULL,
  `semester_id` int NOT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_id_UNIQUE` (`class_id`),
  KEY `fk_course_has_professor_professor1_idx` (`prof_id`),
  KEY `fk_course_has_professor_course1_idx` (`course_id`),
  KEY `fk_class_semester1_idx` (`semester_id`),
  CONSTRAINT `fk_class_semester1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  CONSTRAINT `fk_course_has_professor_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_course_has_professor_professor1` FOREIGN KEY (`prof_id`) REFERENCES `professor` (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,1,1,1,30,3),(2,2,2,1,50,3),(3,2,2,2,50,3),(4,3,3,1,35,3),(5,4,4,1,30,3),(6,1,1,2,30,8),(7,1,5,3,35,8),(8,2,2,1,50,8),(9,2,2,2,50,8),(10,4,4,1,30,8);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `college_id` int NOT NULL AUTO_INCREMENT,
  `college_name` varchar(45) NOT NULL,
  PRIMARY KEY (`college_id`),
  UNIQUE KEY `college_id_UNIQUE` (`college_id`),
  UNIQUE KEY `college_name_UNIQUE` (`college_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'College of Business and Communication'),(2,'College of Language and Letters');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `course_num` int NOT NULL,
  `course_credit` int NOT NULL,
  `dept_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`),
  UNIQUE KEY `course_name_UNIQUE` (`course_name`),
  KEY `fk_course_department1_idx` (`dept_id`),
  CONSTRAINT `fk_course_department1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Intro to Databses',111,3,1),(2,'Micro Economics',150,3,2),(3,'Econometrics',388,4,2),(4,'The Classical Heritage',376,2,3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) NOT NULL,
  `dept_code` varchar(4) NOT NULL,
  `college_id` int NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_id_UNIQUE` (`dept_id`),
  UNIQUE KEY `dept_code_UNIQUE` (`dept_code`),
  UNIQUE KEY `dept_name_UNIQUE` (`dept_name`),
  KEY `fk_department_college1_idx` (`college_id`),
  CONSTRAINT `fk_department_college1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Information Technology','CIT',2),(2,'Economics','ECON',2),(3,'Humanities and Philosophy','HUM',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `loc_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `state_code` varchar(2) NOT NULL,
  PRIMARY KEY (`loc_id`),
  UNIQUE KEY `idcity_UNIQUE` (`loc_id`),
  KEY `fk_location_state1_idx` (`state_code`),
  CONSTRAINT `fk_location_state1` FOREIGN KEY (`state_code`) REFERENCES `state` (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Dallas','TX'),(2,'Provo','UT'),(3,'Mesa','AZ'),(4,'Topeka','KS'),(5,'Rigby','ID'),(6,'Bozeman','MT'),(7,'Decatur','TN'),(8,'Rexburg','ID');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `prof_id` int NOT NULL AUTO_INCREMENT,
  `prof_name` varchar(45) NOT NULL,
  PRIMARY KEY (`prof_id`),
  UNIQUE KEY `prof_id_UNIQUE` (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Morring'),(2,'Nate'),(3,'Barrus'),(4,'Jensen'),(5,'Barney');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `reg_id_UNIQUE` (`reg_id`),
  KEY `fk_registration_student1_idx` (`student_id`),
  KEY `fk_registration_class1_idx` (`class_id`),
  CONSTRAINT `fk_registration_class1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `fk_registration_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,6,7),(2,7,6),(3,7,8),(4,7,10),(5,4,5),(6,9,9),(7,2,4),(8,3,4),(9,5,4),(10,5,5),(11,1,1),(12,1,3),(13,8,9),(14,10,6);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `semester_id` int NOT NULL AUTO_INCREMENT,
  `year` year NOT NULL,
  `term` enum('Fall','Winter','Spring','Summer') NOT NULL,
  PRIMARY KEY (`semester_id`),
  UNIQUE KEY `semester_id_UNIQUE` (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,2016,'Spring'),(2,2016,'Summer'),(3,2016,'Fall'),(4,2016,'Winter'),(5,2017,'Spring'),(6,2017,'Summer'),(7,2017,'Fall'),(8,2017,'Winter');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_code` varchar(2) NOT NULL,
  `state_name` varchar(45) NOT NULL,
  PRIMARY KEY (`state_code`),
  UNIQUE KEY `state_code_UNIQUE` (`state_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES ('AZ','Arizona'),('ID','Idaho'),('KS','Kansas'),('MT','Montana'),('TN','Tennessee'),('TX','Texas'),('UT','Utah');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `date_of_birth` date NOT NULL,
  `loc_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  KEY `fk_student_location1_idx` (`loc_id`),
  CONSTRAINT `fk_student_location1` FOREIGN KEY (`loc_id`) REFERENCES `location` (`loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Paul','M','1996-02-22',1),(2,'Katie','F','1995-07-22',2),(3,'Kelly','F','1998-06-22',2),(4,'Devon','M','2000-07-22',3),(5,'Mandy','F','1996-11-22',4),(6,'Alece','F','1997-05-22',5),(7,'Bryce','M','1997-11-22',6),(8,'Preston','M','1996-09-22',7),(9,'Julia','F','1998-09-22',8),(10,'Susan','F','1998-09-08',3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'university'
--
/*!50003 DROP FUNCTION IF EXISTS `get_student_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_student_id`(
student_name_param VARCHAR(45)
) RETURNS int
BEGIN
	DECLARE student_id_var INT;
    SELECT student_id
    INTO student_id_var
    FROM student
    WHERE student_name = student_name_param;
    
    RETURN(student_id_var);
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

-- Dump completed on 2020-08-30 15:03:25
