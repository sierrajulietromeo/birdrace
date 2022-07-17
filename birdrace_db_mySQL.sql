-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: birdrace
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tbl_bird`
--

DROP TABLE IF EXISTS `tbl_bird`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bird` (
  `Number` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Points` int DEFAULT NULL,
  `Picture` blob,
  PRIMARY KEY (`Number`),
  UNIQUE KEY `Number` (`Number`),
  UNIQUE KEY `Name` (`Name`),
  UNIQUE KEY `Description` (`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bird`
--

LOCK TABLES `tbl_bird` WRITE;
/*!40000 ALTER TABLE `tbl_bird` DISABLE KEYS */;
INSERT INTO `tbl_bird` VALUES (1,'Black Throated Diver',NULL,4,_binary 'None'),(2,'Little Grebe',NULL,2,_binary 'None'),(3,'Great Crested Grebe',NULL,2,_binary 'None'),(4,'Fulmar',NULL,2,_binary 'None'),(5,'Max Shearwater',NULL,3,_binary 'None'),(6,'Storm Petrel',NULL,4,_binary 'None'),(7,'Gannet',NULL,3,_binary 'None'),(8,'Cormorant',NULL,2,_binary 'None'),(9,'Shag',NULL,2,_binary 'None'),(10,'Bittern',NULL,5,_binary 'None'),(11,'Grey Heron',NULL,2,_binary 'None'),(12,'Spoonbill',NULL,4,_binary 'None'),(13,'Mute Swan',NULL,1,_binary 'None'),(14,'Canada Goose',NULL,2,_binary 'None'),(15,'Egyptian Goose',NULL,2,_binary 'None'),(16,'Shelduck',NULL,2,_binary 'None'),(17,'Manderin',NULL,3,_binary 'None'),(18,'Wigeon',NULL,2,_binary 'None'),(19,'Gadwell',NULL,2,_binary 'None'),(20,'Teal',NULL,2,_binary 'None'),(21,'Mallard',NULL,1,_binary 'None'),(22,'Garganey',NULL,3,_binary 'None'),(23,'Shoveler',NULL,2,_binary 'None'),(24,'Pochard',NULL,2,_binary 'None'),(25,'Tufted Duck',NULL,2,_binary 'None'),(26,'Eider',NULL,2,_binary 'None'),(27,'Red Breasted Merganiser',NULL,2,_binary 'None'),(28,'Goosander',NULL,3,_binary 'None'),(29,'Ruddy Duck',NULL,2,_binary 'None'),(30,'Honey Buzzard',NULL,5,_binary 'None'),(31,'Red Kite',NULL,4,_binary 'None'),(32,'Marsh Harrier',NULL,4,_binary 'None'),(33,'Montagu\'s Harrier',NULL,5,_binary 'None'),(34,'Goshawk',NULL,5,_binary 'None'),(35,'Sparrowhawk',NULL,2,_binary 'None'),(36,'Buzzard',NULL,2,_binary 'None'),(37,'Golden Eagle',NULL,5,_binary 'None'),(38,'Osprey',NULL,5,_binary 'None'),(39,'Kestrel',NULL,1,_binary 'None'),(40,'Merlin',NULL,4,_binary 'None'),(41,'Hobby',NULL,4,_binary 'None'),(42,'Peregrine',NULL,4,_binary 'None'),(43,'Red Grouse',NULL,3,_binary 'None'),(44,'Ptarmigan',NULL,4,_binary 'None'),(45,'Black Grouse',NULL,4,_binary 'None'),(46,'Capercaillie',NULL,4,_binary 'None'),(47,'Red Legged Partridge',NULL,2,_binary 'None'),(48,'Grey Partridge',NULL,2,_binary 'None'),(49,'Quail',NULL,4,_binary 'None'),(50,'Pheasant',NULL,1,_binary 'None'),(51,'Golden Pheasant',NULL,3,_binary 'None'),(52,'Lady Amhersts Pheasant',NULL,3,_binary 'None'),(53,'Water Rail',NULL,3,_binary 'None'),(54,'Corncrake',NULL,5,_binary 'None'),(55,'Moorhen',NULL,1,_binary 'None'),(56,'Coot',NULL,1,_binary 'None'),(57,'Oystercatcher',NULL,1,_binary 'None'),(58,'Avocet',NULL,4,_binary 'None'),(59,'Stone Curlew',NULL,5,_binary 'None'),(60,'Little Ringed Plover',NULL,3,_binary 'None'),(61,'Ringed Plover',NULL,2,_binary 'None'),(62,'Kentish Plover',NULL,4,_binary 'None'),(63,'Dotterel',NULL,5,_binary 'None'),(64,'Golden Plover',NULL,3,_binary 'None'),(65,'Grey Plover',NULL,2,_binary 'None'),(66,'Lapwing',NULL,2,_binary 'None'),(67,'Knot',NULL,2,_binary 'None'),(68,'Sanderling',NULL,3,_binary 'None'),(69,'Dunlin',NULL,2,_binary 'None'),(70,'Ruff',NULL,3,_binary 'None'),(71,'Snipe',NULL,2,_binary 'None'),(72,'Woodcock',NULL,2,_binary 'None'),(73,'Black Tailed Godwit',NULL,3,_binary 'None'),(74,'Bar Tailed Godwit',NULL,2,_binary 'None'),(75,'Whimbrel',NULL,3,_binary 'None'),(76,'Curlew',NULL,3,_binary 'None'),(77,'Spotted Redshank',NULL,4,_binary 'None'),(78,'Redshank',NULL,2,_binary 'None'),(79,'Greenshank',NULL,3,_binary 'None'),(80,'Wood Sandpiper',NULL,4,_binary 'None'),(81,'Common Sandpiper',NULL,2,_binary 'None'),(82,'Turnstone',NULL,2,_binary 'None'),(83,'Little Gull',NULL,4,_binary 'None'),(84,'Black Headed Gull',NULL,1,_binary 'None'),(85,'Common Gull',NULL,2,_binary 'None'),(86,'Lesser Black Backed Gull',NULL,2,_binary 'None'),(87,'Herring Gull',NULL,1,_binary 'None'),(88,'Great Black Backed Gull',NULL,2,_binary 'None'),(89,'Kittiwake',NULL,2,_binary 'None'),(90,'Sandwich Tern',NULL,2,_binary 'None'),(91,'Roseate Tern',NULL,5,_binary 'None'),(92,'Common Tern',NULL,2,_binary 'None'),(93,'Arctic Tern',NULL,2,_binary 'None'),(94,'Little Tern',NULL,4,_binary 'None'),(95,'Black Tern',NULL,4,_binary 'None'),(96,'Guillemot',NULL,3,_binary 'None'),(97,'Razorbill',NULL,3,_binary 'None'),(98,'Black Guillemot',NULL,4,_binary 'None'),(99,'Puffin',NULL,4,_binary 'None'),(100,'Rock Dove',NULL,3,_binary 'None'),(101,'Stock Dove',NULL,2,_binary 'None'),(102,'Wood Pigeon',NULL,1,_binary 'None'),(103,'Collared Dove',NULL,1,_binary 'None'),(104,'Turtle Dove',NULL,2,_binary 'None'),(105,'Ring Necked Parakeet',NULL,4,_binary 'None'),(106,'Cuckoo',NULL,2,_binary 'None'),(107,'Barn Owl',NULL,3,_binary 'None'),(108,'Little Owl',NULL,3,_binary 'None'),(109,'Tawny Owl',NULL,2,_binary 'None'),(110,'Long Eared Owl',NULL,4,_binary 'None'),(111,'Short Eared Owl',NULL,3,_binary 'None'),(112,'Nightjar',NULL,4,_binary 'None'),(113,'Swift',NULL,2,_binary 'None'),(114,'Kingfisher',NULL,3,_binary 'None'),(115,'Hoopoo',NULL,5,_binary 'None'),(116,'Wryneck',NULL,5,_binary 'None'),(117,'Green Woodpecker',NULL,3,_binary 'None'),(118,'Greater Spotted Woodpecker',NULL,3,_binary 'None'),(119,'Lesser Spotted Woodpecker',NULL,4,_binary 'None'),(120,'Woodlark',NULL,5,_binary 'None'),(121,'Skylark',NULL,1,_binary 'None'),(122,'Sand Martin',NULL,2,_binary 'None'),(123,'Swallow',NULL,2,_binary 'None'),(124,'House Martin',NULL,2,_binary 'None'),(125,'Tree Pipit',NULL,3,_binary 'None'),(126,'Meadow Pipit',NULL,1,_binary 'None'),(127,'Rock Pipit',NULL,2,_binary 'None'),(128,'Yellow Wagtail',NULL,3,_binary 'None'),(129,'Grey Wagtail',NULL,2,_binary 'None'),(130,'Pied Wagtail',NULL,1,_binary 'None'),(131,'Dipper',NULL,3,_binary 'None'),(132,'Wren',NULL,1,_binary 'None'),(133,'Dunnock',NULL,1,_binary 'None'),(134,'Robin',NULL,2,_binary 'None'),(135,'Nightingale',NULL,4,_binary 'None'),(136,'Bluethroat',NULL,5,_binary 'None'),(137,'Black Redstart',NULL,4,_binary 'None'),(138,'Redstart',NULL,3,_binary 'None'),(139,'Winchat',NULL,3,_binary 'None'),(140,'Stonechat',NULL,2,_binary 'None'),(141,'Whitear',NULL,2,_binary 'None'),(142,'Ring Ouzel',NULL,3,_binary 'None'),(143,'Blackbird',NULL,1,_binary 'None'),(144,'Song Thrush',NULL,1,NULL),(145,'Mistle Thrush',NULL,1,NULL),(146,'Cetti\'s Warbler',NULL,5,NULL),(147,'Grasshopper Warbler',NULL,3,NULL),(148,'Savi\'s Warbler',NULL,5,NULL),(149,'Sedge Warbler',NULL,3,NULL),(150,'Marsh Warbler',NULL,5,NULL),(151,'Reed Warbler',NULL,2,NULL),(152,'Dartford Warbler',NULL,5,NULL),(153,'Lesser Whitethroat',NULL,2,NULL),(154,'Whitethroat',NULL,3,NULL),(155,'Garden Warbler',NULL,3,NULL),(156,'Blackcap',NULL,3,NULL),(157,'Wood Warbler',NULL,3,NULL),(158,'Chiffchaff',NULL,2,NULL),(159,'Willow Warbler',NULL,2,NULL),(160,'Goldcrest',NULL,2,NULL),(161,'Firecrest',NULL,4,NULL),(162,'Spotted Flycatcher',NULL,2,NULL),(163,'Pied Flycatcher',NULL,3,NULL),(164,'Bearded Tit',NULL,3,NULL),(165,'Long Tailed Tit',NULL,2,NULL),(166,'Marsh Tit',NULL,3,NULL),(167,'Willow Tit',NULL,3,NULL),(168,'Crested Tit',NULL,4,NULL),(169,'Coal Tit',NULL,2,NULL),(170,'Blue Tit',NULL,1,NULL),(171,'Great Tit',NULL,1,NULL),(172,'Nuthatch',NULL,2,NULL),(173,'Treecreeper',NULL,2,NULL),(174,'Golden Oriole',NULL,4,NULL),(175,'Red Backed Shrike',NULL,5,NULL),(176,'Jay',NULL,2,NULL),(177,'Magpie',NULL,1,NULL),(178,'Chough',NULL,4,NULL),(179,'Jackdaw',NULL,1,NULL),(180,'Rook',NULL,1,NULL),(181,'Carrion Crow',NULL,1,NULL),(182,'Raven',NULL,3,NULL),(183,'Starling',NULL,1,NULL),(184,'House Sparrow',NULL,1,NULL),(185,'Tree Sparrow',NULL,2,NULL),(186,'Chaffinch',NULL,1,NULL),(187,'Serin',NULL,6,NULL),(188,'Greenfinch',NULL,2,NULL),(189,'Goldfinch',NULL,2,NULL),(190,'Siskin',NULL,2,NULL),(191,'Linnet',NULL,2,NULL),(192,'Twite',NULL,3,NULL),(193,'Redpoll',NULL,2,NULL),(194,'Crossblll',NULL,3,NULL),(195,'Scottish Crossbill',NULL,4,NULL),(196,'Bullfinch',NULL,2,NULL),(197,'Hawfinch',NULL,4,NULL),(198,'Snowbunting',NULL,5,NULL),(199,'Yellow Hammer',NULL,2,NULL),(200,'Cirl Bunting',NULL,5,NULL),(201,'Reed Bunting',NULL,2,NULL),(202,'Corn Bunting',NULL,3,NULL);
/*!40000 ALTER TABLE `tbl_bird` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_frequency`
--

DROP TABLE IF EXISTS `tbl_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_frequency` (
  `BirdNum` int NOT NULL AUTO_INCREMENT,
  `Mountains` int DEFAULT '0',
  `MixedWood` int DEFAULT '0',
  `Headland` int DEFAULT '0',
  `Beach` int DEFAULT '0',
  `OakWood` int DEFAULT '0',
  `Stream` int DEFAULT '0',
  `Island` int DEFAULT '0',
  `Estuary` int DEFAULT '0',
  `Churchyard` int DEFAULT '0',
  `SeaCliffs` int DEFAULT '0',
  `Lake` int DEFAULT '0',
  `SewageWorks` int DEFAULT '0',
  `Reservoir` int DEFAULT '0',
  `ConiferWood` int DEFAULT '0',
  `Marsh` int DEFAULT '0',
  `UrbanPark` int DEFAULT '0',
  `Heath` int DEFAULT '0',
  PRIMARY KEY (`BirdNum`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_frequency`
--

LOCK TABLES `tbl_frequency` WRITE;
/*!40000 ALTER TABLE `tbl_frequency` DISABLE KEYS */;
INSERT INTO `tbl_frequency` VALUES (1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0),(3,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,0,0),(4,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0),(11,0,0,0,0,0,2,0,0,0,0,1,0,0,0,0,0,0),(12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(13,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0),(14,0,0,0,0,0,0,0,0,0,0,3,0,0,0,2,0,0),(15,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0),(16,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(17,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0),(18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(19,0,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,0),(20,0,0,0,0,0,0,0,0,0,0,1,0,1,0,2,0,0),(21,0,0,0,0,0,0,0,2,0,0,2,0,1,0,2,0,0),(22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(23,0,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,0),(24,0,0,0,0,0,0,0,0,0,0,2,0,3,0,0,0,0),(25,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,0,0),(26,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0),(27,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(28,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(29,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0),(30,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(31,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0),(33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(34,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(35,0,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0),(36,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(38,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(39,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(40,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(42,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(43,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(44,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(45,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(46,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),(48,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(50,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(51,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(52,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0),(54,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(55,0,0,0,0,0,0,0,0,0,0,2,0,2,0,3,0,0),(56,0,0,0,0,0,0,0,0,0,0,2,0,3,0,0,0,0),(57,0,0,0,3,0,0,0,3,0,0,0,0,0,0,0,0,0),(58,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(60,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0),(61,0,0,0,1,0,0,0,1,0,2,0,0,0,0,0,0,0),(62,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(63,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(64,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(65,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0),(66,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0),(67,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0),(68,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(69,0,0,0,1,0,0,0,3,0,0,0,0,0,0,0,0,0),(70,0,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0),(71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(72,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(74,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(75,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0),(76,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0),(77,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(78,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0),(79,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(81,0,0,0,0,0,2,0,1,0,0,0,0,1,0,0,0,0),(82,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(84,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,0),(85,0,0,0,2,0,0,0,0,0,0,0,1,1,0,0,0,0),(86,0,0,2,0,0,0,0,1,0,0,0,0,0,0,0,0,0),(87,0,0,2,2,0,0,0,0,0,2,0,0,0,0,0,0,0),(88,0,0,0,1,0,0,0,1,0,2,0,0,0,0,0,0,0),(89,0,0,0,0,0,0,2,0,0,3,0,0,0,0,0,0,0),(90,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0),(91,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),(92,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),(93,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0),(94,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(95,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0),(96,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(97,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(98,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(99,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0,0),(100,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0),(101,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(102,0,1,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0),(103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(104,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),(105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(106,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(108,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(109,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0),(110,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(111,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(113,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(114,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(116,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(117,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(118,0,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(119,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(121,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(122,0,0,0,0,0,2,0,0,0,0,0,1,0,0,0,0,0),(123,0,0,0,0,0,2,0,0,0,0,0,1,0,0,0,0,0),(124,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(125,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,2),(126,2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(127,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0),(128,0,0,0,0,0,0,0,0,0,0,1,2,3,0,0,0,0),(129,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(130,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0),(131,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0),(132,0,0,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0),(133,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(134,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0),(135,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(136,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0),(137,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(138,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(139,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),(140,1,0,2,0,0,0,1,0,0,0,0,0,0,0,0,0,0),(141,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,2),(142,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(143,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0),(144,0,1,0,0,2,0,0,0,1,0,0,1,0,0,0,0,0),(145,0,0,0,0,2,0,0,0,1,0,0,0,0,0,0,0,0),(146,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(147,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,2),(148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(149,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0),(150,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),(151,0,0,0,0,0,0,0,0,0,0,1,0,0,0,2,0,0),(152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),(154,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),(155,0,1,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(156,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(157,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(158,0,2,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0),(159,0,2,0,0,2,0,0,0,1,0,0,0,0,0,0,0,0),(160,0,0,0,0,0,0,0,0,1,0,0,0,0,3,0,0,0),(161,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(162,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,2),(163,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0),(164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0),(165,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(166,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(167,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(168,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(169,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0),(170,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(171,0,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0),(172,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(173,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(174,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(176,0,2,0,0,0,0,0,0,1,0,0,0,0,2,0,0,0),(177,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0),(178,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(179,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(180,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0),(181,2,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0),(182,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0),(183,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(184,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(185,0,0,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0),(186,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0),(187,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(188,0,1,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0),(189,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(190,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0),(191,0,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,2),(192,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(193,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(194,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(195,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0),(196,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0),(197,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0),(198,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(199,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,2),(200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(201,0,0,0,0,0,2,0,0,0,0,2,0,0,0,0,0,0),(202,0,0,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0);
/*!40000 ALTER TABLE `tbl_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_habitat`
--

DROP TABLE IF EXISTS `tbl_habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_habitat` (
  `Number` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Reserve` int NOT NULL,
  PRIMARY KEY (`Number`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_habitat`
--

LOCK TABLES `tbl_habitat` WRITE;
/*!40000 ALTER TABLE `tbl_habitat` DISABLE KEYS */;
INSERT INTO `tbl_habitat` VALUES (1,'Island',1),(2,'Beach',0),(3,'Churchyard',0),(4,'Stream',0),(5,'Conifer Wood',0),(6,'Marsh',1),(7,'Estuary',0),(8,'Oak Wood',0),(9,'Sea Cliffs',0),(10,'Sewage Works',0),(11,'Urban Park',0),(12,'Mountains',0),(13,'Reservoir',0),(14,'Heath',1),(15,'Mixed Wood',0),(16,'Lake',0),(17,'Headland',1);
/*!40000 ALTER TABLE `tbl_habitat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 21:22:16
