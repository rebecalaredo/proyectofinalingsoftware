/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Benamedic
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` bigint(20) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `quien_registro` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `quien_registro` (`quien_registro`),
  CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `admins_ibfk_2` FOREIGN KEY (`quien_registro`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `admins` VALUES
(1,'2025-01-10 09:00:00',NULL),
(2,'2025-02-01 12:00:00',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `alergias`
--

DROP TABLE IF EXISTS `alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alergias` (
  `alergia_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`alergia_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `alergias_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alergias`
--

LOCK TABLES `alergias` WRITE;
/*!40000 ALTER TABLE `alergias` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `alergias` VALUES
(1,1,'Ninguna','No presenta alergias'),
(2,2,'Penicilina','Reacción cutánea');
/*!40000 ALTER TABLE `alergias` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `antecedentes_familiares`
--

DROP TABLE IF EXISTS `antecedentes_familiares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_familiares` (
  `ant_familiar_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`ant_familiar_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `antecedentes_familiares_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_familiares`
--

LOCK TABLES `antecedentes_familiares` WRITE;
/*!40000 ALTER TABLE `antecedentes_familiares` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `antecedentes_familiares` VALUES
(1,1,'Padre','Diabético'),
(2,2,'Madre','Hipertensa');
/*!40000 ALTER TABLE `antecedentes_familiares` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `antecedentes_personales`
--

DROP TABLE IF EXISTS `antecedentes_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_personales` (
  `ant_personal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`ant_personal_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `antecedentes_personales_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_personales`
--

LOCK TABLES `antecedentes_personales` WRITE;
/*!40000 ALTER TABLE `antecedentes_personales` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `antecedentes_personales` VALUES
(1,1,'Apendicitis','Operado en 2010'),
(2,2,'Hipertensión','Diagnosticado en 2018');
/*!40000 ALTER TABLE `antecedentes_personales` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `antecedentes_personales_no_patologicos`
--

DROP TABLE IF EXISTS `antecedentes_personales_no_patologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_personales_no_patologicos` (
  `apnp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `escolaridad` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`apnp_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `antecedentes_personales_no_patologicos_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_personales_no_patologicos`
--

LOCK TABLES `antecedentes_personales_no_patologicos` WRITE;
/*!40000 ALTER TABLE `antecedentes_personales_no_patologicos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `antecedentes_personales_no_patologicos` VALUES
(1,1,'Ingeniera','Universidad','Católica'),
(2,2,'Profesor','Maestría','Atea');
/*!40000 ALTER TABLE `antecedentes_personales_no_patologicos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `antecedentes_quirurgicos`
--

DROP TABLE IF EXISTS `antecedentes_quirurgicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_quirurgicos` (
  `ant_quirurgico_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`ant_quirurgico_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `antecedentes_quirurgicos_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_quirurgicos`
--

LOCK TABLES `antecedentes_quirurgicos` WRITE;
/*!40000 ALTER TABLE `antecedentes_quirurgicos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `antecedentes_quirurgicos` VALUES
(1,1,'Apendicectomía','Sin complicaciones'),
(2,2,'Cirugía ocular','Corrección de miopía');
/*!40000 ALTER TABLE `antecedentes_quirurgicos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `cita_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint(20) NOT NULL,
  `medico_id` bigint(20) NOT NULL,
  `fecha_hora_cita` datetime NOT NULL,
  `motivo_consulta` text NOT NULL,
  `estado` enum('agendada','cancelada','atendida','no_asistio') DEFAULT 'agendada',
  PRIMARY KEY (`cita_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `medico_id` (`medico_id`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`),
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`medico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `citas` VALUES
(1,4,2,'2025-06-10 10:00:00','Chequeo general','atendida'),
(2,5,3,'2025-06-11 11:00:00','Dolor de cabeza','atendida'),
(3,4,2,'2025-06-12 09:30:00','Consulta dermatológica','agendada'),
(4,5,3,'2025-06-13 15:00:00','Dolor muscular','cancelada'),
(5,4,2,'2025-06-14 16:00:00','Chequeo rutinario','no_asistio');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `consulta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cita_id` bigint(20) NOT NULL,
  `observaciones` text DEFAULT NULL,
  PRIMARY KEY (`consulta_id`),
  KEY `cita_id` (`cita_id`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`cita_id`) REFERENCES `citas` (`cita_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `consultas` VALUES
(1,1,'Paciente en buen estado general'),
(2,2,'Presión arterial elevada'),
(3,3,'Alergia leve detectada'),
(4,4,'Cita cancelada por el paciente'),
(5,5,'No se presentó a la cita');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `diagnosticos`
--

DROP TABLE IF EXISTS `diagnosticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosticos` (
  `diagnostico_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consulta_id` bigint(20) NOT NULL,
  `estudio_id` bigint(20) DEFAULT NULL,
  `fecha_diagnostico` date NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`diagnostico_id`),
  KEY `consulta_id` (`consulta_id`),
  KEY `estudio_id` (`estudio_id`),
  CONSTRAINT `diagnosticos_ibfk_1` FOREIGN KEY (`consulta_id`) REFERENCES `consultas` (`consulta_id`),
  CONSTRAINT `diagnosticos_ibfk_2` FOREIGN KEY (`estudio_id`) REFERENCES `estudios` (`estudio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosticos`
--

LOCK TABLES `diagnosticos` WRITE;
/*!40000 ALTER TABLE `diagnosticos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `diagnosticos` VALUES
(1,1,1,'2025-06-11','Paciente saludable'),
(2,2,2,'2025-06-12','Hipertensión leve'),
(3,3,3,'2025-06-13','Rinitis alérgica'),
(4,1,4,'2025-06-11','Sin hallazgos patológicos'),
(5,2,5,'2025-06-12','Cefalea tensional');
/*!40000 ALTER TABLE `diagnosticos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `enfermedades_cronicas`
--

DROP TABLE IF EXISTS `enfermedades_cronicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermedades_cronicas` (
  `cronica_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`cronica_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `enfermedades_cronicas_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades_cronicas`
--

LOCK TABLES `enfermedades_cronicas` WRITE;
/*!40000 ALTER TABLE `enfermedades_cronicas` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `enfermedades_cronicas` VALUES
(1,1,'Ninguna','Sin registro'),
(2,2,'Hipertensión','Control con medicación');
/*!40000 ALTER TABLE `enfermedades_cronicas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `especialidad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`especialidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `especialidades` VALUES
(1,'Cardiología','Tratamiento de enfermedades del corazón'),
(2,'Pediatría','Cuidado médico de niños'),
(3,'Dermatología','Trastornos de la piel'),
(4,'Neurología','Trastornos del sistema nervioso'),
(5,'Ginecología','Salud reproductiva femenina');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudios` (
  `estudio_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consulta_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_resultado` date DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  PRIMARY KEY (`estudio_id`),
  KEY `consulta_id` (`consulta_id`),
  CONSTRAINT `estudios_ibfk_1` FOREIGN KEY (`consulta_id`) REFERENCES `consultas` (`consulta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudios`
--

LOCK TABLES `estudios` WRITE;
/*!40000 ALTER TABLE `estudios` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `estudios` VALUES
(1,1,'Análisis de sangre','Revisión general','2025-06-10','2025-06-11','Todo normal'),
(2,2,'Electrocardiograma','Control cardíaco','2025-06-11','2025-06-12','Ritmo sinusal normal'),
(3,3,'Prueba alérgica','Detección de alérgenos','2025-06-12','2025-06-13','Alergia al polvo'),
(4,1,'Radiografía de tórax','Chequeo pulmonar','2025-06-10','2025-06-11','Sin anomalías'),
(5,2,'Resonancia magnética','Estudio cerebral','2025-06-11','2025-06-12','Normal');
/*!40000 ALTER TABLE `estudios` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `habitos`
--

DROP TABLE IF EXISTS `habitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitos` (
  `habito_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`habito_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `habitos_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitos`
--

LOCK TABLES `habitos` WRITE;
/*!40000 ALTER TABLE `habitos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `habitos` VALUES
(1,1,'Ejercicio','Corre 3 veces por semana'),
(2,2,'Dieta','Equilibrada y sin sal');
/*!40000 ALTER TABLE `habitos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `historiales_clinicos`
--

DROP TABLE IF EXISTS `historiales_clinicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiales_clinicos` (
  `historial_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `paciente_id` bigint(20) NOT NULL,
  `observaciones` text DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_alta` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`historial_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `historiales_clinicos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiales_clinicos`
--

LOCK TABLES `historiales_clinicos` WRITE;
/*!40000 ALTER TABLE `historiales_clinicos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `historiales_clinicos` VALUES
(1,4,'Historial inicial sin antecedentes graves','2025-10-31 18:27:11','2025-10-31 18:27:11'),
(2,5,'Historial con hipertensión controlada','2025-10-31 18:27:11','2025-10-31 18:27:11');
/*!40000 ALTER TABLE `historiales_clinicos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `medicamento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `presentacion` varchar(100) NOT NULL,
  PRIMARY KEY (`medicamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `medicamentos` VALUES
(1,'Paracetamol','Tabletas 500mg'),
(2,'Losartán','Tabletas 50mg'),
(3,'Loratadina','Tabletas 10mg'),
(4,'Ibuprofeno','Cápsulas 200mg'),
(5,'Omeprazol','Cápsulas 20mg');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `medico_id` bigint(20) NOT NULL,
  `especialidad_id` bigint(20) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cedula_profesional` varchar(50) NOT NULL,
  PRIMARY KEY (`medico_id`),
  KEY `especialidad_id` (`especialidad_id`),
  CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `medicos_ibfk_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades` (`especialidad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `medicos` VALUES
(2,1,'5551230001','laura.gomez@hospital.com','MED12345'),
(3,2,'5551230002','miguel.torres@hospital.com','MED67890');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` bigint(20) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` enum('F','M') DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero_domicilio` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`),
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pacientes` VALUES
(4,'1990-05-15','F','México','CDMX','Coyoacán','04330','Av. Universidad','123','5551234567','ana.lopez@example.com'),
(5,'1985-09-22','M','México','EdoMex','Naucalpan','53000','Calle Norte','45','5559876543','jose.martinez@example.com');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `permiso_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_permiso` enum('admin','medico','paciente') NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`permiso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `permisos` VALUES
(1,'admin','Acceso total al sistema'),
(2,'medico','Acceso gestión médica'),
(3,'paciente','Acceso solo a su información médica');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas` (
  `receta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `medicamento_id` bigint(20) NOT NULL,
  `uso_recetado` text NOT NULL,
  PRIMARY KEY (`receta_id`),
  KEY `medicamento_id` (`medicamento_id`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`medicamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `recetas` VALUES
(1,1,'Tomar 1 tableta cada 8 horas por 5 días'),
(2,2,'Tomar 1 tableta diaria por la mañana'),
(3,3,'Tomar 1 tableta diaria durante 7 días'),
(4,4,'Tomar cada 12 horas en caso de dolor'),
(5,5,'Tomar en ayunas por 14 días');
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `toxicomanias`
--

DROP TABLE IF EXISTS `toxicomanias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `toxicomanias` (
  `toxicomania_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `historial_id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`toxicomania_id`),
  KEY `historial_id` (`historial_id`),
  CONSTRAINT `toxicomanias_ibfk_1` FOREIGN KEY (`historial_id`) REFERENCES `historiales_clinicos` (`historial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toxicomanias`
--

LOCK TABLES `toxicomanias` WRITE;
/*!40000 ALTER TABLE `toxicomanias` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `toxicomanias` VALUES
(1,1,'Ninguna','No aplica'),
(2,2,'Tabaco','Fumador ocasional');
/*!40000 ALTER TABLE `toxicomanias` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tratamientos`
--

DROP TABLE IF EXISTS `tratamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamientos` (
  `tratamiento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `diagnostico_id` bigint(20) NOT NULL,
  `receta_id` bigint(20) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`tratamiento_id`),
  KEY `diagnostico_id` (`diagnostico_id`),
  KEY `receta_id` (`receta_id`),
  CONSTRAINT `tratamientos_ibfk_1` FOREIGN KEY (`diagnostico_id`) REFERENCES `diagnosticos` (`diagnostico_id`),
  CONSTRAINT `tratamientos_ibfk_2` FOREIGN KEY (`receta_id`) REFERENCES `recetas` (`receta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamientos`
--

LOCK TABLES `tratamientos` WRITE;
/*!40000 ALTER TABLE `tratamientos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tratamientos` VALUES
(1,1,1,'Control general post chequeo'),
(2,2,2,'Tratamiento antihipertensivo'),
(3,3,3,'Tratamiento antialérgico'),
(4,4,4,'Tratamiento para dolor leve'),
(5,5,5,'Protección gástrica');
/*!40000 ALTER TABLE `tratamientos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(20) NOT NULL,
  `rol_id` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `appaterno` varchar(50) NOT NULL,
  `apmaterno` varchar(50) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `permiso_id` (`permiso_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`permiso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `usuarios` VALUES
(1,1,'admin','Carlos','Ramírez','Soto','admin123'),
(2,1,'admin_2','Lucía','Hernández','Mora','admin456'),
(3,2,'medico','Laura','Gómez','Ruiz','med123'),
(4,2,'medico','Miguel','Torres','Vega','med456'),
(5,3,'paciente','Ana','López','Hernández','pac123'),
(6,3,'paciente','José','Martínez','Pérez','pac456');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-31 18:41:58
