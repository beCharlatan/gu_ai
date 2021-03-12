-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 192.168.88.230    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Группы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'dolores','1993-01-08 00:09:39','1990-11-05 19:54:31'),(2,'id','1990-10-17 04:27:56','1985-06-09 10:19:58'),(3,'aut','2018-11-25 21:25:43','2020-04-06 16:18:27'),(4,'consequuntur','1990-03-12 02:35:39','2017-01-03 06:10:49'),(5,'et','1971-09-06 20:39:10','1997-12-17 10:21:17'),(6,'ea','1986-04-10 22:22:51','1976-06-04 11:24:19'),(7,'odio','2007-05-15 17:46:48','1993-10-24 19:52:35'),(8,'voluptas','1991-02-07 13:01:47','2012-04-14 23:26:50'),(9,'at','1971-04-11 19:26:57','1974-10-27 15:41:15'),(10,'impedit','1981-05-18 13:01:47','1977-09-20 19:05:13'),(11,'delectus','2015-03-11 19:07:48','1986-08-13 02:23:13'),(12,'iste','1979-03-02 03:18:24','2018-07-31 01:58:11'),(13,'pariatur','1978-05-19 00:19:36','2005-09-01 05:53:58'),(14,'voluptatibus','1988-06-01 00:37:28','2020-10-27 12:00:54'),(15,'qui','2001-08-20 09:39:19','2001-01-10 03:39:10'),(16,'occaecati','2004-07-09 20:37:05','1981-03-02 14:55:07'),(17,'labore','1978-05-20 00:15:12','1975-12-31 21:54:26'),(18,'repudiandae','2008-05-13 03:34:46','1999-08-15 06:54:12'),(19,'sed','1997-05-06 04:14:54','2002-04-24 11:51:40'),(20,'voluptatem','1973-04-18 15:17:05','1982-04-18 03:08:19'),(21,'eveniet','2011-12-20 05:15:34','1987-06-19 02:21:49'),(22,'praesentium','2020-05-12 22:13:43','1987-02-15 02:12:45'),(23,'libero','2020-02-11 10:20:50','1987-10-10 02:52:26'),(24,'necessitatibus','1975-07-22 17:10:14','1987-02-11 17:19:33'),(25,'non','2018-09-23 17:31:17','1970-05-06 21:53:46'),(26,'ad','1980-03-31 08:44:32','2012-08-19 22:33:36'),(27,'temporibus','2020-01-04 14:48:43','1979-10-21 08:02:00'),(28,'iusto','1995-04-08 13:29:11','1985-01-28 02:32:17'),(29,'ipsam','1970-05-07 17:08:07','1977-05-15 13:12:27'),(30,'doloremque','1974-10-11 14:03:34','1972-01-06 20:42:56'),(31,'quaerat','2014-04-02 05:40:30','1996-04-22 16:07:35'),(32,'assumenda','1989-06-02 13:04:24','2000-05-09 16:29:01'),(33,'est','2006-05-03 19:07:52','2005-05-25 16:59:29'),(34,'velit','1989-09-16 19:50:34','2000-04-07 10:34:30'),(35,'blanditiis','1988-06-30 00:21:14','2010-10-07 02:08:05'),(36,'quidem','1980-09-18 05:22:56','1972-08-27 07:03:13'),(37,'minima','2003-03-17 04:56:56','1985-05-09 22:41:30'),(38,'voluptatum','1991-07-07 09:46:51','1979-06-24 06:30:30'),(39,'sint','1997-05-07 21:19:19','1970-03-10 05:23:23'),(40,'distinctio','2006-07-20 14:43:09','1980-04-27 09:48:19'),(41,'deserunt','2008-01-31 13:55:01','2017-10-23 15:00:51'),(42,'mollitia','2007-01-02 16:13:37','1987-03-20 06:54:44'),(43,'officia','1984-07-28 17:43:46','1992-01-11 10:54:51'),(44,'quia','1997-03-06 07:22:38','1990-12-24 03:25:29'),(45,'alias','1995-04-27 17:13:01','2020-04-30 02:49:58'),(46,'cumque','2017-08-12 11:36:12','1989-12-25 03:27:19'),(47,'in','1983-08-13 16:49:24','1987-05-01 09:32:02'),(48,'harum','1974-05-18 15:16:01','1984-08-25 09:14:18'),(49,'eos','1997-07-06 20:36:21','1971-10-08 14:11:36'),(50,'commodi','1989-11-15 16:22:48','2020-12-26 04:20:03');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Участники групп, связь между пользователями и группами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (0,144370,'1971-02-01 06:13:16'),(1,6873,'2008-07-29 16:50:55'),(3,1531128,'2011-04-27 05:32:16'),(8,29,'2013-06-30 19:06:23'),(14,33968,'2019-04-14 15:19:39'),(20,5,'1984-06-16 12:43:59'),(41,90,'2020-01-21 22:51:16'),(44,412,'1991-10-02 14:24:06'),(47,68239679,'2001-09-17 00:04:15'),(74,279674608,'2019-08-01 20:03:09'),(130,915,'1992-10-06 21:26:13'),(179,538436,'1998-12-30 11:02:52'),(343,605952695,'2012-05-08 06:35:42'),(391,920334,'1970-11-14 13:38:34'),(573,382960258,'1970-12-05 19:02:23'),(634,82798745,'1985-08-05 13:12:35'),(640,810356,'1999-10-02 00:58:35'),(984,5217,'2009-02-02 11:16:00'),(4479,5919,'2001-12-12 00:53:50'),(6471,967262190,'1981-08-21 03:36:50'),(7314,5324,'1984-05-30 21:41:41'),(8859,995269,'1977-08-20 09:34:13'),(17332,8441,'2003-09-11 07:28:50'),(36298,39606,'1978-06-02 19:10:52'),(46102,82622435,'2014-11-26 01:13:14'),(51491,979442,'1977-10-03 05:51:34'),(84392,561207537,'2001-07-07 12:56:16'),(166778,17,'1979-02-23 22:55:51'),(212964,15,'2007-05-16 16:59:24'),(248357,9221720,'2006-01-24 14:33:56'),(283256,4496,'1974-09-20 23:41:16'),(306957,7,'1998-02-03 23:47:00'),(912704,9830319,'2009-01-13 22:42:33'),(939196,212598560,'1997-05-25 08:07:30'),(988831,12433000,'1985-02-21 03:08:20'),(1165304,957543,'2021-01-08 06:09:36'),(3929879,92,'1996-06-19 15:21:36'),(5325772,59,'1986-08-21 03:36:08'),(5476866,38880821,'1971-01-11 12:15:14'),(6846015,6,'2020-03-12 09:49:01'),(7233383,2,'2011-10-15 21:49:16'),(9325965,82256397,'2015-02-05 17:16:48'),(16940954,42853132,'1980-07-02 23:14:08'),(37870587,3312,'1999-08-31 14:17:56'),(46020178,541759791,'2002-05-14 07:52:40'),(66098080,9,'1974-12-13 18:28:05'),(70207324,62682895,'2006-09-17 17:31:45'),(75191919,4382,'2002-01-13 20:08:32'),(76261397,64800171,'1999-08-22 01:25:36'),(964154213,5303,'1986-07-13 05:52:23');
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,1722974,5,'1995-02-08 00:18:38','2004-03-22 20:56:02','2010-01-01 18:23:16','1977-08-26 02:53:20'),(2,5961,5,'2016-06-19 17:40:58','2004-02-17 11:18:45','1972-06-18 03:45:13','1992-03-14 07:26:43'),(5,69559450,3,'2008-08-20 14:00:05','1981-03-04 06:17:41','1990-07-12 19:14:19','1990-08-17 09:14:40'),(15,40066,1,'2007-05-31 16:38:00','1976-10-17 22:42:46','1991-11-11 22:47:21','2005-01-02 04:38:50'),(20,824833082,5,'1989-07-24 14:16:48','1982-08-09 17:52:36','2017-07-13 06:50:11','1995-05-23 11:36:40'),(37,95296,9,'2011-09-24 05:05:47','2005-10-01 01:32:18','2004-05-09 08:03:45','2020-02-15 07:45:22'),(58,0,5,'2016-07-23 09:18:08','1985-12-22 06:52:05','1998-08-04 00:17:42','2020-09-18 05:17:47'),(60,3830968,9,'2001-12-22 20:42:26','1978-05-02 11:48:28','2018-07-19 22:55:24','2021-01-17 23:55:51'),(70,14605,9,'1997-02-04 09:00:30','1974-11-05 20:17:52','1998-10-11 22:24:30','1970-09-06 12:51:24'),(79,363473,8,'1991-07-26 17:43:10','2008-12-19 20:08:40','1975-08-17 14:01:08','2009-09-01 10:06:39'),(265,285,9,'1999-02-14 13:58:06','1990-06-09 14:03:04','2010-05-04 09:31:18','1998-08-27 08:43:17'),(414,920735450,5,'2002-03-11 07:44:50','1988-11-11 00:19:36','1982-09-29 19:54:42','1975-07-29 02:01:34'),(459,71,2,'1987-10-31 13:05:46','1982-04-15 05:22:43','2019-02-08 14:53:42','2010-04-16 06:31:50'),(497,45,5,'1970-02-19 14:14:38','2010-06-03 02:20:35','1979-08-19 09:52:26','1997-01-07 19:45:57'),(783,865,8,'2017-02-08 22:21:55','1993-11-30 23:42:09','2009-05-14 02:56:57','2014-08-04 06:44:57'),(785,5021762,9,'2018-04-22 00:28:45','2020-04-15 00:41:45','1992-08-09 05:45:54','1979-09-10 19:51:26'),(823,969502,6,'2005-09-10 22:09:33','1971-02-15 16:24:55','1986-06-13 09:54:10','1988-12-21 07:17:10'),(922,392258247,2,'2003-04-07 04:55:51','1996-07-13 23:50:12','2003-11-03 12:40:36','2000-07-27 23:37:25'),(3376,90641154,5,'1972-07-13 10:01:34','2020-02-22 17:17:30','1992-01-27 11:56:36','1992-12-10 10:35:29'),(4067,8,5,'1986-10-03 16:48:20','1979-10-02 01:20:09','2009-07-27 23:51:06','1986-10-31 12:56:05'),(7183,37717436,4,'2006-11-17 04:51:19','1973-08-25 22:10:01','2016-05-22 09:00:40','1983-01-24 01:56:32'),(7212,5308,7,'1986-07-09 07:31:40','1987-05-29 18:59:40','1987-04-02 11:37:55','1999-05-17 03:59:38'),(43330,581565,2,'1991-10-14 05:39:44','2006-10-03 17:58:29','1989-04-15 00:00:05','2009-04-27 17:41:42'),(51602,610,5,'2010-08-05 17:49:45','1986-01-22 00:07:13','1971-09-06 16:12:28','1993-10-30 22:05:48'),(64253,96691213,4,'1998-03-05 04:10:28','1984-07-29 04:26:34','2010-06-29 05:37:17','2013-04-12 18:05:29'),(98759,619,7,'1971-12-03 09:45:28','1970-08-15 23:08:11','2019-09-15 11:08:21','2002-07-14 21:47:40'),(437064,4441382,2,'1979-01-27 00:45:22','1970-09-01 03:27:31','1980-09-28 01:44:14','2017-01-19 03:07:09'),(460281,37778,4,'1994-02-21 14:00:04','2001-11-24 05:30:19','1970-10-07 20:32:03','2000-12-20 21:40:30'),(592676,99343076,2,'1982-06-09 15:51:48','1970-10-23 21:13:48','1970-07-03 04:27:39','1974-11-23 12:36:05'),(628401,469585589,4,'2009-12-26 23:08:24','1978-10-14 16:12:36','1975-12-16 06:15:40','1991-03-04 04:26:54'),(677721,7,1,'1974-12-18 16:17:35','1998-08-26 03:40:52','1993-10-14 14:51:39','1993-03-22 00:01:17'),(710302,76308461,4,'1994-03-01 01:57:25','1996-06-09 16:30:34','2013-04-20 03:49:38','1971-09-20 06:39:47'),(827126,462,2,'2010-09-08 23:46:36','2019-11-28 01:15:37','2001-09-06 12:25:28','2003-08-24 16:19:14'),(854323,8474608,4,'1970-11-05 18:10:46','1976-12-11 01:34:56','2003-04-07 12:27:16','1994-09-19 07:05:43'),(899573,44,7,'1994-09-01 20:06:01','1996-08-26 22:20:27','1976-12-13 06:34:25','1973-10-01 15:50:58'),(1741898,258,7,'2010-12-27 05:37:08','1993-06-21 14:14:30','2010-04-19 05:41:16','2020-10-14 12:46:31'),(2466296,622806687,5,'1999-02-11 13:21:14','1976-04-14 18:42:51','2010-09-02 05:14:27','2001-10-29 15:20:22'),(3408497,599193,2,'2001-10-08 12:35:48','1976-06-06 07:17:08','1982-06-09 00:04:31','1996-06-26 23:26:22'),(3592878,74514310,4,'2003-05-25 05:12:00','2009-04-11 17:28:47','1984-03-13 06:40:21','1994-02-07 00:12:24'),(3821742,493765162,7,'1997-11-16 19:35:28','2006-10-07 03:05:57','1985-06-30 21:45:55','1998-09-28 14:37:01'),(6056200,278,9,'1977-11-24 23:30:36','1970-11-06 09:04:32','2017-03-24 14:36:38','1982-11-16 16:26:13'),(9603902,676471189,1,'2020-03-04 00:04:56','1990-02-13 00:48:22','2012-03-24 15:57:47','1989-09-26 03:50:55'),(10332449,6337800,7,'1973-06-10 19:10:36','1992-03-22 12:49:30','1993-02-18 03:06:33','2015-11-27 09:38:59'),(14023800,184,7,'1991-03-23 20:12:45','1999-04-12 17:15:19','1984-07-18 17:11:28','2000-04-11 01:42:16'),(15117442,49058,1,'1986-10-03 16:44:49','2001-09-25 04:00:21','1998-12-21 06:08:16','1976-04-18 18:51:02'),(76354483,11160782,8,'2001-05-04 14:59:32','2011-12-25 13:38:16','2019-06-18 08:28:27','2016-05-01 08:13:08'),(93392902,164,6,'2018-10-11 08:49:08','2005-02-10 04:07:38','1989-01-04 09:18:50','1999-09-04 06:03:56'),(566638860,771,4,'1987-07-24 00:57:19','1974-09-24 09:34:22','2020-01-10 10:30:16','2018-12-15 12:43:43'),(908021997,603688943,8,'1987-03-27 19:19:36','2011-07-25 20:07:53','1992-05-26 09:07:30','2004-02-18 07:49:30'),(928137165,803589299,6,'2007-08-14 17:40:37','1990-06-23 14:07:33','2004-01-24 10:38:24','1999-06-19 01:32:19');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы дружбы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (1,'ipsum','1977-12-12 16:12:40','2013-02-20 22:55:19'),(2,'iure','2007-07-30 12:35:42','1991-04-22 19:09:58'),(3,'possimus','1994-08-22 08:03:23','1991-05-14 23:12:36'),(4,'sit','1991-07-05 01:38:33','2011-12-01 01:14:12');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) NOT NULL COMMENT 'Путь к файлу',
  `size` int NOT NULL COMMENT 'Размер файла',
  `metadata` json DEFAULT NULL COMMENT 'Метаданные файла',
  `media_type_id` int unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Медиафайлы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,3383,'maiores',6252446,NULL,9227073,'1987-12-22 02:23:21','1982-09-25 09:27:56'),(2,6202588,'quisquam',493271755,NULL,3,'1979-01-21 14:05:52','1992-12-21 04:41:29'),(3,0,'est',7,NULL,21117,'2013-01-24 07:20:48','2009-09-15 15:35:36'),(4,40547998,'in',862924,NULL,657335,'1970-07-30 00:54:27','1991-11-06 22:20:34'),(5,27796,'itaque',8,NULL,7376,'2019-05-12 17:25:48','2002-12-10 01:42:12'),(6,7,'nesciunt',623,NULL,234116,'1971-07-19 22:33:02','1974-08-08 05:52:23'),(7,38,'amet',7046,NULL,5563,'1997-08-12 05:28:42','2000-11-12 01:22:13'),(8,695487,'facere',664765257,NULL,242308523,'1980-02-22 03:01:54','1993-01-25 22:59:37'),(9,80222,'qui',0,NULL,155104,'1987-04-13 06:42:18','2019-09-24 13:53:42'),(10,79,'vitae',86328758,NULL,937,'1984-01-22 11:09:19','1988-07-10 16:21:48'),(11,3,'rem',0,NULL,250485,'2010-03-26 22:35:58','2017-12-01 02:44:37'),(12,762074,'et',990,NULL,18093202,'2013-11-12 05:39:27','1989-09-24 14:22:11'),(13,0,'ipsam',44,NULL,0,'2002-03-30 16:56:50','1983-12-31 01:40:18'),(14,9804,'dolores',60107678,NULL,63,'1994-03-30 20:45:30','1975-02-18 09:43:46'),(15,55133514,'rerum',68715,NULL,319664,'2012-04-15 01:22:57','2007-12-08 23:05:10'),(16,587,'rem',222,NULL,89,'1975-08-11 17:05:15','1987-03-31 00:35:33'),(17,0,'ea',38119111,NULL,0,'2015-08-25 00:45:17','1985-04-16 02:30:59'),(18,482,'sint',25,NULL,9,'1975-11-20 18:46:48','1998-10-21 17:31:24'),(19,273,'ipsam',88935,NULL,47924,'1998-02-14 14:53:17','1985-08-19 13:18:59'),(20,0,'in',75,NULL,0,'2002-08-01 14:47:44','2017-08-05 19:11:29'),(21,58085,'magni',382,NULL,5,'1996-07-11 06:27:54','1980-02-29 16:41:33'),(22,2483480,'vitae',9557560,NULL,8763,'2015-02-26 11:08:28','1982-06-22 09:37:04'),(23,2356,'tempora',45637,NULL,15824146,'2006-11-27 06:29:16','2005-07-28 08:26:15'),(24,694187007,'magni',1364,NULL,0,'1998-09-29 18:15:37','2011-04-06 20:56:58'),(25,6148856,'et',77,NULL,30210,'2002-01-16 19:16:10','1990-06-04 20:26:04'),(26,0,'repellat',2060,NULL,53118,'1985-10-04 16:06:45','2013-01-22 07:15:07'),(27,415217188,'laborum',536459,NULL,4092,'2011-01-30 09:21:38','2014-11-30 11:30:05'),(28,394448069,'consequatur',36,NULL,14287719,'1972-11-14 21:21:15','1978-06-27 16:07:41'),(29,51068,'ex',450130573,NULL,2,'2008-08-13 17:28:04','1979-12-10 08:22:31'),(30,0,'quo',0,NULL,839729816,'2009-08-22 03:19:55','2016-02-27 03:35:08'),(31,2,'magnam',72,NULL,625162798,'2020-08-20 10:36:38','1999-03-15 03:21:21'),(32,66,'eum',45996802,NULL,330,'1990-12-04 20:57:52','2015-12-13 18:50:16'),(33,379973364,'nobis',0,NULL,0,'1979-08-30 09:11:27','1983-08-08 09:33:15'),(34,2865,'eaque',5204,NULL,0,'1981-12-25 09:35:41','1987-08-01 07:01:22'),(35,540162,'nobis',76873,NULL,7,'1984-06-05 22:44:34','1991-01-19 14:52:01'),(36,0,'consequatur',0,NULL,6,'1974-10-29 11:47:10','2020-05-01 09:58:24'),(37,8,'omnis',0,NULL,906352306,'2002-11-29 05:27:19','2003-06-01 09:37:04'),(38,287,'aut',657,NULL,1499112,'1979-06-15 09:12:11','1974-06-21 05:39:50'),(39,26006765,'voluptas',4490438,NULL,630944,'1990-05-17 11:48:11','1978-02-19 05:15:11'),(40,33,'architecto',0,NULL,4732,'1986-09-19 21:09:31','1970-02-18 17:34:48'),(41,336,'aut',9387,NULL,31,'1977-06-08 00:09:31','1976-05-25 03:59:54'),(42,97722783,'labore',6,NULL,6791,'2000-07-31 21:26:38','2005-09-15 17:11:03'),(43,3571,'sunt',7,NULL,930835688,'1992-07-23 20:53:31','1992-12-31 23:08:24'),(44,60549,'voluptatibus',38209,NULL,6581589,'1999-12-07 04:49:16','2010-05-20 23:09:06'),(45,9191878,'sequi',2684,NULL,0,'2012-05-07 07:32:24','1972-11-13 07:31:57'),(46,9,'nihil',62,NULL,55681,'2002-10-21 23:39:33','1979-10-02 12:08:21'),(47,55970895,'voluptatem',21,NULL,14,'1974-08-06 20:59:08','2000-02-01 17:16:15'),(48,4,'consequatur',1,NULL,206445,'2000-11-17 17:03:36','1998-04-04 13:43:28'),(49,95606,'ut',958,NULL,28,'1984-11-11 14:05:17','2014-03-18 13:10:42'),(50,4130,'totam',7629,NULL,3,'1983-06-02 12:53:00','1974-04-11 13:02:10');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы медиафайлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'voluptas','1976-05-25 05:53:42','1988-05-05 05:21:25'),(2,'consequuntur','1972-06-05 19:25:54','1995-06-05 08:47:03'),(3,'architecto','1997-05-14 13:42:46','2018-06-20 06:19:12');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Сообщения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,9996632,856076,'Aliquid nisi itaque atque dolores quas. Voluptate nihil placeat commodi aperiam. Deserunt quo necessitatibus sunt culpa ex occaecati rerum optio. Consequatur sit porro ut consequatur reiciendis modi.',1,0,'2006-12-16 03:32:57','1990-02-03 16:49:05'),(2,55105607,47,'Quis beatae voluptatem aut ab asperiores voluptatem voluptas. Reiciendis consequuntur facilis quisquam expedita qui eos eaque. Tempore a unde non veniam odio.',1,1,'1972-10-20 07:35:00','2012-11-14 11:39:46'),(3,9242486,91,'Accusamus voluptatem harum aut sapiente vel repellendus. Porro sed architecto qui beatae. Aliquam dolorem blanditiis animi deserunt. Consectetur est hic a blanditiis dolorem sint cumque.',1,1,'1991-05-19 17:47:54','1981-09-06 07:33:59'),(4,0,28,'Et et rerum omnis aperiam harum. Alias adipisci totam est accusamus iusto ad qui. Accusantium qui doloribus enim voluptatum. Aut nisi rerum molestias doloremque sed.',0,1,'1994-08-29 04:02:56','1995-05-12 06:54:20'),(5,599170448,104425,'Quidem aliquam laudantium corporis molestiae in. Tenetur a ipsum voluptatem.',1,0,'2014-01-29 23:20:56','1970-07-03 19:12:20'),(6,62,0,'Ex qui nihil expedita quia. Voluptatem ut qui numquam. Enim rerum autem assumenda veniam.',1,1,'1987-12-29 18:21:02','2016-12-08 00:56:24'),(7,5087,53053978,'Soluta aliquam atque laborum eligendi. Sed odit optio voluptatum et non est. Magni esse vel sint est nihil doloremque doloremque.',1,1,'1970-09-02 16:58:32','1976-05-28 06:43:51'),(8,209,61564703,'Possimus vitae incidunt dicta quasi consequatur. Enim ut enim deserunt consequuntur rem veniam. Fuga eveniet culpa voluptatem aut et excepturi ex.',1,1,'1976-06-07 07:49:42','1990-01-03 07:38:36'),(9,30387856,6,'Praesentium voluptas id dolorem eum dicta vel. Nam dignissimos consequatur minima aut aut non voluptas enim. Explicabo et autem at sint sint mollitia. Perspiciatis soluta qui provident.',1,1,'1979-08-21 22:07:44','2014-09-19 03:55:52'),(10,20031167,199765816,'Eveniet molestiae eum et. Debitis asperiores quos voluptas et fugit ipsum ea. Dicta omnis beatae et accusantium enim et.',0,0,'2004-02-01 22:16:17','2016-03-21 08:19:20'),(11,0,4,'Velit dolorum facere id dolor ut a rem voluptas. Quos illo repellat doloremque. Non officiis cum sed qui accusamus. Praesentium inventore temporibus voluptas laudantium odit ex placeat voluptatibus.',0,0,'2002-01-06 10:42:07','1982-02-05 19:51:02'),(12,28770620,1218,'Ipsa eos dignissimos officia similique non officia ea. Totam consequuntur aliquam praesentium omnis officiis voluptatibus. Alias perferendis placeat animi neque quibusdam culpa qui. Consequatur ratione sit perspiciatis quam odit quisquam harum similique.',0,1,'2013-04-02 00:02:47','1982-05-09 06:01:02'),(13,2,70,'Saepe consequatur aperiam quia repellat. Culpa odio iusto hic quos odit aliquam sunt. Voluptate omnis aut eius cupiditate qui rerum sed.',1,0,'1993-08-19 16:01:17','2019-07-16 04:41:30'),(14,0,8967,'Sit non perspiciatis ut ut. Facilis possimus quibusdam neque vero molestiae neque. Velit eum ad quis et dolorem.',1,1,'1983-11-29 00:44:02','2010-12-09 14:37:11'),(15,38,4,'Neque est labore velit eligendi a non assumenda. Velit enim rerum sed vel quam dignissimos sed. Repellendus quo et aut laboriosam nam modi.',1,0,'2006-11-21 06:45:28','2006-02-12 00:47:55'),(16,125089,30173254,'Voluptas ut quis omnis sunt labore. Est sequi saepe omnis quis. Ut quisquam sed architecto et. Ut et et accusamus autem.',0,0,'1999-09-06 05:20:56','1997-06-23 21:47:12'),(17,0,48477269,'Id saepe quo quia consectetur in beatae. Excepturi velit hic quia est blanditiis. Debitis dolore ducimus qui qui.',0,1,'2015-06-09 21:57:22','1983-02-05 15:43:54'),(18,969699,8,'Rerum culpa hic et nisi pariatur totam commodi nulla. Saepe sint delectus recusandae fugit. Corporis ipsa dolores consequuntur et numquam. Sed quo earum quaerat aut est voluptas.',0,1,'1994-05-26 20:50:37','1982-06-17 17:51:49'),(19,748180,168754,'Dolore ipsa nesciunt sit incidunt sunt velit officia. Sint et aut laudantium deleniti aut sit. Dolore aut laudantium dolorum ut ipsam ratione.',1,1,'1985-10-15 13:34:09','2017-03-07 19:36:08'),(20,1524711,566,'Impedit et ex omnis sint animi sequi tempora. Quis nam sequi est asperiores nam incidunt dolores. Tempore quo est fuga reiciendis repudiandae.',0,1,'1975-03-23 01:54:55','1987-09-05 03:41:30'),(21,614,65987,'Tempora ipsa corrupti dignissimos voluptatum maiores ratione enim. Molestiae molestias tenetur laudantium cumque ipsum. Modi assumenda incidunt et vero et.',0,0,'2005-02-25 19:58:24','2009-05-06 01:48:52'),(22,2,674348632,'Laudantium perspiciatis enim praesentium culpa debitis. Culpa est nihil aspernatur itaque quisquam non. Voluptatem provident omnis dolor suscipit eius debitis et.',1,0,'1974-06-02 18:12:40','2018-01-19 06:50:36'),(23,2562498,882,'Animi quod non voluptate est dolor. Et iure est officia est. Enim praesentium at vitae vel maxime id autem quaerat.',1,1,'2019-05-02 07:25:17','1973-12-02 13:32:57'),(24,0,874082589,'Ducimus distinctio recusandae aut ipsa mollitia ipsum atque ullam. In fuga maxime rerum iste aut maxime. Et at dolore fugit enim quia dignissimos voluptas.',1,0,'2001-04-26 21:54:38','2009-08-01 09:02:03'),(25,22462,444156,'Iure aliquam similique magni minima nemo omnis facilis. Dolorem excepturi iste minima non eaque. Eos et quis amet repellendus.',0,0,'1982-08-11 04:05:31','1997-01-21 10:00:48'),(26,78061,283,'Enim incidunt necessitatibus porro autem sed omnis architecto. Aliquid dicta qui deleniti voluptatibus eum dicta. Quis sint qui ipsum culpa earum qui praesentium nulla. Soluta hic ut sit atque.',0,0,'1975-07-27 19:48:08','1986-08-17 20:16:18'),(27,361473,5714431,'Pariatur possimus et quia cumque ut non. Et saepe reiciendis architecto illo dignissimos nesciunt. Sequi dolores aut qui consequatur et vel.',1,1,'1978-01-04 05:54:16','1979-04-04 07:32:38'),(28,830365457,9690,'Debitis iste et aliquid voluptate et. Reprehenderit eos aut laborum provident quia dolores labore. Amet asperiores est sunt reprehenderit. Maxime beatae ea eius totam ut ullam dicta.',1,1,'1988-05-06 05:36:27','1987-05-29 18:57:41'),(29,97893444,80528,'Voluptatem omnis voluptas possimus quae voluptas quo itaque quasi. Exercitationem dicta ut corporis necessitatibus. Inventore quo ipsum quam dolorum. Sed sunt consectetur enim animi laborum incidunt aspernatur.',1,1,'1996-02-06 18:39:41','1977-01-23 09:11:24'),(30,25526008,173139,'Itaque sit quia suscipit autem corporis porro. Quas sit autem neque sit reiciendis blanditiis. Ut consectetur perferendis tempore tempore iste illo.',1,1,'1985-03-11 00:16:08','1975-03-06 19:46:28'),(31,57691368,0,'Quia repudiandae nihil voluptatibus facilis deserunt voluptas. Dolorum earum et molestiae architecto velit quis aliquam dolores. Inventore natus veniam placeat occaecati aut. Est nihil impedit voluptatum dolor.',0,1,'1997-09-04 20:46:38','1971-03-20 06:14:55'),(32,486,9005,'Perferendis laborum tempora modi. Ea blanditiis amet cupiditate et quae placeat quia. Autem molestiae excepturi asperiores fugit aut.',0,0,'1980-11-14 18:15:18','1985-11-22 00:21:56'),(33,343,881882,'Qui distinctio ullam totam et aut. Quia veniam qui enim sunt. Rerum cumque nobis dolores blanditiis esse qui. Reiciendis in sit doloribus cum aut in amet. Explicabo est sint eaque ipsa et provident.',1,0,'1979-04-30 22:18:54','1998-03-01 14:18:05'),(34,247256107,912,'Odio rerum ab ab numquam praesentium perspiciatis adipisci. Sint assumenda odio quas voluptatibus. Consequuntur pariatur pariatur repellat rerum omnis aliquam temporibus.',0,0,'1977-12-28 09:37:45','1999-06-14 00:10:53'),(35,38737,601043,'Voluptas id repellat et quia molestias repellendus aperiam. Ut eum laboriosam officiis eius.',0,1,'1972-10-03 10:53:48','1997-11-06 08:00:06'),(36,94,5,'Possimus sed ut sit consequatur. Ipsum optio at expedita excepturi. Quo laudantium ipsum quia eligendi.',1,1,'1993-06-24 14:04:31','1978-05-04 04:40:34'),(37,55768,22,'Omnis amet et qui sed nemo molestias sit aut. Saepe ut perferendis dicta tempora voluptatem minus voluptas delectus. A quaerat ullam blanditiis. Non facere aut dolor neque modi.',1,1,'1995-04-09 16:46:17','1999-10-16 16:17:30'),(38,401033,48657199,'Distinctio molestias dolorem quo id. Nobis dicta cumque eos iste enim numquam mollitia dolor. Et dolore iusto at.',0,0,'1972-09-11 15:33:37','1990-08-23 02:39:53'),(39,264195029,9228,'Deserunt cupiditate consequatur dolorem animi quisquam explicabo eaque. Qui praesentium aliquid atque libero. Quia pariatur voluptatem aut ea velit laborum.',1,1,'1971-04-07 22:22:40','1971-07-24 16:34:40'),(40,80,150,'Autem et ducimus nulla corporis sint nostrum voluptates est. Cumque aperiam quis consequatur voluptate. Commodi qui omnis velit et rerum magni dolores.',1,1,'2005-04-21 23:45:11','2000-03-19 16:42:52'),(41,0,2610,'Quod asperiores aut amet quo quidem iure. Aperiam quisquam aut atque inventore explicabo velit possimus sunt. Libero aut sed ipsum amet dolorem sapiente.',0,0,'1988-05-22 17:31:01','2020-07-04 02:32:13'),(42,62257030,9791579,'Et quam id magni cum iusto. Similique quia non amet rem doloremque aspernatur voluptas corrupti. Officia temporibus non libero ea quia. Quia enim odit in rem.',1,1,'1987-09-10 13:29:43','2012-09-24 20:27:48'),(43,4,5,'Omnis qui voluptates molestiae quis. Aperiam et aut harum aut vel suscipit. Sint debitis reprehenderit dolorem quaerat.',1,0,'1977-04-25 03:27:53','1973-08-17 19:00:19'),(44,418591,0,'Ipsam accusantium qui tempore aut asperiores. Perspiciatis velit reprehenderit voluptates dolor quo atque dolorem id. Minus illo facere distinctio laborum dolorum quibusdam sapiente.',0,0,'1986-01-19 04:14:50','1977-07-16 18:10:23'),(45,2,49102774,'Officiis dolores nihil voluptatum maiores omnis consequatur. Minus veritatis asperiores voluptatem eos fuga distinctio deserunt. Non quibusdam aut delectus alias laborum eaque.',0,1,'2001-11-11 16:08:10','1973-06-30 21:20:07'),(46,671275,80,'Ad excepturi aperiam iusto atque ullam molestiae voluptatem sit. Et voluptatem a quis corporis nihil quas. Voluptates ea autem aperiam quia quia quia.',0,1,'1988-04-04 04:59:07','1997-09-20 23:16:46'),(47,9956,37,'Unde cumque tempora error est doloribus. Id nihil et perferendis molestias velit. Inventore labore et ducimus. Maxime error et dolores rerum maxime ut.',1,0,'2008-08-09 18:01:01','2001-12-01 07:02:58'),(48,9151606,36574,'Quia deleniti aspernatur ut aspernatur ut quaerat. Officia quis explicabo sapiente dolor. Blanditiis vitae minus illum vero.',1,1,'2014-01-26 11:56:48','1984-05-12 20:07:42'),(49,268,9252,'Illum consequatur sed velit alias. In voluptas non expedita ut. Omnis aliquam reiciendis tenetur ipsa. Id non eveniet qui repellendus et.',1,1,'1982-01-06 23:40:53','2021-01-23 23:43:48'),(50,4118858,59,'Sunt magnam aut nulla officiis incidunt. Eum atque harum quia nemo et nihil. Vitae omnis est et non accusamus quod delectus. Dolores est voluptas pariatur et.',1,0,'1986-06-21 02:37:59','1991-07-31 23:03:37');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Профили';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (0,'','1985-03-15',1383,'n','Port Yolandaborough','Saint Kitts and Nevis','2000-07-06 08:12:56','2009-02-15 19:42:12'),(1,'','1973-05-17',186844,'e','North Karianne','Turkmenistan','1974-02-13 13:17:17','1986-08-19 21:50:01'),(2,'','1970-08-26',0,'p','Devontestad','Saint Martin','2017-02-25 03:47:28','2014-09-13 11:32:03'),(4,'','2005-09-06',855693314,'q','Weberhaven','Sao Tome and Principe','1996-09-02 04:33:59','1991-04-14 17:12:00'),(10,'','1977-03-04',65868,'e','South Trever','Saint Helena','2010-04-23 11:25:14','2018-01-23 08:25:48'),(18,'','1978-02-09',5,'v','West Alta','Iceland','1982-09-12 11:11:09','1988-08-06 10:08:58'),(77,'','1989-04-21',31710001,'m','New Bianka','Maldives','1979-03-14 23:41:44','1987-03-06 12:14:39'),(78,'','1972-10-19',0,'u','Adrainchester','Venezuela','1993-10-21 13:07:08','2014-10-28 02:27:36'),(89,'','2011-07-11',420870,'s','Mauricestad','Iceland','2010-05-26 01:58:34','2009-03-18 12:50:02'),(186,'','2004-01-08',0,'z','South Brittanyport','Ghana','1970-12-11 17:53:17','2011-12-28 14:04:08'),(237,'','1993-04-19',761,'d','Port Anabelle','Germany','2008-01-03 16:04:11','1971-02-01 09:19:42'),(379,'','2014-07-19',0,'c','Dietrichstad','South Africa','1986-09-19 19:11:02','2002-03-12 14:51:44'),(817,'','1997-07-31',2352,'g','South Adalberto','Vanuatu','1982-02-06 03:04:16','2017-08-07 00:07:35'),(1431,'','1998-07-28',1642,'k','Kreigerbury','Pakistan','1988-04-13 03:27:18','1999-03-11 12:24:26'),(2289,'','1981-08-31',72,'g','Stokesville','Eritrea','1971-01-29 03:40:15','2014-02-02 20:26:16'),(3327,'','2001-09-26',8047006,'i','West Arvilla','Taiwan','1988-11-30 01:56:21','2000-11-22 19:02:28'),(4815,'','1990-03-04',908259,'d','Terryville','Peru','1984-11-14 16:36:11','1991-06-10 21:42:59'),(6261,'','1979-03-30',36859053,'h','East Carlosfurt','Timor-Leste','1975-06-12 16:16:59','2018-12-16 03:50:41'),(7445,'','1988-05-06',75,'i','Lake Jovany','British Indian Ocean Territory (Chagos Archipelago)','2020-11-06 09:50:05','1991-03-11 23:09:32'),(18946,'','2017-02-01',4,'u','Feilburgh','Maldives','2000-05-18 02:46:38','2017-06-08 15:51:58'),(19154,'','1988-08-31',0,'x','South Teagantown','Oman','2009-05-25 11:50:34','1994-07-12 15:38:30'),(48506,'','1991-02-07',62,'a','Carletonfort','Moldova','1978-08-25 06:10:47','1984-01-15 22:14:18'),(48922,'','2003-10-04',8727,'t','East Casey','Guinea-Bissau','1984-07-02 19:26:40','1990-10-22 03:05:21'),(54731,'','1989-11-06',7585,'w','East Alvaview','Isle of Man','1987-02-25 11:34:59','2020-05-21 08:44:09'),(66636,'','2015-05-07',469452170,'r','Port Stella','Central African Republic','1990-07-30 14:22:33','2002-02-22 10:18:13'),(90716,'','1991-08-23',9272,'r','Hirthetown','Kenya','1988-08-10 11:43:56','2004-07-27 00:50:15'),(230319,'','2011-09-15',5022,'i','East Kennedy','French Polynesia','2006-05-12 07:27:30','2003-06-08 00:13:59'),(322821,'','2020-03-11',0,'h','Schneiderberg','Mauritania','1999-05-17 07:16:35','1975-02-05 16:19:10'),(413106,'','1989-03-09',10669,'z','Loweborough','Netherlands Antilles','2004-08-08 03:57:09','1991-05-25 15:13:37'),(496926,'','2006-03-20',0,'u','Hermanside','Saint Barthelemy','1990-06-02 00:47:21','1973-10-18 21:52:55'),(542319,'','2018-04-23',37236429,'j','Nadiaburgh','Svalbard & Jan Mayen Islands','1992-12-20 14:37:32','1987-10-20 04:25:21'),(614827,'','2013-04-18',17,'b','North Brigitte','Ghana','1973-09-22 20:53:55','1996-11-28 11:27:16'),(895797,'','1972-12-24',6352865,'l','Kshlerinhaven','Vietnam','1992-08-27 06:35:56','1998-01-15 02:51:12'),(909238,'','2012-11-12',1482,'l','Bartolettibury','Christmas Island','1974-09-26 20:10:47','2004-04-25 14:12:46'),(1069368,'','2016-01-18',5436063,'c','West Mercedesfort','Guadeloupe','1975-07-29 12:04:26','2007-09-18 09:29:06'),(3079327,'','2001-08-23',0,'r','Ewaldborough','Iraq','2004-12-28 02:34:23','1984-06-02 21:07:30'),(3461475,'','1994-10-11',66795105,'m','Milfordchester','French Southern Territories','2001-10-30 01:38:14','1970-06-24 14:32:22'),(4858850,'','1992-07-05',58,'p','Pansybury','Saint Kitts and Nevis','1987-08-22 12:33:00','2019-07-05 09:27:56'),(5698168,'','2012-04-14',4,'i','Bartolettiport','Equatorial Guinea','2005-05-20 23:00:56','1997-07-02 01:05:04'),(6985118,'','1999-06-03',41414,'n','South Cornellchester','Gibraltar','2006-06-06 12:52:30','2018-05-05 21:20:26'),(7883968,'','2018-10-17',451,'h','East Ellie','Azerbaijan','1983-04-21 03:05:44','1983-11-21 03:53:26'),(8299644,'','1982-02-11',363,'k','New Fidel','San Marino','2016-11-13 19:12:44','2006-06-07 06:44:54'),(8880469,'','1999-01-16',6245,'d','Anthonyhaven','Niger','2011-07-05 16:29:27','1990-01-22 05:07:01'),(54996379,'','2002-12-11',0,'f','East Germaineshire','Aruba','2018-06-01 09:18:09','2002-07-24 11:06:20'),(64562088,'','1992-10-07',808054,'a','East Loriview','Sierra Leone','1982-01-02 12:01:20','2017-08-23 03:34:18'),(76420460,'','1975-08-07',9,'o','Nitzscheport','Israel','1998-07-06 06:46:31','1975-11-28 04:11:25'),(265473319,'','2013-08-21',6,'h','Ahmadport','Iraq','1985-05-15 12:43:25','1997-09-15 23:59:34'),(279708960,'','1997-10-05',3,'o','North Brendonchester','Argentina','1977-09-07 02:48:32','2015-04-05 19:36:24'),(776321297,'','1977-03-28',9238874,'l','North Penelope','Isle of Man','2010-02-14 04:36:15','2006-04-16 06:52:22'),(843993549,'','2015-08-21',425,'v','North Cale','New Zealand','2003-04-07 15:39:01','2017-04-22 04:52:21');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bradly','Hodkiewicz','xsmith@example.com','+17(9)8692427333','2010-12-24 04:27:25','2008-06-05 03:29:49'),(2,'Nedra','Mosciski','dlittle@example.net','+76(3)5525785472','2020-03-29 22:03:38','1992-01-09 01:30:46'),(3,'Ian','Harris','cayla.miller@example.com','394.707.2270x633','2004-08-25 18:59:58','1996-03-09 14:58:02'),(4,'Ransom','Runte','qherzog@example.net','1-862-473-5226x12714','2016-08-18 13:58:31','1977-06-15 17:00:44'),(5,'Crawford','Moore','tturcotte@example.com','1-015-531-1138x4960','2015-04-29 09:32:48','2013-08-04 20:14:38'),(6,'Terrence','Glover','kerluke.chelsie@example.org','(257)269-4555x089','1987-06-04 00:37:26','1979-03-12 19:15:46'),(7,'Devyn','Williamson','iwilkinson@example.org','868.297.4983x91175','1977-09-13 04:29:24','1996-07-10 08:19:08'),(8,'Madalyn','Hirthe','erik.ruecker@example.org','1-708-648-7992','1989-03-31 08:31:52','1984-02-12 13:05:53'),(9,'Aylin','Runte','ava85@example.org','906-524-4473','1984-02-09 17:21:31','2014-07-21 03:19:39'),(10,'Heber','Ledner','laurine26@example.com','+08(4)1211276317','2014-02-23 02:59:30','1985-06-20 13:20:11'),(11,'Lonzo','Hessel','chaz.terry@example.org','04011468727','1971-03-26 04:10:09','1978-05-31 07:30:25'),(12,'Ciara','Howe','conroy.flavie@example.net','352-744-6396x087','1992-03-15 20:26:18','2011-12-24 21:19:32'),(13,'Rose','McCullough','pat07@example.com','069.991.5236','1984-01-17 11:26:00','2004-07-13 20:41:17'),(14,'Noe','Yundt','pvonrueden@example.com','670.621.5815x889','1972-09-26 23:42:07','1997-09-18 21:12:27'),(15,'Jan','Kutch','nondricka@example.org','386-079-1302x20830','2013-04-10 18:32:30','1995-04-08 10:24:35'),(16,'Molly','Langworth','johns.franz@example.org','235.118.5025','1973-10-24 16:02:10','1997-05-13 06:28:11'),(17,'Amaya','Padberg','orn.shayna@example.net','029-301-4943x067','2013-08-26 16:13:08','2007-12-27 08:57:55'),(18,'Rylan','Marks','stehr.francesca@example.com','724.288.7316x76288','2017-07-21 23:46:34','2013-10-04 03:23:42'),(19,'Alaina','Effertz','mckayla62@example.com','(877)784-4836x47100','1976-12-11 16:34:26','1989-08-18 06:50:20'),(20,'Palma','McClure','carley01@example.org','1-597-204-5350','1995-01-20 05:55:39','1985-12-08 06:14:53'),(21,'Rosemary','McKenzie','darby60@example.com','1-308-076-3884x90059','1988-12-15 08:59:02','1977-05-18 15:56:06'),(22,'Deion','Keebler','qjerde@example.net','292.006.9117x95093','2004-11-11 01:22:25','1980-11-01 04:28:50'),(23,'Hailey','Runolfsson','june.schmitt@example.net','591.409.3304x045','1976-04-06 07:05:33','1976-07-16 05:45:04'),(24,'Gerry','Gleason','olson.lue@example.org','244.457.7497x9227','2003-10-31 02:33:29','2010-09-28 18:58:27'),(25,'Alexander','Boyle','kerluke.lula@example.org','147.408.1887x23087','1992-05-19 08:04:55','2019-09-21 17:13:47'),(26,'Trey','Cummings','oran.kertzmann@example.org','334.960.7295','1985-12-14 05:54:05','1999-08-06 06:00:22'),(27,'Luisa','Murphy','amarvin@example.com','884.618.5977x3787','1972-02-09 02:27:57','2000-09-26 16:35:19'),(28,'Declan','Becker','ernser.hermann@example.net','09407156308','2009-02-14 06:02:51','1993-11-08 00:05:55'),(29,'Liliana','Metz','pagac.julianne@example.com','263-966-9317x8367','1975-05-13 17:06:50','1997-05-20 15:32:55'),(30,'Earnestine','Welch','zieme.nina@example.com','105.366.3655x2760','1979-01-24 00:38:31','1980-12-26 13:22:55'),(31,'Vladimir','Schowalter','hstamm@example.org','1-396-539-3209','1991-05-27 20:27:35','1997-10-09 07:07:17'),(32,'Ewald','Watsica','tanya.konopelski@example.com','(359)901-6535','1976-01-12 09:16:12','1982-02-01 09:28:29'),(33,'Eusebio','Kub','colleen.schumm@example.com','416-270-8155','2003-11-17 19:00:32','1999-12-24 11:12:50'),(34,'Roberto','Feest','issac39@example.net','(849)036-6148x33500','1974-02-08 13:54:36','1977-08-11 15:42:15'),(35,'Dangelo','Harber','ptrantow@example.net','1-039-082-7642x18308','2015-09-04 11:13:57','2005-02-13 13:14:20'),(36,'Veda','Robel','yhayes@example.net','814-701-9249','2020-06-23 05:58:08','1993-05-28 12:04:38'),(37,'Henry','Yost','harmon52@example.net','+34(1)5655326186','1996-01-17 17:10:40','2005-04-17 00:53:26'),(38,'Eusebio','VonRueden','dibbert.josephine@example.org','907.322.0126x1159','1979-07-28 17:32:25','1990-06-02 08:23:34'),(39,'Elaina','Jerde','ekuvalis@example.net','193-730-9497','1978-04-05 03:13:24','2018-07-13 18:07:57'),(40,'Marcelina','Kertzmann','lilla59@example.net','(296)095-9444','2017-12-28 19:21:29','2009-09-10 03:26:09'),(41,'Audra','Hahn','tlindgren@example.com','(394)603-6220x011','1997-08-03 06:05:38','2003-11-05 23:09:22'),(42,'Natalia','Larkin','astamm@example.org','01488287226','1998-05-08 01:35:20','2011-09-03 11:40:21'),(43,'Alexys','McDermott','durgan.korbin@example.org','600.167.5846','1998-09-22 10:05:43','1974-07-12 09:33:28'),(44,'Thea','Schumm','monahan.jailyn@example.com','936.252.4446','2015-08-13 05:14:56','1997-02-09 21:08:23'),(45,'Ruby','Wiza','lexus99@example.org','576.211.8869','1972-03-03 13:09:21','1974-03-11 10:06:03'),(46,'Mabel','Wilderman','ccartwright@example.org','407-935-0845x9448','2006-01-01 02:07:09','1992-06-04 16:24:27'),(47,'Johathan','Marquardt','beth.veum@example.org','(104)198-7428','1977-10-24 02:03:46','2012-02-19 12:05:39'),(48,'Garnett','White','rgislason@example.com','627-715-1617','1999-12-06 03:48:32','2012-07-25 07:02:32'),(49,'Tina','Orn','nconroy@example.com','1-786-135-8735','2020-08-24 19:00:13','1989-11-03 09:56:26'),(50,'Josie','Veum','leffler.carter@example.net','+34(9)6048058069','1971-10-28 21:39:42','2007-08-26 04:58:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12 11:37:56
