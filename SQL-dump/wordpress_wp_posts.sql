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
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2018-07-18 18:19:03','2018-07-18 18:19:03','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2018-07-18 18:19:03','2018-07-18 18:19:03','',0,'http://localhost/wordpress/?p=1',0,'post','',1),(2,1,'2018-07-18 18:19:03','2018-07-18 18:19:03','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2018-07-18 18:19:03','2018-07-18 18:19:03','',0,'http://localhost/wordpress/?page_id=2',0,'page','',0),(3,1,'2018-07-18 18:19:03','2018-07-18 18:19:03','<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','draft','closed','open','','privacy-policy','','','2018-07-18 18:19:03','2018-07-18 18:19:03','',0,'http://localhost/wordpress/?page_id=3',0,'page','',0),(4,1,'2018-07-18 18:19:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-07-18 18:19:20','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?p=4',0,'post','',0),(5,1,'2018-07-18 18:53:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-07-18 18:53:02','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?post_type=films&p=5',0,'films','',0),(6,1,'2018-07-18 19:02:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-07-18 19:02:25','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?post_type=films&p=6',0,'films','',0),(7,1,'2018-07-18 19:14:03','2018-07-18 19:14:03','','Film Fields','','publish','closed','closed','','acf_film-fields','','','2018-07-18 19:14:03','2018-07-18 19:14:03','',0,'http://localhost/wordpress/?post_type=acf&#038;p=7',0,'acf','',0),(8,1,'2018-07-18 19:14:14','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-07-18 19:14:14','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?post_type=films&p=8',0,'films','',0),(9,1,'2018-07-18 19:23:27','2018-07-18 19:23:27','Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never bee<span class=\"yZlgBd\">n more uncertain as everything the Avengers have fought for has led up to this moment.</span>','Avenger Infinity War','','publish','closed','closed','','avenger-infinity-war','','','2018-07-18 19:23:27','2018-07-18 19:23:27','',0,'http://localhost/wordpress/?post_type=films&#038;p=9',0,'films','',0),(10,1,'2018-07-18 19:26:34','2018-07-18 19:26:34','Curious and fun-loving 5-year-old twin brothers Upin and Ipin learn and explore new things.','Upin Ipin','','publish','closed','closed','','upin-ipin','','','2018-07-18 19:26:34','2018-07-18 19:26:34','',0,'http://localhost/wordpress/?post_type=films&#038;p=10',0,'films','',0),(11,1,'2018-07-18 19:33:32','2018-07-18 19:33:32','In this lively animated adventure, undersea oddball SpongeBob SquarePants and his starfish friend, Patrick, embark on a quest to clear the name of Mr. Krabs, the owner of the Krusty Krab restaurant, who has been framed for stealing the crown of ocean deity King Neptune. Leaving the familiar confines<span class=\"yZlgBd\"> of Bikini Bottom, SpongeBob and Patrick venture out towards Shell City, where they hope to find Neptune\'s crown, but numerous obstacles stand (or float) in their way.</span>','SpongeBob SquarePants','','publish','closed','closed','','the-spongebob-squarepants-movie','','','2018-07-18 20:21:01','2018-07-18 20:21:01','',0,'http://localhost/wordpress/?post_type=films&#038;p=11',0,'films','',0),(12,1,'2018-07-18 19:40:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-07-18 19:40:06','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?page_id=12',0,'page','',0),(13,1,'2018-07-18 19:40:24','2018-07-18 19:40:24','','Home','','publish','closed','closed','','home','','','2018-07-18 19:41:02','2018-07-18 19:41:02','',0,'http://localhost/wordpress/?p=13',1,'nav_menu_item','',0),(14,1,'2018-07-18 19:40:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-07-18 19:40:29','0000-00-00 00:00:00','',0,'http://localhost/wordpress/?p=14',0,'post','',0),(15,1,'2018-07-18 19:40:47','2018-07-18 19:40:47','','Films','','publish','closed','closed','','films','','','2018-07-18 19:40:47','2018-07-18 19:40:47','',0,'http://localhost/wordpress/?page_id=15',0,'page','',0),(16,1,'2018-07-18 19:40:47','2018-07-18 19:40:47','','Films','','inherit','closed','closed','','15-revision-v1','','','2018-07-18 19:40:47','2018-07-18 19:40:47','',15,'http://localhost/wordpress/?p=16',0,'revision','',0),(17,1,'2018-07-18 19:41:02','2018-07-18 19:41:02',' ','','','publish','closed','closed','','17','','','2018-07-18 19:41:02','2018-07-18 19:41:02','',0,'http://localhost/wordpress/?p=17',2,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
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
