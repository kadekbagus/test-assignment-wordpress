-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,7,'_edit_last','1'),(4,7,'field_5b4f9134a537f','a:14:{s:3:\"key\";s:19:\"field_5b4f9134a537f\";s:5:\"label\";s:12:\"Ticket Price\";s:4:\"name\";s:12:\"ticket_price\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),(5,7,'field_5b4f9147a5380','a:11:{s:3:\"key\";s:19:\"field_5b4f9147a5380\";s:5:\"label\";s:12:\"Release Date\";s:4:\"name\";s:12:\"release_date\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"date_format\";s:6:\"yymmdd\";s:14:\"display_format\";s:8:\"dd/mm/yy\";s:9:\"first_day\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),(6,7,'rule','a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"films\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),(7,7,'position','normal'),(8,7,'layout','no_box'),(9,7,'hide_on_screen',''),(10,7,'_edit_lock','1531941106:1'),(11,9,'_edit_last','1'),(12,9,'_edit_lock','1531941708:1'),(13,9,'ticket_price','4000'),(14,9,'_ticket_price','field_5b4f9134a537f'),(15,9,'release_date','20180423'),(16,9,'_release_date','field_5b4f9147a5380'),(17,10,'_edit_last','1'),(18,10,'_edit_lock','1531941857:1'),(19,10,'ticket_price','2000'),(20,10,'_ticket_price','field_5b4f9134a537f'),(21,10,'release_date','20030701'),(22,10,'_release_date','field_5b4f9147a5380'),(23,10,'post_views_count','4'),(24,11,'_edit_last','1'),(25,11,'_edit_lock','1531945119:1'),(26,11,'ticket_price','3500'),(27,11,'_ticket_price','field_5b4f9134a537f'),(28,11,'release_date','20041119'),(29,11,'_release_date','field_5b4f9147a5380'),(30,11,'post_views_count','26'),(31,13,'_menu_item_type','custom'),(32,13,'_menu_item_menu_item_parent','0'),(33,13,'_menu_item_object_id','13'),(34,13,'_menu_item_object','custom'),(35,13,'_menu_item_target',''),(36,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(37,13,'_menu_item_xfn',''),(38,13,'_menu_item_url','http://localhost/wordpress/'),(40,15,'_edit_last','1'),(41,15,'_edit_lock','1531942711:1'),(42,15,'_wp_page_template','film-page.php'),(43,17,'_menu_item_type','post_type'),(44,17,'_menu_item_menu_item_parent','0'),(45,17,'_menu_item_object_id','15'),(46,17,'_menu_item_object','page'),(47,17,'_menu_item_target',''),(48,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(49,17,'_menu_item_xfn',''),(50,17,'_menu_item_url',''),(52,9,'post_views_count','3');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-18 16:41:16
