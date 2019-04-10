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
  `linkUser` char(10) NOT NULL,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPage`,`idText`,`language`,`linkUser`),
  KEY `FK_content_language` (`language`),
  CONSTRAINT `FK_content_language` FOREIGN KEY (`language`) REFERENCES `language` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_content_page` FOREIGN KEY (`idPage`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.content: ~85 rows (circa)
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` (`idPage`, `idText`, `language`, `linkUser`, `text`) VALUES
	(1, 0, 'ENG', '', 'Invalid Format'),
	(1, 0, 'ENG', 'FaSW3lowMe', 'Invalid Format'),
	(1, 0, 'ITA', '', 'Formato non valido'),
	(1, 0, 'ITA', 'FaSW3lowMe', 'Formato non valido'),
	(1, 1, 'ENG', '', 'Log in'),
	(1, 1, 'ENG', 'FaSW3lowMe', 'Log in'),
	(1, 1, 'ITA', '', 'Log in'),
	(1, 1, 'ITA', 'FaSW3lowMe', 'Log in'),
	(1, 2, 'ENG', '', 'First Name'),
	(1, 2, 'ENG', 'FaSW3lowMe', 'First Name'),
	(1, 2, 'ITA', '', 'Nome'),
	(1, 2, 'ITA', 'FaSW3lowMe', 'Nome'),
	(1, 3, 'ENG', '', 'Last Name'),
	(1, 3, 'ENG', 'FaSW3lowMe', 'Last Name'),
	(1, 3, 'ITA', '', 'Cognome'),
	(1, 3, 'ITA', 'FaSW3lowMe', 'Cognome'),
	(1, 4, 'ENG', '', 'Birth Date'),
	(1, 4, 'ENG', 'FaSW3lowMe', 'Birth Date'),
	(1, 4, 'ITA', '', 'Data di Nascita'),
	(1, 4, 'ITA', 'FaSW3lowMe', 'Data di Nascita'),
	(1, 5, 'ENG', '', 'Password'),
	(1, 5, 'ENG', 'FaSW3lowMe', 'Password'),
	(1, 5, 'ITA', '', 'Password'),
	(1, 5, 'ITA', 'FaSW3lowMe', 'Password'),
	(1, 6, 'ENG', '', 'Remember Me'),
	(1, 6, 'ENG', 'FaSW3lowMe', 'Remember Me'),
	(1, 6, 'ITA', '', 'Ricordami'),
	(1, 6, 'ITA', 'FaSW3lowMe', 'Ricordami'),
	(1, 7, 'ENG', '', 'Forgot the password?'),
	(1, 7, 'ENG', 'FaSW3lowMe', 'Forgot the password?'),
	(1, 7, 'ITA', '', 'Dimenticata la password?'),
	(1, 7, 'ITA', 'FaSW3lowMe', 'Dimenticata la password?'),
	(1, 8, 'ENG', '', 'Recover it here!'),
	(1, 8, 'ENG', 'FaSW3lowMe', 'Recover it here!'),
	(1, 8, 'ITA', '', 'Recuperala qui!'),
	(1, 8, 'ITA', 'FaSW3lowMe', 'Recuperala qui!'),
	(1, 9, 'ENG', '', 'Don\'t you have an account?'),
	(1, 9, 'ENG', 'FaSW3lowMe', 'Don\'t you have an account?'),
	(1, 9, 'ITA', '', 'Non hai un account?'),
	(1, 9, 'ITA', 'FaSW3lowMe', 'Non hai un account?'),
	(1, 10, 'ENG', '', 'Register'),
	(1, 10, 'ENG', 'FaSW3lowMe', 'Register'),
	(1, 10, 'ITA', '', 'Register'),
	(1, 10, 'ITA', 'FaSW3lowMe', 'Register'),
	(1, 11, 'ENG', '', 'REGISTER FORM'),
	(1, 11, 'ENG', 'FaSW3lowMe', 'REGISTER FORM'),
	(1, 11, 'ITA', '', 'Registrati'),
	(1, 11, 'ITA', 'FaSW3lowMe', 'Registrati'),
	(1, 12, 'ENG', '', 'First Name'),
	(1, 12, 'ENG', 'FaSW3lowMe', 'First Name'),
	(1, 12, 'ITA', '', 'Nome'),
	(1, 12, 'ITA', 'FaSW3lowMe', 'Nome'),
	(1, 13, 'ENG', '', 'Last Name'),
	(1, 13, 'ENG', 'FaSW3lowMe', 'Last Name'),
	(1, 13, 'ITA', '', 'Cognome'),
	(1, 13, 'ITA', 'FaSW3lowMe', 'Cognome'),
	(1, 14, 'ENG', '', 'Birth Date'),
	(1, 14, 'ENG', 'FaSW3lowMe', 'Birth Date'),
	(1, 14, 'ITA', '', 'Data di Nascita'),
	(1, 14, 'ITA', 'FaSW3lowMe', 'Data di Nascita'),
	(1, 15, 'ENG', '', 'Email'),
	(1, 15, 'ENG', 'FaSW3lowMe', 'Email'),
	(1, 15, 'ITA', '', 'Email'),
	(1, 15, 'ITA', 'FaSW3lowMe', 'Email'),
	(1, 16, 'ENG', '', 'Password'),
	(1, 16, 'ENG', 'FaSW3lowMe', 'Password'),
	(1, 16, 'ITA', '', 'Password'),
	(1, 16, 'ITA', 'FaSW3lowMe', 'Password'),
	(1, 17, 'ENG', '', 'Confirm Password'),
	(1, 17, 'ENG', 'FaSW3lowMe', 'Confirm Password'),
	(1, 17, 'ITA', '', 'Conferma Password'),
	(1, 17, 'ITA', 'FaSW3lowMe', 'Conferma Password'),
	(1, 18, 'ENG', '', 'p7'),
	(1, 18, 'ENG', 'FaSW3lowMe', 'p7'),
	(1, 18, 'ITA', '', 'p7'),
	(1, 18, 'ITA', 'FaSW3lowMe', 'p7'),
	(1, 19, 'ENG', '', 'Have you already an account?'),
	(1, 19, 'ENG', 'FaSW3lowMe', 'Have you already an account?'),
	(1, 19, 'ITA', '', 'Hai già un account?'),
	(1, 19, 'ITA', 'FaSW3lowMe', 'Hai già un account?'),
	(1, 20, 'ENG', '', 'Log in'),
	(1, 20, 'ENG', 'FaSW3lowMe', 'Log in'),
	(1, 20, 'ITA', '', 'Log in'),
	(1, 20, 'ITA', 'FaSW3lowMe', 'Log in'),
	(1, 21, 'ENG', '', 'p10');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.event
CREATE TABLE IF NOT EXISTS `event` (
  `name` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`name`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.event: ~2 rows (circa)
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` (`name`, `year`) VALUES
	('fsy', 2018),
	('FSY', 2019);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.language
CREATE TABLE IF NOT EXISTS `language` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.language: ~4 rows (circa)
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`name`) VALUES
	('DEU'),
	('ENG'),
	('FRA'),
	('ITA');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.page
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `contentCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.page: ~2 rows (circa)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`id`, `title`, `contentCount`) VALUES
	(1, 'login', 21),
	(2, 'home', NULL);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.parameter
CREATE TABLE IF NOT EXISTS `parameter` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.parameter: ~14 rows (circa)
/*!40000 ALTER TABLE `parameter` DISABLE KEYS */;
INSERT INTO `parameter` (`number`, `name`) VALUES
	(1, 'name'),
	(2, 'surname'),
	(3, 'birthdate'),
	(4, 'email'),
	(5, 'gender'),
	(6, 'address'),
	(7, 'city'),
	(8, 'postalCode'),
	(9, 'phone'),
	(10, 'mobilePhone'),
	(11, 'userType'),
	(12, '_fvd'),
	(14, '_cfed'),
	(15, '_pippo');
/*!40000 ALTER TABLE `parameter` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.persistent_logins
CREATE TABLE IF NOT EXISTS `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.persistent_logins: ~2 rows (circa)
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
INSERT INTO `persistent_logins` (`username`, `series`, `token`, `last_used`) VALUES
	('e.f.1983-09-13', 'i85fKbF6CpSlGvqQ7yNb4Q==', 'ucREfbue4zvvdM5kqs2vYQ==', '2019-04-03 11:17:29'),
	('e.f.1983-09-13', 'M9PFJpT21zKhnhb6od2fGQ==', 'qZ0wzsYkjK+TGKb/Q5g6ew==', '2019-04-06 15:46:38');
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.phase
CREATE TABLE IF NOT EXISTS `phase` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.phase: ~6 rows (circa)
/*!40000 ALTER TABLE `phase` DISABLE KEYS */;
INSERT INTO `phase` (`number`, `name`) VALUES
	(1, 'registered'),
	(2, 'check'),
	(3, 'checked'),
	(4, 'docDo'),
	(5, 'docUp'),
	(6, 'verified');
/*!40000 ALTER TABLE `phase` ENABLE KEYS */;

-- Dump della struttura di tabella fsy.subscription
CREATE TABLE IF NOT EXISTS `subscription` (
  `userId` varchar(150) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventYear` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL DEFAULT 'p',
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobilePhone` varchar(50) NOT NULL,
  `pdfFile` blob,
  `phase` int(11) DEFAULT NULL,
  `_cfed` varchar(250) DEFAULT NULL,
  `_pippo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`eventName`,`eventYear`,`userId`),
  KEY `FK_subscription_user` (`userId`),
  CONSTRAINT `FK_subscription_event` FOREIGN KEY (`eventName`, `eventYear`) REFERENCES `event` (`name`, `year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscription_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.subscription: ~4 rows (circa)
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` (`userId`, `eventName`, `eventYear`, `userType`, `address`, `city`, `postalCode`, `phone`, `mobilePhone`, `pdfFile`, `phase`, `_cfed`, `_pippo`) VALUES
	('e.f.1983-09-13', 'fsy', 2018, 'c', 'Via Stazione13, 3 Piano', 'Balerna', '6828', '0768015650', '0768015650', _binary 0x3232, NULL, NULL, NULL),
	('e.f.1999-02-20', 'fsy', 2018, 'p', 'Via nan', 'Netti', '122', '+41 91 2', '+41 79 2', NULL, NULL, NULL, NULL),
	('e.f.1983-09-13', 'FSY', 2019, 'a', 'Via Negozi', 'Serfontana', '6835', '+41768015650', '+412', _binary 0x3200, NULL, NULL, NULL),
	('e.f.1999-02-20', 'fsy', 2019, 'p', 'Via prova', 'Test', '21', '+41 91', '+41 79', NULL, NULL, NULL, NULL);
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
  `link` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella fsy.user: ~6 rows (circa)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `surname`, `birthDate`, `email`, `password`, `gender`, `enabled`, `role`, `link`) VALUES
	('a.b.1972-02-09', 'a', 'b', '1972-02-09', 'fem@gmail.com', '$2a$10$xJf5pa1lES9JcUKIHGxBIOtdD1thotNrzMHveHU8P260zTBJ.EFcO', 0, 1, 'ROLE_USER', ''),
	('a.b.2005-01-28', 'N', 'Ny', '2005-01-28', 'email@N.ch', '$2a$10$C6INM3XwqQrih/Txm5h/XusZTFfzNfR5ibBlGV.QQIgCLu3.9LM32', 1, 1, 'ROLE_USER', 'FaSW3lowMq'),
	('dyuman.bulloni.1999-12-21', 'Dyuman', 'Bulloni', '1999-12-21', 'dyuman.bulloni@samtrevano.ch', '$2a$10$bDyDuIF4hV5tIBCxGe9sieFEpy1QUFKRUBY0QakDA6Y3qVc78aMw.', 1, 1, 'ROLE_ADMIN', ''),
	('e.f.1983-09-13', 'e', 'f', '1983-09-13', 'dyuman@gmail.com', '$2a$10$WuEoK3OAwZbkv0YhvgCeyuEoI09JBzf8PhpbAeMa8buaKvo87tVCq', 1, 1, 'ROLE_ADMIN', 'FaSW3lowMe'),
	('e.f.1999-02-20', 'e', 'f', '1999-02-20', 'ds@gmai.com', '$2a$10$VhD7FWF6oLlaThV7wDvJne69y4z2sTzNGWejRFQW1oclHtOvTYL4i', 0, 0, 'ROLE_USER', 'FaSW3lowMw'),
	('f.e.2019-03-05', 'f', 'e', '2019-03-05', 'fds@fds.ch', '$2a$10$.E9ygYXGyPNSOoK7wAESkOOR8Q/0I.ymgBLW/octsjk4B2kkTiPwm', 0, 1, 'ROLE_USER', 'AxTryHXTls');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
