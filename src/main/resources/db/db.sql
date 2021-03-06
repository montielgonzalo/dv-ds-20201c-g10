CREATE DATABASE  IF NOT EXISTS `dv-ds-20201c-g10`

ALTER DATABASE dv-ds-20201c-g10 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

/*!80016 DEFAULT ENCRYPTION='N' */;

USE `dv-ds-20201c-g10`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: dv-ds-20201c-g10
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='-3:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

drop table IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
create TABLE `clientes` (
  `cli_id` int NOT NULL AUTO_INCREMENT,
  `cli_nombre` varchar(50) NOT NULL,
  `cli_apellido` varchar(50) NOT NULL,
  `cli_email` varchar(50) NOT NULL,
  `cli_password` varchar(50) NOT NULL,
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_email_UNIQUE` (`cli_email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

-- DROP TABLE IF EXISTS `hibernate_sequence`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
-- /*!50503 SET character_set_client = utf8 */;
-- CREATE TABLE `hibernate_sequence` (
--   `next_val` bigint DEFAULT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- /*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orden_items`
--

drop table IF EXISTS `orden_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
create TABLE `orden_items` (
  `odi_id` int NOT NULL AUTO_INCREMENT,
  `odi_ord_id` int NOT NULL,
  `odi_prd_id` int NOT NULL,
  `odi_cantidad` decimal(8,2) NOT NULL,
  PRIMARY KEY (`odi_id`),
  KEY `odi_ord_id_fk_idx` (`odi_ord_id`),
  KEY `odi_pro_id_fk_idx` (`odi_prd_id`),
  CONSTRAINT `odi_ord_id_fk` FOREIGN KEY (`odi_ord_id`) REFERENCES `ordenes` (`ord_id`),
  CONSTRAINT `odi_pro_id_fk` FOREIGN KEY (`odi_prd_id`) REFERENCES `productos` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes`
--

drop table IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
create TABLE `ordenes` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `ord_cli_id` int NOT NULL,
  `ord_fecha` datetime NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cli_id_fk_idx` (`ord_cli_id`),
  CONSTRAINT `ord_cli_id_fk` FOREIGN KEY (`ord_cli_id`) REFERENCES `clientes` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

drop table IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
create TABLE `productos` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_nombre` varchar(45) NOT NULL,
  `pro_precio` decimal(8,2) NOT NULL,
  PRIMARY KEY (`pro_id`),
  UNIQUE KEY `pro_nombre_UNIQUE` (`pro_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-24 20:36:19
