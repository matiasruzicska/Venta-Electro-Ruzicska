-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ventas-electro-ruzicska
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (15,'Smart TV Samsung 55\" UHD Crystal',4,350000.00,1,423500.00),(16,'Smart TV LG 65\" OLED Evo',4,480000.00,2,580800.00),(17,'Smart TV Philips 50\" Ambilight',4,320000.00,3,387200.00),(18,'Smart TV Samsung 75\" QLED',4,650000.00,1,786500.00),(19,'Motorola Edge 40 Neo',5,250000.00,4,302500.00),(20,'Samsung Galaxy S23 Ultra',5,450000.00,1,544500.00),(21,'Xiaomi Redmi Note 13 Pro',5,220000.00,2,266200.00),(22,'Motorola G84',5,180000.00,4,217800.00),(23,'Heladera Samsung No Frost 400L',6,600000.00,1,726000.00),(24,'Heladera Electrolux Inverter 350L',6,520000.00,2,629200.00),(25,'Heladera Gafa 300L Clásica',6,400000.00,3,484000.00),(26,'Heladera Gafa 500L Side by Side',6,720000.00,3,871200.00),(27,'Heladera Electrolux 280L Compacta',6,350000.00,2,423500.00),(28,'Microondas BGH Digital 28L',2,95000.00,4,114950.00),(29,'Microondas Philco Grill 25L',2,88000.00,5,106480.00),(30,'Microondas Atma Compacto 20L',2,75000.00,6,90750.00),(31,'Microondas Samsung Grill 30L',2,110000.00,1,133100.00),(32,'Horno Eléctrico Liliana 45L Grill',3,120000.00,5,145200.00),(33,'Horno Eléctrico BGH 60L Turbo',3,150000.00,4,181500.00),(34,'Horno Eléctrico Atma 35L Compacto',3,95000.00,6,114950.00),(35,'Aire Acondicionado Samsung Split 3000F',1,350000.00,1,423500.00),(36,'Aire Acondicionado LG Inverter 4500F',1,420000.00,2,508200.00),(37,'Aire Acondicionado Philco 2500F',1,280000.00,5,338800.00),(38,'Aire Acondicionado BGH Silent 3500F',1,330000.00,4,399300.00);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 23:40:54
