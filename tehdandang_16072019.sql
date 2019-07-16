-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: tehdandang_new
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,3,'Admin','fa-tasks','',NULL,NULL,'2019-07-15 12:28:36'),(3,2,4,'Users','fa-users','auth/users',NULL,NULL,'2019-07-15 12:28:36'),(4,2,5,'Roles','fa-user','auth/roles',NULL,NULL,'2019-07-15 12:28:36'),(5,2,6,'Permission','fa-ban','auth/permissions',NULL,NULL,'2019-07-15 12:28:36'),(6,2,7,'Menu','fa-bars','auth/menu',NULL,NULL,'2019-07-15 12:28:36'),(7,2,8,'Operation log','fa-history','auth/logs',NULL,NULL,'2019-07-15 12:28:36'),(8,0,2,'Setting','fa-gear','/settings',NULL,'2019-07-15 12:28:32','2019-07-15 12:28:36'),(9,1,0,'Banner','fa-bars','/banners',NULL,'2019-07-15 12:37:40','2019-07-15 12:37:51'),(10,1,0,'Product','fa-bars','/products',NULL,'2019-07-15 21:56:58','2019-07-15 21:56:58'),(11,1,0,'Menu','fa-bars','/menus',NULL,'2019-07-15 22:24:02','2019-07-15 22:24:02');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2019-07-15 11:39:29','2019-07-15 11:39:29'),(2,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 11:39:32','2019-07-15 11:39:32'),(3,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 11:39:34','2019-07-15 11:39:34'),(4,1,'admin','GET','127.0.0.1','[]','2019-07-15 12:24:07','2019-07-15 12:24:07'),(5,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:28:02','2019-07-15 12:28:02'),(6,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Setting\",\"icon\":\"fa-gear\",\"uri\":\"\\/settings\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\"}','2019-07-15 12:28:32','2019-07-15 12:28:32'),(7,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 12:28:32','2019-07-15 12:28:32'),(8,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2019-07-15 12:28:36','2019-07-15 12:28:36'),(9,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:28:36','2019-07-15 12:28:36'),(10,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 12:28:38','2019-07-15 12:28:38'),(11,1,'admin/settings','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:28:39','2019-07-15 12:28:39'),(12,1,'admin/settings/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:28:43','2019-07-15 12:28:43'),(13,1,'admin/settings','POST','127.0.0.1','{\"slug\":\"site_title\",\"option_name\":\"Site Title\",\"type\":\"text\",\"value\":\"Teh Celup Cap Dandang\",\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/settings\"}','2019-07-15 12:29:32','2019-07-15 12:29:32'),(14,1,'admin/settings/create','GET','127.0.0.1','[]','2019-07-15 12:29:32','2019-07-15 12:29:32'),(15,1,'admin/settings','POST','127.0.0.1','{\"slug\":\"tagline\",\"option_name\":\"Tagline\",\"type\":\"text\",\"value\":\"Jagonya Teh\",\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"after-save\":\"2\"}','2019-07-15 12:30:01','2019-07-15 12:30:01'),(16,1,'admin/settings/create','GET','127.0.0.1','[]','2019-07-15 12:30:01','2019-07-15 12:30:01'),(17,1,'admin/settings','POST','127.0.0.1','{\"slug\":\"logo\",\"option_name\":\"Logo\",\"type\":\"image\",\"value\":\"logo\",\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\"}','2019-07-15 12:31:01','2019-07-15 12:31:01'),(18,1,'admin/settings','GET','127.0.0.1','[]','2019-07-15 12:31:01','2019-07-15 12:31:01'),(19,1,'admin/settings/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:31:53','2019-07-15 12:31:53'),(20,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:37:28','2019-07-15 12:37:28'),(21,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Banner\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\"}','2019-07-15 12:37:40','2019-07-15 12:37:40'),(22,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 12:37:40','2019-07-15 12:37:40'),(23,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 12:37:43','2019-07-15 12:37:43'),(24,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Banner\",\"icon\":\"fa-bars\",\"uri\":\"\\/banners\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/auth\\/menu\"}','2019-07-15 12:37:51','2019-07-15 12:37:51'),(25,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 12:37:51','2019-07-15 12:37:51'),(26,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 12:37:52','2019-07-15 12:37:52'),(27,1,'admin/banners','GET','127.0.0.1','[]','2019-07-15 12:38:03','2019-07-15 12:38:03'),(28,1,'admin/banners/create','GET','127.0.0.1','[]','2019-07-15 12:38:05','2019-07-15 12:38:05'),(29,1,'admin/banners/create','GET','127.0.0.1','[]','2019-07-15 12:38:36','2019-07-15 12:38:36'),(30,1,'admin/banners/create','GET','127.0.0.1','[]','2019-07-15 12:38:43','2019-07-15 12:38:43'),(31,1,'admin/banners','POST','127.0.0.1','{\"title\":\"Teh Dandang 1\",\"content\":\"test\",\"order\":\"1\",\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/banners\"}','2019-07-15 12:40:00','2019-07-15 12:40:00'),(32,1,'admin/banners','GET','127.0.0.1','[]','2019-07-15 12:40:00','2019-07-15 12:40:00'),(33,1,'admin/banners/create','GET','127.0.0.1','[]','2019-07-15 12:40:46','2019-07-15 12:40:46'),(34,1,'admin/banners','POST','127.0.0.1','{\"title\":\"Teh Dandang 2\",\"content\":\"test\",\"order\":\"2\",\"_token\":\"NwvJ1JqLMNAXO02ackoTwJb2osDWxabw8NsX0DFb\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/banners\"}','2019-07-15 12:41:01','2019-07-15 12:41:01'),(35,1,'admin/banners','GET','127.0.0.1','[]','2019-07-15 12:41:02','2019-07-15 12:41:02'),(36,1,'admin','GET','127.0.0.1','[]','2019-07-15 21:56:41','2019-07-15 21:56:41'),(37,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 21:56:49','2019-07-15 21:56:49'),(38,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Product\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 21:56:58','2019-07-15 21:56:58'),(39,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 21:56:58','2019-07-15 21:56:58'),(40,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 21:56:59','2019-07-15 21:56:59'),(41,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 21:57:01','2019-07-15 21:57:01'),(42,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 21:57:03','2019-07-15 21:57:03'),(43,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 21:58:51','2019-07-15 21:58:51'),(44,1,'admin/products','POST','127.0.0.1','{\"name\":\"Teh Dandang 1\",\"description\":\"Teh Dandang 1\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 21:59:17','2019-07-15 21:59:17'),(45,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 21:59:17','2019-07-15 21:59:17'),(46,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 21:59:27','2019-07-15 21:59:27'),(47,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 21:59:34','2019-07-15 21:59:34'),(48,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 21:59:56','2019-07-15 21:59:56'),(49,1,'admin/products','POST','127.0.0.1','{\"slug\":null,\"name\":\"Teh Dandang 1\",\"description\":\"Teh Dandang 1\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 22:00:06','2019-07-15 22:00:06'),(50,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:00:06','2019-07-15 22:00:06'),(51,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:00:14','2019-07-15 22:00:14'),(52,1,'admin/products','POST','127.0.0.1','{\"slug\":null,\"name\":\"Teh Dandang 2\",\"description\":\"Teh Dandang 2\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:00:26','2019-07-15 22:00:26'),(53,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 22:00:26','2019-07-15 22:00:26'),(54,1,'admin/products','POST','127.0.0.1','{\"slug\":null,\"name\":\"Teh Dandang 3\",\"description\":\"Teh Dandang 3\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"after-save\":\"2\"}','2019-07-15 22:00:37','2019-07-15 22:00:37'),(55,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 22:00:37','2019-07-15 22:00:37'),(56,1,'admin/products','POST','127.0.0.1','{\"slug\":null,\"name\":\"Teh Dandang 4\",\"description\":\"Teh Dandang 4\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 22:00:47','2019-07-15 22:00:47'),(57,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:00:48','2019-07-15 22:00:48'),(58,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:04:49','2019-07-15 22:04:49'),(59,1,'admin/products/1','PUT','127.0.0.1','{\"slug\":\"teh-dandang-1\",\"name\":\"Teh Dandang 1\",\"description\":\"Teh Dandang 1\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:05:14','2019-07-15 22:05:14'),(60,1,'admin/products/1/edit','GET','127.0.0.1','[]','2019-07-15 22:05:15','2019-07-15 22:05:15'),(61,1,'admin/products/1/edit','GET','127.0.0.1','[]','2019-07-15 22:05:51','2019-07-15 22:05:51'),(62,1,'admin/products/1','PUT','127.0.0.1','{\"slug\":\"teh-dandang-1\",\"name\":\"Teh Dandang 1\",\"description\":\"Teh Dandang 1\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\\/create\"}','2019-07-15 22:06:00','2019-07-15 22:06:00'),(63,1,'admin/products/create','GET','127.0.0.1','[]','2019-07-15 22:06:00','2019-07-15 22:06:00'),(64,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:06:08','2019-07-15 22:06:08'),(65,1,'admin/products/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:06:10','2019-07-15 22:06:10'),(66,1,'admin/products/2','PUT','127.0.0.1','{\"slug\":\"teh-dandang-2\",\"name\":\"Teh Dandang 2\",\"description\":\"Teh Dandang 2\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:06:16','2019-07-15 22:06:16'),(67,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:06:16','2019-07-15 22:06:16'),(68,1,'admin/products/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:06:17','2019-07-15 22:06:17'),(69,1,'admin/products/3','PUT','127.0.0.1','{\"slug\":\"teh-dandang-3\",\"name\":\"Teh Dandang 3\",\"description\":\"Teh Dandang 3\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:06:24','2019-07-15 22:06:24'),(70,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:06:25','2019-07-15 22:06:25'),(71,1,'admin/products/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:06:27','2019-07-15 22:06:27'),(72,1,'admin/products/4','PUT','127.0.0.1','{\"slug\":\"teh-dandang-4\",\"name\":\"Teh Dandang 4\",\"description\":\"Teh Dandang 4\",\"is_bestseller\":\"on\",\"product_type_id\":\"1\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:06:33','2019-07-15 22:06:33'),(73,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:06:33','2019-07-15 22:06:33'),(74,1,'admin/products/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:18:16','2019-07-15 22:18:16'),(75,1,'admin/products/3','PUT','127.0.0.1','{\"slug\":\"teh-dandang-3\",\"name\":\"Teh Dandang 3\",\"description\":\"Teh Dandang 3\",\"is_bestseller\":\"on\",\"product_type_id\":\"2\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:18:19','2019-07-15 22:18:19'),(76,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:18:19','2019-07-15 22:18:19'),(77,1,'admin/products/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:18:21','2019-07-15 22:18:21'),(78,1,'admin/products/4','PUT','127.0.0.1','{\"slug\":\"teh-dandang-4\",\"name\":\"Teh Dandang 4\",\"description\":\"Teh Dandang 4\",\"is_bestseller\":\"on\",\"product_type_id\":\"2\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/products\"}','2019-07-15 22:18:23','2019-07-15 22:18:23'),(79,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:18:23','2019-07-15 22:18:23'),(80,1,'admin/products','GET','127.0.0.1','[]','2019-07-15 22:23:51','2019-07-15 22:23:51'),(81,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:23:53','2019-07-15 22:23:53'),(82,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"1\",\"title\":\"Menu\",\"icon\":\"fa-bars\",\"uri\":\"\\/menus\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 22:24:02','2019-07-15 22:24:02'),(83,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 22:24:02','2019-07-15 22:24:02'),(84,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-07-15 22:24:03','2019-07-15 22:24:03'),(85,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:24:45','2019-07-15 22:24:45'),(86,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:24:55','2019-07-15 22:24:55'),(87,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":null,\"order\":null,\"title\":\"Home\",\"slug\":\"home\",\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:25:22','2019-07-15 22:25:22'),(88,1,'admin/menus/create','GET','127.0.0.1','[]','2019-07-15 22:25:23','2019-07-15 22:25:23'),(89,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":null,\"order\":null,\"title\":\"Home\",\"slug\":\"home\",\"is_static\":\"on\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\"}','2019-07-15 22:25:28','2019-07-15 22:25:28'),(90,1,'admin/menus/create','GET','127.0.0.1','[]','2019-07-15 22:25:28','2019-07-15 22:25:28'),(91,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:25:30','2019-07-15 22:25:30'),(92,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:25:31','2019-07-15 22:25:31'),(93,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"1\",\"title\":\"Home\",\"slug\":\"home\",\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:25:46','2019-07-15 22:25:46'),(94,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:25:46','2019-07-15 22:25:46'),(95,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:26:23','2019-07-15 22:26:23'),(96,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"About Us\",\"slug\":\"about-us\",\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:26:34','2019-07-15 22:26:34'),(97,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:26:34','2019-07-15 22:26:34'),(98,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:26:34','2019-07-15 22:26:34'),(99,1,'admin/menus/create','GET','127.0.0.1','[]','2019-07-15 22:27:27','2019-07-15 22:27:27'),(100,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"History Of The Product\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:27:45','2019-07-15 22:27:45'),(101,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:27:45','2019-07-15 22:27:45'),(102,1,'admin/menus','POST','127.0.0.1','{\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3}]}]\"}','2019-07-15 22:27:48','2019-07-15 22:27:48'),(103,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:27:49','2019-07-15 22:27:49'),(104,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:27:50','2019-07-15 22:27:50'),(105,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Simple Company Explanation\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:27:58','2019-07-15 22:27:58'),(106,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:27:58','2019-07-15 22:27:58'),(107,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:28:03','2019-07-15 22:28:03'),(108,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"What We Believe\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:28:08','2019-07-15 22:28:08'),(109,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:28:08','2019-07-15 22:28:08'),(110,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:28:13','2019-07-15 22:28:13'),(111,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Products\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:28:15','2019-07-15 22:28:15'),(112,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:28:15','2019-07-15 22:28:15'),(113,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:28:22','2019-07-15 22:28:22'),(114,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Teh Dandang Tabur\\/Bubuk\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:28:27','2019-07-15 22:28:27'),(115,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:28:27','2019-07-15 22:28:27'),(116,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:28:28','2019-07-15 22:28:28'),(117,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Teh Dandang Bag\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:28:32','2019-07-15 22:28:32'),(118,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:28:32','2019-07-15 22:28:32'),(119,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:28:37','2019-07-15 22:28:37'),(120,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Serving Teh Dandang\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:28:40','2019-07-15 22:28:40'),(121,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:28:40','2019-07-15 22:28:40'),(122,1,'admin/menus','POST','127.0.0.1','{\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":8},{\\\"id\\\":9}]\"}','2019-07-15 22:29:27','2019-07-15 22:29:27'),(123,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:29:27','2019-07-15 22:29:27'),(124,1,'admin/menus','POST','127.0.0.1','{\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":8},{\\\"id\\\":9}]}]\"}','2019-07-15 22:29:34','2019-07-15 22:29:34'),(125,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:29:34','2019-07-15 22:29:34'),(126,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:29:42','2019-07-15 22:29:42'),(127,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Basic Serving\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:29:45','2019-07-15 22:29:45'),(128,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:29:45','2019-07-15 22:29:45'),(129,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:29:46','2019-07-15 22:29:46'),(130,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Serving For Family In Daily Life\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:29:55','2019-07-15 22:29:55'),(131,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:29:55','2019-07-15 22:29:55'),(132,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:29:56','2019-07-15 22:29:56'),(133,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Serving Simple Tea\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:01','2019-07-15 22:30:01'),(134,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:01','2019-07-15 22:30:01'),(135,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:03','2019-07-15 22:30:03'),(136,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Serving Ice Tea\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:07','2019-07-15 22:30:07'),(137,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:07','2019-07-15 22:30:07'),(138,1,'admin/menus','POST','127.0.0.1','{\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":8}]},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]}]\"}','2019-07-15 22:30:20','2019-07-15 22:30:20'),(139,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:20','2019-07-15 22:30:20'),(140,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:22','2019-07-15 22:30:22'),(141,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Why Our Tea\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:29','2019-07-15 22:30:29'),(142,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:29','2019-07-15 22:30:29'),(143,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:30','2019-07-15 22:30:30'),(144,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"We Have Our Own Plantation\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:40','2019-07-15 22:30:40'),(145,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:41','2019-07-15 22:30:41'),(146,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:42','2019-07-15 22:30:42'),(147,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Nature Process\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:46','2019-07-15 22:30:46'),(148,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:46','2019-07-15 22:30:46'),(149,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:48','2019-07-15 22:30:48'),(150,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Health Conscious\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:54','2019-07-15 22:30:54'),(151,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:54','2019-07-15 22:30:54'),(152,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:30:56','2019-07-15 22:30:56'),(153,1,'admin/menus','POST','127.0.0.1','{\"parent_id\":\"0\",\"order\":\"0\",\"title\":\"Contact\",\"slug\":null,\"is_static\":\"off\",\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_previous_\":\"http:\\/\\/tehdandang-new.test\\/admin\\/menus\"}','2019-07-15 22:30:59','2019-07-15 22:30:59'),(154,1,'admin/menus','GET','127.0.0.1','[]','2019-07-15 22:30:59','2019-07-15 22:30:59'),(155,1,'admin/menus/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:31:07','2019-07-15 22:31:07'),(156,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:31:09','2019-07-15 22:31:09'),(157,1,'admin/menus','POST','127.0.0.1','{\"_token\":\"fGMgXePDvJRJ5YWFfN12upV2jMr4hgeCVCGUwcGT\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":8}]},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17}]},{\\\"id\\\":18}]\"}','2019-07-15 22:31:15','2019-07-15 22:31:15'),(158,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:31:15','2019-07-15 22:31:15'),(159,1,'admin/menus','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:31:15','2019-07-15 22:31:15'),(160,1,'admin/menus/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-07-15 22:43:18','2019-07-15 22:43:18');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-07-15 11:38:55','2019-07-15 11:38:55');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$krdIhh6/8B0feRoHEJUtSeYEEgKdEFdUrwwx4NqajK4eyPs6sQjsi','Administrator',NULL,'AGrb3nY1CDU0SDAgwaXdDdXN9JKmTldn4FH2Kehlrb8lvHxLWlQeaX3VBC56','2019-07-15 11:38:55','2019-07-15 11:38:55');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Teh Dandang 1','images/slider2.jpg','test',1,'2019-07-15 12:40:00','2019-07-15 12:40:00'),(2,'Teh Dandang 2','images/slider1.jpg','test',2,'2019-07-15 12:41:02','2019-07-15 12:41:02');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_static` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,0,1,'Home','home',0,'2019-07-15 22:25:46','2019-07-15 22:25:46'),(2,0,2,'About Us','about-us',0,'2019-07-15 22:26:34','2019-07-15 22:27:48'),(3,2,3,'History Of The Product','history-of-the-product',0,'2019-07-15 22:27:45','2019-07-15 22:27:48'),(4,2,4,'Simple Company Explanation','simple-company-explanation',0,'2019-07-15 22:27:58','2019-07-15 22:29:27'),(5,2,5,'What We Believe','what-we-believe',0,'2019-07-15 22:28:08','2019-07-15 22:29:27'),(6,0,6,'Products','products',0,'2019-07-15 22:28:15','2019-07-15 22:29:27'),(7,6,7,'Teh Dandang Tabur/Bubuk','teh-dandang-taburbubuk',0,'2019-07-15 22:28:27','2019-07-15 22:29:34'),(8,6,8,'Teh Dandang Bag','teh-dandang-bag',0,'2019-07-15 22:28:32','2019-07-15 22:29:34'),(9,0,9,'Serving Teh Dandang','serving-teh-dandang',0,'2019-07-15 22:28:40','2019-07-15 22:30:20'),(10,9,10,'Basic Serving','basic-serving',0,'2019-07-15 22:29:45','2019-07-15 22:30:20'),(11,9,11,'Serving For Family In Daily Life','serving-for-family-in-daily-life',0,'2019-07-15 22:29:55','2019-07-15 22:30:20'),(12,9,12,'Serving Simple Tea','serving-simple-tea',0,'2019-07-15 22:30:01','2019-07-15 22:30:20'),(13,9,13,'Serving Ice Tea','serving-ice-tea',0,'2019-07-15 22:30:07','2019-07-15 22:30:20'),(14,0,14,'Why Our Tea','why-our-tea',0,'2019-07-15 22:30:29','2019-07-15 22:31:15'),(15,14,15,'We Have Our Own Plantation','we-have-our-own-plantation',0,'2019-07-15 22:30:40','2019-07-15 22:31:15'),(16,14,16,'Nature Process','nature-process',0,'2019-07-15 22:30:46','2019-07-15 22:31:15'),(17,14,17,'Health Conscious','health-conscious',0,'2019-07-15 22:30:54','2019-07-15 22:31:15'),(18,0,18,'Contact','contact',0,'2019-07-15 22:30:59','2019-07-15 22:31:15');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_07_15_192504_create_settings_table',2),(5,'2019_07_15_193439_create_banners_table',3),(6,'2019_07_15_194810_create_products_table',4),(7,'2019_07_16_050324_modify_table_products_1',5),(8,'2019_07_16_051949_create_menus_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bestseller` tinyint(1) NOT NULL,
  `product_type_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_products` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'teh-dandang-1','Teh Dandang 1','Teh Dandang 1',1,1,'2019-07-15 22:00:06','2019-07-15 22:06:00','images/ddfc7cec84d61ce0e2eec627bbffc4c9.jpg'),(2,'teh-dandang-2','Teh Dandang 2','Teh Dandang 2',1,1,'2019-07-15 22:00:26','2019-07-15 22:06:16','images/6314ec3de7f64f5453dae3cf7884b20d.jpg'),(3,'teh-dandang-3','Teh Dandang 3','Teh Dandang 3',1,2,'2019-07-15 22:00:37','2019-07-15 22:18:19','images/4cde200713cd7e2a6c2cf7a584d335a0.jpg'),(4,'teh-dandang-4','Teh Dandang 4','Teh Dandang 4',1,2,'2019-07-15 22:00:47','2019-07-15 22:18:23','images/e9f23fc162a57fd99f27d623a5c93628.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_title','Site Title','text','Teh Celup Cap Dandang','2019-07-15 12:29:32','2019-07-15 12:29:32'),(2,'tagline','Tagline','text','Jagonya Teh','2019-07-15 12:30:01','2019-07-15 12:30:01'),(3,'logo','Logo','image','logo','2019-07-15 12:31:01','2019-07-15 12:31:01');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2019-07-16 13:48:40
