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
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_details` (
  `CONTACT_ID` int(11) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` text,
  KEY `fk_contact` (`CONTACT_ID`),
  CONSTRAINT `fk_contact` FOREIGN KEY (`CONTACT_ID`) REFERENCES `contacts` (`CONTACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `CONTACT_ID` int(11) NOT NULL,
  `CONTACT_TYPE` varchar(25) DEFAULT NULL,
  `FNAME` varchar(25) DEFAULT NULL,
  `LNAME` varchar(25) DEFAULT NULL,
  `YEAR_OF_GRAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dnr_circle`
--

DROP TABLE IF EXISTS `dnr_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnr_circle` (
  `CIRCLE_ID` int(11) NOT NULL,
  `TITLE` varchar(25) DEFAULT NULL,
  `DON_RANGE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CIRCLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donation_history`
--

DROP TABLE IF EXISTS `donation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation_history` (
  `DON_HISID` int(11) NOT NULL,
  `DONATION_DATE` text,
  `DONOR_ID` int(11) DEFAULT NULL,
  `AMNT_DONATED` int(11) DEFAULT NULL,
  `eventID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DON_HISID`),
  KEY `fk_donor` (`DONOR_ID`),
  CONSTRAINT `fk_donor` FOREIGN KEY (`DONOR_ID`) REFERENCES `donors` (`DONOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donors` (
  `DONOR_ID` int(11) NOT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `DNR_CIRCLE_ID` int(11) DEFAULT NULL,
  `PLEDGE_ID` int(11) DEFAULT NULL,
  `CONTACT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DONOR_ID`),
  KEY `fk_circle` (`DNR_CIRCLE_ID`),
  CONSTRAINT `fk_circle` FOREIGN KEY (`DNR_CIRCLE_ID`) REFERENCES `dnr_circle` (`CIRCLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_history`
--

DROP TABLE IF EXISTS `event_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_history` (
  `EVENT_HISID` int(11) NOT NULL,
  `EVENT_DATE` text,
  `EVENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EVENT_HISID`),
  KEY `fk_location` (`EVENT_ID`),
  CONSTRAINT `fk_location` FOREIGN KEY (`EVENT_ID`) REFERENCES `events` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_locations`
--

DROP TABLE IF EXISTS `event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_locations` (
  `EVENT_HISID` int(11) DEFAULT NULL,
  `EVENT_DATE` text,
  `EVENT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `eventID` int(11) NOT NULL,
  `eventTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_type` (
  `PAYMENT_TYPEID` int(11) NOT NULL,
  `NAME` text,
  PRIMARY KEY (`PAYMENT_TYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pledge_history`
--

DROP TABLE IF EXISTS `pledge_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pledge_history` (
  `PLEDGE_HISID` int(11) DEFAULT NULL,
  `PLEDGE_DATE` text,
  `EVENT_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `PLEDGE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pledges`
--

DROP TABLE IF EXISTS `pledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pledges` (
  `PLEDGE_ID` int(11) NOT NULL,
  `PAID_INFULL` varchar(50) DEFAULT NULL,
  `PAYMENT_TYPEID` int(11) DEFAULT NULL,
  `FNAME` varchar(50) DEFAULT NULL,
  `LNAME` varchar(50) DEFAULT NULL,
  `DUE_DATE` text,
  `DONOR_ID` int(11) DEFAULT NULL,
  `CONTACT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PLEDGE_ID`),
  KEY `fk_donor_pledge` (`DONOR_ID`),
  KEY `fk_payType` (`PAYMENT_TYPEID`),
  CONSTRAINT `fk_donor_pledge` FOREIGN KEY (`DONOR_ID`) REFERENCES `donors` (`DONOR_ID`),
  CONSTRAINT `fk_payType` FOREIGN KEY (`PAYMENT_TYPEID`) REFERENCES `payment_type` (`PAYMENT_TYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 14:03:09
