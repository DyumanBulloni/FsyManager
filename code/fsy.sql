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

-- Dump dei dati della tabella fsy.content: ~0 rows (circa)
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
/*!40000 ALTER TABLE `content` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.event
CREATE TABLE IF NOT EXISTS `event` (
  `name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`name`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.event: ~0 rows (circa)
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.language
CREATE TABLE IF NOT EXISTS `language` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.language: ~0 rows (circa)
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.page
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.page: ~0 rows (circa)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.subscription
CREATE TABLE IF NOT EXISTS `subscription` (
  `userId` varchar(150) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventYear` int(11) NOT NULL,
  `userType` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobilePhone` varchar(50) NOT NULL,
  PRIMARY KEY (`eventName`,`eventYear`,`userId`),
  KEY `FK_subscription_user` (`userId`),
  CONSTRAINT `FK_subscription_event` FOREIGN KEY (`eventName`, `eventYear`) REFERENCES `event` (`name`, `year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscription_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.subscription: ~0 rows (circa)
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(150) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(50) NOT NULL DEFAULT 'ROLE_USER',
  `link` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.user: ~6 rows (circa)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `surname`, `birthDate`, `email`, `password`, `gender`, `enabled`, `role`, `link`) VALUES
	('a.b.1972-02-09', 'a', 'b', '1972-02-09', 'fem@gmail.com', '$2a$10$xJf5pa1lES9JcUKIHGxBIOtdD1thotNrzMHveHU8P260zTBJ.EFcO', 0, 1, 'ROLE_USER', ''),
	('a.b.2005-01-29', 'a', 'b', '2005-01-29', 'test@test.ch', '$2a$10$C6INM3XwqQrih/Txm5h/XusZTFfzNfR5ibBlGV.QQIgCLu3.9LM32', 0, 1, 'ROLE_USER', NULL),
	('dyuman.bulloni.1999-12-21', 'Dyuman', 'Bulloni', '1999-12-21', 'dyuman.bulloni@samtrevano.ch', '$2a$10$bDyDuIF4hV5tIBCxGe9sieFEpy1QUFKRUBY0QakDA6Y3qVc78aMw.', 1, 1, 'ROLE_ADMIN', NULL),
	('e.f.1983-09-13', 'e', 'f', '1983-09-13', 'dyuman@gmail.com', '$2a$10$WuEoK3OAwZbkv0YhvgCeyuEoI09JBzf8PhpbAeMa8buaKvo87tVCq', 0, 1, 'ROLE_USER', NULL),
	('e.f.2019-02-20', 'e', 'f', '2019-02-20', 'ds@gmai.com', '$2a$10$VhD7FWF6oLlaThV7wDvJne69y4z2sTzNGWejRFQW1oclHtOvTYL4i', 0, 0, 'ROLE_USER', 'FaSW3lowMw');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
