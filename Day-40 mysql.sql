CREATE DATABASE  IF NOT EXISTS `students` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `students`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: students
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `No of days` int NOT NULL,
  `Present` int NOT NULL,
  `Absent` int NOT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `Stud_id` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,101,30,27,3),(2,102,30,25,5),(3,103,30,28,2),(4,104,30,24,6),(5,105,30,22,8);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codekata`
--

DROP TABLE IF EXISTS `codekata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codekata` (
  `codekata_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `Prom_total` int NOT NULL,
  `Solved` int NOT NULL,
  `Unsolved` int NOT NULL,
  PRIMARY KEY (`codekata_id`),
  KEY `Stud_id_idx` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codekata`
--

LOCK TABLES `codekata` WRITE;
/*!40000 ALTER TABLE `codekata` DISABLE KEYS */;
INSERT INTO `codekata` VALUES (1,101,10,8,2),(2,102,10,7,3),(3,103,10,5,5),(4,104,10,6,4),(5,105,10,4,6);
/*!40000 ALTER TABLE `codekata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_drives`
--

DROP TABLE IF EXISTS `company_drives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_drives` (
  `company_drives_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `total_drives` int NOT NULL,
  `Attended` int NOT NULL,
  `Declined` int NOT NULL,
  PRIMARY KEY (`company_drives_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `company_drives_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_drives`
--

LOCK TABLES `company_drives` WRITE;
/*!40000 ALTER TABLE `company_drives` DISABLE KEYS */;
INSERT INTO `company_drives` VALUES (1,101,10,4,6),(2,102,10,5,5),(3,103,10,7,3),(4,104,10,6,4),(5,105,10,3,7);
/*!40000 ALTER TABLE `company_drives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL,
  `Stud_course_id` int NOT NULL,
  `Coures_Name` varchar(100) NOT NULL,
  `Stud_id` int NOT NULL,
  `Stud_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`courses_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,1001,'Html',101,'Abu'),(2,1002,'React',102,'Gayu'),(3,1003,'Javascript',103,'Chottu'),(4,1004,'Node',104,'Bhima'),(5,1005,'Mysql',105,'Nasir'),(6,1006,'Css',101,'Abu'),(7,1007,'Angular',104,'Bhima'),(8,1008,'MongoDB',105,'Nasir');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentors`
--

DROP TABLE IF EXISTS `mentors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentors` (
  `Sq_id` int NOT NULL,
  `Mentor_id` int NOT NULL,
  `Mentor_Name` varchar(45) NOT NULL,
  `Stud_id` int NOT NULL,
  `Assigned _Stud` varchar(45) NOT NULL,
  PRIMARY KEY (`Sq_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `mentors_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentors`
--

LOCK TABLES `mentors` WRITE;
/*!40000 ALTER TABLE `mentors` DISABLE KEYS */;
INSERT INTO `mentors` VALUES (1,111,'Ravi',101,'Abu'),(2,222,'Abdul',102,'Gayu'),(3,333,'Laksh',103,'Chottu'),(4,444,'Sundar',104,'Bhima'),(5,555,'Devi',105,'Nasir');
/*!40000 ALTER TABLE `mentors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stud_profile_id` int NOT NULL AUTO_INCREMENT,
  `stud_name` varchar(100) NOT NULL,
  `stud_email` varchar(250) NOT NULL,
  `stud_mob_num` int NOT NULL,
  `stud_join_date` datetime DEFAULT NULL,
  `stud_dob` date DEFAULT NULL,
  PRIMARY KEY (`stud_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_activated_courses`
--

DROP TABLE IF EXISTS `students_activated_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_activated_courses` (
  `students_activated_courses_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `Stud_Name` varchar(45) NOT NULL,
  `Stud_course_id` varchar(45) NOT NULL,
  `Stud_activated_courses` varchar(100) NOT NULL,
  PRIMARY KEY (`students_activated_courses_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `students_activated_courses_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_activated_courses`
--

LOCK TABLES `students_activated_courses` WRITE;
/*!40000 ALTER TABLE `students_activated_courses` DISABLE KEYS */;
INSERT INTO `students_activated_courses` VALUES (1,101,'Abu','1001, 1006','Html,Css'),(2,102,'Gayu','1002','React'),(3,103,'Chottu','1003','Javascript'),(4,104,'Bhima','1004, 1007','Node,Angular'),(5,105,'Nasir','1005, 1008','Mysql,MongoDB');
/*!40000 ALTER TABLE `students_activated_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `tasks_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `total_task` int NOT NULL,
  `Completed` int NOT NULL,
  `Pending` int NOT NULL,
  PRIMARY KEY (`tasks_id`),
  KEY `Stud_id_idx` (`Stud_id`),
  CONSTRAINT `Stud_id` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,101,10,9,1),(2,102,10,8,2),(3,103,10,7,3),(4,104,10,8,2),(5,105,10,6,4);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `topics_id` int NOT NULL,
  `Stud_id` int NOT NULL,
  `Stud_Name` varchar(45) NOT NULL,
  `Covered` varchar(45) NOT NULL,
  PRIMARY KEY (`topics_id`),
  KEY `FK_Stud_id_idx` (`Stud_id`),
  CONSTRAINT `FK_Stud_id` FOREIGN KEY (`Stud_id`) REFERENCES `users` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,101,'Abu','Html,Css'),(2,102,'Gayu','React'),(3,103,'Chottu','Javascript'),(4,104,'Bhima','Node,Angular'),(5,105,'Nasir','Mysql,MongoDB');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Stud_id` int NOT NULL,
  `Stud_Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (101,'Abu','abu@gmail.com'),(102,'Gayu','gayu@gmail.com'),(103,'Chottu','chottu@gmail.com'),(104,'Bhima','bhima@gmail.com'),(105,'Nasir','nasir@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'students'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-09  9:58:32
