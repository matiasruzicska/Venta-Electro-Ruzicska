CREATE DATABASE  IF NOT EXISTS `ventas_electro_ruzicska` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ventas_electro_ruzicska`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ventas_electro_ruzicska
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Televisores'),(2,'Heladeras'),(3,'Lavarropas'),(4,'Microondas'),(5,'Celulares'),(6,'Notebooks'),(7,'Aires Acondicionados'),(8,'Cafeteras'),(9,'Licuadoras'),(10,'Parlantes'),(11,'Televisores'),(12,'Heladeras'),(13,'Lavarropas'),(14,'Microondas'),(15,'Celulares'),(16,'Notebooks'),(17,'Aires Acondicionados'),(18,'Cafeteras'),(19,'Licuadoras'),(20,'Parlantes'),(21,'Televisores'),(22,'Heladeras'),(23,'Lavarropas'),(24,'Microondas'),(25,'Celulares'),(26,'Notebooks'),(27,'Aires Acondicionados'),(28,'Cafeteras'),(29,'Licuadoras'),(30,'Parlantes');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Martin','Sosa','martin@mail.com','111111111'),(2,'Carla','Benitez','carla@mail.com','222222222'),(3,'Lucas','Rojas','lucas@mail.com','333333333'),(4,'Mariana','Acosta','mariana@mail.com','444444444'),(5,'Fernando','Suarez','fernando@mail.com','555555555'),(6,'Paula','Mendez','paula@mail.com','666666666'),(7,'Ricardo','Silva','ricardo@mail.com','777777777'),(8,'Laura','Ortega','laura@mail.com','888888888'),(9,'Jorge','Vega','jorge@mail.com','999999999'),(10,'Natalia','Herrera','natalia@mail.com','101010101'),(11,'Martin','Sosa','martin@mail.com','111111111'),(12,'Carla','Benitez','carla@mail.com','222222222'),(13,'Lucas','Rojas','lucas@mail.com','333333333'),(14,'Mariana','Acosta','mariana@mail.com','444444444'),(15,'Fernando','Suarez','fernando@mail.com','555555555'),(16,'Paula','Mendez','paula@mail.com','666666666'),(17,'Ricardo','Silva','ricardo@mail.com','777777777'),(18,'Laura','Ortega','laura@mail.com','888888888'),(19,'Jorge','Vega','jorge@mail.com','999999999'),(20,'Natalia','Herrera','natalia@mail.com','101010101'),(21,'Martin','Sosa','martin@mail.com','111111111'),(22,'Carla','Benitez','carla@mail.com','222222222'),(23,'Lucas','Rojas','lucas@mail.com','333333333'),(24,'Mariana','Acosta','mariana@mail.com','444444444'),(25,'Fernando','Suarez','fernando@mail.com','555555555'),(26,'Paula','Mendez','paula@mail.com','666666666'),(27,'Ricardo','Silva','ricardo@mail.com','777777777'),(28,'Laura','Ortega','laura@mail.com','888888888'),(29,'Jorge','Vega','jorge@mail.com','999999999'),(30,'Natalia','Herrera','natalia@mail.com','101010101');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `id_detalle_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_detalle_pedido`),
  KEY `fk_detalle_pedido_pedido` (`id_pedido`),
  KEY `fk_detalle_pedido_producto` (`id_producto`),
  CONSTRAINT `fk_detalle_pedido_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos_proveedor` (`id_pedido`),
  CONSTRAINT `fk_detalle_pedido_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,1,10),(2,2,2,8),(3,3,3,6),(4,4,4,15),(5,5,5,12),(6,6,6,7),(7,7,7,5),(8,8,8,20),(9,9,9,25),(10,10,10,14);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_venta_ventas` (`id_venta`),
  KEY `fk_detalle_venta_productos` (`id_producto`),
  CONSTRAINT `fk_detalle_venta_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `fk_detalle_venta_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,1,1,500000.00),(2,2,2,1,800000.00),(3,3,3,1,600000.00),(4,4,4,2,200000.00),(5,5,5,1,300000.00),(6,6,6,1,900000.00),(7,7,7,1,700000.00),(8,8,8,2,150000.00),(9,9,9,1,100000.00),(10,10,10,2,180000.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devoluciones` (
  `id_devolucion` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_devolucion`),
  KEY `fk_devoluciones_ventas` (`id_venta`),
  KEY `fk_devoluciones_productos` (`id_producto`),
  CONSTRAINT `fk_devoluciones_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `fk_devoluciones_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
INSERT INTO `devoluciones` VALUES (1,1,1,'Falla','2024-02-12'),(2,2,2,'Cambio','2024-02-13'),(3,3,3,'Falla','2024-02-14'),(4,4,4,'No funciona','2024-02-15'),(5,5,5,'Cambio','2024-02-16'),(6,6,6,'Defecto','2024-02-17'),(7,7,7,'Falla','2024-02-18'),(8,8,8,'Cambio','2024-02-19'),(9,9,9,'Defecto','2024-02-20'),(10,10,10,'No funciona','2024-02-21');
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `uk_empleados_dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Perez','30111222','Vendedor','2022-01-10'),(2,'Ana','Gomez','30222333','Vendedor','2022-03-15'),(3,'Luis','Martinez','30333444','Cajero','2021-05-12'),(4,'Maria','Lopez','30444555','Gerente','2020-02-01'),(5,'Carlos','Diaz','30555666','Vendedor','2023-04-18'),(6,'Sofia','Fernandez','30666777','Vendedor','2023-06-20'),(7,'Pedro','Ramirez','30777888','Cajero','2022-09-09'),(8,'Lucia','Torres','30888999','Vendedor','2021-11-11'),(9,'Diego','Ruiz','30999000','Supervisor','2020-07-30'),(10,'Valeria','Castro','30000111','Vendedor','2024-01-05');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garantias`
--

DROP TABLE IF EXISTS `garantias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garantias` (
  `id_garantia` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_venta` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_garantia`),
  KEY `fk_garantias_productos` (`id_producto`),
  KEY `fk_garantias_clientes` (`id_cliente`),
  KEY `fk_garantias_ventas` (`id_venta`),
  CONSTRAINT `fk_garantias_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_garantias_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `fk_garantias_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garantias`
--

LOCK TABLES `garantias` WRITE;
/*!40000 ALTER TABLE `garantias` DISABLE KEYS */;
INSERT INTO `garantias` VALUES (1,1,1,1,'2024-02-10','2025-02-10'),(2,2,2,2,'2024-02-11','2025-02-11'),(3,3,3,3,'2024-02-12','2025-02-12'),(4,4,4,4,'2024-02-13','2025-02-13'),(5,5,5,5,'2024-02-14','2025-02-14'),(6,6,6,6,'2024-02-15','2025-02-15'),(7,7,7,7,'2024-02-16','2025-02-16'),(8,8,8,8,'2024-02-17','2025-02-17'),(9,9,9,9,'2024-02-18','2025-02-18'),(10,10,10,10,'2024-02-19','2025-02-19');
/*!40000 ALTER TABLE `garantias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `id_local` int NOT NULL,
  `id_producto` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_inventario`),
  UNIQUE KEY `uk_inventario_local_producto` (`id_local`,`id_producto`),
  KEY `fk_inventario_productos` (`id_producto`),
  CONSTRAINT `fk_inventario_locales` FOREIGN KEY (`id_local`) REFERENCES `locales` (`id_local`),
  CONSTRAINT `fk_inventario_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,1,20),(2,1,2,15),(3,2,3,10),(4,2,4,18),(5,3,5,30),(6,3,6,12),(7,4,7,8),(8,5,8,25),(9,6,9,40),(10,7,10,22);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locales` (
  `id_local` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_local`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES (1,'Sucursal Centro','Av Siempre Viva 123','Buenos Aires'),(2,'Sucursal Norte','Av Libertador 456','Buenos Aires'),(3,'Sucursal Sur','Av Mitre 789','Avellaneda'),(4,'Sucursal Oeste','Rivadavia 100','Moron'),(5,'Sucursal Este','Belgrano 222','La Plata'),(6,'Sucursal Cordoba','Colon 300','Cordoba'),(7,'Sucursal Rosario','San Martin 500','Rosario'),(8,'Sucursal Mendoza','San Juan 600','Mendoza'),(9,'Sucursal Tucuman','25 de Mayo 800','Tucuman'),(10,'Sucursal Salta','Caseros 900','Salta'),(11,'Sucursal Centro','Av Siempre Viva 123','Buenos Aires'),(12,'Sucursal Norte','Av Libertador 456','Buenos Aires'),(13,'Sucursal Sur','Av Mitre 789','Avellaneda'),(14,'Sucursal Oeste','Rivadavia 100','Moron'),(15,'Sucursal Este','Belgrano 222','La Plata'),(16,'Sucursal Cordoba','Colon 300','Cordoba'),(17,'Sucursal Rosario','San Martin 500','Rosario'),(18,'Sucursal Mendoza','San Juan 600','Mendoza'),(19,'Sucursal Tucuman','25 de Mayo 800','Tucuman'),(20,'Sucursal Salta','Caseros 900','Salta');
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos_pago`
--

DROP TABLE IF EXISTS `metodos_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodos_pago` (
  `id_metodo_pago` int NOT NULL AUTO_INCREMENT,
  `tipo_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos_pago`
--

LOCK TABLES `metodos_pago` WRITE;
/*!40000 ALTER TABLE `metodos_pago` DISABLE KEYS */;
INSERT INTO `metodos_pago` VALUES (1,'Efectivo'),(2,'Tarjeta Credito'),(3,'Tarjeta Debito'),(4,'Transferencia'),(5,'Mercado Pago'),(6,'Cuenta DNI'),(7,'Cheque'),(8,'Bitcoin'),(9,'PayPal'),(10,'Financiado'),(11,'Efectivo'),(12,'Tarjeta Credito'),(13,'Tarjeta Debito'),(14,'Transferencia'),(15,'Mercado Pago'),(16,'Cuenta DNI'),(17,'Cheque'),(18,'Bitcoin'),(19,'PayPal'),(20,'Financiado');
/*!40000 ALTER TABLE `metodos_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_proveedor`
--

DROP TABLE IF EXISTS `pedidos_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_proveedor` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `fecha_pedido` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedidos_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_pedidos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_proveedor`
--

LOCK TABLES `pedidos_proveedor` WRITE;
/*!40000 ALTER TABLE `pedidos_proveedor` DISABLE KEYS */;
INSERT INTO `pedidos_proveedor` VALUES (1,1,'2024-01-10','Entregado'),(2,2,'2024-01-12','Pendiente'),(3,3,'2024-01-15','Entregado'),(4,4,'2024-01-18','Pendiente'),(5,5,'2024-01-20','Entregado'),(6,6,'2024-01-22','Pendiente'),(7,7,'2024-01-25','Entregado'),(8,8,'2024-01-28','Pendiente'),(9,9,'2024-02-01','Entregado'),(10,10,'2024-02-03','Pendiente');
/*!40000 ALTER TABLE `pedidos_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_categoria` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_productos_categorias` (`id_categoria`),
  KEY `fk_productos_proveedores` (`id_proveedor`),
  CONSTRAINT `fk_productos_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `fk_productos_proveedores` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'TV Samsung 50',1,500000.00,1),(2,'Heladera LG',2,800000.00,2),(3,'Lavarropas Whirlpool',3,600000.00,5),(4,'Microondas Philips',4,200000.00,4),(5,'Celular Motorola G',5,300000.00,6),(6,'Notebook Lenovo',6,900000.00,7),(7,'Aire BGH 3000F',7,700000.00,10),(8,'Cafetera Philips',8,150000.00,4),(9,'Licuadora Atma',9,100000.00,9),(10,'Parlante Sony',10,180000.00,3),(11,'TV Samsung 50',1,500000.00,1),(12,'Heladera LG',2,800000.00,2),(13,'Lavarropas Whirlpool',3,600000.00,5),(14,'Microondas Philips',4,200000.00,4),(15,'Celular Motorola G',5,300000.00,6),(16,'Notebook Lenovo',6,900000.00,7),(17,'Aire BGH 3000F',7,700000.00,10),(18,'Cafetera Philips',8,150000.00,4),(19,'Licuadora Atma',9,100000.00,9),(20,'Parlante Sony',10,180000.00,3),(21,'TV Samsung 50',1,500000.00,1),(22,'Heladera LG',2,800000.00,2),(23,'Lavarropas Whirlpool',3,600000.00,5),(24,'Microondas Philips',4,200000.00,4),(25,'Celular Motorola G',5,300000.00,6),(26,'Notebook Lenovo',6,900000.00,7),(27,'Aire BGH 3000F',7,700000.00,10),(28,'Cafetera Philips',8,150000.00,4),(29,'Licuadora Atma',9,100000.00,9),(30,'Parlante Sony',10,180000.00,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones` (
  `id_promocion` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `descuento` decimal(5,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,'Promo verano',10.00,'2024-01-01','2024-02-01'),(2,'Promo invierno',15.00,'2024-06-01','2024-07-01'),(3,'Black Friday',25.00,'2024-11-20','2024-11-30'),(4,'Navidad',20.00,'2024-12-01','2024-12-25'),(5,'Cyber Monday',30.00,'2024-11-01','2024-11-05'),(6,'Promo celulares',12.00,'2024-03-01','2024-04-01'),(7,'Promo notebooks',18.00,'2024-05-01','2024-06-01'),(8,'Electro hogar',14.00,'2024-07-01','2024-08-01'),(9,'Promo audio',11.00,'2024-09-01','2024-10-01'),(10,'Promo cocina',9.00,'2024-10-01','2024-11-01'),(11,'Promo verano',10.00,'2024-01-01','2024-02-01'),(12,'Promo invierno',15.00,'2024-06-01','2024-07-01'),(13,'Black Friday',25.00,'2024-11-20','2024-11-30'),(14,'Navidad',20.00,'2024-12-01','2024-12-25'),(15,'Cyber Monday',30.00,'2024-11-01','2024-11-05'),(16,'Promo celulares',12.00,'2024-03-01','2024-04-01'),(17,'Promo notebooks',18.00,'2024-05-01','2024-06-01'),(18,'Electro hogar',14.00,'2024-07-01','2024-08-01'),(19,'Promo audio',11.00,'2024-09-01','2024-10-01'),(20,'Promo cocina',9.00,'2024-10-01','2024-11-01');
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Samsung','Pedro Kim','111111111'),(2,'LG','Carlos Lee','222222222'),(3,'Sony','Ana Tanaka','333333333'),(4,'Philips','Maria Cruz','444444444'),(5,'Whirlpool','Juan Gomez','555555555'),(6,'Motorola','Luis Diaz','666666666'),(7,'Lenovo','Carlos Chen','777777777'),(8,'Noblex','Jorge Ruiz','888888888'),(9,'Atma','Diego Soto','999999999'),(10,'BGH','Martin Rios','101010101'),(11,'Samsung','Pedro Kim','111111111'),(12,'LG','Carlos Lee','222222222'),(13,'Sony','Ana Tanaka','333333333'),(14,'Philips','Maria Cruz','444444444'),(15,'Whirlpool','Juan Gomez','555555555'),(16,'Motorola','Luis Diaz','666666666'),(17,'Lenovo','Carlos Chen','777777777'),(18,'Noblex','Jorge Ruiz','888888888'),(19,'Atma','Diego Soto','999999999'),(20,'BGH','Martin Rios','101010101'),(21,'Samsung','Pedro Kim','111111111'),(22,'LG','Carlos Lee','222222222'),(23,'Sony','Ana Tanaka','333333333'),(24,'Philips','Maria Cruz','444444444'),(25,'Whirlpool','Juan Gomez','555555555'),(26,'Motorola','Luis Diaz','666666666'),(27,'Lenovo','Carlos Chen','777777777'),(28,'Noblex','Jorge Ruiz','888888888'),(29,'Atma','Diego Soto','999999999'),(30,'BGH','Martin Rios','101010101');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_sistema`
--

DROP TABLE IF EXISTS `usuarios_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_sistema` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `uk_usuario` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_sistema`
--

LOCK TABLES `usuarios_sistema` WRITE;
/*!40000 ALTER TABLE `usuarios_sistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id_vendedor` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int NOT NULL,
  `objetivo_mensual` decimal(10,2) NOT NULL,
  `id_local` int NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  KEY `fk_vendedores_empleados` (`id_empleado`),
  KEY `fk_vendedores_local` (`id_local`),
  CONSTRAINT `fk_vendedores_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `fk_vendedores_local` FOREIGN KEY (`id_local`) REFERENCES `locales` (`id_local`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,1,500000.00,1),(2,2,450000.00,1),(3,5,400000.00,2),(4,6,420000.00,2),(5,8,380000.00,3),(6,10,390000.00,3),(7,1,410000.00,4),(8,2,430000.00,5),(9,5,440000.00,6),(10,6,450000.00,7),(11,1,500000.00,1),(12,2,450000.00,1),(13,5,400000.00,2),(14,6,420000.00,2),(15,8,380000.00,3),(16,10,390000.00,3),(17,1,410000.00,4),(18,2,430000.00,5),(19,5,440000.00,6),(20,6,450000.00,7);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `id_metodo_pago` int NOT NULL,
  `id_promocion` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_local` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fk_ventas_clientes` (`id_cliente`),
  KEY `fk_ventas_vendedores` (`id_vendedor`),
  KEY `fk_ventas_metodo` (`id_metodo_pago`),
  KEY `fk_ventas_promocion` (`id_promocion`),
  KEY `fk_ventas_local` (`id_local`),
  CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_ventas_local` FOREIGN KEY (`id_local`) REFERENCES `locales` (`id_local`),
  CONSTRAINT `fk_ventas_metodo` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodos_pago` (`id_metodo_pago`),
  CONSTRAINT `fk_ventas_promocion` FOREIGN KEY (`id_promocion`) REFERENCES `promociones` (`id_promocion`),
  CONSTRAINT `fk_ventas_vendedores` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1,1,'2024-02-10',1),(2,2,2,2,2,'2024-02-11',1),(3,3,3,3,3,'2024-02-12',2),(4,4,4,4,4,'2024-02-13',2),(5,5,5,5,5,'2024-02-14',3),(6,6,6,6,6,'2024-02-15',3),(7,7,7,7,7,'2024-02-16',4),(8,8,8,8,8,'2024-02-17',5),(9,9,9,9,9,'2024-02-18',6),(10,10,10,10,10,'2024-02-19',7);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_ventas_por_categoria`
--

DROP TABLE IF EXISTS `vista_ventas_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_por_categoria` AS SELECT 
 1 AS `nombre_categoria`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_por_cliente`
--

DROP TABLE IF EXISTS `vista_ventas_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_por_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `total_compras`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'ventas_electro_ruzicska'
--

--
-- Dumping routines for database 'ventas_electro_ruzicska'
--

--
-- Final view structure for view `vista_ventas_por_categoria`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_por_categoria` AS select `cat`.`nombre_categoria` AS `nombre_categoria`,sum(`dv`.`cantidad`) AS `total_vendido` from ((`detalle_venta` `dv` join `productos` `p` on((`dv`.`id_producto` = `p`.`id_producto`))) join `categorias` `cat` on((`p`.`id_categoria` = `cat`.`id_categoria`))) group by `cat`.`nombre_categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_por_cliente` AS select `c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,count(`v`.`id_venta`) AS `total_compras` from (`ventas` `v` join `clientes` `c` on((`v`.`id_cliente` = `c`.`id_cliente`))) group by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-12 19:50:42
