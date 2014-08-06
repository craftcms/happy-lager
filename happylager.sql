# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: happylager
# Generation Time: 2014-08-06 22:19:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table craft_assetfiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfiles`;

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` smallint(6) unsigned DEFAULT NULL,
  `height` smallint(6) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(6,1,1,'water-barley-hops.jpg','image',1420,728,192728,'2014-07-30 23:29:17','2014-07-30 22:55:13','2014-07-30 23:29:24','a4061a60-44da-4bdd-baeb-5ea173f34024'),
	(7,1,1,'laptop-desk.jpg','image',440,250,23434,'2014-07-31 21:18:57','2014-07-30 22:57:57','2014-07-31 21:19:00','2c80cb43-4d61-4ce5-9a3d-bfe4b5f4628a'),
	(8,1,1,'coffee-shop.jpg','image',1420,1360,354928,'2014-07-30 23:01:24','2014-07-30 23:01:25','2014-07-30 23:01:25','374e774f-539c-4d1d-b253-7bd5e70d121d'),
	(23,1,1,'augmented-reality.jpg','image',1420,1020,127726,'2014-07-31 22:04:59','2014-07-31 22:02:47','2014-07-31 22:05:01','3fcaa874-780d-4d64-bbc6-3939af253f04'),
	(28,1,1,'video.jpg','image',440,250,11254,'2014-07-31 22:08:33','2014-07-31 22:08:34','2014-07-31 22:08:34','194e3a17-676e-4bb8-b4c7-395f990ad7cc'),
	(29,1,1,'augmented-reality-icons.png','image',960,102,7181,'2014-07-31 22:19:29','2014-07-31 22:19:29','2014-07-31 22:19:29','7252a798-5d07-4427-977f-81db061b5f01'),
	(40,1,1,'awesome-cities.jpg','image',416,215,35420,'2014-07-31 22:22:20','2014-07-31 22:22:21','2014-07-31 22:22:21','20d28672-0cbd-4c3e-addb-0af288ea04a4'),
	(42,1,1,'fist.jpg','image',1420,904,267299,'2014-07-31 23:14:43','2014-07-31 23:14:44','2014-07-31 23:14:44','90b99d72-3104-4e84-9be8-82384c79f524'),
	(43,1,1,'play-squares.jpg','image',960,273,77902,'2014-07-31 23:16:54','2014-07-31 23:16:54','2014-07-31 23:16:54','af33e426-15f7-4677-9ba3-65d66f8a4f1c'),
	(44,1,1,'pong.png','image',1420,394,14719,'2014-07-31 23:18:17','2014-07-31 23:18:18','2014-07-31 23:18:18','676cef56-6788-4b48-87bf-91058001e9f6'),
	(59,1,1,'gallery.png','image',1440,480,769267,'2014-08-06 22:11:20','2014-08-06 20:36:49','2014-08-06 22:11:26','a58240ce-a8d4-465c-9545-f128cd84f6b3'),
	(60,1,1,'bar.jpg','image',960,463,97367,'2014-08-06 21:31:46','2014-08-06 21:31:46','2014-08-06 21:31:46','4c204c73-0ace-4d40-aac0-04e6deeb3840'),
	(72,1,1,'macbook.jpg','image',440,284,24005,'2014-08-06 21:33:55','2014-08-06 21:33:56','2014-08-06 21:33:56','04cb3cc1-ae5a-4788-82e5-b9ef3176f9c3');

/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetfolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfolders`;

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,1,'Site Assets','','2014-07-30 22:43:56','2014-07-30 22:43:56','20095f95-422a-46cc-a5d0-3bc6b0a4da20');

/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetindexdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetindexdata`;

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assetsources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetsources`;

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;

INSERT INTO `craft_assetsources` (`id`, `name`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Site Assets','Local','{\"path\":\"assets\\/site\\/\",\"url\":\"\\/assets\\/site\\/\"}',1,53,'2014-07-30 22:43:56','2014-07-30 22:43:56','0193dc64-5499-4e28-95dd-f8f603154851');

/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransformindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransformindex`;

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assettransforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransforms`;

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categories`;

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups`;

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_content`;

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading` text COLLATE utf8_unicode_ci,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_subheading` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_heading`, `field_body`, `field_subheading`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',NULL,NULL,NULL,NULL,'2014-07-29 18:21:32','2014-07-29 18:21:32','59077408-b18f-4041-8894-37cc7c7adff4'),
	(2,2,'en','Homepage','Welcome to Happylager.dev!','<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Happylager.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>',NULL,'2014-07-29 18:21:35','2014-07-29 18:21:35','73fccf4e-5208-46d9-8f88-99e78ecf855e'),
	(4,4,'en','Barrel Aged Digital Natives','What’s more important?',NULL,'Experience or raw skill','2014-07-30 21:02:31','2014-07-31 23:27:19','8ff26e7c-5c9d-46a7-873b-c74425789122'),
	(5,6,'en','water-barley-hops',NULL,NULL,NULL,'2014-07-30 22:55:13','2014-07-30 23:29:24','a68629d1-4b98-4993-afe5-0c48f6b764ca'),
	(6,7,'en','laptop-desk',NULL,NULL,NULL,'2014-07-30 22:57:57','2014-07-31 21:19:00','a271b7be-317d-4fec-966a-643ef947b8a4'),
	(7,8,'en','coffee-shop',NULL,NULL,NULL,'2014-07-30 23:01:25','2014-07-30 23:01:25','35e4f7c8-d0a8-4e57-b3a4-50271a85ad7c'),
	(12,23,'en','augmented-reality',NULL,NULL,NULL,'2014-07-31 22:02:47','2014-07-31 22:05:01','fffd2381-62dc-49fb-9995-1bac4fac7761'),
	(13,24,'en','The Future of Augmented Reality','Your iPhone Is No Longer a Way To Hide',NULL,'But is now a way to connect with the world','2014-07-31 22:04:17','2014-07-31 23:27:12','6937fd4c-d3cb-47d0-b0c2-c9dc6ede5f07'),
	(16,28,'en','video',NULL,NULL,NULL,'2014-07-31 22:08:34','2014-07-31 22:08:34','a1bdd8fe-6660-426c-81bd-1cde9683b032'),
	(17,29,'en','augmented-reality-icons',NULL,NULL,NULL,'2014-07-31 22:19:29','2014-07-31 22:19:29','19970bd8-b6fa-4ecc-a4a1-5c7ca77399af'),
	(18,40,'en','awesome-cities',NULL,NULL,NULL,'2014-07-31 22:22:21','2014-07-31 22:22:21','3ca1cbfa-7770-42ff-bc2e-038b6f18ebf5'),
	(19,42,'en','fist',NULL,NULL,NULL,'2014-07-31 23:14:44','2014-07-31 23:14:44','ca7e0cc2-05e3-4ea2-ad2d-6a3595941a00'),
	(20,43,'en','play-squares',NULL,NULL,NULL,'2014-07-31 23:16:54','2014-07-31 23:16:54','c935e488-6fdc-46e7-8436-d23a749bc496'),
	(21,44,'en','pong',NULL,NULL,NULL,'2014-07-31 23:18:18','2014-07-31 23:18:18','8e35f434-8919-40d0-b406-c0bba1516ff4'),
	(22,45,'en','Bringing Out Play','At the Crossroads of Good and Great',NULL,'Is a question of priority','2014-07-31 23:20:59','2014-07-31 23:27:06','a54a9de6-a9ca-4876-90eb-ddddc77a2454'),
	(23,56,'en',NULL,NULL,NULL,NULL,'2014-07-31 23:26:07','2014-07-31 23:26:56','61040196-3832-400d-b93e-3518b8db19d3'),
	(24,57,'en','A Boring Title','Some Boring Content',NULL,'There Must Be More','2014-08-06 20:24:25','2014-08-06 21:34:52','be00287f-7186-49e6-af71-bd61f9e65946'),
	(25,59,'en','gallery',NULL,NULL,NULL,'2014-08-06 20:36:49','2014-08-06 22:11:26','9cb1e47a-d7cc-44e1-b67e-72810378f2d1'),
	(26,60,'en','bar',NULL,NULL,NULL,'2014-08-06 21:31:46','2014-08-06 21:31:46','d16c45e0-93f6-4afc-a6b6-037d5679cddd'),
	(27,61,'en','How Deep the Rabbit Hole Goes','Make Complex Layouts',NULL,'Using Images and Pull Quotes All in the Flow of the Text','2014-08-06 21:32:48','2014-08-06 21:49:58','46fd1164-58a6-4604-88d8-4b148d74186e'),
	(28,72,'en','macbook',NULL,NULL,NULL,'2014-08-06 21:33:56','2014-08-06 21:33:56','0ddb9a58-9710-4284-968c-455706de870d');

/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_deprecationerrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_deprecationerrors`;

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements`;

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_idx` (`archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'User',1,0,'2014-07-29 18:21:32','2014-07-29 18:21:32','b66b2bfe-badb-478a-81ff-1fceb638a019'),
	(2,'Entry',1,0,'2014-07-29 18:21:35','2014-07-29 18:21:35','f20120a9-7cb6-4c53-8c06-6041a39cc056'),
	(4,'Entry',1,0,'2014-07-30 21:02:31','2014-07-31 23:27:19','8b6c79cf-8e2a-464d-a50f-833445bab37d'),
	(6,'Asset',1,0,'2014-07-30 22:55:13','2014-07-30 23:29:24','d1e0a2aa-b87a-492a-9ea4-25bbfa85e261'),
	(7,'Asset',1,0,'2014-07-30 22:57:57','2014-07-31 21:19:00','5d3dbc7c-a2c6-402f-a95a-1c1367e6346c'),
	(8,'Asset',1,0,'2014-07-30 23:01:25','2014-07-30 23:01:25','d1d0c9e7-a055-4054-af1c-24af70d98689'),
	(9,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','a8680541-518f-49e8-9aa0-47ec9acdb6b6'),
	(10,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','2422ea39-7a29-4f40-bf1b-f4a2c6adc569'),
	(11,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','2ee107c6-3401-4884-b63d-fedfdb2b05e5'),
	(12,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','3e53821a-1e96-47d8-a7f2-3d17b023a7c3'),
	(13,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','8d7308d5-3159-4d1a-a7d1-be38d044eb46'),
	(14,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','47acdbd6-a59f-4956-b78d-bac65ce8be3e'),
	(15,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','eb7f2dc9-d5ff-4444-9a20-528b0a814ff5'),
	(16,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','2fc99995-3319-4e40-afd8-a3a558be7d78'),
	(17,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','1611383f-e7ad-4e13-a83b-a0539c3f4cf5'),
	(18,'MatrixBlock',1,0,'2014-07-30 23:02:16','2014-07-31 23:27:20','1114e010-83ff-48e6-91a7-c7cec380f311'),
	(23,'Asset',1,0,'2014-07-31 22:02:47','2014-07-31 22:05:01','00efc6e7-e867-4876-a556-3339351537a6'),
	(24,'Entry',1,0,'2014-07-31 22:04:17','2014-07-31 23:27:12','09fec6f1-89bf-425e-9fe6-a2d632bb6cf3'),
	(25,'MatrixBlock',1,0,'2014-07-31 22:04:17','2014-07-31 23:27:12','dc20721f-cbcd-4c15-8289-a3882c4773ff'),
	(28,'Asset',1,0,'2014-07-31 22:08:34','2014-07-31 22:08:34','a6723024-904e-41c2-8467-5f8b2bef226e'),
	(29,'Asset',1,0,'2014-07-31 22:19:29','2014-07-31 22:19:29','75724019-641a-475d-a1dc-effdd5a50e2b'),
	(30,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:12','e8871ca8-2e14-40f8-ae5e-1555a1786e8d'),
	(31,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','cb003e20-015f-4d3c-9d42-b91d794d0fe1'),
	(32,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','2904c8fa-b0ce-4067-ad56-b1a387a833cf'),
	(33,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','9a8913dd-1fff-4998-accf-791b06d08559'),
	(34,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','2a8166ed-689e-48de-b083-e7585981bcf6'),
	(35,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','734d0e37-f1e0-4353-b4bf-d6e1711fd98b'),
	(36,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','de1a16b5-adcf-4928-b954-dbb890ab491b'),
	(37,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','feaf69df-3b41-4e3e-b215-5bab2189b5db'),
	(38,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','3054748a-5d1e-4cf7-8a4b-d0e336173185'),
	(39,'MatrixBlock',1,0,'2014-07-31 22:20:21','2014-07-31 23:27:13','8cd813dc-8dd5-4b20-a57d-d3f22eca3a2d'),
	(40,'Asset',1,0,'2014-07-31 22:22:21','2014-07-31 22:22:21','5b702218-93b2-41aa-a0ce-7054d508921c'),
	(41,'MatrixBlock',1,0,'2014-07-31 22:22:28','2014-07-31 23:27:13','331bd2de-e441-42ae-b191-135e2e099b16'),
	(42,'Asset',1,0,'2014-07-31 23:14:44','2014-07-31 23:14:44','dd4fc1cc-a290-4b04-b3f4-e262a5cd494a'),
	(43,'Asset',1,0,'2014-07-31 23:16:54','2014-07-31 23:16:54','63ec5b02-ec70-40c5-9ddf-cbb02d223a42'),
	(44,'Asset',1,0,'2014-07-31 23:18:18','2014-07-31 23:18:18','29703024-ed2d-43ea-8b17-cedc503e4b75'),
	(45,'Entry',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','328b2654-1f59-4a00-8437-c6d0fb1808bf'),
	(46,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','9148d0d8-0104-46f1-9c7b-f80fe437c1e1'),
	(47,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','39144d80-2045-4127-83fa-2babc84f8394'),
	(48,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','f355dffe-ac28-4b60-930a-64dbb87a2aec'),
	(49,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','3c2a5f48-c8a8-45ba-a8eb-1fb525ab105d'),
	(50,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','c2dc586b-f969-4e84-b634-9425b98bc2ae'),
	(51,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','57d8bdce-0146-45e9-9f8d-b82788d6baaf'),
	(52,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','6158b2de-d6d6-416e-9951-61dad7777cc1'),
	(53,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','fd0c8f21-2c78-45eb-8c3f-58ee386e30b7'),
	(54,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','dc3b2510-de46-4566-bdf1-8243c1e6b47a'),
	(55,'MatrixBlock',1,0,'2014-07-31 23:20:59','2014-07-31 23:27:06','1d549b45-5cdc-44b9-9d17-9ec3130c2ebf'),
	(56,'User',1,0,'2014-07-31 23:26:07','2014-07-31 23:26:56','6789fefc-5acc-450f-a619-5d446b9ac1f5'),
	(57,'Entry',1,0,'2014-08-06 20:24:25','2014-08-06 21:34:52','bbafb246-8148-4918-8f42-3686127de8b9'),
	(58,'MatrixBlock',1,0,'2014-08-06 20:24:25','2014-08-06 21:34:52','28804a97-cae9-4602-95b6-4649403498d9'),
	(59,'Asset',1,0,'2014-08-06 20:36:49','2014-08-06 22:11:26','ae05e691-1fcf-488c-95b9-896a9f7c04f3'),
	(60,'Asset',1,0,'2014-08-06 21:31:46','2014-08-06 21:31:46','e6edb6b5-9b94-47e1-b7a9-0da6ebf74a5d'),
	(61,'Entry',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','584942bd-d91b-4799-96ff-f10b7be450e2'),
	(62,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','e4cc5fc4-3ffa-4e3a-b2bf-29c285566790'),
	(63,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','cfa29e45-5530-450d-bea1-3e1de2c4d6e3'),
	(64,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','caa335f4-1ab7-417a-b653-ec755633a12d'),
	(65,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','fc7739fd-1620-42f2-8465-3b62a904a021'),
	(66,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','478a6d4c-bc58-4428-b093-519a93621da1'),
	(67,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','0deb8f8d-636d-4a14-86d7-4b84ed96b1fc'),
	(68,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','50d4ab7c-d0ca-4f14-a916-51a78fa303f2'),
	(69,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','424042df-73cc-4ad2-94c1-82904a8d17dd'),
	(70,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','11ab6f5b-6eab-4628-9995-4c3283c554d5'),
	(71,'MatrixBlock',1,0,'2014-08-06 21:32:48','2014-08-06 21:49:58','fba79122-da03-4f0f-8b7f-7c7a91ecd41d'),
	(72,'Asset',1,0,'2014-08-06 21:33:56','2014-08-06 21:33:56','c85d6702-ead2-483b-b357-55bbdc061056'),
	(73,'MatrixBlock',1,0,'2014-08-06 21:34:12','2014-08-06 21:49:58','f1f5b6a6-92a8-464f-ad9f-487cea36d137');

/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements_i18n`;

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en','',NULL,1,'2014-07-29 18:21:32','2014-07-29 18:21:32','3de169cc-23ea-4e64-be61-921ad79267f8'),
	(2,2,'en','homepage','__home__',1,'2014-07-29 18:21:35','2014-07-29 18:21:35','f920f3e1-d004-4e8f-8281-897f0f72e524'),
	(4,4,'en','barrel-aged-digital-natives','news/barrel-aged-digital-natives',1,'2014-07-30 21:02:32','2014-07-31 23:27:20','837aba4e-fe44-4aac-8aa1-dfa1bfe12ab8'),
	(6,6,'en','water-barley-hops',NULL,1,'2014-07-30 22:55:13','2014-07-30 23:29:24','fb83dd55-000f-4d43-a3a0-b3fdeba5b96f'),
	(7,7,'en','laptop-desk',NULL,1,'2014-07-30 22:57:57','2014-07-31 21:19:00','436c1f49-1f4e-41af-ab55-367eeb8a034d'),
	(8,8,'en','coffee-shop',NULL,1,'2014-07-30 23:01:25','2014-07-30 23:01:25','ce827e7a-fa50-4999-9b10-17602e8e08dc'),
	(9,9,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','11ce0ce8-091f-4444-bb9c-461a33d13c68'),
	(10,10,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','b37179c2-0526-4a95-8410-ef1668de75b6'),
	(11,11,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','b9e26083-e732-4489-ba8c-f47a591da321'),
	(12,12,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','aa3a38c9-0fff-4875-a52c-d56c975365d7'),
	(13,13,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','1e9e4b0e-6a94-443f-8a45-6a30ff0fc556'),
	(14,14,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','2c73e3f9-2511-4554-874b-81382897a783'),
	(15,15,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','fbe8b776-df2b-45eb-88ef-81b563c32259'),
	(16,16,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','6d2371f8-919d-4266-9cc7-2414ff868304'),
	(17,17,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','6606fe1d-c497-4ca1-a517-ecef8fb44897'),
	(18,18,'en','',NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','773f1a51-cb75-481f-99d8-e893960e662f'),
	(23,23,'en','augmented-reality',NULL,1,'2014-07-31 22:02:47','2014-07-31 22:05:01','2dc291e5-f8f3-4cce-92b0-128c2b204bfe'),
	(24,24,'en','the-future-of-augmented-reality','news/the-future-of-augmented-reality',1,'2014-07-31 22:04:17','2014-07-31 23:27:12','77d7ce01-9bd6-4e59-85ce-141ae19d6bbc'),
	(25,25,'en','',NULL,1,'2014-07-31 22:04:17','2014-07-31 23:27:12','b9525e15-4408-4d45-874a-844e72b110fe'),
	(28,28,'en','video',NULL,1,'2014-07-31 22:08:34','2014-07-31 22:08:34','97e12993-7399-4fde-8581-54c6d30754fe'),
	(29,29,'en','augmented-reality-icons',NULL,1,'2014-07-31 22:19:29','2014-07-31 22:19:29','d9d57cd0-7f22-43b7-a197-2bed68f15b51'),
	(30,30,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','77399117-fc69-4bfe-9395-772acdae0619'),
	(31,31,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','6cf12c95-4009-482c-81fc-62547634259b'),
	(32,32,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','89724835-87df-4fd8-9862-2534de377b17'),
	(33,33,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','ba28ddbd-de6a-4929-8c73-3abb1277e1e8'),
	(34,34,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','c8c12806-fe91-430e-863c-c1071f6f9fdc'),
	(35,35,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','5eb56cda-7dda-44a9-8484-14ad7e3aa628'),
	(36,36,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','b3a97cf3-0389-4f2b-ad36-533cbc23be96'),
	(37,37,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','dd11b491-d78d-48ed-a973-8930ea8c9979'),
	(38,38,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','bb177956-099f-48bb-9767-5bb068d503d3'),
	(39,39,'en','',NULL,1,'2014-07-31 22:20:21','2014-07-31 23:27:13','45132a5d-71f4-4832-af51-c0e7c68f2360'),
	(40,40,'en','awesome-cities',NULL,1,'2014-07-31 22:22:21','2014-07-31 22:22:21','3cadaaf9-9f20-42dd-954f-77db3b781a45'),
	(41,41,'en','',NULL,1,'2014-07-31 22:22:28','2014-07-31 23:27:13','9c8dbe9e-60de-4583-9c42-cd2f041e0cb4'),
	(42,42,'en','fist',NULL,1,'2014-07-31 23:14:44','2014-07-31 23:14:44','41ddc4ef-ebfd-4634-bc7e-f99fbf14f905'),
	(43,43,'en','play-squares',NULL,1,'2014-07-31 23:16:54','2014-07-31 23:16:54','cdbeef87-bd08-4414-966e-ddc43f2104c6'),
	(44,44,'en','pong',NULL,1,'2014-07-31 23:18:18','2014-07-31 23:18:18','dd46e35d-9910-4081-b278-20b257b00882'),
	(45,45,'en','bringing-out-play','news/bringing-out-play',1,'2014-07-31 23:20:59','2014-07-31 23:27:06','af4960e3-e2e7-489f-9636-c472a22bec70'),
	(46,46,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','00d35ef3-acb9-4f07-83c5-179ea1a78a95'),
	(47,47,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','3e53bf10-fe7c-44a0-979b-001b9400e9d9'),
	(48,48,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','93ed9ec2-ba45-4b73-bcfe-f8a4ecc2dc3d'),
	(49,49,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','d6283cd1-ae8f-469f-8fe3-c5750bf39dd0'),
	(50,50,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','50edc37c-6ba5-41ab-993a-0e5d790c8c5e'),
	(51,51,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','1d3b249e-88e3-4a58-8034-9d75cf355ec6'),
	(52,52,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','c6352bda-c82d-4cbb-bb20-02713c33e775'),
	(53,53,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','81081e42-3b81-4c78-a19a-4b56b5ab772d'),
	(54,54,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','9af6cb08-a7a7-47bf-ba99-8b392ef86748'),
	(55,55,'en','',NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','60b2dc17-8392-4bb2-a197-999c9b3666f5'),
	(56,56,'en','',NULL,1,'2014-07-31 23:26:07','2014-07-31 23:26:56','13ee15e7-7dbe-4eb1-b7af-4a7300323331'),
	(57,57,'en','a-boring-title','news/a-boring-title',1,'2014-08-06 20:24:25','2014-08-06 21:34:52','0bb934b7-9d47-4be5-84f2-6d4c121a459f'),
	(58,58,'en','',NULL,1,'2014-08-06 20:24:25','2014-08-06 21:34:52','b79b55d8-27e9-4adf-80a1-f54f0bcb3f3f'),
	(59,59,'en','gallery',NULL,1,'2014-08-06 20:36:49','2014-08-06 22:11:26','b9005e2e-1dad-4440-8550-8134d762809c'),
	(60,60,'en','bar',NULL,1,'2014-08-06 21:31:46','2014-08-06 21:31:46','618d920e-402b-41d6-9567-5a2fdc3a4f29'),
	(61,61,'en','how-deep-the-rabbit-hole-goes','news/how-deep-the-rabbit-hole-goes',1,'2014-08-06 21:32:48','2014-08-06 21:49:58','ff22b70a-53a0-4d83-b8a6-bb92ba241b0d'),
	(62,62,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','daaed94b-2b47-4498-ab55-06bc2917927d'),
	(63,63,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','f4127af7-734d-41a7-b788-b164ad127eab'),
	(64,64,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','d1b102e5-5fb8-43ff-b181-1dc6767c9009'),
	(65,65,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','7afc9629-4dc8-425f-bac8-9430fe586378'),
	(66,66,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','adfb910b-8d38-4987-ab55-305a6708c7b9'),
	(67,67,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','2d82fa19-3123-461e-8dca-9ec70fcbab90'),
	(68,68,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','23c9931c-6645-407a-b070-cc4f38dec6e4'),
	(69,69,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','df04d097-5fc8-4a37-88f6-f80b71c354a5'),
	(70,70,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','9dcd68fb-a3fe-476e-befc-d6321f5870a5'),
	(71,71,'en','',NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','be6acb1f-9526-439e-acff-d3cbd3279e0c'),
	(72,72,'en','macbook',NULL,1,'2014-08-06 21:33:56','2014-08-06 21:33:56','afedb871-7471-46ae-9deb-d2613abfdad2'),
	(73,73,'en','',NULL,1,'2014-08-06 21:34:12','2014-08-06 21:49:58','32679b24-4811-4c45-859d-9cc647d5620a');

/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_emailmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_emailmessages`;

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entries`;

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,1,1,NULL,'2014-07-29 18:21:35',NULL,'2014-07-29 18:21:35','2014-07-29 18:21:35','53ea9ee4-5daf-4d0f-9955-9385092bbd60'),
	(4,2,2,56,'2014-07-30 21:02:00',NULL,'2014-07-30 21:02:32','2014-07-31 23:27:20','d011f859-bee4-4f35-9159-392f5c7a5e6d'),
	(24,2,2,56,'2014-07-31 22:04:00',NULL,'2014-07-31 22:04:17','2014-07-31 23:27:13','30fcf618-c8df-4b22-b00a-8de18596e87f'),
	(45,2,2,56,'2014-07-31 23:20:00',NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','ad571dd1-4691-434a-b961-0133975beb03'),
	(57,2,2,56,'2014-08-06 20:24:00',NULL,'2014-08-06 20:24:25','2014-08-06 21:34:52','04203d4a-b329-496d-b225-760af8f25446'),
	(61,2,2,56,'2014-08-06 21:32:00',NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','37b64dde-6b73-4846-930a-ca032467d95b');

/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrydrafts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrydrafts`;

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entrytypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrytypes`;

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,3,'Homepage','homepage',1,'Title',NULL,NULL,'2014-07-29 18:21:35','2014-07-29 18:21:35','1f72a359-0ce9-4415-82dc-88dc833073c3'),
	(2,2,69,'News','news',1,'Title',NULL,NULL,'2014-07-29 18:21:35','2014-07-30 22:48:05','eba60966-6218-4985-b901-fff1e5f97a49');

/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entryversions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entryversions`;

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,4,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754151,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\"}}}}}','2014-07-30 21:02:32','2014-07-30 21:02:32','0ddca94a-9de1-443d-a126-6bc211a5c5dc'),
	(2,4,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"5\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\",\"position\":\"\"}}}}}','2014-07-30 22:20:59','2014-07-30 22:20:59','3d8ab0ff-2f7d-4456-9f8b-c55983c21e4f'),
	(3,4,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"5\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\",\"position\":\"right\"}}}}}','2014-07-30 22:23:00','2014-07-30 22:23:00','4363c86a-c246-4985-bd17-b859a59a40c7'),
	(4,4,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong><\\/strong><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"new3\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"new4\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"new5\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"new6\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"new7\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"new8\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p><span style=\\\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 14px; background-color: initial;\\\">Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><\\/span>\"}},\"new9\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-30 23:02:16','2014-07-30 23:02:16','7f706f86-aaec-492a-964e-748469328d3f'),
	(5,4,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-30 23:52:46','2014-07-30 23:52:46','5a673a81-b6aa-46de-8919-a975e667ac1a'),
	(6,24,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844257,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong><\\/strong><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:04:17','2014-07-31 22:04:17','801671f4-d6cc-4841-b58a-401d6d019df3'),
	(7,24,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"new2\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"new4\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"new3\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"new5\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"new6\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"new7\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"new8\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new9\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:20:21','2014-07-31 22:20:21','121626d1-c588-4b4c-9cba-51a4ab8c22fd'),
	(8,24,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"new1\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:22:28','2014-07-31 22:22:28','2f6ba7c8-2c1a-481f-92b8-14bc60f98c2d'),
	(9,24,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"center\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:07:12','2014-07-31 23:07:12','c0c4c74b-6592-4654-ba3e-e56031635917'),
	(10,24,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:09:14','2014-07-31 23:09:14','d71611d1-5426-41c2-9aef-2aa110a07df6'),
	(11,45,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848859,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"new2\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"position\":\"center\"}},\"new3\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"new4\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"new5\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"position\":\"full\"}},\"new6\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"new7\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new9\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"14\":\"Is a question of priority\"}}','2014-07-31 23:20:59','2014-07-31 23:20:59','65372ac4-39c2-4007-9445-0a6b510ef2b2'),
	(12,45,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"47\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"position\":\"center\"}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"14\":\"Is a question of priority\"}}','2014-07-31 23:27:06','2014-07-31 23:27:06','80ab215a-641c-4d48-9746-77dbd6993c8f'),
	(13,24,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:27:13','2014-07-31 23:27:13','19536451-24ae-461e-8a53-313e66f3093e'),
	(14,4,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-31 23:27:20','2014-07-31 23:27:20','1af7d89f-ab91-4c52-bfc9-019164ea2eef'),
	(15,57,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"A Boring Title\",\"slug\":\"a-boring-title\",\"postDate\":1407356665,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>The main content would fill this page and just run on and on and on. Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Catque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;<\\/p>\"}}},\"15\":\"\",\"1\":\"Some Boring Content\",\"14\":\"There Must Be More\"}}','2014-08-06 20:24:25','2014-08-06 20:24:25','78257b2d-6375-4f5d-9e77-0378b145602b'),
	(16,61,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360768,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new3\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"new4\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"new5\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"new6\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"new7\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"new8\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"new9\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"new10\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:32:48','2014-08-06 21:32:48','ae081689-da30-4209-97a6-52ebd3d270b2'),
	(17,61,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"new1\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:34:13','2014-08-06 21:34:13','4a49ae18-db37-4c9f-9ff5-19faa8c8026d'),
	(18,61,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:34:43','2014-08-06 21:34:43','56d58ac7-bdf1-4213-86b6-98db7f7406b4'),
	(19,57,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"A Boring Title\",\"slug\":\"a-boring-title\",\"postDate\":1407356640,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"58\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>The main content would fill this page and just run on and on and on. Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Catque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;<\\/p>\"}}},\"15\":\"\",\"1\":\"Some Boring Content\",\"14\":\"There Must Be More\"}}','2014-08-06 21:34:52','2014-08-06 21:34:52','e39891d7-840d-454b-b326-d64a3c49df30'),
	(20,61,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus quvi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:33','2014-08-06 21:49:33','678cf0da-070f-479f-b3a4-51e9801a18f3'),
	(21,61,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:41','2014-08-06 21:49:41','2abad2fc-d6d2-41ab-ae7b-744f21319409'),
	(22,61,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:58','2014-08-06 21:49:58','31d5a9a9-3df3-43d4-84b7-e0cc37edede3');

/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldgroups`;

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Default','2014-07-29 18:21:34','2014-07-29 18:21:34','0d0b7e16-8d7c-4d6f-9059-d11c473058f4'),
	(2,'News','2014-07-30 22:41:02','2014-07-30 22:41:02','b147602c-0f7e-4a9f-98a6-095a211c5666');

/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayoutfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,3,1,1,1,1,'2014-07-29 18:21:35','2014-07-29 18:21:35','b89e2d0a-4ff7-4223-a0a5-a228d7c94802'),
	(2,3,1,2,1,2,'2014-07-29 18:21:35','2014-07-29 18:21:35','089b2c3c-1340-498e-a4ca-6097ca4b7f73'),
	(97,64,NULL,8,0,1,'2014-07-30 22:47:41','2014-07-30 22:47:41','b92b7b75-6756-4064-93e4-944089a69b91'),
	(98,65,NULL,5,0,1,'2014-07-30 22:47:41','2014-07-30 22:47:41','9a87f273-46c3-40c6-9b05-fbf7eda82558'),
	(99,66,NULL,6,0,1,'2014-07-30 22:47:41','2014-07-30 22:47:41','6b9c57f5-cc1d-41bc-80a1-db1f8e6aeffb'),
	(100,66,NULL,7,0,2,'2014-07-30 22:47:41','2014-07-30 22:47:41','1dbdfa4e-0239-4915-9c8c-16401f2b2d19'),
	(101,67,NULL,9,0,1,'2014-07-30 22:47:41','2014-07-30 22:47:41','bb6ea957-3d51-4a71-aee1-fea85d18a738'),
	(102,67,NULL,10,0,2,'2014-07-30 22:47:41','2014-07-30 22:47:41','f2beddb3-d40e-4518-8330-3c6090b306dc'),
	(103,68,NULL,11,0,1,'2014-07-30 22:47:41','2014-07-30 22:47:41','2d89935e-aabb-4f33-ba5f-fefd125307a6'),
	(104,68,NULL,12,0,2,'2014-07-30 22:47:41','2014-07-30 22:47:41','df3e4ebe-a736-4d02-afaf-c13801430948'),
	(105,68,NULL,13,0,3,'2014-07-30 22:47:41','2014-07-30 22:47:41','716379d7-a154-4a5e-a8d6-c9f2c52837a6'),
	(106,69,4,15,0,1,'2014-07-30 22:48:05','2014-07-30 22:48:05','db77cf4e-c3c0-4699-a96e-478feda1a346'),
	(107,69,4,1,0,2,'2014-07-30 22:48:05','2014-07-30 22:48:05','8e1f99a1-8f79-47b5-b5d8-0f1670afafb2'),
	(108,69,4,14,0,3,'2014-07-30 22:48:05','2014-07-30 22:48:05','65af8c02-2aeb-4492-b871-eda39b9df8d3'),
	(109,69,4,4,0,4,'2014-07-30 22:48:05','2014-07-30 22:48:05','1d585106-352d-498c-9dbe-16b83141e0f2');

/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouts`;

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Tag','2014-07-29 18:21:34','2014-07-29 18:21:34','20d4d9ae-551b-4709-bb34-973215345ee9'),
	(3,'Entry','2014-07-29 18:21:35','2014-07-29 18:21:35','e53fa841-28eb-4419-8863-0ae20dee3fa6'),
	(53,'Asset','2014-07-30 22:43:56','2014-07-30 22:43:56','e050613a-576e-438e-a63f-091e56d1f1bb'),
	(64,'MatrixBlock','2014-07-30 22:47:41','2014-07-30 22:47:41','bc55b810-b89f-45c3-b4d2-d26e7ae71029'),
	(65,'MatrixBlock','2014-07-30 22:47:41','2014-07-30 22:47:41','b3958f52-2be1-48d7-9ee9-cb81f7b22c96'),
	(66,'MatrixBlock','2014-07-30 22:47:41','2014-07-30 22:47:41','570371d0-2162-4602-9504-f7c4b8032383'),
	(67,'MatrixBlock','2014-07-30 22:47:41','2014-07-30 22:47:41','8d54bd6f-4efe-4181-a20b-ea0953f561af'),
	(68,'MatrixBlock','2014-07-30 22:47:41','2014-07-30 22:47:41','0145705a-6bc8-4172-b419-ed4c981c1769'),
	(69,'Entry','2014-07-30 22:48:05','2014-07-30 22:48:05','73faac18-250c-41b2-a080-a1f8897d3265');

/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouttabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,3,'Content',1,'2014-07-29 18:21:35','2014-07-29 18:21:35','8f2b8539-2242-4d5d-b9b8-07b69ebe831f'),
	(4,69,'Content',1,'2014-07-30 22:48:05','2014-07-30 22:48:05','196dd775-240d-4a03-bde9-fdfb3a4dc81b');

/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fields`;

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,2,'Heading','heading','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-29 18:21:34','2014-07-30 22:41:50','9bb293f8-c659-4035-b5d3-e30dbf8d1c5b'),
	(2,1,'Body','body','global',NULL,1,'RichText','{\"configFile\":\"Standard.json\"}','2014-07-29 18:21:34','2014-07-29 18:21:34','08f8ec90-f7ad-4d40-9880-3c96304f1e4e'),
	(3,1,'Tags','tags','global',NULL,0,'Tags','{\"source\":\"taggroup:1\"}','2014-07-29 18:21:35','2014-07-29 18:21:35','e2ad5c95-8eac-4ca4-af87-8f726b52c9c3'),
	(4,2,'Article Body','articleBody','global','',0,'Matrix','{\"maxBlocks\":null}','2014-07-30 20:59:37','2014-07-30 22:47:41','82ac4aa6-3b63-4cb9-a1f6-6cb6a5210a2e'),
	(5,NULL,'Text','text','matrixBlockType:1',NULL,0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2014-07-30 20:59:37','2014-07-30 22:47:41','e03a8ea1-0b9b-4e8c-bbf5-f7197caad45c'),
	(6,NULL,'Pull Quote','pullQuote','matrixBlockType:2',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 21:01:11','2014-07-30 22:47:41','a8a6d843-bec1-4882-98ec-30cb74f5b16f'),
	(7,NULL,'Position','position','matrixBlockType:2',NULL,0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\",\"drop-left\",\"drop-right\"]}','2014-07-30 21:01:11','2014-07-30 22:47:41','a88d73a8-c75f-4c72-aa70-a39dfbbff0fe'),
	(8,NULL,'Heading','heading','matrixBlockType:3',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2014-07-30 22:47:41','631f668a-3658-48a4-89fd-8da5af0a60cc'),
	(9,NULL,'Image','image','matrixBlockType:4',NULL,0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\"}','2014-07-30 22:37:57','2014-07-30 22:47:41','964a1aba-15ac-413f-86c1-03fbf37f30c7'),
	(10,NULL,'Position','position','matrixBlockType:4',NULL,0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\",\"full\",\"drop-left\",\"drop-right\"]}','2014-07-30 22:37:57','2014-07-30 22:47:41','f87a6243-5b7f-4456-9106-ccfb6e03b754'),
	(11,NULL,'Quote','quote','matrixBlockType:5',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2014-07-30 22:47:41','35200549-df46-4092-994a-a8015c5810ba'),
	(12,NULL,'Attribution','attribution','matrixBlockType:5',NULL,0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2014-07-30 22:47:41','41e6fac7-12d7-45c9-ac83-0aa59793d872'),
	(13,NULL,'Position','position','matrixBlockType:5',NULL,0,'PositionSelect','{\"options\":[\"center\",\"full\"]}','2014-07-30 22:37:57','2014-07-30 22:47:41','a5b4b046-1178-45f9-b4cf-3e3bef86e067'),
	(14,2,'Subheading','subheading','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:42:02','2014-07-30 22:42:02','674e53a6-d62c-4322-ae09-349765f1ef17'),
	(15,2,'Featured Image','featuredImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\"}','2014-07-30 22:47:26','2014-07-30 22:47:26','0cbb9736-a84b-4e83-803c-5077f56394a9');

/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_globalsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_globalsets`;

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_info`;

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'2.1',2566,'2.1.1','2014-07-23 20:05:17',2,'Happylager','http://happylager.dev','UTC',1,0,'stable','2014-07-29 18:21:29','2014-07-30 21:00:01','3ebb42f0-5296-4d41-b31e-4dc4882dd453');

/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_locales`;

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	('en',1,'2014-07-29 18:21:30','2014-07-29 18:21:30','4ef18483-8a41-4505-a0a1-b4cf2be89294');

/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocks`;

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `ownerLocale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(9,4,4,1,NULL,1,'2014-07-30 23:02:16','2014-07-31 23:27:20','95dd2776-0616-49fc-b47d-c48b0f42ec66'),
	(10,4,4,2,NULL,2,'2014-07-30 23:02:16','2014-07-31 23:27:20','ca74240d-8649-4d53-a029-2e435b1591e0'),
	(11,4,4,4,NULL,3,'2014-07-30 23:02:16','2014-07-31 23:27:20','eb7aac49-2f44-4f4d-8848-61ae2037877f'),
	(12,4,4,3,NULL,4,'2014-07-30 23:02:16','2014-07-31 23:27:20','83524b1b-8362-40c8-958b-253fa65040ab'),
	(13,4,4,1,NULL,5,'2014-07-30 23:02:16','2014-07-31 23:27:20','aa854f17-eb58-40da-aa09-2048ac72066f'),
	(14,4,4,3,NULL,6,'2014-07-30 23:02:16','2014-07-31 23:27:20','3521c77d-4f60-4ed6-b2f6-c2409ba19c03'),
	(15,4,4,1,NULL,7,'2014-07-30 23:02:16','2014-07-31 23:27:20','f0cc77f2-83d8-4967-90a1-ab525e591376'),
	(16,4,4,4,NULL,8,'2014-07-30 23:02:16','2014-07-31 23:27:20','6281d25d-63c5-44dd-94d7-58da3b65aca3'),
	(17,4,4,3,NULL,9,'2014-07-30 23:02:16','2014-07-31 23:27:20','6b95578b-1584-47fd-8bd9-d714ee2aa3b6'),
	(18,4,4,1,NULL,10,'2014-07-30 23:02:16','2014-07-31 23:27:20','f103246c-759e-4a17-afff-51f7b898e59c'),
	(25,24,4,1,NULL,1,'2014-07-31 22:04:17','2014-07-31 23:27:12','48fb1d2c-355c-4a10-81ad-39794a6fb6a0'),
	(30,24,4,2,NULL,2,'2014-07-31 22:20:21','2014-07-31 23:27:13','382a5b52-ad0d-4388-9632-2d03ffd8384f'),
	(31,24,4,4,NULL,3,'2014-07-31 22:20:21','2014-07-31 23:27:13','d7312f60-2be1-4455-9711-271a7cba3424'),
	(32,24,4,3,NULL,4,'2014-07-31 22:20:21','2014-07-31 23:27:13','d7444e91-5957-4828-ac47-61163fffac3c'),
	(33,24,4,1,NULL,6,'2014-07-31 22:20:21','2014-07-31 23:27:13','30e83f60-1b15-4b6b-aa3e-9b6364399fac'),
	(34,24,4,5,NULL,7,'2014-07-31 22:20:21','2014-07-31 23:27:13','f38bf9e0-2f39-4d6c-bd2a-c81e3c65dc13'),
	(35,24,4,3,NULL,8,'2014-07-31 22:20:21','2014-07-31 23:27:13','4f6de08b-e0af-42e1-bc5f-cef922479960'),
	(36,24,4,1,NULL,9,'2014-07-31 22:20:21','2014-07-31 23:27:13','43e8ccbb-fabc-4ff3-a00f-54555529b0d2'),
	(37,24,4,4,NULL,10,'2014-07-31 22:20:21','2014-07-31 23:27:13','d2ca7cc5-4bd0-4c6b-866f-1b493f260b2d'),
	(38,24,4,3,NULL,11,'2014-07-31 22:20:21','2014-07-31 23:27:13','2de1cb4a-4953-4b6a-9c84-a2efc958ba02'),
	(39,24,4,1,NULL,12,'2014-07-31 22:20:21','2014-07-31 23:27:13','8f0da717-6c38-45c0-9191-68519cd57369'),
	(41,24,4,4,NULL,5,'2014-07-31 22:22:28','2014-07-31 23:27:13','c45be028-eb34-41c5-b6a7-92fd04709ca0'),
	(46,45,4,1,NULL,1,'2014-07-31 23:20:59','2014-07-31 23:27:06','49f900fa-aad1-47a7-acdd-f689d4ae2262'),
	(47,45,4,4,NULL,2,'2014-07-31 23:20:59','2014-07-31 23:27:06','a79e3493-5e63-4605-9394-56505dfdbd04'),
	(48,45,4,3,NULL,3,'2014-07-31 23:20:59','2014-07-31 23:27:06','beed1aba-2499-4342-be9d-03ae7413a1ab'),
	(49,45,4,1,NULL,4,'2014-07-31 23:20:59','2014-07-31 23:27:06','5de1a535-c082-4410-b1d6-76682a52982e'),
	(50,45,4,4,NULL,5,'2014-07-31 23:20:59','2014-07-31 23:27:06','064ef82e-07ac-4944-9eb6-f3ecba739285'),
	(51,45,4,3,NULL,6,'2014-07-31 23:20:59','2014-07-31 23:27:06','d2dd3c7c-318f-458c-becc-3c747e043aaa'),
	(52,45,4,1,NULL,7,'2014-07-31 23:20:59','2014-07-31 23:27:06','8cab92a1-0e42-4e7b-8b93-33e8b54bd2e4'),
	(53,45,4,2,NULL,8,'2014-07-31 23:20:59','2014-07-31 23:27:06','51b4bef6-407d-442f-9a35-eccedc89dbd5'),
	(54,45,4,3,NULL,9,'2014-07-31 23:20:59','2014-07-31 23:27:06','09295003-273f-4fda-8aa8-8f8d41fbd44d'),
	(55,45,4,1,NULL,10,'2014-07-31 23:20:59','2014-07-31 23:27:06','4d71f4be-d9d5-4105-b2fb-e35e6c44687b'),
	(58,57,4,1,NULL,1,'2014-08-06 20:24:25','2014-08-06 21:34:52','01c5b642-f5ab-41ac-95c4-40ecd480eec8'),
	(62,61,4,1,NULL,1,'2014-08-06 21:32:48','2014-08-06 21:49:58','cc70cb10-2c5e-4a64-be06-2ccf1984082e'),
	(63,61,4,1,NULL,3,'2014-08-06 21:32:48','2014-08-06 21:49:58','9d080e6a-21c5-4131-a2d0-8e72ebe097f3'),
	(64,61,4,4,NULL,4,'2014-08-06 21:32:48','2014-08-06 21:49:58','3b9a944b-a955-4d15-9211-2c0c101eba5e'),
	(65,61,4,3,NULL,5,'2014-08-06 21:32:48','2014-08-06 21:49:58','c989d6aa-46e3-4a5f-af1a-04064af4a7b4'),
	(66,61,4,1,NULL,6,'2014-08-06 21:32:48','2014-08-06 21:49:58','91a94ecc-bfbc-4f5c-b434-c09f7bd1a01d'),
	(67,61,4,2,NULL,7,'2014-08-06 21:32:48','2014-08-06 21:49:58','33202ceb-0c8d-490b-abd4-32246f675a6a'),
	(68,61,4,1,NULL,8,'2014-08-06 21:32:48','2014-08-06 21:49:58','8b67e068-307b-44e4-bb2d-c8641aa94fee'),
	(69,61,4,4,NULL,9,'2014-08-06 21:32:48','2014-08-06 21:49:58','81a1b65c-5b83-4303-b336-933087ff3fc8'),
	(70,61,4,3,NULL,10,'2014-08-06 21:32:48','2014-08-06 21:49:58','aa837782-0876-4182-bd59-2829e5f02ebc'),
	(71,61,4,1,NULL,11,'2014-08-06 21:32:48','2014-08-06 21:49:58','4ac53d06-6471-450c-a2fe-a8eabfba4c6f'),
	(73,61,4,4,NULL,2,'2014-08-06 21:34:12','2014-08-06 21:49:58','eb6c284d-93cf-4314-adc8-eea6c2e1a726');

/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocktypes`;

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,4,65,'Text','text',2,'2014-07-30 20:59:37','2014-07-30 22:47:41','070be8db-f9b0-4605-98ae-e9b54b1af3f6'),
	(2,4,66,'Pull Quote','pullQuote',3,'2014-07-30 21:01:11','2014-07-30 22:47:41','daa4f1b9-ebde-4b0e-9cf3-027bf3b8b890'),
	(3,4,64,'Heading','heading',1,'2014-07-30 22:37:57','2014-07-30 22:47:41','1d5e20da-bc96-4a33-b045-8d1fa5870e74'),
	(4,4,67,'Image','image',4,'2014-07-30 22:37:57','2014-07-30 22:47:41','9123201b-837c-4269-9d7c-d5e11bba1e2b'),
	(5,4,68,'Quote','quote',5,'2014-07-30 22:37:57','2014-07-30 22:47:41','97ff3c80-2398-4ca5-9d03-c3b8727c6eb2');

/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_articlebody
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_articlebody`;

CREATE TABLE `craft_matrixcontent_articlebody` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text_text` text COLLATE utf8_unicode_ci,
  `field_pullQuote_pullQuote` text COLLATE utf8_unicode_ci,
  `field_pullQuote_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading_heading` text COLLATE utf8_unicode_ci,
  `field_image_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_quote_quote` text COLLATE utf8_unicode_ci,
  `field_quote_attribution` text COLLATE utf8_unicode_ci,
  `field_quote_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_articlebody_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_articlebody_locale_idx` (`locale`),
  CONSTRAINT `craft_matrixcontent_articlebody_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_articlebody_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_articlebody` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_articlebody` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_articlebody` (`id`, `elementId`, `locale`, `field_text_text`, `field_pullQuote_pullQuote`, `field_pullQuote_position`, `field_heading_heading`, `field_image_position`, `field_quote_quote`, `field_quote_attribution`, `field_quote_position`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,9,'en','<p><strong>Our answer is: both.</strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','03734d07-5274-49a2-998e-5e1a5ee4ffad'),
	(3,10,'en',NULL,'Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.','left',NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','beba979f-47c1-4861-99be-4ad7c7dc94b6'),
	(4,11,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','33a161d8-2078-4461-aa49-a3e20b57faf4'),
	(5,12,'en',NULL,NULL,NULL,'The Experience',NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','816aa85d-deb1-45e6-be5b-e826db10ef04'),
	(6,13,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</li></ul>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','70d10b9c-e6d8-4984-a0ef-6cebe28627d5'),
	(7,14,'en',NULL,NULL,NULL,'The Skills',NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','d7307eb9-2694-4234-a409-e826719497bc'),
	(8,15,'en','<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.</p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</li></ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','42924c10-e5c9-4850-b1a0-a604ed6ca600'),
	(9,16,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','f77ca400-2036-4df9-a450-ed4e7e72c84a'),
	(10,17,'en',NULL,NULL,NULL,'In the End',NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','e97ef9c7-fe6d-49aa-ba4f-ed0f5fe9ec14'),
	(11,18,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2014-07-31 23:27:20','ce4605db-8cb5-4a88-a3d9-242ed40c4b43'),
	(12,25,'en','<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium</strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:04:17','2014-07-31 23:27:12','bf333a45-e1b5-45cf-b313-9dff0a5d5323'),
	(13,30,'en',NULL,'Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.','left',NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:12','6ba0ca69-0655-4752-84ca-1ba13a445e72'),
	(14,31,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','e23d955d-9f63-4380-b805-b69cedd551ff'),
	(15,32,'en',NULL,NULL,NULL,'A People-to-People Business',NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','912cec3b-0f42-40e8-8ecb-08c786dc05e0'),
	(16,33,'en','<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','85b9b0ae-5518-4c3b-be8d-2531cd731a41'),
	(17,34,'en',NULL,NULL,NULL,NULL,NULL,'Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.','Charlie Roths, Developers.Google','full','2014-07-31 22:20:21','2014-07-31 23:27:13','ffe0d906-2119-4b7d-81a4-fe199bfe031c'),
	(18,35,'en',NULL,NULL,NULL,'What is Happy Lager Doing About It?',NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','76d5372f-2b5c-4580-9ddb-a479fe4c642c'),
	(19,36,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','38909e90-22f6-423f-983b-e637f81f8a6f'),
	(20,37,'en',NULL,NULL,NULL,NULL,'center',NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','87c826a3-f1f5-400f-904a-d0b6b3c6316c'),
	(21,38,'en',NULL,NULL,NULL,'This is Only the Beginning',NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','f2120067-b7ab-475b-9d76-ff123a7cadc8'),
	(22,39,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2014-07-31 23:27:13','cadbfd19-8917-4697-aa73-05f2ba9077af'),
	(23,41,'en',NULL,NULL,NULL,NULL,'drop-left',NULL,NULL,NULL,'2014-07-31 22:22:28','2014-07-31 23:27:13','7e0c7548-d25a-477e-9e62-8e8a8db3d000'),
	(24,46,'en','<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium</strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','4b7947cc-5271-4730-a1fa-10fe2a50465c'),
	(25,47,'en',NULL,NULL,NULL,NULL,'center',NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','a62767d0-1ac6-48c7-99cb-d334435e74c7'),
	(26,48,'en',NULL,NULL,NULL,'People Love Games',NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','dacd0937-e000-4bbe-9880-b7897c5886e6'),
	(27,49,'en','<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','ac010813-6959-4adc-b8fa-db213fe87d8c'),
	(28,50,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','4efbf1be-ea74-45bc-a0f8-9d39356e20f0'),
	(29,51,'en',NULL,NULL,NULL,'In the Beginning, There Was Pong',NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','1062d157-5a0c-4bc9-8a8b-35db2d811495'),
	(30,52,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','35bcecc1-cdc4-447f-9b44-76b46791e852'),
	(31,53,'en',NULL,'People learn and adapt 36% faster in the environment of play','center',NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','2b74b6cf-d109-4184-ab48-edf0a668df96'),
	(32,54,'en',NULL,NULL,NULL,'Results of our Play',NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','de3b1cd0-0b8c-4704-8e23-9c7b01416fb8'),
	(33,55,'en','<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2014-07-31 23:27:06','81b862aa-cbd2-4e73-b477-4255ca9a6806'),
	(34,58,'en','<p>The main content would fill this page and just run on and on and on. Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>Catque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>Raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 20:24:25','2014-08-06 21:34:52','99d7fc19-3162-44d7-a128-3e8d55b8b90c'),
	(35,62,'en','<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','b2616347-daa1-4edf-8b87-000adccafc65'),
	(36,63,'en','<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.</p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','dc45b513-a358-4eb6-88b9-95e2c16fbdf2'),
	(37,64,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','796c768a-ac68-4d4d-9b47-3b4b2279337c'),
	(38,65,'en',NULL,NULL,NULL,'Outstanding Content Flow',NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','0fd7b99c-e9da-46e5-9e1a-8727f31cc031'),
	(39,66,'en','<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','1c637c9c-198d-403b-a97f-ea9ea64e94a2'),
	(40,67,'en',NULL,'Sooner or later you’re going to realize, just as I did, that there’s a difference between knowing the path and walking the path.','left',NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','83368031-d9bb-40a9-99c3-6274af92a1bd'),
	(41,68,'en','<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','f98214d4-2c42-43b1-9754-83f394991111'),
	(42,69,'en',NULL,NULL,NULL,NULL,'center',NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','95ad1020-f877-4ec2-99ad-9299c068ebf5'),
	(43,70,'en',NULL,NULL,NULL,'Say what you want, where you want to say it',NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','bb93ae53-65ac-4430-ba65-df68abec118f'),
	(44,71,'en','<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2014-08-06 21:49:58','4dcff9ba-b9a6-4d9c-8d20-ee42790659d1'),
	(45,73,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'2014-08-06 21:34:12','2014-08-06 21:49:58','6bb7a64d-ba24-4bd3-a366-68f70f793c0c');

/*!40000 ALTER TABLE `craft_matrixcontent_articlebody` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_migrations`;

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'m000000_000000_base','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','2cb0185d-5043-4678-80f5-a5d16d6ba57a'),
	(2,NULL,'m131203_000000_allow_orphan_assets','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','e0bcebab-57e9-4f1f-927f-5fa77acaf89a'),
	(3,NULL,'m131212_000001_add_missing_fk_to_emailmessages','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','058767d3-0dff-4e5f-923c-4deefa027b0c'),
	(4,NULL,'m140123_000000_update_widget_sort_orders','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b7a63d08-4b6c-4b0c-aa63-a356a6a3b285'),
	(5,NULL,'m140212_000000_clean_up_structures','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b2bcab6f-c4db-49f1-aceb-ff38289b6cbf'),
	(6,NULL,'m140217_000000_add_missing_indexes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','d277ad8d-7c5e-4172-912a-90cb59ab54a8'),
	(7,NULL,'m140223_000000_add_missing_element_rows','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f8ec71e4-6191-4dc3-a31f-12d33f550ae4'),
	(8,NULL,'m140325_000000_fix_matrix_settings','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','504a9c44-a795-41f0-a14c-55ccd048efa3'),
	(9,NULL,'m140401_000000_assignUserPermissions_permission','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','641f3038-d685-408d-b085-4bfb86821dfb'),
	(10,NULL,'m140401_000000_delete_the_deleted_files','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','cba8b5a0-69c6-4c49-9aea-e03ddd2d327b'),
	(11,NULL,'m140401_000001_structures','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a0fd99d2-8a0e-4e6d-a944-20267e721302'),
	(12,NULL,'m140401_000002_elements_i18n_tweaks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','ab3b0144-fffb-42c6-ba22-1ad76809f2ed'),
	(13,NULL,'m140401_000003_tag_groups','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','e40aac2c-f97f-4036-8469-94c8559b2125'),
	(14,NULL,'m140401_000004_add_unverifiedemail_column_to_users','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','747788ad-5419-40ab-a839-fe5a4ae41a83'),
	(15,NULL,'m140401_000005_translatable_matrix_fields','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','45d64ce1-b379-44c0-9281-0fdc96bc45a3'),
	(16,NULL,'m140401_000006_translatable_relation_fields','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','ad87a456-022f-4411-932f-961d4bd92b05'),
	(17,NULL,'m140401_000007_add_enabledbydefault_column_to_sections_i18n','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f412ac5d-c1e0-4402-90ab-f7ac6c32f563'),
	(18,NULL,'m140401_000008_fullpath_to_path','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','315e1268-6e69-43c0-accf-a8cbb300d234'),
	(19,NULL,'m140401_000009_asset_field_layouts','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b787ac57-b3ff-42fd-952b-ec6898f0b371'),
	(20,NULL,'m140401_000010_no_section_default_author','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f889eab3-ded1-4c80-9429-7689af0cf9dc'),
	(21,NULL,'m140401_000011_categories','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','38bbd7d4-2bef-4001-a3af-56e9d190c9ce'),
	(22,NULL,'m140401_000012_templatecaches','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','6c3342d4-c42a-46ef-b8f4-306ee6093673'),
	(23,NULL,'m140401_000013_allow_temp_source_transforms','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','605943f1-e4ac-4a01-bc35-5bac785f18dc'),
	(24,NULL,'m140401_000014_entry_title_formats','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','4d1e9b79-9185-417d-9855-873db0d0df8c'),
	(25,NULL,'m140401_000015_tasks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','c5becdf9-a039-41d6-b9f8-ce0a50c551c9'),
	(26,NULL,'m140401_000016_varchar_classes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a990fc92-ba27-4da6-aac0-b904ef44f56b'),
	(27,NULL,'m140401_000017_add_transform_quality','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','05d987d5-1927-4d31-b4e0-35d63922a4b1'),
	(28,NULL,'m140401_000018_locale_routes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','56c216ba-f1ad-4dd5-af5f-dd3dc4c0a5b8'),
	(29,NULL,'m140401_000019_editions','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','3c7daf5b-1f85-4fa0-8099-37385d053c79'),
	(30,NULL,'m140401_000019_rackspace_auth_api','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','6f119119-2a1f-4d1b-817a-0c1095a8b59b'),
	(31,NULL,'m140401_000020_deprecationerrors_table','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','9d6692c0-985f-4021-82b3-b6d224b4b28a'),
	(32,NULL,'m140401_000021_client_user','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a65114d4-6d13-46cc-a1ae-5534e1dd6258'),
	(33,NULL,'m140401_100000_resave_elements','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','12d3ada2-23af-47b8-96b9-cd18aaa7190b'),
	(34,NULL,'m140401_100002_delete_compiled_templates','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','0c566bb4-43d0-4d8c-9a65-598978b23825'),
	(35,NULL,'m140403_000000_allow_orphan_assets_again','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','9855ceda-7a6b-4212-8afc-9656e8a74d93'),
	(36,NULL,'m140508_000000_fix_disabled_matrix_blocks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','3c7024ac-2dd6-4492-8a7d-684d3124e027'),
	(37,NULL,'m140520_000000_add_id_column_to_templatecachecriteria','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','362eafe1-d008-4566-8c2b-fd559d1ed4c6'),
	(38,NULL,'m140603_000000_draft_names','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','0958fea2-23ba-495f-9d29-3459628e0382'),
	(39,NULL,'m140603_000001_draft_notes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','d3c2cb56-20a0-4f88-bb85-cc5ed3fd89a0'),
	(40,NULL,'m140603_000002_version_nums','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','61c0a466-3cdf-40e0-8fd2-333cc7cc231d'),
	(41,NULL,'m140603_000003_version_toggling','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','90c64b76-6093-455b-b9f2-a9c5955b5b2c'),
	(42,NULL,'m140603_000004_tokens','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','2cc09903-1d63-4061-a791-47355badc5ea'),
	(43,NULL,'m140603_000005_asset_sources','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','41786f40-2d85-4051-ab00-c8323fa79044'),
	(44,NULL,'m140716_000001_allow_temp_source_transforms_again','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','bbf36cc2-afd7-458b-9a0d-cfe65c9403e2');

/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_plugins`;

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'PositionSelect','1.0',1,NULL,'2014-07-30 20:59:46','2014-07-30 20:59:46','2014-07-30 20:59:46','9432456f-d4a4-4c33-b3e1-3aeb3e410de0');

/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_rackspaceaccess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_rackspaceaccess`;

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_relations`;

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(26,15,45,NULL,42,1,'2014-07-31 23:27:06','2014-07-31 23:27:06','0d37e914-b105-4b8a-9ed2-1a9444b3835a'),
	(27,9,47,NULL,43,1,'2014-07-31 23:27:06','2014-07-31 23:27:06','df732920-e2ac-4b86-87e5-231e47a53af6'),
	(28,9,50,NULL,44,1,'2014-07-31 23:27:06','2014-07-31 23:27:06','b0577753-5cb5-47cf-9e66-53af159ddd45'),
	(29,15,24,NULL,23,1,'2014-07-31 23:27:12','2014-07-31 23:27:12','879e2bbb-be11-4f82-b945-59aa2f3cdbf8'),
	(30,9,31,NULL,28,1,'2014-07-31 23:27:13','2014-07-31 23:27:13','d24f8d53-003f-4149-ad89-5379b660a320'),
	(31,9,41,NULL,40,1,'2014-07-31 23:27:13','2014-07-31 23:27:13','7026711c-6d13-487a-8cfb-b191ab73e428'),
	(32,9,37,NULL,29,1,'2014-07-31 23:27:13','2014-07-31 23:27:13','12d689c4-0b4c-4ab6-b851-f3a49c4790d7'),
	(33,15,4,NULL,6,1,'2014-07-31 23:27:20','2014-07-31 23:27:20','5bf175d7-0743-42a1-b2c4-7f0de2ad8622'),
	(34,9,11,NULL,7,1,'2014-07-31 23:27:20','2014-07-31 23:27:20','9f898f2c-2450-45b1-be17-e907d1a33e1c'),
	(35,9,16,NULL,8,1,'2014-07-31 23:27:20','2014-07-31 23:27:20','4afe658a-c5ca-46b3-aa50-53e41c187273'),
	(50,9,73,NULL,72,1,'2014-08-06 21:49:58','2014-08-06 21:49:58','ac17c875-943b-4b40-9c22-11fb2427b592'),
	(51,9,64,NULL,59,1,'2014-08-06 21:49:58','2014-08-06 21:49:58','6139b23f-23f1-4c8d-8eef-18c8acfb3145'),
	(52,9,69,NULL,60,1,'2014-08-06 21:49:58','2014-08-06 21:49:58','055c6313-bea6-412f-944f-ef96ecb10e6c');

/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_routes`;

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_searchindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_searchindex`;

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`)
VALUES
	(1,'username',0,'en',' admin '),
	(1,'firstname',0,'en',''),
	(1,'lastname',0,'en',''),
	(1,'fullname',0,'en',''),
	(1,'email',0,'en',' admin happylager dev '),
	(1,'slug',0,'en',''),
	(2,'field',1,'en',' welcome to happylager dev '),
	(2,'field',2,'en',' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon happylager dev will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
	(2,'slug',0,'en',' homepage '),
	(2,'title',0,'en',' homepage '),
	(3,'field',2,'en',' craft is the cms that s powering happylager dev it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
	(3,'field',3,'en',''),
	(3,'slug',0,'en',' we just installed craft '),
	(3,'title',0,'en',' we just installed craft '),
	(4,'field',4,'en',' our answer is both et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat left whenever something made me uncomfortable i would give it a try so i moved around a bit trying new things out laptop desk right the experience vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat the skills et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga coffee shop full in the end vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(4,'slug',0,'en',' barrel aged digital natives '),
	(4,'title',0,'en',' barrel aged digital natives '),
	(5,'field',6,'en',''),
	(5,'field',7,'en',' right '),
	(5,'slug',0,'en',''),
	(6,'filename',0,'en',' water barley hops jpg '),
	(6,'extension',0,'en',' jpg '),
	(6,'kind',0,'en',' image '),
	(6,'slug',0,'en',' water barley hops '),
	(6,'title',0,'en',' water barley hops '),
	(7,'filename',0,'en',' laptop desk jpg '),
	(7,'extension',0,'en',' jpg '),
	(7,'kind',0,'en',' image '),
	(7,'slug',0,'en',' laptop desk '),
	(7,'title',0,'en',' laptop desk '),
	(8,'filename',0,'en',' coffee shop jpg '),
	(8,'extension',0,'en',' jpg '),
	(8,'kind',0,'en',' image '),
	(8,'slug',0,'en',''),
	(8,'title',0,'en',' coffee shop '),
	(4,'field',15,'en',' water barley hops '),
	(4,'field',1,'en',' what s more important '),
	(4,'field',14,'en',' experience or raw skill '),
	(9,'field',5,'en',' our answer is both et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(9,'slug',0,'en',''),
	(10,'field',6,'en',' whenever something made me uncomfortable i would give it a try so i moved around a bit trying new things out '),
	(10,'field',7,'en',' left '),
	(10,'slug',0,'en',''),
	(11,'field',9,'en',' laptop desk '),
	(11,'field',10,'en',' right '),
	(11,'slug',0,'en',''),
	(12,'field',8,'en',' the experience '),
	(12,'slug',0,'en',''),
	(13,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(13,'slug',0,'en',''),
	(14,'field',8,'en',' the skills '),
	(14,'slug',0,'en',''),
	(15,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(15,'slug',0,'en',''),
	(16,'field',9,'en',' coffee shop '),
	(16,'field',10,'en',' full '),
	(16,'slug',0,'en',''),
	(17,'field',8,'en',' in the end '),
	(17,'slug',0,'en',''),
	(18,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(18,'slug',0,'en',''),
	(3,'field',15,'en',''),
	(3,'field',1,'en',''),
	(3,'field',14,'en',''),
	(3,'field',4,'en',''),
	(19,'filename',0,'en',' water barley hops_1 jpg '),
	(19,'extension',0,'en',' jpg '),
	(19,'kind',0,'en',' image '),
	(19,'slug',0,'en',''),
	(19,'title',0,'en',' water barley hops 1 '),
	(20,'filename',0,'en',' water barley hops_1 jpg '),
	(20,'extension',0,'en',' jpg '),
	(20,'kind',0,'en',' image '),
	(20,'slug',0,'en',''),
	(20,'title',0,'en',' water barley hops 1 '),
	(21,'filename',0,'en',' laptop desk_1 jpg '),
	(21,'extension',0,'en',' jpg '),
	(21,'kind',0,'en',' image '),
	(21,'slug',0,'en',''),
	(21,'title',0,'en',' laptop desk 1 '),
	(22,'filename',0,'en',' laptop desk_1 jpg '),
	(22,'extension',0,'en',' jpg '),
	(22,'kind',0,'en',' image '),
	(22,'slug',0,'en',''),
	(22,'title',0,'en',' laptop desk 1 '),
	(23,'filename',0,'en',' augmented reality jpg '),
	(23,'extension',0,'en',' jpg '),
	(23,'kind',0,'en',' image '),
	(23,'slug',0,'en',' augmented reality '),
	(23,'title',0,'en',' augmented reality '),
	(24,'field',15,'en',' augmented reality '),
	(24,'field',1,'en',' your iphone is no longer a way to hide '),
	(24,'field',14,'en',' but is now a way to connect with the world '),
	(24,'field',4,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est left using sophisticated global positioning technology happy lager extracted health data straight from the air we breathe video right a people to people business awesome cities drop left nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus charlie roths developers google full augmented reality has long sounded like a wild futuristic concept but the technology has actually been around for years what is happy lager doing about it vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga augmented reality icons center this is only the beginning vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(24,'slug',0,'en',' the future of augmented reality '),
	(24,'title',0,'en',' the future of augmented reality '),
	(25,'field',5,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est '),
	(25,'slug',0,'en',''),
	(26,'filename',0,'en',' augmented reality_1 jpg '),
	(26,'extension',0,'en',' jpg '),
	(26,'kind',0,'en',' image '),
	(26,'slug',0,'en',''),
	(26,'title',0,'en',' augmented reality 1 '),
	(27,'filename',0,'en',' augmented reality_1 jpg '),
	(27,'extension',0,'en',' jpg '),
	(27,'kind',0,'en',' image '),
	(27,'slug',0,'en',''),
	(27,'title',0,'en',' augmented reality 1 '),
	(28,'filename',0,'en',' video jpg '),
	(28,'extension',0,'en',' jpg '),
	(28,'kind',0,'en',' image '),
	(28,'slug',0,'en',''),
	(28,'title',0,'en',' video '),
	(29,'filename',0,'en',' augmented reality icons png '),
	(29,'extension',0,'en',' png '),
	(29,'kind',0,'en',' image '),
	(29,'slug',0,'en',''),
	(29,'title',0,'en',' augmented reality icons '),
	(30,'field',6,'en',' using sophisticated global positioning technology happy lager extracted health data straight from the air we breathe '),
	(30,'field',7,'en',' left '),
	(30,'slug',0,'en',''),
	(31,'field',9,'en',' video '),
	(31,'field',10,'en',' right '),
	(31,'slug',0,'en',''),
	(32,'field',8,'en',' a people to people business '),
	(32,'slug',0,'en',''),
	(33,'field',5,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(33,'slug',0,'en',''),
	(34,'field',11,'en',' augmented reality has long sounded like a wild futuristic concept but the technology has actually been around for years '),
	(34,'field',12,'en',' charlie roths developers google '),
	(34,'field',13,'en',' full '),
	(34,'slug',0,'en',''),
	(35,'field',8,'en',' what is happy lager doing about it '),
	(35,'slug',0,'en',''),
	(36,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(36,'slug',0,'en',''),
	(37,'field',9,'en',' augmented reality icons '),
	(37,'field',10,'en',' center '),
	(37,'slug',0,'en',''),
	(38,'field',8,'en',' this is only the beginning '),
	(38,'slug',0,'en',''),
	(39,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(39,'slug',0,'en',''),
	(40,'filename',0,'en',' awesome cities jpg '),
	(40,'extension',0,'en',' jpg '),
	(40,'kind',0,'en',' image '),
	(40,'slug',0,'en',''),
	(40,'title',0,'en',' awesome cities '),
	(41,'field',9,'en',' awesome cities '),
	(41,'field',10,'en',' drop left '),
	(41,'slug',0,'en',''),
	(42,'filename',0,'en',' fist jpg '),
	(42,'extension',0,'en',' jpg '),
	(42,'kind',0,'en',' image '),
	(42,'slug',0,'en',''),
	(42,'title',0,'en',' fist '),
	(43,'filename',0,'en',' play squares jpg '),
	(43,'extension',0,'en',' jpg '),
	(43,'kind',0,'en',' image '),
	(43,'slug',0,'en',''),
	(43,'title',0,'en',' play squares '),
	(44,'filename',0,'en',' pong png '),
	(44,'extension',0,'en',' png '),
	(44,'kind',0,'en',' image '),
	(44,'slug',0,'en',''),
	(44,'title',0,'en',' pong '),
	(45,'field',15,'en',' fist '),
	(45,'field',1,'en',' at the crossroads of good and great '),
	(45,'field',14,'en',' is a question of priority '),
	(45,'field',4,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est play squares center people love games nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum pong full in the beginning there was pong vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga center people learn and adapt 36% faster in the environment of play results of our play vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(45,'slug',0,'en',' bringing out play '),
	(45,'title',0,'en',' bringing out play '),
	(46,'field',5,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est '),
	(46,'slug',0,'en',''),
	(47,'field',9,'en',' play squares '),
	(47,'field',10,'en',' center '),
	(47,'slug',0,'en',''),
	(48,'field',8,'en',' people love games '),
	(48,'slug',0,'en',''),
	(49,'field',5,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum '),
	(49,'slug',0,'en',''),
	(50,'field',9,'en',' pong '),
	(50,'field',10,'en',' full '),
	(50,'slug',0,'en',''),
	(51,'field',8,'en',' in the beginning there was pong '),
	(51,'slug',0,'en',''),
	(52,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(52,'slug',0,'en',''),
	(53,'field',6,'en',' people learn and adapt 36% faster in the environment of play '),
	(53,'field',7,'en',' center '),
	(53,'slug',0,'en',''),
	(54,'field',8,'en',' results of our play '),
	(54,'slug',0,'en',''),
	(55,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(55,'slug',0,'en',''),
	(56,'username',0,'en',' jabbott '),
	(56,'firstname',0,'en',' jonathan '),
	(56,'lastname',0,'en',' abbott '),
	(56,'fullname',0,'en',' jonathan abbott '),
	(56,'email',0,'en',' jabbott happylager dev '),
	(56,'slug',0,'en',''),
	(57,'field',15,'en',''),
	(57,'field',1,'en',' some boring content '),
	(57,'field',14,'en',' there must be more '),
	(57,'field',4,'en',' the main content would fill this page and just run on and on and on raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat catque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(57,'slug',0,'en',' a boring title '),
	(57,'title',0,'en',' a boring title '),
	(58,'field',5,'en',' the main content would fill this page and just run on and on and on raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat catque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(58,'slug',0,'en',''),
	(59,'filename',0,'en',' gallery png '),
	(59,'extension',0,'en',' png '),
	(59,'kind',0,'en',' image '),
	(59,'slug',0,'en',' gallery '),
	(59,'title',0,'en',' gallery '),
	(60,'filename',0,'en',' bar jpg '),
	(60,'extension',0,'en',' jpg '),
	(60,'kind',0,'en',' image '),
	(60,'slug',0,'en',''),
	(60,'title',0,'en',' bar '),
	(61,'field',15,'en',''),
	(61,'field',1,'en',' make complex layouts '),
	(61,'field',14,'en',' using images and pull quotes all in the flow of the text '),
	(61,'field',4,'en',' iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut macbook right nam libero tempore cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus empobus autem quibusdam et aut officiis debis aut tamlibero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in cpa qui officia deserunt mollitia animi id est laborum et dolorum fuga nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat gallery full outstanding content flow et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos left sooner or later you re going to realize just as i did that there s a difference between knowing the path and walking the path facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae bar center say what you want where you want to say it et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(61,'slug',0,'en',' how deep the rabbit hole goes '),
	(61,'title',0,'en',' how deep the rabbit hole goes '),
	(62,'field',5,'en',' iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut '),
	(62,'slug',0,'en',''),
	(63,'field',5,'en',' nam libero tempore cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus empobus autem quibusdam et aut officiis debis aut tamlibero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in cpa qui officia deserunt mollitia animi id est laborum et dolorum fuga nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(63,'slug',0,'en',''),
	(64,'field',9,'en',' gallery '),
	(64,'field',10,'en',' full '),
	(64,'slug',0,'en',''),
	(65,'field',8,'en',' outstanding content flow '),
	(65,'slug',0,'en',''),
	(66,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos '),
	(66,'slug',0,'en',''),
	(67,'field',6,'en',' sooner or later you re going to realize just as i did that there s a difference between knowing the path and walking the path '),
	(67,'field',7,'en',' left '),
	(67,'slug',0,'en',''),
	(68,'field',5,'en',' facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae '),
	(68,'slug',0,'en',''),
	(69,'field',9,'en',' bar '),
	(69,'field',10,'en',' center '),
	(69,'slug',0,'en',''),
	(70,'field',8,'en',' say what you want where you want to say it '),
	(70,'slug',0,'en',''),
	(71,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(71,'slug',0,'en',''),
	(72,'filename',0,'en',' macbook jpg '),
	(72,'extension',0,'en',' jpg '),
	(72,'kind',0,'en',' image '),
	(72,'slug',0,'en',''),
	(72,'title',0,'en',' macbook '),
	(74,'extension',0,'en',' png '),
	(74,'kind',0,'en',' image '),
	(74,'slug',0,'en',''),
	(74,'title',0,'en',' gallery 1 '),
	(73,'field',9,'en',' macbook '),
	(73,'field',10,'en',' right '),
	(73,'slug',0,'en',''),
	(74,'filename',0,'en',' gallery_1 png ');

/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections`;

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'Homepage','homepage','single',1,'index',1,'2014-07-29 18:21:35','2014-07-29 18:21:35','735318f3-e53c-4ce1-8dad-4c7a5c7c5bee'),
	(2,NULL,'News','news','channel',1,'news/_entry',1,'2014-07-29 18:21:35','2014-07-30 23:20:45','f5969f9a-8d3f-487e-9695-cc4e5fbe5efd');

/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections_i18n`;

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',1,'__home__',NULL,'2014-07-29 18:21:35','2014-07-29 18:21:35','629e90fd-e1b9-4204-8c6a-ca995a89b199'),
	(2,2,'en',0,'news/{slug}',NULL,'2014-07-29 18:21:35','2014-07-30 23:20:45','d475908b-9503-4481-9817-2a2bee5e359e');

/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sessions`;

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'098f3ca8e1e3ecf460ffd197a10e58b7fa6906faczozNjoiNjUyZTNmOGYtY2E2MC00YzZhLTliOGEtMTEyZmE0NWQyOGJiIjs=','2014-07-29 18:21:34','2014-07-29 18:21:34','0895ccf1-f722-42dc-ba6d-eaad2f686968'),
	(2,1,'1682014b59be352479e05dbcac3e594a1bf5a946czozNjoiZGI2OTdkNjEtYjk5MC00OWQ0LWE3NWEtNWFjYzU4NDFkNjI5Ijs=','2014-07-30 20:58:47','2014-07-30 20:58:47','41be5132-4add-4245-9247-43918ee03019'),
	(3,1,'ec38baa000ec4bb621f796901d7e4e6ef771a8a0czozNjoiZjU4MTA0ZDItMTNhNi00MWNmLWIxZTgtZmY5M2JiM2JhMzdjIjs=','2014-07-31 21:09:36','2014-07-31 21:09:36','b41ebee2-2197-41c6-82ab-fae3bb829a8f'),
	(4,1,'ca095d004a3ceccc0c3106bfb141ed03a24874c8czozNjoiZTYwYjFmZDQtOGUwNy00ZDBjLWE3MTItOGZmMzU3NTI5OGUyIjs=','2014-08-01 01:36:24','2014-08-01 01:36:24','3e69f2b4-4be0-4a25-825b-dbf2550a81d2'),
	(5,1,'5ea10695ac0f8b4d952ecf4f2a51f924532ebc7fczozNjoiNTcwMWM5NjUtOTRkNC00OTQyLTkzNTItOTA5ZWQwZTllM2I3Ijs=','2014-08-06 20:23:14','2014-08-06 20:23:14','01f1b793-9cc1-40c0-a926-15255b641242'),
	(6,1,'2a82b2b300f854091590d79afd3435a1f7a40a89czozNjoiNDFhYWY1MGItNWE3NC00NTBiLTg2NDktZmEwNDBhNGZhOTM2Ijs=','2014-08-06 21:54:11','2014-08-06 21:54:11','57509de1-6073-40fe-8c18-1ea01ba36ff5');

/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_shunnedmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_shunnedmessages`;

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structureelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structureelements`;

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structures`;

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `movePermission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_systemsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_systemsettings`;

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'email','{\"protocol\":\"php\",\"emailAddress\":\"admin@happylager.dev\",\"senderName\":\"Happylager\"}','2014-07-29 18:21:34','2014-07-29 18:21:34','ea5576dc-1778-49e8-a32e-19e49f3800b2');

/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_taggroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_taggroups`;

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Default','default',1,'2014-07-29 18:21:34','2014-07-29 18:21:34','9d46abfa-f57b-4d86-9674-91ba44ec60cd');

/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tags`;

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tags_name_groupId_unq_idx` (`name`,`groupId`),
  KEY `craft_tags_groupId_fk` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tasks`;

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecachecriteria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecachecriteria`;

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecacheelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecacheelements`;

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecaches`;

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tokens`;

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups`;

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;

INSERT INTO `craft_usergroups` (`id`, `name`, `handle`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Authors','authors','2014-07-31 23:26:48','2014-07-31 23:26:48','8678629f-9c34-4c76-b5fc-5bfdcd44e26a');

/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_usergroups_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups_users`;

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;

INSERT INTO `craft_usergroups_users` (`id`, `groupId`, `userId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,56,'2014-07-31 23:26:56','2014-07-31 23:26:56','65c6a8e4-49f0-48de-bf4a-884f586a4e1c');

/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions`;

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;

INSERT INTO `craft_userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'accesscp','2014-07-31 23:26:48','2014-07-31 23:26:48','9d54f3b4-b41d-4259-9467-058c9afe36c9'),
	(2,'editentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','4ba56acb-117e-461a-92d8-135bc05075f3'),
	(3,'createentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','59d65aa1-2a1a-40c6-910e-f2ca44afd7ea'),
	(4,'publishentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','ce0c71f9-251d-49fe-94ef-b748be9a8549'),
	(5,'deleteentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','b32951a3-c201-4af2-a166-500036d1d84f'),
	(6,'editpeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a636ccb4-0001-4d42-b0fb-98bcf89f3a54'),
	(7,'publishpeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','dc0947cc-eddd-4187-ae3c-55098b2481fa'),
	(8,'deletepeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','ec8a0ddc-00f2-4457-a1b5-4b7758d15b97'),
	(9,'editpeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a4410acb-7054-4493-8866-b6add56c4dae'),
	(10,'publishpeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','bed1592b-2942-4379-85fe-59bb0f1ecaa9'),
	(11,'deletepeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a76119b6-c268-4309-b1cf-8638d2a484f1');

/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;

INSERT INTO `craft_userpermissions_usergroups` (`id`, `permissionId`, `groupId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','c6a196f5-7f90-4966-bc8a-6595512ded4c'),
	(2,2,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','a36fc831-8d98-493b-adf3-862d0e9c5d98'),
	(3,3,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','0ccf0d19-1ec4-4de9-99c1-01b5cfeedfa3'),
	(4,4,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','b4100910-98b7-42f5-843f-47d7142e7f99'),
	(5,5,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','02bbda53-8ef9-4422-b4cf-1e7dec194429'),
	(6,6,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','b5f33f12-3bd9-4d0f-864e-7f05802c0bc8'),
	(7,7,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','fd7a8af6-083f-4bd0-8e98-736e1cfa5d03'),
	(8,8,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','588967da-135d-4bb8-b61b-ea8d06ca2d6a'),
	(9,9,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','fc107e86-3aba-46b2-bfd3-7cd921f94dd1'),
	(10,10,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','bcbe4ac3-7065-4afc-a308-0346e3fb3efa'),
	(11,11,1,'2014-07-31 23:26:48','2014-07-31 23:26:48','d45d40b9-46f5-4c55-8ffb-9a1c74333d57');

/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_users`;

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_users`;

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` enum('active','locked','suspended','pending','archived') COLLATE utf8_unicode_ci DEFAULT 'pending',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `admin`, `client`, `status`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'admin',NULL,NULL,NULL,'admin@happylager.dev','$2a$13$5j8bSRoKQZipjtIg6FXWR.kGRR3UfCL.QeMIt2yTRH1.hCNHLQKtq',NULL,1,0,'active','2014-08-06 21:54:11','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-07-29 18:21:32','2014-07-29 18:21:32','2014-08-06 21:54:11','953aedcd-73c8-4677-b0c5-4241e8fbb14c'),
	(56,'jabbott',NULL,'Jonathan','Abbott','jabbott@happylager.dev',NULL,NULL,0,0,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2014-07-31 23:26:07','2014-07-31 23:26:56','5572f7b0-cc41-4171-91c1-51ed7b02ac76');

/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_widgets`;

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'QuickPost',1,'{\"section\":\"2\"}',1,'2014-07-29 18:21:39','2014-07-29 18:21:39','26f2cb81-7292-4db2-a255-4b4c99cceef4'),
	(2,1,'RecentEntries',2,NULL,1,'2014-07-29 18:21:39','2014-07-29 18:21:39','5b4c637e-d56a-4248-8bb2-c2a1aa6dcdc8'),
	(3,1,'GetHelp',3,NULL,1,'2014-07-29 18:21:39','2014-07-29 18:21:39','5ecc7fca-1a1d-450c-919a-e88895c71668'),
	(4,1,'Updates',4,NULL,1,'2014-07-29 18:21:39','2014-07-29 18:21:39','d4818d12-78d1-4599-9f87-041a243faddd'),
	(5,1,'Feed',5,'{\"url\":\"http:\\/\\/feeds.feedburner.com\\/blogandtonic\",\"title\":\"Blog & Tonic\"}',1,'2014-07-29 18:21:39','2014-07-29 18:21:39','28fc0fd3-6f8a-41cd-ba68-6a2abcbd9b04');

/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
