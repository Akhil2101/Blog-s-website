-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: postdb
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `subtitle` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `img_url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` VALUES (1,1,'Cactus Life 3.0','A life well lived. ','August 01, 2023','<h3>Growth habit</h3>\n\n<p>Cacti show a wide variety of growth&nbsp;<a href=\"https://en.wikipedia.org/wiki/Habit_(biology)\">habits</a>, which are difficult to divide into clear, simple categories.</p>\n\n<p>Arborescent cacti</p>\n\n<p>Cacti can be tree-like (arborescent), meaning they typically have a single more-or-less woody&nbsp;<a href=\"https://en.wikipedia.org/wiki/Trunk_(botany)\">trunk</a>&nbsp;topped by several to many&nbsp;<a href=\"https://en.wikipedia.org/wiki/Branch\">branches</a>. In the genera&nbsp;<em>Leuenbergeria</em>,&nbsp;<em>Pereskia</em>&nbsp;and&nbsp;<em>Rhodocactus</em>, the branches are covered with leaves, so the species of these genera may not be recognized as cacti. In most other cacti, the branches are more typically cactus-like, bare of leaves and bark and covered with spines, as in&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Pachycereus_pringlei\">Pachycereus pringlei</a></em>&nbsp;or the larger&nbsp;<a href=\"https://en.wikipedia.org/wiki/Opuntia\">opuntias</a>. Some cacti may become tree-sized but without branches, such as larger specimens of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Echinocactus_platyacanthus\">Echinocactus platyacanthus</a></em>. Cacti may also be described as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shrub\">shrubby</a>, with several stems coming from the ground or from branches very low down, such as in&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Stenocereus_thurberi\">Stenocereus thurberi</a></em>.</p>\n\n<p>Columnar cacti</p>\n\n<p>Smaller cacti may be described as columnar. They consist of erect, cylinder-shaped stems, which may or may not branch, without a very clear division into trunk and branches. The boundary between columnar forms and tree-like or shrubby forms is difficult to define. Smaller and younger specimens of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Cephalocereus_senilis\">Cephalocereus senilis</a></em>, for example, are columnar, whereas older and larger specimens may become tree-like. In some cases, the &quot;columns&quot; may be horizontal rather than vertical. Thus,&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Stenocereus_eruca\">Stenocereus eruca</a></em>&nbsp;can be described as columnar even though it has stems growing along the ground, rooting at intervals.</p>\n\n<p>Globular cacti</p>\n\n<p>Cacti whose stems are even smaller may be described as globular (or globose). They consist of shorter, more ball-shaped stems than columnar cacti. Globular cacti may be solitary, such as&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Ferocactus_latispinus\">Ferocactus latispinus</a></em>, or their stems may form clusters that can create large mounds. All or some stems in a cluster may share a common root.</p>\n\n<p>Other forms</p>\n\n<p>Other cacti have a quite different appearance. In tropical regions, some grow as forest climbers and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Epiphyte\">epiphytes</a>. Their stems are typically flattened and almost leaf-like in appearance, with few or even no spines. Climbing cacti can be very large; a specimen of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Hylocereus\">Hylocereus</a></em>&nbsp;was reported as 100 meters (330&nbsp;ft) long from root to the most distant stem. Epiphytic cacti, such as species of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Rhipsalis\">Rhipsalis</a></em>&nbsp;or&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Schlumbergera\">Schlumbergera</a></em>, often hang downwards, forming dense clumps where they grow in trees high above the ground.</p>\n','https://upload.wikimedia.org/wikipedia/commons/f/fc/Cactus1web.jpg'),(2,1,'harry porter','A lifestyle','February 04, 2024','<p>randomnesss and nothing more</p>\r\n','https://www.gimmesomeoven.com/wp-content/uploads/2016/03/Screen-Shot-2016-03-21-at-11.59.58-AM-e1458579627797.png');
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `author_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'akhilp.it.20@nitj.ac.in','pbkdf2:sha256:600000$jlv52Ayp$40ddc5e5f4df49d75703a2c9c00243c63661360e620c6fe665b655befe41ebb0','Akhil Panwar'),(2,'ishu@gmail.com','pbkdf2:sha256:600000$DV59XCfT$58b9ad4188c285ccf1afac8e8f3a26bdb4e74ea575b99582b10ee1f4acf88e4d','Ishu Panwar'),(3,'Kartik@gmail.com','pbkdf2:sha256:600000$hSnIaZxN$719057ef2eaf009dd4606f69dca02ba53d04796b4d3a7a0fedc51bb22f761918','Kartik'),(4,'dpupanwar54@gmail.com','pbkdf2:sha256:600000$uNn7j46J$0b7cf4c3761e2f7899690fd8f9b9a199988585a1be3767b84deb3d21c6478f4a','Anshul Panwar'),(5,'jaideep.it.20@nitj.ac.in','pbkdf2:sha256:600000$hkkMLaYr$afe3c3ebbe4ff491870ef26a50c19483f5ee1d727beabe030d977bb242470295','Akhil Panwar');
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

-- Dump completed on 2024-02-11 17:39:43
