-- MySQL dump 10.13  Distrib 5.1.45, for Win32 (ia32)
--
-- Host: localhost    Database: medicine_shop
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `amount`
--

DROP TABLE IF EXISTS `amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amount` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `bill_bid` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amount`
--

LOCK TABLES `amount` WRITE;
/*!40000 ALTER TABLE `amount` DISABLE KEYS */;
INSERT INTO `amount` VALUES (1,1,27500),(2,2,115000),(3,3,1500);
/*!40000 ALTER TABLE `amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date DEFAULT NULL,
  `fk_patient_id` int(11) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `total_cost_price` float DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (0,'2018-11-28',0,0,0),(1,'2018-10-20',1,NULL,NULL),(2,'2018-10-21',2,NULL,NULL),(3,'2017-10-21',3,NULL,NULL);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `admin_password` varchar(45) DEFAULT NULL,
  `admin_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`admin_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'aritra','abcd','abcd@gmail.com'),(2,'aneesh','bcda','bcda@gmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL DEFAULT '0',
  `medicine_name` varchar(45) DEFAULT NULL,
  `items_per_strip` int(11) DEFAULT NULL,
  `buying_price` float NOT NULL DEFAULT '0',
  `selling_price` float NOT NULL DEFAULT '0',
  `fk_medicine_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (0,'grenil',10,100,150,1),(1,'crocin',10,40,50,1),(2,'vitaminD',10,400,1000,2),(3,'benadril',1,20,100,3),(4,'diabetes inj',1,2000,5000,4);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_type`
--

DROP TABLE IF EXISTS `medicine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine_type` (
  `medicine_type_id` int(11) NOT NULL DEFAULT '0',
  `medicine_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`medicine_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_type`
--

LOCK TABLES `medicine_type` WRITE;
/*!40000 ALTER TABLE `medicine_type` DISABLE KEYS */;
INSERT INTO `medicine_type` VALUES (1,'tablet strip'),(2,'capsules strip'),(3,'syrup'),(4,'injection');
/*!40000 ALTER TABLE `medicine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_details`
--

DROP TABLE IF EXISTS `patient_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_details` (
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `patient_name` varchar(45) NOT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_details`
--

LOCK TABLES `patient_details` WRITE;
/*!40000 ALTER TABLE `patient_details` DISABLE KEYS */;
INSERT INTO `patient_details` VALUES (0,'ab','bc',33,'male','abc@ac.com'),(1,'surbhi','praveen',NULL,NULL,NULL),(2,'ashish','kruthi',NULL,NULL,NULL),(3,'praveen','ayesha',NULL,NULL,NULL);
/*!40000 ALTER TABLE `patient_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `trid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_medicine_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `fk_bill_id` int(11) DEFAULT NULL,
  `sp` float NOT NULL,
  `cp` float NOT NULL,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`trid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,4,5,1,25000,10000,NULL),(2,1,50,1,2500,2000,NULL),(3,2,100,2,100000,40000,NULL),(4,3,10,3,1000,200,NULL),(5,4,3,2,15000,6000,NULL),(6,1,10,3,500,400,NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 15:06:08
