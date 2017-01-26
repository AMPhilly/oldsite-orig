-- MySQL dump 10.13  Distrib 5.5.19, for Linux (x86_64)
--
-- Host: 97.74.31.200    Database: amdancestudio
-- ------------------------------------------------------
-- Server version	5.0.96-log

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
-- Table structure for table `J_banner`
--

DROP TABLE IF EXISTS `J_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(10) NOT NULL default 'banner',
  `name` varchar(50) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_banner`
--

LOCK TABLES `J_banner` WRITE;
/*!40000 ALTER TABLE `J_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_bannerclient`
--

DROP TABLE IF EXISTS `J_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `contact` varchar(60) NOT NULL default '',
  `email` varchar(60) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_bannerclient`
--

LOCK TABLES `J_bannerclient` WRITE;
/*!40000 ALTER TABLE `J_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_bannerfinish`
--

DROP TABLE IF EXISTS `J_bannerfinish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_bannerfinish` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(10) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `impressions` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(50) NOT NULL default '',
  `datestart` datetime default NULL,
  `dateend` datetime default NULL,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_bannerfinish`
--

LOCK TABLES `J_bannerfinish` WRITE;
/*!40000 ALTER TABLE `J_bannerfinish` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_bannerfinish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_calendarpdf`
--

DROP TABLE IF EXISTS `J_calendarpdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_calendarpdf` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Location` varchar(40) NOT NULL,
  `PDF` varchar(255) NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_calendarpdf`
--

LOCK TABLES `J_calendarpdf` WRITE;
/*!40000 ALTER TABLE `J_calendarpdf` DISABLE KEYS */;
INSERT INTO `J_calendarpdf` VALUES (81,'Paoli','CALOCT13.pdf',10,2013),(82,'Paoli','CALNOV13.pdf',11,2013),(79,'Paoli','CALAUG13.pdf',8,2013),(83,'Paoli','CALDEC13.pdf',12,2013),(86,'Narberth','August 20132.pdf',8,2013),(87,'Narberth','September 20131.pdf',9,2013),(88,'Narberth','October 2013.pdf',10,2013),(89,'Narberth','November 2013.pdf',11,2013),(90,'Narberth','December 2013.pdf',12,2013),(92,'Paoli','CALSEP131.pdf',9,2013);
/*!40000 ALTER TABLE `J_calendarpdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_categories`
--

DROP TABLE IF EXISTS `J_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `image` varchar(100) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(10) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_section` (`section`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_categories`
--

LOCK TABLES `J_categories` WRITE;
/*!40000 ALTER TABLE `J_categories` DISABLE KEYS */;
INSERT INTO `J_categories` VALUES (1,0,'Classes','Newcomer Class','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(3,2,'Intermediate Tap Class','Intermediate Tap Class','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(4,0,'Bronze I&II','Bronze I&II','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(5,0,'Bronze Variety','Bronze Variety','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,7,0,0,''),(6,0,'Bronze Technique','Bronze Technique','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,8,0,0,''),(7,0,'Pre Bronze','Pre Bronze','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(8,0,'Bronze II','Bronze II','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,5,0,0,''),(9,0,'Bronze III & IV','Bronze III & IV','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,6,0,0,''),(10,0,'Holiday','Holiday','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,15,0,0,''),(19,0,'Silver Technique','Silver Technique','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,12,0,0,''),(12,0,'Club Dance','Club Dance','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,14,0,0,''),(13,0,'Bronze All Levels','Bronze All Levels','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,9,0,0,''),(14,0,'Newcomer Practice','Newcomer Practice','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,13,0,0,''),(15,0,'Dance Competitions','Dance Competitions','','com_easycalendar','','',0,0,'0000-00-00 00:00:00',NULL,16,0,0,''),(16,0,'Silver I-II','Silver I-II','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,10,0,0,''),(17,0,'Silver III-IV','Silver III-IV','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,11,0,0,''),(18,0,'Latin Variety','Latin Variety','','com_easycalendar','','',1,0,'0000-00-00 00:00:00',NULL,17,0,0,'');
/*!40000 ALTER TABLE `J_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_components`
--

DROP TABLE IF EXISTS `J_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_components`
--

LOCK TABLES `J_components` WRITE;
/*!40000 ALTER TABLE `J_components` DISABLE KEYS */;
INSERT INTO `J_components` VALUES (22,'Manage Categories','',0,21,'option=com_easycalendar&act=categories','Manage Categories','com_easycalendar',0,'js/ThemeOffice/component.png',0,''),(23,'Manage Events','',0,21,'option=com_easycalendar&act=events','Manage Events','com_easycalendar',1,'../administrator/components/com_easycalendar/icons/16x16_date.png',0,''),(20,'Web Links','option=com_links',0,0,'option=com_links','Web Links','com_links',0,'',0,''),(19,'Categories','option=com_category',0,20,'option=com_category','Categories','com_category',0,'',0,''),(21,'Easy Calendar','option=com_easycalendar',0,0,'option=com_easycalendar','Easy Calendar','com_easycalendar',0,'../administrator/components/com_easycalendar/icons/16x16_date.png',0,''),(10,'Front Page','option=com_frontpage',0,0,'','Manage Front Page Items','com_frontpage',0,'js/ThemeOffice/component.png',1,''),(26,'Photo Galleries','option=com_gallery',0,0,'option=com_gallery','Photo Galleries','com_gallery',0,'',0,''),(15,'Login','option=com_login',0,0,'','','com_login',0,'',1,''),(16,'Search','option=com_search',0,0,'','','com_search',0,'',1,''),(24,'News','option=com_news',0,0,'option=com_news','News','com_news',0,'',0,''),(25,'Client Testimonials','option=com_testimonial',0,0,'option=com_testimonial','Client Testimonials','com_testimonial',0,'',0,''),(27,'Hot Topics','option=com_hot_topics',0,0,'option=com_hot_topics','Hot Topics','com_hot_topics',0,'',0,''),(28,'Upcoming Events','option=com_event',0,0,'option=com_event','Upcoming Events','com_event',0,'',0,''),(29,'Manage Print Calendars','option=com_calendarpdf',0,0,'option=com_calendarpdf','Manage Print Calendars','com_calendarpdf',0,'',0,'');
/*!40000 ALTER TABLE `J_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_contact_details`
--

DROP TABLE IF EXISTS `J_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `con_position` varchar(50) default NULL,
  `address` text,
  `suburb` varchar(50) default NULL,
  `state` varchar(20) default NULL,
  `country` varchar(50) default NULL,
  `postcode` varchar(10) default NULL,
  `telephone` varchar(25) default NULL,
  `fax` varchar(25) default NULL,
  `misc` mediumtext,
  `image` varchar(100) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(100) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_contact_details`
--

LOCK TABLES `J_contact_details` WRITE;
/*!40000 ALTER TABLE `J_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_content`
--

DROP TABLE IF EXISTS `J_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `title_alias` varchar(100) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(100) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_mask` (`mask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_content`
--

LOCK TABLES `J_content` WRITE;
/*!40000 ALTER TABLE `J_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_content_frontpage`
--

DROP TABLE IF EXISTS `J_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_content_frontpage`
--

LOCK TABLES `J_content_frontpage` WRITE;
/*!40000 ALTER TABLE `J_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_content_rating`
--

DROP TABLE IF EXISTS `J_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_content_rating`
--

LOCK TABLES `J_content_rating` WRITE;
/*!40000 ALTER TABLE `J_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_acl_aro`
--

DROP TABLE IF EXISTS `J_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_acl_aro` (
  `aro_id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aro_id`),
  UNIQUE KEY `J_gacl_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `J_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_acl_aro`
--

LOCK TABLES `J_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `J_core_acl_aro` DISABLE KEYS */;
INSERT INTO `J_core_acl_aro` VALUES (10,'users','62',0,'Administrator',0),(11,'users','63',0,'Sharon Thomas',0),(12,'users','64',0,'Marilyn Moran',0),(13,'users','65',0,'andre',0);
/*!40000 ALTER TABLE `J_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `J_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_acl_aro_groups` (
  `group_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  PRIMARY KEY  (`group_id`),
  KEY `parent_id_aro_groups` (`parent_id`),
  KEY `J_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `J_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_acl_aro_groups`
--

LOCK TABLES `J_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `J_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `J_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22),(28,17,'USERS',2,21),(29,28,'Public Frontend',3,12),(18,29,'Registered',4,11),(19,18,'Author',5,10),(20,19,'Editor',6,9),(21,20,'Publisher',7,8),(30,28,'Public Backend',13,20),(23,30,'Manager',14,19),(24,23,'Administrator',15,18),(25,24,'Super Administrator',16,17);
/*!40000 ALTER TABLE `J_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `J_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`section_id`),
  UNIQUE KEY `value_aro_sections` (`value`),
  UNIQUE KEY `J_gacl_value_aro_sections` (`value`),
  KEY `hidden_aro_sections` (`hidden`),
  KEY `J_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_acl_aro_sections`
--

LOCK TABLES `J_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `J_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `J_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `J_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `J_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_acl_groups_aro_map`
--

LOCK TABLES `J_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `J_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `J_core_acl_groups_aro_map` VALUES (25,'',10),(25,'',11),(25,'',12),(25,'',13);
/*!40000 ALTER TABLE `J_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_log_items`
--

DROP TABLE IF EXISTS `J_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_log_items`
--

LOCK TABLES `J_core_log_items` WRITE;
/*!40000 ALTER TABLE `J_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_core_log_searches`
--

DROP TABLE IF EXISTS `J_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_core_log_searches`
--

LOCK TABLES `J_core_log_searches` WRITE;
/*!40000 ALTER TABLE `J_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_easycalendar`
--

DROP TABLE IF EXISTS `J_easycalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_easycalendar` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `startdate` date NOT NULL default '0000-00-00',
  `enddate` date NOT NULL default '0000-00-00',
  `starttime` time NOT NULL default '00:00:00',
  `endtime` time NOT NULL default '00:00:00',
  `name` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=1411 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_easycalendar`
--

LOCK TABLES `J_easycalendar` WRITE;
/*!40000 ALTER TABLE `J_easycalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_easycalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_event`
--

DROP TABLE IF EXISTS `J_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_event` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `Subtitle` varchar(255) NOT NULL,
  `StartDate` date default NULL,
  `EndDate` date default NULL,
  `Description` text NOT NULL,
  `LinkName` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Photo1` varchar(255) NOT NULL,
  `Caption1` varchar(255) NOT NULL,
  `Alt1` varchar(255) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Caption2` varchar(255) NOT NULL,
  `Alt2` varchar(255) NOT NULL,
  `Photo3` varchar(255) NOT NULL,
  `Caption3` varchar(255) NOT NULL,
  `Alt3` varchar(255) NOT NULL,
  `Gallery` int(11) NOT NULL,
  `Document` varchar(255) NOT NULL,
  `DocumentLink` varchar(255) NOT NULL,
  `Archived` enum('false','true') NOT NULL default 'false',
  `Published` enum('false','true') NOT NULL default 'false',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_event`
--

LOCK TABLES `J_event` WRITE;
/*!40000 ALTER TABLE `J_event` DISABLE KEYS */;
INSERT INTO `J_event` VALUES (4,'Spring Freestyle Competition','','2013-03-22','2013-03-23','Tyson\'s Corner, Virginia','','http://','','','','','','','','','',0,'','','false','false',0),(19,'Fall Showcase & Medal Ball','','2013-11-08','2013-11-08','Radnor Valley Country Club','','http://','','','','','','','','','',0,'','','false','true',9),(6,'Summer Showcase & Medal Ball','Radnor Valley Country Club','2013-06-06','2013-06-06','Medal Ball is a gala dance event honoring students who \"graduate\" from one level of their dance program to the next. Medal Balls also afford students the opportunity to enjoy their dancing in a fun and elegant setting. Medal Ball is also an event where students “showcase” dance routines with personalized choreography. These routines make an exciting addition to your Medalist Program because they allow you to develop showmanship and musical expression along with your social dance skills.','','http://','','','','','','','','','',0,'','','false','true',1),(18,'Washington National Dance-O-Rama','Gaylord National Resort & Hotel, National Harbor, MD','2013-12-12','2013-12-15','Held near Washington, DC, Dance-O-Rama is a four day dance vacation where people from all over our country join in on all the fun of dancing. The Dance-O-Rama event consists of both a Showcase and a Freestyles portion along with professional competitions.\r\n\r\n','','http://','','','','','','','','','',0,'','','false','true',15),(17,'Fall Freestyle Competition','Tysons Corner, VA','2013-09-20','2013-09-21','The Washington Area Freestyles is an exciting weekend-long dance event that brings together students from different regional Arthur Murray studios to cheer on their friends and participate in dances of their choice. The weekend is full of activities such as dance competitions, cocktail parties, dinner dances and thrilling professional shows.','','http://','','','','','','','','','',0,'','','false','true',3),(20,'Superama','Wynn Casino & Resort, Las Vegas, NV','2013-10-30','2013-11-04','This spectacular, international event held in Sin City, draws dancers from all over the world. It’s the “Super Bowl” of dance and it takes place in the gorgeous Wynn Hotel & Resort. An incredible five day event that is filled with showcases and freestyles with dancers in all levels, an extravagant costume ball, world renowned professional shows and lots of social dancing! This annual event is always one to attend!','','http://','','','','','','','','','',0,'','','false','true',8);
/*!40000 ALTER TABLE `J_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_gallery`
--

DROP TABLE IF EXISTS `J_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_gallery` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Published` enum('false','true') NOT NULL default 'false',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_gallery`
--

LOCK TABLES `J_gallery` WRITE;
/*!40000 ALTER TABLE `J_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_groups`
--

DROP TABLE IF EXISTS `J_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_groups`
--

LOCK TABLES `J_groups` WRITE;
/*!40000 ALTER TABLE `J_groups` DISABLE KEYS */;
INSERT INTO `J_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `J_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_hot_topics`
--

DROP TABLE IF EXISTS `J_hot_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_hot_topics` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `SubTitle` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Article` text NOT NULL,
  `LinkName` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Photo1` varchar(255) NOT NULL,
  `Caption1` varchar(255) NOT NULL,
  `Photo2` varchar(255) NOT NULL,
  `Caption2` varchar(255) NOT NULL,
  `Photo3` varchar(255) NOT NULL,
  `Caption3` varchar(255) NOT NULL,
  `Gallery` int(11) NOT NULL,
  `DocumentLink` varchar(255) NOT NULL,
  `Document` varchar(255) NOT NULL,
  `Archived` enum('false','true') NOT NULL default 'false',
  `Published` enum('false','true') NOT NULL default 'false',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_hot_topics`
--

LOCK TABLES `J_hot_topics` WRITE;
/*!40000 ALTER TABLE `J_hot_topics` DISABLE KEYS */;
INSERT INTO `J_hot_topics` VALUES (11,'Dance Spies Spotted in Philadelphia','','Arthur Murray Dance Studio of Narberth','2011-06-06','Our stealthy dancers were commissioned to complete a series of espionage missions in and around Philadelphia. Don\'t miss the action! Click the link to view our Arthur Murray spies blending into the Philadelphia scenery!','View our spies in action!','http://arthurmurraynarberth.shutterfly.com/narberth','','','','','','',0,'','','false','true',0);
/*!40000 ALTER TABLE `J_hot_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_links`
--

DROP TABLE IF EXISTS `J_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_links` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Section` int(11) unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Copy` text NOT NULL,
  `Photo` text NOT NULL,
  `Url` text NOT NULL,
  `LinkName` varchar(255) NOT NULL,
  `Target` enum('false','true') NOT NULL default 'false',
  `Published` enum('false','true') NOT NULL default 'false',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `Section` (`Section`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_links`
--

LOCK TABLES `J_links` WRITE;
/*!40000 ALTER TABLE `J_links` DISABLE KEYS */;
INSERT INTO `J_links` VALUES (3,0,'Arthur Murray International, Coral Gables','','','http://www.arthurmurray.com/','','true','true',0),(4,0,'The Knot','','Medium_link_070507.gif','http://www.theknot.com/','','true','true',0);
/*!40000 ALTER TABLE `J_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_linksSections`
--

DROP TABLE IF EXISTS `J_linksSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_linksSections` (
  `link_id` int(11) unsigned NOT NULL,
  `section_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_linksSections`
--

LOCK TABLES `J_linksSections` WRITE;
/*!40000 ALTER TABLE `J_linksSections` DISABLE KEYS */;
INSERT INTO `J_linksSections` VALUES (2,2),(3,2),(4,3);
/*!40000 ALTER TABLE `J_linksSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_links_sections`
--

DROP TABLE IF EXISTS `J_links_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_links_sections` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `Published` enum('false','true') NOT NULL default 'false',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_links_sections`
--

LOCK TABLES `J_links_sections` WRITE;
/*!40000 ALTER TABLE `J_links_sections` DISABLE KEYS */;
INSERT INTO `J_links_sections` VALUES (2,'Arthur Murray Locations','true'),(3,'Wedding Resources','true');
/*!40000 ALTER TABLE `J_links_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_mambots`
--

DROP TABLE IF EXISTS `J_mambots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_mambots` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_mambots`
--

LOCK TABLES `J_mambots` WRITE;
/*!40000 ALTER TABLE `J_mambots` DISABLE KEYS */;
INSERT INTO `J_mambots` VALUES (1,'MOS Image','mosimage','content',0,-10000,1,1,0,0,'0000-00-00 00:00:00',''),(2,'MOS Pagination','mospaging','content',0,10000,1,1,0,0,'0000-00-00 00:00:00',''),(3,'Legacy Mambot Includer','legacybots','content',0,1,0,1,0,0,'0000-00-00 00:00:00',''),(4,'SEF','mossef','content',0,3,1,0,0,0,'0000-00-00 00:00:00',''),(5,'MOS Rating','mosvote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(6,'Search Content','content.searchbot','search',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(7,'Search Weblinks','weblinks.searchbot','search',0,2,1,1,0,0,'0000-00-00 00:00:00',''),(8,'Code support','moscode','content',0,2,0,0,0,0,'0000-00-00 00:00:00',''),(9,'No WYSIWYG Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(10,'TinyMCE WYSIWYG Editor','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced'),(11,'MOS Image Editor Button','mosimage.btn','editors-xtd',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(12,'MOS Pagebreak Editor Button','mospage.btn','editors-xtd',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(13,'Search Contacts','contacts.searchbot','search',0,3,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Search Categories','categories.searchbot','search',0,4,1,0,0,0,'0000-00-00 00:00:00',''),(15,'Search Sections','sections.searchbot','search',0,5,1,0,0,0,'0000-00-00 00:00:00',''),(16,'Email Cloaking','mosemailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00',''),(17,'GeSHi','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(18,'Search Newsfeeds','newsfeeds.searchbot','search',0,6,1,0,0,0,'0000-00-00 00:00:00',''),(19,'Load Module Positions','mosloadposition','content',0,6,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `J_mambots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_menu`
--

DROP TABLE IF EXISTS `J_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(25) default NULL,
  `name` varchar(100) default NULL,
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_menu`
--

LOCK TABLES `J_menu` WRITE;
/*!40000 ALTER TABLE `J_menu` DISABLE KEYS */;
INSERT INTO `J_menu` VALUES (1,'mainmenu','Home','index.php?option=com_frontpage','components',1,0,10,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'leading=1\r\nintro=2\r\nlink=1\r\nimage=1\r\npage_title=0\r\nheader=Welcome to the Frontpage\r\norderby_sec=front\r\nprint=0\r\npdf=0\r\nemail=0\r\nback_button=0'),(2,'mainmenu','Calendar of Events','index.php?option=com_easycalendar','components',1,0,21,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'');
/*!40000 ALTER TABLE `J_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_messages`
--

DROP TABLE IF EXISTS `J_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` varchar(230) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_messages`
--

LOCK TABLES `J_messages` WRITE;
/*!40000 ALTER TABLE `J_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_messages_cfg`
--

DROP TABLE IF EXISTS `J_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_messages_cfg`
--

LOCK TABLES `J_messages_cfg` WRITE;
/*!40000 ALTER TABLE `J_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_modules`
--

DROP TABLE IF EXISTS `J_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(10) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_modules`
--

LOCK TABLES `J_modules` WRITE;
/*!40000 ALTER TABLE `J_modules` DISABLE KEYS */;
INSERT INTO `J_modules` VALUES (1,'Polls','',1,'right',0,'0000-00-00 00:00:00',1,'mod_poll',0,0,1,'',0,0),(2,'User Menu','',2,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,1,1,'menutype=usermenu',1,0),(3,'Main Menu','',1,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu',1,0),(4,'Login Form','',3,'left',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,0),(5,'Syndicate','',4,'left',65,'2011-06-03 12:39:48',1,'mod_rssfeed',0,0,1,'',1,0),(6,'Latest News','',4,'user1',0,'0000-00-00 00:00:00',1,'mod_latestnews',0,0,1,'',1,0),(7,'Statistics','',4,'left',0,'0000-00-00 00:00:00',0,'mod_stats',0,0,1,'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=',0,0),(8,'Who\'s Online','',1,'right',0,'0000-00-00 00:00:00',1,'mod_whosonline',0,0,1,'online=1\nusers=1\nmoduleclass_sfx=',0,0),(9,'Popular','',6,'user2',0,'0000-00-00 00:00:00',1,'mod_mostread',0,0,1,'',0,0),(10,'Template Chooser','',6,'left',0,'0000-00-00 00:00:00',0,'mod_templatechooser',0,0,1,'show_preview=1',0,0),(11,'Archive','',7,'left',0,'0000-00-00 00:00:00',0,'mod_archive',0,0,1,'',1,0),(12,'Sections','',8,'left',0,'0000-00-00 00:00:00',0,'mod_sections',0,0,1,'',1,0),(13,'Newsflash','',1,'top',0,'0000-00-00 00:00:00',1,'mod_newsflash',0,0,1,'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=',0,0),(14,'Related Items','',9,'left',0,'0000-00-00 00:00:00',0,'mod_related_items',0,0,1,'',0,0),(15,'Search','',1,'user4',0,'0000-00-00 00:00:00',1,'mod_search',0,0,0,'',0,0),(16,'Random Image','',9,'right',0,'0000-00-00 00:00:00',1,'mod_random_image',0,0,1,'',0,0),(17,'Top Menu','',1,'user3',65,'2011-06-03 12:39:37',1,'mod_mainmenu',0,0,0,'menutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0',1,0),(18,'Banners','',1,'banner',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'banner_cids=\nmoduleclass_sfx=\n',1,0),(19,'Components','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_components',0,99,1,'',1,1),(20,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',0,'mod_popular',0,99,1,'',0,1),(21,'Latest Items','',4,'cpanel',0,'0000-00-00 00:00:00',0,'mod_latest',0,99,1,'',0,1),(22,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',0,'mod_stats',0,99,1,'',0,1),(23,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',0,'mod_unread',0,99,1,'',1,1),(24,'Online Users','',2,'header',0,'0000-00-00 00:00:00',0,'mod_online',0,99,1,'',1,1),(25,'Full Menu','',1,'top',0,'0000-00-00 00:00:00',1,'mod_fullmenu',0,99,1,'',1,1),(26,'Pathway','',1,'pathway',0,'0000-00-00 00:00:00',1,'mod_pathway',0,99,1,'',1,1),(27,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,99,1,'',1,1),(28,'System Message','',1,'inset',0,'0000-00-00 00:00:00',1,'mod_mosmsg',0,99,1,'',1,1),(29,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',0,'mod_quickicon',0,99,1,'',1,1),(30,'Other Menu','',2,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=othermenu\nmenu_style=vert_indent\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nclass_sfx=\nmoduleclass_sfx=\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=',0,0),(31,'Wrapper','',10,'left',0,'0000-00-00 00:00:00',0,'mod_wrapper',0,0,1,'',0,0),(32,'Logged','',0,'cpanel',0,'0000-00-00 00:00:00',0,'mod_logged',0,99,1,'',0,1);
/*!40000 ALTER TABLE `J_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_modules_menu`
--

DROP TABLE IF EXISTS `J_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_modules_menu`
--

LOCK TABLES `J_modules_menu` WRITE;
/*!40000 ALTER TABLE `J_modules_menu` DISABLE KEYS */;
INSERT INTO `J_modules_menu` VALUES (1,1),(2,0),(3,0),(4,1),(5,1),(6,1),(6,2),(6,4),(6,27),(6,36),(8,1),(9,1),(9,2),(9,4),(9,27),(9,36),(10,1),(13,0),(15,0),(17,0),(18,0),(30,0);
/*!40000 ALTER TABLE `J_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_news`
--

DROP TABLE IF EXISTS `J_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_news` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Title` varchar(255) NOT NULL,
  `SubTitle` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Article` text NOT NULL,
  `LinkName` varchar(255) NOT NULL,
  `Url` text NOT NULL,
  `Photo1` text NOT NULL,
  `Caption1` varchar(255) NOT NULL,
  `Photo2` text NOT NULL,
  `Caption2` varchar(255) NOT NULL,
  `Photo3` text NOT NULL,
  `Caption3` varchar(255) NOT NULL,
  `Gallery` int(11) NOT NULL,
  `DocumentLink` varchar(255) NOT NULL,
  `Document` varchar(255) NOT NULL,
  `Archived` enum('false','true') NOT NULL default 'false',
  `Published` enum('false','true') NOT NULL default 'false',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_news`
--

LOCK TABLES `J_news` WRITE;
/*!40000 ALTER TABLE `J_news` DISABLE KEYS */;
INSERT INTO `J_news` VALUES (14,'Monopoly','Earn \"Murray Money\" at this year\'s Festival!','Sharon Thomas','2010-05-06','It\'s always a rollicking-good time at Arthur Murray Narberth! Join us for Monopoly this year and be a dance tycoon! Earn money by attending lessons and events and by bringing guests, and then use those big bucks to bid on awesome Arthur Murray gear! We\'ve outdone ourselves this year - come see for yourself!','','','Mr. Moneybags 1.jpg','','','','','',0,'','','false','false',0),(13,'Game of Life','The Narberth Festival','Sharon Thomas','2009-05-15','The Fun and Wacky Narberth Group is having a ball with the Festival.  You never know what you\'ll find if you pop in for a Thursday Night Club Dance!  We even had a Nun at this party!','','','IMG_0049.JPG','','IMG_0052.JPG','','IMG_0053.JPG','',0,'','','false','false',1);
/*!40000 ALTER TABLE `J_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_newsfeeds`
--

DROP TABLE IF EXISTS `J_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_newsfeeds`
--

LOCK TABLES `J_newsfeeds` WRITE;
/*!40000 ALTER TABLE `J_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_photo`
--

DROP TABLE IF EXISTS `J_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_photo` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `GID` int(10) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Photo` text NOT NULL,
  `Caption` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `Published` enum('false','true') NOT NULL default 'false',
  PRIMARY KEY  (`id`),
  KEY `GID` (`GID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_photo`
--

LOCK TABLES `J_photo` WRITE;
/*!40000 ALTER TABLE `J_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_poll_data`
--

DROP TABLE IF EXISTS `J_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(4) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_poll_data`
--

LOCK TABLES `J_poll_data` WRITE;
/*!40000 ALTER TABLE `J_poll_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_poll_date`
--

DROP TABLE IF EXISTS `J_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_poll_date`
--

LOCK TABLES `J_poll_date` WRITE;
/*!40000 ALTER TABLE `J_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_poll_menu`
--

DROP TABLE IF EXISTS `J_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_poll_menu`
--

LOCK TABLES `J_poll_menu` WRITE;
/*!40000 ALTER TABLE `J_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_polls`
--

DROP TABLE IF EXISTS `J_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_polls`
--

LOCK TABLES `J_polls` WRITE;
/*!40000 ALTER TABLE `J_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_sections`
--

DROP TABLE IF EXISTS `J_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `image` varchar(100) NOT NULL default '',
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(10) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_sections`
--

LOCK TABLES `J_sections` WRITE;
/*!40000 ALTER TABLE `J_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_session`
--

DROP TABLE IF EXISTS `J_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_session` (
  `username` varchar(50) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_session`
--

LOCK TABLES `J_session` WRITE;
/*!40000 ALTER TABLE `J_session` DISABLE KEYS */;
INSERT INTO `J_session` VALUES ('','1376944911','50ae00846d73a63410594f52ee073bbe',1,0,'',0),('sharon','1375831841','48fa3a12ab03a28abae951e290f4bf6e',1,63,'Super Administrator',0),('','1376944879','40222a629615e15220ff6d97f613601b',1,0,'',0);
/*!40000 ALTER TABLE `J_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_stats_agents`
--

DROP TABLE IF EXISTS `J_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_stats_agents`
--

LOCK TABLES `J_stats_agents` WRITE;
/*!40000 ALTER TABLE `J_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_template_positions`
--

DROP TABLE IF EXISTS `J_template_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_template_positions` (
  `id` int(11) NOT NULL auto_increment,
  `position` varchar(10) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_template_positions`
--

LOCK TABLES `J_template_positions` WRITE;
/*!40000 ALTER TABLE `J_template_positions` DISABLE KEYS */;
INSERT INTO `J_template_positions` VALUES (1,'left',''),(2,'right',''),(3,'top',''),(4,'bottom',''),(5,'inset',''),(6,'banner',''),(7,'header',''),(8,'footer',''),(9,'newsflash',''),(10,'legals',''),(11,'pathway',''),(12,'toolbar',''),(13,'cpanel',''),(14,'user1',''),(15,'user2',''),(16,'user3',''),(17,'user4',''),(18,'user5',''),(19,'user6',''),(20,'user7',''),(21,'user8',''),(22,'user9',''),(23,'advert1',''),(24,'advert2',''),(25,'advert3',''),(26,'icon',''),(27,'debug','');
/*!40000 ALTER TABLE `J_template_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_templates_menu`
--

DROP TABLE IF EXISTS `J_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_templates_menu` (
  `template` varchar(50) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`template`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_templates_menu`
--

LOCK TABLES `J_templates_menu` WRITE;
/*!40000 ALTER TABLE `J_templates_menu` DISABLE KEYS */;
INSERT INTO `J_templates_menu` VALUES ('rhuk_solarflare_ii',0,0),('joomla_admin',0,1);
/*!40000 ALTER TABLE `J_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_testimonial`
--

DROP TABLE IF EXISTS `J_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_testimonial` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `Section` int(11) unsigned NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Copy` text NOT NULL,
  `Photo` text NOT NULL,
  `Published` enum('false','true') NOT NULL default 'false',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `Section` (`Section`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_testimonial`
--

LOCK TABLES `J_testimonial` WRITE;
/*!40000 ALTER TABLE `J_testimonial` DISABLE KEYS */;
INSERT INTO `J_testimonial` VALUES (5,0,'Tom Barr','Tom Barr','','************Spoiler Alert Start****************\r\nDo not read any further, I am about to reveal a life changing event that occurs once you begin your dance instruction at the Arthur Murray of Narberth Studio.  If you are someone who likes to be surprised with the ending of a book or movie, do not read any further.  You have been warned.\r\n************Spoiler Alert Start****************\r\n\r\nBallroom Dancing is a social activity and involves more than one person; you can\'t learn it in a vacuum.  Lessons are given in a group and private setting.  Here is the first surprise, the group lessons are equally as important as the private lessons.  I bet you thought it was only the private lessons didn\'t you?  The private lessons let you one on one with your instructor, concentrate on the technique and execution of a dance element or measure, and that is important.  Equally important, the group lesson introduces you to the variety of dances available, common elements shared by each dance and that you are not alone.\r\n\r\nThis is the life changing part.  You will meet fellow students and discover they are having as much fun as you (read \"work\") learning how to dance.  The next thing you know you will be getting together to compare war stories about how the lessons are proceeding.  You will compare notes on where to dance a Salsa or Swing, or where to find a place with a good dance floor for a Waltz or Foxtrot?  You may find yourself making plans to celebrate New Year\'s Eve together.  Your friends before dancing will begin to wonder what happened to you and you will feel obligated to see them.  When you do, your thoughts will wander to the fact; you could be dancing with us tonight and having more fun.  Don\'t worry, we understand and will save a dance for you, and don\'t look now, you have become a dancer.\r\n\r\nWell that\'s it; I now have to work on some Latin motion issues with my rhythm dances.  At the end of January I will have the chance to be Fred Astaire for a night at a White Tie affair with live music in eight ballrooms.  Naturally, I will be with my fellow dancers.  I hope to see you at the studio!','IMG_0005.JPG','true',0),(6,0,'Ted and Joyce Eisenberg','Ted and Joyce Eisenberg','','Whether we are Dancing With the Stars or doing the Cha Cha and Triple Swing at a family wedding, we have fun -- and feel confident -- thanks to Arthur Murray and their terrific teachers.  People say we look good and ask if we\'ve had lessons.','eisenburg.jpg','true',0),(7,0,'Ray and Denice Gorte','Ray and Denice Gorte','','Once you\'ve entered the door of the Arthur Murray Dance Studio in Narberth, you will wonder why you waited so long to do so.  Your first lesson will have you magnetically drawn to the joy of dancing and music and eagerly anticipating your return to the studio for another infusion of bliss.  Before you know it, you have a bona fide, wonderfully healthy, and divine addiction.\r\n\r\nThe Narberth Arthur Murray Studio is staffed by the most consummate professional instructors -- all of whom are abundantly talented, patient, and helpful.  You always leave with the feeling of \"I can\".\r\n\r\nAnd your fellow students?  Nothing compares to the discovery of finding so many like-minded individuals.  All there to learn and to have fun.  What you learn will amaze you and what fun you have will overwhelm you.  It\'s definitely a place where \"everybody knows your name and they\'re always glad you came\".\r\n\r\nSincerely,\r\nDenice','HPIM0111.JPG','true',0),(8,0,'Dan & Cathy Lawson','Dan & Cathy Lawson','Paoli','San Juan, PR 1800 hrs.\r\n\r\nDan & Cathy are dancing their way around Celebrity Solstice as evident to their sightings on board - Stop\r\n\r\nShip\'s officer stops Cathy in theater to tell her that she looked so elegant and smooth during ballroom dance session before formal dinner - Stop\r\n\r\nA man comes up to Dan while he is standing in line for Ice Cream and tells him, \"You\'re the guy that dances really well,\" in the best English he could muster - Stop\r\n\r\nLast night the two danced the night away in two different venues- at times the only couple on the dance floor. They are getting plenty of practice with Rumba, Cha Cha, Triple Swing, and have had opportunity to Waltz, and (believe it or not) Tango - Stop\r\n\r\nOne last note- the Captain of the Ship also commented on that \"smooth couple dancing in the main foyer\" - Stop\r\n\r\nAll for now, Cathy & Dan - Out','photo(25).JPG','true',0),(9,0,'Cathy Harmer','Cathy Harmer','Paoli','I wanted to tell you all about a fabulous weekend I had dancing in a dance competition in Tyson\'s Corner, Virginia. Last weekend I competed with my instructor/partner Davis Rideout...and had an absolute blast! I started dancing in July after a 10 year hiatus and Davis asked me to dance in competition with him. We danced 6 dances \r\n(waltz, foxtrot, tango, triple step swing, rumba and cha cha) and it was nerve wracking in the beginning, but was incredibly fun and exciting at the same time. I was overwhelmed when I recieved a Top Newcomer Dancer Award at the evening event. See me proudly showing my plaque! \r\n\r\nI have had tremendous success in terms of feeling terrific, making new friends and I must say dropping a few pounds. Well, OK, more than a few...since I have lost 35 pounds since June. This is partly due to the Medifast program I am on, and largely due to the dancing! \r\n\r\nIf any of you have always wanted to dance...but just have not taken the step to go to the studio...come with me some Friday evening for a fun lesson and dance. You are guaranteed to leave happier than when you came in...and you will know some new dance moves!','12777_4100199897668_740325445_n.jpg','true',0);
/*!40000 ALTER TABLE `J_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_users`
--

DROP TABLE IF EXISTS `J_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `username` varchar(25) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_users`
--

LOCK TABLES `J_users` WRITE;
/*!40000 ALTER TABLE `J_users` DISABLE KEYS */;
INSERT INTO `J_users` VALUES (62,'Administrator','admin','jonathan@acquirevisual.com','161f28ba58cba363e28e4ea9590ad137:WsFheDhnOQod1MJr','Super Administrator',0,1,25,'2008-10-28 12:58:32','2011-12-07 06:53:06','','expired=\nexpired_time='),(63,'Sharon Thomas','sharon','sharonclemens@mac.com','89b2ed04cb408ec9d7bfcba48931ccf3:BcFw7b1AFm42Wn9x','Super Administrator',0,0,25,'2008-11-21 11:44:39','2013-06-19 12:36:08','','editor=\nexpired=\nexpired_time='),(64,'Marilyn Moran','marilyn','phillymarketing@gmail.com','1c970aecd0594fe64e465f509d973788:LQuWGnBiVpSNkr5a','Super Administrator',0,0,25,'2010-08-17 13:36:09','0000-00-00 00:00:00','','editor=\nexpired=\nexpired_time='),(65,'andre','andre','andre@everymerchant.com','d8f3b8ff04814f3f7e800027c9bfc39f:u4GiaH9LoBQh7G8I','Super Administrator',0,0,25,'2010-12-01 11:27:02','0000-00-00 00:00:00','','editor=\nexpired=\nexpired_time=');
/*!40000 ALTER TABLE `J_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_usertypes`
--

DROP TABLE IF EXISTS `J_usertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_usertypes` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mask` varchar(11) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_usertypes`
--

LOCK TABLES `J_usertypes` WRITE;
/*!40000 ALTER TABLE `J_usertypes` DISABLE KEYS */;
INSERT INTO `J_usertypes` VALUES (0,'superadministrator',''),(1,'administrator',''),(2,'editor',''),(3,'user',''),(4,'author',''),(5,'publisher',''),(6,'manager','');
/*!40000 ALTER TABLE `J_usertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `J_weblinks`
--

DROP TABLE IF EXISTS `J_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `J_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` varchar(250) NOT NULL default '',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `J_weblinks`
--

LOCK TABLES `J_weblinks` WRITE;
/*!40000 ALTER TABLE `J_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `J_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-19 13:43:59
