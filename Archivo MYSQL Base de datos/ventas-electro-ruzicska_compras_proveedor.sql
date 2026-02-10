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
-- Table structure for table `compras_proveedor`
--

DROP TABLE IF EXISTS `compras_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras_proveedor` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `monto_total` decimal(12,2) DEFAULT NULL,
  `forma_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `compras_proveedor_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos_proveedor` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras_proveedor`
--

LOCK TABLES `compras_proveedor` WRITE;
/*!40000 ALTER TABLE `compras_proveedor` DISABLE KEYS */;
INSERT INTO `compras_proveedor` VALUES (1,1,'2026-02-06',12500000.00,'Transferencia Bancaria'),(2,2,'2026-02-07',9800000.00,'Cheque'),(3,3,'2026-02-08',7500000.00,'Efectivo'),(4,4,'2026-02-09',6700000.00,'Transferencia Bancaria'),(5,5,'2026-02-10',8200000.00,'Transferencia Bancaria');
/*!40000 ALTER TABLE `compras_proveedor` ENABLE KEYS */;
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
