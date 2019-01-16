-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.1.22-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win32
-- HeidiSQL Versione:            9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database fsy
CREATE DATABASE IF NOT EXISTS `fsy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fsy`;

-- Dump della struttura di tabella fsy.content
CREATE TABLE IF NOT EXISTS `content` (
  `idPage` int(11) NOT NULL,
  `idText` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPage`,`idText`,`language`),
  KEY `FK_content_language` (`language`),
  CONSTRAINT `FK_content_language` FOREIGN KEY (`language`) REFERENCES `language` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_content_page` FOREIGN KEY (`idPage`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella fsy.event
CREATE TABLE IF NOT EXISTS `event` (
  `name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`name`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella fsy.language
CREATE TABLE IF NOT EXISTS `language` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella fsy.page
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `orderElement` int(11) NOT NULL,
  `element` varchar(50) NOT NULL,
  PRIMARY KEY (`id`,`orderElement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella fsy.subscription
CREATE TABLE IF NOT EXISTS `subscription` (
  `userName` varchar(50) NOT NULL,
  `userSurname` varchar(50) NOT NULL,
  `userBirthDate` date NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventYear` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobilePhone` varchar(50) NOT NULL,
  PRIMARY KEY (`userName`,`userSurname`,`userBirthDate`,`eventName`,`eventYear`),
  KEY `FK_subscription_event` (`eventName`,`eventYear`),
  CONSTRAINT `FK_subscription_event` FOREIGN KEY (`eventName`, `eventYear`) REFERENCES `event` (`name`, `year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscription_user` FOREIGN KEY (`userName`, `userSurname`, `userBirthDate`) REFERENCES `user` (`name`, `surname`, `birthDate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella fsy.user
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`name`,`surname`,`birthDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
