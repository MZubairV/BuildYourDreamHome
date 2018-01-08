-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: BuildYourDreamHome
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `architect`
--

DROP TABLE IF EXISTS `architect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `architect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regid` int(11) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `experiance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `architect`
--

LOCK TABLES `architect` WRITE;
/*!40000 ALTER TABLE `architect` DISABLE KEYS */;
INSERT INTO `architect` VALUES (1,8,'BArch','10'),(2,9,'BArch','1'),(3,10,'Architect','0');
/*!40000 ALTER TABLE `architect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildRequests`
--

DROP TABLE IF EXISTS `buildRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planReqId` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `requestdate` datetime DEFAULT NULL,
  `responddate` datetime DEFAULT NULL,
  `isBuildReqAccepted` varchar(45) DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildRequests`
--

LOCK TABLES `buildRequests` WRITE;
/*!40000 ALTER TABLE `buildRequests` DISABLE KEYS */;
INSERT INTO `buildRequests` VALUES (1,2,'approved','2017-01-22 01:02:18','2017-01-22 01:02:41','yes',NULL),(2,1,'approved','2017-01-22 01:02:27','2017-02-01 00:12:54','yes',NULL),(3,3,'approved','2017-02-01 00:13:28','2017-02-01 00:14:14','yes',NULL),(4,5,'approved','2017-02-02 14:24:48','2017-02-03 15:11:22','yes',NULL),(5,9,'approved','2017-02-03 15:10:35','2017-02-03 15:11:20','yes',NULL),(6,8,'approved','2017-02-03 19:13:21','2017-02-03 19:13:41','yes',NULL),(7,12,'approved','2017-02-03 19:13:24','2017-02-03 19:13:44','yes',NULL),(8,7,'approved','2017-02-03 19:13:27','2017-02-03 19:13:42','yes',NULL),(9,10,'approved','2017-02-03 19:13:30','2017-02-04 12:56:43','yes',NULL),(10,11,'approved','2017-02-04 12:56:13','2017-02-04 12:56:43','yes',NULL),(11,4,'approved','2017-02-04 12:56:59','2017-02-04 12:57:57','yes',NULL),(12,13,'approved','2017-02-04 12:57:04','2017-02-04 12:57:58','yes',NULL),(13,14,'approved','2017-02-04 12:57:08','2017-02-04 12:57:58','yes',NULL),(14,15,'approved','2017-02-04 12:57:11','2017-02-04 12:57:58','yes',NULL),(15,6,'approved','2017-02-04 12:57:14','2017-02-04 12:57:59','yes',NULL),(16,16,'approved','2017-02-04 13:16:57','2017-02-04 13:17:44','yes',NULL);
/*!40000 ALTER TABLE `buildRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `builder`
--

DROP TABLE IF EXISTS `builder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `builder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regid` int(11) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `builder`
--

LOCK TABLES `builder` WRITE;
/*!40000 ALTER TABLE `builder` DISABLE KEYS */;
INSERT INTO `builder` VALUES (1,11,'HILITE','www.hilite.com'),(2,12,'Abad','www.abad.com'),(3,13,'Shoba','www.srb.com'),(4,14,'ULCSS','www.ulbuilders.com'),(5,15,'BUILDER','www.builder.com');
/*!40000 ALTER TABLE `builder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costRequest`
--

DROP TABLE IF EXISTS `costRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costRequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `builderid` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costRequest`
--

LOCK TABLES `costRequest` WRITE;
/*!40000 ALTER TABLE `costRequest` DISABLE KEYS */;
INSERT INTO `costRequest` VALUES (1,1,15,'responded','4000000'),(2,2,15,'responded','100'),(3,2,15,'responded','100'),(4,3,15,'responded','50000000'),(5,2,15,'responded','2323232323'),(6,4,15,'responded','100'),(7,5,15,'responded','100'),(8,4,15,'responded','100'),(9,5,15,'responded','100'),(10,6,15,'responded','999'),(11,7,15,'responded','1236'),(12,6,15,'responded','111111111111111'),(13,8,15,'responded','230'),(14,8,15,'responded','232012'),(15,9,15,'responded','320122'),(16,10,15,'responded','3333333333333'),(17,9,15,'responded','320122'),(18,13,15,'responded','10000'),(19,15,15,'responded','320111'),(20,18,15,'responded','20111'),(21,19,15,'responded','32111'),(22,19,11,NULL,NULL);
/*!40000 ALTER TABLE `costRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(50) NOT NULL DEFAULT '0',
  `regid` int(11) NOT NULL DEFAULT '0',
  `projoctid` int(11) DEFAULT NULL,
  `post_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (12,'0000000000000',8,1,'2017-01-28 23:55:11'),(13,'xczc',17,1,'2017-01-29 00:00:46'),(14,'xczc',2,1,'2017-01-29 00:00:48'),(15,'xczc',2,1,'2017-01-29 00:00:48'),(48,'zubair',16,1,'2017-01-29 02:28:01'),(49,'asdas',2,1,'2017-01-29 02:36:02'),(50,'232',2,1,'2017-01-29 02:36:07'),(51,'zczxc',16,1,'2017-01-29 02:38:53'),(61,'dfsf',16,1,'2017-01-29 03:52:04'),(66,'hi',2,1,'2017-01-29 03:57:39'),(71,'1one',2,1,'2017-01-30 22:03:49'),(72,'2two',8,1,'2017-01-30 22:04:32'),(73,'3three',8,1,'2017-01-30 22:04:38'),(74,'4four',2,1,'2017-01-30 22:04:54'),(75,'5five',2,1,'2017-01-30 22:04:59'),(79,'project manager',16,1,'2017-01-30 22:11:09'),(80,'pm',16,1,'2017-01-30 22:11:18'),(81,'ar',8,1,'2017-01-30 22:11:37'),(82,'i am pm',8,1,'2017-02-01 00:11:16'),(83,'asdasdasd',2,3,'2017-02-01 00:16:53'),(84,'dasdadasd',8,3,'2017-02-01 00:17:24'),(85,'jjk',2,1,'2017-02-02 14:26:28'),(86,'klkl',8,1,'2017-02-02 14:26:56'),(87,'lkkl',2,3,'2017-02-02 14:28:36'),(88,'hejjk',2,1,'2017-02-02 15:34:07'),(89,'uuusdasda',2,1,'2017-02-03 14:08:37'),(90,'dsfs',8,1,'2017-02-03 14:09:00'),(91,'ADADAD',2,5,'2017-02-03 19:12:41'),(92,'adsadas',2,19,'2017-02-04 13:28:42'),(93,'fdsfsfd',8,19,'2017-02-04 13:28:54'),(94,'werewr',2,19,'2017-02-04 13:28:59'),(95,'dsasdfaf',2,1,'2017-02-05 17:00:10'),(96,'sasfdsf',2,1,'2017-02-05 17:00:13');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `architectId` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `bedroom` varchar(45) DEFAULT NULL,
  `bathroom` varchar(45) DEFAULT NULL,
  `stories` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'Big House',8,'Costly','5','3','2','2500','villa-design-3d.jpg'),(2,'New Model',8,'Average','4','5','2','2000','risks_to_your_home_featured.jpg'),(3,'White House',8,'Costly','6','3','2','3000','images (1).jpg'),(4,'Old model',8,'Costly','3','2','3','3025','images (1).jpg'),(5,'Low cost',8,'low','2','1','1','1000','home-banner-portfolio-2016.jpg'),(6,'Oldest Model',8,'economic','3','2','1','800','Dream-home.jpg'),(7,'Big house',8,'Costly','6','4','2','3000','Big_single-family_home_2.jpg'),(8,'Latest',8,'low','4','4','2','2000','3yd-TRIANGLE-2105169_1.jpg');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planRequests`
--

DROP TABLE IF EXISTS `planRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planid` int(11) DEFAULT NULL,
  `regid` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `requestdate` datetime DEFAULT NULL,
  `responddate` datetime DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  `isProReqSend` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planRequests`
--

LOCK TABLES `planRequests` WRITE;
/*!40000 ALTER TABLE `planRequests` DISABLE KEYS */;
INSERT INTO `planRequests` VALUES (1,9,2,'approved','2017-01-22 01:00:53','2017-01-22 01:01:43','its costly','yes'),(2,2,2,'approved','2017-01-22 01:00:58','2017-01-22 01:01:58','its new model','yes'),(3,4,2,'approved','2017-01-22 01:01:04','2017-02-01 00:12:48','asdasda','yes'),(4,1,2,'approved','2017-01-22 11:40:34','2017-02-04 12:56:36','','yes'),(5,6,2,'approved','2017-02-01 00:12:18','2017-02-01 00:12:45','asdasd','yes'),(6,4,2,'approved','2017-02-02 14:24:33','2017-02-04 12:56:36','','yes'),(7,1,2,'approved','2017-02-03 15:07:30','2017-02-03 19:13:03','AFSAFASF','yes'),(8,3,2,'approved','2017-02-03 15:09:24','2017-02-03 19:13:01','SAFDSAFADSF','yes'),(9,1,2,'approved','2017-02-03 15:09:51','2017-02-03 15:10:14','dsdfsdf','yes'),(10,3,2,'approved','2017-02-03 19:12:23','2017-02-03 19:12:59','czxCCzxc','yes'),(11,5,2,'approved','2017-02-03 19:12:27','2017-02-03 19:13:06','AFSDFASF','yes'),(12,4,2,'approved','2017-02-03 19:12:30','2017-02-03 19:12:56','zcczxCzxC','yes'),(13,3,2,'approved','2017-02-04 12:55:58','2017-02-04 12:56:37','','yes'),(14,2,2,'approved','2017-02-04 12:56:02','2017-02-04 12:56:37','','yes'),(15,1,2,'approved','2017-02-04 12:56:05','2017-02-04 12:56:37','','yes'),(16,5,2,'approved','2017-02-04 13:14:09','2017-02-04 13:16:35','gdfgdf','yes');
/*!40000 ALTER TABLE `planRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planpic`
--

DROP TABLE IF EXISTS `planpic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planpic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planid` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planpic`
--

LOCK TABLES `planpic` WRITE;
/*!40000 ALTER TABLE `planpic` DISABLE KEYS */;
INSERT INTO `planpic` VALUES (1,1,'First floor','ground-floor.jpg'),(2,1,'Ground Floor','first-floor.jpg'),(3,2,'First floor','small-home-plans-modern.jpg'),(4,3,'Ground Floor','1428e2444d9adabbaf8289a8fc5f57b5.jpg'),(5,3,'First floor','images.jpg'),(6,4,'Ground Floor','M4725A4S-1-MAIN.jpg'),(7,4,'First floor','1428e2444d9adabbaf8289a8fc5f57b5.jpg'),(8,5,'Ground Floor','house-plan-padi-groundFloorPlan.jpg'),(9,5,'First floor','2067floor.jpg'),(10,6,'Ground Floor','images.png'),(11,6,'Ground Floor','images.jpg'),(12,7,'Ground Floor','Adzo-ground-Floor-Plan.jpg'),(13,7,'First floor','images.jpg'),(14,8,'Ground Floor','e641582cbff596731b5f09befaaba344.jpg'),(15,8,'First floor','e641582cbff596731b5f09befaaba344.jpg'),(16,9,'Ground Floor','house-plan-padi-groundFloorPlan.jpg'),(17,9,'First floor','M4725A4S-1-MAIN.jpg');
/*!40000 ALTER TABLE `planpic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `planid` int(11) DEFAULT NULL,
  `architectId` int(11) DEFAULT NULL,
  `builderId` int(11) DEFAULT NULL,
  `projectManagerId` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `coast` varchar(45) DEFAULT NULL,
  `DOStart` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `planselectdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,2,2,8,15,16,'New Model','4000000','2017-01-22 01:10:52',NULL,'started','2017-01-22 01:02:41'),(2,2,9,8,15,16,'Indian','2323232323','2017-02-03 15:08:54',NULL,'started','2017-02-01 00:12:54'),(3,2,4,8,15,21,'Old model','50000000','2017-02-01 00:16:30',NULL,'started','2017-02-01 00:14:14'),(4,2,1,8,15,16,'Big House','100','2017-02-03 19:09:05',NULL,'started','2017-02-03 15:11:20'),(5,2,6,8,15,21,'Oldest Model','100','2017-02-03 19:09:02',NULL,'started','2017-02-03 15:11:22'),(6,2,3,8,15,18,'White House','999','2017-02-03 19:17:05',NULL,'started','2017-02-03 19:13:41'),(7,2,1,8,15,NULL,'Big House','1236',NULL,NULL,'builder selecter','2017-02-03 19:13:42'),(8,2,4,8,15,21,'Old model','230','2017-02-05 15:58:32',NULL,'started','2017-02-03 19:13:44'),(9,2,3,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:56:43'),(10,2,5,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:56:43'),(11,2,1,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:57'),(12,2,1,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:57'),(13,2,1,8,15,18,'Big House','10000','2017-02-04 13:02:18',NULL,'started','2017-02-04 12:57:57'),(14,2,1,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:57'),(15,2,3,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:58'),(16,2,2,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:58'),(17,2,1,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:58'),(18,2,4,8,NULL,NULL,NULL,NULL,NULL,NULL,'plan selected','2017-02-04 12:57:59'),(19,2,5,8,15,21,'Low cost','32111','2017-02-04 13:28:17',NULL,'started','2017-02-04 13:17:44');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectImages`
--

DROP TABLE IF EXISTS `projectImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectImages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectImages`
--

LOCK TABLES `projectImages` WRITE;
/*!40000 ALTER TABLE `projectImages` DISABLE KEYS */;
INSERT INTO `projectImages` VALUES (1,'1','sdfdfsf','first-floor.jpg','2017-02-05'),(2,'1','zdfzdf','first-floor.jpg','2017-02-05'),(3,'1','dsfsdf','ground-floor.jpg','2017-02-05'),(4,'1','asdasdasd','first-floor.jpg','2017-02-05'),(5,'4','dfsdfds','villa-design-3d.jpg','2017-02-05');
/*!40000 ALTER TABLE `projectImages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectManager`
--

DROP TABLE IF EXISTS `projectManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectManager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regId` int(11) DEFAULT NULL,
  `builderId` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectManager`
--

LOCK TABLES `projectManager` WRITE;
/*!40000 ALTER TABLE `projectManager` DISABLE KEYS */;
INSERT INTO `projectManager` VALUES (1,16,'15','available'),(2,17,'15','available'),(3,18,'15','available'),(4,19,'15','available'),(5,20,'15','available'),(6,21,'15','available'),(7,22,'15','available');
/*!40000 ALTER TABLE `projectManager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `roll` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'Admin','6231025624','INDIA','KERALA','MALAPPURAM','CHELEMBRA','a','','5','2'),(2,'USER','6532145236','INDIA','KERALA','MALAPPURAM','CHELEMBRA','u','','1','2'),(3,'NIKHIN','653214523636','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','nikhin@gemil.com','','1','2'),(4,'SUBIN','363214523636','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','subin@gemil.com','','1','2'),(5,'ABHILASH','363214523636','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','abhilash@gemil.com','','1','2'),(6,'SANJAY','363214523636','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','sanjay@gemil.com','','1','2'),(7,'ASWANI','3632134523636','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','aswani@gemil.com','','1','2'),(8,'ARCHITECT','325625556565','INDIA','KERALA','MALAPPURAM','UNIVERSITY','ar','','2','2'),(9,'VIJAY','63225556565','INDIA','KERALA','MALAPPURAM','UNIVERSITY','vijay@gemil.com','','2','2'),(10,'SHAFEEQ','63225556565','INDIA','KERALA','MALAPPURAM','UNIVERSITY','shafeeeq@gemil.com','','2','2'),(11,'HILITE','3214526','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','hilite@gemil.com','','3','3'),(12,'ABAD','323214526','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','abad@gemil.com','','3','2'),(13,'SR Builders','32321432526','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','srb@gemil.com','','3','2'),(14,'UL BUILDERS','32656879','INDIA','KERALA','MALAPPURAM','UNIVERSITY','ulbuilders@gemil.com','','3','2'),(15,'BUILDER','36526656','INDIA','KERALA','MALAPPURAM','UNIVERSITY','b','','3','2'),(16,'PROJECT MANAGER','63656565','INDIA','KERALA','MALAPPURAM','CHELEMBRA','pm','','4','1'),(17,'NASEEB','59898989','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','naseeb@gemil.com','','4','1'),(18,'THOMAS','59898989','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','thomas@gemil.com','','4','1'),(19,'RAMU','59898989','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','ramu@gemil.com','','4','1'),(20,'PHILIP','59898989','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','philip@gemil.com','','4','1'),(21,'MUHAMMED','59898989','INDIA','KERALA','KOZHIKKODE','KOZHIKKODE','muhammed@gemil.com','','4','1'),(22,'','','','','','','','','4','1');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roll`
--

DROP TABLE IF EXISTS `roll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rollname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rollname_UNIQUE` (`rollname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roll`
--

LOCK TABLES `roll` WRITE;
/*!40000 ALTER TABLE `roll` DISABLE KEYS */;
INSERT INTO `roll` VALUES (5,'Admin'),(2,'Architect'),(3,'Builder'),(1,'Customer'),(4,'Project Manager');
/*!40000 ALTER TABLE `roll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `statusName_UNIQUE` (`statusName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (2,'Approved'),(1,'Pending'),(3,'Reject');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,2),(2,3),(3,4),(4,5),(5,6),(6,7);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-05 17:03:02
