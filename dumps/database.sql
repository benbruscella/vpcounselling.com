-- MySQL dump 10.11
--
-- Host: mysql.dynamicbodytherapy.com    Database: vpcounsellingdb
-- ------------------------------------------------------
-- Server version	5.1.39-log

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
-- Table structure for table `Email_BounceRecord`
--

DROP TABLE IF EXISTS `Email_BounceRecord`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Email_BounceRecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Email_BounceRecord`
--

LOCK TABLES `Email_BounceRecord` WRITE;
/*!40000 ALTER TABLE `Email_BounceRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_BounceRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (4,404);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,4,1,404);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Image','Folder','Image_Cached') DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2010-08-21 03:12:33','2010-08-21 03:12:33','Uploads','Uploads','assets/Uploads/',NULL,0,0,0),(2,'Image','2010-08-21 03:12:33','2010-08-21 03:12:33','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,1,0),(3,'Image','2010-08-21 03:19:31','2010-08-21 03:19:31','meditation-leaf.jpg','meditation-leaf.jpg','assets/meditation-leaf.jpg',NULL,0,0,1),(4,'Image','2010-08-21 03:24:59','2010-08-21 03:24:59','Green-Lilies-Wallpaper-green-3844894-1024-768.jpg','Green-Lilies-Wallpaper-green-3844894-1024-768.jpg','assets/Green-Lilies-Wallpaper-green-3844894-1024-768.jpg',NULL,0,0,1),(5,'Image','2010-08-21 03:27:11','2010-08-21 03:27:11','leafdroplets.jpg','leafdroplets.jpg','assets/leafdroplets.jpg',NULL,0,0,1),(6,'Image','2010-08-21 03:29:18','2010-08-21 03:29:18','trees.jpg','trees.jpg','assets/trees.jpg',NULL,0,0,1),(7,'Image','2010-09-01 04:26:58','2010-09-01 04:26:58','vas2.jpg','vas2.jpg','assets/vas2.jpg',NULL,0,0,1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(50) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `IPRestrictions` mediumtext,
  `HtmlEditorConfig` varchar(50) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'Group','2010-08-21 03:12:32','2010-09-01 02:41:30','Content Authors',NULL,'content-authors',0,1,NULL,NULL,0),(2,'Group','2010-08-21 03:12:33','2010-08-21 03:12:33','Administrators',NULL,'administrators',0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,2,1),(2,1,2),(3,2,2);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(50) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(30) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Member','2010-08-21 03:12:33','2010-09-01 04:50:07','Default Admin',NULL,'admin','16e523157ee35b4cfc59c8b67010d9b62c1e7b3d',NULL,6,'2010-09-01 04:50:07',0,NULL,NULL,'sha1_v2.4','c6470aeaf4f2c88d79685c92763b9f1cf9e115c81282385553',NULL,NULL,'en_US',0,NULL,NULL),(2,'Member','2010-09-01 02:41:22','2010-09-07 18:26:04','Vas','Petrovski','info@vpcounselling.com','784ab0d176686bb9b2c5fbec52b5d1c29829da9c',NULL,14,'2010-09-07 18:26:04',0,NULL,NULL,'sha1_v2.4','5d5decf331a853dea95a2d0ad1153eb86d7b2eb91283334082',NULL,NULL,'en_US',0,'MMM d, yyyy','h:mm:ss a');
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` VALUES (1,'MemberPassword','2010-08-21 03:12:33','2010-08-21 03:12:33','16e523157ee35b4cfc59c8b67010d9b62c1e7b3d','c6470aeaf4f2c88d79685c92763b9f1cf9e115c81282385553','sha1_v2.4',1),(2,'MemberPassword','2010-09-01 02:41:23','2010-09-01 02:41:23','784ab0d176686bb9b2c5fbec52b5d1c29829da9c','5d5decf331a853dea95a2d0ad1153eb86d7b2eb91283334082','sha1_v2.4',2);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageComment`
--

DROP TABLE IF EXISTS `PageComment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PageComment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageComment') DEFAULT 'PageComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Comment` mediumtext,
  `IsSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CommenterURL` varchar(255) DEFAULT NULL,
  `SessionID` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageComment`
--

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (10,'Permission','2010-09-01 02:41:30','2010-09-01 02:41:30','CMS_ACCESS_ReportAdmin',0,1,1),(9,'Permission','2010-09-01 02:41:30','2010-09-01 02:41:30','CMS_ACCESS_CMSMain',0,1,1),(8,'Permission','2010-09-01 02:41:30','2010-09-01 02:41:30','CMS_ACCESS_AssetAdmin',0,1,1),(7,'Permission','2010-09-01 02:41:30','2010-09-01 02:41:30','CMS_ACCESS_CommentAdmin',0,1,1),(6,'Permission','2010-08-21 03:12:33','2010-08-21 03:12:33','ADMIN',0,1,2),(11,'Permission','2010-09-01 02:41:30','2010-09-01 02:41:30','SITETREE_REORGANISE',0,1,1);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedEmail`
--

DROP TABLE IF EXISTS `QueuedEmail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `QueuedEmail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('QueuedEmail') DEFAULT 'QueuedEmail',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Send` datetime DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `From` varchar(50) DEFAULT NULL,
  `Content` mediumtext,
  `ToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `QueuedEmail`
--

LOCK TABLES `QueuedEmail` WRITE;
/*!40000 ALTER TABLE `QueuedEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuedEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage_versions`
--

LOCK TABLES `RedirectorPage_versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (1,'SiteConfig','2010-08-21 03:12:31','2010-09-01 02:59:29','VP Counselling','VP Counselling Philosophy','vp','Anyone','LoggedInUsers','LoggedInUsers');
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','Contact','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaTitle` varchar(255) DEFAULT NULL,
  `MetaDescription` mediumtext,
  `MetaKeywords` varchar(255) DEFAULT NULL,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) DEFAULT NULL,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ToDo` mediumtext,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2010-08-21 03:12:31','2010-09-02 17:19:07','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy life balance. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Sexual abuse</li>&#13;\n<li>Relationship concerns</li>&#13;\n<li>Depression</li>&#13;\n<li>Anxiety</li>&#13;\n<li>Self-image</li>&#13;\n<li>Self-esteem</li>&#13;\n<li>Addiction</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle non-judgemental enquiry we can start to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Published',NULL,'Inherit','Inherit',NULL,20,'1.0',0),(2,'Page','2010-08-21 03:12:31','2010-09-02 17:25:42','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders during the traumatic warrant/arrest process.</p>&#13;\n<p>I’ve have worked with families from some of the most marginalised backgrounds in our community. I have offered these<br/>families crisis/trauma counselling for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Published',NULL,'Inherit','Inherit',NULL,10,'1.0',0),(3,'Contact','2010-08-21 03:12:32','2010-09-01 14:24:37','contact-us','Contact Us',NULL,'<h2>60 Elgin Street, Carlton, Victoria, 3053</h2>&#13;\n<h2>PH:  0416 224 799</h2>&#13;\n<h2>Email: <a href=\"mailto:info@vpcounselling.com\">info@vpcounselling.com</a></h2>',NULL,NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,'1.0',0),(4,'ErrorPage','2010-08-21 03:12:33','2010-08-21 03:12:33','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,7,0,0,'New page',NULL,'Inherit','Inherit',NULL,1,NULL,0),(6,'Page','2010-08-21 03:26:11','2010-09-01 04:54:25','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>&#13;\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>&#13;\n<p>To find out more, <a href=\"http://gestalt.org/yontef.htm\">read this.</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,0,1,NULL,0,4,0,0,'Published',NULL,'Inherit','Inherit',NULL,7,'1.0',0),(7,'Page','2010-09-01 02:49:17','2010-09-07 18:24:38','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whilst all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul><p>To make an appointment, you can give me a call directly or send me an email.</p>&#13;\n<p>All of my contact details are on the <a href=\"[sitetree_link id=3]\">Contact Us</a> page</p>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,'1.0',0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_ImageTracking` VALUES (85,5,3,'Content'),(334,1,3,'Content'),(235,6,5,'Content'),(328,2,6,'Content'),(333,7,4,'Content'),(327,2,7,'Content');
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` VALUES (157,2,6,'Content'),(164,1,3,'Content'),(163,1,7,'Content'),(162,7,3,'Content');
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','Contact','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaTitle` varchar(255) DEFAULT NULL,
  `MetaDescription` mediumtext,
  `MetaKeywords` varchar(255) DEFAULT NULL,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) DEFAULT NULL,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ToDo` mediumtext,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2010-08-21 03:12:31','2010-09-07 18:24:39','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy life balance. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Sexual abuse</li>&#13;\n<li>Relationship concerns</li>&#13;\n<li>Depression</li>&#13;\n<li>Anxiety</li>&#13;\n<li>Self-image</li>&#13;\n<li>Self-esteem</li>&#13;\n<li>Addiction</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle non-judgemental enquiry we can start to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Published',NULL,'Inherit','Inherit',NULL,20,'1.0',0),(2,'Page','2010-08-21 03:12:31','2010-09-02 17:25:42','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders during the traumatic warrant/arrest process.</p>&#13;\n<p>I’ve have worked with families from some of the most marginalised backgrounds in our community. I have offered these<br/>families crisis/trauma counselling for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Published',NULL,'Inherit','Inherit',NULL,10,'1.0',0),(3,'Contact','2010-08-21 03:12:32','2010-09-01 14:24:37','contact-us','Contact Us',NULL,'<h2>60 Elgin Street, Carlton, Victoria, 3053</h2>&#13;\n<h2>PH:  0416 224 799</h2>&#13;\n<h2>Email: <a href=\"mailto:info@vpcounselling.com\">info@vpcounselling.com</a></h2>',NULL,NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Published',NULL,'Inherit','Inherit',NULL,4,'1.0',0),(4,'ErrorPage','2010-08-21 03:12:33','2010-08-21 03:12:36','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,7,0,0,'New page',NULL,'Inherit','Inherit',NULL,1,NULL,0),(6,'Page','2010-08-21 03:26:11','2010-09-01 04:54:25','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>&#13;\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>&#13;\n<p>To find out more, <a href=\"http://gestalt.org/yontef.htm\">read this.</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,0,1,NULL,0,4,0,0,'Published',NULL,'Inherit','Inherit',NULL,7,'1.0',0),(7,'Page','2010-09-01 02:49:17','2010-09-07 18:24:38','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whilst all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul><p>To make an appointment, you can give me a call directly or send me an email.</p>&#13;\n<p>All of my contact details are on the <a href=\"[sitetree_link id=3]\">Contact Us</a> page</p>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Published',NULL,'Inherit','Inherit',NULL,18,'1.0',0);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Contact','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaTitle` varchar(255) DEFAULT NULL,
  `MetaDescription` mediumtext,
  `MetaKeywords` varchar(255) DEFAULT NULL,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) DEFAULT NULL,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ToDo` mediumtext,
  `Priority` varchar(5) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2010-08-21 03:12:31','2010-08-21 03:12:31','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Published',NULL,'Inherit','Inherit',NULL,NULL,0),(2,2,1,1,0,0,'Page','2010-08-21 03:12:31','2010-08-21 03:12:31','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br/></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Published',NULL,'Inherit','Inherit',NULL,NULL,0),(3,3,1,1,0,0,'Page','2010-08-21 03:12:32','2010-08-21 03:12:32','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br/></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,3,0,0,'Published',NULL,'Inherit','Inherit',NULL,NULL,0),(4,4,1,1,0,0,'ErrorPage','2010-08-21 03:12:33','2010-08-21 03:12:33','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,0,NULL,0,4,0,0,'New page',NULL,'Inherit','Inherit',NULL,NULL,0),(5,1,2,1,1,1,'HomePage','2010-08-21 03:12:31','2010-08-21 03:16:58','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(6,5,1,0,1,0,'Page','2010-08-21 03:17:40','2010-08-21 03:17:40','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,5,0,0,'New page',NULL,'Inherit','Inherit',NULL,NULL,0),(7,5,2,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:18:16','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em;\"/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.</p>\n<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\">This process can be disrupted through experiences such as:</p>\n<ul style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em; margin-left: 10px; margin-bottom: 20px;\"><li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Trauma</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loss &amp; grief,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexuality,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexual abuse,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Relationship concerns,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Depression,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Anxiety,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-image,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-esteem,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Addiction,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loneliness;</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Family conflict</li>\n</ul>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,'1.0',0),(8,5,3,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:18:27','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em;\"/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.</p>\n<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\">This process can be disrupted through experiences such as:</p>\n<ul style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em; margin-left: 10px; margin-bottom: 20px;\"><li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Trauma</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loss &amp; grief,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexuality,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexual abuse,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Relationship concerns,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Depression,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Anxiety,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-image,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-esteem,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Addiction,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loneliness;</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Family conflict</li>\n</ul>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(9,5,4,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:19:50','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\"><img class=\"right\" src=\"assets/meditation-leaf.jpg\" width=\"591\" height=\"315\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em;\"/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.</p>\n<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\">This process can be disrupted through experiences such as:</p>\n<ul style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em; margin-left: 10px; margin-bottom: 20px;\"><li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Trauma</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loss &amp; grief,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexuality,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Sexual abuse,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Relationship concerns,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Depression,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Anxiety,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-image,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Self-esteem,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Addiction,</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Loneliness;</li>\n<li style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.4em; margin-top: 4px; margin-right: 10px; margin-bottom: 4px; margin-left: 10px; list-style-type: disc;\">Family conflict</li>\n</ul>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(10,5,5,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:20:38','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\"> </p>\n<ul style=\"font-family: Verdana, Arial, sans-serif; font-size: 1em; margin-left: 10px; margin-bottom: 20px;\"/>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'OnlyTheseUsers','OnlyTheseUsers',NULL,'1.0',0),(11,5,6,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:22:52','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\"><img class=\"right\" src=\"assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>\n<ul><li>Trauma</li>\n<li>Loss &amp; grief,</li>\n<li>Sexuality,</li>\n<li>Sexual abuse,</li>\n<li>Relationship concerns,</li>\n<li>Depression,</li>\n<li>Anxiety,</li>\n<li>Self-image,</li>\n<li>Self-esteem,</li>\n<li>Addiction,</li>\n<li>Loneliness;</li>\n<li>Family conflict</li>\n</ul>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'OnlyTheseUsers','OnlyTheseUsers',NULL,'1.0',0),(12,1,3,1,1,1,'HomePage','2010-08-21 03:12:31','2010-08-21 03:25:32','home','Home',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.<br/><br/>What to expect?<br/><br/>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:<br/><br/>To help clarify the presenting issues<br/>To identify what you want to achieve through counselling<br/>To build awareness and assist in identifying the options available to you<br/>To develop ways of moving towards effective change</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(13,6,1,0,1,0,'Page','2010-08-21 03:26:11','2010-08-21 03:26:11','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,0,0,'New page',NULL,'Inherit','Inherit',NULL,NULL,0),(14,6,2,1,1,1,'Page','2010-08-21 03:26:11','2010-08-21 03:26:21','gestalt-counselling','Gestalt Counselling',NULL,NULL,'Gestalt Counselling',NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,'1.0',0),(15,6,3,1,1,1,'Page','2010-08-21 03:26:11','2010-08-21 03:26:50','gestalt-counselling','Gestalt Counselling',NULL,'<p>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>\n<p>To find out more, <a href=\"[sitetree_link id=]#http://gestalt.org/yontef.htm\">read this</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(16,6,4,1,1,1,'Page','2010-08-21 03:26:11','2010-08-21 03:27:23','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>\n<p>To find out more, <a href=\"[sitetree_link id=]#http://gestalt.org/yontef.htm\">read this</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(17,6,5,1,1,1,'Page','2010-08-21 03:26:11','2010-08-21 03:27:40','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>\n<p>To find out more, <a href=\"[sitetree_link id=]#http://gestalt.org/yontef.htm\">read this</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,1,1,NULL,0,3,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(18,2,2,1,1,1,'Page','2010-08-21 03:12:31','2010-08-21 03:29:00','about-me','About Me',NULL,'<p>My name is Vas Petrovski.<br/><br/>I work from a Gestalt Therapy framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>\n<p> </p>\n<ul><li>Mental health</li>\n<li>Disabilities</li>\n<li>Schools</li>\n<li>Men’s Health</li>\n<li>The justice system</li>\n<li>Corrections</li>\n<li>Family Crisis/response Support Services</li>\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>\n<ul><li>Relationship issues</li>\n<li>Sexuality</li>\n<li>Domestic violenceFamily conflict</li>\n<li>Loneliness</li>\n<li>Addictive behaviors</li>\n<li>Illness, grief and loss</li>\n<li>Mental health issues e.g. stress, anxiety and depression</li>\n<li>Self-esteem, confidence and self image issues</li>\n<li>Crises/trauma support and referral</li>\n<li>Conflict resolution and communication skills</li>\n<li>Life transition and adjustment issues</li>\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,4,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(19,2,3,1,1,1,'Page','2010-08-21 03:12:31','2010-08-21 03:29:34','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a Gestalt Therapy framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>\n<p> </p>\n<ul><li>Mental health</li>\n<li>Disabilities</li>\n<li>Schools</li>\n<li>Men’s Health</li>\n<li>The justice system</li>\n<li>Corrections</li>\n<li>Family Crisis/response Support Services</li>\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>\n<ul><li>Relationship issues</li>\n<li>Sexuality</li>\n<li>Domestic violenceFamily conflict</li>\n<li>Loneliness</li>\n<li>Addictive behaviors</li>\n<li>Illness, grief and loss</li>\n<li>Mental health issues e.g. stress, anxiety and depression</li>\n<li>Self-esteem, confidence and self image issues</li>\n<li>Crises/trauma support and referral</li>\n<li>Conflict resolution and communication skills</li>\n<li>Life transition and adjustment issues</li>\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,4,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(20,2,4,1,1,1,'Page','2010-08-21 03:12:31','2010-08-21 03:29:44','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a Gestalt Therapy framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>\n<ul><li>Mental health</li>\n<li>Disabilities</li>\n<li>Schools</li>\n<li>Men’s Health</li>\n<li>The justice system</li>\n<li>Corrections</li>\n<li>Family Crisis/response Support Services</li>\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>\n<ul><li>Relationship issues</li>\n<li>Sexuality</li>\n<li>Domestic violenceFamily conflict</li>\n<li>Loneliness</li>\n<li>Addictive behaviors</li>\n<li>Illness, grief and loss</li>\n<li>Mental health issues e.g. stress, anxiety and depression</li>\n<li>Self-esteem, confidence and self image issues</li>\n<li>Crises/trauma support and referral</li>\n<li>Conflict resolution and communication skills</li>\n<li>Life transition and adjustment issues</li>\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,4,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(21,3,2,1,1,1,'Contact','2010-08-21 03:12:32','2010-08-21 03:30:30','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(22,5,7,1,1,1,'Page','2010-08-21 03:17:40','2010-08-21 03:35:21','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\"><img class=\"right\" src=\"assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>\n<ul><li>Trauma</li>\n<li>Loss &amp; grief,</li>\n<li>Sexuality,</li>\n<li>Sexual abuse,</li>\n<li>Relationship concerns,</li>\n<li>Depression,</li>\n<li>Anxiety,</li>\n<li>Self-image,</li>\n<li>Self-esteem,</li>\n<li>Addiction,</li>\n<li>Loneliness;</li>\n<li>Family conflict</li>\n</ul>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','OnlyTheseUsers',NULL,'1.0',0),(23,3,3,1,1,1,'Contact','2010-08-21 03:12:32','2010-08-21 03:36:33','contact-us','Contact Us',NULL,'<h2>60 Elgin Street, Carlton, Victoria, 3053</h2>\n<h2>0416 224 799</h2>',NULL,NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(24,1,4,1,1,1,'HomePage','2010-08-21 03:12:31','2010-08-21 17:52:11','home','Home',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.<br/><br/>What to expect?<br/><br/>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:<br/></p><ul><li><span style=\"line-height: 22px; font-size: 15px;\">To help clarify the presenting issues</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To identify what you want to achieve through counselling</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To build awareness and assist in identifying the options available to you</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To develop ways of moving towards effective change</span></li>\n</ul>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(25,1,5,1,1,1,'HomePage','2010-08-21 03:12:31','2010-08-21 17:52:50','home','Home',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.<br/></p><h3>What to expect?</h3>\nWhist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:\n<ul><li><span style=\"line-height: 22px; font-size: 15px;\">To help clarify the presenting issues</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To identify what you want to achieve through counselling</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To build awareness and assist in identifying the options available to you</span></li>\n<li><span style=\"line-height: 22px; font-size: 15px;\">To develop ways of moving towards effective change</span></li>\n</ul>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(26,1,6,1,1,1,'HomePage','2010-08-21 03:12:31','2010-08-21 17:54:07','home','Home',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>\n<h3>What to expect?</h3>\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>\n<ul><li>To help clarify the presenting issues</li>\n<li>To identify what you want to achieve through counselling</li>\n<li>To build awareness and assist in identifying the options available to you</li>\n<li>To develop ways of moving towards effective change</li>\n</ul>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(27,5,8,1,2,2,'Page','2010-08-21 03:17:40','2010-09-01 02:46:46','philosophy','Philosophy',NULL,'<p style=\"font-family: Verdana, Arial, sans-serif; font-size: 1.5em; color: #333333; line-height: 1.5em; margin-bottom: 20px;\"><img class=\"right\" src=\"assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> </p>&#13;\n<p>When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>','Philosophy',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','OnlyTheseUsers',NULL,'1.0',0),(28,7,1,0,2,0,'Contact','2010-09-01 02:49:17','2010-09-01 02:49:17','new-contact','New Contact',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,0,0,'New page',NULL,'Inherit','Inherit',NULL,NULL,0),(29,7,2,1,2,2,'Contact','2010-09-01 02:49:17','2010-09-01 02:51:10','about-counselling','About Counselling',NULL,NULL,'About Counselling',NULL,NULL,NULL,1,1,NULL,0,7,0,0,'Saved (new)',NULL,'Inherit','Inherit',NULL,'1.0',0),(30,7,3,1,2,2,'Contact','2010-09-01 02:49:17','2010-09-01 02:53:11','about-counselling','About Counselling',NULL,'<p>hello</p>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,7,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(31,7,4,1,2,2,'Contact','2010-09-01 02:49:17','2010-09-01 02:53:30','about-counselling','About Counselling',NULL,'<p>hello</p>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(32,7,5,1,2,2,'Contact','2010-09-01 02:49:17','2010-09-01 02:55:16','about-counselling','About Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(33,1,7,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 02:55:44','home','Home',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(34,1,8,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 02:56:27','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> </p>&#13;\n<p>When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(35,1,9,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 03:03:59','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> </p>&#13;\n<p>When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(36,1,10,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 03:06:41','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(37,7,6,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:14:36','about-counselling','About Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(38,6,6,1,2,2,'Page','2010-08-21 03:26:11','2010-09-01 03:20:16','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>&#13;\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>&#13;\n<p>To find out more, <a href=\"[sitetree_link id=]#http://gestalt.org/yontef.htm\">read this</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,0,1,NULL,0,4,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(39,2,5,1,2,2,'Page','2010-08-21 03:12:31','2010-09-01 03:21:17','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violenceFamily conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(40,7,7,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:23:32','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(41,7,8,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:24:00','what-is-counselling','What Is Counselling?',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(42,7,9,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:24:48','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(43,7,10,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:26:18','what-to-expect','What To Expect',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(44,7,11,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:28:23','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What to expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(45,1,11,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 03:34:41','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p>What you can expect?</p>&#13;\n<p> </p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(46,7,12,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:35:49','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What you can expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,1,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(47,7,13,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 03:36:10','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between the client and the counsellor is an essential part of the process.<br/><br/>As trust is built up, the counsellor will encourage the client to explore areas of their lives;<br/>their relationships with themselves and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. The counsellor will safely encourage the expression<br/>of these feelings, thus making them easier for the client to understand.<br/><br/>The counsellor works with the client to discover options and helps them to expand and focus<br/>on whichever option they choose. The counsellor may guide the client to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>Whatever approach the counsellor and client take, the ultimate aim is for the client to make their<br/>own choices, and to put them into action.</p>&#13;\n<h3>What you can expect?</h3>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(48,1,12,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 03:37:13','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> </p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(49,2,6,1,2,2,'Page','2010-08-21 03:12:31','2010-09-01 03:42:41','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(50,2,7,1,1,1,'Page','2010-08-21 03:12:31','2010-09-01 04:28:04','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(51,2,8,1,1,1,'Page','2010-08-21 03:12:31','2010-09-01 04:31:20','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(52,2,9,1,1,1,'Page','2010-08-21 03:12:31','2010-09-01 04:31:58','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders. The program provides early<br/>intervention counselling during the warrant/arrest process and has provided welcomed relief for the<br/>families of offenders.<br/><br/>I’ve supported families from some of the most marginalised backgrounds and have supported these<br/>families with crisis/trauma response for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(53,6,7,1,2,2,'Page','2010-08-21 03:26:11','2010-09-01 04:53:10','gestalt-counselling','Gestalt Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450300-leafdroplets.jpg\" width=\"450\" height=\"300\" alt=\"\" title=\"\"/>The goal is for clients to become aware of what they are doing, how they are doing it, and how they can change themselves, and at the same time, to learn to accept and value themselves.</p>&#13;\n<p>Gestalt therapy focuses more on process (what is happening) than content (what is being discussed). The emphasis is on what is being done, thought and felt at the moment rather than on what was, might be, could be, or should be.</p>&#13;\n<p>To find out more, <a href=\"http://gestalt.org/yontef.htm\">read this.</a>.</p>','Gestalt Counselling',NULL,NULL,NULL,0,1,NULL,0,4,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(54,3,4,1,2,2,'Contact','2010-08-21 03:12:32','2010-09-01 14:24:37','contact-us','Contact Us',NULL,'<h2>60 Elgin Street, Carlton, Victoria, 3053</h2>&#13;\n<h2>PH:  0416 224 799</h2>&#13;\n<h2>Email: <a href=\"mailto:info@vpcounselling.com\">info@vpcounselling.com</a></h2>',NULL,NULL,NULL,NULL,1,1,NULL,0,6,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(55,7,14,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 14:27:52','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/>What you can expect?</p>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(56,7,15,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 14:29:15','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(57,1,13,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 14:30:41','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"http://www.vpcounselling.com/assets/meditation-leaf.jpg\" width=\"450\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(58,1,14,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 16:33:45','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"assets/_resampled/resizedimage577308-meditation-leaf.jpg\" width=\"577\" height=\"308\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(59,1,15,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 16:34:48','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\"><img class=\"right\" src=\"assets/_resampled/resizedimage515275-meditation-leaf.jpg\" width=\"515\" height=\"275\" alt=\"\" title=\"\"/>My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma</li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(60,1,16,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 16:35:53','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage544289-meditation-leaf.jpg\" width=\"544\" height=\"289\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(61,1,17,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 16:38:57','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can begin to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(62,1,18,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-01 16:58:49','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle ‘non-judgemental’ enquiry we can start to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(63,7,16,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 17:03:57','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul><p>To make an appointment, you can give me a call directly or send me an email and I will get back to you.</p>&#13;\n<p>All my details are on the <a href=\"[sitetree_link id=3]\">Contact Us</a> page</p>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(64,7,17,1,2,2,'Page','2010-09-01 02:49:17','2010-09-01 17:05:57','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whist all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul><p>To make an appointment, you can give me a call directly or send me an email.</p>&#13;\n<p>All of my contact details are on the <a href=\"[sitetree_link id=3]\">Contact Us</a> page</p>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(65,1,19,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-02 17:15:52','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy equilibrium. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief,</li>&#13;\n<li>Sexuality,</li>&#13;\n<li>Sexual abuse,</li>&#13;\n<li>Relationship concerns,</li>&#13;\n<li>Depression,</li>&#13;\n<li>Anxiety,</li>&#13;\n<li>Self-image,</li>&#13;\n<li>Self-esteem,</li>&#13;\n<li>Addiction,</li>&#13;\n<li>Loneliness;</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle non-judgemental enquiry we can start to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(66,1,20,1,2,2,'HomePage','2010-08-21 03:12:31','2010-09-02 17:19:07','home','Home',NULL,'<p style=\"line-height: 1.5em; font-family: Verdana, Arial, sans-serif; margin-bottom: 20px; color: #333333; font-size: 1.5em;\">My philosophy centres around our natural ability to heal when there is balance created between the physical, emotional and environmental factors in our lives (homeostasis). Our body is designed<br/>to naturally seek out this healthy life balance. Homeostasis helps us combat the impact of what we come across in our daily lives to help keep us nourished both physically and mentally.<br/><br/>This process can be disrupted through experiences such as:</p>&#13;\n<ul><li>Trauma<img class=\"right\" src=\"assets/_resampled/resizedimage515274-meditation-leaf.jpg\" width=\"515\" height=\"274\" alt=\"\" title=\"\"/></li>&#13;\n<li>Loss &amp; grief</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Sexual abuse</li>&#13;\n<li>Relationship concerns</li>&#13;\n<li>Depression</li>&#13;\n<li>Anxiety</li>&#13;\n<li>Self-image</li>&#13;\n<li>Self-esteem</li>&#13;\n<li>Addiction</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Family conflict</li>&#13;\n</ul><p>These experiences can cause conflict within ourselves which we may no longer be able to cope with on our own.</p>&#13;\n<p>In my experience, engaging with a trained counsellor and acknowledging ‘out loud’ our issues, fears and concerns can offer welcomed relief from the heavy burden of having to ‘go it alone’ or that ‘nobody understands’.  Having permission to express yourself freely within the secure confines of a trusting counselling relationship can offer a renewed sense of hope, clarity and direction. </p>&#13;\n<p> My counselling practice can offer you a safe and calm space to explore the concerns you are experiencing.  Through a process of gentle non-judgemental enquiry we can start to understand how your own personal situation is affecting you. Together we can begin the journey of unlocking your inner awareness and developing a plan to help restore your body’s natural balance.</p>&#13;\n<p> When this type of awareness is experienced in the “here and now” of the counselling relationship, there can be an opening up to pathways of greater choice in life, and with choice comes the possibility of an increased sense of freedom and control.</p>&#13;\n<p> </p>&#13;\n<p><a href=\"[sitetree_link id=7]\">What you can expect?</a></p>&#13;\n<p> <a href=\"[sitetree_link id=3]\">Contact me</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(67,2,10,1,2,2,'Page','2010-08-21 03:12:31','2010-09-02 17:25:42','about-me','About Me',NULL,'<p><img class=\"right\" src=\"assets/vas2.jpg\" width=\"223\" height=\"279\" alt=\"\" title=\"\"/>My name is Vas Petrovski.<br/><br/>I work from a <a href=\"[sitetree_link id=6]\">Gestalt Therapy </a>framework. I have post graduate qualifications in counselling and also<br/>in Social Sciences specializing in Gestalt Therapy.<br/><br/>I have worked in a number of different welfare support settings over the last 10 years, these<br/>include:</p>&#13;\n<ul><li>Mental health</li>&#13;\n<li>Disabilities</li>&#13;\n<li>Schools</li>&#13;\n<li>Men’s Health</li>&#13;\n<li>The justice system</li>&#13;\n<li>Corrections</li>&#13;\n<li>Family Crisis/response Support Services</li>&#13;\n</ul><p>I also have vast experience and a special interest in strengthening families &amp; individual relationships<br/>during periods of crisis or breakdown and also with the trauma of sexual abuse/assault<br/><br/>Other areas I have extensive experience in, include:</p>&#13;\n<ul><li><img class=\"right\" src=\"assets/_resampled/resizedimage450297-trees.jpg\" width=\"450\" height=\"297\" alt=\"\" title=\"\"/>Relationship issues</li>&#13;\n<li>Sexuality</li>&#13;\n<li>Domestic violence/Family conflict</li>&#13;\n<li>Loneliness</li>&#13;\n<li>Addictive behaviors</li>&#13;\n<li>Illness, grief and loss</li>&#13;\n<li>Mental health issues e.g. stress, anxiety and depression</li>&#13;\n<li>Self-esteem, confidence and self image issues</li>&#13;\n<li>Crises/trauma support and referral</li>&#13;\n<li>Conflict resolution and communication skills</li>&#13;\n<li>Life transition and adjustment issues</li>&#13;\n<li>Homelessness &amp; Other Complex Needs</li>&#13;\n</ul><p>In addition I have also established a joint partnership between the Australian Federal Police and<br/>welfare support services which is the only type of program of its kind in Australia. It is aimed<br/>at providing early intervention &amp; support for families of offenders during the traumatic warrant/arrest process.</p>&#13;\n<p>I’ve have worked with families from some of the most marginalised backgrounds in our community. I have offered these<br/>families crisis/trauma counselling for over 10 years.<br/><br/>I am also interested in the journey of self discovery and have worked with clients in long term<br/>psychotherapy assisting them in their process of learning more about themselves.</p>','About Me',NULL,NULL,NULL,1,1,NULL,0,5,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0),(68,7,18,1,2,2,'Page','2010-09-01 02:49:17','2010-09-07 18:24:38','what-is-counselling','What Is Counselling',NULL,'<p><img class=\"right\" src=\"assets/_resampled/resizedimage450337-Green-Lilies-Wallpaper-green-3844894-1024-768.jpg\" width=\"450\" height=\"337\" alt=\"\" title=\"\"/>Counselling is the opportunity to engage with a professionally trained counsellor who can<br/>offer support and the chance to gain a greater understanding of your issues. In counselling,<br/>the relationship between you and I is an essential part of the process.<br/><br/>As trust is built up, I will encourage you to explore areas of your life;<br/>your relationships with yourself and others. Bottled-up feelings such as, anxiety, grief and<br/>embarrassment can become very intense. I will safely encourage the expression<br/>of these feelings, thus making them easier for you to understand.<br/><br/>I will work with you to discover options and help you to expand and focus<br/>on whichever option you choose. I may guide you to be aware in detail of<br/>the situations or behaviours which are of concern, and to find small openings where it would be<br/>possible to initiate some change as a start.<br/><br/></p>&#13;\n<p>What you can expect?</p>&#13;\n<p>Whilst all counselling is tailored to suit your individual needs as the client, below are some of the<br/>main steps in the counselling process:</p>&#13;\n<ul><li>To help clarify the presenting issues</li>&#13;\n<li>To identify what you want to achieve through counselling</li>&#13;\n<li>To build awareness and assist in identifying the options available to you</li>&#13;\n<li>To develop ways of moving towards effective change</li>&#13;\n</ul><p>To make an appointment, you can give me a call directly or send me an email.</p>&#13;\n<p>All of my contact details are on the <a href=\"[sitetree_link id=3]\">Contact Us</a> page</p>','About Counselling',NULL,NULL,NULL,0,1,NULL,0,2,0,0,'Saved (update)',NULL,'Inherit','Inherit',NULL,'1.0',0);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage_versions`
--

LOCK TABLES `VirtualPage_versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Widget`
--

DROP TABLE IF EXISTS `Widget`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Widget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Widget') DEFAULT 'Widget',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Widget`
--

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `Widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WidgetArea`
--

DROP TABLE IF EXISTS `WidgetArea`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `WidgetArea` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('WidgetArea') DEFAULT 'WidgetArea',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `WidgetArea`
--

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-21 22:46:54
