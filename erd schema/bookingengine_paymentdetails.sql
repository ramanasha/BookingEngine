-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bookingengine
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `paymentdetails`
--

DROP TABLE IF EXISTS `paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentdetails` (
  `PaymentDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `PersonId` int(11) NOT NULL,
  `PaymentMethodId` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `Comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PaymentDetailsId`),
  UNIQUE KEY `uq_PaymentDetailsPerMethAmoComment` (`PersonId`,`PaymentMethodId`,`Amount`,`Comment`),
  KEY `fk_PaymentDetailsPaymentMethod` (`PaymentMethodId`),
  CONSTRAINT `fk_PaymentDetailsPaymentMethod` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`PaymentMethodId`),
  CONSTRAINT `fk_PaymentDetailsPerson` FOREIGN KEY (`PersonId`) REFERENCES `person` (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdetails`
--

LOCK TABLES `paymentdetails` WRITE;
/*!40000 ALTER TABLE `paymentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22 15:54:45
