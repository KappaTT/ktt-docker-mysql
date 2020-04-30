# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: us-cdbr-iron-east-04.cleardb.net (MySQL 5.5.56-log)
# Database: heroku_f7289be5b8febee
# Generation Time: 2020-04-05 16:42:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table attendance
# ------------------------------------------------------------

CREATE TABLE `attendance` (
  `event_id` varchar(36) NOT NULL DEFAULT '',
  `netid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`event_id`,`netid`),
  CONSTRAINT `attendance_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table event
# ------------------------------------------------------------

CREATE TABLE `event` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `creator` varchar(16) NOT NULL DEFAULT '',
  `event_type` varchar(32) DEFAULT NULL,
  `event_code` varchar(4) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `excusable` tinyint(1) DEFAULT NULL,
  `title` varchar(32) DEFAULT '',
  `description` varchar(256) DEFAULT '',
  `start` varchar(32) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table excuse
# ------------------------------------------------------------

CREATE TABLE `excuse` (
  `event_id` varchar(36) NOT NULL DEFAULT '',
  `netid` varchar(16) NOT NULL DEFAULT '',
  `reason` varchar(128) NOT NULL DEFAULT '',
  `late` tinyint(1) DEFAULT '0',
  `approved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`event_id`,`netid`),
  CONSTRAINT `excuse_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table point
# ------------------------------------------------------------

CREATE TABLE `point` (
  `event_id` varchar(36) NOT NULL DEFAULT '',
  `category` varchar(16) NOT NULL DEFAULT '',
  `count` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`category`),
  CONSTRAINT `point_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
