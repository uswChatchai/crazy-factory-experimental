-- InitializeCreate Stock Ledger table --
DROP TABLE `stock_ledger`;

CREATE TABLE `stock_ledger` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `article_id` int default NULL,
  `bin` varchar(100) default NULL,
  `quantity` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

-- Initialize Quanlity control Aricles table
DROP TABLE `quality_control_articles`;

CREATE TABLE `quality_control_articles` (
  `article_id` int(8) unsigned NOT NULL auto_increment,
  `quantity` int default NULL,
  `qc_id` int(8) default NULL,
  PRIMARY KEY (`article_id`)
) AUTO_INCREMENT=1;


-- Generate simulation data
-- where    article_id between 1 and 1000
--          quantity between 0 and 100
--          qc_id between 716_720
INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (42,720),(18,718),(92,717),(88,720),(43,720),(1,719),(21,717),(90,717),(94,717),(69,719),(84,719),(85,718),(87,717),(6,718),(61,720),(47,718),(12,719),(16,716),(30,719),(10,719),(41,717),(57,716),(84,716),(14,720),(56,717),(93,718),(95,718),(11,720),(66,716),(58,718),(32,720),(3,720),(89,720),(59,719),(95,720),(84,718),(17,717),(66,717),(49,716),(62,717),(65,718),(98,717),(70,720),(99,719),(71,720),(30,717),(79,718),(5,716),(89,718),(87,718),(81,717),(31,718),(20,718),(19,717),(91,720),(60,719),(67,720),(74,720),(80,717),(1,719),(15,718),(26,716),(28,717),(40,718),(62,716),(60,718),(34,717),(75,719),(22,716),(81,718),(65,720),(100,720),(92,720),(76,716),(88,717),(25,717),(53,717),(99,720),(85,720),(7,717),(11,720),(30,716),(44,719),(66,719),(96,719),(50,718),(5,717),(18,718),(20,717),(85,716),(73,720),(90,718),(34,720),(15,719),(51,716),(25,716),(18,716),(23,720),(31,717),(35,719);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (6,717),(51,716),(60,717),(81,720),(50,719),(30,716),(78,720),(50,719),(14,716),(52,718),(24,720),(37,716),(3,719),(66,718),(64,719),(85,716),(57,718),(71,716),(74,720),(19,720),(70,718),(89,720),(16,717),(65,717),(94,718),(50,718),(49,716),(73,717),(3,719),(97,720),(81,719),(21,720),(44,716),(31,716),(71,717),(95,716),(71,716),(30,716),(8,717),(57,720),(83,718),(56,719),(83,718),(72,720),(56,718),(44,720),(76,719),(39,718),(95,720),(25,720),(42,716),(81,719),(49,719),(72,718),(1,716),(36,716),(69,716),(54,717),(95,719),(56,716),(55,716),(79,716),(5,719),(57,719),(28,717),(88,716),(1,717),(10,719),(49,716),(46,716),(26,720),(90,718),(66,716),(88,719),(35,719),(50,718),(53,720),(46,717),(81,719),(49,717),(47,720),(81,716),(70,718),(60,716),(23,717),(55,720),(43,719),(67,716),(22,719),(2,716),(16,719),(78,716),(13,716),(59,718),(19,717),(20,719),(24,719),(59,720),(68,716),(25,719);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (64,718),(39,720),(93,716),(64,718),(97,720),(61,717),(45,719),(0,716),(53,719),(82,720),(69,716),(31,720),(39,716),(75,718),(97,719),(17,718),(38,718),(54,717),(64,717),(59,720),(80,716),(79,717),(12,720),(72,718),(3,716),(15,717),(92,716),(73,717),(48,720),(27,720),(73,716),(78,719),(6,716),(39,717),(31,718),(51,719),(8,720),(28,719),(91,720),(45,718),(16,719),(19,718),(19,720),(28,719),(18,717),(68,717),(75,719),(39,716),(67,720),(93,720),(5,720),(64,720),(30,718),(64,720),(19,717),(48,716),(92,717),(41,716),(7,718),(73,717),(55,720),(40,719),(31,717),(81,717),(85,718),(78,720),(13,719),(39,719),(15,717),(54,717),(86,720),(15,719),(34,718),(49,717),(90,717),(37,717),(49,717),(87,719),(34,717),(44,720),(37,718),(28,720),(2,717),(60,718),(33,719),(58,716),(32,717),(64,720),(26,718),(50,719),(11,720),(27,718),(59,718),(27,719),(26,720),(66,719),(98,718),(28,720),(15,717),(36,720);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (68,717),(88,717),(39,719),(48,716),(53,717),(39,716),(0,719),(66,720),(2,719),(89,717),(80,716),(58,717),(20,720),(99,717),(34,716),(35,716),(87,718),(73,717),(79,718),(73,719),(47,717),(31,719),(1,720),(81,716),(29,717),(13,719),(26,719),(22,716),(60,718),(86,719),(10,716),(9,719),(44,719),(29,716),(20,719),(89,718),(89,716),(17,716),(15,716),(68,716),(65,718),(23,720),(85,720),(52,716),(38,718),(41,720),(50,719),(40,718),(0,720),(82,718),(84,717),(8,718),(45,719),(49,718),(17,719),(2,719),(6,720),(62,718),(10,720),(59,719),(65,720),(83,720),(3,720),(60,718),(74,718),(86,719),(52,720),(42,719),(60,716),(4,717),(26,719),(54,716),(93,719),(81,716),(39,720),(60,717),(2,716),(98,720),(2,718),(60,717),(81,719),(33,720),(83,718),(23,718),(27,720),(16,720),(48,716),(0,720),(1,719),(70,717),(52,718),(85,716),(17,720),(0,720),(15,718),(56,720),(51,716),(76,720),(81,719),(31,720);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (76,719),(60,719),(5,717),(74,719),(15,720),(37,720),(14,716),(88,719),(20,717),(12,720),(51,720),(42,717),(8,719),(10,718),(21,716),(2,717),(50,719),(59,718),(68,716),(35,720),(26,717),(79,720),(24,716),(54,718),(24,718),(26,719),(24,720),(56,717),(17,717),(14,718),(51,716),(80,720),(96,716),(4,718),(46,719),(36,719),(32,717),(95,718),(39,717),(4,720),(71,718),(32,718),(45,717),(25,718),(13,720),(99,718),(69,716),(67,717),(93,720),(6,717),(15,718),(86,716),(41,720),(60,719),(66,716),(14,720),(54,720),(30,717),(76,719),(34,719),(18,719),(78,716),(11,720),(37,720),(20,719),(45,718),(89,716),(1,716),(47,716),(7,719),(15,716),(56,717),(38,718),(55,718),(26,719),(7,720),(95,718),(50,718),(13,719),(77,718),(83,718),(1,716),(61,720),(68,716),(67,719),(3,719),(8,719),(20,718),(14,716),(94,720),(27,716),(63,720),(94,718),(22,718),(34,718),(28,719),(18,719),(73,716),(23,720),(26,719);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (55,717),(69,716),(81,717),(17,719),(69,719),(19,720),(69,717),(98,719),(53,719),(6,716),(84,716),(16,719),(58,719),(41,719),(24,718),(77,717),(4,716),(46,717),(38,720),(36,719),(0,717),(51,720),(5,716),(38,717),(63,716),(100,719),(25,717),(40,720),(14,717),(10,718),(93,720),(96,716),(54,717),(4,720),(69,718),(64,720),(85,716),(63,717),(12,720),(11,720),(99,716),(62,720),(13,720),(64,718),(43,716),(0,720),(89,717),(96,718),(66,720),(71,718),(52,716),(37,719),(68,720),(29,719),(7,717),(23,718),(49,717),(54,719),(59,720),(44,717),(4,719),(66,719),(84,720),(95,717),(65,718),(29,720),(55,719),(7,716),(20,720),(69,718),(10,717),(95,718),(60,718),(68,718),(7,717),(59,719),(60,720),(92,717),(4,718),(36,717),(90,716),(33,719),(29,719),(18,718),(24,718),(30,719),(98,719),(17,717),(96,718),(11,716),(10,719),(96,717),(7,716),(96,716),(14,718),(50,718),(3,719),(20,718),(72,718),(74,717);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (35,719),(29,719),(93,720),(28,717),(25,718),(98,719),(50,719),(49,717),(7,720),(57,718),(86,720),(71,720),(64,716),(53,718),(61,717),(98,720),(38,719),(30,718),(64,716),(25,720),(27,716),(62,716),(96,718),(2,716),(67,716),(70,719),(44,720),(10,718),(29,720),(29,717),(37,719),(86,718),(63,716),(58,720),(61,720),(64,719),(52,717),(58,719),(18,719),(51,718),(65,717),(44,718),(40,720),(86,716),(9,717),(100,719),(99,720),(78,718),(83,718),(3,716),(87,717),(45,716),(78,720),(56,718),(19,717),(97,717),(84,719),(21,716),(84,720),(18,718),(14,716),(64,720),(41,719),(31,718),(38,719),(51,716),(11,716),(94,720),(78,719),(26,718),(27,718),(81,717),(76,719),(12,716),(6,719),(77,720),(15,718),(15,720),(15,720),(38,720),(65,717),(38,720),(10,717),(73,717),(11,717),(2,716),(61,718),(89,717),(45,719),(0,716),(41,719),(95,719),(38,716),(32,719),(81,719),(41,720),(46,717),(12,719),(68,720),(62,717);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (2,717),(10,719),(76,719),(83,717),(96,718),(100,718),(50,717),(89,716),(12,716),(71,718),(15,720),(21,719),(37,718),(26,720),(81,718),(37,719),(8,716),(28,718),(18,717),(83,716),(57,717),(47,718),(63,718),(86,717),(2,717),(29,717),(83,717),(66,719),(62,718),(95,719),(42,719),(63,717),(55,719),(82,717),(58,719),(49,717),(41,719),(45,720),(76,720),(61,719),(48,718),(47,718),(30,718),(32,716),(69,716),(87,720),(44,719),(37,720),(34,720),(56,717),(18,716),(0,716),(81,720),(20,718),(21,719),(65,717),(43,720),(92,716),(40,717),(44,718),(62,720),(4,720),(9,719),(84,718),(0,716),(51,720),(25,716),(44,718),(60,719),(15,719),(50,719),(38,718),(23,716),(40,719),(84,719),(66,718),(9,720),(84,720),(46,719),(76,720),(70,717),(51,719),(99,716),(57,720),(100,720),(90,718),(90,720),(44,719),(98,717),(1,720),(99,718),(34,717),(74,720),(4,716),(75,718),(78,718),(48,716),(92,719),(69,718),(1,719);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (22,719),(50,720),(45,717),(43,720),(76,718),(44,718),(83,719),(9,720),(100,717),(48,718),(20,717),(94,719),(4,716),(0,716),(51,716),(65,717),(57,720),(73,716),(63,720),(9,720),(83,719),(18,718),(71,718),(39,716),(11,716),(46,717),(20,718),(92,718),(10,720),(65,717),(1,719),(26,720),(37,720),(1,717),(40,718),(49,720),(75,716),(69,718),(82,720),(90,718),(20,719),(74,717),(40,719),(60,716),(85,718),(40,720),(41,717),(20,719),(15,719),(79,718),(14,716),(16,719),(43,717),(98,720),(65,719),(16,717),(63,718),(93,720),(9,716),(98,716),(43,719),(2,720),(76,718),(99,718),(46,720),(81,717),(13,717),(6,719),(70,720),(51,719),(66,716),(81,720),(59,717),(62,720),(84,717),(9,717),(55,716),(11,720),(29,719),(1,719),(82,719),(31,717),(72,716),(89,717),(60,720),(50,719),(86,717),(8,717),(50,720),(88,718),(87,719),(86,718),(45,719),(85,719),(7,718),(29,716),(95,718),(28,720),(79,719),(8,718);

INSERT INTO `quality_control_articles` (`quantity`,`qc_id`) VALUES (95,719),(73,718),(30,718),(13,720),(67,716),(87,716),(80,719),(56,717),(7,717),(32,717),(45,718),(99,719),(0,720),(20,720),(97,719),(50,720),(15,720),(18,719),(10,719),(76,720),(89,718),(42,719),(63,717),(66,717),(67,720),(86,719),(12,718),(43,719),(45,719),(37,718),(24,719),(44,719),(78,719),(74,719),(8,717),(38,720),(37,719),(29,719),(69,717),(69,718),(89,719),(80,719),(27,716),(14,720),(3,720),(0,719),(69,720),(50,719),(92,717),(25,717),(94,716),(27,719),(19,719),(96,716),(85,720),(11,718),(40,717),(69,719),(68,716),(28,716),(16,718),(22,716),(1,720),(97,720),(72,719),(70,718),(49,720),(7,717),(79,720),(30,717),(13,720),(43,720),(97,719),(29,717),(83,720),(99,719),(18,717),(25,717),(88,716),(80,716),(76,719),(27,720),(69,717),(12,717),(37,716),(64,717),(4,719),(83,720),(38,717),(100,720),(61,719),(58,720),(29,719),(100,718),(45,717),(24,717),(80,717),(47,716),(64,720),(73,717);