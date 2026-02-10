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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Pérez','juanperez@gmail.com','1122334455'),(2,'María','Gómez','mariagomez@gmail.com','1133445566'),(3,'Carlos','López','carloslopez@gmail.com','1144556677'),(4,'Ana','Martínez','anamartinez@gmail.com','1155667788'),(5,'Pedro','Fernández','pedrofernandez@gmail.com','1166778899'),(6,'Lucía','Rodríguez','luciarodriguez@gmail.com','1177889900'),(7,'Diego','Sánchez','diegosanchez@gmail.com','1188990011'),(8,'Laura','Torres','lauratorres@gmail.com','1199001122'),(9,'Martín','Ramírez','martinramirez@gmail.com','1200112233'),(10,'Sofía','Castro','sofiacastro@gmail.com','1211223344'),(11,'Hernán','Silva','hernansilva@gmail.com','1222334455'),(12,'Valeria','Morales','valeriamorales@gmail.com','1233445566'),(13,'Jorge','Domínguez','jorgedominguez@gmail.com','1244556677'),(14,'Paula','Herrera','paulaherrera@gmail.com','1255667788'),(15,'Esteban','Suárez','estebansuarez@gmail.com','1266778899'),(16,'Florencia','Molina','florenciamolina@gmail.com','1277889900'),(17,'Ricardo','Aguilar','ricardoaguilar@gmail.com','1288990011'),(18,'Camila','Vega','camilavega@gmail.com','1299001122'),(19,'Gonzalo','Ríos','gonzalorios@gmail.com','1300112233'),(20,'Natalia','Ponce','nataliaponce@gmail.com','1311223344');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 23:40:53
