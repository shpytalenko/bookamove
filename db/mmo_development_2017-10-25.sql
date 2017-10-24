# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.16)
# Database: mmo_development
# Generation Time: 2017-10-24 22:48:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_level` int(11) DEFAULT '1',
  `calendar_staff_group_id` int(11) DEFAULT NULL,
  `mailbox` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `default` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_account_id_fk` (`account_id`),
  CONSTRAINT `roles_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `account_id`, `name`, `description`, `role_level`, `calendar_staff_group_id`, `mailbox`, `active`, `default`, `created_at`, `updated_at`)
VALUES
	(1,1,'Admin role','Admin Role',1,NULL,1,1,0,'2015-09-22 20:53:46','2015-09-22 20:53:46'),
	(2,2,'Reception','Greeting , lead retention and customer service.',60,1,1,1,1,'2015-09-22 20:53:46','2017-10-20 20:05:09'),
	(4,2,'Mover','Limited information access',20,NULL,1,1,1,'2015-09-23 21:19:52','2017-10-20 19:46:45'),
	(5,2,'Swamper','Swamper',25,NULL,0,1,1,'2015-09-23 21:20:16','2017-09-15 18:56:28'),
	(6,2,'Customer','Customer',1,NULL,0,1,1,'2015-09-23 21:20:42','2017-09-15 18:57:28'),
	(7,2,'Owner Operator','Permanent access to MY MOVES',30,6,0,1,1,'2015-09-23 21:32:13','2017-10-20 19:48:53'),
	(8,2,'Referral Source','My Moves access',5,2,0,1,1,'2015-09-23 21:33:27','2017-10-20 19:46:00'),
	(9,2,'Operations','Full control of calendars, moves, trucks and moving staff .',70,NULL,1,1,1,'2015-09-23 21:35:36','2017-10-20 20:05:31'),
	(11,2,'Sales','Everything until move is BOOKED',50,2,1,1,1,'2015-09-23 21:36:04','2017-10-20 19:49:25'),
	(12,2,'Sales Manager','Sales plus performance reporting',55,NULL,0,1,1,'2015-09-23 21:36:16','2017-10-20 19:50:13'),
	(13,2,'Admin','Full access except no power to delete Move Records ,edit Company profile , view Owner profile and Owner level Reports or assign Owner Role level',90,NULL,1,1,1,'2015-09-29 20:17:51','2017-10-18 19:03:33'),
	(14,2,'Accounting','Operations plus daily posting of incoming cash , credit cards and invoices.',75,NULL,1,1,1,'2015-09-29 20:18:06','2017-10-20 20:07:06'),
	(15,2,'Accounting Manager ','Includes access to Wages,Shares settings, Posted moves and higher level reports about payroll ,taxes, revenue.',85,NULL,0,1,1,'2015-09-29 20:18:32','2017-10-20 20:08:54'),
	(16,2,'Owner','Owner',100,1,1,1,1,'2015-09-29 21:07:38','2017-09-11 22:31:30'),
	(17,2,'Driver','Full details about move',25,NULL,1,1,1,'2017-10-20 19:47:57','2017-10-20 19:47:57'),
	(18,2,'Operations Manager','Includes control of Mover, Driver, Truck profiles and reports.',80,NULL,1,1,1,'2017-10-20 20:08:03','2017-10-20 20:08:03');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
