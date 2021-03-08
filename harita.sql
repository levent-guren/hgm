CREATE DATABASE  IF NOT EXISTS `harita` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `harita`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: harita
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `birlik`
--

DROP TABLE IF EXISTS `birlik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birlik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `mevcut` int DEFAULT NULL,
  `sehir` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

LOCK TABLES `birlik` WRITE;
INSERT INTO `birlik` VALUES (1,'egm',3000,'ankara'),(2,'jeodezi',5,'batman'),(3,'zırhlı birlik',15000,'urfa');
UNLOCK TABLES;

DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tcno` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tcno_UNIQUE` (`tcno`)
)
LOCK TABLES `personel` WRITE;
INSERT INTO `personel` VALUES (1,'18263746523','Levent','GÜREN',NULL),(2,'27638273645','Ahmet','KOÇAK',NULL),(3,'123','ahmet','kemer',NULL);
UNLOCK TABLES;

DROP TABLE IF EXISTS `personel_adres`;
CREATE TABLE `personel_adres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personel_id` int NOT NULL,
  `adres` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personel_id_fk` (`personel_id`),
  CONSTRAINT `personel_id_fk` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`id`)
) 

LOCK TABLES `personel_adres` WRITE;
INSERT INTO `personel_adres` VALUES (24,1,'12313'),(25,1,'12313');
UNLOCK TABLES;
