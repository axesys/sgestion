-- MySQL dump 10.13  Distrib 5.7.15, for Win32 (AMD64)
--
-- Host: localhost    Database: sgestion
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `albaranes`
--

DROP TABLE IF EXISTS `albaranes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes` (
  `id_albaranes` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `siniva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `tarifa` int(11) DEFAULT '1',
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_albaranes`),
  KEY `fk_albaranes_1` (`id_clientes`),
  KEY `fk_albaranes_2` (`id_formas_pago`),
  KEY `fk_albaranes_3` (`id_comerciales`),
  KEY `fk_albaranes_4` (`id_usuario`),
  CONSTRAINT `fk_albaranes_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_3` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes`
--

LOCK TABLES `albaranes` WRITE;
/*!40000 ALTER TABLE `albaranes` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranes_compra`
--

DROP TABLE IF EXISTS `albaranes_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes_compra` (
  `id_albaranes_compra` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_proveedores` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `documento_externo` varchar(20) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_albaranes_compra`),
  KEY `fk_albaranes_compra_1` (`id_proveedores`),
  KEY `fk_albaranes_compra_2` (`id_formas_pago`),
  KEY `fk_albaranes_compra_3` (`id_usuario`),
  CONSTRAINT `fk_albaranes_compra_1` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_compra_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_compra_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes_compra`
--

LOCK TABLES `albaranes_compra` WRITE;
/*!40000 ALTER TABLE `albaranes_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranes_compra_datos`
--

DROP TABLE IF EXISTS `albaranes_compra_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes_compra_datos` (
  `id_albaranes_compra_datos` varchar(38) NOT NULL,
  `id_albaranes_compra` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_albaranes_compra_datos`),
  KEY `fk_albaranes_compra_datos_1` (`id_albaranes_compra`),
  KEY `fk_albaranes_compra_datos_2` (`id_productos`),
  CONSTRAINT `fk_albaranes_compra_datos_1` FOREIGN KEY (`id_albaranes_compra`) REFERENCES `albaranes_compra` (`id_albaranes_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_compra_datos_2` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes_compra_datos`
--

LOCK TABLES `albaranes_compra_datos` WRITE;
/*!40000 ALTER TABLE `albaranes_compra_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes_compra_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranes_compra_plazos`
--

DROP TABLE IF EXISTS `albaranes_compra_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes_compra_plazos` (
  `id_albaranes_compra_plazos` varchar(38) NOT NULL,
  `id_albaranes_compra` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_albaranes_compra_plazos`),
  KEY `fk_albaranes_compra_plazos_1` (`id_albaranes_compra`),
  CONSTRAINT `fk_albaranes_compra_plazos_1` FOREIGN KEY (`id_albaranes_compra`) REFERENCES `albaranes_compra` (`id_albaranes_compra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes_compra_plazos`
--

LOCK TABLES `albaranes_compra_plazos` WRITE;
/*!40000 ALTER TABLE `albaranes_compra_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes_compra_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranes_datos`
--

DROP TABLE IF EXISTS `albaranes_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes_datos` (
  `id_albaranes_datos` varchar(38) NOT NULL,
  `id_albaranes` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_albaranes_datos`),
  KEY `albaranesalbaranes_datos_id_alb` (`id_albaranes`),
  KEY `fk_albaranes_datos_1` (`id_productos`),
  CONSTRAINT `albaranesalbaranes_datos_id_alb` FOREIGN KEY (`id_albaranes`) REFERENCES `albaranes` (`id_albaranes`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_albaranes_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes_datos`
--

LOCK TABLES `albaranes_datos` WRITE;
/*!40000 ALTER TABLE `albaranes_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranes_plazos`
--

DROP TABLE IF EXISTS `albaranes_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranes_plazos` (
  `id_albaranes_plazos` varchar(38) NOT NULL,
  `id_albaranes` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_albaranes_plazos`),
  KEY `albaranesalbaranes_plazos_id_al` (`id_albaranes`),
  CONSTRAINT `albaranesalbaranes_plazos_id_al` FOREIGN KEY (`id_albaranes`) REFERENCES `albaranes` (`id_albaranes`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranes_plazos`
--

LOCK TABLES `albaranes_plazos` WRITE;
/*!40000 ALTER TABLE `albaranes_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranes_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id_bancos` varchar(38) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `bic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_bancos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendario` (
  `id_calendario` varchar(38) NOT NULL,
  `id_parent` varchar(38) NOT NULL,
  `tipo` decimal(3,0) DEFAULT NULL,
  `comienzo` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `opciones` decimal(3,0) DEFAULT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `recurrencia_index` int(11) DEFAULT NULL,
  `recurrencia_info` longtext,
  `id_recursos` longtext,
  `ubicacion` varchar(255) DEFAULT NULL,
  `mensaje` longtext,
  `aviso_fecha` datetime DEFAULT NULL,
  `aviso_minutos` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `actual_comienzo` datetime DEFAULT NULL,
  `actual_fin` datetime DEFAULT NULL,
  `avisos_recursos` longtext,
  `tarea_completada_campo` int(11) DEFAULT NULL,
  `tarea_indice_campo` int(11) DEFAULT NULL,
  `tarea_enlaces_campo` longblob,
  `tarea_estado_campo` int(11) DEFAULT NULL,
  `id_sync` varchar(255) DEFAULT NULL,
  `last_modification_time` datetime DEFAULT NULL,
  `tabla` varchar(30) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `campo` varchar(30) DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_calendario`),
  KEY `fk_calendario_1` (`id_usuario`),
  CONSTRAINT `fk_calendario_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campos`
--

DROP TABLE IF EXISTS `campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos` (
  `id_campos` varchar(38) NOT NULL,
  `tabla` varchar(50) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `etiqueta` varchar(100) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `clase` varchar(50) DEFAULT NULL,
  `componente` varchar(100) DEFAULT NULL,
  `valores` longtext,
  `deshabilitado` decimal(1,0) NOT NULL,
  `propiedades` longtext,
  PRIMARY KEY (`id_campos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos`
--

LOCK TABLES `campos` WRITE;
/*!40000 ALTER TABLE `campos` DISABLE KEYS */;
/*!40000 ALTER TABLE `campos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_clientes` varchar(38) NOT NULL,
  `nombre_comercial` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `web` varchar(60) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `observaciones` longtext,
  `contacto` varchar(50) DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `entidad` varchar(50) DEFAULT NULL,
  `pais` varchar(40) DEFAULT NULL,
  `tarifa` int(11) DEFAULT '1',
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `diapago` int(11) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `sepamnd_id` varchar(35) DEFAULT NULL,
  `sepamnd_date` datetime DEFAULT NULL,
  `organo_gestor` varchar(10) DEFAULT NULL,
  `unidad_tramitadora` varchar(10) DEFAULT NULL,
  `oficina_contable` varchar(10) DEFAULT NULL,
  `organo_proponente` varchar(10) DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_clientes`),
  KEY `fk_clientes_1` (`id_formas_pago`),
  KEY `fk_clientes_2` (`id_comerciales`),
  KEY `fk_clientes_3` (`id_usuario`),
  CONSTRAINT `fk_clientes_1` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_clientes_2` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_clientes_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comandos`
--

DROP TABLE IF EXISTS `comandos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comandos` (
  `id_comandos` varchar(38) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `etiqueta` varchar(100) DEFAULT NULL,
  `script` varchar(100) DEFAULT NULL,
  `vista_previa` decimal(1,0) NOT NULL,
  `cron` int(11) DEFAULT NULL,
  `cron_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_comandos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandos`
--

LOCK TABLES `comandos` WRITE;
/*!40000 ALTER TABLE `comandos` DISABLE KEYS */;
/*!40000 ALTER TABLE `comandos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comerciales`
--

DROP TABLE IF EXISTS `comerciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comerciales` (
  `id_comerciales` varchar(38) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `web` varchar(60) DEFAULT NULL,
  `observaciones` longtext,
  `pais` varchar(40) DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_comerciales`),
  KEY `fk_comerciales_1` (`id_usuario`),
  CONSTRAINT `fk_comerciales_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comerciales`
--

LOCK TABLES `comerciales` WRITE;
/*!40000 ALTER TABLE `comerciales` DISABLE KEYS */;
/*!40000 ALTER TABLE `comerciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_enlaces`
--

DROP TABLE IF EXISTS `documentos_enlaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_enlaces` (
  `id_documentos_enlaces` varchar(38) NOT NULL,
  `id_documentos_tipos` varchar(38) DEFAULT NULL,
  `id_documentos_destino` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_documentos_enlaces`),
  KEY `fk_documentos_enlaces_1` (`id_documentos_tipos`),
  CONSTRAINT `fk_documentos_enlaces_1` FOREIGN KEY (`id_documentos_tipos`) REFERENCES `documentos_tipos` (`id_documentos_tipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_enlaces`
--

LOCK TABLES `documentos_enlaces` WRITE;
/*!40000 ALTER TABLE `documentos_enlaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos_enlaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_tipos`
--

DROP TABLE IF EXISTS `documentos_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_tipos` (
  `id_documentos_tipos` varchar(38) NOT NULL,
  `tipo` varchar(38) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `stock` decimal(1,0) NOT NULL DEFAULT '0',
  `stock_signo` int(11) DEFAULT NULL,
  `documento_final` decimal(1,0) NOT NULL DEFAULT '0',
  `serie` varchar(4) DEFAULT NULL,
  `informe_base` varchar(10) DEFAULT NULL,
  `email_asunto` varchar(255) DEFAULT NULL,
  `email_cuerpo` longtext,
  PRIMARY KEY (`id_documentos_tipos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_tipos`
--

LOCK TABLES `documentos_tipos` WRITE;
/*!40000 ALTER TABLE `documentos_tipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_tipos_idiomas`
--

DROP TABLE IF EXISTS `documentos_tipos_idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_tipos_idiomas` (
  `id_idiomas` varchar(38) NOT NULL,
  `id_documentos_tipos` varchar(38) DEFAULT NULL,
  `descripcion_loc` varchar(50) DEFAULT NULL,
  `email_asunto` varchar(255) DEFAULT NULL,
  `email_cuerpo` longtext,
  PRIMARY KEY (`id_idiomas`),
  KEY `fk_documentos_tipos_idiomas_1` (`id_documentos_tipos`),
  CONSTRAINT `fk_documentos_tipos_idiomas_1` FOREIGN KEY (`id_documentos_tipos`) REFERENCES `documentos_tipos` (`id_documentos_tipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_tipos_idiomas`
--

LOCK TABLES `documentos_tipos_idiomas` WRITE;
/*!40000 ALTER TABLE `documentos_tipos_idiomas` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos_tipos_idiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familias`
--

DROP TABLE IF EXISTS `familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familias` (
  `id_familias` varchar(38) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_familias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familias`
--

LOCK TABLES `familias` WRITE;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `id_formas_pago` varchar(38) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `numero_recibos` int(11) DEFAULT '1',
  `primer_recibo` int(11) DEFAULT NULL,
  `resto_recibos` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_formas_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos`
--

DROP TABLE IF EXISTS `gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos` (
  `id_gastos` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_proveedores` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `irpf` double DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `documento_externo` varchar(20) DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_gastos`),
  KEY `fk_gastos_1` (`id_proveedores`),
  KEY `fk_gastos_2` (`id_usuario`),
  CONSTRAINT `fk_gastos_1` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`) ON UPDATE CASCADE,
  CONSTRAINT `fk_gastos_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_datos`
--

DROP TABLE IF EXISTS `gastos_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos_datos` (
  `id_gastos_datos` varchar(38) NOT NULL,
  `id_gastos` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_gastos_datos`),
  KEY `fk_gastos_datos_1` (`id_productos`),
  KEY `gastosgastos_datos_id_gastos_ga` (`id_gastos`),
  CONSTRAINT `fk_gastos_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  CONSTRAINT `gastosgastos_datos_id_gastos_ga` FOREIGN KEY (`id_gastos`) REFERENCES `gastos` (`id_gastos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_datos`
--

LOCK TABLES `gastos_datos` WRITE;
/*!40000 ALTER TABLE `gastos_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_plazos`
--

DROP TABLE IF EXISTS `gastos_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos_plazos` (
  `id_gastos_plazos` varchar(38) NOT NULL,
  `id_gastos` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_gastos_plazos`),
  KEY `gastosgastos_plazos_id_gastos_g` (`id_gastos`),
  CONSTRAINT `gastosgastos_plazos_id_gastos_g` FOREIGN KEY (`id_gastos`) REFERENCES `gastos` (`id_gastos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_plazos`
--

LOCK TABLES `gastos_plazos` WRITE;
/*!40000 ALTER TABLE `gastos_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id_grupos` varchar(38) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_grupos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos_datos`
--

DROP TABLE IF EXISTS `grupos_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos_datos` (
  `id_grupos_datos` varchar(38) NOT NULL,
  `id_grupos` varchar(38) DEFAULT NULL,
  `objeto` varchar(255) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `permitir` decimal(1,0) NOT NULL DEFAULT '0',
  `sin_solapar` decimal(1,0) NOT NULL,
  PRIMARY KEY (`id_grupos_datos`),
  KEY `gruposgrupos_datos_id_grupos_gr` (`id_grupos`),
  CONSTRAINT `gruposgrupos_datos_id_grupos_gr` FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id_grupos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_datos`
--

LOCK TABLES `grupos_datos` WRITE;
/*!40000 ALTER TABLE `grupos_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos` (
  `id_ingresos` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rectificat_iva` decimal(1,0) NOT NULL DEFAULT '0',
  `motivo_rectificacion` varchar(255) DEFAULT NULL,
  `id_ingresos_rectificacion` varchar(38) DEFAULT NULL,
  `observaciones` longtext,
  `tarifa` int(11) DEFAULT '1',
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_ingresos`),
  KEY `fk_ingresos_1` (`id_formas_pago`),
  KEY `fk_ingresos_2` (`id_clientes`),
  KEY `fk_ingresos_3` (`id_comerciales`),
  KEY `fk_ingresos_4` (`id_usuario`),
  CONSTRAINT `fk_ingresos_1` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_2` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_3` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos_datos`
--

DROP TABLE IF EXISTS `ingresos_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos_datos` (
  `id_ingresos_datos` varchar(38) NOT NULL,
  `id_ingresos` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_ingresos_datos`),
  KEY `fk_ingresos_datos_1` (`id_productos`),
  KEY `ingresosingresos_datos_id_ingre` (`id_ingresos`),
  CONSTRAINT `fk_ingresos_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  CONSTRAINT `ingresosingresos_datos_id_ingre` FOREIGN KEY (`id_ingresos`) REFERENCES `ingresos` (`id_ingresos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos_datos`
--

LOCK TABLES `ingresos_datos` WRITE;
/*!40000 ALTER TABLE `ingresos_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos_plazos`
--

DROP TABLE IF EXISTS `ingresos_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos_plazos` (
  `id_ingresos_plazos` varchar(38) NOT NULL,
  `id_ingresos` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ingresos_plazos`),
  KEY `ingresosingresos_plazos_id_ingr` (`id_ingresos`),
  CONSTRAINT `ingresosingresos_plazos_id_ingr` FOREIGN KEY (`id_ingresos`) REFERENCES `ingresos` (`id_ingresos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos_plazos`
--

LOCK TABLES `ingresos_plazos` WRITE;
/*!40000 ALTER TABLE `ingresos_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos_programados`
--

DROP TABLE IF EXISTS `ingresos_programados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos_programados` (
  `id_ingresos_programados` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rectificat_iva` decimal(1,0) NOT NULL,
  `motivo_rectificacion` varchar(255) DEFAULT NULL,
  `id_ingresos_rectificacion` varchar(38) DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL,
  `tarifa` int(11) DEFAULT NULL,
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `diaemision` int(11) DEFAULT NULL,
  `enero` decimal(1,0) NOT NULL,
  `febrero` decimal(1,0) NOT NULL,
  `marzo` decimal(1,0) NOT NULL,
  `abril` decimal(1,0) NOT NULL,
  `mayo` decimal(1,0) NOT NULL,
  `junio` decimal(1,0) NOT NULL,
  `julio` decimal(1,0) NOT NULL,
  `agosto` decimal(1,0) NOT NULL,
  `septiembre` decimal(1,0) NOT NULL,
  `octubre` decimal(1,0) NOT NULL,
  `noviembre` decimal(1,0) NOT NULL,
  `diciembre` decimal(1,0) NOT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_ingresos_programados`),
  KEY `fk_ingresos_programados_1` (`id_clientes`),
  KEY `fk_ingresos_programados_2` (`id_formas_pago`),
  KEY `fk_ingresos_programados_3` (`id_comerciales`),
  KEY `fk_ingresos_programados_4` (`id_usuario`),
  CONSTRAINT `fk_ingresos_programados_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_programados_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_programados_3` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_programados_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos_programados`
--

LOCK TABLES `ingresos_programados` WRITE;
/*!40000 ALTER TABLE `ingresos_programados` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos_programados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos_programados_datos`
--

DROP TABLE IF EXISTS `ingresos_programados_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos_programados_datos` (
  `id_ingresos_programados_datos` varchar(38) NOT NULL,
  `id_ingresos_programados` varchar(38) NOT NULL,
  `posicion` double DEFAULT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_ingresos_programados_datos`),
  KEY `fk_ingresos_programados_datos_1` (`id_ingresos_programados`),
  KEY `fk_ingresos_programados_datos_2` (`id_productos`),
  CONSTRAINT `fk_ingresos_programados_datos_1` FOREIGN KEY (`id_ingresos_programados`) REFERENCES `ingresos_programados` (`id_ingresos_programados`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresos_programados_datos_2` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos_programados_datos`
--

LOCK TABLES `ingresos_programados_datos` WRITE;
/*!40000 ALTER TABLE `ingresos_programados_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos_programados_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id_idiomas` varchar(38) NOT NULL,
  `id_paises` varchar(38) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `nacionalidad` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedidos` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `fk_pedidos_1` (`id_clientes`),
  KEY `fk_pedidos_2` (`id_formas_pago`),
  CONSTRAINT `fk_pedidos_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pedidos_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_compra`
--

DROP TABLE IF EXISTS `pedidos_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_compra` (
  `id_pedidos_compra` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_proveedores` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `conre` decimal(1,0) NOT NULL,
  `conirpf` decimal(1,0) NOT NULL,
  `siniva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `documento_externo` varchar(20) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_pedidos_compra`),
  KEY `fk_pedidos_compra_1` (`id_proveedores`),
  KEY `fk_pedidos_compra_2` (`id_formas_pago`),
  KEY `fk_pedidos_compra_3` (`id_usuario`),
  CONSTRAINT `fk_pedidos_compra_1` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pedidos_compra_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pedidos_compra_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_compra`
--

LOCK TABLES `pedidos_compra` WRITE;
/*!40000 ALTER TABLE `pedidos_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_compra_datos`
--

DROP TABLE IF EXISTS `pedidos_compra_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_compra_datos` (
  `id_pedidos_compra_datos` varchar(38) NOT NULL,
  `id_pedidos_compra` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_pedidos_compra_datos`),
  KEY `comprascompras_datos_id_pedidos` (`id_pedidos_compra`),
  KEY `fk_pedidos_compra_datos_1` (`id_productos`),
  CONSTRAINT `comprascompras_datos_id_pedidos` FOREIGN KEY (`id_pedidos_compra`) REFERENCES `pedidos_compra` (`id_pedidos_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pedidos_compra_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_compra_datos`
--

LOCK TABLES `pedidos_compra_datos` WRITE;
/*!40000 ALTER TABLE `pedidos_compra_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_compra_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_compra_plazos`
--

DROP TABLE IF EXISTS `pedidos_compra_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_compra_plazos` (
  `id_pedidos_compra_plazos` varchar(38) NOT NULL,
  `id_pedidos_compra` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pedidos_compra_plazos`),
  KEY `pedidos_comprapedidos_compra_pl` (`id_pedidos_compra`),
  CONSTRAINT `pedidos_comprapedidos_compra_pl` FOREIGN KEY (`id_pedidos_compra`) REFERENCES `pedidos_compra` (`id_pedidos_compra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_compra_plazos`
--

LOCK TABLES `pedidos_compra_plazos` WRITE;
/*!40000 ALTER TABLE `pedidos_compra_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_compra_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_datos`
--

DROP TABLE IF EXISTS `pedidos_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_datos` (
  `id_pedidos_datos` varchar(38) NOT NULL,
  `id_pedidos` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_pedidos_datos`),
  KEY `fk_pedidos_datos_1` (`id_productos`),
  KEY `pedidospedidos_datos_id_pedidos` (`id_pedidos`),
  CONSTRAINT `fk_pedidos_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  CONSTRAINT `pedidospedidos_datos_id_pedidos` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_datos`
--

LOCK TABLES `pedidos_datos` WRITE;
/*!40000 ALTER TABLE `pedidos_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_plazos`
--

DROP TABLE IF EXISTS `pedidos_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos_plazos` (
  `id_pedidos_plazos` varchar(38) NOT NULL,
  `id_pedidos` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pedidos_plazos`),
  KEY `pedidospedidos_plazos_id_pedido` (`id_pedidos`),
  CONSTRAINT `pedidospedidos_plazos_id_pedido` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_plazos`
--

LOCK TABLES `pedidos_plazos` WRITE;
/*!40000 ALTER TABLE `pedidos_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestos`
--

DROP TABLE IF EXISTS `presupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestos` (
  `id_presupuestos` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `conre` decimal(1,0) NOT NULL,
  `conirpf` decimal(1,0) NOT NULL,
  `siniva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `tarifa` int(11) DEFAULT '1',
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_presupuestos`),
  KEY `fk_presupuestos_1` (`id_clientes`),
  KEY `fk_presupuestos_2` (`id_formas_pago`),
  KEY `fk_presupuestos_3` (`id_comerciales`),
  KEY `fk_presupuestos_4` (`id_usuario`),
  CONSTRAINT `fk_presupuestos_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_presupuestos_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_presupuestos_3` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_presupuestos_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestos`
--

LOCK TABLES `presupuestos` WRITE;
/*!40000 ALTER TABLE `presupuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestos_datos`
--

DROP TABLE IF EXISTS `presupuestos_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestos_datos` (
  `id_presupuestos_datos` varchar(38) NOT NULL,
  `id_presupuestos` varchar(38) NOT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `posicion` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_presupuestos_datos`),
  KEY `fk_presupuestos_datos_1` (`id_productos`),
  KEY `presupuestospresupuestos_datos_` (`id_presupuestos`),
  CONSTRAINT `fk_presupuestos_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  CONSTRAINT `presupuestospresupuestos_datos_` FOREIGN KEY (`id_presupuestos`) REFERENCES `presupuestos` (`id_presupuestos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestos_datos`
--

LOCK TABLES `presupuestos_datos` WRITE;
/*!40000 ALTER TABLE `presupuestos_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestos_plazos`
--

DROP TABLE IF EXISTS `presupuestos_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestos_plazos` (
  `id_presupuestos_plazos` varchar(38) NOT NULL,
  `id_presupuestos` varchar(38) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT '0',
  `pagado` decimal(1,0) NOT NULL DEFAULT '0',
  `devuelto` decimal(1,0) NOT NULL DEFAULT '0',
  `cancelado` decimal(1,0) NOT NULL DEFAULT '0',
  `emitido` decimal(1,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_presupuestos_plazos`),
  KEY `presupuestospresupuestos_plazos` (`id_presupuestos`),
  CONSTRAINT `presupuestospresupuestos_plazos` FOREIGN KEY (`id_presupuestos`) REFERENCES `presupuestos` (`id_presupuestos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestos_plazos`
--

LOCK TABLES `presupuestos_plazos` WRITE;
/*!40000 ALTER TABLE `presupuestos_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_productos` varchar(38) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_familia` varchar(38) DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precio1` double DEFAULT '0',
  `precio2` double DEFAULT '0',
  `precio3` double DEFAULT '0',
  `sinstock` decimal(1,0) NOT NULL DEFAULT '0',
  `stock` double DEFAULT '0',
  `stock_minimo` double DEFAULT '0',
  `iva_incluido` decimal(1,0) NOT NULL DEFAULT '0',
  `kit` decimal(1,0) NOT NULL DEFAULT '0',
  `comision` double DEFAULT NULL,
  `observaciones` longtext,
  `pvp1` double DEFAULT NULL,
  `pvp2` double DEFAULT NULL,
  `pvp3` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `fk_productos_1` (`id_familia`),
  KEY `fk_productos_2` (`id_usuario`),
  CONSTRAINT `fk_productos_1` FOREIGN KEY (`id_familia`) REFERENCES `familias` (`id_familias`) ON UPDATE CASCADE,
  CONSTRAINT `fk_productos_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id_proveedores` varchar(38) NOT NULL,
  `nombre_comercial` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `movil` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `observaciones` longtext,
  `irpf` double DEFAULT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `entidad` varchar(50) DEFAULT NULL,
  `pais` varchar(40) DEFAULT NULL,
  `dia_pago` int(11) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_proveedores_1` (`id_formas_pago`),
  KEY `fk_proveedores_2` (`id_usuario`),
  CONSTRAINT `fk_proveedores_1` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_proveedores_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `id_provincias` varchar(38) NOT NULL,
  `id_idiomas` varchar(38) DEFAULT NULL,
  `id_paises` varchar(38) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpv`
--

DROP TABLE IF EXISTS `tpv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpv` (
  `id_tpv` varchar(38) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_clientes` varchar(38) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  `con_re` decimal(1,0) NOT NULL,
  `con_irpf` decimal(1,0) NOT NULL,
  `sin_iva` decimal(1,0) NOT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `descuento` double DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `base_imponible1` double DEFAULT NULL,
  `iva1` double DEFAULT NULL,
  `re1` double DEFAULT NULL,
  `base_imponible2` double DEFAULT NULL,
  `iva2` double DEFAULT NULL,
  `re2` double DEFAULT NULL,
  `base_imponible3` double DEFAULT NULL,
  `iva3` double DEFAULT NULL,
  `re3` double DEFAULT NULL,
  `id_formas_pago` varchar(38) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `observaciones` longtext,
  `traspasado` decimal(1,0) NOT NULL DEFAULT '0',
  `tarifa` int(11) DEFAULT NULL,
  `id_comerciales` varchar(38) DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `total_entrega` double DEFAULT NULL,
  `total_cambio` double DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `total_iva1` double DEFAULT NULL,
  `total_iva2` double DEFAULT NULL,
  `total_iva3` double DEFAULT NULL,
  `total_re1` double DEFAULT NULL,
  `total_re2` double DEFAULT NULL,
  `total_re3` double DEFAULT NULL,
  `total_irpf` double DEFAULT NULL,
  `total_descuento` double DEFAULT NULL,
  `total_pendiente` double DEFAULT NULL,
  `id_usuario` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_tpv`),
  KEY `fk_tpv_1` (`id_clientes`),
  KEY `fk_tpv_2` (`id_formas_pago`),
  KEY `fk_tpv_3` (`id_comerciales`),
  KEY `fk_tpv_4` (`id_usuario`),
  CONSTRAINT `fk_tpv_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tpv_2` FOREIGN KEY (`id_formas_pago`) REFERENCES `formas_pago` (`id_formas_pago`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tpv_3` FOREIGN KEY (`id_comerciales`) REFERENCES `comerciales` (`id_comerciales`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tpv_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpv`
--

LOCK TABLES `tpv` WRITE;
/*!40000 ALTER TABLE `tpv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpv_datos`
--

DROP TABLE IF EXISTS `tpv_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpv_datos` (
  `id_tpv_datos` varchar(38) NOT NULL,
  `id_tpv` varchar(38) NOT NULL,
  `posicion` double DEFAULT NULL,
  `id_productos` varchar(38) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id_tpv_datos`),
  KEY `fk_tpv_datos_1` (`id_productos`),
  KEY `tpvtpv_datos_id_tpv_tpv_id_tpv` (`id_tpv`),
  CONSTRAINT `fk_tpv_datos_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  CONSTRAINT `tpvtpv_datos_id_tpv_tpv_id_tpv` FOREIGN KEY (`id_tpv`) REFERENCES `tpv` (`id_tpv`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpv_datos`
--

LOCK TABLES `tpv_datos` WRITE;
/*!40000 ALTER TABLE `tpv_datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpv_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpv_plazos`
--

DROP TABLE IF EXISTS `tpv_plazos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpv_plazos` (
  `id_tpv_plazos` varchar(38) NOT NULL,
  `id_tpv` varchar(38) NOT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `pagado` decimal(1,0) NOT NULL,
  `devuelto` decimal(1,0) NOT NULL,
  `cancelado` decimal(1,0) NOT NULL,
  `emitido` decimal(1,0) NOT NULL,
  PRIMARY KEY (`id_tpv_plazos`),
  KEY `tpvtpv_plazos_id_tpv_tpv_id_tpv` (`id_tpv`),
  CONSTRAINT `tpvtpv_plazos_id_tpv_tpv_id_tpv` FOREIGN KEY (`id_tpv`) REFERENCES `tpv` (`id_tpv`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpv_plazos`
--

LOCK TABLES `tpv_plazos` WRITE;
/*!40000 ALTER TABLE `tpv_plazos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpv_plazos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traspasos`
--

DROP TABLE IF EXISTS `traspasos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traspasos` (
  `id_traspasos` varchar(38) NOT NULL,
  `id_tabla_origen` varchar(38) DEFAULT NULL,
  `id_origen` varchar(38) DEFAULT NULL,
  `id_tabla_destino` varchar(38) DEFAULT NULL,
  `id_destino` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id_traspasos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traspasos`
--

LOCK TABLES `traspasos` WRITE;
/*!40000 ALTER TABLE `traspasos` DISABLE KEYS */;
/*!40000 ALTER TABLE `traspasos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` varchar(38) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `provincia` varchar(60) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `movil` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `observaciones` longtext,
  `clave` varchar(18) DEFAULT NULL,
  `id_grupos` varchar(38) DEFAULT NULL,
  `nif` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  KEY `fk_usuarios_1` (`id_grupos`),
  CONSTRAINT `fk_usuarios_1` FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id_grupos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-25  1:23:04
