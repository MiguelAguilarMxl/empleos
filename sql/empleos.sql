-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: empleos
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `documentations`
--

DROP TABLE IF EXISTS `documentations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentations` (
  `id` int(11) NOT NULL,
  `id_jobapplication` int(11) DEFAULT NULL,
  `curp` varchar(45) DEFAULT NULL,
  `afore` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `nss` varchar(45) DEFAULT NULL,
  `cartilla_militar` varchar(45) DEFAULT NULL,
  `pasaporte_no` varchar(45) DEFAULT NULL,
  `tiene_licencia` varchar(45) DEFAULT NULL,
  `documento_extranjero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentations`
--

LOCK TABLES `documentations` WRITE;
/*!40000 ALTER TABLE `documentations` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `economics`
--

DROP TABLE IF EXISTS `economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `economics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplication` int(11) NOT NULL,
  `otros_ingresos` int(11) DEFAULT NULL,
  `importe` varchar(45) DEFAULT NULL,
  `conyuge_trabaja` int(11) DEFAULT NULL,
  `percepcion_mensual` varchar(45) DEFAULT NULL,
  `vive_casa_propia` int(11) DEFAULT NULL,
  `valor_aproximado` varchar(45) DEFAULT NULL,
  `paga_renta` int(11) DEFAULT NULL,
  `renta_mensual` varchar(45) DEFAULT NULL,
  `tiene_auto_propio` int(11) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `tiene_deudas` int(11) DEFAULT NULL,
  `con_quien` varchar(45) DEFAULT NULL,
  `importe2` varchar(45) DEFAULT NULL,
  `cantidad_abono_mensual` varchar(45) DEFAULT NULL,
  `total_gastos_mensuales` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economics`
--

LOCK TABLES `economics` WRITE;
/*!40000 ALTER TABLE `economics` DISABLE KEYS */;
/*!40000 ALTER TABLE `economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familyrelatives`
--

DROP TABLE IF EXISTS `familyrelatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familyrelatives` (
  `id` int(11) NOT NULL,
  `id_jobapplications` int(11) NOT NULL,
  `id_relativecatalog` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `vive` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ocupacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familyrelatives`
--

LOCK TABLES `familyrelatives` WRITE;
/*!40000 ALTER TABLE `familyrelatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `familyrelatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generalknowledges`
--

DROP TABLE IF EXISTS `generalknowledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generalknowledges` (
  `id` int(11) NOT NULL,
  `id_jobapplication` int(11) NOT NULL,
  `funciones_oficina` varchar(300) DEFAULT NULL,
  `maquinas_oficina_domina` varchar(300) DEFAULT NULL,
  `software_domina` varchar(300) DEFAULT NULL,
  `otras_funciones_domina` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generalknowledges`
--

LOCK TABLES `generalknowledges` WRITE;
/*!40000 ALTER TABLE `generalknowledges` DISABLE KEYS */;
/*!40000 ALTER TABLE `generalknowledges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthhabits`
--

DROP TABLE IF EXISTS `healthhabits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthhabits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplication` int(11) NOT NULL,
  `considera_salud` varchar(45) DEFAULT NULL,
  `padece_enfermedad` varchar(45) DEFAULT NULL,
  `practica_deporte` varchar(45) DEFAULT NULL,
  `pertenece_club` varchar(45) DEFAULT NULL,
  `pasatiempo_favorito` varchar(45) DEFAULT NULL,
  `meta_vida` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthhabits`
--

LOCK TABLES `healthhabits` WRITE;
/*!40000 ALTER TABLE `healthhabits` DISABLE KEYS */;
/*!40000 ALTER TABLE `healthhabits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobapplications`
--

DROP TABLE IF EXISTS `jobapplications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobapplications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_solicitud` datetime NOT NULL,
  `puesto_solicitado` varchar(100) NOT NULL,
  `sueldo_mensual_deseado` varchar(45) DEFAULT NULL,
  `sueldo_mensual_otorgado` varchar(45) DEFAULT NULL,
  `foto_solicitud` varchar(100) DEFAULT NULL,
  `comentarios_entrevistador` varchar(500) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `added_user` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobapplications`
--

LOCK TABLES `jobapplications` WRITE;
/*!40000 ALTER TABLE `jobapplications` DISABLE KEYS */;
INSERT INTO `jobapplications` VALUES (1,'2017-07-29 22:12:00','programador','15000','11000','','',10,10,'2017-07-29 22:12:00',NULL,NULL),(2,'2017-07-29 22:25:00','muy gordita','10000','2000','','estos son los comentarios del entrevistador',1,1,'2017-07-29 22:25:00',NULL,NULL);
/*!40000 ALTER TABLE `jobapplications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborexpertises`
--

DROP TABLE IF EXISTS `laborexpertises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laborexpertises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplication` int(11) NOT NULL,
  `tiempo_laboro` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `puesto_desempeno` varchar(100) DEFAULT NULL,
  `sueldo_inicial` varchar(45) DEFAULT NULL,
  `sueldo_final` varchar(45) DEFAULT NULL,
  `motivo_separacion` varchar(300) DEFAULT NULL,
  `nombre_jefe_inmediato` varchar(100) DEFAULT NULL,
  `puesto_jefe_directo` varchar(100) DEFAULT NULL,
  `solicitar_info_usted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborexpertises`
--

LOCK TABLES `laborexpertises` WRITE;
/*!40000 ALTER TABLE `laborexpertises` DISABLE KEYS */;
/*!40000 ALTER TABLE `laborexpertises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscelaneousinformations`
--

DROP TABLE IF EXISTS `miscelaneousinformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscelaneousinformations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplication` int(11) NOT NULL,
  `supo_empleo` varchar(300) DEFAULT NULL,
  `parientes_empresa` int(11) DEFAULT NULL,
  `afilidado_sindicato` int(11) DEFAULT NULL,
  `seguro_vida` int(11) DEFAULT NULL,
  `dispuesto_viajar` int(11) DEFAULT NULL,
  `cambiar_residencia` int(11) DEFAULT NULL,
  `presentarse_trabajo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscelaneousinformations`
--

LOCK TABLES `miscelaneousinformations` WRITE;
/*!40000 ALTER TABLE `miscelaneousinformations` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscelaneousinformations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalinformations`
--

DROP TABLE IF EXISTS `personalinformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalinformations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplications` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `edad` varchar(300) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono_casa` varchar(45) DEFAULT NULL,
  `telefono_celular` varchar(45) DEFAULT NULL,
  `lugar_nacimiento` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `id_nationality` int(11) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `estatura` varchar(45) DEFAULT NULL,
  `peso` varchar(45) DEFAULT NULL,
  `personas_dependen_usted` varchar(300) DEFAULT NULL,
  `vive_con` varchar(300) DEFAULT NULL,
  `id_civilstate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalinformations`
--

LOCK TABLES `personalinformations` WRITE;
/*!40000 ALTER TABLE `personalinformations` DISABLE KEYS */;
/*!40000 ALTER TABLE `personalinformations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalreferences`
--

DROP TABLE IF EXISTS `personalreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobapplication` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `tiempo de conocerlo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalreferences`
--

LOCK TABLES `personalreferences` WRITE;
/*!40000 ALTER TABLE `personalreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `personalreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relativecatalogs`
--

DROP TABLE IF EXISTS `relativecatalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relativecatalogs` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relativecatalogs`
--

LOCK TABLES `relativecatalogs` WRITE;
/*!40000 ALTER TABLE `relativecatalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `relativecatalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarships`
--

DROP TABLE IF EXISTS `scholarships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholarships` (
  `id` int(11) NOT NULL,
  `id_jobapplication` int(11) NOT NULL,
  `id_schoolgrade` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fecha_de` varchar(45) DEFAULT NULL,
  `fecha_a` varchar(45) DEFAULT NULL,
  `anos` varchar(45) DEFAULT NULL,
  `titulo_recibido` varchar(45) DEFAULT NULL,
  `estudios_actuales` varchar(45) DEFAULT NULL,
  `escuela` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `grado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarships`
--

LOCK TABLES `scholarships` WRITE;
/*!40000 ALTER TABLE `scholarships` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholarships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schoolgrades`
--

DROP TABLE IF EXISTS `schoolgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schoolgrades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolgrades`
--

LOCK TABLES `schoolgrades` WRITE;
/*!40000 ALTER TABLE `schoolgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `schoolgrades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-29 19:44:10
