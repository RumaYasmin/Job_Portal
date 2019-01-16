-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema prime
--

CREATE DATABASE IF NOT EXISTS prime;
USE prime;

--
-- Definition of table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(10) unsigned NOT NULL auto_increment,
  `city_id` int(10) unsigned NOT NULL,
  `area_name` varchar(45) NOT NULL,
  `area_status` varchar(45) NOT NULL,
  PRIMARY KEY  (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` (`area_id`,`city_id`,`area_name`,`area_status`) VALUES 
 (1,0,'Kakrile','ok'),
 (4,2,'framgate','ok'),
 (101,2,'Mirpur','ok');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `city_name` varchar(45) NOT NULL,
  `city_status` varchar(45) NOT NULL,
  PRIMARY KEY  (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`city_id`,`state_id`,`city_name`,`city_status`) VALUES 
 (0,1,'Dhaka','ok'),
 (2,2,'Dhaka','ok');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `companycategory`
--

DROP TABLE IF EXISTS `companycategory`;
CREATE TABLE `companycategory` (
  `comcatid` varchar(255) NOT NULL,
  `comcatname` varchar(45) NOT NULL,
  `comcatstatus` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`comcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companycategory`
--

/*!40000 ALTER TABLE `companycategory` DISABLE KEYS */;
INSERT INTO `companycategory` (`comcatid`,`comcatname`,`comcatstatus`) VALUES 
 ('101','Corporate','Corporate Office'),
 ('122','fgfh','ghgjkhkj');
/*!40000 ALTER TABLE `companycategory` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `counid` varchar(255) NOT NULL,
  `counname` varchar(45) NOT NULL,
  `councode` varchar(45) NOT NULL,
  `counstatus` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`counid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`counid`,`counname`,`councode`,`counstatus`) VALUES 
 ('101','Bangladesh','088','Independent');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `educationalinfo`
--

DROP TABLE IF EXISTS `educationalinfo`;
CREATE TABLE `educationalinfo` (
  `eduid` int(10) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `edulavel` varchar(45) NOT NULL,
  `edutitle` varchar(45) NOT NULL,
  `institutename` varchar(45) NOT NULL,
  `majorgroup` varchar(45) NOT NULL,
  `passingyear` date NOT NULL,
  `result` varchar(45) NOT NULL,
  `bordun` varchar(45) NOT NULL,
  PRIMARY KEY  (`eduid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educationalinfo`
--

/*!40000 ALTER TABLE `educationalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `educationalinfo` ENABLE KEYS */;


--
-- Definition of table `emphistory`
--

DROP TABLE IF EXISTS `emphistory`;
CREATE TABLE `emphistory` (
  `emphisid` int(11) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `comcatid` varchar(45) NOT NULL,
  `comcatname` varchar(45) NOT NULL,
  `comlocation` varchar(45) NOT NULL,
  `comdptname` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `respons` varchar(45) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  PRIMARY KEY  (`emphisid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emphistory`
--

/*!40000 ALTER TABLE `emphistory` DISABLE KEYS */;
INSERT INTO `emphistory` (`emphisid`,`emailid`,`comcatid`,`comcatname`,`comlocation`,`comdptname`,`position`,`respons`,`fromdate`,`todate`) VALUES 
 (1,'','','erf','asf','asfd','asdf','asfd','2018-12-14','2018-12-21');
/*!40000 ALTER TABLE `emphistory` ENABLE KEYS */;


--
-- Definition of table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `empid` int(10) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `comcatid` varchar(45) NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `comname` varchar(45) NOT NULL,
  `contperson` varchar(45) NOT NULL,
  `contemail` varchar(45) NOT NULL,
  `comwebsite` varchar(45) NOT NULL,
  `comdetails` varchar(45) NOT NULL,
  `comphone` varchar(45) NOT NULL,
  `comfax` varchar(45) NOT NULL,
  `comstatus` varchar(45) NOT NULL,
  PRIMARY KEY  (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` (`empid`,`emailid`,`comcatid`,`area_id`,`comname`,`contperson`,`contemail`,`comwebsite`,`comdetails`,`comphone`,`comfax`,`comstatus`) VALUES 
 (1,'','101',4,'e','d','d','c','x',' d',' w','w');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;


--
-- Definition of table `jobcategory`
--

DROP TABLE IF EXISTS `jobcategory`;
CREATE TABLE `jobcategory` (
  `jobcatid` varchar(45) NOT NULL,
  `jobcatname` varchar(45) NOT NULL,
  `jobcatstatus` varchar(45) NOT NULL,
  PRIMARY KEY  (`jobcatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobcategory`
--

/*!40000 ALTER TABLE `jobcategory` DISABLE KEYS */;
INSERT INTO `jobcategory` (`jobcatid`,`jobcatname`,`jobcatstatus`) VALUES 
 ('011','Corporate','Corporate Office');
/*!40000 ALTER TABLE `jobcategory` ENABLE KEYS */;


--
-- Definition of table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
CREATE TABLE `jobpost` (
  `jobpostid` int(11) unsigned NOT NULL auto_increment,
  `empid` int(11) unsigned NOT NULL,
  `jobcatid` varchar(45) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `joblocation` varchar(45) NOT NULL,
  `numofvacancy` varchar(45) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` varchar(45) NOT NULL,
  `skillreq` varchar(255) NOT NULL,
  `edureq` varchar(255) NOT NULL,
  `basicreqm` varchar(255) NOT NULL,
  `salaryrng` varchar(255) NOT NULL,
  `jobnature` varchar(255) NOT NULL,
  `experencereq` varchar(255) NOT NULL,
  `jobpoststatus` varchar(255) NOT NULL,
  `otherbenifit` varchar(255) NOT NULL,
  `useremail` varchar(45) NOT NULL,
  PRIMARY KEY  (`jobpostid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpost`
--

/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
INSERT INTO `jobpost` (`jobpostid`,`empid`,`jobcatid`,`jobtitle`,`joblocation`,`numofvacancy`,`startdate`,`enddate`,`skillreq`,`edureq`,`basicreqm`,`salaryrng`,`jobnature`,`experencereq`,`jobpoststatus`,`otherbenifit`,`useremail`) VALUES 
 (1,1,'011','x','x','c','2018-11-28','  r','r','r','r','r','r','r','r','r','r');
/*!40000 ALTER TABLE `jobpost` ENABLE KEYS */;


--
-- Definition of table `personalinfo`
--

DROP TABLE IF EXISTS `personalinfo`;
CREATE TABLE `personalinfo` (
  `persinfoid` int(11) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `fathername` varchar(45) NOT NULL,
  `mothername` varchar(45) NOT NULL,
  `dofbirth` date NOT NULL,
  `presaddress` varchar(45) NOT NULL,
  `permaddress` varchar(45) NOT NULL,
  `meritialstatus` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  PRIMARY KEY  (`persinfoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

/*!40000 ALTER TABLE `personalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `personalinfo` ENABLE KEYS */;


--
-- Definition of table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `skillid` int(10) unsigned NOT NULL auto_increment,
  `emailid` varchar(45) NOT NULL,
  `skillname` varchar(45) NOT NULL,
  PRIMARY KEY  (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `state_id` int(10) unsigned NOT NULL,
  `counid` varchar(45) NOT NULL,
  `state_name` varchar(45) NOT NULL,
  `state_code` varchar(45) NOT NULL,
  PRIMARY KEY  (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`state_id`,`counid`,`state_name`,`state_code`) VALUES 
 (2,'101','Pabna','45');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`) VALUES 
 ('abc@gmail.com','1458756','rumana'),
 ('ruma@gmail.com','+88012458','ruma');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`role`,`status`) VALUES 
 ('abc@gmail.com','123','ROLE_USER','True'),
 ('ruma@gmail.com','456','ROLE_USER','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
