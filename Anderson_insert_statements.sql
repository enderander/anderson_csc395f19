-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: csc395_f19
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES (1,'New York','New York',11213,'3232 Mockingbird Lane','555-555-5555'),(2,'Brooklyn','New York',11245,'2323 Animallia Blvd','555-555-5556'),(3,'Traverse City','Michigan',49684,'2307 Owen Lane','555-555-5557'),(4,'Nightmute','Alaska',99690,'3238 Timbercrest Road','555-555-5558'),(5,'Fairbanks','Alaska',99701,'1915 Blackwell Street','555-555-5559'),(6,'King Salmon','Alaska',92301,'4580 Blackwell Street','555-555-5560'),(7,'Lewiston','Maine',40240,'3895 Retreat Avenue','555-555-5561'),(9,'Milford','Texas',76670,'832 Wilson Avenue','555-555-5563'),(10,'Astoria','Oregon',49612,'2025 Mattson Street','555-555-5564'),(11,'Alden','Oregon',49612,'3771 Wetzel Lane','555-555-5565'),(12,'Westchester','Illinois',60154,'428 Oakmound Drive','555-555-5566'),(13,'New York','New York',11213,'3232 Mockingbird Lane','555-555-5555'),(15,'New York','New York',11213,'3232 Mockingbird Lane','555-555-5555'),(16,'Brooklyn','New York',11245,'2323 Animallia Blvd','555-555-5556'),(17,'New York','New York',11213,'3232 Mockingbird Lane','555-555-5555'),(19,'Brooklyn','New York',11245,'2323 Animallia Blvd','555-555-5556');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'senior','Steven','Universe',2010),(2,'senior','Macho','Man',2019),(3,'parent','Randy','Savage',2012),(4,'parent','Moral','Oral',1990),(5,'administrator','Simone','Singletary',2010),(6,'administrator','Hector','Gonzalez',2012),(7,'administrator','Marshall','Mathers',2012),(9,'parent','Edward','Naranjo',2012),(10,'senior','Chares','Brimstone',2010),(11,'administrator','Archer','Sterling',2012),(12,'parent','Barry','Much',1990),(13,'alumnus/alumna','Rachel','Vargas',2012),(15,'alumnus/alumna','Susan','Anthony',2012),(16,'alumnus/alumna','Richard','Dixon',2012),(17,'parent','Ray','Rachel',2010),(19,'alumnus/alumna','Mitch','Craig',2002),(21,'alumnus/alumna','Donald','Glover ',2010),(22,'alumnus/alumna','Simone','Singletary',2020),(23,'alumnus/alumna','Mitchel','Glover ',2010);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dnr_circle`
--

LOCK TABLES `dnr_circle` WRITE;
/*!40000 ALTER TABLE `dnr_circle` DISABLE KEYS */;
INSERT INTO `dnr_circle` VALUES (1,'Diamond',' 100-24999'),(2,'Platinum','  25000 -49000'),(3,'President','  50000 and up');
/*!40000 ALTER TABLE `dnr_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `donation_history`
--

LOCK TABLES `donation_history` WRITE;
/*!40000 ALTER TABLE `donation_history` DISABLE KEYS */;
INSERT INTO `donation_history` VALUES (1,' 24-Jul-98',1,20000,4),(2,' 27-Oct-93',2,50000,5),(3,' 15-Mar-97',3,10000,6),(4,' 19-Dec-99',4,50000,4),(5,' 31-Dec-99',5,10000,5),(6,' 24-Jul-98',1,20000,6),(7,' 27-Oct-93',2,50000,1),(8,' 15-Mar-97',10,10000,4),(9,' 19-Dec-99',4,50000,5),(10,' 31-Dec-99',5,10000,6),(11,' 31-Dec-99',6,500,3),(12,' 17-Jun-93',7,1000,4),(13,' 31-Dec-98',8,30000,5),(14,' 31-Dec-99',10,10000,6),(15,' 31-Dec-98',10,90000,1),(16,' 24-Jul-98',1,20000,3),(17,' 27-Oct-93',2,50000,4),(18,' 15-Mar-97',3,10000,5),(19,' 19-Dec-99',4,50000,3),(20,' 31-Dec-99',5,10000,4),(21,' 24-Jul-98',1,20000,5),(22,' 27-Oct-93',2,50000,6),(23,' 15-Mar-97',10,10000,5),(24,' 19-Dec-99',4,50000,6),(25,' 31-Dec-99',5,10000,3),(26,' 31-Dec-99',6,500,4),(27,' 17-Jun-93',7,1000,3),(28,' 31-Dec-98',8,30000,4),(29,' 31-Dec-99',10,10000,5),(30,' 31-Dec-98',10,90000,6);
/*!40000 ALTER TABLE `donation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (1,'Rachel','Vargas',2,3,13),(2,'Bob','Fossey',2,4,14),(3,'Susan','Anthony',2,5,15),(4,'Richard','Dixon',2,6,16),(5,'Ray','Rachel',2,7,17),(6,'Michael','Buble',1,8,3),(7,'Mitch','Craig',2,9,2),(8,'Lincoln','Pies',3,10,1),(9,'Donald','Glover ',1,11,4),(10,'Simone','Singletary',1,12,7);
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `event_history`
--

LOCK TABLES `event_history` WRITE;
/*!40000 ALTER TABLE `event_history` DISABLE KEYS */;
INSERT INTO `event_history` VALUES (1,' 24-Jul-98',1),(2,' 27-Oct-93',2),(3,' 15-Mar-97',3),(4,' 19-Dec-99',4),(5,' 31-Dec-99',5),(6,' 31-Dec-99',6),(7,' 17-Jun-93',2),(8,' 31-Dec-98',3),(9,' 31-Dec-99',4),(10,' 31-Dec-98',5);
/*!40000 ALTER TABLE `event_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `event_locations`
--

LOCK TABLES `event_locations` WRITE;
/*!40000 ALTER TABLE `event_locations` DISABLE KEYS */;
INSERT INTO `event_locations` VALUES (1,' 24-Jul-98',1,2),(2,' 27-Oct-93',2,3),(3,' 15-Mar-97',3,5),(4,' 19-Dec-99',4,3),(5,' 31-Dec-99',5,5),(6,' 31-Dec-99',6,1),(7,' 17-Jun-93',7,2),(8,' 31-Dec-98',8,3),(9,' 31-Dec-99',9,4),(10,' 31-Dec-98',10,5);
/*!40000 ALTER TABLE `event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Holiday Dinner Dance'),(2,'Spring Golf Outing'),(3,'Capture the Flag Tournament'),(4,'PaintBall in the Park'),(5,'Lazertag in the Forest'),(6,'Jenga in the Park');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` VALUES (1,'Credit Card'),(2,'Cash'),(3,'Debit Card'),(4,'Check'),(5,'Wire Transfer');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pledge_history`
--

LOCK TABLES `pledge_history` WRITE;
/*!40000 ALTER TABLE `pledge_history` DISABLE KEYS */;
INSERT INTO `pledge_history` VALUES (1,'7/24/2018',1,2,1),(2,'10/27/2018',2,3,2),(3,'3/15/2018',3,5,3),(4,'12/19/2018',4,3,4),(5,'12/31/2018',5,5,5),(6,'12/31/2019',6,1,6),(7,'6/17/2018',7,2,7),(8,'12/31/2018',8,3,8),(9,'12/31/2018',9,4,9),(10,'12/31/2019',10,5,10),(11,'3/15/2018',10,2,2),(12,'4/15/2018',10,3,5),(13,'1/31/2018',8,4,3),(14,'1/28/2019',4,5,1),(15,'6/27/2019',3,2,3),(16,'6/17/2019',9,3,5),(17,'6/14/2019',9,4,1),(18,'2/13/2018',7,5,2),(19,'6/17/2018',7,4,8),(20,'6/18/2019',7,2,8),(21,'4/15/2019',7,2,3),(22,'1/31/2019',8,3,5),(23,'1/28/2019',9,4,1),(24,'6/27/2019',10,5,2),(25,'6/17/2019',10,4,8),(26,'6/14/2019',10,2,8),(27,'2/13/2020',8,2,3),(28,'6/17/2020',4,3,5),(29,'6/18/2020',3,4,1);
/*!40000 ALTER TABLE `pledge_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pledges`
--

LOCK TABLES `pledges` WRITE;
/*!40000 ALTER TABLE `pledges` DISABLE KEYS */;
INSERT INTO `pledges` VALUES (1,' TRUE',NULL,'Victor','Gonzales','7/24/2019',NULL,22),(2,'FALSE',NULL,'Anthony','Anderson','10/27/2019',NULL,22),(3,'TRUE',NULL,'Rachel','Vargas','3/15/2019',NULL,13),(4,'TRUE',NULL,'Bob','Fossey','12/19/2019',NULL,14),(5,'TRUE',NULL,'Susan','Anthony','12/31/2019',NULL,15),(6,'TRUE',NULL,'Richard','Dixon','12/31/2019',NULL,16),(7,'TRUE',NULL,'Ray','Rachel','6/17/2019',NULL,17),(8,'TRUE',NULL,'Michael','Buble','12/31/2019',NULL,18),(9,'FALSE',NULL,'Mitch','Craig','12/31/2019',NULL,19),(10,'FALSE',NULL,'Lincoln','Pies','12/31/2019',NULL,20),(11,'TRUE',NULL,'Donald','Glover','1/31/2019',NULL,21),(12,'FALSE',NULL,'Simone','Singletary','9/31/2019',NULL,5);
/*!40000 ALTER TABLE `pledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 13:57:40
