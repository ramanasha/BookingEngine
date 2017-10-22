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
-- Table structure for table `roomarchive`
--

DROP TABLE IF EXISTS `roomarchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomarchive` (
  `RoomArchiveId` int(11) NOT NULL AUTO_INCREMENT,
  `RoomId` int(11) NOT NULL,
  `RoomDetailsId` int(11) NOT NULL,
  `DateChanged` date DEFAULT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `Comment` varchar(128) NOT NULL,
  PRIMARY KEY (`RoomArchiveId`),
  UNIQUE KEY `uq_RoomArchiveRoomRoomDetDateChangUpdatByComment` (`RoomId`,`RoomDetailsId`,`DateChanged`,`UpdatedBy`,`Comment`),
  KEY `fk_RoomArchiveUpdatedByPerson` (`UpdatedBy`),
  KEY `fk_RoomArchiveRoomDetails` (`RoomDetailsId`),
  CONSTRAINT `fk_RoomArchiveRoom` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomId`),
  CONSTRAINT `fk_RoomArchiveRoomDetails` FOREIGN KEY (`RoomDetailsId`) REFERENCES `roomdetails` (`RoomDetailsId`),
  CONSTRAINT `fk_RoomArchiveUpdatedByPerson` FOREIGN KEY (`UpdatedBy`) REFERENCES `person` (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomarchive`
--

LOCK TABLES `roomarchive` WRITE;
/*!40000 ALTER TABLE `roomarchive` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomarchive` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22 15:54:46
