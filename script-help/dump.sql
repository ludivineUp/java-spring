-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `idauthor` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idauthor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `idbook` int(11) NOT NULL AUTO_INCREMENT,
  `parutionyear` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `idauthor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbook`),
  KEY `FKgh784ss1t03bqtat2h9b4lwx4` (`idauthor`),
  CONSTRAINT `FKgh784ss1t03bqtat2h9b4lwx4` FOREIGN KEY (`idauthor`) REFERENCES `authors` (`idauthor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booksinorders`
--

DROP TABLE IF EXISTS `booksinorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booksinorders` (
  `order_id` int(11) NOT NULL,
  `books_idbook` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  KEY `FK6fk00d6btg72k4gh30kpse6jb` (`books_idbook`),
  KEY `FKltnf2e9q1n5gj4kt29u2q2e00` (`order_id`),
  KEY `FK8oe83ludepkr56go6jgqhi0k` (`orders_id`),
  CONSTRAINT `FK6fk00d6btg72k4gh30kpse6jb` FOREIGN KEY (`books_idbook`) REFERENCES `books` (`idbook`),
  CONSTRAINT `FK8oe83ludepkr56go6jgqhi0k` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKltnf2e9q1n5gj4kt29u2q2e00` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customerprofils`
--

DROP TABLE IF EXISTS `customerprofils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerprofils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `preference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idcity` int(11) DEFAULT NULL,
  `idprofil` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnu9240mhebfx3qu6hmgs8fyww` (`idcity`),
  KEY `FKylsgcg05y8gldfoyyt8ed3m6` (`idprofil`),
  CONSTRAINT `FKnu9240mhebfx3qu6hmgs8fyww` FOREIGN KEY (`idcity`) REFERENCES `cities` (`id`),
  CONSTRAINT `FKylsgcg05y8gldfoyyt8ed3m6` FOREIGN KEY (`idprofil`) REFERENCES `customerprofils` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kid_book`
--

DROP TABLE IF EXISTS `kid_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kid_book` (
  `idbook` int(11) NOT NULL,
  `parutionyear` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `idauthor` int(11) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idbook`),
  KEY `FK_3wg365u7bfgbyjpmj0hc394m9` (`idauthor`),
  CONSTRAINT `FK_3wg365u7bfgbyjpmj0hc394m9` FOREIGN KEY (`idauthor`) REFERENCES `authors` (`idauthor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date DEFAULT NULL,
  `idcustomer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkqvbygxdxkdpg4uko2qdvempo` (`idcustomer`),
  CONSTRAINT `FKkqvbygxdxkdpg4uko2qdvempo` FOREIGN KEY (`idcustomer`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 19:34:43
