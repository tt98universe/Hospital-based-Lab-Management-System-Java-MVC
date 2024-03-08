CREATE DATABASE  IF NOT EXISTS `abclab_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `abclab_management`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: abclab_management
-- ------------------------------------------------------
-- Server version	8.0.36

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
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Kandy','tanuwelegama1998@gmail.com','Tanushri','Welegama','0777186015','bbeddf59c89ed3a32701840817a7d449','20000','Bangalawatta main road, Lewella.','Twelegama');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` varchar(255) DEFAULT NULL,
  `appointment_taken_date` varchar(255) DEFAULT NULL,
  `appointment_taken_time` varchar(255) DEFAULT NULL,
  `appointment_time` varchar(255) DEFAULT NULL,
  `bill_made` varchar(255) DEFAULT NULL,
  `billing_date` varchar(255) DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `problem_description` varchar(255) DEFAULT NULL,
  `treatment_price` double DEFAULT NULL,
  `treatment_status` varchar(255) DEFAULT NULL,
  `want_medicine` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'3/5/2024','04-03-2024','08:22 PM','05:00 - 06:00 pm','Yes','05-03-2024',1,3,'Lipid Profile Test for the abnormal Liver condition',5000,'Done','Yes'),(2,'3/4/2024','04-03-2024','08:29 PM','02:00 - 03:00 pm','Yes','04-03-2024',2,2,'The blood test was done due to the red skin condition',3200,'Done','No'),(3,'3/8/2024','08-03-2024','06:12 PM','09:00 - 10:00 am','No',NULL,3,5,'need to do a blood test to count platelets',2600,'0',NULL),(4,'3/8/2024','08-03-2024','07:08 PM','0','No',NULL,1,4,'urine test',0,'Pending',NULL),(5,'3/8/2024','08-03-2024','07:13 PM','05:00 - 06:00 pm','No',NULL,2,1,'skin disease sample test',5000,'0',NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_medicines`
--

DROP TABLE IF EXISTS `appointment_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_medicines` (
  `appointment_id` int NOT NULL,
  `medicines_id` int NOT NULL,
  KEY `FK1ilfhsot05764i7fir8vmqky` (`medicines_id`),
  KEY `FK1ou11630w8e9aqnopqkydlv7q` (`appointment_id`),
  CONSTRAINT `FK1ilfhsot05764i7fir8vmqky` FOREIGN KEY (`medicines_id`) REFERENCES `medicine` (`id`),
  CONSTRAINT `FK1ou11630w8e9aqnopqkydlv7q` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_medicines`
--

LOCK TABLES `appointment_medicines` WRITE;
/*!40000 ALTER TABLE `appointment_medicines` DISABLE KEYS */;
INSERT INTO `appointment_medicines` VALUES (3,1);
/*!40000 ALTER TABLE `appointment_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `specialist` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,36,'Kandy','pg@gmail.com','Pabasari','Ginige','0714562323','9134ed6a1a175df4017f3b668d2ff0ef','20000','04-03-2024','Gastroenterologists','digana','PGinige'),(2,65,'Kandy','rja@gmail.com','Rohantha','Jayakuru','0777895623','6cd12bec031bd167e7d74c59b3b1bc7d','20000','04-03-2024','Dermatologists','aniwatte','Rjaya'),(3,45,'Kandy','alaha@gmail.com','Anil','Alahakoon','0701562365','64840fb718d4613d0043afcd24f97317','20000','08-03-2024','Cardiologists','peradeniya','Aalahakoon');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (4);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `date_added` varchar(255) DEFAULT NULL,
  `distributor_id` int DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `manufacture_date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,1,'05-03-2024',1,'2026/02/22','2024/02/22','blood healer',1000,4,'Injections'),(2,1,'06-03-2024',1,'2026/02/5','2024/02/5','Gastritis ayurvedic syrup',10000,10,'Liquid');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_appointments`
--

DROP TABLE IF EXISTS `medicine_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_appointments` (
  `medicine_id` int NOT NULL,
  `appointments_id` int NOT NULL,
  KEY `FKb8eruqrpjpl1iub9nt1n4a2rs` (`appointments_id`),
  KEY `FKt2wdj1m6mcrtj80yl09ywgeqq` (`medicine_id`),
  CONSTRAINT `FKb8eruqrpjpl1iub9nt1n4a2rs` FOREIGN KEY (`appointments_id`) REFERENCES `appointment` (`id`),
  CONSTRAINT `FKt2wdj1m6mcrtj80yl09ywgeqq` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_appointments`
--

LOCK TABLES `medicine_appointments` WRITE;
/*!40000 ALTER TABLE `medicine_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_company`
--

DROP TABLE IF EXISTS `medicine_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_company`
--

LOCK TABLES `medicine_company` WRITE;
/*!40000 ALTER TABLE `medicine_company` DISABLE KEYS */;
INSERT INTO `medicine_company` VALUES (1,'Kandy','tanuwelegama1998@gmail.com','0777186015','Healer.CORP','20000','05-03-2024','Bangalawatta main road, Lewella.');
/*!40000 ALTER TABLE `medicine_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_distributor`
--

DROP TABLE IF EXISTS `medicine_distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_distributor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_distributor`
--

LOCK TABLES `medicine_distributor` WRITE;
/*!40000 ALTER TABLE `medicine_distributor` DISABLE KEYS */;
INSERT INTO `medicine_distributor` VALUES (1,'Kandy','tae95@gmail.com','0715566231','LIVE_LONG','20000','05-03-2024','aniwatte'),(2,'Kandy','tae95@gmail.com','0715566231','LIVE_LONG','20000','05-03-2024','aniwatte');
/*!40000 ALTER TABLE `medicine_distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,30,'AB+','Kandy','tae95@gmail.com','Kim','TaeHyung','0715566231','20000','04-03-2024','aniwatte'),(2,60,'B+','Kandy','tbb@gmail.com','Tikiri','Bandara','0757585858','20000','04-03-2024','wathurakumbura'),(3,10,'B-','Kandy','gp@gmail.com','Gagana','Perera','0771234569','20000','04-03-2024','digana'),(4,26,'0','Kandy','ppriya@gmail.com','Prabodha','Priya','0715566231','20000','05-03-2024','aniwatte'),(5,24,'AB+','Kandy','wsamara@gmail.com','Warushi','Samarathunge','0777123456','20000','08-03-2024','peradeniya'),(6,18,'0','Kandy','yg@gmail.com','Yasasvi','G','0777186015','20000','08-03-2024','Bangalawatta main road, Lewella.');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacist` (
  `id` int NOT NULL,
  `age` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacist`
--

LOCK TABLES `pharmacist` WRITE;
/*!40000 ALTER TABLE `pharmacist` DISABLE KEYS */;
INSERT INTO `pharmacist` VALUES (2,25,'Kandy','tv@gmail.com','Tharu','Wijerathne','0777895623','7fe7dbb112629034a07824e2261289c3','20000','05-03-2024','kengalle','Twijerathne'),(3,25,'Kandy','tv@gmail.com','Tharu','Wijerathne','0777895623','e54f8084d3f4dac145a40f4c2cca7721','20000','05-03-2024','kengalle','Twijerathne');
/*!40000 ALTER TABLE `pharmacist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptionist` (
  `id` int NOT NULL,
  `age` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionist`
--

LOCK TABLES `receptionist` WRITE;
/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` VALUES (1,20,'Kandy','tr2007@gmail.com','Tasha20','Rathnayake','0777666125','7fe7dbb112629034a07824e2261289c3','20000','04-03-2024','Bangalawatta main road, Lewella.','TRathnayake');
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-08 19:18:26
