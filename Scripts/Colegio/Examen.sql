-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: colchoneria.mysql.database.azure.com    Database: colchoneria
-- ------------------------------------------------------
-- Server version	8.0.28
create database examen;
use examen;

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
-- Table structure for table `_tbl_procesoprod`
--

DROP TABLE IF EXISTS `_tbl_procesoprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_tbl_procesoprod` (
  `pk_codigo_proceso` int NOT NULL,
  `fk_idordenes_tbl_procesoprod` varchar(45) DEFAULT NULL,
  `producto_fabricar_tbl_procesoprod` varchar(60) DEFAULT NULL,
  `cantidad_fabricar_tbl_procesoprod` varchar(60) DEFAULT NULL,
  `fecha_entrega_tbl_procesoprod` varchar(20) DEFAULT NULL,
  `proceso_pro_tbl_procesoprod` varchar(10) DEFAULT NULL,
  `estado_orden_tbl_procesoprod` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_codigo_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tbl_procesoprod`
--

LOCK TABLES `_tbl_procesoprod` WRITE;
/*!40000 ALTER TABLE `_tbl_procesoprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `_tbl_procesoprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activos`
--

DROP TABLE IF EXISTS `tbl_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activos` (
  `id` int NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio_publico` varchar(45) NOT NULL,
  `existencias` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activos`
--

LOCK TABLES `tbl_activos` WRITE;
/*!40000 ALTER TABLE `tbl_activos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activosfijos`
--

DROP TABLE IF EXISTS `tbl_activosfijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activosfijos` (
  `pk_ActivosFijos` int NOT NULL AUTO_INCREMENT,
  `Edificaiones` varchar(45) NOT NULL,
  `Muebles` varchar(45) NOT NULL,
  `Equipos` varchar(45) NOT NULL,
  `Maquinaria` varchar(45) NOT NULL,
  `Herramientas` varchar(45) NOT NULL,
  `EquipoComputo` varchar(45) NOT NULL,
  PRIMARY KEY (`pk_ActivosFijos`)
) ENGINE=InnoDB AUTO_INCREMENT=790 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activosfijos`
--

LOCK TABLES `tbl_activosfijos` WRITE;
/*!40000 ALTER TABLE `tbl_activosfijos` DISABLE KEYS */;
INSERT INTO `tbl_activosfijos` VALUES (12,'C','C','C','C','C','C'),(13,'X','X','X','XX','X','X'),(87,'ed','esc','eq','maq','herra','dell'),(789,'X','X','X','X','X','X');
/*!40000 ALTER TABLE `tbl_activosfijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aplicaciones`
--

DROP TABLE IF EXISTS `tbl_aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aplicaciones` (
  `pk_id_aplicacion` int NOT NULL,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(150) NOT NULL,
  `estado_aplicacion` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicaciones`
--

LOCK TABLES `tbl_aplicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_aplicaciones` DISABLE KEYS */;
INSERT INTO `tbl_aplicaciones` VALUES (1,'Menu','Ingreso Logion',1),(999,'Cerrar sesion ','Cerrar sesion',1),(1000,'MDI SEGURIDAD','PARA SEGURIDAD',1),(1001,'Usuarios','Mantenimiento Seguridad',1),(1002,'Aplicaciones','Mantenimiento Seguridad',1),(1003,'Modulos','Mantenimiento Seguridad',1),(1004,'Perfiles','Mantenimiento Seguridad',1),(1101,'Modulo-Aplicacion','Asignaciones Seguridad',1),(1102,'Aplicacion-Perfil','Asignaciones Seguridad',1),(1103,'Perfil-Usuario','Asignaciones Seguridad',1),(1201,'Cambiar_Contraseña','Cambiar_Contraseña',1),(1301,'Bitacora','Bitacora',1),(2000,'MDI LOGISTICA','PARA LOGISTICA',1),(2001,'Marca','Catalogos',1),(2002,'LINEA','catalogos',1),(2003,'Bodega','catalogos',1),(2004,'Productos','catalogos',1),(2005,'Transporte','catalogos',1),(2006,'Ruta','catalogos',1),(2007,'Conductor','catalogos',1),(2008,'Tipo Transporte','catalogo',1),(2101,'Existencia Bodega','Procesos Logistica',1),(2102,'Lotes','Procesos Logistica',1),(2103,'Envios','Procesos Logistica',1),(2104,'Traslados','proceso',1),(2201,'Moviminetos','Reportes Logistica',1),(2202,'Inventarios','Reportes Logistica',1),(2301,'Seguridad','Seguridad',1),(2401,'Informacion','Ayuda',1),(3000,'MDI COMPRA Y VENTAS','PARA COMPRAS Y VENTAS',1),(3001,'Com_mantenimiento_cliente','mantenimiento_del_cliente',1),(3002,'Com_mantenimiento_proveedores','mantenimiento_del_proveedor',1),(3003,'Com_comisiones_vendedor','comisiones_del_vendedor',1),(3102,'Com_listado_precios','listado_de_presios',1),(3103,'Com_caja_cliente','caja_de_cliente',1),(3104,'Com_caja_proveedor','caja_de_proveedor',1),(3105,'Com_cotizaciones','cotizacion',1),(3106,'Comisiones','Comisiones',1),(3107,'Com_factura_clientes','factura_del_cliente',1),(3108,'Ventas','factura_del_proveedor',1),(3109,'Com_orden_de_compra','orden_de_compra',1),(3110,'Com_compras','compra',1),(3111,'Pedidos','enlace_a_contabilidad',1),(3112,'Com_movimiento_clientes','movimiento_del_cliente',1),(3113,'Com_movimiento_proveedor','movimiento_del_proveedor',1),(3114,'Contizaciones','Contizaciones',1),(3203,'Com_balance_antiguedad','balance_de_antiguedad',1),(3302,'Com_seguridad','seguridad',1),(3402,'Com_ayuda','ayuda',1),(5000,'MDI PRODUCCION','PARA PRODUCCIÓN',1),(5001,'Receta','Proceso',1),(5002,'Agregar Receta','Proceso',1),(5003,'Ordenes','Proceso',1),(5004,'Agregar Orden','Proceso',1),(5005,'Proceso de Produccion','Proceso',1),(5006,'Proceso de Produccion','Proceso',1),(5101,'Ver Recetas','Mantenimientos',1),(5102,'Ver Ordenes','Mantenimientos',1),(5103,'Proceso de Producción','Mantenimientos',1),(5301,'Seguridad','Seguridad',1),(5302,'Seguridad','Seguridad',1),(5303,'Seguridad','Seguridad',1),(5304,'Seguridad','Seguridad',1),(5401,'Seguridad','Seguridad',1),(6000,'MDI NOMINAS','PARA NOMINAS',1),(6001,'Nom_Catalogos','Mantenimientos',1),(6002,'Nom_Departamentos','Mantenimiento departamento',1),(6003,'Nom_puestos_de_trabajo','Mantenimiento departamento',1),(6004,'Nom_Contrato','Mantenimiento departamento',1),(6005,'Nom_Prestaciones_Deducciones','Mantenimiento departamento',1),(6006,'Nom_trabajador','Mantenimiento departamento',1),(6007,'Nom_horas_extra','Mantenimiento departamento',1),(6008,'Nom_control_faltas','Mantenimiento departamento',1),(6101,'Nom_Procesos','Asiganciones o Procesos',1),(6102,'Nom_Asig_Puesto_Trabajador','Asiganciones Nominas',1),(6103,'Nom Asig Contrato Trabajador','Asignaciones Nominas',1),(6104,'Nom Asig Contrato Prestaciones','Asignaciones Nominas',1),(6105,'Nom Asig Persepciones & Deducciones','Asignaciones Nominas',1),(6106,'Nom Asig Nomina','Asignaciones Nominas',1),(6201,'Nom Rep Planillas','Reportes Nominas',1),(6202,'Nom Rep Contratos','Reportes Nominas',1),(6203,'Nom Rep Bajas ','Reportes Nominas',1),(6301,'Nom Seg Nomina','Seguridad Nominas',1),(6401,'Nom Ayu Info Nominas','Ayuda Nominas',1),(7000,'MDI BANCOS','PARA BANCOS',1),(7001,'Banc Bancos','Mantenimientos',1),(7002,'Banc Cuentas Bancarias','Mantenimientos',1),(7003,'Bac Moneda ','Mantenimientos',1),(7004,'Bac Concepto Bancario','Mantenimientos',1),(7101,'Bac Cheques','Procesos',1),(7102,'Bac Depositos','Procesos',1),(7103,'Bac Disponibilidad','Procesos',1),(7104,'Bac Movimientos Bancarios','Procesos',1),(7105,'Bac Bitacora','Procesos',1),(7106,'Bac Concilacion Bancaria','Procesos',1),(7201,'Bac Polizas','Partidas Contables',1),(7202,'Bac Ingresos & Egresos','Partidas Contables',1),(7203,'Bac Ordenes de Compra','Partidas Contables',1),(7300,'Bac Reportes Bancos','Reportes',1),(8000,'MDI CONTABILIDAD','PARA CONTRABILIDAD',1),(8001,'Catalogos','Mantenimientos',1),(8002,'Catalogos','Mantenimientos Clases Cuentas',1),(8003,'Catalogos','Mantenimiento Poliza Contable',1),(8004,'Catalogos','Mantenimientos Tipo Cuenta',1),(8005,'Catalogos','Mantenimientos Activos',1),(8006,'Catalogos','Mantenimientos Estado Financiero',1),(8007,'Catalogos','Mantenimientos Estado Financiero',1),(8008,'Catalogos','Pendiente',1),(8009,'Catalogos','Pendiente',1),(8010,'Catalogos','Pendiente',1),(8030,'Procesos','Procesos',1),(8031,'Procesos','Proceso',1),(8032,'Procesos','Proceso',1),(8033,'Procesos','Procesos',1),(8034,'procesos','Procesos',1),(8035,'Procesos','Procesos',1),(8036,'Procesos','Procesos',1),(8037,'Procesos ','Procesos',1),(8038,'Procesos','Procesos',1),(8039,'Procesos','Procesos',1),(8301,'Seguridad','Seguridad',1),(8401,'Reportes','Reporte',1),(8402,'Ayuda','Ayuda',1);
/*!40000 ALTER TABLE `tbl_aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_contratopercepciones`
--

DROP TABLE IF EXISTS `tbl_asignacion_contratopercepciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_contratopercepciones` (
  `fk_id_contrato` int NOT NULL,
  `fk_id_prestdeduc` int NOT NULL,
  PRIMARY KEY (`fk_id_contrato`,`fk_id_prestdeduc`),
  KEY `fk_id_prestdeduc` (`fk_id_prestdeduc`),
  CONSTRAINT `tbl_asignacion_contratopercepciones_ibfk_1` FOREIGN KEY (`fk_id_contrato`) REFERENCES `tbl_contrato` (`pk_id_contrato`),
  CONSTRAINT `tbl_asignacion_contratopercepciones_ibfk_2` FOREIGN KEY (`fk_id_prestdeduc`) REFERENCES `tbl_percepciones` (`pk_id_prestdeduc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_contratopercepciones`
--

LOCK TABLES `tbl_asignacion_contratopercepciones` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_contratopercepciones` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_contratopercepciones` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3);
/*!40000 ALTER TABLE `tbl_asignacion_contratopercepciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_contratotrabajador`
--

DROP TABLE IF EXISTS `tbl_asignacion_contratotrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_contratotrabajador` (
  `fk_id_contrato` int NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  PRIMARY KEY (`fk_id_contrato`,`fk_id_trabajador`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  CONSTRAINT `tbl_asignacion_contratotrabajador_ibfk_1` FOREIGN KEY (`fk_id_contrato`) REFERENCES `tbl_contrato` (`pk_id_contrato`),
  CONSTRAINT `tbl_asignacion_contratotrabajador_ibfk_2` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_contratotrabajador`
--

LOCK TABLES `tbl_asignacion_contratotrabajador` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_contratotrabajador` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_contratotrabajador` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `tbl_asignacion_contratotrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_puestodepartamento`
--

DROP TABLE IF EXISTS `tbl_asignacion_puestodepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_puestodepartamento` (
  `fk_id_puesto` int NOT NULL,
  `fk_id_departamento` int NOT NULL,
  PRIMARY KEY (`fk_id_puesto`,`fk_id_departamento`),
  KEY `fk_id_departamento` (`fk_id_departamento`),
  CONSTRAINT `tbl_asignacion_puestodepartamento_ibfk_1` FOREIGN KEY (`fk_id_puesto`) REFERENCES `tbl_puestosdetrabajo` (`pk_id_puesto`),
  CONSTRAINT `tbl_asignacion_puestodepartamento_ibfk_2` FOREIGN KEY (`fk_id_departamento`) REFERENCES `tbl_departamentos` (`pk_id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_puestodepartamento`
--

LOCK TABLES `tbl_asignacion_puestodepartamento` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_puestodepartamento` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_puestodepartamento` VALUES (3001,2000),(4001,2000),(2001,3000),(3001,3000),(3001,4000);
/*!40000 ALTER TABLE `tbl_asignacion_puestodepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_puestotrabajador`
--

DROP TABLE IF EXISTS `tbl_asignacion_puestotrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacion_puestotrabajador` (
  `fk_id_puesto` int NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  PRIMARY KEY (`fk_id_puesto`,`fk_id_trabajador`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  CONSTRAINT `tbl_asignacion_puestotrabajador_ibfk_1` FOREIGN KEY (`fk_id_puesto`) REFERENCES `tbl_puestosdetrabajo` (`pk_id_puesto`),
  CONSTRAINT `tbl_asignacion_puestotrabajador_ibfk_2` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_puestotrabajador`
--

LOCK TABLES `tbl_asignacion_puestotrabajador` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_puestotrabajador` DISABLE KEYS */;
INSERT INTO `tbl_asignacion_puestotrabajador` VALUES (3001,1),(4003,1),(5002,1);
/*!40000 ALTER TABLE `tbl_asignacion_puestotrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionesperfilsusuario`
--

DROP TABLE IF EXISTS `tbl_asignacionesperfilsusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionesperfilsusuario` (
  `fk_id_usuario` int NOT NULL,
  `fk_id_perfil` int NOT NULL,
  PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil`),
  KEY `fk_id_perfil` (`fk_id_perfil`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionesperfilsusuario`
--

LOCK TABLES `tbl_asignacionesperfilsusuario` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` DISABLE KEYS */;
INSERT INTO `tbl_asignacionesperfilsusuario` VALUES (1,1),(2,2),(4,3),(5,4),(6,5),(7,6),(8,7),(15,9),(18,11);
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionmoduloaplicacion`
--

DROP TABLE IF EXISTS `tbl_asignacionmoduloaplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionmoduloaplicacion` (
  `fk_id_modulos` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_1` FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionmoduloaplicacion`
--

LOCK TABLES `tbl_asignacionmoduloaplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` DISABLE KEYS */;
INSERT INTO `tbl_asignacionmoduloaplicacion` VALUES (1000,1000),(1000,1001),(1000,1002),(1000,1003),(1000,1004),(1000,1101),(1000,1102),(1000,1103),(1000,1201),(1000,1301),(2000,2000),(3000,3000),(3000,3001),(3000,3002),(3000,3003),(3000,3102),(3000,3103),(3000,3104),(3000,3105),(3000,3106),(3000,3107),(3000,3108),(3000,3109),(3000,3110),(3000,3111),(3000,3112),(3000,3113),(3000,3114),(3000,3203),(3000,3302),(3000,3402),(5000,5000),(6000,6000),(7000,7000),(8000,8000),(8000,8005);
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bancos`
--

DROP TABLE IF EXISTS `tbl_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bancos` (
  `Pk_idbancos` int NOT NULL,
  `nombre_banco` varchar(25) DEFAULT NULL,
  `direccion_banco` varchar(45) DEFAULT NULL,
  `contacto_banco` varchar(45) DEFAULT NULL,
  `estado_banco` tinyint DEFAULT '0',
  PRIMARY KEY (`Pk_idbancos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bancos`
--

LOCK TABLES `tbl_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_bancos` DISABLE KEYS */;
INSERT INTO `tbl_bancos` VALUES (1,'Banrural','Avenida La Reforma, zona 9 ','2326-6810',1),(2,'BAM','Ciudad Quetzaltenango','2290-0010',1),(3,'BANTRAB','Antigua Guatemala','2280-0250',1),(4,'BANCO INDUSTRIAL','Ciudad Cayala','2290-9029',1);
/*!40000 ALTER TABLE `tbl_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacoradeeventos`
--

DROP TABLE IF EXISTS `tbl_bitacoradeeventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bitacoradeeventos` (
  `pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_id_usuario` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2460 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacoradeeventos`
--

LOCK TABLES `tbl_bitacoradeeventos` WRITE;
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` DISABLE KEYS */;
INSERT INTO `tbl_bitacoradeeventos` VALUES (245,1,2000,'2022-10-13','08:58:24','DESKTOP-8O756PG','192.168.1.7','login'),(246,1,3000,'2022-10-13','08:58:30','DESKTOP-8O756PG','192.168.1.7','login'),(247,1,5000,'2022-10-13','08:58:41','DESKTOP-8O756PG','192.168.1.7','login'),(248,1,6000,'2022-10-13','08:58:47','DESKTOP-8O756PG','192.168.1.7','login'),(249,1,2000,'2022-10-13','09:00:48','DESKTOP-8O756PG','192.168.1.7','login'),(250,1,3000,'2022-10-13','09:00:54','DESKTOP-8O756PG','192.168.1.7','login'),(251,1,5000,'2022-10-13','09:01:05','DESKTOP-8O756PG','192.168.1.7','login'),(252,1,6000,'2022-10-13','09:01:11','DESKTOP-8O756PG','192.168.1.7','login'),(253,1,2000,'2022-10-13','09:03:53','DESKTOP-8O756PG','192.168.1.7','login'),(254,1,3000,'2022-10-13','09:03:59','DESKTOP-8O756PG','192.168.1.7','login'),(255,1,5000,'2022-10-13','09:04:10','DESKTOP-8O756PG','192.168.1.7','login'),(256,1,6000,'2022-10-13','09:04:16','DESKTOP-8O756PG','192.168.1.7','login'),(258,1,1000,'2022-10-13','09:09:23','DESKTOP-8O756PG','192.168.1.7','login'),(259,1,2000,'2022-10-13','09:09:37','DESKTOP-8O756PG','192.168.1.7','login'),(260,1,3000,'2022-10-13','09:09:49','DESKTOP-8O756PG','192.168.1.7','login'),(261,1,5000,'2022-10-13','09:10:17','DESKTOP-8O756PG','192.168.1.7','login'),(262,1,6000,'2022-10-13','09:10:30','DESKTOP-8O756PG','192.168.1.7','login'),(263,1,1000,'2022-10-13','09:14:39','DESKTOP-8O756PG','192.168.1.7','login'),(264,1,2000,'2022-10-13','09:14:51','DESKTOP-8O756PG','192.168.1.7','login'),(265,1,3000,'2022-10-13','09:15:03','DESKTOP-8O756PG','192.168.1.7','login'),(266,1,5000,'2022-10-13','09:15:27','DESKTOP-8O756PG','192.168.1.7','login'),(267,1,6000,'2022-10-13','09:15:39','DESKTOP-8O756PG','192.168.1.7','login'),(268,1,1102,'2022-10-13','09:18:48','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Asigno Aplicacion-Perfil'),(269,2,2000,'2022-10-13','09:22:56','DESKTOP-8O756PG','192.168.1.7','login'),(270,1,1000,'2022-10-13','09:27:11','DESKTOP-8O756PG','192.168.1.7','login'),(271,1,2000,'2022-10-13','09:27:25','DESKTOP-8O756PG','192.168.1.7','login'),(272,1,3000,'2022-10-13','09:27:39','DESKTOP-8O756PG','192.168.1.7','login'),(273,1,5000,'2022-10-13','09:28:06','DESKTOP-8O756PG','192.168.1.7','login'),(274,1,6000,'2022-10-13','09:28:20','DESKTOP-8O756PG','192.168.1.7','login'),(275,1,1000,'2022-10-13','09:29:47','DESKTOP-8O756PG','192.168.1.7','login'),(276,1,2000,'2022-10-13','09:30:06','DESKTOP-8O756PG','192.168.1.7','login'),(277,1,3000,'2022-10-13','09:30:20','DESKTOP-8O756PG','192.168.1.7','login'),(278,1,5000,'2022-10-13','09:30:48','DESKTOP-8O756PG','192.168.1.7','login'),(279,1,1101,'2022-10-13','09:44:32','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Asigno Modulo-Aplicacion'),(280,1,1102,'2022-10-13','09:45:09','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Asigno Aplicacion-Perfil'),(281,2,2001,'2022-10-13','10:30:47','DESKTOP-8O756PG','192.168.1.7','Reportes'),(282,2,2001,'2022-10-13','10:32:00','DESKTOP-8O756PG','192.168.1.7','Reportes'),(283,2,2001,'2022-10-13','10:32:02','DESKTOP-8O756PG','192.168.1.7','Reportes'),(284,2,2001,'2022-10-13','10:43:21','DESKTOP-8O756PG','192.168.1.7','Reportes'),(285,2,2001,'2022-10-13','11:36:22','DESKTOP-8O756PG','192.168.1.7','Reportes'),(286,2,2001,'2022-10-13','11:39:45','DESKTOP-8O756PG','192.168.1.7','Reportes'),(287,2,2001,'2022-10-13','12:15:11','DESKTOP-8O756PG','192.168.1.7','Reportes'),(288,2,2001,'2022-10-13','12:17:02','DESKTOP-8O756PG','192.168.1.7','Consulta'),(289,2,2001,'2022-10-13','12:17:31','DESKTOP-8O756PG','192.168.1.7','Consulta'),(290,2,2001,'2022-10-13','12:17:33','DESKTOP-8O756PG','192.168.1.7','Consulta'),(291,2,2001,'2022-10-13','12:19:48','DESKTOP-8O756PG','192.168.1.7','Consulta'),(292,2,2001,'2022-10-13','12:20:37','DESKTOP-8O756PG','192.168.1.7','Consulta'),(293,2,2001,'2022-10-13','12:21:25','DESKTOP-8O756PG','192.168.1.7','Reportes'),(294,2,2001,'2022-10-13','12:21:34','DESKTOP-8O756PG','192.168.1.7','Consulta'),(295,2,2001,'2022-10-13','12:21:37','DESKTOP-8O756PG','192.168.1.7','Consulta'),(296,2,2001,'2022-10-13','12:21:38','DESKTOP-8O756PG','192.168.1.7','Consulta'),(297,2,2001,'2022-10-13','12:21:39','DESKTOP-8O756PG','192.168.1.7','Consulta'),(298,2,2001,'2022-10-13','12:21:39','DESKTOP-8O756PG','192.168.1.7','Consulta'),(299,2,2001,'2022-10-13','12:22:02','DESKTOP-8O756PG','192.168.1.7','Reportes'),(300,2,2001,'2022-10-13','12:22:33','DESKTOP-8O756PG','192.168.1.7','Consulta'),(301,2,2001,'2022-10-13','12:22:38','DESKTOP-8O756PG','192.168.1.7','Reportes'),(302,2,2001,'2022-10-13','12:30:41','DESKTOP-8O756PG','192.168.1.7','Consulta'),(303,2,2001,'2022-10-13','12:40:34','DESKTOP-8O756PG','192.168.1.7','Consulta'),(304,2,2001,'2022-10-13','12:41:36','DESKTOP-8O756PG','192.168.1.7','Reportes'),(305,2,2001,'2022-10-13','12:43:21','DESKTOP-8O756PG','192.168.1.7','Reportes'),(306,2,2001,'2022-10-13','12:43:36','DESKTOP-8O756PG','192.168.1.7','Consulta'),(307,2,2001,'2022-10-13','12:43:38','DESKTOP-8O756PG','192.168.1.7','Consulta'),(308,2,2001,'2022-10-13','12:43:39','DESKTOP-8O756PG','192.168.1.7','Consulta'),(309,2,2001,'2022-10-13','12:43:40','DESKTOP-8O756PG','192.168.1.7','Consulta'),(310,2,2001,'2022-10-13','12:43:40','DESKTOP-8O756PG','192.168.1.7','Consulta'),(311,2,2001,'2022-10-13','12:43:41','DESKTOP-8O756PG','192.168.1.7','Consulta'),(312,2,2001,'2022-10-13','12:47:21','DESKTOP-8O756PG','192.168.1.7','Consulta'),(313,2,2001,'2022-10-13','12:52:39','DESKTOP-8O756PG','192.168.1.7','Consulta'),(314,2,2001,'2022-10-13','12:52:48','DESKTOP-8O756PG','192.168.1.7','Consulta'),(315,2,2001,'2022-10-13','12:52:51','DESKTOP-8O756PG','192.168.1.7','Consulta'),(316,2,2001,'2022-10-13','12:52:52','DESKTOP-8O756PG','192.168.1.7','Consulta'),(317,2,2001,'2022-10-13','12:52:53','DESKTOP-8O756PG','192.168.1.7','Consulta'),(318,2,2001,'2022-10-13','12:52:54','DESKTOP-8O756PG','192.168.1.7','Consulta'),(319,2,2001,'2022-10-13','12:52:55','DESKTOP-8O756PG','192.168.1.7','Consulta'),(320,2,2001,'2022-10-13','12:52:55','DESKTOP-8O756PG','192.168.1.7','Consulta'),(321,2,2001,'2022-10-13','12:52:56','DESKTOP-8O756PG','192.168.1.7','Consulta'),(322,2,2001,'2022-10-13','12:52:57','DESKTOP-8O756PG','192.168.1.7','Consulta'),(323,2,2001,'2022-10-13','12:53:07','DESKTOP-8O756PG','192.168.1.7','Consulta'),(324,2,2001,'2022-10-13','12:53:07','DESKTOP-8O756PG','192.168.1.7','Reportes'),(325,2,2001,'2022-10-13','12:53:10','DESKTOP-8O756PG','192.168.1.7','Reportes'),(326,2,2001,'2022-10-13','12:53:11','DESKTOP-8O756PG','192.168.1.7','Consulta'),(327,2,2001,'2022-10-13','12:53:12','DESKTOP-8O756PG','192.168.1.7','Consulta'),(328,2,2001,'2022-10-13','12:53:13','DESKTOP-8O756PG','192.168.1.7','Consulta'),(329,2,2001,'2022-10-13','12:53:13','DESKTOP-8O756PG','192.168.1.7','Consulta'),(330,2,2001,'2022-10-13','12:53:14','DESKTOP-8O756PG','192.168.1.7','Consulta'),(331,2,2001,'2022-10-13','12:53:15','DESKTOP-8O756PG','192.168.1.7','Consulta'),(332,2,2001,'2022-10-13','12:53:17','DESKTOP-8O756PG','192.168.1.7','Consulta'),(333,2,2001,'2022-10-13','13:02:20','DESKTOP-8O756PG','192.168.1.7','Reportes'),(334,2,2001,'2022-10-13','13:02:44','DESKTOP-8O756PG','192.168.1.7','Consulta'),(335,2,2001,'2022-10-13','13:05:37','DESKTOP-8O756PG','192.168.1.7','Reportes'),(336,2,2001,'2022-10-13','13:05:39','DESKTOP-8O756PG','192.168.1.7','Consulta'),(337,2,2001,'2022-10-13','13:06:43','DESKTOP-8O756PG','192.168.1.7','Consulta'),(338,2,2001,'2022-10-13','13:10:27','DESKTOP-8O756PG','192.168.1.7','Consulta'),(339,2,2001,'2022-10-13','13:14:53','DESKTOP-8O756PG','192.168.1.7','Reportes'),(340,1,2001,'2022-10-13','14:20:16','DESKTOP-8O756PG','192.168.1.7','Reportes'),(341,1,2001,'2022-10-13','14:20:31','DESKTOP-8O756PG','192.168.1.7','Reportes'),(342,2,2001,'2022-10-13','15:14:48','DESKTOP-8O756PG','192.168.1.7','Reportes'),(343,2,2001,'2022-10-13','15:14:51','DESKTOP-8O756PG','192.168.1.7','Consulta'),(344,2,2001,'2022-10-13','15:34:47','DESKTOP-8O756PG','192.168.1.7','Consulta'),(345,2,2001,'2022-10-13','15:34:52','DESKTOP-8O756PG','192.168.1.7','Consulta'),(346,2,2001,'2022-10-13','15:35:22','DESKTOP-8O756PG','192.168.1.7','Consulta'),(347,2,2001,'2022-10-13','15:35:40','DESKTOP-8O756PG','192.168.1.7','Consulta'),(348,2,2001,'2022-10-13','15:45:49','DESKTOP-8O756PG','192.168.1.7','Consulta'),(349,2,2001,'2022-10-13','15:51:02','DESKTOP-8O756PG','192.168.1.7','Consulta'),(350,1,2001,'2022-10-13','16:06:52','DESKTOP-8O756PG','192.168.1.7','Consulta'),(351,1,2001,'2022-10-13','16:07:16','DESKTOP-8O756PG','192.168.1.7','Consulta'),(352,1,2001,'2022-10-13','16:07:22','DESKTOP-8O756PG','192.168.1.7','Consulta'),(353,1,2001,'2022-10-13','16:07:27','DESKTOP-8O756PG','192.168.1.7','Consulta'),(354,1,2001,'2022-10-13','16:07:32','DESKTOP-8O756PG','192.168.1.7','Consulta'),(355,1,2001,'2022-10-13','16:07:37','DESKTOP-8O756PG','192.168.1.7','Consulta'),(356,1,2001,'2022-10-13','16:07:41','DESKTOP-8O756PG','192.168.1.7','Consulta'),(357,1,2001,'2022-10-13','16:07:51','DESKTOP-8O756PG','192.168.1.7','Consulta'),(358,1,2001,'2022-10-13','16:11:17','DESKTOP-8O756PG','192.168.1.7','Consulta'),(359,1,2001,'2022-10-13','16:12:55','DESKTOP-8O756PG','192.168.1.7','Consulta'),(360,1,2001,'2022-10-13','16:15:03','DESKTOP-8O756PG','192.168.1.7','Consulta'),(361,1,2001,'2022-10-13','16:21:27','DESKTOP-8O756PG','192.168.1.7','Consulta'),(362,1,2001,'2022-10-13','16:24:05','DESKTOP-8O756PG','192.168.1.7','Consulta'),(363,1,2001,'2022-10-13','16:28:40','DESKTOP-8O756PG','192.168.1.7','Consulta'),(364,1,2001,'2022-10-13','16:34:07','DESKTOP-8O756PG','192.168.1.7','Consulta'),(365,1,2001,'2022-10-13','16:40:32','DESKTOP-8O756PG','192.168.1.7','Consulta'),(366,1,2001,'2022-10-13','16:40:33','DESKTOP-8O756PG','192.168.1.7','Consulta'),(367,1,2001,'2022-10-13','16:54:54','DESKTOP-8O756PG','192.168.1.7','Consulta'),(368,1,2001,'2022-10-13','16:54:55','DESKTOP-8O756PG','192.168.1.7','Consulta'),(369,1,2001,'2022-10-13','16:55:14','DESKTOP-8O756PG','192.168.1.7','Consulta'),(370,1,2001,'2022-10-13','16:58:23','DESKTOP-8O756PG','192.168.1.7','Consulta'),(371,1,2000,'2022-10-13','19:53:48','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Ingreso Seguridad'),(372,1,1000,'2022-10-13','19:54:36','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Ingreso Seguridad'),(373,1,2000,'2022-10-13','19:57:22','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Ingreso Logistica'),(374,1,2001,'2022-10-13','19:58:02','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Eliminar'),(375,1,1000,'2022-10-13','19:58:37','DESKTOP-T5OJTBO','2800:98:1112:af3:c5aa:8960:1d46:94fc','Ingreso Seguridad'),(376,1,1000,'2022-10-13','20:17:37','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','login'),(377,1,2001,'2022-10-13','21:16:03','DESKTOP-8O756PG','192.168.1.7','Guardar'),(378,1,1000,'2022-10-13','22:29:21','DESKTOP-BK7RTVS','fe80::4559:3cc2:a748:55b7%7','login'),(379,1,1000,'2022-10-13','22:40:36','DESKTOP-BK7RTVS','fe80::4559:3cc2:a748:55b7%7','login'),(380,1,1000,'2022-10-13','22:42:59','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','login'),(381,1,1000,'2022-10-14','07:12:51','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','login'),(382,1,2001,'2022-10-14','10:23:09','DESKTOP-8O756PG','192.168.1.7','Guardar'),(383,1,2001,'2022-10-14','10:23:23','DESKTOP-8O756PG','192.168.1.7','Consulta'),(384,1,2001,'2022-10-14','10:24:54','DESKTOP-8O756PG','192.168.1.7','Guardar'),(385,1,1000,'2022-10-14','10:27:12','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Seguridad'),(386,1,1000,'2022-10-14','14:16:13','DESKTOP-T5OJTBO','2800:98:1112:af3:40d1:c2c1:ec35:12f2','Ingreso Seguridad'),(387,1,1000,'2022-10-14','14:19:13','DESKTOP-T5OJTBO','2800:98:1112:af3:40d1:c2c1:ec35:12f2','Ingreso Seguridad'),(388,1,1000,'2022-10-15','13:21:57','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Seguridad'),(389,1,1000,'2022-10-15','13:24:36','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Seguridad'),(390,1,1000,'2022-10-15','13:30:43','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Seguridad'),(391,1,2000,'2022-10-15','13:48:57','DESKTOP-8O756PG','192.168.1.7','Ingreso Logistica'),(392,2,2000,'2022-10-15','13:51:41','DESKTOP-8O756PG','192.168.1.7','Ingreso Logistica'),(393,1,6000,'2022-10-15','16:34:38','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(394,6,6000,'2022-10-15','16:44:09','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(395,6,6000,'2022-10-15','16:47:28','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(396,6,6000,'2022-10-15','16:51:05','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(397,6,6000,'2022-10-15','16:58:28','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(398,6,6000,'2022-10-15','17:00:41','DESKTOP-I95002A','2803:d100:9830:686:344f:5af6:7c2d:e01c','Ingreso Nominas'),(399,6,6000,'2022-10-15','17:12:34','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(400,6,6000,'2022-10-15','17:13:48','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(401,6,6000,'2022-10-15','17:16:54','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(402,1,3000,'2022-10-17','16:21:43','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(403,4,3000,'2022-10-17','16:22:35','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(404,1,1000,'2022-10-17','16:24:33','DESKTOP-8O756PG','192.168.1.7','Ingreso Seguridad'),(405,1,1102,'2022-10-17','16:25:19','DESKTOP-8O756PG','192.168.1.7','Asigno Aplicacion-Perfil'),(406,4,3000,'2022-10-17','16:26:14','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(407,4,3000,'2022-10-17','16:49:46','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(408,4,3000,'2022-10-17','16:51:44','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(409,4,3000,'2022-10-17','16:53:50','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(410,4,3000,'2022-10-17','16:54:47','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(411,4,3000,'2022-10-17','16:56:21','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(412,4,3001,'2022-10-17','16:56:28','DESKTOP-8O756PG','192.168.1.7','Consulta'),(413,4,3001,'2022-10-17','16:56:37','DESKTOP-8O756PG','192.168.1.7','Consulta'),(414,4,3001,'2022-10-17','16:56:52','DESKTOP-8O756PG','192.168.1.7','Guardar'),(415,4,3001,'2022-10-17','16:56:57','DESKTOP-8O756PG','192.168.1.7','Consulta'),(416,4,3001,'2022-10-17','16:57:00','DESKTOP-8O756PG','192.168.1.7','Consulta'),(417,4,3000,'2022-10-17','16:59:48','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(418,4,3001,'2022-10-17','16:59:55','DESKTOP-8O756PG','192.168.1.7','Consulta'),(419,4,3000,'2022-10-17','17:11:12','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(420,4,3000,'2022-10-17','17:13:26','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(421,4,3000,'2022-10-17','17:15:15','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(422,4,3000,'2022-10-17','17:17:05','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(423,4,3000,'2022-10-17','17:18:31','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(424,4,3002,'2022-10-17','17:18:40','DESKTOP-8O756PG','192.168.1.7','Consulta'),(425,2,2000,'2022-10-17','19:37:28','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(426,2,2002,'2022-10-17','19:38:26','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(427,2,2000,'2022-10-17','20:23:58','DESKTOP-6FL6OOJ','192.168.0.107','Ingreso Logistica'),(428,2,2000,'2022-10-17','20:25:37','DESKTOP-6FL6OOJ','192.168.0.107','Ingreso Logistica'),(429,2,2000,'2022-10-17','20:28:09','DESKTOP-6FL6OOJ','192.168.0.107','Ingreso Logistica'),(430,1,2000,'2022-10-17','20:31:08','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Logistica'),(431,2,2000,'2022-10-17','20:34:37','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Logistica'),(432,2,2000,'2022-10-17','20:39:23','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Logistica'),(433,2,2000,'2022-10-17','20:55:23','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Logistica'),(434,2,2002,'2022-10-17','20:56:49','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Guardar'),(435,7,7000,'2022-10-17','21:01:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(436,7,7000,'2022-10-17','21:25:49','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(437,4,3000,'2022-10-17','21:27:38','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(438,4,3001,'2022-10-17','21:27:59','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Guardar'),(439,4,3001,'2022-10-17','21:28:18','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Eliminar'),(440,7,7000,'2022-10-17','21:31:02','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(441,4,3000,'2022-10-17','21:33:04','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(442,2,2000,'2022-10-17','21:44:14','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(443,2,2000,'2022-10-17','21:50:58','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(444,2,2000,'2022-10-17','21:59:35','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(445,1,2000,'2022-10-17','22:20:11','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(446,1,1000,'2022-10-18','06:59:56','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Seguridad'),(447,1,2000,'2022-10-18','07:00:11','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Logistica'),(448,1,3000,'2022-10-18','07:00:27','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Compra y Venta'),(449,1,1000,'2022-10-18','07:03:31','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Seguridad'),(450,1,1002,'2022-10-18','07:04:03','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Se creo nueva Aplicacion'),(451,1,1,'2022-10-18','07:05:33','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(452,1,1,'2022-10-18','07:06:38','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(453,1,1000,'2022-10-18','07:06:55','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Seguridad'),(454,1,1002,'2022-10-18','07:07:38','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Se creo nueva Aplicacion'),(455,15,1,'2022-10-18','07:09:03','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(456,15,1000,'2022-10-18','07:09:22','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Seguridad'),(457,15,999,'2022-10-18','07:09:56','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Cerro Sesion'),(458,7,7000,'2022-10-18','07:10:35','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(459,2,2000,'2022-10-18','07:19:37','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(460,6,6000,'2022-10-18','21:42:57','DESKTOP-I95002A','2803:d100:9830:686:3c6c:2e1b:200d:8a6c','Ingreso Nominas'),(461,6,6003,'2022-10-18','21:45:18','DESKTOP-I95002A','2803:d100:9830:686:3c6c:2e1b:200d:8a6c','Guardar'),(462,7,7000,'2022-10-18','22:19:42','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(463,7,7000,'2022-10-18','22:24:34','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(464,7,7000,'2022-10-18','23:02:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(465,7,7000,'2022-10-18','23:05:14','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(466,7,7000,'2022-10-18','23:07:46','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(467,7,7000,'2022-10-18','23:13:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(468,7,7000,'2022-10-18','23:15:59','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(469,7,7000,'2022-10-18','23:16:54','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(470,7,7000,'2022-10-18','23:17:31','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(471,7,7000,'2022-10-18','23:18:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(472,7,7000,'2022-10-18','23:18:17','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(473,7,7000,'2022-10-18','23:18:38','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(474,7,7000,'2022-10-18','23:18:38','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(475,7,7000,'2022-10-18','23:18:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(476,4,3000,'2022-10-19','07:42:32','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(477,4,3001,'2022-10-19','07:43:04','DESKTOP-8O756PG','192.168.1.7','Guardar'),(478,4,3001,'2022-10-19','07:44:12','DESKTOP-8O756PG','192.168.1.7','Consulta'),(479,1,8000,'2022-10-19','07:54:31','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(480,1,8000,'2022-10-19','08:13:30','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(481,1,1000,'2022-10-19','08:15:25','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Seguridad'),(482,1,1102,'2022-10-19','08:18:56','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Asigno Aplicacion-Perfil'),(483,8,8000,'2022-10-19','08:19:53','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(484,2,1,'2022-10-19','08:21:02','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(485,2,2000,'2022-10-19','08:21:25','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(486,2,2002,'2022-10-19','08:23:20','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(487,2,1,'2022-10-19','08:25:52','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(488,2,2000,'2022-10-19','08:26:16','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(489,8,8000,'2022-10-19','12:03:03','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(490,1,1000,'2022-10-19','12:04:02','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Seguridad'),(491,1,1101,'2022-10-19','12:04:44','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Asigno Modulo-Aplicacion'),(492,1,1102,'2022-10-19','12:05:32','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Asigno Aplicacion-Perfil'),(493,8,8000,'2022-10-19','12:10:16','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(494,1,8000,'2022-10-19','12:11:22','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(495,1,1000,'2022-10-19','12:13:28','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Seguridad'),(496,1,1102,'2022-10-19','12:14:10','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Asigno Aplicacion-Perfil'),(497,1,8000,'2022-10-19','12:15:21','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(498,8,8000,'2022-10-19','12:16:26','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(499,8,8000,'2022-10-19','12:18:03','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(500,8,8000,'2022-10-19','12:20:01','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(501,8,8000,'2022-10-19','12:22:25','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(502,8,8000,'2022-10-19','12:24:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(503,4,3000,'2022-10-19','13:39:18','DESKTOP-8O756PG','192.168.1.7','Ingreso Compras'),(504,4,3000,'2022-10-19','13:47:02','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(505,1,6000,'2022-10-19','15:54:13','LAIONEL','2800:98:1207:1123:61b7:12c:432c:e987','Ingreso Nominas'),(506,1,1000,'2022-10-19','15:55:26','LAIONEL','2800:98:1207:1123:61b7:12c:432c:e987','Ingreso Seguridad'),(507,1,1102,'2022-10-19','15:59:04','LAIONEL','2800:98:1207:1123:61b7:12c:432c:e987','Asigno Aplicacion-Perfil'),(508,1,6000,'2022-10-19','16:00:58','LAIONEL','2800:98:1207:1123:61b7:12c:432c:e987','Ingreso Nominas'),(509,8,8000,'2022-10-19','18:50:15','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(510,8,8000,'2022-10-19','18:54:47','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(511,8,8000,'2022-10-19','19:05:39','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(512,8,8000,'2022-10-19','19:14:54','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(513,8,8000,'2022-10-19','19:19:33','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(514,8,8000,'2022-10-19','19:24:21','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(515,8,8000,'2022-10-19','19:28:18','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(516,4,3000,'2022-10-19','21:33:56','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(517,4,3000,'2022-10-19','21:55:53','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(518,4,3000,'2022-10-20','00:32:20','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(519,1,1,'2022-10-22','12:02:51','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(520,1,2000,'2022-10-22','12:03:13','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(521,1,5000,'2022-10-22','18:27:44','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(522,1,5000,'2022-10-22','18:36:26','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(523,1,5000,'2022-10-22','18:38:26','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(524,1,5000,'2022-10-22','18:43:09','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(525,1,5000,'2022-10-22','18:46:07','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(526,1,5000,'2022-10-22','19:21:47','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(527,1,7000,'2022-10-22','19:44:47','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Bancos'),(528,7,7000,'2022-10-22','19:45:48','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Bancos'),(529,4,3000,'2022-10-22','19:56:39','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(530,1,5000,'2022-10-22','20:06:28','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(531,7,7000,'2022-10-22','20:19:19','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(532,7,7000,'2022-10-22','20:24:30','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(533,7,7000,'2022-10-22','20:25:05','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(534,1,7000,'2022-10-22','20:56:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(535,1,5000,'2022-10-22','21:27:43','DESKTOP-5L5D82H','fe80::680f:849b:7c86:d846%18','Ingreso Produccion'),(536,4,3000,'2022-10-22','22:06:01','FABIAN','192.168.1.8','Compra y Venta'),(537,4,3000,'2022-10-22','22:06:48','FABIAN','192.168.1.8','Ingreso Compras'),(538,4,3000,'2022-10-22','22:10:00','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(539,4,3000,'2022-10-22','22:13:34','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(540,4,3000,'2022-10-22','22:15:23','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(541,4,3000,'2022-10-22','22:16:13','FABIAN','192.168.1.8','Compra y Venta'),(542,4,3000,'2022-10-22','22:17:05','FABIAN','192.168.1.8','Ingreso Compras'),(543,4,3000,'2022-10-22','22:42:08','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(544,1,7000,'2022-10-22','22:46:52','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(545,1,7000,'2022-10-22','22:48:10','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(546,1,7000,'2022-10-22','22:56:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(547,7,7000,'2022-10-22','22:58:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(548,4,3000,'2022-10-22','22:59:15','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(549,4,3000,'2022-10-22','23:02:37','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(550,4,3000,'2022-10-22','23:05:26','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(551,4,3000,'2022-10-22','23:13:48','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(552,4,3000,'2022-10-22','23:25:43','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(553,4,3000,'2022-10-22','23:28:15','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(554,4,3000,'2022-10-22','23:43:17','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(555,4,3000,'2022-10-22','23:48:01','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(556,4,3000,'2022-10-22','23:49:15','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(557,4,3000,'2022-10-23','00:06:33','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(558,7,7000,'2022-10-23','00:11:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(559,7,7000,'2022-10-23','00:13:56','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(560,7,7000,'2022-10-23','00:17:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(561,7,7000,'2022-10-23','00:21:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(562,4,3000,'2022-10-23','10:37:23','FABIAN','192.168.1.8','Ingreso Compras'),(563,4,3000,'2022-10-23','10:41:26','FABIAN','192.168.1.8','Ingreso Compras'),(564,4,3000,'2022-10-23','10:45:41','FABIAN','192.168.1.8','Ingreso Compras'),(565,4,3000,'2022-10-23','10:53:24','FABIAN','192.168.1.8','Ingreso Compras'),(566,4,3000,'2022-10-23','11:04:05','FABIAN','192.168.1.8','Ingreso Compras'),(567,4,3000,'2022-10-23','11:08:45','FABIAN','192.168.1.8','Ingreso Compras'),(568,4,3000,'2022-10-23','11:13:21','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(569,4,3000,'2022-10-23','11:23:41','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(570,4,3000,'2022-10-23','11:27:46','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(571,4,3000,'2022-10-23','11:27:50','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(572,4,3000,'2022-10-23','11:28:44','FABIAN','192.168.1.5','Ingreso Compras'),(573,4,3000,'2022-10-23','14:54:39','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(574,4,3000,'2022-10-23','14:57:20','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(575,4,3000,'2022-10-23','15:00:55','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(576,4,3000,'2022-10-23','15:23:06','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(577,4,3000,'2022-10-23','15:25:08','DESKTOP-2GIIUQJ','fe80::5972:14c5:9454:49f2%9','Ingreso Compras'),(578,4,3000,'2022-10-23','15:59:53','DESKTOP-8O756PG','192.168.0.104','Ingreso Compras'),(579,7,7000,'2022-10-23','17:26:21','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(580,7,7000,'2022-10-23','17:28:53','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(581,1,7000,'2022-10-23','17:32:07','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(582,7,7000,'2022-10-23','17:33:15','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(583,7,7000,'2022-10-23','17:37:35','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(584,7,7000,'2022-10-23','19:38:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(585,7,7001,'2022-10-23','19:39:34','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(586,7,7002,'2022-10-23','19:43:07','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(587,8,8000,'2022-10-24','17:53:04','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(588,8,8000,'2022-10-24','17:56:48','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(589,8,8000,'2022-10-24','18:00:43','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(590,8,8000,'2022-10-24','18:09:43','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(591,8,8000,'2022-10-24','18:13:59','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(592,8,8000,'2022-10-24','18:17:08','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(593,8,8000,'2022-10-24','18:20:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(594,8,8000,'2022-10-24','18:22:39','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(595,8,8000,'2022-10-24','18:28:04','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(596,7,7000,'2022-10-24','18:29:13','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(597,8,8000,'2022-10-24','18:30:12','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(598,7,7000,'2022-10-24','18:31:05','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(599,7,7000,'2022-10-24','18:32:08','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(600,8,8000,'2022-10-24','18:33:05','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(601,8,8000,'2022-10-24','18:44:11','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(602,8,8000,'2022-10-24','18:57:23','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(603,7,7000,'2022-10-24','18:57:42','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(604,7,7000,'2022-10-24','18:59:12','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(605,7,7004,'2022-10-24','19:00:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(606,8,8000,'2022-10-24','19:03:54','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(607,7,7000,'2022-10-24','19:06:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(608,8,8000,'2022-10-24','19:06:02','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(609,7,7004,'2022-10-24','19:07:31','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(610,7,7000,'2022-10-24','19:12:22','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(611,7,7004,'2022-10-24','19:12:49','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(612,8,8000,'2022-10-24','19:17:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(613,7,7004,'2022-10-24','19:21:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(614,8,8000,'2022-10-24','19:22:22','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(615,8,8000,'2022-10-24','19:23:20','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(616,8,8000,'2022-10-24','19:26:29','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(617,2,1,'2022-10-24','21:57:45','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(618,2,2000,'2022-10-24','21:58:14','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(619,8,8000,'2022-10-24','21:58:18','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(620,2,999,'2022-10-24','21:58:23','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Cerro Sesion'),(621,1,1,'2022-10-24','21:58:47','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(622,1,1000,'2022-10-24','21:59:11','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Seguridad'),(623,1,1002,'2022-10-24','21:59:39','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Se creo nueva Aplicacion'),(624,1,1002,'2022-10-24','22:00:00','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Se creo nueva Aplicacion'),(625,1,1102,'2022-10-24','22:00:25','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Asigno Aplicacion-Perfil'),(626,1,999,'2022-10-24','22:00:35','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Cerro Sesion'),(627,2,1,'2022-10-24','22:01:11','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(628,2,2000,'2022-10-24','22:01:52','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(629,2,1,'2022-10-24','22:06:48','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(630,2,2000,'2022-10-24','22:07:16','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(631,6,6000,'2022-10-24','22:13:23','DESKTOP-I95002A','2803:d100:9830:686:7896:9bae:9fe1:edf2','Ingreso Nominas'),(632,2,1,'2022-10-24','22:14:26','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(633,2,2000,'2022-10-24','22:14:54','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(634,6,6000,'2022-10-24','22:15:37','DESKTOP-I95002A','2803:d100:9830:686:7896:9bae:9fe1:edf2','Ingreso Nominas'),(635,7,7000,'2022-10-24','22:19:04','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(636,7,7001,'2022-10-24','22:20:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(637,2,1,'2022-10-24','22:22:08','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(638,2,2000,'2022-10-24','22:22:46','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(639,2,1,'2022-10-24','22:22:53','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(640,2,2000,'2022-10-24','22:23:19','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(641,2,2008,'2022-10-24','22:23:41','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(642,7,7002,'2022-10-24','22:24:18','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(643,2,2005,'2022-10-24','22:24:24','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(644,7,7002,'2022-10-24','22:25:08','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(645,2,2006,'2022-10-24','22:26:06','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(646,2,2007,'2022-10-24','22:27:03','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(647,2,1,'2022-10-24','22:34:40','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(648,2,2000,'2022-10-24','22:35:05','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(649,2,2004,'2022-10-24','22:37:06','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(650,2,2004,'2022-10-24','22:38:29','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(651,6,6000,'2022-10-24','22:38:37','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(652,2,2101,'2022-10-24','22:39:31','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(653,2,2102,'2022-10-24','22:40:00','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(654,6,6000,'2022-10-24','22:40:37','DESKTOP-G94V2P4','2803:d100:9830:686:8d5a:f2ab:dd32:eafb','Ingreso Nominas'),(655,6,6000,'2022-10-24','22:40:45','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(656,2,2103,'2022-10-24','22:41:07','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(657,6,6002,'2022-10-24','22:41:09','DESKTOP-G94V2P4','2803:d100:9830:686:8d5a:f2ab:dd32:eafb','Guardar'),(658,2,2104,'2022-10-24','22:41:39','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Guardar'),(659,6,6002,'2022-10-24','22:42:00','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Guardar'),(660,7,7000,'2022-10-24','22:42:23','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(661,6,6000,'2022-10-24','22:42:23','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(662,7,7001,'2022-10-24','22:43:52','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(663,6,6003,'2022-10-24','22:45:26','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Guardar'),(664,6,6000,'2022-10-24','22:45:45','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(665,6,6002,'2022-10-24','22:47:06','DESKTOP-G94V2P4','2803:d100:9830:686:8d5a:f2ab:dd32:eafb','Modificar'),(666,6,6000,'2022-10-24','22:47:20','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(667,6,6003,'2022-10-24','22:47:44','DESKTOP-G94V2P4','2803:d100:9830:686:8d5a:f2ab:dd32:eafb','Modificar'),(668,6,6003,'2022-10-24','22:48:16','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(669,7,7000,'2022-10-24','22:48:19','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(670,7,7001,'2022-10-24','22:49:17','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(671,6,6000,'2022-10-24','22:49:49','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(672,7,7001,'2022-10-24','22:50:04','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(673,6,6003,'2022-10-24','22:50:26','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Modificar'),(674,7,7002,'2022-10-24','22:50:34','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(675,7,7002,'2022-10-24','22:50:53','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(676,6,6003,'2022-10-24','22:50:57','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Eliminar'),(677,6,6002,'2022-10-24','22:50:59','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Modificar'),(678,6,6002,'2022-10-24','22:51:59','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(679,7,7003,'2022-10-24','22:52:30','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(680,6,6003,'2022-10-24','22:52:58','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Modificar'),(681,7,7003,'2022-10-24','22:53:18','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(682,6,6002,'2022-10-24','22:53:41','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(683,6,6002,'2022-10-24','22:55:18','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Modificar'),(684,6,6004,'2022-10-24','22:57:04','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(685,6,6004,'2022-10-24','22:59:08','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Guardar'),(686,6,6004,'2022-10-24','22:59:18','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(687,6,6004,'2022-10-24','23:00:11','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(688,6,6004,'2022-10-24','23:00:37','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Guardar'),(689,6,6007,'2022-10-24','23:02:19','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Guardar'),(690,6,6005,'2022-10-24','23:02:38','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(691,6,6007,'2022-10-24','23:05:55','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(692,6,6007,'2022-10-24','23:07:05','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(693,4,3000,'2022-10-25','12:40:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(694,4,3001,'2022-10-25','12:40:38','DESKTOP-8O756PG','192.168.1.3','Reportes'),(695,4,3000,'2022-10-25','12:42:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(696,4,3001,'2022-10-25','12:42:58','DESKTOP-8O756PG','192.168.1.3','Reportes'),(697,4,3000,'2022-10-25','12:47:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(698,4,3001,'2022-10-25','12:47:44','DESKTOP-8O756PG','192.168.1.3','Reportes'),(699,4,3000,'2022-10-25','13:13:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(700,4,3002,'2022-10-25','13:13:22','DESKTOP-8O756PG','192.168.1.3','Reportes'),(701,4,3000,'2022-10-25','13:16:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(702,4,3002,'2022-10-25','13:16:48','DESKTOP-8O756PG','192.168.1.3','Reportes'),(703,4,3002,'2022-10-25','13:17:07','DESKTOP-8O756PG','192.168.1.3','Reportes'),(704,4,3002,'2022-10-25','13:18:30','DESKTOP-8O756PG','192.168.1.3','Consulta'),(705,4,3002,'2022-10-25','13:18:45','DESKTOP-8O756PG','192.168.1.3','Guardar'),(706,4,3002,'2022-10-25','13:18:52','DESKTOP-8O756PG','192.168.1.3','Consulta'),(707,4,3000,'2022-10-25','13:23:30','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(708,4,3002,'2022-10-25','13:23:39','DESKTOP-8O756PG','192.168.1.3','Consulta'),(709,4,3000,'2022-10-25','13:31:21','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(710,4,3002,'2022-10-25','13:31:37','DESKTOP-8O756PG','192.168.1.3','Reportes'),(711,4,3002,'2022-10-25','13:32:24','DESKTOP-8O756PG','192.168.1.3','Reportes'),(712,4,3002,'2022-10-25','13:33:56','DESKTOP-8O756PG','192.168.1.3','Consulta'),(713,4,3002,'2022-10-25','13:34:18','DESKTOP-8O756PG','192.168.1.3','Guardar'),(714,4,3002,'2022-10-25','13:34:27','DESKTOP-8O756PG','192.168.1.3','Consulta'),(715,7,7000,'2022-10-25','16:21:24','LAPTOP-91CORHUE','2800:98:1119:2ff:e4f9:5086:5d14:3ce7','Ingreso Bancos'),(716,7,7000,'2022-10-25','16:28:16','LAPTOP-91CORHUE','2800:98:1119:2ff:e4f9:5086:5d14:3ce7','Ingreso Bancos'),(717,7,7000,'2022-10-25','16:36:12','LAPTOP-91CORHUE','2800:98:1119:2ff:e4f9:5086:5d14:3ce7','Ingreso Bancos'),(718,1,5000,'2022-10-26','19:27:38','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(719,7,7000,'2022-10-26','20:42:05','LAPTOP-91CORHUE','2800:98:1119:2ff:f40b:decb:33af:b370','Ingreso Bancos'),(720,7,7000,'2022-10-26','20:48:35','LAPTOP-91CORHUE','2800:98:1119:2ff:f40b:decb:33af:b370','Ingreso Bancos'),(721,7,7000,'2022-10-26','20:55:48','LAPTOP-91CORHUE','2800:98:1119:2ff:f40b:decb:33af:b370','Ingreso Bancos'),(722,7,7000,'2022-10-26','21:02:02','LAPTOP-91CORHUE','2800:98:1119:2ff:f40b:decb:33af:b370','Ingreso Bancos'),(723,7,7000,'2022-10-26','21:05:55','LAPTOP-91CORHUE','2800:98:1119:2ff:f40b:decb:33af:b370','Ingreso Bancos'),(724,7,7000,'2022-10-26','21:41:48','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(725,7,7000,'2022-10-26','21:45:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(726,7,7000,'2022-10-26','22:05:32','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(727,7,7000,'2022-10-26','22:10:17','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(728,2,1,'2022-10-26','22:44:37','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(729,2,2000,'2022-10-26','22:45:20','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(730,2,1,'2022-10-26','22:48:47','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(731,2,2000,'2022-10-26','22:49:26','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(732,2,1,'2022-10-26','22:51:04','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(733,2,1,'2022-10-26','22:51:31','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Login'),(734,2,2000,'2022-10-26','22:52:02','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(735,2,2000,'2022-10-26','22:52:10','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Logistica'),(736,2,1,'2022-10-26','22:56:20','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(737,2,2000,'2022-10-26','22:56:57','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(738,2,1,'2022-10-26','23:09:31','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(739,2,2000,'2022-10-26','23:10:12','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(740,2,1,'2022-10-26','23:12:48','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(741,2,2000,'2022-10-26','23:13:30','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(742,4,3000,'2022-10-27','15:51:11','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%17','Ingreso Compras'),(743,4,3000,'2022-10-27','16:06:55','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%17','Ingreso Compras'),(744,7,7000,'2022-10-27','19:18:22','LAPTOP-91CORHUE','2800:98:1119:2ff:f4a3:4614:9a7c:794c','Ingreso Bancos'),(745,8,8000,'2022-10-27','20:14:42','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(746,8,8000,'2022-10-27','20:14:48','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(747,8,8000,'2022-10-27','20:17:26','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(748,8,8000,'2022-10-27','20:23:11','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(749,8,8000,'2022-10-27','20:28:29','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(750,8,8000,'2022-10-27','20:31:31','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(751,4,3000,'2022-10-28','08:09:35','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(752,8,8000,'2022-10-28','08:09:59','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Contabilidad'),(753,6,6000,'2022-10-28','08:10:47','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(754,4,3000,'2022-10-28','08:11:01','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(755,1,8000,'2022-10-28','08:11:42','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Contabilidad'),(756,1,6000,'2022-10-28','08:13:41','LAPTOP-91CORHUE','2800:98:1119:2ff:58c5:b7ef:feb2:4ae8','Ingreso Nominas'),(757,1,6000,'2022-10-28','08:14:56','LAPTOP-91CORHUE','2800:98:1119:2ff:58c5:b7ef:feb2:4ae8','Ingreso Nominas'),(758,6,6000,'2022-10-28','08:20:50','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(759,8,8000,'2022-10-28','08:24:58','DESKTOP-T5OJTBO','2800:98:1112:af3::3','Ingreso Contabilidad'),(760,2,1,'2022-10-28','08:27:54','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(761,2,2000,'2022-10-28','08:28:25','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Logistica'),(762,2,999,'2022-10-28','08:29:26','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Cerro Sesion'),(763,5,5000,'2022-10-28','08:34:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Produccion'),(764,1,1000,'2022-10-28','09:37:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(765,7,7000,'2022-10-28','09:38:24','DESKTOP-8O756PG','192.168.1.3','Ingreso Bancos'),(766,4,3000,'2022-10-28','10:22:04','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(767,4,3000,'2022-10-28','10:23:59','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(768,4,3000,'2022-10-28','10:29:31','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(769,4,3000,'2022-10-28','10:34:19','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(770,4,3000,'2022-10-28','10:38:01','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(771,7,7000,'2022-10-28','10:39:47','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(772,4,3000,'2022-10-28','10:40:01','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(773,7,7003,'2022-10-28','10:40:44','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Guardar'),(774,4,3000,'2022-10-28','10:45:42','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(775,4,3000,'2022-10-28','10:49:24','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(776,4,3001,'2022-10-28','10:49:39','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Reportes'),(777,7,7000,'2022-10-28','10:52:43','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(778,7,7000,'2022-10-28','12:16:01','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(779,4,3000,'2022-10-28','12:38:55','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(780,4,3001,'2022-10-28','12:39:45','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Reportes'),(781,4,3000,'2022-10-28','12:44:16','LAIONEL','2800:98:1207:a247:31a1:551c:b651:f954','Ingreso Compras'),(782,7,7000,'2022-10-28','12:48:01','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(783,4,3000,'2022-10-28','13:01:30','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(784,4,3001,'2022-10-28','13:01:38','DESKTOP-8O756PG','192.168.1.3','Consulta'),(785,4,3001,'2022-10-28','13:02:28','DESKTOP-8O756PG','192.168.1.3','Consulta'),(786,4,3001,'2022-10-28','13:02:41','DESKTOP-8O756PG','192.168.1.3','Consulta'),(787,4,3001,'2022-10-28','13:02:56','DESKTOP-8O756PG','192.168.1.3','Consulta'),(788,4,3001,'2022-10-28','13:03:17','DESKTOP-8O756PG','192.168.1.3','Reportes'),(789,4,3001,'2022-10-28','13:05:49','DESKTOP-8O756PG','192.168.1.3','Consulta'),(790,4,3001,'2022-10-28','13:06:00','DESKTOP-8O756PG','192.168.1.3','Consulta'),(791,4,3001,'2022-10-28','13:06:09','DESKTOP-8O756PG','192.168.1.3','Consulta'),(792,4,3001,'2022-10-28','13:06:20','DESKTOP-8O756PG','192.168.1.3','Reportes'),(793,4,3001,'2022-10-28','13:06:32','DESKTOP-8O756PG','192.168.1.3','Consulta'),(794,4,3001,'2022-10-28','13:06:45','DESKTOP-8O756PG','192.168.1.3','Consulta'),(795,5,5000,'2022-10-28','18:23:36','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Produccion'),(796,7,7000,'2022-10-28','19:48:01','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(797,4,3000,'2022-10-28','20:33:14','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%17','Ingreso Compras'),(798,4,3000,'2022-10-28','20:37:12','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%17','Ingreso Compras'),(799,4,3000,'2022-10-28','20:39:41','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%17','Ingreso Compras'),(800,8,8000,'2022-10-28','22:36:44','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(801,4,3000,'2022-10-29','12:04:26','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Ingreso Compras'),(802,4,3001,'2022-10-29','12:05:43','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Reportes'),(803,4,3001,'2022-10-29','12:06:18','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Consulta'),(804,4,3001,'2022-10-29','12:07:44','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Guardar'),(805,4,3001,'2022-10-29','12:07:57','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Consulta'),(806,4,3001,'2022-10-29','12:08:56','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Guardar'),(807,4,3001,'2022-10-29','12:09:25','LAIONEL','2800:98:1207:3b13:917d:738d:ce4e:918b','Consulta'),(808,7,7000,'2022-10-29','17:35:12','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(809,7,7000,'2022-10-29','17:40:03','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(810,7,7003,'2022-10-29','17:41:29','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Guardar'),(811,7,7001,'2022-10-29','17:42:29','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Eliminar'),(812,7,7001,'2022-10-29','17:43:21','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Eliminar'),(813,7,7001,'2022-10-29','17:45:35','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Guardar'),(814,7,7003,'2022-10-29','17:47:20','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Modificar'),(815,8,8000,'2022-10-29','18:30:16','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(816,8,8000,'2022-10-29','18:39:08','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(817,8,8000,'2022-10-29','18:44:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(818,8,8000,'2022-10-29','19:00:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(819,8,1,'2022-10-29','19:09:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(820,8,8000,'2022-10-29','19:09:56','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(821,7,7000,'2022-10-29','19:20:25','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(822,8,8000,'2022-10-29','19:25:30','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Contabilidad'),(823,8,8000,'2022-10-29','19:27:14','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(824,8,8000,'2022-10-29','19:27:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Contabilidad'),(825,8,8000,'2022-10-29','19:32:03','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(826,8,8000,'2022-10-29','19:38:00','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Contabilidad'),(827,4,3000,'2022-10-29','19:45:30','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(828,4,3001,'2022-10-29','19:46:25','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Guardar'),(829,8,1,'2022-10-29','19:50:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(830,8,999,'2022-10-29','19:51:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(831,8,8000,'2022-10-29','19:53:19','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(832,8,1,'2022-10-29','19:56:04','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(833,8,8000,'2022-10-29','19:56:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(834,7,7000,'2022-10-29','19:57:30','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(835,7,7000,'2022-10-29','20:14:22','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(836,7,7000,'2022-10-29','20:28:41','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(837,7,7000,'2022-10-29','20:34:40','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(838,7,7000,'2022-10-29','20:37:00','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(839,7,7000,'2022-10-29','20:39:51','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(840,7,7000,'2022-10-29','20:43:34','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(841,7,7000,'2022-10-29','20:45:55','LAPTOP-91CORHUE','2800:98:1119:2ff:c81b:a2ed:d0b6:4c30','Ingreso Bancos'),(842,4,3000,'2022-10-29','21:03:41','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(843,8,8000,'2022-10-29','21:20:37','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(844,8,8000,'2022-10-29','21:23:09','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(845,8,8000,'2022-10-29','21:32:33','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(846,8,8000,'2022-10-29','21:37:35','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(847,4,3000,'2022-10-29','21:50:15','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(848,8,8000,'2022-10-29','22:21:49','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(849,4,3000,'2022-10-29','22:35:03','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(850,8,8000,'2022-10-29','22:39:00','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(851,8,1,'2022-10-29','22:57:24','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(852,8,8000,'2022-10-29','22:57:50','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(853,8,8000,'2022-10-29','22:58:22','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(854,8,8000,'2022-10-29','23:01:18','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(855,8,8000,'2022-10-29','23:11:48','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(856,8,8000,'2022-10-29','23:25:42','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(857,8,8000,'2022-10-29','23:28:04','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(858,8,8000,'2022-10-29','23:31:47','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(859,8,8000,'2022-10-29','23:37:14','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(860,8,8000,'2022-10-29','23:41:58','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(861,8,8000,'2022-10-29','23:50:09','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(862,8,8000,'2022-10-29','23:56:05','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(863,8,8000,'2022-10-29','23:57:55','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(864,8,8000,'2022-10-30','00:02:27','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(865,4,3000,'2022-10-30','00:41:35','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(866,4,3000,'2022-10-30','00:47:11','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(867,4,3000,'2022-10-30','09:00:08','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(868,4,3000,'2022-10-30','09:07:01','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(869,4,3000,'2022-10-30','09:11:41','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(870,1,1,'2022-10-30','13:52:42','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Login'),(871,1,5000,'2022-10-30','13:54:55','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(872,1,1,'2022-10-30','14:01:41','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Login'),(873,1,5000,'2022-10-30','14:01:45','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(874,1,1,'2022-10-30','14:04:04','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Login'),(875,1,5000,'2022-10-30','14:04:06','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(876,8,1,'2022-10-30','14:09:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(877,1,1,'2022-10-30','14:09:59','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Login'),(878,8,8000,'2022-10-30','14:10:22','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(879,8,1,'2022-10-30','14:16:38','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(880,8,8000,'2022-10-30','14:17:15','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(881,8,999,'2022-10-30','14:18:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(882,1,5000,'2022-10-30','14:36:54','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(883,1,1,'2022-10-30','14:38:16','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Login'),(884,1,5000,'2022-10-30','14:38:40','DESKTOP-5L5D82H','fe80::115a:f67a:79f6:2592%16','Ingreso Produccion'),(885,8,8000,'2022-10-30','15:41:33','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(886,8,8000,'2022-10-30','15:45:08','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(887,7,7000,'2022-10-30','16:25:43','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Ingreso Bancos'),(888,7,7000,'2022-10-30','16:29:53','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Ingreso Bancos'),(889,7,7000,'2022-10-30','16:31:43','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Ingreso Bancos'),(890,7,7000,'2022-10-30','16:37:29','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Ingreso Bancos'),(891,8,8000,'2022-10-30','16:42:50','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(892,7,7000,'2022-10-30','16:43:55','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Ingreso Bancos'),(893,7,7003,'2022-10-30','16:47:24','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Guardar'),(894,4,3000,'2022-10-30','16:48:14','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(895,7,7003,'2022-10-30','16:48:21','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Modificar'),(896,7,7003,'2022-10-30','16:48:57','LAPTOP-91CORHUE','2800:98:1119:2ff:c1da:5c03:40bc:b1e5','Eliminar'),(897,4,3000,'2022-10-30','16:53:52','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(898,1,1000,'2022-10-30','18:18:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(899,1,1103,'2022-10-30','18:20:04','DESKTOP-8O756PG','192.168.1.3','Asigno Perfil-Aplicacion'),(900,8,8000,'2022-10-30','18:21:55','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(901,2,1,'2022-10-30','18:22:14','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(902,2,2000,'2022-10-30','18:22:43','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(903,7,7000,'2022-10-30','18:28:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(904,7,7000,'2022-10-30','18:33:02','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(905,4,3000,'2022-10-30','18:34:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(906,4,3000,'2022-10-30','18:39:09','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(907,4,3001,'2022-10-30','18:39:29','DESKTOP-8O756PG','192.168.1.3','Guardar'),(908,4,3000,'2022-10-30','18:43:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(909,4,3001,'2022-10-30','18:44:25','DESKTOP-8O756PG','192.168.1.3','Guardar'),(910,4,3000,'2022-10-30','18:46:15','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(911,4,3001,'2022-10-30','18:46:36','DESKTOP-8O756PG','192.168.1.3','Guardar'),(912,4,3000,'2022-10-30','18:49:51','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(913,4,3000,'2022-10-30','18:51:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(914,4,3000,'2022-10-30','18:55:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(915,4,3000,'2022-10-30','18:57:56','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(916,4,3000,'2022-10-30','19:00:21','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(917,2,1,'2022-10-30','19:02:21','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(918,4,3001,'2022-10-30','19:02:54','DESKTOP-8O756PG','192.168.1.3','Modificar'),(919,2,2000,'2022-10-30','19:02:49','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(920,4,3001,'2022-10-30','19:03:22','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(921,4,3001,'2022-10-30','19:03:41','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(922,4,3001,'2022-10-30','19:03:57','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(923,2,999,'2022-10-30','19:10:52','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Cerro Sesion'),(924,4,3000,'2022-10-30','19:12:53','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(925,4,3002,'2022-10-30','19:13:45','DESKTOP-8O756PG','192.168.1.3','Guardar'),(926,4,3002,'2022-10-30','19:14:21','DESKTOP-8O756PG','192.168.1.3','Modificar'),(927,4,3000,'2022-10-30','19:16:50','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(928,7,7000,'2022-10-30','19:19:45','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(929,8,8000,'2022-10-30','19:22:08','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(930,4,3000,'2022-10-30','19:22:56','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(931,4,3000,'2022-10-30','19:24:36','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(932,4,3000,'2022-10-30','19:28:48','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(933,8,8000,'2022-10-30','19:29:48','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(934,4,3000,'2022-10-30','19:30:35','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(935,4,3000,'2022-10-30','19:33:11','FABIAN','192.168.1.10','Ingreso Compras'),(936,4,3000,'2022-10-30','19:35:46','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(937,4,3000,'2022-10-30','19:48:38','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(938,4,3000,'2022-10-30','19:53:21','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(939,4,3000,'2022-10-30','19:54:38','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(940,4,3000,'2022-10-30','19:57:38','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(941,4,3000,'2022-10-30','19:58:55','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(942,4,3000,'2022-10-30','19:59:33','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(943,4,3000,'2022-10-30','20:02:44','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(944,4,3000,'2022-10-30','20:08:58','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(945,4,3000,'2022-10-30','20:10:59','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(946,4,3000,'2022-10-30','20:22:26','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(947,6,6000,'2022-10-30','20:27:05','DESKTOP-G94V2P4','2803:d100:9830:686:1cab:b2a9:9437:f296','Ingreso Nominas'),(948,4,3000,'2022-10-30','20:29:55','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(949,4,3000,'2022-10-30','20:31:13','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(950,6,6000,'2022-10-30','20:32:36','DESKTOP-G94V2P4','2803:d100:9830:686:1cab:b2a9:9437:f296','Ingreso Nominas'),(951,4,3000,'2022-10-30','20:34:36','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(952,7,7000,'2022-10-30','20:36:26','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(953,4,3000,'2022-10-30','20:36:31','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(954,4,3000,'2022-10-30','20:41:01','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(955,4,3000,'2022-10-30','20:41:16','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(956,8,1,'2022-10-30','20:47:52','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(957,8,8000,'2022-10-30','20:48:15','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(958,8,1,'2022-10-30','20:49:56','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(959,8,8000,'2022-10-30','20:50:18','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(960,4,3000,'2022-10-30','20:54:38','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(961,8,1,'2022-10-30','21:35:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(962,8,1,'2022-10-30','21:38:18','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(963,8,8000,'2022-10-30','21:38:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(964,7,7000,'2022-10-30','21:41:47','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(965,7,7003,'2022-10-30','21:42:20','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Consulta'),(966,8,1,'2022-10-30','21:44:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(967,8,8000,'2022-10-30','21:45:08','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(968,8,1,'2022-10-30','21:48:56','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(969,4,3000,'2022-10-30','21:49:07','FABIAN','192.168.1.10','Ingreso Compras'),(970,8,8000,'2022-10-30','21:49:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(971,4,3000,'2022-10-30','21:51:15','FABIAN','192.168.1.10','Ingreso Compras'),(972,8,1,'2022-10-30','21:51:44','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(973,8,8000,'2022-10-30','21:52:09','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(974,7,7000,'2022-10-30','21:53:23','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(975,8,1,'2022-10-30','21:54:40','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(976,4,3000,'2022-10-30','21:54:52','FABIAN','192.168.1.10','Ingreso Compras'),(977,8,8000,'2022-10-30','21:55:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(978,7,7000,'2022-10-30','21:55:49','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(979,4,3000,'2022-10-30','22:00:25','FABIAN','192.168.1.10','Ingreso Compras'),(980,7,7000,'2022-10-30','22:00:51','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(981,8,1,'2022-10-30','22:01:18','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(982,4,3000,'2022-10-30','22:01:46','FABIAN','192.168.1.10','Ingreso Compras'),(983,8,8000,'2022-10-30','22:01:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(984,8,1,'2022-10-30','22:04:07','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(985,8,8000,'2022-10-30','22:05:00','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(986,7,7000,'2022-10-30','22:05:08','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(987,7,7003,'2022-10-30','22:07:09','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Guardar'),(988,8,1,'2022-10-30','22:08:18','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(989,8,8000,'2022-10-30','22:09:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(990,4,3000,'2022-10-30','22:16:44','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(991,4,3001,'2022-10-30','22:18:34','DESKTOP-8O756PG','192.168.1.3','Modificar'),(992,4,3001,'2022-10-30','22:18:50','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(993,4,3001,'2022-10-30','22:19:07','DESKTOP-8O756PG','192.168.1.3','Guardar'),(994,4,3002,'2022-10-30','22:19:41','DESKTOP-8O756PG','192.168.1.3','Modificar'),(995,7,7000,'2022-10-30','22:25:11','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(996,7,7003,'2022-10-30','22:25:53','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Modificar'),(997,8,1,'2022-10-30','22:27:03','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(998,7,7003,'2022-10-30','22:27:04','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Modificar'),(999,8,8000,'2022-10-30','22:27:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1000,8,999,'2022-10-30','22:34:03','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1001,7,7000,'2022-10-30','23:07:45','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1002,7,7000,'2022-10-30','23:12:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1003,7,7000,'2022-10-30','23:16:42','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1004,7,7000,'2022-10-30','23:18:13','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1005,7,7001,'2022-10-30','23:20:27','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1006,7,7001,'2022-10-30','23:21:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1007,7,7001,'2022-10-30','23:21:37','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1008,7,7003,'2022-10-30','23:23:25','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1009,7,7003,'2022-10-30','23:23:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1010,7,7003,'2022-10-30','23:25:01','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1011,7,7003,'2022-10-30','23:25:18','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(1012,7,7001,'2022-10-30','23:26:07','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(1013,7,7003,'2022-10-30','23:28:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1014,7,7003,'2022-10-30','23:29:29','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1015,7,7000,'2022-10-31','00:23:53','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1016,7,7000,'2022-10-31','00:26:30','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1017,7,7000,'2022-10-31','00:32:54','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1018,7,7000,'2022-10-31','01:09:12','LAPTOP_DE_MEMIN','192.168.1.17','Ingreso Bancos'),(1019,7,7000,'2022-10-31','01:10:27','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1020,7,7000,'2022-10-31','01:20:42','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1021,7,7000,'2022-10-31','01:26:20','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1022,7,7000,'2022-10-31','01:37:04','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(1023,4,3000,'2022-10-31','13:34:26','FABIAN','192.168.1.10','Ingreso Compras'),(1024,4,3000,'2022-10-31','14:46:43','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1025,4,3000,'2022-10-31','14:48:24','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1026,4,3000,'2022-10-31','14:51:31','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1027,4,3000,'2022-10-31','14:53:01','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1028,4,3000,'2022-10-31','15:49:53','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1029,4,3000,'2022-10-31','15:54:44','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1030,4,3000,'2022-10-31','15:55:40','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1031,4,3000,'2022-10-31','16:04:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1032,4,3000,'2022-10-31','16:06:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1033,4,3000,'2022-10-31','16:09:15','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1034,4,3000,'2022-10-31','16:12:23','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1035,4,3000,'2022-10-31','16:13:03','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1036,4,3000,'2022-10-31','16:17:19','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1037,4,3000,'2022-10-31','16:22:46','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1038,4,3000,'2022-10-31','16:25:11','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1039,4,3000,'2022-10-31','16:26:16','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1040,4,3000,'2022-10-31','16:27:45','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1041,4,3000,'2022-10-31','16:35:48','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1042,4,3000,'2022-10-31','17:00:14','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1043,4,3000,'2022-10-31','17:01:44','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1044,1,1,'2022-10-31','18:06:29','LAIONEL','2800:98:1207:3b13:d181:7d2b:f42d:7b08','Ingreso Login'),(1045,1,6000,'2022-10-31','18:08:18','LAIONEL','2800:98:1207:3b13:d181:7d2b:f42d:7b08','Ingreso Nominas'),(1046,1,1,'2022-10-31','18:09:37','LAIONEL','2800:98:1207:3b13:d181:7d2b:f42d:7b08','Ingreso Login'),(1047,1,6000,'2022-10-31','18:12:11','LAIONEL','2800:98:1207:3b13:d181:7d2b:f42d:7b08','Ingreso Nominas'),(1048,6,1,'2022-10-31','18:15:11','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1049,1,1,'2022-10-31','18:16:28','LAIONEL','2800:98:1207:3b13:d181:7d2b:f42d:7b08','Ingreso Login'),(1050,6,1,'2022-10-31','18:19:36','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1051,6,6000,'2022-10-31','18:20:06','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1052,6,1,'2022-10-31','18:21:45','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1053,6,6000,'2022-10-31','18:22:16','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1054,6,1,'2022-10-31','18:33:38','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1055,6,6000,'2022-10-31','18:34:31','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1056,6,1,'2022-10-31','18:42:46','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1057,6,6000,'2022-10-31','18:43:15','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1058,6,6005,'2022-10-31','18:45:09','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(1059,4,3000,'2022-11-01','10:22:01','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1060,4,3000,'2022-11-01','10:28:51','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1061,4,3000,'2022-11-01','10:30:14','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1062,4,3000,'2022-11-01','10:33:08','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1063,4,3000,'2022-11-01','10:37:40','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1064,4,3000,'2022-11-01','10:39:11','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1065,4,3000,'2022-11-01','10:41:07','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1066,4,3000,'2022-11-01','10:50:53','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1067,4,3000,'2022-11-01','11:00:02','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1068,4,3000,'2022-11-01','11:05:39','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1069,4,3000,'2022-11-01','11:08:40','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1070,4,3000,'2022-11-01','11:26:30','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1071,8,8000,'2022-11-01','11:52:49','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1072,4,3000,'2022-11-01','12:03:57','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1073,4,3000,'2022-11-01','12:09:51','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1074,1,1,'2022-11-01','13:53:52','LAIONEL','2800:98:1207:3b13:7871:d25d:9cbb:bfc5','Ingreso Login'),(1075,1,6000,'2022-11-01','13:55:18','LAIONEL','2800:98:1207:3b13:7871:d25d:9cbb:bfc5','Ingreso Nominas'),(1076,4,1,'2022-11-01','19:13:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1077,4,1,'2022-11-01','19:15:51','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1078,4,3000,'2022-11-01','19:15:54','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1079,4,999,'2022-11-01','19:16:30','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(1080,4,1,'2022-11-01','19:18:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1081,4,1,'2022-11-01','19:20:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1082,4,3000,'2022-11-01','19:20:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1083,4,3001,'2022-11-01','19:20:31','DESKTOP-8O756PG','192.168.1.3','Consulta'),(1084,4,3001,'2022-11-01','19:20:36','DESKTOP-8O756PG','192.168.1.3','Reportes'),(1085,4,1,'2022-11-01','20:26:21','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1086,4,3000,'2022-11-01','20:26:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Compras'),(1087,4,3001,'2022-11-01','20:27:15','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Reportes'),(1088,4,3001,'2022-11-01','20:28:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1089,4,3001,'2022-11-01','20:29:15','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Eliminar'),(1090,4,3001,'2022-11-01','20:30:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Guardar'),(1091,4,999,'2022-11-01','20:31:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1092,4,1,'2022-11-01','23:13:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1093,4,1,'2022-11-01','23:18:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1094,4,3000,'2022-11-01','23:19:09','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Compras'),(1095,4,3001,'2022-11-01','23:20:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Eliminar'),(1096,4,3001,'2022-11-01','23:22:20','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Guardar'),(1097,4,3001,'2022-11-01','23:22:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1098,4,3001,'2022-11-01','23:24:05','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Reportes'),(1099,4,999,'2022-11-01','23:25:00','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1100,7,1,'2022-11-02','16:39:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1101,7,7000,'2022-11-02','16:39:50','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1102,7,7001,'2022-11-02','16:40:15','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1103,7,7001,'2022-11-02','16:40:23','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(1104,7,1,'2022-11-02','16:42:09','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1105,7,7000,'2022-11-02','16:42:36','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1106,7,7002,'2022-11-02','16:42:57','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1107,7,7003,'2022-11-02','16:43:45','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1108,7,999,'2022-11-02','16:44:17','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Cerro Sesion'),(1109,4,1,'2022-11-02','17:56:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1110,4,3000,'2022-11-02','17:56:09','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1111,4,3002,'2022-11-02','17:56:18','DESKTOP-8O756PG','192.168.1.3','Reportes'),(1112,4,3002,'2022-11-02','17:56:46','DESKTOP-8O756PG','192.168.1.3','Reportes'),(1113,4,3002,'2022-11-02','17:56:52','DESKTOP-8O756PG','192.168.1.3','Consulta'),(1114,4,999,'2022-11-02','17:57:16','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(1115,4,1,'2022-11-02','18:55:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1116,4,3000,'2022-11-02','18:55:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1117,4,1,'2022-11-02','18:58:12','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1118,4,3000,'2022-11-02','18:58:17','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1119,4,1,'2022-11-02','18:59:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1120,4,3000,'2022-11-02','18:59:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1121,4,1,'2022-11-02','19:07:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1122,4,3000,'2022-11-02','19:07:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1123,4,1,'2022-11-02','19:08:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1124,4,3000,'2022-11-02','19:08:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1125,4,999,'2022-11-02','19:09:03','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(1126,4,1,'2022-11-02','19:47:01','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1127,4,3000,'2022-11-02','19:47:07','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1128,4,1,'2022-11-02','19:54:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1129,4,3000,'2022-11-02','19:54:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1130,1,1,'2022-11-02','20:08:24','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(1131,1,1000,'2022-11-02','20:08:43','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Seguridad'),(1132,4,1,'2022-11-02','20:11:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1133,4,3000,'2022-11-02','20:11:49','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1134,4,1,'2022-11-02','20:12:49','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1135,4,3000,'2022-11-02','20:13:05','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1136,4,1,'2022-11-02','20:19:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1137,4,3000,'2022-11-02','20:20:14','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1138,4,1,'2022-11-02','20:21:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1139,4,3000,'2022-11-02','20:21:55','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1140,4,1,'2022-11-02','21:59:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1141,4,3000,'2022-11-02','22:00:48','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1142,4,1,'2022-11-02','22:04:01','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1143,4,3000,'2022-11-02','22:04:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1144,4,1,'2022-11-02','22:05:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1145,4,3000,'2022-11-02','22:05:57','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1146,7,1,'2022-11-02','22:19:14','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1147,7,1,'2022-11-02','22:22:53','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1148,7,7000,'2022-11-02','22:24:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1149,4,1,'2022-11-02','22:29:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1150,4,3000,'2022-11-02','22:29:46','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1151,7,1,'2022-11-02','22:30:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1152,7,7000,'2022-11-02','22:31:55','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1153,7,1,'2022-11-02','22:34:10','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1154,7,7000,'2022-11-02','22:35:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1155,4,1,'2022-11-02','22:36:53','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1156,4,3000,'2022-11-02','22:37:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1157,4,1,'2022-11-02','22:38:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1158,4,3000,'2022-11-02','22:38:44','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1159,4,1,'2022-11-02','22:41:54','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1160,4,3000,'2022-11-02','22:42:07','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1161,4,1,'2022-11-02','22:49:25','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1162,4,3000,'2022-11-02','22:49:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1163,4,1,'2022-11-02','22:52:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1164,4,3000,'2022-11-02','22:52:21','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1165,7,1,'2022-11-02','22:52:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1166,7,7000,'2022-11-02','22:53:21','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1167,4,1,'2022-11-02','22:54:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1168,4,3000,'2022-11-02','22:54:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1169,4,1,'2022-11-02','22:56:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1170,4,3000,'2022-11-02','22:56:22','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1171,7,1,'2022-11-02','22:56:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1172,7,7000,'2022-11-02','22:57:05','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1173,7,7001,'2022-11-02','22:58:14','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1174,7,1,'2022-11-02','23:04:31','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1175,7,7000,'2022-11-02','23:04:56','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1176,7,7001,'2022-11-02','23:06:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1177,7,7001,'2022-11-02','23:06:57','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1178,7,1,'2022-11-02','23:15:12','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1179,7,7000,'2022-11-02','23:16:09','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1180,7,7004,'2022-11-02','23:17:02','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1181,4,1,'2022-11-02','23:18:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1182,4,3000,'2022-11-02','23:18:37','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1183,7,7001,'2022-11-02','23:18:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1184,7,7001,'2022-11-02','23:19:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1185,7,7001,'2022-11-02','23:19:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1186,7,7001,'2022-11-02','23:20:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1187,4,1,'2022-11-02','23:20:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1188,4,3000,'2022-11-02','23:20:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1189,7,7001,'2022-11-02','23:20:25','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1190,4,1,'2022-11-02','23:21:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1191,4,3000,'2022-11-02','23:21:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1192,7,1,'2022-11-02','23:21:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1193,7,7000,'2022-11-02','23:22:23','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1194,7,7001,'2022-11-02','23:22:44','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1195,7,1,'2022-11-02','23:24:57','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1196,7,7000,'2022-11-02','23:25:22','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1197,7,7001,'2022-11-02','23:26:22','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1198,7,7001,'2022-11-02','23:26:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1199,7,7001,'2022-11-02','23:27:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1200,7,7004,'2022-11-02','23:27:56','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1201,7,1,'2022-11-02','23:55:30','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1202,4,1,'2022-11-02','23:55:38','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1203,4,3000,'2022-11-02','23:55:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1204,7,7000,'2022-11-02','23:56:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1205,7,1,'2022-11-03','00:03:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1206,7,7000,'2022-11-03','00:04:51','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1207,7,1,'2022-11-03','00:14:08','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1208,7,1,'2022-11-03','00:15:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1209,7,7000,'2022-11-03','00:16:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1210,7,7000,'2022-11-03','00:16:27','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Bancos'),(1211,4,1,'2022-11-03','00:16:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1212,4,3000,'2022-11-03','00:16:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1213,7,7003,'2022-11-03','00:17:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1214,7,7002,'2022-11-03','00:18:45','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1215,4,1,'2022-11-03','00:19:46','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1216,4,3000,'2022-11-03','00:19:52','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1217,4,1,'2022-11-03','00:25:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1218,4,3000,'2022-11-03','00:25:12','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1219,7,1,'2022-11-03','06:36:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1220,7,7000,'2022-11-03','06:38:13','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1221,7,7003,'2022-11-03','06:43:36','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1222,7,1,'2022-11-03','06:54:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1223,7,7000,'2022-11-03','06:56:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1224,7,1,'2022-11-03','07:04:51','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1225,7,7000,'2022-11-03','07:05:35','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1226,7,7001,'2022-11-03','07:08:22','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1227,7,7001,'2022-11-03','07:08:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(1228,7,7001,'2022-11-03','07:08:49','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(1229,7,7001,'2022-11-03','07:08:55','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1230,1,1,'2022-11-03','07:24:16','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(1231,1,5000,'2022-11-03','07:24:24','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Produccion'),(1232,1,6000,'2022-11-03','07:24:58','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Nominas'),(1233,1,1,'2022-11-03','07:25:25','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(1234,1,7000,'2022-11-03','07:25:55','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Bancos'),(1235,1,8000,'2022-11-03','07:26:26','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Contabilidad'),(1236,1,2000,'2022-11-03','07:26:57','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(1237,1,1,'2022-11-03','07:33:41','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(1238,1,7000,'2022-11-03','07:34:06','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Bancos'),(1239,1,5000,'2022-11-03','07:34:19','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Produccion'),(1240,1,8000,'2022-11-03','07:34:47','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Contabilidad'),(1241,1,1000,'2022-11-03','07:35:13','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Seguridad'),(1242,1,999,'2022-11-03','07:36:38','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Cerro Sesion'),(1243,4,1,'2022-11-03','08:51:27','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1244,4,3000,'2022-11-03','08:52:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Compras'),(1245,4,999,'2022-11-03','08:52:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1246,7,1,'2022-11-03','08:53:14','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1247,7,7000,'2022-11-03','08:53:47','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Bancos'),(1248,7,999,'2022-11-03','08:53:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1249,8,1,'2022-11-03','08:54:30','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1250,8,8000,'2022-11-03','08:56:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1251,8,999,'2022-11-03','08:56:07','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1252,2,1,'2022-11-03','08:56:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1253,2,2000,'2022-11-03','08:56:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Logistica'),(1254,2,999,'2022-11-03','08:57:07','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1255,6,1,'2022-11-03','08:57:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1256,6,6000,'2022-11-03','08:57:53','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Nominas'),(1257,5,1,'2022-11-03','08:58:34','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1258,5,5000,'2022-11-03','08:58:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Produccion'),(1259,5,999,'2022-11-03','08:58:53','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1260,1,1,'2022-11-03','09:15:55','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1261,1,6000,'2022-11-03','09:20:40','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Nominas'),(1262,1,1,'2022-11-03','10:10:57','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1263,1,1,'2022-11-03','10:51:03','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1264,1,1,'2022-11-03','10:54:45','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1265,1,6000,'2022-11-03','10:56:18','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Nominas'),(1266,1,1,'2022-11-03','11:13:36','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1267,1,6000,'2022-11-03','11:15:44','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Nominas'),(1268,1,1,'2022-11-03','11:19:17','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1269,1,6000,'2022-11-03','11:22:16','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Nominas'),(1270,7,1,'2022-11-03','11:59:06','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1271,7,7000,'2022-11-03','11:59:29','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1272,7,7002,'2022-11-03','11:59:44','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1273,7,7002,'2022-11-03','12:00:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(1274,7,1,'2022-11-03','12:23:49','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1275,7,7000,'2022-11-03','12:24:10','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1276,7,1,'2022-11-03','12:26:55','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1277,7,7000,'2022-11-03','12:27:40','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1278,7,1,'2022-11-03','12:30:41','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1279,7,7000,'2022-11-03','12:31:02','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1280,7,1,'2022-11-03','12:33:38','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1281,7,7000,'2022-11-03','12:34:00','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1282,7,7000,'2022-11-03','12:38:32','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1283,7,7003,'2022-11-03','12:39:40','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1284,7,7003,'2022-11-03','12:41:18','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1285,7,7003,'2022-11-03','12:41:47','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Eliminar'),(1286,7,7003,'2022-11-03','12:42:28','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1287,7,7003,'2022-11-03','12:43:38','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1288,7,7000,'2022-11-03','12:47:47','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1289,7,7003,'2022-11-03','12:48:55','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1290,4,1,'2022-11-03','12:57:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1291,4,3000,'2022-11-03','12:57:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1292,4,3001,'2022-11-03','12:57:52','DESKTOP-8O756PG','192.168.1.3','Reportes'),(1293,7,7000,'2022-11-03','13:52:51','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1294,7,7000,'2022-11-03','13:56:39','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1295,7,7000,'2022-11-03','14:00:19','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1296,7,7000,'2022-11-03','14:07:32','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1297,1,1,'2022-11-03','14:15:46','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Login'),(1298,1,6000,'2022-11-03','14:18:20','LAIONEL','2800:98:1207:1985:75ec:b6bd:6e78:cd0c','Ingreso Nominas'),(1299,4,3000,'2022-11-03','17:04:20','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1300,7,1,'2022-11-03','17:07:17','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1301,7,7000,'2022-11-03','17:12:14','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1302,7,7002,'2022-11-03','17:13:10','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(1303,7,7002,'2022-11-03','17:13:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(1304,7,1,'2022-11-03','17:17:45','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1305,7,7000,'2022-11-03','17:28:30','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1306,7,999,'2022-11-03','17:29:09','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Cerro Sesion'),(1307,7,1,'2022-11-03','17:32:27','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1308,7,7000,'2022-11-03','17:32:49','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1309,4,3000,'2022-11-03','17:38:03','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1310,7,1,'2022-11-03','17:38:00','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1311,7,7000,'2022-11-03','17:38:21','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1312,7,1,'2022-11-03','17:40:42','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1313,7,7000,'2022-11-03','17:41:04','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1314,4,3000,'2022-11-03','17:41:19','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1315,4,3000,'2022-11-03','17:43:08','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1316,4,3000,'2022-11-03','17:47:58','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1317,4,3000,'2022-11-03','17:56:22','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1318,7,1,'2022-11-03','17:56:59','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1319,7,7000,'2022-11-03','17:57:20','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1320,4,3000,'2022-11-03','18:12:54','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1321,4,3000,'2022-11-03','18:21:17','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1322,7,1,'2022-11-03','19:39:50','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1323,7,7000,'2022-11-03','19:40:12','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1324,7,1,'2022-11-03','19:44:40','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1325,7,7000,'2022-11-03','19:45:00','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1326,7,7003,'2022-11-03','19:46:12','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Guardar'),(1327,7,1,'2022-11-03','20:04:24','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1328,7,7000,'2022-11-03','20:04:48','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1329,7,1,'2022-11-03','20:12:22','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1330,7,7000,'2022-11-03','20:12:43','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1331,7,1,'2022-11-03','20:14:11','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1332,7,7000,'2022-11-03','20:14:31','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1333,7,1,'2022-11-03','20:17:13','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1334,7,7000,'2022-11-03','20:17:33','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1335,4,3000,'2022-11-03','20:17:55','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1336,7,1,'2022-11-03','20:21:31','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1337,7,7000,'2022-11-03','20:21:52','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1338,4,3000,'2022-11-03','20:23:16','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1339,7,1,'2022-11-03','20:24:56','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1340,7,7000,'2022-11-03','20:25:16','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1341,4,3000,'2022-11-03','20:26:18','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1342,4,3000,'2022-11-03','20:32:55','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1343,4,3000,'2022-11-03','20:36:45','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1344,4,3000,'2022-11-03','20:39:29','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1345,4,3000,'2022-11-03','20:52:10','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1346,7,1,'2022-11-03','21:01:06','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1347,7,7000,'2022-11-03','21:01:27','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1348,4,3000,'2022-11-03','21:03:46','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1349,7,1,'2022-11-03','21:03:33','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1350,7,7000,'2022-11-03','21:03:54','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1351,7,1,'2022-11-03','21:05:29','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Login'),(1352,7,7000,'2022-11-03','21:05:50','LAPTOP-91CORHUE','2800:98:1119:2ff:88f:76f3:2201:cc2c','Ingreso Bancos'),(1353,8,8000,'2022-11-03','21:14:40','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1354,7,1,'2022-11-03','21:38:47','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1355,7,7000,'2022-11-03','21:39:14','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1356,7,7003,'2022-11-03','21:40:19','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1357,7,7003,'2022-11-03','21:41:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(1358,6,1,'2022-11-03','21:41:53','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1359,6,6000,'2022-11-03','21:42:23','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1360,8,1,'2022-11-03','21:49:35','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(1361,8,8000,'2022-11-03','21:49:54','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(1362,4,1,'2022-11-03','21:50:24','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1363,4,3000,'2022-11-03','21:50:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1364,4,1,'2022-11-03','21:53:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1365,4,3000,'2022-11-03','21:53:17','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1366,4,1,'2022-11-03','21:54:55','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1367,4,3000,'2022-11-03','21:55:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1368,4,1,'2022-11-03','21:56:17','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1369,4,3000,'2022-11-03','21:56:23','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1370,6,1,'2022-11-03','22:32:52','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1371,6,6000,'2022-11-03','22:33:42','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1372,6,1,'2022-11-03','22:35:33','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1373,6,6000,'2022-11-03','22:36:22','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1374,6,1,'2022-11-03','22:39:22','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1375,6,6000,'2022-11-03','22:39:53','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1376,6,1,'2022-11-03','22:45:17','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1377,6,6000,'2022-11-03','22:46:10','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1378,6,1,'2022-11-03','22:51:53','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1379,6,6000,'2022-11-03','22:52:54','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1380,8,1,'2022-11-03','22:56:02','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(1381,6,1,'2022-11-03','22:56:30','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1382,8,8000,'2022-11-03','22:56:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(1383,6,6000,'2022-11-03','22:58:01','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1384,6,1,'2022-11-03','23:00:22','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1385,6,6000,'2022-11-03','23:00:52','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1386,6,1,'2022-11-03','23:01:52','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Login'),(1387,6,6000,'2022-11-03','23:02:22','DESKTOP-I95002A','2803:d100:9830:686:fc8a:3dea:aaf1:801','Ingreso Nominas'),(1388,6,1,'2022-11-03','23:18:57','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(1389,6,6000,'2022-11-03','23:19:35','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(1390,7,1,'2022-11-04','08:36:02','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1391,7,7000,'2022-11-04','08:37:22','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1392,8,8000,'2022-11-04','09:05:23','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1393,8,8000,'2022-11-04','09:18:20','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1394,8,8000,'2022-11-04','09:22:29','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1395,8,8000,'2022-11-04','09:41:21','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1396,8,8000,'2022-11-04','09:48:44','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1397,8,8000,'2022-11-04','09:53:20','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1398,8,8000,'2022-11-04','12:16:16','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1399,4,3000,'2022-11-04','13:49:00','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1400,7,1,'2022-11-04','14:11:11','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1401,7,7000,'2022-11-04','14:11:32','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1402,4,3000,'2022-11-04','14:16:14','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1403,7,1,'2022-11-04','14:19:35','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1404,7,7000,'2022-11-04','14:19:55','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1405,4,3000,'2022-11-04','14:20:49','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1406,7,1,'2022-11-04','14:22:07','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1407,7,7000,'2022-11-04','14:22:27','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1408,4,3000,'2022-11-04','14:28:09','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1409,4,3000,'2022-11-04','14:36:50','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1410,7,1,'2022-11-04','14:42:48','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1411,4,3000,'2022-11-04','14:43:03','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1412,7,7000,'2022-11-04','14:43:08','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1413,7,7003,'2022-11-04','14:44:58','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Modificar'),(1414,7,7000,'2022-11-04','14:47:10','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1415,7,7003,'2022-11-04','14:48:17','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Guardar'),(1416,7,1,'2022-11-04','14:58:26','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1417,7,7000,'2022-11-04','14:58:47','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1418,4,1,'2022-11-04','15:12:45','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1419,4,3000,'2022-11-04','15:12:54','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1420,4,1,'2022-11-04','15:42:06','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1421,4,3000,'2022-11-04','15:42:19','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1422,4,1,'2022-11-04','15:43:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1423,4,3000,'2022-11-04','15:43:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1424,4,1,'2022-11-04','15:45:48','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1425,4,3000,'2022-11-04','15:45:57','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1426,7,1,'2022-11-04','15:52:17','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1427,7,7000,'2022-11-04','15:52:37','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1428,4,1,'2022-11-04','15:53:18','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1429,4,3000,'2022-11-04','15:53:27','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1430,7,1,'2022-11-04','15:54:44','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1431,7,7000,'2022-11-04','15:55:04','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1432,4,1,'2022-11-04','15:55:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1433,4,3000,'2022-11-04','15:55:57','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1434,4,1,'2022-11-04','15:57:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1435,4,1,'2022-11-04','15:57:38','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1436,4,3000,'2022-11-04','15:57:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1437,4,3000,'2022-11-04','15:57:40','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1438,4,1,'2022-11-04','16:10:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1439,4,3000,'2022-11-04','16:10:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1440,4,1,'2022-11-04','16:12:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1441,4,3000,'2022-11-04','16:12:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1442,4,1,'2022-11-04','16:20:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1443,4,3000,'2022-11-04','16:20:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1444,4,1,'2022-11-04','16:21:58','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1445,4,3000,'2022-11-04','16:22:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1446,7,1,'2022-11-04','16:25:26','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1447,4,1,'2022-11-04','16:25:46','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1448,4,3000,'2022-11-04','16:25:51','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1449,7,7000,'2022-11-04','16:25:48','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1450,4,1,'2022-11-04','16:28:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1451,4,3000,'2022-11-04','16:28:25','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1452,7,1,'2022-11-04','16:30:54','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1453,7,7000,'2022-11-04','16:31:15','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1454,7,1,'2022-11-04','16:36:22','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1455,7,7000,'2022-11-04','16:36:42','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1456,7,1,'2022-11-04','16:39:32','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1457,7,7000,'2022-11-04','16:39:53','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1458,4,1,'2022-11-04','16:42:52','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1459,4,3000,'2022-11-04','16:42:55','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1460,7,1,'2022-11-04','16:44:52','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1461,7,7000,'2022-11-04','16:45:13','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1462,4,1,'2022-11-04','16:45:34','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1463,4,3000,'2022-11-04','16:45:37','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1464,7,1,'2022-11-04','16:48:13','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1465,7,7000,'2022-11-04','16:48:35','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1466,7,1,'2022-11-04','16:52:28','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1467,7,7000,'2022-11-04','16:52:49','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1468,4,1,'2022-11-04','17:08:58','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1469,4,3000,'2022-11-04','17:09:09','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1470,4,999,'2022-11-04','17:09:42','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Cerro Sesion'),(1471,4,3000,'2022-11-04','18:33:44','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1472,4,3000,'2022-11-04','18:36:14','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1473,4,3000,'2022-11-04','18:42:05','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1474,4,3000,'2022-11-04','21:16:59','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1475,4,3000,'2022-11-04','21:21:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1476,4,3000,'2022-11-04','21:25:11','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1477,8,8000,'2022-11-04','22:18:07','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1478,6,1,'2022-11-04','22:53:00','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1479,6,6000,'2022-11-04','22:53:41','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1480,8,8000,'2022-11-04','22:55:40','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1481,6,1,'2022-11-04','23:14:19','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1482,6,6000,'2022-11-04','23:14:49','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1483,6,1,'2022-11-04','23:17:39','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1484,6,6000,'2022-11-04','23:18:09','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1485,6,1,'2022-11-04','23:22:03','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1486,6,6000,'2022-11-04','23:23:34','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1487,8,1,'2022-11-04','23:28:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1488,8,8000,'2022-11-04','23:28:56','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1489,8,999,'2022-11-04','23:31:10','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1490,6,1,'2022-11-04','23:31:31','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1491,6,6000,'2022-11-04','23:32:03','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1492,6,1,'2022-11-04','23:34:55','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1493,6,6000,'2022-11-04','23:35:27','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1494,8,1,'2022-11-04','23:35:57','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1495,8,8000,'2022-11-04','23:36:20','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1496,8,999,'2022-11-04','23:36:44','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1497,6,1,'2022-11-04','23:37:50','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1498,6,6000,'2022-11-04','23:38:21','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1499,4,1,'2022-11-04','23:53:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1500,4,3000,'2022-11-04','23:54:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1501,6,1,'2022-11-05','00:02:27','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Login'),(1502,6,6000,'2022-11-05','00:02:56','DESKTOP-I95002A','2803:d100:9830:3b4:fcd8:7ffd:8836:890b','Ingreso Nominas'),(1503,1,1,'2022-11-05','00:08:56','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1504,1,3000,'2022-11-05','00:09:01','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1505,1,1000,'2022-11-05','00:09:15','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(1506,1,1101,'2022-11-05','00:10:34','DESKTOP-8O756PG','192.168.1.3','Asigno Modulo-Aplicacion'),(1507,4,1,'2022-11-05','00:11:58','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1508,4,3000,'2022-11-05','00:12:03','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1509,4,1,'2022-11-05','00:15:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1510,4,3000,'2022-11-05','00:15:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1511,4,1,'2022-11-05','00:16:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1512,4,3000,'2022-11-05','00:16:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1513,4,1,'2022-11-05','00:18:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1514,4,3000,'2022-11-05','00:18:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1515,7,1,'2022-11-05','01:01:30','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Login'),(1516,7,999,'2022-11-05','01:01:41','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Cerro Sesion'),(1517,6,1,'2022-11-05','01:03:21','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Login'),(1518,6,6000,'2022-11-05','01:03:54','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Nominas'),(1519,4,1,'2022-11-05','07:25:47','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1520,4,3000,'2022-11-05','07:25:55','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1521,4,1,'2022-11-05','08:22:35','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(1522,4,3000,'2022-11-05','08:22:38','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(1523,7,1,'2022-11-05','08:59:52','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1524,7,7000,'2022-11-05','09:00:19','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1525,7,1,'2022-11-05','10:13:00','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1526,7,7000,'2022-11-05','10:13:21','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1527,7,1,'2022-11-05','10:18:11','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1528,7,7000,'2022-11-05','10:18:31','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1529,7,1,'2022-11-05','10:21:05','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1530,7,7000,'2022-11-05','10:21:25','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1531,7,1,'2022-11-05','10:46:14','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1532,7,7000,'2022-11-05','10:46:35','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1533,7,1,'2022-11-05','10:49:18','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1534,7,7000,'2022-11-05','10:49:38','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1535,7,1,'2022-11-05','11:25:06','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1536,7,7000,'2022-11-05','11:26:22','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1537,1,6104,'2022-11-05','12:18:13','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','BUSCAR ASGN PERCEP-CONTRATO'),(1538,1,6104,'2022-11-05','12:18:38','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','REPORTE ASN PERCEP-CONTRATO'),(1539,1,6104,'2022-11-05','12:19:27','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','REPORTE ASN PERCEP-CONTRATO'),(1540,1,6104,'2022-11-05','12:20:12','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','BUSCAR ASGN PERCEP-CONTRATO'),(1541,1,1,'2022-11-05','12:38:16','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','Ingreso Login'),(1542,1,6000,'2022-11-05','12:48:59','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','Ingreso Nominas'),(1543,1,6104,'2022-11-05','12:54:07','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','BUSCAR ASGN PERCEP-CONTRATO'),(1544,1,6104,'2022-11-05','12:54:29','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','BUSCAR ASGN PERCEP-CONTRATO'),(1545,1,6104,'2022-11-05','12:54:55','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','DES-ASIGN 1:1 PERCEP-CONTRATO'),(1546,1,6104,'2022-11-05','12:58:12','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','ASGN N:1 PERCEP-CONTRATO'),(1547,1,6104,'2022-11-05','12:58:21','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','ASGN N:1 PERCEP-CONTRATO'),(1548,1,6104,'2022-11-05','12:58:25','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','ASGN N:1 PERCEP-CONTRATO'),(1549,7,1,'2022-11-05','13:17:09','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1550,7,7000,'2022-11-05','13:17:36','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1551,7,1,'2022-11-05','13:18:57','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1552,7,7000,'2022-11-05','13:19:19','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1553,1,6104,'2022-11-05','13:21:48','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','BUSCAR ASGN PERCEP-CONTRATO'),(1554,4,1,'2022-11-05','13:22:20','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1555,4,3000,'2022-11-05','13:22:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1556,4,999,'2022-11-05','13:23:07','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(1557,1,1,'2022-11-05','13:23:26','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1558,1,1000,'2022-11-05','13:23:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(1559,1,1102,'2022-11-05','13:24:21','DESKTOP-8O756PG','192.168.1.3','Asigno Aplicacion-Perfil'),(1560,1,3000,'2022-11-05','13:24:26','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1561,1,6104,'2022-11-05','13:24:26','LAIONEL','2800:98:1207:1985:4ec4:6280:597e:edc0','REPORTE ASN PERCEP-CONTRATO'),(1562,7,1,'2022-11-05','13:42:19','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1563,7,7000,'2022-11-05','13:42:39','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1564,7,1,'2022-11-05','13:45:07','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1565,7,7000,'2022-11-05','13:45:30','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1566,4,1,'2022-11-05','13:45:48','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1567,4,3000,'2022-11-05','13:46:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1568,4,3106,'2022-11-05','13:46:49','DESKTOP-8O756PG','192.168.1.3','Guardar'),(1569,4,3106,'2022-11-05','13:49:06','DESKTOP-8O756PG','192.168.1.3','Consulta'),(1570,4,1,'2022-11-05','13:58:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1571,4,3000,'2022-11-05','13:58:13','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1572,4,1,'2022-11-05','14:04:33','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(1573,4,999,'2022-11-05','14:05:35','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Cerro Sesion'),(1574,4,1,'2022-11-05','14:05:52','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(1575,4,3000,'2022-11-05','14:52:09','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1576,4,3000,'2022-11-05','14:53:53','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1577,4,3000,'2022-11-05','15:04:31','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(1578,7,1,'2022-11-05','15:14:39','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1579,7,7000,'2022-11-05','15:15:42','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1580,7,1,'2022-11-05','15:23:17','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1581,7,7000,'2022-11-05','15:24:16','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1582,7,1,'2022-11-05','15:42:03','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1583,7,7000,'2022-11-05','15:42:24','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1584,7,1,'2022-11-05','15:43:14','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1585,7,7000,'2022-11-05','15:43:35','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1586,7,1,'2022-11-05','15:45:01','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1587,7,7000,'2022-11-05','15:45:24','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1588,7,1,'2022-11-05','16:19:29','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1589,7,7000,'2022-11-05','16:19:50','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1590,7,1,'2022-11-05','16:29:02','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1591,7,7000,'2022-11-05','16:29:23','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1592,7,1,'2022-11-05','17:08:32','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1593,7,7000,'2022-11-05','17:09:30','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1594,7,1,'2022-11-05','17:16:01','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1595,7,7000,'2022-11-05','17:16:32','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1596,8,1,'2022-11-05','17:19:15','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1597,8,8000,'2022-11-05','17:20:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1598,8,8002,'2022-11-05','17:22:07','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1599,8,8000,'2022-11-05','17:22:31','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(1600,8,8004,'2022-11-05','17:22:35','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1601,8,8004,'2022-11-05','17:23:11','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Guardar'),(1602,8,999,'2022-11-05','17:24:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1603,4,3000,'2022-11-05','18:30:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1604,8,1,'2022-11-05','18:54:46','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Login'),(1605,8,8000,'2022-11-05','18:55:06','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(1606,8,1,'2022-11-05','19:05:10','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Login'),(1607,8,8000,'2022-11-05','19:05:31','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(1608,8,1,'2022-11-05','19:08:45','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Login'),(1609,8,8000,'2022-11-05','19:09:25','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(1610,8,1,'2022-11-05','19:13:52','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Login'),(1611,8,8000,'2022-11-05','19:14:13','JONATHANXUYA','fe80::b12c:eaeb:4686:cfc8%2','Ingreso Contabilidad'),(1612,4,3000,'2022-11-05','19:43:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1613,4,3000,'2022-11-05','19:45:29','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1614,8,1,'2022-11-05','20:01:33','JOSELYNE','192.168.1.136','Ingreso Login'),(1615,8,1,'2022-11-05','20:09:21','JOSELYNE','192.168.1.136','Ingreso Login'),(1616,8,1,'2022-11-05','20:14:00','JOSELYNE','192.168.1.136','Ingreso Login'),(1617,4,1,'2022-11-05','20:14:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1618,4,3000,'2022-11-05','20:14:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1619,4,1,'2022-11-05','20:16:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1620,4,3000,'2022-11-05','20:16:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1621,8,1,'2022-11-05','20:38:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1622,8,8000,'2022-11-05','20:39:10','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1623,4,3000,'2022-11-05','20:39:21','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1624,4,3000,'2022-11-05','20:40:06','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1625,8,8002,'2022-11-05','20:40:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Guardar'),(1626,8,8002,'2022-11-05','20:41:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1627,8,8004,'2022-11-05','20:41:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Consulta'),(1628,4,3000,'2022-11-05','20:43:52','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1629,8,1,'2022-11-05','21:08:34','JOSELYNE','192.168.1.136','Ingreso Login'),(1630,8,8000,'2022-11-05','21:09:41','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1631,8,1,'2022-11-05','21:19:02','JOSELYNE','192.168.1.136','Ingreso Login'),(1632,8,8000,'2022-11-05','21:19:23','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1633,8,1,'2022-11-05','21:25:38','JOSELYNE','192.168.1.136','Ingreso Login'),(1634,4,1,'2022-11-05','21:26:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1635,4,3000,'2022-11-05','21:26:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1636,8,8000,'2022-11-05','21:26:56','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1637,8,999,'2022-11-05','21:28:35','JOSELYNE','192.168.1.136','Cerro Sesion'),(1638,4,1,'2022-11-05','21:31:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1639,4,3000,'2022-11-05','21:31:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1640,4,1,'2022-11-05','21:34:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1641,4,3000,'2022-11-05','21:34:24','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1642,4,1,'2022-11-05','21:37:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1643,4,3000,'2022-11-05','21:37:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1644,4,1,'2022-11-05','21:43:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1645,4,3000,'2022-11-05','21:43:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1646,4,1,'2022-11-05','21:44:32','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1647,4,3000,'2022-11-05','21:44:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1648,4,1,'2022-11-05','21:46:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1649,4,3000,'2022-11-05','21:46:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1650,4,1,'2022-11-05','21:48:00','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1651,4,3000,'2022-11-05','21:48:06','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1652,4,1,'2022-11-05','21:50:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1653,4,3000,'2022-11-05','21:50:07','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1654,4,1,'2022-11-05','21:59:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1655,4,3000,'2022-11-05','21:59:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1656,4,1,'2022-11-05','22:01:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1657,4,3000,'2022-11-05','22:01:21','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1658,4,1,'2022-11-05','22:02:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1659,4,3000,'2022-11-05','22:02:48','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1660,8,1,'2022-11-05','22:07:02','JOSELYNE','192.168.1.136','Ingreso Login'),(1661,8,8000,'2022-11-05','22:07:26','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1662,8,1,'2022-11-05','22:18:54','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1663,8,8000,'2022-11-05','22:19:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1664,8,1,'2022-11-05','22:28:05','JOSELYNE','192.168.1.136','Ingreso Login'),(1665,8,8000,'2022-11-05','22:28:26','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1666,8,1,'2022-11-05','22:29:16','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1667,8,8000,'2022-11-05','22:29:42','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1668,8,999,'2022-11-05','22:33:19','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1669,8,1,'2022-11-05','22:40:38','JOSELYNE','192.168.1.136','Ingreso Login'),(1670,8,8000,'2022-11-05','22:41:11','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1671,8,1,'2022-11-05','22:43:54','JOSELYNE','192.168.1.136','Ingreso Login'),(1672,8,8000,'2022-11-05','22:44:15','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1673,4,1,'2022-11-05','22:45:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1674,4,3000,'2022-11-05','22:45:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1675,4,1,'2022-11-05','22:48:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1676,4,3000,'2022-11-05','22:48:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1677,8,1,'2022-11-05','22:49:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1678,8,8000,'2022-11-05','22:50:10','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1679,8,999,'2022-11-05','22:50:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1680,4,1,'2022-11-05','22:51:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1681,4,3000,'2022-11-05','22:52:00','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1682,8,1,'2022-11-05','22:52:41','JOSELYNE','192.168.1.136','Ingreso Login'),(1683,8,8000,'2022-11-05','22:53:05','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1684,8,1,'2022-11-05','22:53:31','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1685,8,8000,'2022-11-05','22:56:04','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1686,8,999,'2022-11-05','22:56:54','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1687,8,1,'2022-11-05','22:58:07','JOSELYNE','192.168.1.136','Ingreso Login'),(1688,8,8000,'2022-11-05','22:58:27','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1689,8,1,'2022-11-05','23:01:20','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1690,8,1,'2022-11-05','23:02:31','JOSELYNE','192.168.1.136','Ingreso Login'),(1691,8,8000,'2022-11-05','23:02:51','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1692,8,8000,'2022-11-05','23:03:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1693,8,999,'2022-11-05','23:06:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1694,8,1,'2022-11-05','23:12:36','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1695,8,1,'2022-11-05','23:12:59','JOSELYNE','192.168.1.136','Ingreso Login'),(1696,8,8000,'2022-11-05','23:13:08','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1697,8,8000,'2022-11-05','23:13:21','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1698,8,999,'2022-11-05','23:14:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1699,8,1,'2022-11-05','23:18:22','JOSELYNE','192.168.1.136','Ingreso Login'),(1700,8,8000,'2022-11-05','23:18:41','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1701,8,1,'2022-11-05','23:18:51','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1702,8,8000,'2022-11-05','23:21:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1703,8,999,'2022-11-05','23:23:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1704,8,1,'2022-11-05','23:24:25','JOSELYNE','192.168.1.136','Ingreso Login'),(1705,8,8000,'2022-11-05','23:24:45','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1706,8,1,'2022-11-05','23:25:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1707,8,8000,'2022-11-05','23:26:56','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1708,8,8000,'2022-11-05','23:28:06','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1709,8,999,'2022-11-05','23:28:17','JOSELYNE','192.168.1.136','Cerro Sesion'),(1710,8,1,'2022-11-05','23:30:00','JOSELYNE','192.168.1.136','Ingreso Login'),(1711,8,8000,'2022-11-05','23:30:20','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1712,8,999,'2022-11-05','23:30:28','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1713,8,1,'2022-11-05','23:31:38','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1714,8,8000,'2022-11-05','23:31:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1715,8,999,'2022-11-05','23:32:24','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1716,8,1,'2022-11-05','23:32:37','JOSELYNE','192.168.1.136','Ingreso Login'),(1717,8,8000,'2022-11-05','23:32:58','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1718,8,999,'2022-11-05','23:35:31','JOSELYNE','192.168.1.136','Cerro Sesion'),(1719,4,1,'2022-11-05','23:35:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1720,4,3000,'2022-11-05','23:35:59','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1721,4,1,'2022-11-05','23:37:23','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1722,4,3000,'2022-11-05','23:37:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1723,8,1,'2022-11-05','23:38:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1724,8,1,'2022-11-05','23:39:27','JOSELYNE','192.168.1.136','Ingreso Login'),(1725,8,8000,'2022-11-05','23:39:48','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1726,8,8000,'2022-11-05','23:40:05','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1727,4,1,'2022-11-05','23:40:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1728,4,3000,'2022-11-05','23:40:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1729,8,999,'2022-11-05','23:40:56','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1730,8,999,'2022-11-05','23:41:55','JOSELYNE','192.168.1.136','Cerro Sesion'),(1731,8,1,'2022-11-05','23:44:54','JOSELYNE','192.168.1.136','Ingreso Login'),(1732,4,1,'2022-11-05','23:45:07','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1733,4,3000,'2022-11-05','23:45:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1734,8,8000,'2022-11-05','23:45:57','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1735,8,1,'2022-11-05','23:46:46','JOSELYNE','192.168.1.136','Ingreso Login'),(1736,8,8000,'2022-11-05','23:47:07','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1737,8,1,'2022-11-05','23:51:41','JOSELYNE','192.168.1.136','Ingreso Login'),(1738,8,8000,'2022-11-05','23:52:02','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1739,8,1,'2022-11-05','23:59:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1740,8,8000,'2022-11-05','23:59:47','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1741,8,999,'2022-11-06','00:00:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1742,8,1,'2022-11-06','00:03:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1743,8,8000,'2022-11-06','00:04:18','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1744,8,999,'2022-11-06','00:05:44','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1745,8,1,'2022-11-06','00:07:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1746,8,8000,'2022-11-06','00:08:03','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1747,8,999,'2022-11-06','00:10:01','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1748,8,1,'2022-11-06','00:12:23','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1749,8,8000,'2022-11-06','00:12:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1750,8,999,'2022-11-06','00:13:41','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1751,8,1,'2022-11-06','00:16:01','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1752,8,8000,'2022-11-06','00:16:21','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1753,8,999,'2022-11-06','00:16:44','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1754,8,1,'2022-11-06','00:19:40','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1755,8,8000,'2022-11-06','00:20:16','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1756,8,999,'2022-11-06','00:20:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1757,8,1,'2022-11-06','00:22:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1758,8,8000,'2022-11-06','00:23:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1759,8,999,'2022-11-06','00:23:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1760,8,1,'2022-11-06','00:29:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1761,8,8000,'2022-11-06','00:29:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1762,8,1,'2022-11-06','00:37:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1763,8,8000,'2022-11-06','00:38:30','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1764,8,999,'2022-11-06','00:38:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1765,8,1,'2022-11-06','00:41:35','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1766,8,8000,'2022-11-06','00:42:06','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1767,8,1,'2022-11-06','00:44:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1768,8,8000,'2022-11-06','00:45:08','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1769,8,999,'2022-11-06','00:45:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1770,8,1,'2022-11-06','00:54:05','JOSELYNE','192.168.1.136','Ingreso Login'),(1771,8,8000,'2022-11-06','00:54:25','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1772,8,1,'2022-11-06','01:05:22','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1773,8,8000,'2022-11-06','01:05:51','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1774,8,1,'2022-11-06','01:16:51','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1775,8,8000,'2022-11-06','01:17:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1776,8,1,'2022-11-06','01:18:48','JOSELYNE','192.168.1.136','Ingreso Login'),(1777,8,8000,'2022-11-06','01:19:09','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1778,8,1,'2022-11-06','01:21:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1779,8,8000,'2022-11-06','01:21:41','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1780,8,1,'2022-11-06','01:22:26','JOSELYNE','192.168.1.136','Ingreso Login'),(1781,8,999,'2022-11-06','01:22:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1782,8,8000,'2022-11-06','01:22:48','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1783,8,1,'2022-11-06','01:24:14','JOSELYNE','192.168.1.136','Ingreso Login'),(1784,8,8000,'2022-11-06','01:24:35','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1785,8,1,'2022-11-06','01:26:15','JOSELYNE','192.168.1.136','Ingreso Login'),(1786,8,8000,'2022-11-06','01:26:36','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1787,8,1,'2022-11-06','01:28:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1788,8,8000,'2022-11-06','01:29:09','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1789,8,1,'2022-11-06','01:29:33','JOSELYNE','192.168.1.136','Ingreso Login'),(1790,8,8000,'2022-11-06','01:29:53','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(1791,8,999,'2022-11-06','01:30:35','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1792,8,1,'2022-11-06','01:36:40','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1793,8,8000,'2022-11-06','01:37:01','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1794,8,999,'2022-11-06','01:37:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1795,8,1,'2022-11-06','01:39:06','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1796,8,8000,'2022-11-06','01:39:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1797,8,999,'2022-11-06','01:41:21','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1798,8,1,'2022-11-06','01:42:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1799,8,8000,'2022-11-06','01:43:06','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1800,8,999,'2022-11-06','01:44:00','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1801,8,1,'2022-11-06','01:45:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1802,8,8000,'2022-11-06','01:46:22','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1803,8,999,'2022-11-06','01:49:22','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1804,8,1,'2022-11-06','01:51:09','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1805,8,8000,'2022-11-06','01:51:33','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1806,8,999,'2022-11-06','01:52:14','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1807,8,1,'2022-11-06','02:08:11','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1808,8,8000,'2022-11-06','02:08:34','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1809,8,999,'2022-11-06','02:09:30','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1810,8,1,'2022-11-06','02:33:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1811,8,8000,'2022-11-06','02:34:13','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1812,8,1,'2022-11-06','02:43:15','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1813,8,8000,'2022-11-06','02:43:38','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1814,8,999,'2022-11-06','02:49:19','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1815,8,1,'2022-11-06','02:56:28','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1816,8,8000,'2022-11-06','02:56:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1817,8,999,'2022-11-06','02:57:42','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1818,4,3000,'2022-11-06','08:53:13','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1819,4,3000,'2022-11-06','08:55:20','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1820,4,3000,'2022-11-06','08:59:15','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1821,4,3000,'2022-11-06','09:04:49','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1822,4,3000,'2022-11-06','09:12:41','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1823,4,3000,'2022-11-06','09:22:01','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1824,4,3000,'2022-11-06','09:30:48','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1825,4,3000,'2022-11-06','09:47:18','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1826,4,3000,'2022-11-06','09:53:11','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1827,4,3000,'2022-11-06','09:55:27','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1828,4,3000,'2022-11-06','09:56:05','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1829,4,3000,'2022-11-06','10:04:44','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1830,4,3000,'2022-11-06','10:20:14','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1831,4,3000,'2022-11-06','10:20:42','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1832,4,3000,'2022-11-06','10:24:08','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1833,4,3000,'2022-11-06','10:32:52','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1834,4,3000,'2022-11-06','11:11:55','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1835,7,1,'2022-11-06','11:21:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1836,7,7000,'2022-11-06','11:27:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1837,4,3000,'2022-11-06','11:32:23','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1838,8,1,'2022-11-06','11:36:11','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1839,8,8000,'2022-11-06','11:37:06','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1840,4,3000,'2022-11-06','11:38:28','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1841,8,999,'2022-11-06','11:41:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1842,4,3000,'2022-11-06','11:42:16','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1843,4,3000,'2022-11-06','11:47:26','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1844,4,3000,'2022-11-06','11:50:40','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1845,4,3000,'2022-11-06','11:53:37','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1846,4,3000,'2022-11-06','11:59:04','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1847,4,3000,'2022-11-06','12:02:29','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1848,4,3000,'2022-11-06','12:08:08','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1849,4,3000,'2022-11-06','12:10:24','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1850,8,1,'2022-11-06','12:28:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1851,8,8000,'2022-11-06','12:29:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1852,8,999,'2022-11-06','12:30:51','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1853,8,1,'2022-11-06','12:33:11','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1854,8,8000,'2022-11-06','12:33:44','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1855,8,999,'2022-11-06','12:35:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1856,8,1,'2022-11-06','12:38:19','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1857,8,8000,'2022-11-06','12:38:38','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1858,8,999,'2022-11-06','12:39:17','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1859,8,1,'2022-11-06','12:40:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1860,8,8000,'2022-11-06','12:40:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1861,8,1,'2022-11-06','12:45:46','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1862,8,8000,'2022-11-06','12:46:08','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1863,8,999,'2022-11-06','12:46:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1864,8,1,'2022-11-06','12:49:59','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1865,8,8000,'2022-11-06','12:50:24','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1866,4,3000,'2022-11-06','12:50:25','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1867,8,1,'2022-11-06','12:52:37','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1868,8,8000,'2022-11-06','12:52:57','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1869,8,999,'2022-11-06','12:53:30','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1870,8,1,'2022-11-06','12:55:34','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1871,8,8000,'2022-11-06','12:56:01','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1872,8,999,'2022-11-06','12:56:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1873,8,1,'2022-11-06','12:58:13','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1874,8,8000,'2022-11-06','12:58:48','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1875,4,3000,'2022-11-06','13:01:16','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1876,8,999,'2022-11-06','13:01:27','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1877,8,1,'2022-11-06','13:05:25','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1878,8,8000,'2022-11-06','13:05:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1879,8,999,'2022-11-06','13:06:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1880,8,1,'2022-11-06','13:07:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1881,8,8000,'2022-11-06','13:08:03','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1882,8,999,'2022-11-06','13:08:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1883,8,1,'2022-11-06','13:21:21','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1884,8,8000,'2022-11-06','13:21:42','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1885,8,999,'2022-11-06','13:23:03','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1886,8,1,'2022-11-06','13:24:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1887,8,8000,'2022-11-06','13:25:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1888,8,999,'2022-11-06','13:26:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1889,8,1,'2022-11-06','13:27:54','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1890,8,8000,'2022-11-06','13:28:23','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1891,8,999,'2022-11-06','13:29:00','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1892,7,1,'2022-11-06','13:34:12','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1893,7,7000,'2022-11-06','13:34:35','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1894,4,3000,'2022-11-06','13:41:35','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1895,7,1,'2022-11-06','13:42:27','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1896,7,7000,'2022-11-06','13:43:13','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1897,7,1,'2022-11-06','13:48:00','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1898,7,7000,'2022-11-06','13:48:29','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1899,7,1,'2022-11-06','13:52:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1900,7,7000,'2022-11-06','13:53:02','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1901,8,1,'2022-11-06','13:55:53','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1902,8,8000,'2022-11-06','13:56:16','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1903,8,999,'2022-11-06','13:58:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1904,4,3000,'2022-11-06','14:06:33','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1905,4,3000,'2022-11-06','14:07:03','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1906,4,3000,'2022-11-06','14:09:17','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1907,8,1,'2022-11-06','14:10:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1908,8,8000,'2022-11-06','14:11:05','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1909,8,999,'2022-11-06','14:11:28','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1910,4,3000,'2022-11-06','14:13:58','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1911,4,3000,'2022-11-06','14:17:09','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1912,8,1,'2022-11-06','14:20:34','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1913,8,8000,'2022-11-06','14:20:58','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1914,4,3000,'2022-11-06','14:22:06','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1915,8,1,'2022-11-06','14:23:43','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1916,8,8000,'2022-11-06','14:24:04','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1917,8,999,'2022-11-06','14:25:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1918,4,3000,'2022-11-06','14:25:26','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1919,4,3000,'2022-11-06','14:26:47','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1920,4,1,'2022-11-06','14:26:57','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1921,4,3000,'2022-11-06','14:27:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1922,4,3000,'2022-11-06','14:28:47','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1923,8,1,'2022-11-06','14:57:12','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1924,8,8000,'2022-11-06','14:57:40','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1925,8,999,'2022-11-06','14:58:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1926,8,1,'2022-11-06','14:59:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1927,8,8000,'2022-11-06','15:00:20','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1928,8,999,'2022-11-06','15:01:02','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1929,4,3000,'2022-11-06','15:02:41','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(1930,8,1,'2022-11-06','15:03:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1931,8,8000,'2022-11-06','15:04:26','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1932,8,999,'2022-11-06','15:05:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1933,7,1,'2022-11-06','15:11:32','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1934,7,7000,'2022-11-06','15:11:55','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1935,8,1,'2022-11-06','15:14:20','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1936,8,8000,'2022-11-06','15:14:49','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1937,7,1,'2022-11-06','15:15:45','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(1938,7,7000,'2022-11-06','15:16:53','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(1939,8,1,'2022-11-06','15:20:06','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1940,8,8000,'2022-11-06','15:21:04','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1941,8,999,'2022-11-06','15:23:08','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1942,7,7004,'2022-11-06','15:23:31','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(1943,4,1,'2022-11-06','15:27:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1944,4,3000,'2022-11-06','15:27:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1945,4,1,'2022-11-06','15:29:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1946,4,3000,'2022-11-06','15:29:50','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1947,8,1,'2022-11-06','15:39:30','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1948,8,8000,'2022-11-06','15:39:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1949,8,999,'2022-11-06','15:45:55','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1950,4,1,'2022-11-06','15:46:09','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1951,4,3000,'2022-11-06','15:46:14','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1952,6,1,'2022-11-06','15:49:59','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1953,6,6000,'2022-11-06','15:50:45','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1954,8,1,'2022-11-06','15:51:28','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1955,8,8000,'2022-11-06','15:52:01','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1956,8,1,'2022-11-06','15:55:50','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1957,8,8000,'2022-11-06','15:56:15','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1958,4,1,'2022-11-06','15:56:49','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1959,4,3000,'2022-11-06','15:56:55','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1960,8,1,'2022-11-06','15:59:52','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1961,8,8000,'2022-11-06','16:00:24','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1962,8,1,'2022-11-06','16:02:53','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1963,8,8000,'2022-11-06','16:03:24','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1964,6,1,'2022-11-06','16:03:39','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1965,6,6000,'2022-11-06','16:05:32','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1966,7,1,'2022-11-06','16:05:33','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Login'),(1967,7,7000,'2022-11-06','16:05:56','LAPTOP-91CORHUE','2800:98:1119:2ff:2917:8c69:a27e:7f5e','Ingreso Bancos'),(1968,8,1,'2022-11-06','16:07:15','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1969,8,8000,'2022-11-06','16:07:45','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1970,8,1,'2022-11-06','16:11:05','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1971,8,8000,'2022-11-06','16:11:41','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1972,8,1,'2022-11-06','16:13:07','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1973,8,8000,'2022-11-06','16:13:29','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1974,6,1,'2022-11-06','16:30:25','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1975,6,6000,'2022-11-06','16:31:03','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1976,1,1,'2022-11-06','16:32:33','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1977,1,1000,'2022-11-06','16:33:04','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Seguridad'),(1978,6,6001,'2022-11-06','16:33:25','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Guardar'),(1979,6,1,'2022-11-06','16:36:44','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1980,6,6000,'2022-11-06','16:37:25','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1981,6,1,'2022-11-06','16:38:41','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(1982,1,1102,'2022-11-06','16:38:42','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Asigno Aplicacion-Perfil'),(1983,1,999,'2022-11-06','16:39:08','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Cerro Sesion'),(1984,6,6000,'2022-11-06','16:39:18','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(1985,8,1,'2022-11-06','16:40:15','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Login'),(1986,8,8000,'2022-11-06','16:40:40','JOSELYNE','2800:98:1121:794:3c75:b8a8:25eb:d816','Ingreso Contabilidad'),(1987,4,1,'2022-11-06','16:52:15','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1988,4,3000,'2022-11-06','16:52:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1989,4,1,'2022-11-06','16:55:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1990,4,3000,'2022-11-06','16:55:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1991,4,1,'2022-11-06','16:59:35','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1992,4,3000,'2022-11-06','17:00:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1993,4,1,'2022-11-06','17:03:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(1994,4,3000,'2022-11-06','17:04:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(1995,8,1,'2022-11-06','17:06:50','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(1996,8,8000,'2022-11-06','17:07:13','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(1997,4,999,'2022-11-06','17:08:35','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(1998,8,999,'2022-11-06','17:09:34','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(1999,4,1,'2022-11-06','17:14:50','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2000,4,1,'2022-11-06','17:20:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2001,4,3000,'2022-11-06','17:20:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2002,4,1,'2022-11-06','17:23:36','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2003,4,3000,'2022-11-06','17:23:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2004,4,1,'2022-11-06','17:29:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2005,4,3000,'2022-11-06','17:29:37','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2006,8,1,'2022-11-06','17:29:52','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(2007,8,8000,'2022-11-06','17:30:39','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(2008,8,999,'2022-11-06','17:31:54','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(2009,8,1,'2022-11-06','17:32:45','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(2010,8,8000,'2022-11-06','17:33:16','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(2011,8,999,'2022-11-06','17:39:05','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Cerro Sesion'),(2012,4,1,'2022-11-06','17:41:21','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2013,4,3000,'2022-11-06','17:41:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2014,4,1,'2022-11-06','17:45:55','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2015,4,3000,'2022-11-06','17:46:01','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2016,4,1,'2022-11-06','17:49:06','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2017,4,3000,'2022-11-06','17:49:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2018,4,1,'2022-11-06','17:51:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2019,4,3000,'2022-11-06','17:51:38','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2020,8,1,'2022-11-06','17:55:55','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2021,8,8000,'2022-11-06','17:57:14','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2022,8,8000,'2022-11-06','17:58:36','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2023,4,1,'2022-11-06','18:05:59','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2024,4,3000,'2022-11-06','18:06:05','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2025,8,1,'2022-11-06','18:14:15','JOSELYNE','192.168.1.136','Ingreso Login'),(2026,8,8000,'2022-11-06','18:15:07','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2027,8,1,'2022-11-06','18:20:30','JOSELYNE','192.168.1.136','Ingreso Login'),(2028,8,8000,'2022-11-06','18:22:26','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2029,8,1,'2022-11-06','18:29:27','JOSELYNE','192.168.1.136','Ingreso Login'),(2030,8,8000,'2022-11-06','18:30:41','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2031,8,1,'2022-11-06','18:37:47','JOSELYNE','192.168.1.136','Ingreso Login'),(2032,8,8000,'2022-11-06','18:38:36','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2033,1,6104,'2022-11-06','19:06:53','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','BUSCAR ASGN PERCEP-CONTRATO'),(2034,1,6104,'2022-11-06','19:07:16','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','BUSCAR ASGN PERCEP-CONTRATO'),(2035,1,6104,'2022-11-06','19:07:30','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','DES-ASIGN 1:1 PERCEP-CONTRATO'),(2036,1,6104,'2022-11-06','19:07:47','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','ASGN 1:1 PERCEP-CONTRATO'),(2037,1,6104,'2022-11-06','19:08:00','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','ASGN N:1 PERCEP-CONTRATO'),(2038,1,6104,'2022-11-06','19:08:09','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','ASGN N:1 PERCEP-CONTRATO'),(2039,1,6104,'2022-11-06','19:08:22','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','REPORTE ASN PERCEP-CONTRATO'),(2040,1,6104,'2022-11-06','19:09:38','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','BUSCAR ASGN PERCEP-CONTRATO'),(2041,1,6104,'2022-11-06','19:09:52','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','DES-ASGN N:1 PERCEP-CONTRATO'),(2042,1,6104,'2022-11-06','19:10:02','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','DES-ASIGN 1:1 PERCEP-CONTRATO'),(2043,1,6104,'2022-11-06','19:10:04','LAIONEL','2800:98:1207:1985:1984:a48b:6421:9263','DES-ASIGN 1:1 PERCEP-CONTRATO'),(2044,6,1,'2022-11-06','19:34:26','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2045,6,6000,'2022-11-06','19:35:39','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2046,6,6000,'2022-11-06','19:40:48','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2047,6,1,'2022-11-06','19:44:26','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2048,6,6000,'2022-11-06','19:45:00','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2049,6,1,'2022-11-06','19:46:45','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2050,6,6000,'2022-11-06','19:47:20','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2051,6,1,'2022-11-06','19:48:28','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2052,6,6000,'2022-11-06','19:49:07','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2053,6,1,'2022-11-06','20:01:55','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2054,6,6000,'2022-11-06','20:02:36','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2055,7,1,'2022-11-06','20:05:35','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2056,7,7000,'2022-11-06','20:07:32','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2057,6,1,'2022-11-06','20:07:52','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2058,6,6000,'2022-11-06','20:08:23','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2059,6,1,'2022-11-06','20:13:08','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2060,7,1,'2022-11-06','20:13:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2061,6,6000,'2022-11-06','20:13:40','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2062,7,7000,'2022-11-06','20:13:54','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2063,7,7002,'2022-11-06','20:17:08','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2064,7,7003,'2022-11-06','20:18:05','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2065,7,7003,'2022-11-06','20:18:23','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(2066,7,7003,'2022-11-06','20:20:06','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2067,4,1,'2022-11-06','20:23:04','FABIAN','192.168.1.2','Ingreso Login'),(2068,4,3000,'2022-11-06','20:23:13','FABIAN','192.168.1.2','Ingreso Compras'),(2069,7,1,'2022-11-06','20:32:29','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2070,7,999,'2022-11-06','20:35:20','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Cerro Sesion'),(2071,7,1,'2022-11-06','20:35:37','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2072,7,7000,'2022-11-06','20:36:01','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2073,7,7003,'2022-11-06','20:40:30','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2074,7,7003,'2022-11-06','20:42:18','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2075,7,7002,'2022-11-06','20:44:28','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2076,7,1,'2022-11-06','20:56:04','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2077,7,7000,'2022-11-06','20:56:29','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2078,4,1,'2022-11-06','20:57:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2079,4,3000,'2022-11-06','20:57:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2080,4,3001,'2022-11-06','20:58:00','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2081,7,1,'2022-11-06','20:59:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2082,7,7000,'2022-11-06','20:59:49','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2083,7,7001,'2022-11-06','21:00:55','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2084,4,1,'2022-11-06','21:01:14','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2085,4,3000,'2022-11-06','21:01:23','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2086,7,7001,'2022-11-06','21:01:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2087,4,3001,'2022-11-06','21:01:38','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2088,7,7001,'2022-11-06','21:02:15','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(2089,7,7001,'2022-11-06','21:02:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Consulta'),(2090,4,3002,'2022-11-06','21:02:30','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2091,7,7001,'2022-11-06','21:02:37','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Reportes'),(2092,4,3002,'2022-11-06','21:02:58','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2093,4,3001,'2022-11-06','21:03:29','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2094,7,7003,'2022-11-06','21:05:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2095,8,1,'2022-11-06','21:05:50','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2096,8,8000,'2022-11-06','21:06:38','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2097,4,3001,'2022-11-06','21:06:40','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2098,4,1,'2022-11-06','21:06:45','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2099,4,3000,'2022-11-06','21:06:50','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2100,4,3001,'2022-11-06','21:06:59','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2101,7,7003,'2022-11-06','21:07:12','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2102,4,3001,'2022-11-06','21:07:30','DESKTOP-8O756PG','192.168.1.3','Modificar'),(2103,4,3001,'2022-11-06','21:07:41','DESKTOP-8O756PG','192.168.1.3','Consulta'),(2104,4,3001,'2022-11-06','21:07:45','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2105,4,1,'2022-11-06','21:07:56','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2106,4,3000,'2022-11-06','21:08:00','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2107,7,7002,'2022-11-06','21:09:10','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2108,4,3001,'2022-11-06','21:09:27','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2109,4,3001,'2022-11-06','21:10:27','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2110,4,3001,'2022-11-06','21:10:49','DESKTOP-8O756PG','192.168.1.3','Modificar'),(2111,4,1,'2022-11-06','21:10:55','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2112,4,3000,'2022-11-06','21:11:00','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2113,4,3001,'2022-11-06','21:11:08','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2114,4,3002,'2022-11-06','21:11:30','DESKTOP-8O756PG','192.168.1.3','Consulta'),(2115,4,3002,'2022-11-06','21:11:42','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2116,4,3106,'2022-11-06','21:12:50','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2117,4,1,'2022-11-06','21:13:01','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2118,4,3000,'2022-11-06','21:13:06','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2119,7,7001,'2022-11-06','21:13:11','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2120,8,1,'2022-11-06','21:13:17','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2121,7,7001,'2022-11-06','21:13:39','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2122,7,7001,'2022-11-06','21:14:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(2123,8,8000,'2022-11-06','21:14:09','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2124,7,7002,'2022-11-06','21:15:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2125,8,1,'2022-11-06','21:15:12','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2126,8,8000,'2022-11-06','21:15:35','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2127,7,7003,'2022-11-06','21:15:58','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2128,7,7004,'2022-11-06','21:16:42','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2129,8,1,'2022-11-06','21:24:06','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2130,8,8000,'2022-11-06','21:24:26','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2131,7,1,'2022-11-06','21:29:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2132,7,7000,'2022-11-06','21:29:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2133,4,1,'2022-11-06','21:29:48','FABIAN','192.168.1.2','Ingreso Login'),(2134,4,3000,'2022-11-06','21:29:54','FABIAN','192.168.1.2','Ingreso Compras'),(2135,6,1,'2022-11-06','21:30:47','DESKTOP-I95002A','2803:d100:9830:3b4:c568:2495:bde0:468f','Ingreso Login'),(2136,7,7002,'2022-11-06','21:30:48','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2137,6,6000,'2022-11-06','21:31:40','DESKTOP-I95002A','2803:d100:9830:3b4:c568:2495:bde0:468f','Ingreso Nominas'),(2138,7,7001,'2022-11-06','21:32:27','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2139,7,7001,'2022-11-06','21:32:49','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Eliminar'),(2140,4,3106,'2022-11-06','21:33:14','FABIAN','192.168.1.2','Guardar'),(2141,6,1,'2022-11-06','21:35:07','DESKTOP-I95002A','2803:d100:9830:3b4:c568:2495:bde0:468f','Ingreso Login'),(2142,6,6000,'2022-11-06','21:35:37','DESKTOP-I95002A','2803:d100:9830:3b4:c568:2495:bde0:468f','Ingreso Nominas'),(2143,8,1,'2022-11-06','21:39:27','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2144,8,8000,'2022-11-06','21:39:48','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2145,8,999,'2022-11-06','21:41:37','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Cerro Sesion'),(2146,6,1,'2022-11-06','21:48:07','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2147,4,1,'2022-11-06','21:48:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2148,6,6000,'2022-11-06','21:48:39','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2149,4,3000,'2022-11-06','21:51:09','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2150,4,3000,'2022-11-06','21:51:11','FABIAN','192.168.1.2','Ingreso Compras'),(2151,4,1,'2022-11-06','21:52:09','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2152,4,3000,'2022-11-06','21:52:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2153,6,1,'2022-11-06','21:52:48','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2154,4,3106,'2022-11-06','21:53:22','FABIAN','192.168.1.2','Guardar'),(2155,6,6000,'2022-11-06','21:53:18','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2156,8,1,'2022-11-06','21:56:33','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2157,8,8000,'2022-11-06','21:56:55','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2158,8,1,'2022-11-06','22:00:00','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2159,8,8000,'2022-11-06','22:00:20','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2160,4,1,'2022-11-06','22:01:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2161,4,3000,'2022-11-06','22:02:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2162,4,1,'2022-11-06','22:05:32','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2163,4,3000,'2022-11-06','22:05:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2164,7,1,'2022-11-06','22:08:57','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2165,8,1,'2022-11-06','22:10:35','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2166,7,7000,'2022-11-06','22:10:51','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2167,8,8000,'2022-11-06','22:10:56','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2168,4,3106,'2022-11-06','22:11:14','FABIAN','192.168.1.2','Guardar'),(2169,8,1,'2022-11-06','22:12:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2170,8,8000,'2022-11-06','22:13:18','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2171,8,1,'2022-11-06','22:17:41','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2172,8,8000,'2022-11-06','22:18:01','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2173,8,1,'2022-11-06','22:22:33','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2174,8,8000,'2022-11-06','22:22:54','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2175,8,1,'2022-11-06','22:25:18','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2176,8,8000,'2022-11-06','22:25:38','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2177,8,1,'2022-11-06','22:26:27','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2178,8,8000,'2022-11-06','22:26:51','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2179,8,1,'2022-11-06','22:30:28','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2180,8,8000,'2022-11-06','22:31:34','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2181,4,1,'2022-11-06','22:39:46','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2182,4,3000,'2022-11-06','22:40:01','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2183,8,1,'2022-11-06','22:42:53','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Login'),(2184,8,8000,'2022-11-06','22:43:21','LAPTOP-6SBECIBA','fe80::3cab:a677:6fc0:124d%3','Ingreso Contabilidad'),(2185,4,1,'2022-11-06','22:47:10','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2186,4,3000,'2022-11-06','22:47:25','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2187,8,1,'2022-11-06','22:52:02','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2188,8,8000,'2022-11-06','22:52:26','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2189,4,1,'2022-11-06','22:54:35','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2190,4,3000,'2022-11-06','22:54:48','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2191,8,1,'2022-11-06','22:56:30','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2192,8,8000,'2022-11-06','22:56:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2193,8,8000,'2022-11-06','22:59:13','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2194,8,1,'2022-11-06','23:07:31','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2195,8,8000,'2022-11-06','23:07:58','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2196,8,8002,'2022-11-06','23:10:47','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Guardar'),(2197,8,8002,'2022-11-06','23:11:24','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Modificar'),(2198,8,8002,'2022-11-06','23:11:53','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Consulta'),(2199,8,8003,'2022-11-06','23:13:05','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Guardar'),(2200,8,8000,'2022-11-06','23:13:17','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2201,8,8000,'2022-11-06','23:13:24','JONATHANXUYA','fe80::7867:2dde:3d76:919d%11','Ingreso Contabilidad'),(2202,8,8003,'2022-11-06','23:13:44','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Modificar'),(2203,8,8003,'2022-11-06','23:13:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Consulta'),(2204,8,1,'2022-11-06','23:19:29','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2205,8,8000,'2022-11-06','23:19:57','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2206,8,8000,'2022-11-06','23:20:25','JONATHANXUYA','fe80::7867:2dde:3d76:919d%11','Ingreso Contabilidad'),(2207,4,1,'2022-11-06','23:20:25','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(2208,4,3000,'2022-11-06','23:21:29','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(2209,8,1,'2022-11-06','23:23:59','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Login'),(2210,8,8000,'2022-11-06','23:24:26','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Ingreso Contabilidad'),(2211,8,8000,'2022-11-06','23:27:48','JONATHANXUYA','fe80::7867:2dde:3d76:919d%11','Ingreso Contabilidad'),(2212,8,999,'2022-11-06','23:34:17','LAPTOP-BOI1BH8R','fe80::ac05:adc9:acb3:a0a0%9','Cerro Sesion'),(2213,7,1,'2022-11-06','23:34:46','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Login'),(2214,7,7000,'2022-11-06','23:35:14','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(2215,7,1,'2022-11-06','23:36:25','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Login'),(2216,7,7000,'2022-11-06','23:36:49','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(2217,7,1,'2022-11-06','23:40:48','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Login'),(2218,7,7000,'2022-11-06','23:41:16','VELVETSAMAYOA','fe80::f469:764f:bb02:3d03%3','Ingreso Bancos'),(2219,8,8000,'2022-11-06','23:47:48','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2220,8,8000,'2022-11-06','23:50:20','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2221,8,8000,'2022-11-06','23:54:57','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2222,7,7000,'2022-11-06','23:55:24','LAPTOP_DE_MEMIN','192.168.1.17','Ingreso Bancos'),(2223,6,1,'2022-11-06','23:56:34','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(2224,8,8000,'2022-11-06','23:56:36','JOSELYNE','192.168.1.136','Ingreso Contabilidad'),(2225,6,6000,'2022-11-06','23:57:04','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(2226,6,1,'2022-11-07','00:01:48','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(2227,6,6000,'2022-11-07','00:02:17','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(2228,6,1,'2022-11-07','00:11:18','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(2229,6,6000,'2022-11-07','00:11:49','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(2230,7,7000,'2022-11-07','00:15:16','LAPTOP_DE_MEMIN','192.168.1.17','Ingreso Bancos'),(2231,4,1,'2022-11-07','00:17:41','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2232,4,3000,'2022-11-07','00:17:46','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2233,4,1,'2022-11-07','00:20:53','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2234,4,3000,'2022-11-07','00:21:10','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2235,4,1,'2022-11-07','00:27:10','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2236,4,3000,'2022-11-07','00:27:24','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2237,4,1,'2022-11-07','00:28:58','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Login'),(2238,4,3000,'2022-11-07','00:29:13','DESKTOP-0MVKGRR','fe80::7137:abb8:1a1f:a883%17','Ingreso Compras'),(2239,4,1,'2022-11-07','00:34:32','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2240,4,3000,'2022-11-07','00:34:46','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2241,4,1,'2022-11-07','00:37:58','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2242,4,3000,'2022-11-07','00:38:05','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2243,4,1,'2022-11-07','00:42:53','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2244,4,1,'2022-11-07','00:44:58','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2245,4,3000,'2022-11-07','00:45:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2246,4,1,'2022-11-07','00:46:59','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2247,4,3000,'2022-11-07','00:47:38','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2248,4,1,'2022-11-07','00:49:01','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Login'),(2249,4,3000,'2022-11-07','00:49:07','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2250,4,1,'2022-11-07','00:53:41','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2251,4,3000,'2022-11-07','00:53:55','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2252,4,3000,'2022-11-07','00:54:16','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2253,4,1,'2022-11-07','01:04:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2254,4,3000,'2022-11-07','01:04:32','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2255,1,1,'2022-11-07','01:05:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2256,1,1000,'2022-11-07','01:05:46','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(2257,1,1101,'2022-11-07','01:06:37','DESKTOP-8O756PG','192.168.1.3','Asigno Modulo-Aplicacion'),(2258,1,3000,'2022-11-07','01:07:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2259,1,999,'2022-11-07','01:07:12','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2260,4,1,'2022-11-07','01:07:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2261,4,1,'2022-11-07','01:07:33','FABIAN','192.168.1.2','Ingreso Login'),(2262,4,3000,'2022-11-07','01:07:47','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2263,4,3000,'2022-11-07','01:07:56','FABIAN','192.168.1.2','Ingreso Compras'),(2264,1,1,'2022-11-07','01:08:34','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2265,1,1000,'2022-11-07','01:09:08','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(2266,1,1101,'2022-11-07','01:10:18','DESKTOP-8O756PG','192.168.1.3','Asigno Modulo-Aplicacion'),(2267,1,1102,'2022-11-07','01:11:49','DESKTOP-8O756PG','192.168.1.3','Asigno Aplicacion-Perfil'),(2268,1,999,'2022-11-07','01:11:58','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2269,4,1,'2022-11-07','01:12:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2270,4,3000,'2022-11-07','01:13:05','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2271,4,999,'2022-11-07','01:13:19','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2272,1,1,'2022-11-07','01:13:55','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2273,4,1,'2022-11-07','01:19:27','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2274,4,3000,'2022-11-07','01:19:41','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2275,4,1,'2022-11-06','20:20:32','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2276,4,3000,'2022-11-06','20:21:15','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2277,4,3106,'2022-11-06','20:22:51','DESKTOP-8O756PG','192.168.1.3','Consulta'),(2278,4,3106,'2022-11-06','20:22:55','DESKTOP-8O756PG','192.168.1.3','Consulta'),(2279,4,3106,'2022-11-06','20:23:33','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2280,4,1,'2022-11-07','01:24:25','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2281,4,3000,'2022-11-07','01:24:39','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2282,4,1,'2022-11-06','20:25:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2283,4,3000,'2022-11-06','20:25:53','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2284,4,1,'2022-11-06','20:28:45','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2285,4,3000,'2022-11-06','20:29:31','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2286,4,3001,'2022-11-06','20:33:16','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2287,4,3001,'2022-11-06','20:33:47','DESKTOP-8O756PG','192.168.1.3','Eliminar'),(2288,4,3002,'2022-11-06','20:34:43','DESKTOP-8O756PG','192.168.1.3','Consulta'),(2289,4,3002,'2022-11-06','20:34:51','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2290,4,3106,'2022-11-06','20:36:21','DESKTOP-8O756PG','192.168.1.3','Modificar'),(2291,7,7000,'2022-11-06','11:52:42','LAPTOP_DE_MEMIN','192.168.1.17','Ingreso Bancos'),(2292,4,1,'2022-11-07','17:25:47','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2293,4,3000,'2022-11-07','17:26:10','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2294,4,1,'2022-11-07','17:29:45','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2295,4,3000,'2022-11-07','17:30:01','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2296,4,1,'2022-11-07','17:32:51','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2297,4,3000,'2022-11-07','17:33:07','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2298,4,1,'2022-11-07','18:16:24','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2299,4,3000,'2022-11-07','18:16:48','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2300,4,1,'2022-11-07','19:07:54','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2301,4,3000,'2022-11-07','19:08:09','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2302,4,1,'2022-11-07','19:14:28','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2303,4,3000,'2022-11-07','19:14:42','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2304,4,1,'2022-11-07','19:17:12','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2305,4,3000,'2022-11-07','19:17:26','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2306,4,1,'2022-11-07','19:27:57','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2307,4,3000,'2022-11-07','19:28:16','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2308,4,1,'2022-11-07','19:38:41','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2309,4,3000,'2022-11-07','19:39:03','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2310,7,1,'2022-11-07','19:39:26','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2311,7,7000,'2022-11-07','19:40:21','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2312,4,1,'2022-11-07','19:47:24','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2313,4,3000,'2022-11-07','19:47:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2314,4,1,'2022-11-07','20:14:42','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2315,4,3000,'2022-11-07','20:15:03','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2316,4,1,'2022-11-07','20:15:54','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2317,4,3000,'2022-11-07','20:16:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2318,4,1,'2022-11-07','20:22:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2319,4,3000,'2022-11-07','20:23:10','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2320,4,1,'2022-11-07','20:39:28','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2321,4,3000,'2022-11-07','20:39:53','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2322,4,1,'2022-11-07','21:44:31','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(2323,4,3000,'2022-11-07','21:46:47','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(2324,2,1,'2022-11-07','21:48:30','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2325,4,1,'2022-11-07','21:48:45','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Login'),(2326,2,2000,'2022-11-07','21:49:11','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2327,2,2001,'2022-11-07','21:49:52','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Consulta'),(2328,2,2002,'2022-11-07','21:50:18','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Consulta'),(2329,4,1,'2022-11-07','21:50:40','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2330,4,3000,'2022-11-07','21:50:32','DESKTOP-J2E304A','fe80::c4a7:e199:c798:7bcd%16','Ingreso Compras'),(2331,4,3000,'2022-11-07','21:51:04','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2332,2,2002,'2022-11-07','21:51:41','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2333,2,2002,'2022-11-07','21:51:54','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2334,2,2101,'2022-11-07','21:52:29','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Consulta'),(2335,2,1,'2022-11-07','21:56:04','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2336,2,2000,'2022-11-07','21:56:34','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2337,4,1,'2022-11-07','21:56:59','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2338,4,3000,'2022-11-07','21:57:19','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2339,2,2002,'2022-11-07','21:57:35','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Consulta'),(2340,2,2002,'2022-11-07','21:58:19','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2341,2,2002,'2022-11-07','21:58:31','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2342,7,1,'2022-11-07','21:59:08','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2343,4,1,'2022-11-07','21:59:23','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2344,7,7000,'2022-11-07','21:59:34','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2345,4,3000,'2022-11-07','21:59:44','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2346,7,1,'2022-11-07','22:00:50','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2347,7,7000,'2022-11-07','22:01:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2348,7,1,'2022-11-07','22:02:27','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2349,7,7000,'2022-11-07','22:02:51','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2350,4,3001,'2022-11-07','22:03:37','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2351,4,3001,'2022-11-07','22:03:59','DESKTOP-8O756PG','192.168.1.3','Guardar'),(2352,4,3001,'2022-11-07','22:04:03','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2353,4,3001,'2022-11-07','22:04:13','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2354,4,3002,'2022-11-07','22:04:48','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2355,2,1,'2022-11-07','22:06:08','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2356,2,2000,'2022-11-07','22:06:43','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2357,2,1201,'2022-11-07','22:08:08','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Modifico Contraseña'),(2358,4,3000,'2022-11-07','22:08:16','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2359,2,1,'2022-11-07','22:09:35','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2360,2,2000,'2022-11-07','22:10:02','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2361,4,999,'2022-11-07','22:10:16','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2362,2,1201,'2022-11-07','22:10:20','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Modifico Contraseña'),(2363,4,1,'2022-11-07','22:10:32','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2364,4,999,'2022-11-07','22:10:36','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2365,2,999,'2022-11-07','22:10:47','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Cerro Sesion'),(2366,1,1,'2022-11-07','22:10:58','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2367,1,1000,'2022-11-07','22:11:23','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(2368,1,1101,'2022-11-07','22:12:36','DESKTOP-8O756PG','192.168.1.3','Asigno Modulo-Aplicacion'),(2369,1,1102,'2022-11-07','22:13:07','DESKTOP-8O756PG','192.168.1.3','Asigno Aplicacion-Perfil'),(2370,2,1,'2022-11-07','22:13:03','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2371,1,999,'2022-11-07','22:13:27','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2372,4,1,'2022-11-07','22:13:43','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2373,4,3000,'2022-11-07','22:14:03','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2374,4,999,'2022-11-07','22:14:10','DESKTOP-8O756PG','192.168.1.3','Cerro Sesion'),(2375,7,1,'2022-11-07','22:14:15','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2376,1,1,'2022-11-07','22:14:27','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2377,2,2000,'2022-11-07','22:14:35','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2378,7,7000,'2022-11-07','22:14:38','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2379,1,1000,'2022-11-07','22:15:02','DESKTOP-8O756PG','192.168.1.3','Ingreso Seguridad'),(2380,1,1101,'2022-11-07','22:15:49','DESKTOP-8O756PG','192.168.1.3','Asigno Modulo-Aplicacion'),(2381,7,1,'2022-11-07','22:17:13','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2382,7,7000,'2022-11-07','22:17:51','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2383,2,2001,'2022-11-07','22:18:05','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Consulta'),(2384,2,2001,'2022-11-07','22:18:36','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2385,4,1,'2022-11-07','22:23:57','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2386,4,3000,'2022-11-07','22:24:18','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2387,2,1,'2022-11-07','22:24:38','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2388,2,2000,'2022-11-07','22:25:21','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2389,4,1,'2022-11-07','22:26:12','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2390,4,3000,'2022-11-07','22:26:39','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2391,2,2001,'2022-11-07','22:27:23','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2392,7,1,'2022-11-07','22:27:41','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2393,7,7000,'2022-11-07','22:28:04','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2394,2,1,'2022-11-07','22:28:31','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2395,2,2000,'2022-11-07','22:29:01','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2396,2,2001,'2022-11-07','22:29:41','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Reportes'),(2397,2,1,'2022-11-07','22:36:35','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2398,2,2000,'2022-11-07','22:37:01','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Logistica'),(2399,7,1,'2022-11-07','22:46:06','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2400,7,7000,'2022-11-07','22:46:38','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2401,7,1,'2022-11-07','22:55:16','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2402,7,7000,'2022-11-07','22:55:40','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2403,7,7004,'2022-11-07','22:58:01','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2404,7,7004,'2022-11-07','22:58:27','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2405,7,7004,'2022-11-07','22:58:55','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2406,7,7004,'2022-11-07','22:59:09','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2407,7,7004,'2022-11-07','22:59:25','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2408,4,1,'2022-11-07','23:06:56','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2409,4,3000,'2022-11-07','23:07:29','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2410,4,1,'2022-11-07','23:12:06','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2411,4,3000,'2022-11-07','23:12:44','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2412,7,1,'2022-11-07','23:17:56','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2413,7,7000,'2022-11-07','23:18:19','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2414,4,1,'2022-11-07','23:21:33','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2415,4,3000,'2022-11-07','23:22:11','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2416,7,1,'2022-11-07','23:25:06','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2417,7,7000,'2022-11-07','23:25:33','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2418,4,1,'2022-11-07','23:26:14','DESKTOP-8O756PG','192.168.1.3','Ingreso Login'),(2419,4,3000,'2022-11-07','23:26:57','DESKTOP-8O756PG','192.168.1.3','Ingreso Compras'),(2420,4,3106,'2022-11-07','23:27:58','DESKTOP-8O756PG','192.168.1.3','Reportes'),(2421,7,7002,'2022-11-07','23:28:43','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2422,7,7002,'2022-11-07','23:30:12','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2423,7,7002,'2022-11-07','23:33:09','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2424,7,7001,'2022-11-07','23:34:02','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Modificar'),(2425,7,1,'2022-11-07','23:53:10','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2426,7,7000,'2022-11-07','23:54:37','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2427,7,1,'2022-11-07','23:57:31','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2428,7,7000,'2022-11-07','23:57:59','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2429,7,1,'2022-11-08','06:58:42','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2430,7,7000,'2022-11-08','07:00:07','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Bancos'),(2431,7,7002,'2022-11-08','07:02:44','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Guardar'),(2432,4,3000,'2022-11-08','07:05:13','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2433,4,1,'2022-11-08','07:12:44','FABIAN','192.168.1.2','Ingreso Login'),(2434,4,3000,'2022-11-08','07:13:45','FABIAN','192.168.1.2','Ingreso Compras'),(2435,2,1,'2022-11-08','07:30:33','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(2436,2,2000,'2022-11-08','07:31:21','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(2437,7,1,'2022-11-08','07:46:18','LAPTOP-91CORHUE','2800:98:1119:2ff:f9f2:22d3:2456:a593','Ingreso Login'),(2438,2,1,'2022-11-08','07:46:19','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(2439,7,7000,'2022-11-08','07:46:44','LAPTOP-91CORHUE','2800:98:1119:2ff:f9f2:22d3:2456:a593','Ingreso Bancos'),(2440,2,2000,'2022-11-08','07:46:42','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(2441,6,1,'2022-11-08','07:49:24','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(2442,6,1,'2022-11-08','07:49:54','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Login'),(2443,6,6000,'2022-11-08','07:49:56','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(2444,2,1,'2022-11-08','07:50:00','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Login'),(2445,6,6000,'2022-11-08','07:50:24','DESKTOP-MF9ETJ2','fe80::d2d:3abf:7d73:420e%10','Ingreso Nominas'),(2446,2,2000,'2022-11-08','07:50:24','NIVIA','fe80::f5c9:8d78:ea4f:3454%19','Ingreso Logistica'),(2447,6,1,'2022-11-08','07:51:47','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Login'),(2448,6,6000,'2022-11-08','07:52:21','ARMANDO','fe80::dd8b:f68:9d50:32e8%6','Ingreso Nominas'),(2449,4,3000,'2022-11-08','07:54:37','TORRESC','fe80::c0c9:cdad:639a:2a01%13','Ingreso Compras'),(2450,2,1,'2022-11-08','07:54:38','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2451,6,1,'2022-11-08','07:55:07','DESKTOP-I95002A','2803:d100:9830:3b4:49db:b030:eada:2eb1','Ingreso Login'),(2452,7,1,'2022-11-08','07:56:24','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2453,2,1,'2022-11-08','08:00:51','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2454,4,1,'2022-11-08','08:01:24','DESKTOP-8O756PG','fe80::8d3c:ecac:a885:8417%17','Ingreso Login'),(2455,1,1,'2022-11-08','08:02:10','DESKTOP-T5OJTBO','2800:98:1112:af3::a','Ingreso Login'),(2456,7,1,'2022-11-08','08:03:03','DESKTOP-O0U8L4V','fe80::a5d1:b80b:3351:68d8%19','Ingreso Login'),(2457,4,1,'2022-11-08','08:04:14','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Login'),(2458,4,3000,'2022-11-08','08:04:51','DESKTOP-2GIIUQJ','fe80::5d4:ec48:f35b:51f7%2','Ingreso Compras'),(2459,6,1,'2022-11-08','08:04:51','DESKTOP-I95002A','2803:d100:9830:3b4:49db:b030:eada:2eb1','Ingreso Login');
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bodega`
--

DROP TABLE IF EXISTS `tbl_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bodega` (
  `pk_codigo_bodega` int NOT NULL AUTO_INCREMENT,
  `nombre_bodega` varchar(100) DEFAULT NULL,
  `estado_bodega` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bodega`
--

LOCK TABLES `tbl_bodega` WRITE;
/*!40000 ALTER TABLE `tbl_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierreact`
--

DROP TABLE IF EXISTS `tbl_cierreact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierreact` (
  `pkid_cierreA` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `cuenta_nombre` varchar(50) NOT NULL,
  `monto_total` float NOT NULL,
  `fecha_cierre` date NOT NULL,
  PRIMARY KEY (`pkid_cierreA`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_cierreact_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierreact`
--

LOCK TABLES `tbl_cierreact` WRITE;
/*!40000 ALTER TABLE `tbl_cierreact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierreact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierrecontable`
--

DROP TABLE IF EXISTS `tbl_cierrecontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierrecontable` (
  `pk_CierreContable` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pk_CierreContable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierrecontable`
--

LOCK TABLES `tbl_cierrecontable` WRITE;
/*!40000 ALTER TABLE `tbl_cierrecontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierrecontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierrectasact`
--

DROP TABLE IF EXISTS `tbl_cierrectasact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierrectasact` (
  `pkid_ctaAct` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `nombre_cuenta` varchar(50) NOT NULL,
  `razon` varchar(50) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`pkid_ctaAct`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_cierrectasact_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierrectasact`
--

LOCK TABLES `tbl_cierrectasact` WRITE;
/*!40000 ALTER TABLE `tbl_cierrectasact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierrectasact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierrectaspas`
--

DROP TABLE IF EXISTS `tbl_cierrectaspas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierrectaspas` (
  `pkid_ctaPas` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `nombre_cuenta` varchar(50) NOT NULL,
  `razon` varchar(50) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`pkid_ctaPas`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_cierrectaspas_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierrectaspas`
--

LOCK TABLES `tbl_cierrectaspas` WRITE;
/*!40000 ALTER TABLE `tbl_cierrectaspas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierrectaspas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierregeneral`
--

DROP TABLE IF EXISTS `tbl_cierregeneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierregeneral` (
  `pkid_cierreG` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `total_activo` float NOT NULL,
  `total_pasivo` float NOT NULL,
  `codigo_contador` varchar(20) NOT NULL,
  `nombre_contador` varchar(50) NOT NULL,
  `fecha_cierre` date DEFAULT NULL,
  PRIMARY KEY (`pkid_cierreG`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_cierregeneral_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierregeneral`
--

LOCK TABLES `tbl_cierregeneral` WRITE;
/*!40000 ALTER TABLE `tbl_cierregeneral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierregeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cierrepas`
--

DROP TABLE IF EXISTS `tbl_cierrepas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cierrepas` (
  `pkid_cierreP` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `cuenta_nombre` varchar(50) NOT NULL,
  `monto_total` float NOT NULL,
  `fecha_cierre` date NOT NULL,
  PRIMARY KEY (`pkid_cierreP`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_cierrepas_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cierrepas`
--

LOCK TABLES `tbl_cierrepas` WRITE;
/*!40000 ALTER TABLE `tbl_cierrepas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cierrepas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conceptosbancario`
--

DROP TABLE IF EXISTS `tbl_conceptosbancario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_conceptosbancario` (
  `Pk_idConcepto` int NOT NULL,
  `Nombre_cbancario` varchar(50) NOT NULL,
  `PorcentajeIva` float DEFAULT NULL,
  `Clasificacion` varchar(5) NOT NULL,
  `Estado` tinyint DEFAULT '0',
  PRIMARY KEY (`Pk_idConcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conceptosbancario`
--

LOCK TABLES `tbl_conceptosbancario` WRITE;
/*!40000 ALTER TABLE `tbl_conceptosbancario` DISABLE KEYS */;
INSERT INTO `tbl_conceptosbancario` VALUES (1,'Clientes por cobrar',12,'Cargo',0),(2,'Pago transferencia',12,'Cargo',1),(3,'Proveedores',12,'Cargo',1),(4,'Ventas',12,'Abono',1),(5,'Compras',12,'Cargo',1),(6,'Pago a acreedores',12,'Cargo',1),(7,'Pago a empleados',12,'Cargo',1),(8,'Pago de Iva',1,'Cargo',1);
/*!40000 ALTER TABLE `tbl_conceptosbancario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conductor`
--

DROP TABLE IF EXISTS `tbl_conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_conductor` (
  `pk_conductor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_conductor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conductor`
--

LOCK TABLES `tbl_conductor` WRITE;
/*!40000 ALTER TABLE `tbl_conductor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_confctascierrre`
--

DROP TABLE IF EXISTS `tbl_confctascierrre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_confctascierrre` (
  `pkid_confcierre` int NOT NULL AUTO_INCREMENT,
  `pkid_cuenta` int NOT NULL,
  `cuenta_nombre` varchar(50) NOT NULL,
  `total_activo` float NOT NULL,
  `total_pasivo` float NOT NULL,
  `codigo_contador` varchar(20) NOT NULL,
  `nombre_contador` varchar(50) NOT NULL,
  `fecha_cierre` date DEFAULT NULL,
  PRIMARY KEY (`pkid_confcierre`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  CONSTRAINT `tbl_confctascierrre_ibfk_1` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_confctascierrre`
--

LOCK TABLES `tbl_confctascierrre` WRITE;
/*!40000 ALTER TABLE `tbl_confctascierrre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_confctascierrre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_consultainteligente`
--

DROP TABLE IF EXISTS `tbl_consultainteligente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_consultainteligente` (
  `nombre_consulta` varchar(40) NOT NULL,
  `tabla_consulta` varchar(40) NOT NULL,
  `campos_consultas` varchar(80) NOT NULL,
  `alias_consultas` varchar(80) NOT NULL,
  `cadena_consultas` varchar(80) NOT NULL,
  `Pk_Id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Pk_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consultainteligente`
--

LOCK TABLES `tbl_consultainteligente` WRITE;
/*!40000 ALTER TABLE `tbl_consultainteligente` DISABLE KEYS */;
INSERT INTO `tbl_consultainteligente` VALUES ('xscs','tbl_asignacionmoduloaplicacion','fk_id_modulos','cscscs','',30),('Compleja','tbl_modulos','estado_modulo','mod','',39),('compleja','tbl_aplicaciones','estado_aplicacion','est','',40);
/*!40000 ALTER TABLE `tbl_consultainteligente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_consultainteligente1`
--

DROP TABLE IF EXISTS `tbl_consultainteligente1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_consultainteligente1` (
  `operador_consulta` varchar(40) NOT NULL,
  `campos_consulta` varchar(40) NOT NULL,
  `valor_consultas` varchar(15) NOT NULL,
  `PkId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PkId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consultainteligente1`
--

LOCK TABLES `tbl_consultainteligente1` WRITE;
/*!40000 ALTER TABLE `tbl_consultainteligente1` DISABLE KEYS */;
INSERT INTO `tbl_consultainteligente1` VALUES ('AND ','','500',1),('where','','600',2),('OR','pk_id_perfil','ID',3),('where','pk_id_perfil','ID1',4),('AND','nombre_modulo','nombre',5),('WHERE','estado_modulo','estados',6),('AND ','estado_modulo','estados',7),('OR','descripcion_perfil','description',8),('where','estado_perfil','estados',9),('OR','email_usuario','mail',10),('where','apellido_usuario','lopez',11),('NOT','descripcion_modulo','desc',12),('WHERE','nombre_modulo','des',13),('OR','nombre_usuario','name',14),('WHERE','email_usuario','email',15),('AND ','fk_id_usuario','usu',16),('where','ip_bitacora','ip',17),('NOT','nombre_modulo','name',18),('where','descripcion_modulo','description',19),('OR','fk_id_usuario','id',20),('where','fk_id_perfil','per',21),('AND ','descripcion_modulo','des',22),('where','estado_modulo','estados',23),('OR','pk_id_perfil','ID',24),('WHERE','descripcion_perfil','desc',25),('OR','nombre_perfil','name',26),('WHERE','descripcion_perfil','des',27),('OR','nombre_perfil','nom',28),('where','estado_perfil','estad',29),('OR','nombre_modulo','nam',30),('WHERE','descripcion_modulo','des',31),('AND ','pk_id_perfil','ID',32),('where','nombre_perfil','name',33),('OR','nombre_modulo','name',34),('where','descripcion_modulo','des',35),('NOT','descripcion_aplicacion','des',36),('WHERE','estado_aplicacion','estados',37);
/*!40000 ALTER TABLE `tbl_consultainteligente1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_consultainteligente2`
--

DROP TABLE IF EXISTS `tbl_consultainteligente2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_consultainteligente2` (
  `ordenar_consulta` varchar(40) NOT NULL,
  `campo_consulta` varchar(40) NOT NULL,
  `PkId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PkId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consultainteligente2`
--

LOCK TABLES `tbl_consultainteligente2` WRITE;
/*!40000 ALTER TABLE `tbl_consultainteligente2` DISABLE KEYS */;
INSERT INTO `tbl_consultainteligente2` VALUES ('Seleccionar','',1),('Agrupar ','pk_id_perfil',2),('ORDENAR','descripcion_modulo',3),('Agrupar ','nombre_modulo',4),('Agrupar ','nombre_perfil',5),('Agrupar ','nombre_usuario',6),('AGRUPAR','nombre_modulo',7),('ORDENAR','username_usuario',8),('Agrupar ','fk_id_aplicacion',9),('Ordenar','descripcion_modulo',10),('Ordenar','fk_id_usuario',11),('Ordenar','nombre_modulo',12),('AGRUPAR','pk_id_perfil',13),('Agrupar ','nombre_perfil',14),('ORDENAR','nombre_modulo',15),('Agrupar ','nombre_perfil',16),('Ordenar','descripcion_modulo',17),('AGRUPAR','nombre_aplicacion',18);
/*!40000 ALTER TABLE `tbl_consultainteligente2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contrato`
--

DROP TABLE IF EXISTS `tbl_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contrato` (
  `pk_id_contrato` int NOT NULL AUTO_INCREMENT,
  `salario_contrato` float NOT NULL,
  `tipoJornada_contrato` tinyint NOT NULL,
  `cantdidadHorasMensuales_contrato` int NOT NULL,
  `tipoPago_contrato` tinyint NOT NULL,
  `estado_contrato` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contrato`
--

LOCK TABLES `tbl_contrato` WRITE;
/*!40000 ALTER TABLE `tbl_contrato` DISABLE KEYS */;
INSERT INTO `tbl_contrato` VALUES (1,5000,1,80,1,1),(2,5000,1,80,2,1),(3,10000,2,160,2,1),(4,10000,2,160,1,1);
/*!40000 ALTER TABLE `tbl_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_controlfaltas`
--

DROP TABLE IF EXISTS `tbl_controlfaltas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_controlfaltas` (
  `pk_id_faltas` int NOT NULL AUTO_INCREMENT,
  `fk_clave_empleado` int NOT NULL,
  `fecha_falta` date NOT NULL,
  `mes_falta` int NOT NULL,
  `justificacion_falta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_id_faltas`),
  KEY `fk_clave_empleado` (`fk_clave_empleado`),
  CONSTRAINT `tbl_controlfaltas_ibfk_1` FOREIGN KEY (`fk_clave_empleado`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_controlfaltas`
--

LOCK TABLES `tbl_controlfaltas` WRITE;
/*!40000 ALTER TABLE `tbl_controlfaltas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_controlfaltas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ctabancarias`
--

DROP TABLE IF EXISTS `tbl_ctabancarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ctabancarias` (
  `pk_id_ctabancaria` int NOT NULL,
  `num_ctabancaria` int NOT NULL,
  `fecha_aper_ctabancaria` date DEFAULT NULL,
  `fk_Moneda_ctabancarias` int NOT NULL,
  `fk_Bancos_ctabancarias` int NOT NULL,
  `Monto_ctabancarias` float NOT NULL,
  `fk_Miembros` int NOT NULL,
  `estado_ctabancaria` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_ctabancaria`),
  KEY `fk_Bancos_ctabancarias` (`fk_Bancos_ctabancarias`),
  KEY `fk_Moneda_ctabancarias` (`fk_Moneda_ctabancarias`),
  KEY `fk_Miembros` (`fk_Miembros`),
  CONSTRAINT `tbl_ctabancarias_ibfk_1` FOREIGN KEY (`fk_Bancos_ctabancarias`) REFERENCES `tbl_bancos` (`Pk_idbancos`),
  CONSTRAINT `tbl_ctabancarias_ibfk_2` FOREIGN KEY (`fk_Moneda_ctabancarias`) REFERENCES `tbl_reg_tipocambio` (`Pk_regTipoCambio`),
  CONSTRAINT `tbl_ctabancarias_ibfk_3` FOREIGN KEY (`fk_Miembros`) REFERENCES `tbl_miembros` (`Pk_idMiembros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ctabancarias`
--

LOCK TABLES `tbl_ctabancarias` WRITE;
/*!40000 ALTER TABLE `tbl_ctabancarias` DISABLE KEYS */;
INSERT INTO `tbl_ctabancarias` VALUES (1,1230321,'2022-10-10',3,3,10000,1,1),(2,4789563,'2022-05-25',4,4,25600,3,1),(3,8745123,'2022-06-22',2,1,89653,2,1),(4,3214563,'2022-08-15',3,2,78546,5,0),(5,2457852,'2022-09-05',4,3,63541,4,0),(6,98235,'2022-10-11',4,3,5000,5,1);
/*!40000 ALTER TABLE `tbl_ctabancarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ctrl_cheques`
--

DROP TABLE IF EXISTS `tbl_ctrl_cheques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ctrl_cheques` (
  `Pk_idControl_cheques` int NOT NULL,
  `fk_id_cuentabancaria` int NOT NULL,
  `fk_id_concepto` int NOT NULL,
  `montoNum_cheques` float NOT NULL,
  `fechaReg_cheques` date DEFAULT NULL,
  `fechaAplicacion_cheques` date DEFAULT NULL,
  `MontoLet_cheques` varchar(100) DEFAULT NULL,
  `fk_Banco_cheques` int DEFAULT NULL,
  PRIMARY KEY (`Pk_idControl_cheques`),
  KEY `fk_id_cuentabancaria` (`fk_id_cuentabancaria`),
  KEY `fk_Banco_cheques` (`fk_Banco_cheques`),
  KEY `fk_id_concepto` (`fk_id_concepto`),
  CONSTRAINT `tbl_ctrl_cheques_ibfk_1` FOREIGN KEY (`fk_id_cuentabancaria`) REFERENCES `tbl_ctabancarias` (`pk_id_ctabancaria`),
  CONSTRAINT `tbl_ctrl_cheques_ibfk_2` FOREIGN KEY (`fk_Banco_cheques`) REFERENCES `tbl_cuentasbancos` (`Pk_idCuentas`),
  CONSTRAINT `tbl_ctrl_cheques_ibfk_3` FOREIGN KEY (`fk_id_concepto`) REFERENCES `tbl_conceptosbancario` (`Pk_idConcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ctrl_cheques`
--

LOCK TABLES `tbl_ctrl_cheques` WRITE;
/*!40000 ALTER TABLE `tbl_ctrl_cheques` DISABLE KEYS */;
INSERT INTO `tbl_ctrl_cheques` VALUES (1,1,1,500.36,'2022-10-28','2022-10-27','QUINIENTOS CON 36/100',1),(2,1,2,500,'2022-10-23','2022-10-25','QUINIENTOS',2),(3,1,2,523.3,'2022-11-01','2022-11-03','QUINIENTOS VEINTITRES CON 30/100',2),(4,1,2,875.63,'2022-11-02','2022-11-08','OCHOCIENTOS SETENTA Y CINCO CON 63/100',2),(5,1,1,5000,'2022-10-10','2022-10-10','CINCO MIL',1),(6,2,3,5000,'2022-10-10','2022-10-10','CINCO MIL',2),(7,2,3,6800.5,'2022-11-10','2022-11-10','SEIS MIL OCHOCIENTOS CON 50/100',2),(8,2,3,10000,'2022-10-10','2022-11-11','DIEZ MIL',3);
/*!40000 ALTER TABLE `tbl_ctrl_cheques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ctrl_chequesnominas`
--

DROP TABLE IF EXISTS `tbl_ctrl_chequesnominas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ctrl_chequesnominas` (
  `Pk_idControl_chequesN` int NOT NULL,
  `fk_trabajadornominas` int NOT NULL,
  `fk_id_concepto` int NOT NULL,
  `montoNum_chequesN` float NOT NULL,
  `fechaReg_chequesN` date DEFAULT NULL,
  `fechaAplicacion_chequesN` date DEFAULT NULL,
  `MontoLet_chequesN` varchar(100) DEFAULT NULL,
  `fk_Banco_chequesN` int DEFAULT NULL,
  PRIMARY KEY (`Pk_idControl_chequesN`),
  KEY `fk_trabajadornominas` (`fk_trabajadornominas`),
  KEY `fk_Banco_chequesN` (`fk_Banco_chequesN`),
  KEY `fk_id_concepto` (`fk_id_concepto`),
  CONSTRAINT `tbl_ctrl_chequesnominas_ibfk_1` FOREIGN KEY (`fk_trabajadornominas`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`),
  CONSTRAINT `tbl_ctrl_chequesnominas_ibfk_2` FOREIGN KEY (`fk_Banco_chequesN`) REFERENCES `tbl_cuentasbancos` (`Pk_idCuentas`),
  CONSTRAINT `tbl_ctrl_chequesnominas_ibfk_3` FOREIGN KEY (`fk_id_concepto`) REFERENCES `tbl_conceptosbancario` (`Pk_idConcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ctrl_chequesnominas`
--

LOCK TABLES `tbl_ctrl_chequesnominas` WRITE;
/*!40000 ALTER TABLE `tbl_ctrl_chequesnominas` DISABLE KEYS */;
INSERT INTO `tbl_ctrl_chequesnominas` VALUES (1,1,7,3000,'2022-11-02','2022-11-05','TRES MIL',4),(2,2,7,5000,'2022-11-10','2022-11-10','CINCO MIL',1),(3,2,7,6000,'2022-11-06','2022-11-06','SEIS MIL',1);
/*!40000 ALTER TABLE `tbl_ctrl_chequesnominas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cuentas`
--

DROP TABLE IF EXISTS `tbl_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cuentas` (
  `pkid_cuenta` int NOT NULL,
  `pkid_tipocuenta` int NOT NULL,
  `pkid_encabezadocuenta` int NOT NULL,
  `cargo_cuenta` float DEFAULT '0',
  `abono_cuenta` float DEFAULT '0',
  `saldo_cuenta` float DEFAULT '0',
  `status_cuenta` tinyint NOT NULL,
  PRIMARY KEY (`pkid_cuenta`,`pkid_tipocuenta`,`pkid_encabezadocuenta`),
  KEY `pkid_tipocuenta` (`pkid_tipocuenta`),
  KEY `pkid_encabezadocuenta` (`pkid_encabezadocuenta`),
  CONSTRAINT `tbl_cuentas_ibfk_1` FOREIGN KEY (`pkid_tipocuenta`) REFERENCES `tbl_tipocuenta` (`pkid_tipocuenta`),
  CONSTRAINT `tbl_cuentas_ibfk_3` FOREIGN KEY (`pkid_encabezadocuenta`) REFERENCES `tbl_encabezadoclasecuenta` (`pkid_encabezadocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cuentas`
--

LOCK TABLES `tbl_cuentas` WRITE;
/*!40000 ALTER TABLE `tbl_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cuentasbancos`
--

DROP TABLE IF EXISTS `tbl_cuentasbancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cuentasbancos` (
  `Pk_idCuentas` int NOT NULL,
  `Nombre_cta` varchar(45) NOT NULL,
  `fk_bancos` int NOT NULL,
  `TCargos_montbancario` float DEFAULT NULL,
  `TAbonos_montbancario` float DEFAULT NULL,
  `SActual_montbancario` float DEFAULT NULL,
  `SConciliado_montbancario` float DEFAULT NULL,
  `estado_cta` tinyint DEFAULT '0',
  PRIMARY KEY (`Pk_idCuentas`),
  KEY `fk_bancos` (`fk_bancos`),
  CONSTRAINT `tbl_cuentasbancos_ibfk_1` FOREIGN KEY (`fk_bancos`) REFERENCES `tbl_bancos` (`Pk_idbancos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cuentasbancos`
--

LOCK TABLES `tbl_cuentasbancos` WRITE;
/*!40000 ALTER TABLE `tbl_cuentasbancos` DISABLE KEYS */;
INSERT INTO `tbl_cuentasbancos` VALUES (1,'Colchoneria',2,2000,0,11000,10050,1),(2,'Colchoneria',3,0,0,20000,20000,1),(3,'Colchoneria',3,0,0,80000,80000,1),(4,'Colchoneria',4,5500,0,59500,31500,1),(5,'Colchoneria',2,8000,0,70000,70000,1);
/*!40000 ALTER TABLE `tbl_cuentasbancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamentos`
--

DROP TABLE IF EXISTS `tbl_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_departamentos` (
  `pk_id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(25) NOT NULL,
  `descripcion_departamento` varchar(75) NOT NULL,
  `estado_departamento` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6001 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamentos`
--

LOCK TABLES `tbl_departamentos` WRITE;
/*!40000 ALTER TABLE `tbl_departamentos` DISABLE KEYS */;
INSERT INTO `tbl_departamentos` VALUES (2000,'Logistica','DEPTO. LOGISTICA',1),(3000,'Compras','DEPTO. COMPRAS',1),(4000,'Comercial','DEPTO. COMERCIAL',1),(5000,'Marketing Y Publicidad','DEPTO. Marketing y Publicidad',0),(6000,'Recursos Humanos','DEPTO. RRHH',0);
/*!40000 ALTER TABLE `tbl_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detallenominas`
--

DROP TABLE IF EXISTS `tbl_detallenominas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_detallenominas` (
  `pk_id_nomina` int NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  `salario_nomina` float NOT NULL,
  `totalHorasExtras_nomina` float NOT NULL,
  `totalPercepciones_nomina` float DEFAULT '0',
  `totalDeducciones_nomina` float DEFAULT '0',
  `liquidez_nomina` float NOT NULL,
  PRIMARY KEY (`pk_id_nomina`,`fk_id_trabajador`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  CONSTRAINT `tbl_detallenominas_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detallenominas`
--

LOCK TABLES `tbl_detallenominas` WRITE;
/*!40000 ALTER TABLE `tbl_detallenominas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallenominas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disponibilidad`
--

DROP TABLE IF EXISTS `tbl_disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_disponibilidad` (
  `Pk_idDispo` int NOT NULL,
  `fecha_dispo` date DEFAULT NULL,
  `Saldo_Dispo` float DEFAULT NULL,
  `Comentario_Dispo` varchar(45) DEFAULT NULL,
  `fk_cuenta_Dispo` int DEFAULT NULL,
  PRIMARY KEY (`Pk_idDispo`),
  KEY `fk_cuenta_Dispo` (`fk_cuenta_Dispo`),
  CONSTRAINT `tbl_disponibilidad_ibfk_1` FOREIGN KEY (`fk_cuenta_Dispo`) REFERENCES `tbl_cuentasbancos` (`Pk_idCuentas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disponibilidad`
--

LOCK TABLES `tbl_disponibilidad` WRITE;
/*!40000 ALTER TABLE `tbl_disponibilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadoclasecuenta`
--

DROP TABLE IF EXISTS `tbl_encabezadoclasecuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_encabezadoclasecuenta` (
  `pkid_encabezadocuenta` int NOT NULL,
  `nombre_tipocuenta` varchar(50) NOT NULL,
  `estatus_clasecuenta` tinyint NOT NULL,
  PRIMARY KEY (`pkid_encabezadocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadoclasecuenta`
--

LOCK TABLES `tbl_encabezadoclasecuenta` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadoclasecuenta` DISABLE KEYS */;
INSERT INTO `tbl_encabezadoclasecuenta` VALUES (21,'Activo',1),(85,'Bancos',1);
/*!40000 ALTER TABLE `tbl_encabezadoclasecuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadonominas`
--

DROP TABLE IF EXISTS `tbl_encabezadonominas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_encabezadonominas` (
  `pk_id_nomina` int NOT NULL,
  `fechaPago_nomina` date NOT NULL,
  `tipoPago_nomina` tinyint NOT NULL,
  `mesPagado_nomina` varchar(50) NOT NULL,
  `anioPagado_nomina` varchar(50) NOT NULL,
  `total_nomina` float DEFAULT '0',
  PRIMARY KEY (`pk_id_nomina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadonominas`
--

LOCK TABLES `tbl_encabezadonominas` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadonominas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadonominas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_envio`
--

DROP TABLE IF EXISTS `tbl_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_envio` (
  `pk_envio` int NOT NULL,
  `fk_transporte` int NOT NULL,
  `fk_ruta` int NOT NULL,
  `fk_transportista` int NOT NULL,
  `tiempo_estimado` varchar(100) DEFAULT NULL,
  `fecha_entrega` varchar(100) DEFAULT NULL,
  `fk_lote` int NOT NULL,
  `fk_bodega` int NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `observaciones_envio` varchar(100) DEFAULT NULL,
  `destino_envio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_envio`),
  KEY `fk_transporte` (`fk_transporte`),
  KEY `fk_ruta` (`fk_ruta`),
  KEY `fk_transportista` (`fk_transportista`),
  KEY `fk_lote` (`fk_lote`),
  KEY `fk_bodega` (`fk_bodega`),
  CONSTRAINT `tbl_envio_ibfk_1` FOREIGN KEY (`fk_transporte`) REFERENCES `tbl_transporte` (`pk_codigo_transporte`),
  CONSTRAINT `tbl_envio_ibfk_2` FOREIGN KEY (`fk_ruta`) REFERENCES `tbl_ruta` (`pk_codigo_ruta`),
  CONSTRAINT `tbl_envio_ibfk_3` FOREIGN KEY (`fk_transportista`) REFERENCES `tbl_transportista` (`pk_transportista`),
  CONSTRAINT `tbl_envio_ibfk_4` FOREIGN KEY (`fk_lote`) REFERENCES `tbl_lote` (`pk_codigo_lote`),
  CONSTRAINT `tbl_envio_ibfk_5` FOREIGN KEY (`fk_bodega`) REFERENCES `tbl_bodega` (`pk_codigo_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_envio`
--

LOCK TABLES `tbl_envio` WRITE;
/*!40000 ALTER TABLE `tbl_envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadosfinancieros`
--

DROP TABLE IF EXISTS `tbl_estadosfinancieros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estadosfinancieros` (
  `Pk_EstadosFinancieros` float NOT NULL,
  `ActivoCirculante` float NOT NULL,
  `ActivoNoCirculante` float NOT NULL,
  `PasivoACortoPlazo` float NOT NULL,
  `PasivoALargoPlazo` float NOT NULL,
  `CapitalContable` float NOT NULL,
  `ResultadoAPeriodo` float NOT NULL,
  PRIMARY KEY (`Pk_EstadosFinancieros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadosfinancieros`
--

LOCK TABLES `tbl_estadosfinancieros` WRITE;
/*!40000 ALTER TABLE `tbl_estadosfinancieros` DISABLE KEYS */;
INSERT INTO `tbl_estadosfinancieros` VALUES (1,1,1,1,1,1,1),(2,2,2,2,2,2,2),(20,20,202,20,202,20,20),(123,40,40,40,40,40,40),(1234,7000,6500,7500.5,900.9,500001,1890.7);
/*!40000 ALTER TABLE `tbl_estadosfinancieros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_exisbodega`
--

DROP TABLE IF EXISTS `tbl_exisbodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_exisbodega` (
  `fk_codigo_bodega` int NOT NULL,
  `fk_codigo_producto` int NOT NULL,
  `existencia_producto` float(100,2) DEFAULT NULL,
  PRIMARY KEY (`fk_codigo_bodega`,`fk_codigo_producto`),
  KEY `fk_codigo_producto` (`fk_codigo_producto`),
  CONSTRAINT `tbl_exisbodega_ibfk_1` FOREIGN KEY (`fk_codigo_bodega`) REFERENCES `tbl_bodega` (`pk_codigo_bodega`),
  CONSTRAINT `tbl_exisbodega_ibfk_2` FOREIGN KEY (`fk_codigo_producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_exisbodega`
--

LOCK TABLES `tbl_exisbodega` WRITE;
/*!40000 ALTER TABLE `tbl_exisbodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_exisbodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_horasextras`
--

DROP TABLE IF EXISTS `tbl_horasextras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_horasextras` (
  `fk_id_trabajador` int NOT NULL,
  `fecha_horasextras` date NOT NULL,
  `cantidadHorasr_horasextras` float NOT NULL,
  PRIMARY KEY (`fk_id_trabajador`,`fecha_horasextras`),
  CONSTRAINT `tbl_horasextras_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_horasextras`
--

LOCK TABLES `tbl_horasextras` WRITE;
/*!40000 ALTER TABLE `tbl_horasextras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_horasextras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_linea`
--

DROP TABLE IF EXISTS `tbl_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_linea` (
  `pk_codigo_linea` int NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_linea`
--

LOCK TABLES `tbl_linea` WRITE;
/*!40000 ALTER TABLE `tbl_linea` DISABLE KEYS */;
INSERT INTO `tbl_linea` VALUES (1,'prueba '),(2,'LINEA ENSUEÑO MODERNO'),(3,'LINEA ECONOMICA RESORTES'),(4,'LINEA ECONOMICA ESPONJA');
/*!40000 ALTER TABLE `tbl_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lote`
--

DROP TABLE IF EXISTS `tbl_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_lote` (
  `pk_codigo_lote` int NOT NULL AUTO_INCREMENT,
  `fk_codigo_producto` int NOT NULL,
  `cantidad_producto_lote` int NOT NULL,
  PRIMARY KEY (`pk_codigo_lote`),
  KEY `fk_codigo_producto` (`fk_codigo_producto`),
  CONSTRAINT `tbl_lote_ibfk_1` FOREIGN KEY (`fk_codigo_producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lote`
--

LOCK TABLES `tbl_lote` WRITE;
/*!40000 ALTER TABLE `tbl_lote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marca` (
  `pk_codigo_marca` int NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'Olimpia');
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_miembros`
--

DROP TABLE IF EXISTS `tbl_miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_miembros` (
  `Pk_idMiembros` int NOT NULL,
  `Nombre_Miembros` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `DPI` varchar(20) DEFAULT NULL,
  `estado_miembros` tinyint DEFAULT '0',
  PRIMARY KEY (`Pk_idMiembros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_miembros`
--

LOCK TABLES `tbl_miembros` WRITE;
/*!40000 ALTER TABLE `tbl_miembros` DISABLE KEYS */;
INSERT INTO `tbl_miembros` VALUES (1,'Joshua Alejandro Barrios Ortíz','Guatemala','3019 09201 0101',1),(2,'Jorge Mario Marroquin Roca','Guatemala','3323 09381 0101',1),(3,'Yordi Daniel Hernadez ','Guatemala','9212 23401 0101',1),(4,'Ester Daniela Lopez Cruz','Guatemala','5893 93301 0101',1),(5,'Derek Leonel Herrera Pineda','Guatemala','3232 03211 0101',1);
/*!40000 ALTER TABLE `tbl_miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulos`
--

DROP TABLE IF EXISTS `tbl_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modulos` (
  `pk_id_modulos` int NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL,
  `descripcion_modulo` varchar(150) NOT NULL,
  `estado_modulo` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_modulos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulos`
--

LOCK TABLES `tbl_modulos` WRITE;
/*!40000 ALTER TABLE `tbl_modulos` DISABLE KEYS */;
INSERT INTO `tbl_modulos` VALUES (1000,'SEGURIDAD','Seguridad',1),(2000,'LOGISTICA','Logistica',1),(3000,'COMPRAS Y VENTAS','Compras y Ventas',1),(5000,'PRODUCCIÓN','Produccion',1),(6000,'NOMINAS','Nominas',1),(7000,'BANCOS','Bancos',1),(8000,'CONTABILIDAD','Contabilidad',1);
/*!40000 ALTER TABLE `tbl_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moneda`
--

DROP TABLE IF EXISTS `tbl_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_moneda` (
  `MpnedaDolar` float NOT NULL,
  `MonedaEuro` float DEFAULT NULL,
  `MonedaQuetzal` float DEFAULT NULL,
  PRIMARY KEY (`MpnedaDolar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moneda`
--

LOCK TABLES `tbl_moneda` WRITE;
/*!40000 ALTER TABLE `tbl_moneda` DISABLE KEYS */;
INSERT INTO `tbl_moneda` VALUES (1253.85,1253.85,NULL),(12938.5,12938.5,NULL),(140354,140354,NULL),(4555280,4555280,NULL);
/*!40000 ALTER TABLE `tbl_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_montobancario`
--

DROP TABLE IF EXISTS `tbl_montobancario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_montobancario` (
  `pk_id_montbancario` int NOT NULL,
  `saldoI_montbancario` float NOT NULL,
  `TCargos_montbancario` float DEFAULT NULL,
  `TAbonos_montbancario` float DEFAULT NULL,
  `SActual_montbancario` float DEFAULT NULL,
  `SConciliado_montbancario` float DEFAULT NULL,
  PRIMARY KEY (`pk_id_montbancario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_montobancario`
--

LOCK TABLES `tbl_montobancario` WRITE;
/*!40000 ALTER TABLE `tbl_montobancario` DISABLE KEYS */;
INSERT INTO `tbl_montobancario` VALUES (1,43530,1000,2000,44530,44500);
/*!40000 ALTER TABLE `tbl_montobancario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movimiento`
--

DROP TABLE IF EXISTS `tbl_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movimiento` (
  `pkid_movimiento` int NOT NULL,
  `nombre_movimiento` varchar(50) NOT NULL,
  `status_movimiento` tinyint NOT NULL,
  PRIMARY KEY (`pkid_movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movimiento`
--

LOCK TABLES `tbl_movimiento` WRITE;
/*!40000 ALTER TABLE `tbl_movimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movimientos`
--

DROP TABLE IF EXISTS `tbl_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movimientos` (
  `pk_movimientos` int NOT NULL AUTO_INCREMENT,
  `fecha_movimientos` date DEFAULT NULL,
  `detalle_movimientos` varchar(100) DEFAULT NULL,
  `fk_producto_movimiento` int NOT NULL,
  `cantidad_producto_movimiento` int NOT NULL,
  PRIMARY KEY (`pk_movimientos`),
  KEY `fk_producto_movimiento` (`fk_producto_movimiento`),
  CONSTRAINT `tbl_movimientos_ibfk_1` FOREIGN KEY (`fk_producto_movimiento`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movimientos`
--

LOCK TABLES `tbl_movimientos` WRITE;
/*!40000 ALTER TABLE `tbl_movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movimientos_bancos`
--

DROP TABLE IF EXISTS `tbl_movimientos_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movimientos_bancos` (
  `Pk_idMovimientos` int NOT NULL AUTO_INCREMENT,
  `fk_tipo_pago` int NOT NULL,
  `fk_id_concepto` int NOT NULL,
  `fecha_mov` date DEFAULT NULL,
  `fk_Cuenta_banco` int NOT NULL,
  `fk_cuentarelacionada` int NOT NULL,
  `Monto_mov` float DEFAULT NULL,
  PRIMARY KEY (`Pk_idMovimientos`),
  KEY `fk_tipo_pago` (`fk_tipo_pago`),
  KEY `fk_id_concepto` (`fk_id_concepto`),
  KEY `fk_Cuenta_banco` (`fk_Cuenta_banco`),
  KEY `fk_cuentarelacionada` (`fk_cuentarelacionada`),
  CONSTRAINT `tbl_movimientos_bancos_ibfk_1` FOREIGN KEY (`fk_tipo_pago`) REFERENCES `tbl_tipospagos` (`Pk_idTipoPagos`),
  CONSTRAINT `tbl_movimientos_bancos_ibfk_2` FOREIGN KEY (`fk_id_concepto`) REFERENCES `tbl_conceptosbancario` (`Pk_idConcepto`),
  CONSTRAINT `tbl_movimientos_bancos_ibfk_3` FOREIGN KEY (`fk_Cuenta_banco`) REFERENCES `tbl_cuentasbancos` (`Pk_idCuentas`),
  CONSTRAINT `tbl_movimientos_bancos_ibfk_4` FOREIGN KEY (`fk_cuentarelacionada`) REFERENCES `tbl_ctabancarias` (`pk_id_ctabancaria`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movimientos_bancos`
--

LOCK TABLES `tbl_movimientos_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_movimientos_bancos` DISABLE KEYS */;
INSERT INTO `tbl_movimientos_bancos` VALUES (1,2,1,'2022-10-10',1,1,5000),(2,3,6,'2022-11-03',4,5,5600.25),(3,1,3,'2022-01-03',1,1,5600.25),(4,3,2,'2022-02-13',2,2,632.96),(5,1,4,'2022-03-23',3,3,893.56),(6,3,2,'2022-04-17',4,4,15036),(7,3,2,'2022-05-23',5,5,10233.5),(8,1,5,'2022-06-04',1,1,256),(9,2,7,'2022-07-30',2,2,150),(10,2,7,'2022-08-24',3,3,986.77),(11,1,1,'2022-10-10',1,2,6000),(12,2,3,'2022-10-10',2,2,5000),(13,2,3,'2022-11-10',2,2,6800.5),(14,1,2,'2022-11-10',3,3,7000),(15,2,3,'2022-10-10',3,2,10000),(16,1,6,'2022-10-10',3,3,6000),(17,3,2,'2022-10-10',2,2,10000),(18,1,8,'2022-10-10',4,2,2000),(19,1,8,'2022-10-10',4,2,30000),(20,1,8,'2022-10-10',1,2,1000),(21,1,8,'2022-10-10',1,2,1000),(22,1,2,'2022-12-30',5,2,8000),(23,1,2,'2022-11-08',4,2,5500);
/*!40000 ALTER TABLE `tbl_movimientos_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nominas`
--

DROP TABLE IF EXISTS `tbl_nominas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nominas` (
  `pk_id_correlativo` int NOT NULL AUTO_INCREMENT,
  `fk_id_trabajador` int NOT NULL,
  `fechaGenerado_nomina` date NOT NULL,
  `mesPagado_nomina` int NOT NULL,
  `salario_nomina` float NOT NULL,
  `totalHorasExtras_nomina` float NOT NULL,
  `totalPercepciones_nomina` float DEFAULT '0',
  `totalDeducciones_nomina` float DEFAULT '0',
  `liquidez_nomina` float NOT NULL,
  PRIMARY KEY (`pk_id_correlativo`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  CONSTRAINT `tbl_nominas_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nominas`
--

LOCK TABLES `tbl_nominas` WRITE;
/*!40000 ALTER TABLE `tbl_nominas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nominas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ordenes`
--

DROP TABLE IF EXISTS `tbl_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ordenes` (
  `pk_idordenes_tbl_ordenes` int NOT NULL AUTO_INCREMENT,
  `fk_idrecetas_tbl_recetas` int NOT NULL,
  `prioridad_tbl_ordenes` varchar(45) NOT NULL,
  `producto_fabricar_tbl_ordenes` varchar(45) NOT NULL,
  `cantidad_tbl_ordenes` int NOT NULL,
  `fechaini_tbl_ordenes` varchar(25) NOT NULL,
  `fechaentrega_tbl_ordenes` varchar(25) NOT NULL,
  `fechacreacion_orden_tbl_ordenes` varchar(45) NOT NULL,
  `detalle_tbl_ordenes` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_idordenes_tbl_ordenes`),
  KEY `fk_idrecetas_tbl_recetas_idx` (`fk_idrecetas_tbl_recetas`),
  CONSTRAINT `fk_idrecetas_tbl_recetas` FOREIGN KEY (`fk_idrecetas_tbl_recetas`) REFERENCES `tbl_recetas` (`pk_idrecetas_tbl_recetas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ordenes`
--

LOCK TABLES `tbl_ordenes` WRITE;
/*!40000 ALTER TABLE `tbl_ordenes` DISABLE KEYS */;
INSERT INTO `tbl_ordenes` VALUES (1,1,'Urgente','Marco de madera',2,'2022-10-31','2022-11-03','2022-10-30','Este producto es del señor marco'),(2,1,'Normal','patas de madera',1,'2022-11-06','2022-11-12','2022-11-06','esta es de pepito juarez');
/*!40000 ALTER TABLE `tbl_ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_percepciones`
--

DROP TABLE IF EXISTS `tbl_percepciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_percepciones` (
  `pk_id_prestdeduc` int NOT NULL AUTO_INCREMENT,
  `nombre_prestdeduc` varchar(40) NOT NULL,
  `tipo_prestdeduc` tinyint NOT NULL,
  `porcentaje_prestdeduc` float DEFAULT '0',
  `valorFijo_prestdeduc` float DEFAULT '0',
  `estado_prestdeduc` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_prestdeduc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_percepciones`
--

LOCK TABLES `tbl_percepciones` WRITE;
/*!40000 ALTER TABLE `tbl_percepciones` DISABLE KEYS */;
INSERT INTO `tbl_percepciones` VALUES (1,'IGSS',0,4.83,0,1),(2,'FORMACIÓN PROFESIONAL',0,0.1,0,1),(3,'HORAS EXTRAS',1,150,0,1),(4,'BONIFICACIÓN INCENTIVO',1,0,250,0);
/*!40000 ALTER TABLE `tbl_percepciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfiles`
--

DROP TABLE IF EXISTS `tbl_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_perfiles` (
  `pk_id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(150) NOT NULL,
  `estado_perfil` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfiles`
--

LOCK TABLES `tbl_perfiles` WRITE;
/*!40000 ALTER TABLE `tbl_perfiles` DISABLE KEYS */;
INSERT INTO `tbl_perfiles` VALUES (1,'ADMINISTRADOR','contiene todos los permisos del programa',1),(2,'Logistica','Todo logistica',1),(3,'Compras','Compras',1),(4,'Produccion','Produccion',1),(5,'Nominas','Nominas',1),(6,'Bancos','Bancos',1),(7,'Contabilidad','Contabilidad',1),(8,'Auditoria','Todos los permisos',1),(9,'Seguridad','Seguridad',1),(11,'pruebas','pruebas',1);
/*!40000 ALTER TABLE `tbl_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionesusuario`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionesusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionesusuario` (
  `fk_id_aplicacion` int NOT NULL,
  `fk_id_usuario` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionesusuario`
--

LOCK TABLES `tbl_permisosaplicacionesusuario` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionperfil`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionperfil` (
  `fk_id_perfil` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionperfil`
--

LOCK TABLES `tbl_permisosaplicacionperfil` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` DISABLE KEYS */;
INSERT INTO `tbl_permisosaplicacionperfil` VALUES (1,1000,1,1,1,1,1),(1,1001,0,1,1,1,1),(1,1002,1,1,1,1,1),(1,1003,1,1,1,1,1),(1,1004,1,1,1,1,1),(1,1101,1,1,1,1,1),(1,1102,1,1,1,1,1),(1,1103,1,1,1,1,1),(1,1201,1,1,1,1,1),(1,1301,1,1,1,1,1),(1,2000,1,1,1,1,1),(1,2001,1,1,1,1,1),(1,2002,0,0,1,1,1),(1,2003,1,1,1,1,1),(1,3000,1,1,1,1,1),(1,5000,1,1,1,1,1),(1,6000,1,1,1,1,1),(1,6001,1,1,1,1,1),(1,6002,1,1,1,1,1),(1,6003,1,1,1,1,1),(1,6004,1,1,1,1,1),(1,6005,1,1,1,1,1),(1,6006,1,1,1,1,1),(1,6007,1,1,1,1,1),(1,6008,1,1,1,1,1),(1,6101,1,1,1,1,1),(1,6102,1,1,1,1,1),(1,6103,1,1,1,1,1),(1,6104,1,1,1,1,1),(1,6105,1,1,1,1,1),(1,6106,1,1,1,1,1),(1,6201,1,1,1,1,1),(1,6202,1,1,1,1,1),(1,6203,1,1,1,1,1),(1,6301,1,1,1,1,1),(1,6401,1,1,1,1,1),(1,7000,1,1,1,1,1),(1,8000,1,1,1,1,1),(2,2000,1,1,1,1,1),(2,2001,0,0,1,1,1),(2,2002,1,1,1,1,1),(2,2003,1,1,1,1,1),(2,2004,1,1,1,1,1),(2,2005,1,1,1,1,1),(2,2006,1,1,1,1,1),(2,2007,1,1,1,1,1),(2,2008,1,1,1,1,1),(2,2101,1,1,1,1,1),(2,2102,1,1,1,1,1),(2,2103,1,1,1,1,1),(2,2104,1,1,1,1,1),(2,2201,1,1,1,1,1),(2,2202,1,1,1,1,1),(2,2301,1,1,1,1,1),(2,2401,1,1,1,1,1),(3,3000,1,1,1,1,1),(3,3001,1,1,1,1,1),(3,3002,1,1,1,1,1),(3,3003,1,1,1,1,1),(3,3102,1,1,1,1,1),(3,3103,1,1,1,1,1),(3,3104,1,1,1,1,1),(3,3105,1,1,1,1,1),(3,3106,1,1,1,1,1),(3,3107,1,1,1,1,1),(3,3108,1,1,1,1,1),(3,3109,1,1,1,1,1),(3,3110,1,1,1,1,1),(3,3111,1,1,1,1,1),(3,3112,1,1,1,1,1),(3,3113,1,1,1,1,1),(3,3114,1,1,1,1,1),(3,3203,1,1,1,1,1),(3,3302,1,1,1,1,1),(3,3402,1,1,1,1,1),(4,5000,1,1,1,1,1),(4,5001,1,1,1,1,1),(4,5002,1,1,1,1,1),(4,5003,1,1,1,1,1),(4,5004,1,1,1,1,1),(4,5005,1,1,1,1,1),(4,5006,1,1,1,1,1),(4,5101,1,1,1,1,1),(4,5102,1,1,1,1,1),(4,5103,1,1,1,1,1),(4,5301,1,1,1,1,1),(4,5302,1,1,1,1,1),(4,5303,1,1,1,1,1),(4,5304,1,1,1,1,1),(4,5401,1,1,1,1,1),(5,6000,1,1,1,1,1),(5,6001,1,1,1,1,1),(5,6002,1,1,1,1,1),(5,6003,1,1,1,1,1),(5,6004,1,1,1,1,1),(5,6005,1,1,1,1,1),(5,6006,1,1,1,1,1),(5,6007,1,1,1,1,1),(5,6008,1,1,1,1,1),(5,6101,1,1,1,1,1),(5,6102,1,1,1,1,1),(5,6103,1,1,1,1,1),(5,6104,1,1,1,1,1),(5,6105,1,1,1,1,1),(5,6106,1,1,1,1,1),(5,6201,1,1,1,1,1),(5,6202,1,1,1,1,1),(5,6203,1,1,1,1,1),(5,6301,1,1,1,1,1),(5,6401,1,1,1,1,1),(6,7000,1,1,1,1,1),(6,7001,1,1,1,1,1),(6,7002,1,1,1,1,1),(6,7003,1,1,1,1,1),(6,7004,1,1,1,1,1),(6,7101,1,1,1,1,1),(6,7102,1,1,1,1,1),(6,7103,1,1,1,1,1),(6,7104,1,1,1,1,1),(6,7105,1,1,1,1,1),(6,7106,1,1,1,1,1),(6,7201,1,1,1,1,1),(6,7202,1,1,1,1,1),(6,7203,1,1,1,1,1),(7,7300,1,1,1,1,1),(7,8000,1,1,1,1,1),(7,8001,1,1,1,1,1),(7,8002,1,1,1,1,1),(7,8003,1,1,1,1,1),(7,8004,1,1,1,1,1),(7,8005,1,1,1,1,1),(7,8006,1,1,1,1,1),(7,8007,1,1,1,1,1),(7,8008,1,1,1,1,1),(7,8009,1,1,1,1,1),(7,8010,1,1,1,1,1),(7,8030,1,1,1,1,1),(7,8031,1,1,1,1,1),(7,8032,1,1,1,1,1),(7,8033,1,1,1,1,1),(7,8034,1,1,1,1,1),(7,8035,1,1,1,1,1),(7,8036,1,1,1,1,1),(7,8037,1,1,1,1,1),(7,8038,1,1,1,1,1),(7,8301,1,1,1,1,1),(7,8401,1,1,1,1,1),(7,8402,1,1,1,1,1),(9,1000,1,1,1,1,1),(9,1001,1,1,1,1,1),(9,1002,1,1,1,1,1),(9,1003,1,1,1,1,1),(9,1004,1,1,1,1,1),(9,1101,1,1,1,1,1),(9,1102,1,1,1,1,1),(9,1103,1,1,1,1,1),(9,1201,1,1,1,1,1),(9,1301,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_polizadetalle`
--

DROP TABLE IF EXISTS `tbl_polizadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_polizadetalle` (
  `Pk_PolizaEncabezado` int NOT NULL,
  `Pk_TipoPoliza` int NOT NULL,
  `pkid_cuenta` int NOT NULL,
  `fechaPoliza` date DEFAULT NULL,
  `tbl_cuentas` int NOT NULL,
  `saldo` float DEFAULT NULL,
  `Pk_TipoOperacion` int NOT NULL,
  `concepto` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`Pk_PolizaEncabezado`,`Pk_TipoPoliza`,`pkid_cuenta`),
  KEY `pkid_cuenta` (`pkid_cuenta`),
  KEY `Pk_TipoOperacion` (`Pk_TipoOperacion`),
  CONSTRAINT `tbl_polizadetalle_ibfk_1` FOREIGN KEY (`Pk_PolizaEncabezado`) REFERENCES `tbl_polizaencabezado` (`Pk_PolizaEncabezado`),
  CONSTRAINT `tbl_polizadetalle_ibfk_2` FOREIGN KEY (`pkid_cuenta`) REFERENCES `tbl_cuentas` (`pkid_cuenta`),
  CONSTRAINT `tbl_polizadetalle_ibfk_3` FOREIGN KEY (`Pk_TipoOperacion`) REFERENCES `tbl_tipooperacion` (`Pk_TipoOperacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_polizadetalle`
--

LOCK TABLES `tbl_polizadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_polizadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_polizadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_polizaencabezado`
--

DROP TABLE IF EXISTS `tbl_polizaencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_polizaencabezado` (
  `Pk_PolizaEncabezado` int NOT NULL,
  `fechaPoliza` date DEFAULT NULL,
  `Pk_TipoPoliza` int NOT NULL,
  PRIMARY KEY (`Pk_PolizaEncabezado`,`Pk_TipoPoliza`),
  KEY `Pk_TipoPoliza` (`Pk_TipoPoliza`),
  CONSTRAINT `tbl_polizaencabezado_ibfk_1` FOREIGN KEY (`Pk_TipoPoliza`) REFERENCES `tbl_tipopoliza` (`Pk_TipoPoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_polizaencabezado`
--

LOCK TABLES `tbl_polizaencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_polizaencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_polizaencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prestacionesindividuales`
--

DROP TABLE IF EXISTS `tbl_prestacionesindividuales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prestacionesindividuales` (
  `pk_id_prestdeducext` int NOT NULL AUTO_INCREMENT,
  `fk_id_prestdeduc` int NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  `mes_prestdeducext` int NOT NULL,
  `cantidad_prestdeducext` float DEFAULT '0',
  PRIMARY KEY (`pk_id_prestdeducext`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  KEY `fk_id_prestdeduc` (`fk_id_prestdeduc`),
  CONSTRAINT `tbl_prestacionesindividuales_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`),
  CONSTRAINT `tbl_prestacionesindividuales_ibfk_2` FOREIGN KEY (`fk_id_prestdeduc`) REFERENCES `tbl_percepciones` (`pk_id_prestdeduc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prestacionesindividuales`
--

LOCK TABLES `tbl_prestacionesindividuales` WRITE;
/*!40000 ALTER TABLE `tbl_prestacionesindividuales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_prestacionesindividuales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_presupuesto`
--

DROP TABLE IF EXISTS `tbl_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_presupuesto` (
  `PKidpresupuesto` int NOT NULL AUTO_INCREMENT,
  `Mes` date NOT NULL,
  `gastosCorrientes` float NOT NULL,
  `gastosPersol` float NOT NULL,
  `gastosFinancieros` float NOT NULL,
  `TransferenciaCorriente` float NOT NULL,
  `TransferenciaCapital` float NOT NULL,
  `ActivosFijos` float NOT NULL,
  `ActivosFinancieros` float NOT NULL,
  `PasivosFinancieros` float NOT NULL,
  `Total_Presupuesto` float DEFAULT NULL,
  PRIMARY KEY (`PKidpresupuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_presupuesto`
--

LOCK TABLES `tbl_presupuesto` WRITE;
/*!40000 ALTER TABLE `tbl_presupuesto` DISABLE KEYS */;
INSERT INTO `tbl_presupuesto` VALUES (8,'2022-11-07',12000,9000,8000,4000,3000,5000,4000,3000,3000),(9,'2022-10-12',1576.01,4896,752.3,4850,14782,120648,14782,18521,NULL);
/*!40000 ALTER TABLE `tbl_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_producto` (
  `pk_codigo_producto` int NOT NULL AUTO_INCREMENT,
  `codigo_referencia` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fk_linea_inventario` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fk_marca` int NOT NULL,
  `existencia` float(100,2) DEFAULT NULL,
  `costo_compra` int DEFAULT NULL,
  `precio_venta` int DEFAULT NULL,
  `estado_producto` varchar(1) DEFAULT NULL,
  `medida_producto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_producto`),
  KEY `fk_marca` (`fk_marca`),
  KEY `fk_linea_inventario` (`fk_linea_inventario`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`fk_marca`) REFERENCES `tbl_marca` (`pk_codigo_marca`),
  CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`fk_linea_inventario`) REFERENCES `tbl_linea` (`pk_codigo_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,'1','Cama Olimpia',1,'1',1,0.00,800,1000,'1',NULL),(2,'2','Cama Olimpia granded',2,'1',1,100.00,1500,2000,'1',NULL),(3,'3','cama olimpia pequeña',3,'1',1,20.00,1000,1200,'1',NULL);
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_puestosdetrabajo`
--

DROP TABLE IF EXISTS `tbl_puestosdetrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_puestosdetrabajo` (
  `pk_id_puesto` int NOT NULL AUTO_INCREMENT,
  `nombre_puesto` varchar(50) NOT NULL,
  `estado_puesto` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=6004 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_puestosdetrabajo`
--

LOCK TABLES `tbl_puestosdetrabajo` WRITE;
/*!40000 ALTER TABLE `tbl_puestosdetrabajo` DISABLE KEYS */;
INSERT INTO `tbl_puestosdetrabajo` VALUES (2001,'JEFE DE LOGISTICA',1),(2002,'ASISTENTE DE LOGISTICA',0),(2003,'ANALISTA DE ABASTECIMIENTO',0),(3001,'GESTOR DE PROVEEDORES',1),(3002,'GESTOR DE PRODUCTOS',1),(3003,'ANALISTA DE COMPRAS',0),(4001,'DIRECTOR COMERCIAL',1),(4002,'GERENTE DE VENTAS',1),(4003,'VENDEDOR',0),(5001,'ANALISTA DE MARKETING',1),(5002,'SUPERVISOR DE MARKETING',1),(5003,'PUBLICISTA',0),(6001,'DIRECTOR DE RRHH',1),(6002,'ADMINISTRADOR DE PERSONAL',1),(6003,'RECLUTADOR',0);
/*!40000 ALTER TABLE `tbl_puestosdetrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recetas`
--

DROP TABLE IF EXISTS `tbl_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_recetas` (
  `pk_idrecetas_tbl_recetas` int NOT NULL AUTO_INCREMENT,
  `producto_tbl_recetas` varchar(45) NOT NULL,
  `nombre_material_tbl_recetas` varchar(100) NOT NULL,
  `cantidad_tbl_recetas` varchar(100) NOT NULL,
  `medida_tbl_recetas` varchar(45) NOT NULL,
  PRIMARY KEY (`pk_idrecetas_tbl_recetas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recetas`
--

LOCK TABLES `tbl_recetas` WRITE;
/*!40000 ALTER TABLE `tbl_recetas` DISABLE KEYS */;
INSERT INTO `tbl_recetas` VALUES (1,'Madera refinada','madera','100','Libras'),(2,'Cama','algodon','3','libras');
/*!40000 ALTER TABLE `tbl_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reg_tipocambio`
--

DROP TABLE IF EXISTS `tbl_reg_tipocambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reg_tipocambio` (
  `Pk_regTipoCambio` int NOT NULL,
  `fecha_RtCambio` date NOT NULL,
  `compra_RtCambio` float DEFAULT NULL,
  `venta_RtCambio` float DEFAULT NULL,
  `Moneda_RtCambio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Pk_regTipoCambio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reg_tipocambio`
--

LOCK TABLES `tbl_reg_tipocambio` WRITE;
/*!40000 ALTER TABLE `tbl_reg_tipocambio` DISABLE KEYS */;
INSERT INTO `tbl_reg_tipocambio` VALUES (2,'2022-10-24',8.02,8.12,'Dolar'),(3,'2022-10-30',1,1,'Quetzal'),(4,'2022-10-30',8.01,8.1,'Euro'),(5,'2022-11-11',5,5,'Dolar S');
/*!40000 ALTER TABLE `tbl_reg_tipocambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_regreporteria`
--

DROP TABLE IF EXISTS `tbl_regreporteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_regreporteria` (
  `idregistro` int NOT NULL AUTO_INCREMENT,
  `ruta` varchar(500) NOT NULL,
  `nombre_archivo` varchar(45) NOT NULL,
  `aplicacion` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idregistro`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_regreporteria`
--

LOCK TABLES `tbl_regreporteria` WRITE;
/*!40000 ALTER TABLE `tbl_regreporteria` DISABLE KEYS */;
INSERT INTO `tbl_regreporteria` VALUES (12,'Modulos\\Nominas\\asg_PercepcionContrato.rpt','asgPercepcionesContrato','6104','Visible'),(14,'Modulos\\Administracion\\ReporteClientes.rpt','Clientes','3001','Visible'),(15,'Modulos\\Administracion\\Proveedores.rpt','Proveedores','3002','Visible'),(16,'Modulos\\Administracion\\Compras.rpt','Compras','3110','Visible'),(17,'Modulos\\Administracion\\OrdenesCompras.rpt','Ordenes de Compra','3109','Visible'),(18,'Modulos\\Administracion\\Comisiones.rpt','Comisiones','3106','Visible');
/*!40000 ALTER TABLE `tbl_regreporteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reportes`
--

DROP TABLE IF EXISTS `tbl_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reportes` (
  `Pk_idReportes` int NOT NULL,
  `fechas_Reportes` date DEFAULT NULL,
  `concepto_Reportes` varchar(45) DEFAULT NULL,
  `Nombre_Reportes` varchar(45) DEFAULT NULL,
  `ubicacion_Reportes` varchar(45) DEFAULT NULL,
  `Banco_Reportes` int DEFAULT NULL,
  PRIMARY KEY (`Pk_idReportes`),
  KEY `Banco_Reportes` (`Banco_Reportes`),
  CONSTRAINT `tbl_reportes_ibfk_1` FOREIGN KEY (`Banco_Reportes`) REFERENCES `tbl_cuentasbancos` (`Pk_idCuentas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reportes`
--

LOCK TABLES `tbl_reportes` WRITE;
/*!40000 ALTER TABLE `tbl_reportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ruta`
--

DROP TABLE IF EXISTS `tbl_ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ruta` (
  `pk_codigo_ruta` int NOT NULL AUTO_INCREMENT,
  `zona` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `descripcion_ruta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_ruta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ruta`
--

LOCK TABLES `tbl_ruta` WRITE;
/*!40000 ALTER TABLE `tbl_ruta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_moneda`
--

DROP TABLE IF EXISTS `tbl_tipo_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_moneda` (
  `pkid_tipo_moneda` int NOT NULL,
  `nombre_tipo_moneda` varchar(50) NOT NULL,
  `descripcion_tipo_moneda` varchar(100) NOT NULL,
  `status_tipo_moneda` tinyint NOT NULL,
  PRIMARY KEY (`pkid_tipo_moneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_moneda`
--

LOCK TABLES `tbl_tipo_moneda` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipocuenta`
--

DROP TABLE IF EXISTS `tbl_tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipocuenta` (
  `pkid_tipocuenta` int NOT NULL,
  `nombre_tipocuenta` varchar(50) NOT NULL,
  `serie_tipocuenta` varchar(50) NOT NULL,
  `estatus_tipocuenta` tinyint NOT NULL,
  PRIMARY KEY (`pkid_tipocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipocuenta`
--

LOCK TABLES `tbl_tipocuenta` WRITE;
/*!40000 ALTER TABLE `tbl_tipocuenta` DISABLE KEYS */;
INSERT INTO `tbl_tipocuenta` VALUES (30,'Bancos','154',1);
/*!40000 ALTER TABLE `tbl_tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipooperacion`
--

DROP TABLE IF EXISTS `tbl_tipooperacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipooperacion` (
  `Pk_TipoOperacion` int NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `status_tipoOperacion` tinyint NOT NULL,
  PRIMARY KEY (`Pk_TipoOperacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipooperacion`
--

LOCK TABLES `tbl_tipooperacion` WRITE;
/*!40000 ALTER TABLE `tbl_tipooperacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipooperacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopoliza`
--

DROP TABLE IF EXISTS `tbl_tipopoliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipopoliza` (
  `Pk_TipoPoliza` int NOT NULL,
  `descripcion` varchar(65) DEFAULT NULL,
  `status_tipoPoliza` tinyint NOT NULL,
  PRIMARY KEY (`Pk_TipoPoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopoliza`
--

LOCK TABLES `tbl_tipopoliza` WRITE;
/*!40000 ALTER TABLE `tbl_tipopoliza` DISABLE KEYS */;
INSERT INTO `tbl_tipopoliza` VALUES (1,'Egresos',1),(2,'Movimientos',1);
/*!40000 ALTER TABLE `tbl_tipopoliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiposmov`
--

DROP TABLE IF EXISTS `tbl_tiposmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tiposmov` (
  `Pk_idTipoMov` int NOT NULL,
  `Concepto_Tipo` varchar(15) DEFAULT NULL,
  `Descripcion_Tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Pk_idTipoMov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiposmov`
--

LOCK TABLES `tbl_tiposmov` WRITE;
/*!40000 ALTER TABLE `tbl_tiposmov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposmov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipospagos`
--

DROP TABLE IF EXISTS `tbl_tipospagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipospagos` (
  `Pk_idTipoPagos` int NOT NULL,
  `Concepto_Tipo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Pk_idTipoPagos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipospagos`
--

LOCK TABLES `tbl_tipospagos` WRITE;
/*!40000 ALTER TABLE `tbl_tipospagos` DISABLE KEYS */;
INSERT INTO `tbl_tipospagos` VALUES (1,'Efectivo'),(2,'Cheque'),(3,'Transferencia'),(4,'Tarjeta de Credito'),(5,'Otros');
/*!40000 ALTER TABLE `tbl_tipospagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipotransporte`
--

DROP TABLE IF EXISTS `tbl_tipotransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipotransporte` (
  `pk_codigo_tipot` int NOT NULL AUTO_INCREMENT,
  `descripscion_tipo_transporte` varchar(100) DEFAULT NULL,
  `estado_tipo_transporte` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_tipot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipotransporte`
--

LOCK TABLES `tbl_tipotransporte` WRITE;
/*!40000 ALTER TABLE `tbl_tipotransporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipotransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_trabajador`
--

DROP TABLE IF EXISTS `tbl_trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_trabajador` (
  `pk_id_trabajador` int NOT NULL AUTO_INCREMENT,
  `fechaAlta_departamento` date NOT NULL,
  `nombre_trabajador` varchar(100) NOT NULL,
  `email_trabajador` varchar(20) NOT NULL,
  `direccion_trabajador` varchar(50) NOT NULL,
  `telefono_trabajador` int NOT NULL,
  `estado_trabajador` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_trabajador`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trabajador`
--

LOCK TABLES `tbl_trabajador` WRITE;
/*!40000 ALTER TABLE `tbl_trabajador` DISABLE KEYS */;
INSERT INTO `tbl_trabajador` VALUES (1,'2022-10-01','Kevin Gonzalez','kevin@gmail.com','Zona 1',42345667,1),(2,'2022-11-01','Miguel Luna','miguel@gmail.com','zona2',44225566,1);
/*!40000 ALTER TABLE `tbl_trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transporte`
--

DROP TABLE IF EXISTS `tbl_transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transporte` (
  `pk_codigo_transporte` int NOT NULL AUTO_INCREMENT,
  `marca_transporte` varchar(100) DEFAULT NULL,
  `fk_tipo` int NOT NULL,
  `peso_transporte` int NOT NULL,
  `estado_transporte` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_transporte`),
  KEY `fk_tipo` (`fk_tipo`),
  CONSTRAINT `tbl_transporte_ibfk_1` FOREIGN KEY (`fk_tipo`) REFERENCES `tbl_tipotransporte` (`pk_codigo_tipot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transporte`
--

LOCK TABLES `tbl_transporte` WRITE;
/*!40000 ALTER TABLE `tbl_transporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transportista`
--

DROP TABLE IF EXISTS `tbl_transportista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transportista` (
  `pk_transportista` int NOT NULL,
  `fk_trabajador` int NOT NULL,
  `nombre_transportista` varchar(100) DEFAULT NULL,
  `estado_transportista` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pk_transportista`),
  KEY `fk_trabajador` (`fk_trabajador`),
  CONSTRAINT `tbl_transportista_ibfk_1` FOREIGN KEY (`fk_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transportista`
--

LOCK TABLES `tbl_transportista` WRITE;
/*!40000 ALTER TABLE `tbl_transportista` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transportista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_traslados`
--

DROP TABLE IF EXISTS `tbl_traslados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_traslados` (
  `pk_codigo_traslado` int NOT NULL,
  `fk_bodega_entrada` int NOT NULL,
  `fk_bodega_salida` int NOT NULL,
  `fk_codigo_producto` int NOT NULL,
  `cantidad_producto` int DEFAULT NULL,
  PRIMARY KEY (`pk_codigo_traslado`),
  KEY `fk_bodega_entrada` (`fk_bodega_entrada`),
  KEY `fk_bodega_salida` (`fk_bodega_salida`),
  KEY `fk_codigo_producto` (`fk_codigo_producto`),
  CONSTRAINT `tbl_traslados_ibfk_1` FOREIGN KEY (`fk_bodega_entrada`) REFERENCES `tbl_bodega` (`pk_codigo_bodega`),
  CONSTRAINT `tbl_traslados_ibfk_2` FOREIGN KEY (`fk_bodega_salida`) REFERENCES `tbl_bodega` (`pk_codigo_bodega`),
  CONSTRAINT `tbl_traslados_ibfk_3` FOREIGN KEY (`fk_codigo_producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_traslados`
--

LOCK TABLES `tbl_traslados` WRITE;
/*!40000 ALTER TABLE `tbl_traslados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_traslados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `pk_id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `username_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `ultima_conexion_usuario` datetime DEFAULT NULL,
  `estado_usuario` tinyint NOT NULL DEFAULT '0',
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'admin','admin','admin','HO0aGo4nM94=','esduardo@gmail.com','2022-07-02 21:00:48',1,'COLOR FAVORITO','ROJO'),(2,'Logistica','Logistica','logistica','X9yc1/l1b2A=','lo@gmail.com',NULL,1,'COLOR FAVORITO','Azul'),(4,'Compras','Ventas','compras','X9yc1/l1b2A=','cm@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(5,'Produccion','produccion','produccion','X9yc1/l1b2A=','pro@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(6,'Nominas','Nominas','nominas','X9yc1/l1b2A=','nominas@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(7,'Bancos','bancos','bancos','X9yc1/l1b2A=','ban@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(8,'Contabilidad','Contabilidad','contabilidad','X9yc1/l1b2A=','conta@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(9,'auditoria','auditoria','auditoria','X9yc1/l1b2A=','audi@gmail.com',NULL,1,'CIUDAD NACIMIENTO','kN3xHnXgGZ4/UKctoyK9eg=='),(15,'Seguridad','Seguridad','seguridad','X9yc1/l1b2A=','seg@gmail.com',NULL,1,'COLOR FAVORITO','TdX9j/kyyKM='),(18,'prueba','prueba','prueba','X9yc1/l1b2A=','prueba@gmail.com',NULL,1,'PRIMER MASCOTA','TdX9j/kyyKM=');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblasociacion`
--

DROP TABLE IF EXISTS `tblasociacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblasociacion` (
  `PkId_Asociacion` varchar(25) NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  `FkId_Clientes` int NOT NULL,
  PRIMARY KEY (`PkId_Asociacion`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  KEY `FkId_Clientes` (`FkId_Clientes`),
  CONSTRAINT `tblasociacion_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`),
  CONSTRAINT `tblasociacion_ibfk_2` FOREIGN KEY (`FkId_Clientes`) REFERENCES `tblclientes` (`PkId_Clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblasociacion`
--

LOCK TABLES `tblasociacion` WRITE;
/*!40000 ALTER TABLE `tblasociacion` DISABLE KEYS */;
INSERT INTO `tblasociacion` VALUES ('Asc1',1,3),('Asc2',2,3),('Asc3',1,4),('Asc4',2,8);
/*!40000 ALTER TABLE `tblasociacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcajaclientes`
--

DROP TABLE IF EXISTS `tblcajaclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcajaclientes` (
  `PkId_CajaClientes` int NOT NULL,
  `FKId_VentasEncabezado` int NOT NULL,
  `abono_CajaClientes` float NOT NULL,
  `SaldoAnterior_CajaClientes` float NOT NULL,
  `SaldoActualizado_CajaClientes` float NOT NULL,
  `FkId_FacturaClientes` int NOT NULL,
  PRIMARY KEY (`PkId_CajaClientes`),
  KEY `FKId_VentasEncabezado` (`FKId_VentasEncabezado`),
  KEY `FkId_FacturaClientes` (`FkId_FacturaClientes`),
  CONSTRAINT `tblcajaclientes_ibfk_1` FOREIGN KEY (`FKId_VentasEncabezado`) REFERENCES `tblventasencabezado` (`PkId_VentasEncabezado`),
  CONSTRAINT `tblcajaclientes_ibfk_2` FOREIGN KEY (`FkId_FacturaClientes`) REFERENCES `tblfacturaclientes` (`PkId_FacturaClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcajaclientes`
--

LOCK TABLES `tblcajaclientes` WRITE;
/*!40000 ALTER TABLE `tblcajaclientes` DISABLE KEYS */;
INSERT INTO `tblcajaclientes` VALUES (1,1,1000,4350,3350,1),(2,2,1000,8700,7700,2),(3,3,100,870,770,3),(4,4,10000,31280,21280,4),(5,5,1500,10000,8500,5),(6,6,1000,1500,500,6);
/*!40000 ALTER TABLE `tblcajaclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcajaproveedores`
--

DROP TABLE IF EXISTS `tblcajaproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcajaproveedores` (
  `PkId_CajaProveedores` int NOT NULL,
  `FkId_ComprasEncabezado` int NOT NULL,
  `Saldo_CajaProveedores` float NOT NULL,
  PRIMARY KEY (`PkId_CajaProveedores`),
  KEY `FkId_ComprasEncabezado` (`FkId_ComprasEncabezado`),
  CONSTRAINT `tblcajaproveedores_ibfk_1` FOREIGN KEY (`FkId_ComprasEncabezado`) REFERENCES `tblcomprasencabezado` (`PkId_ComprasEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcajaproveedores`
--

LOCK TABLES `tblcajaproveedores` WRITE;
/*!40000 ALTER TABLE `tblcajaproveedores` DISABLE KEYS */;
INSERT INTO `tblcajaproveedores` VALUES (1,1,5000);
/*!40000 ALTER TABLE `tblcajaproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcertificacionfacturacion`
--

DROP TABLE IF EXISTS `tblcertificacionfacturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcertificacionfacturacion` (
  `PkId_CertificacionFacturacion` int NOT NULL,
  `NoDocumento_CertificacionFacturacion` varchar(500) DEFAULT NULL,
  `Serie_CertificacionFacturacion` int DEFAULT NULL,
  PRIMARY KEY (`PkId_CertificacionFacturacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcertificacionfacturacion`
--

LOCK TABLES `tblcertificacionfacturacion` WRITE;
/*!40000 ALTER TABLE `tblcertificacionfacturacion` DISABLE KEYS */;
INSERT INTO `tblcertificacionfacturacion` VALUES (1,'8690',6629),(2,'1526',7948),(3,'2616',5215),(4,'9212',255),(5,'8191',321),(6,'9727',6780);
/*!40000 ALTER TABLE `tblcertificacionfacturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientes`
--

DROP TABLE IF EXISTS `tblclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclientes` (
  `PkId_Clientes` int NOT NULL,
  `Dpi_Clientes` varchar(20) DEFAULT NULL,
  `Nit_Clientes` varchar(20) DEFAULT NULL,
  `Nombre_Clientes` varchar(20) DEFAULT NULL,
  `Domicilio_Clientes` varchar(50) DEFAULT NULL,
  `Telefono_Cliente` varchar(15) DEFAULT NULL,
  `Correo_Cliente` varchar(50) DEFAULT NULL,
  `status_Cliente` tinyint DEFAULT NULL,
  PRIMARY KEY (`PkId_Clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientes`
--

LOCK TABLES `tblclientes` WRITE;
/*!40000 ALTER TABLE `tblclientes` DISABLE KEYS */;
INSERT INTO `tblclientes` VALUES (3,'45784578','45154852','Josue Bautista','zona9','45124578','josue@gmail.com',1),(4,'1215421','451214521','Luis Torres','zona8','45124512','luis@gmail.com',1),(6,'1','1','1','1','1','1',0),(7,'1','2','3','2','4','4',0),(8,'1815','6490','Mario','Ciudad','5687','si@gmail.com',1),(9,'1','1','1','1','1','1',0);
/*!40000 ALTER TABLE `tblclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomision`
--

DROP TABLE IF EXISTS `tblcomision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomision` (
  `PkId_Comision` int NOT NULL,
  `fk_id_trabajador` int NOT NULL,
  `PorcentajeComision` float NOT NULL,
  `LiquidezComision` float DEFAULT NULL,
  `FkId_VentasEncabezado` int NOT NULL,
  PRIMARY KEY (`PkId_Comision`),
  KEY `fk_id_trabajador` (`fk_id_trabajador`),
  KEY `FkId_VentasEncabezado` (`FkId_VentasEncabezado`),
  CONSTRAINT `tblcomision_ibfk_1` FOREIGN KEY (`fk_id_trabajador`) REFERENCES `tbl_trabajador` (`pk_id_trabajador`),
  CONSTRAINT `tblcomision_ibfk_2` FOREIGN KEY (`FkId_VentasEncabezado`) REFERENCES `tblventasencabezado` (`PkId_VentasEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomision`
--

LOCK TABLES `tblcomision` WRITE;
/*!40000 ALTER TABLE `tblcomision` DISABLE KEYS */;
INSERT INTO `tblcomision` VALUES (1,1,15,652.5,1);
/*!40000 ALTER TABLE `tblcomision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomprasencabezado`
--

DROP TABLE IF EXISTS `tblcomprasencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomprasencabezado` (
  `PkId_ComprasEncabezado` int NOT NULL,
  `FkId_EncabezadoOrdenCompra` int NOT NULL,
  `FkId_Proveedores` int NOT NULL,
  `FechaCompra_ComprasEncabezado` date DEFAULT NULL,
  `Total_ComprasEncabezado` float NOT NULL,
  PRIMARY KEY (`PkId_ComprasEncabezado`),
  KEY `FkId_Proveedores` (`FkId_Proveedores`),
  KEY `FkId_EncabezadoOrdenCompra` (`FkId_EncabezadoOrdenCompra`),
  CONSTRAINT `tblcomprasencabezado_ibfk_1` FOREIGN KEY (`FkId_Proveedores`) REFERENCES `tblproveedores` (`PkId_Proveedores`),
  CONSTRAINT `tblcomprasencabezado_ibfk_2` FOREIGN KEY (`FkId_EncabezadoOrdenCompra`) REFERENCES `tblencabezadoordencompra` (`PkId_EncabezadoOrdenCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomprasencabezado`
--

LOCK TABLES `tblcomprasencabezado` WRITE;
/*!40000 ALTER TABLE `tblcomprasencabezado` DISABLE KEYS */;
INSERT INTO `tblcomprasencabezado` VALUES (1,1,1,'2022-11-25',5000),(2,2,1,'2022-11-06',10000),(3,3,1,'2022-11-07',8000),(4,2,1,'2022-11-06',10000),(5,5,1,'2022-11-06',10000),(6,2,1,'2022-11-06',20000);
/*!40000 ALTER TABLE `tblcomprasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcotizaciones`
--

DROP TABLE IF EXISTS `tblcotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcotizaciones` (
  `PkId_Cotizaciones` int NOT NULL,
  `FkId_Asociacion` varchar(25) NOT NULL,
  `fk_codigo_producto` int DEFAULT NULL,
  `Descripcion_Cotizaciones` varchar(50) DEFAULT NULL,
  `FechaEmision_Cotizaciones` date DEFAULT NULL,
  `FechaVencimiento_Cotizaciones` date DEFAULT NULL,
  `Cuotas_Cotizaciones` float DEFAULT NULL,
  `Total_Cotizaciones` float DEFAULT NULL,
  PRIMARY KEY (`PkId_Cotizaciones`),
  KEY `FkId_Asociacion` (`FkId_Asociacion`),
  KEY `fk2_codigo_producto` (`fk_codigo_producto`),
  CONSTRAINT `fk2_codigo_producto` FOREIGN KEY (`fk_codigo_producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`),
  CONSTRAINT `tblcotizaciones_ibfk_1` FOREIGN KEY (`FkId_Asociacion`) REFERENCES `tblasociacion` (`PkId_Asociacion`),
  CONSTRAINT `tblcotizaciones_ibfk_2` FOREIGN KEY (`fk_codigo_producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcotizaciones`
--

LOCK TABLES `tblcotizaciones` WRITE;
/*!40000 ALTER TABLE `tblcotizaciones` DISABLE KEYS */;
INSERT INTO `tblcotizaciones` VALUES (1,'Asc1',1,'Cama nuevo','2022-05-23','2022-06-23',5,1000);
/*!40000 ALTER TABLE `tblcotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetallecompra`
--

DROP TABLE IF EXISTS `tbldetallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetallecompra` (
  `PkId_ComprasEncabezado` int NOT NULL,
  `FkId_Producto` int NOT NULL,
  `FkId_EncabezadoOrdenCompra` int NOT NULL,
  `Precio_DetalleCompra` float DEFAULT NULL,
  `Cantidad_DetalleCompra` int NOT NULL,
  `Costo_DetalleCompra` float DEFAULT NULL,
  `Total_DetalleCompra` float DEFAULT NULL,
  KEY `PkId_ComprasEncabezado` (`PkId_ComprasEncabezado`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetallecompra_ibfk_1` FOREIGN KEY (`PkId_ComprasEncabezado`) REFERENCES `tblcomprasencabezado` (`PkId_ComprasEncabezado`),
  CONSTRAINT `tbldetallecompra_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetallecompra`
--

LOCK TABLES `tbldetallecompra` WRITE;
/*!40000 ALTER TABLE `tbldetallecompra` DISABLE KEYS */;
INSERT INTO `tbldetallecompra` VALUES (2,1,2,1000,10,800,10000),(3,1,3,1000,8,800,8000),(4,1,2,1000,10,800,10000),(5,1,5,1000,10,800,10000),(6,2,2,2000,10,1500,20000);
/*!40000 ALTER TABLE `tbldetallecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetallecotizaciones`
--

DROP TABLE IF EXISTS `tbldetallecotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetallecotizaciones` (
  `PkId_Cotizaciones` int NOT NULL,
  `FkId_Producto` int NOT NULL,
  `Cantidad_DetalleCotizaciones` float DEFAULT NULL,
  `Total_DetalleCotizaciones` float DEFAULT NULL,
  KEY `PkId_Cotizaciones` (`PkId_Cotizaciones`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetallecotizaciones_ibfk_1` FOREIGN KEY (`PkId_Cotizaciones`) REFERENCES `tblcotizaciones` (`PkId_Cotizaciones`),
  CONSTRAINT `tbldetallecotizaciones_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetallecotizaciones`
--

LOCK TABLES `tbldetallecotizaciones` WRITE;
/*!40000 ALTER TABLE `tbldetallecotizaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldetallecotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetallefacturaclientes`
--

DROP TABLE IF EXISTS `tbldetallefacturaclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetallefacturaclientes` (
  `PkId_FacturaClientes` int NOT NULL,
  `FkId_Producto` int DEFAULT NULL,
  `CantidadProducto_DetalleFacturaClientes` int DEFAULT NULL,
  `PrecioProducto_DetalleFacturaClientes` float NOT NULL,
  `Costo_DetalleFacturaClientes` float NOT NULL,
  `IvaPorCobrar_DetalleFacturaCliente` float DEFAULT NULL,
  `Total_DetalleFacturaClientes` float DEFAULT NULL,
  KEY `PkId_FacturaClientes` (`PkId_FacturaClientes`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetallefacturaclientes_ibfk_1` FOREIGN KEY (`PkId_FacturaClientes`) REFERENCES `tblfacturaclientes` (`PkId_FacturaClientes`),
  CONSTRAINT `tbldetallefacturaclientes_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetallefacturaclientes`
--

LOCK TABLES `tbldetallefacturaclientes` WRITE;
/*!40000 ALTER TABLE `tbldetallefacturaclientes` DISABLE KEYS */;
INSERT INTO `tbldetallefacturaclientes` VALUES (1,1,5,1000,800,4464.29,5000),(2,1,10,1000,800,8928.57,10000),(3,1,1,1000,800,892.857,1000),(4,1,34,1000,800,30357.1,34000);
/*!40000 ALTER TABLE `tbldetallefacturaclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetalleordencompra`
--

DROP TABLE IF EXISTS `tbldetalleordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetalleordencompra` (
  `PkId_EncabezadoOrdenCompra` int NOT NULL,
  `FkId_Producto` int NOT NULL,
  `Cantidad_DetalleOrdenCompra` int DEFAULT NULL,
  `Precio_DetalleOrdenCompra` float DEFAULT NULL,
  `Costo_DetalleOrdenCompra` float DEFAULT NULL,
  `Total_DetalleOrdenCompra` float DEFAULT NULL,
  KEY `PkId_EncabezadoOrdenCompra` (`PkId_EncabezadoOrdenCompra`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetalleordencompra_ibfk_1` FOREIGN KEY (`PkId_EncabezadoOrdenCompra`) REFERENCES `tblencabezadoordencompra` (`PkId_EncabezadoOrdenCompra`),
  CONSTRAINT `tbldetalleordencompra_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetalleordencompra`
--

LOCK TABLES `tbldetalleordencompra` WRITE;
/*!40000 ALTER TABLE `tbldetalleordencompra` DISABLE KEYS */;
INSERT INTO `tbldetalleordencompra` VALUES (1,1,1,1,1,1),(1,1,1,1,1,1),(1,1,1,1,1,1),(2,1,10,1000,800,10000),(2,1,1,1000,800,1000),(3,1,10,1000,800,10000),(3,1,5,1000,800,5000),(4,1,2,1000,800,2000),(5,1,10,1000,800,10000),(6,2,10,2000,1500,20000);
/*!40000 ALTER TABLE `tbldetalleordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetallepedido`
--

DROP TABLE IF EXISTS `tbldetallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetallepedido` (
  `PkId_EncabezadoPedido` int NOT NULL,
  `FkId_Producto` int NOT NULL,
  `CantidadDetalle_DetallePedido` int DEFAULT NULL,
  `PrecioDetalle_DetallePedido` float DEFAULT NULL,
  `CostoDetalle_DetallePedido` float DEFAULT NULL,
  `TotalDetalle_DetallePedido` float DEFAULT NULL,
  `linea` int DEFAULT NULL,
  KEY `PkId_EncabezadoPedido` (`PkId_EncabezadoPedido`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetallepedido_ibfk_1` FOREIGN KEY (`PkId_EncabezadoPedido`) REFERENCES `tblencabezadopedido` (`PkId_EncabezadoPedido`),
  CONSTRAINT `tbldetallepedido_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetallepedido`
--

LOCK TABLES `tbldetallepedido` WRITE;
/*!40000 ALTER TABLE `tbldetallepedido` DISABLE KEYS */;
INSERT INTO `tbldetallepedido` VALUES (1,1,5,1000,800,5000,0),(2,1,10,1000,800,10000,0),(3,1,1,1000,800,1000,0),(4,1,34,1000,800,34000,0);
/*!40000 ALTER TABLE `tbldetallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetallereservacionpedido`
--

DROP TABLE IF EXISTS `tbldetallereservacionpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetallereservacionpedido` (
  `Pk_Reserva` varchar(20) DEFAULT NULL,
  `Id_producto` int DEFAULT NULL,
  `CantidadDescontar_DetalleReservacionPedido` int DEFAULT NULL,
  `ExistenciaAnterior_DetalleReservacionPedido` int DEFAULT NULL,
  `ExistenciaNueva_DetalleReservacionPedido` int DEFAULT NULL,
  `linea_DetalleReservacionPedido` int DEFAULT NULL,
  KEY `Pk_Reserva` (`Pk_Reserva`),
  CONSTRAINT `tbldetallereservacionpedido_ibfk_1` FOREIGN KEY (`Pk_Reserva`) REFERENCES `tblencabezadoreservacionpedido` (`PkId_Reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetallereservacionpedido`
--

LOCK TABLES `tbldetallereservacionpedido` WRITE;
/*!40000 ALTER TABLE `tbldetallereservacionpedido` DISABLE KEYS */;
INSERT INTO `tbldetallereservacionpedido` VALUES ('Rsp1',1,5,50,45,0),('Rsp2',1,10,45,35,0),('Rsp3',1,1,35,34,0),('Rsp4',1,34,34,0,0);
/*!40000 ALTER TABLE `tbldetallereservacionpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetalleventa`
--

DROP TABLE IF EXISTS `tbldetalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldetalleventa` (
  `PkId_DetalleVenta` int NOT NULL,
  `FkId_Producto` int NOT NULL,
  `FkId_EncabezadoPedido` int NOT NULL,
  `PrecioProducto_DetalleVenta` float NOT NULL,
  `Cantidad_DetalleVenta` int DEFAULT NULL,
  `Costo_DetalleVenta` float NOT NULL,
  `Total_DetalleVenta` float DEFAULT NULL,
  KEY `PkId_DetalleVenta` (`PkId_DetalleVenta`),
  KEY `FkId_Producto` (`FkId_Producto`),
  CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`PkId_DetalleVenta`) REFERENCES `tblventasencabezado` (`PkId_VentasEncabezado`),
  CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`FkId_Producto`) REFERENCES `tbl_producto` (`pk_codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetalleventa`
--

LOCK TABLES `tbldetalleventa` WRITE;
/*!40000 ALTER TABLE `tbldetalleventa` DISABLE KEYS */;
INSERT INTO `tbldetalleventa` VALUES (3,1,3,1000,1,800,1000),(4,1,4,1000,34,800,34000);
/*!40000 ALTER TABLE `tbldetalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblencabezadoordencompra`
--

DROP TABLE IF EXISTS `tblencabezadoordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblencabezadoordencompra` (
  `PkId_EncabezadoOrdenCompra` int NOT NULL,
  `FkId_Proveedores` int NOT NULL,
  `FechaEntrega_EncabezadoOrdenCompra` date DEFAULT NULL,
  `FechaVencimiento_EncabezadoOrdenCompra` date DEFAULT NULL,
  `Estatus_EncabezadoOrdenCompra` tinyint DEFAULT NULL,
  `Total_EncabezadoOrdenCompra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PkId_EncabezadoOrdenCompra`),
  KEY `FkId_Proveedores` (`FkId_Proveedores`),
  CONSTRAINT `tblencabezadoordencompra_ibfk_1` FOREIGN KEY (`FkId_Proveedores`) REFERENCES `tblproveedores` (`PkId_Proveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblencabezadoordencompra`
--

LOCK TABLES `tblencabezadoordencompra` WRITE;
/*!40000 ALTER TABLE `tblencabezadoordencompra` DISABLE KEYS */;
INSERT INTO `tblencabezadoordencompra` VALUES (1,1,'2020-03-25','2020-04-25',1,NULL),(2,1,'2022-11-12','2022-11-12',1,'11000'),(3,1,'2022-11-13','2022-11-13',1,'15000'),(4,1,'2022-11-13','2022-11-13',1,'2000'),(5,1,'2022-11-13','2022-11-13',1,'10000'),(6,1,'2022-11-13','2022-11-13',1,'20000');
/*!40000 ALTER TABLE `tblencabezadoordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblencabezadopedido`
--

DROP TABLE IF EXISTS `tblencabezadopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblencabezadopedido` (
  `PkId_EncabezadoPedido` int NOT NULL,
  `FkIdAsociacion` varchar(25) DEFAULT NULL,
  `FechaVencimineto_EncabezadoPedido` date DEFAULT NULL,
  `FechaEmision_EncabezadoPedido` date DEFAULT NULL,
  `Total_EncabezadoPedido` float DEFAULT NULL,
  `Estatus_EncabezadoPedido` tinyint DEFAULT NULL,
  PRIMARY KEY (`PkId_EncabezadoPedido`),
  KEY `FkIdAsociacion` (`FkIdAsociacion`),
  CONSTRAINT `tblencabezadopedido_ibfk_1` FOREIGN KEY (`FkIdAsociacion`) REFERENCES `tblasociacion` (`PkId_Asociacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblencabezadopedido`
--

LOCK TABLES `tblencabezadopedido` WRITE;
/*!40000 ALTER TABLE `tblencabezadopedido` DISABLE KEYS */;
INSERT INTO `tblencabezadopedido` VALUES (1,'Asc1','2022-11-14','2022-11-07',5000,0),(2,'Asc2','2022-11-14','2022-11-07',10000,0),(3,'Asc1','2022-11-14','2022-11-07',1000,0),(4,'Asc1','2022-11-13','2022-11-06',34000,0),(5,'Asc3','2022-11-14','2022-11-07',10000,0),(6,'Asc4','2022-11-13','2022-11-06',1500,0);
/*!40000 ALTER TABLE `tblencabezadopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblencabezadoreservacionpedido`
--

DROP TABLE IF EXISTS `tblencabezadoreservacionpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblencabezadoreservacionpedido` (
  `PkId_Reserva` varchar(20) NOT NULL,
  `FkId_pedido` int DEFAULT NULL,
  `estatus_Reserva` tinyint DEFAULT NULL,
  PRIMARY KEY (`PkId_Reserva`),
  KEY `FkId_pedido` (`FkId_pedido`),
  CONSTRAINT `tblencabezadoreservacionpedido_ibfk_1` FOREIGN KEY (`FkId_pedido`) REFERENCES `tblencabezadopedido` (`PkId_EncabezadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblencabezadoreservacionpedido`
--

LOCK TABLES `tblencabezadoreservacionpedido` WRITE;
/*!40000 ALTER TABLE `tblencabezadoreservacionpedido` DISABLE KEYS */;
INSERT INTO `tblencabezadoreservacionpedido` VALUES ('Rsp1',1,1),('Rsp2',2,1),('Rsp3',3,1),('Rsp4',4,1);
/*!40000 ALTER TABLE `tblencabezadoreservacionpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfacturaclientes`
--

DROP TABLE IF EXISTS `tblfacturaclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfacturaclientes` (
  `PkId_FacturaClientes` int NOT NULL,
  `FkId_VentasEncabezado` int NOT NULL,
  `FkId_CertificacionFacturacion` int NOT NULL,
  `Serie_FacturaClientes` int NOT NULL,
  `NoDocumento_FacturaClientes` varchar(500) DEFAULT NULL,
  `Nit_FacturaClientes` varchar(20) DEFAULT NULL,
  `FechaEmision_FacturaClientes` date NOT NULL,
  `Total_FacturaClientes` float DEFAULT NULL,
  PRIMARY KEY (`PkId_FacturaClientes`),
  KEY `FkId_VentasEncabezado` (`FkId_VentasEncabezado`),
  KEY `FkId_CertificacionFacturacion` (`FkId_CertificacionFacturacion`),
  CONSTRAINT `tblfacturaclientes_ibfk_1` FOREIGN KEY (`FkId_VentasEncabezado`) REFERENCES `tblventasencabezado` (`PkId_VentasEncabezado`),
  CONSTRAINT `tblfacturaclientes_ibfk_2` FOREIGN KEY (`FkId_CertificacionFacturacion`) REFERENCES `tblcertificacionfacturacion` (`PkId_CertificacionFacturacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfacturaclientes`
--

LOCK TABLES `tblfacturaclientes` WRITE;
/*!40000 ALTER TABLE `tblfacturaclientes` DISABLE KEYS */;
INSERT INTO `tblfacturaclientes` VALUES (1,1,1,8690,'6629','451254','2022-11-07',4350),(2,2,2,1526,'7948','4512','2022-11-07',8700),(3,3,3,2616,'5215','451245','2022-11-07',870),(4,4,4,9212,'255','4512','2022-11-06',31280),(5,5,5,8191,'321','451214521','2022-11-07',10000),(6,6,6,9727,'6780','6490','2022-11-06',1500);
/*!40000 ALTER TABLE `tblfacturaclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmoraclientes`
--

DROP TABLE IF EXISTS `tblmoraclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmoraclientes` (
  `PkId_MoraClientes` int NOT NULL,
  `FkId_Clientes` int DEFAULT NULL,
  `FkId_VentasEncabezado` int DEFAULT NULL,
  `FkId_CajaClientes` int DEFAULT NULL,
  `TotalMora_MoraCliente` float DEFAULT NULL,
  PRIMARY KEY (`PkId_MoraClientes`),
  KEY `FkId_Clientes` (`FkId_Clientes`),
  KEY `FkId_VentasEncabezado` (`FkId_VentasEncabezado`),
  KEY `FkId_CajaClientes` (`FkId_CajaClientes`),
  CONSTRAINT `tblmoraclientes_ibfk_1` FOREIGN KEY (`FkId_Clientes`) REFERENCES `tblclientes` (`PkId_Clientes`),
  CONSTRAINT `tblmoraclientes_ibfk_2` FOREIGN KEY (`FkId_VentasEncabezado`) REFERENCES `tblventasencabezado` (`PkId_VentasEncabezado`),
  CONSTRAINT `tblmoraclientes_ibfk_3` FOREIGN KEY (`FkId_CajaClientes`) REFERENCES `tblcajaclientes` (`PkId_CajaClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmoraclientes`
--

LOCK TABLES `tblmoraclientes` WRITE;
/*!40000 ALTER TABLE `tblmoraclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmoraclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmoraproveedores`
--

DROP TABLE IF EXISTS `tblmoraproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmoraproveedores` (
  `PkId_MoraProveedores` int NOT NULL,
  `FkId_Proveedores` int DEFAULT NULL,
  `FkId_cajaProveedores` int DEFAULT NULL,
  `FkId_detalleordencompra` int DEFAULT NULL,
  `TotalMora_MoraProveedores` float DEFAULT NULL,
  PRIMARY KEY (`PkId_MoraProveedores`),
  KEY `FkId_Proveedores` (`FkId_Proveedores`),
  KEY `FkId_cajaProveedores` (`FkId_cajaProveedores`),
  KEY `FkId_detalleordencompra` (`FkId_detalleordencompra`),
  CONSTRAINT `tblmoraproveedores_ibfk_1` FOREIGN KEY (`FkId_Proveedores`) REFERENCES `tblproveedores` (`PkId_Proveedores`),
  CONSTRAINT `tblmoraproveedores_ibfk_2` FOREIGN KEY (`FkId_cajaProveedores`) REFERENCES `tblcajaproveedores` (`PkId_CajaProveedores`),
  CONSTRAINT `tblmoraproveedores_ibfk_3` FOREIGN KEY (`FkId_detalleordencompra`) REFERENCES `tbldetalleordencompra` (`PkId_EncabezadoOrdenCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmoraproveedores`
--

LOCK TABLES `tblmoraproveedores` WRITE;
/*!40000 ALTER TABLE `tblmoraproveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmoraproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproveedores`
--

DROP TABLE IF EXISTS `tblproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproveedores` (
  `PkId_Proveedores` int NOT NULL,
  `Nombre_Proveedores` varchar(30) NOT NULL,
  `Nit_Proveedores` varchar(20) NOT NULL,
  `Telefono_Proveedores` varchar(12) NOT NULL,
  `Domicilio_Proveedores` varchar(30) NOT NULL,
  `Correo_Proveedores` varchar(50) DEFAULT NULL,
  `RubroGiro_Proveedores` varchar(20) DEFAULT NULL,
  `status_Proveedores` tinyint DEFAULT NULL,
  PRIMARY KEY (`PkId_Proveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproveedores`
--

LOCK TABLES `tblproveedores` WRITE;
/*!40000 ALTER TABLE `tblproveedores` DISABLE KEYS */;
INSERT INTO `tblproveedores` VALUES (1,'Mario','1','546465464','Zona 2','mmejia@gmail.com','654646',1);
/*!40000 ALTER TABLE `tblproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreciboclientes`
--

DROP TABLE IF EXISTS `tblreciboclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreciboclientes` (
  `PkId_ReciboClientes` int NOT NULL AUTO_INCREMENT,
  `FkId_CajaClientes` int NOT NULL,
  `Nit_ReciboClientes` varchar(20) NOT NULL,
  `fechaEmision_ReciboClientes` date NOT NULL,
  PRIMARY KEY (`PkId_ReciboClientes`),
  KEY `FkId_CajaClientes` (`FkId_CajaClientes`),
  CONSTRAINT `tblreciboclientes_ibfk_1` FOREIGN KEY (`FkId_CajaClientes`) REFERENCES `tblcajaclientes` (`PkId_CajaClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreciboclientes`
--

LOCK TABLES `tblreciboclientes` WRITE;
/*!40000 ALTER TABLE `tblreciboclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreciboclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblserie`
--

DROP TABLE IF EXISTS `tblserie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblserie` (
  `PkId_Serie` int NOT NULL,
  PRIMARY KEY (`PkId_Serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblserie`
--

LOCK TABLES `tblserie` WRITE;
/*!40000 ALTER TABLE `tblserie` DISABLE KEYS */;
INSERT INTO `tblserie` VALUES (1),(2);
/*!40000 ALTER TABLE `tblserie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblventasencabezado`
--

DROP TABLE IF EXISTS `tblventasencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblventasencabezado` (
  `PkId_VentasEncabezado` int NOT NULL,
  `FKId_Pedido` int NOT NULL,
  `FkId_Asociacion` varchar(25) DEFAULT NULL,
  `FechaVenta_VentasEncabezado` date DEFAULT NULL,
  `Total_VentasEncabezado` int DEFAULT NULL,
  PRIMARY KEY (`PkId_VentasEncabezado`),
  KEY `FkId_Asociacion` (`FkId_Asociacion`),
  KEY `FKId_Pedido` (`FKId_Pedido`),
  CONSTRAINT `tblventasencabezado_ibfk_1` FOREIGN KEY (`FkId_Asociacion`) REFERENCES `tblasociacion` (`PkId_Asociacion`),
  CONSTRAINT `tblventasencabezado_ibfk_2` FOREIGN KEY (`FKId_Pedido`) REFERENCES `tblencabezadopedido` (`PkId_EncabezadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblventasencabezado`
--

LOCK TABLES `tblventasencabezado` WRITE;
/*!40000 ALTER TABLE `tblventasencabezado` DISABLE KEYS */;
INSERT INTO `tblventasencabezado` VALUES (1,1,'Asc1','2022-11-07',4350),(2,2,'Asc2','2022-11-07',8700),(3,3,'Asc1','2022-11-07',870),(4,4,'Asc1','2022-11-06',31280),(5,5,'Asc3','2022-11-07',10000),(6,6,'Asc4','2022-11-06',1500);
/*!40000 ALTER TABLE `tblventasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_aplicacion_perfil`
--

DROP TABLE IF EXISTS `vista_aplicacion_perfil`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacion_perfil` AS SELECT 
 1 AS `ID`,
 1 AS `Perfil`,
 1 AS `Aplicacion`,
 1 AS `Insertar`,
 1 AS `Modificar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_aplicacionusuario`
--

DROP TABLE IF EXISTS `vista_aplicacionusuario`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacionusuario` AS SELECT 
 1 AS `Aplicacion`,
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `Insertar`,
 1 AS `Editar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_modulo_aplicacion`
--

DROP TABLE IF EXISTS `vista_modulo_aplicacion`;
/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_modulo_aplicacion` AS SELECT 
 1 AS `ID`,
 1 AS `Modulo`,
 1 AS `Aplicacion`,
 1 AS `Nombre`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_perfil_usuario`
--

DROP TABLE IF EXISTS `vista_perfil_usuario`;
/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_perfil_usuario` AS SELECT 
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `nickName`,
 1 AS `perfil`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vs_asig_contrato_trabajador`
--

DROP TABLE IF EXISTS `vs_asig_contrato_trabajador`;
/*!50001 DROP VIEW IF EXISTS `vs_asig_contrato_trabajador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vs_asig_contrato_trabajador` AS SELECT 
 1 AS `ID`,
 1 AS `Salario`,
 1 AS `Codigo`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vs_asig_puesto`
--

DROP TABLE IF EXISTS `vs_asig_puesto`;
/*!50001 DROP VIEW IF EXISTS `vs_asig_puesto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vs_asig_puesto` AS SELECT 
 1 AS `ID`,
 1 AS `Puestos`,
 1 AS `Codigo`,
 1 AS `Departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vs_asig_puesto_trabajo`
--

DROP TABLE IF EXISTS `vs_asig_puesto_trabajo`;
/*!50001 DROP VIEW IF EXISTS `vs_asig_puesto_trabajo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vs_asig_puesto_trabajo` AS SELECT 
 1 AS `ID`,
 1 AS `Puestos`,
 1 AS `Codigo`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_aplicacion_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacion_perfil` AS select `b`.`fk_id_perfil` AS `ID`,`a`.`nombre_perfil` AS `Perfil`,`b`.`fk_id_aplicacion` AS `Aplicacion`,`b`.`guardar_permiso` AS `Insertar`,`b`.`modificar_permiso` AS `Modificar`,`b`.`eliminar_permiso` AS `Eliminar`,`b`.`buscar_permiso` AS `Buscar`,`b`.`imprimir_permiso` AS `Reporte` from (`tbl_permisosaplicacionperfil` `b` join `tbl_perfiles` `a` on((`a`.`pk_id_perfil` = `b`.`fk_id_perfil`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_aplicacionusuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacionusuario` AS select `b`.`fk_id_aplicacion` AS `Aplicacion`,`b`.`fk_id_usuario` AS `ID`,`a`.`nombre_usuario` AS `Usuario`,`b`.`guardar_permiso` AS `Insertar`,`b`.`modificar_permiso` AS `Editar`,`b`.`eliminar_permiso` AS `Eliminar`,`b`.`buscar_permiso` AS `Buscar`,`b`.`imprimir_permiso` AS `Reporte` from (`tbl_permisosaplicacionesusuario` `b` join `tbl_usuarios` `a` on((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_modulo_aplicacion`
--

/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_modulo_aplicacion` AS select `b`.`fk_id_modulos` AS `ID`,`a`.`nombre_modulo` AS `Modulo`,`b`.`fk_id_aplicacion` AS `Aplicacion`,`c`.`nombre_aplicacion` AS `Nombre`,`c`.`descripcion_aplicacion` AS `Descripcion` from ((`tbl_asignacionmoduloaplicacion` `b` join `tbl_modulos` `a` on((`a`.`pk_id_modulos` = `b`.`fk_id_modulos`))) join `tbl_aplicaciones` `c` on((`c`.`pk_id_aplicacion` = `b`.`fk_id_aplicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_perfil_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_perfil_usuario` AS select `b`.`fk_id_usuario` AS `ID`,`a`.`nombre_usuario` AS `Usuario`,`a`.`username_usuario` AS `nickName`,`b`.`fk_id_perfil` AS `perfil`,`c`.`nombre_perfil` AS `Nombre` from ((`tbl_asignacionesperfilsusuario` `b` join `tbl_usuarios` `a` on((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`))) join `tbl_perfiles` `c` on((`c`.`pk_id_perfil` = `b`.`fk_id_perfil`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vs_asig_contrato_trabajador`
--

/*!50001 DROP VIEW IF EXISTS `vs_asig_contrato_trabajador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vs_asig_contrato_trabajador` AS select `a`.`fk_id_contrato` AS `ID`,`b`.`salario_contrato` AS `Salario`,`a`.`fk_id_trabajador` AS `Codigo`,`c`.`nombre_trabajador` AS `Nombre` from ((`tbl_asignacion_contratotrabajador` `a` join `tbl_contrato` `b` on((`b`.`pk_id_contrato` = `a`.`fk_id_contrato`))) join `tbl_trabajador` `c` on((`c`.`pk_id_trabajador` = `a`.`fk_id_trabajador`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vs_asig_puesto`
--

/*!50001 DROP VIEW IF EXISTS `vs_asig_puesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vs_asig_puesto` AS select `a`.`fk_id_puesto` AS `ID`,`b`.`nombre_puesto` AS `Puestos`,`a`.`fk_id_departamento` AS `Codigo`,`c`.`nombre_departamento` AS `Departamento` from ((`tbl_asignacion_puestodepartamento` `a` join `tbl_puestosdetrabajo` `b` on((`b`.`pk_id_puesto` = `a`.`fk_id_puesto`))) join `tbl_departamentos` `c` on((`c`.`pk_id_departamento` = `a`.`fk_id_departamento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vs_asig_puesto_trabajo`
--

/*!50001 DROP VIEW IF EXISTS `vs_asig_puesto_trabajo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`administrador`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vs_asig_puesto_trabajo` AS select `a`.`fk_id_puesto` AS `ID`,`b`.`nombre_puesto` AS `Puestos`,`a`.`fk_id_trabajador` AS `Codigo`,`c`.`nombre_trabajador` AS `Nombre` from ((`tbl_asignacion_puestotrabajador` `a` join `tbl_puestosdetrabajo` `b` on((`b`.`pk_id_puesto` = `a`.`fk_id_puesto`))) join `tbl_trabajador` `c` on((`c`.`pk_id_trabajador` = `a`.`fk_id_trabajador`))) */;
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

-- Dump completed on 2022-11-08  8:06:15
CREATE TABLE alumnos
 (
  carnet_alumno VARCHAR(15),
  nombre_alumno VARCHAR(45),
  direccion_alumno VARCHAR(45),
  telefono_alumno VARCHAR(45),
  email_alumno VARCHAR(20),
  estatus_alumno VARCHAR(1),
  PRIMARY KEY (carnet_alumno)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

-- -----------------------------------------------------
-- Table `educativo`.`Maestros`
-- -----------------------------------------------------
CREATE TABLE maestros
(
  codigo_maestro VARCHAR(5),
  nombre_maestro VARCHAR(45),
  direccion_maestro VARCHAR(45),
  telefono_maetro VARCHAR(45),
  email_maestro VARCHAR(20),
  estatus_maestro VARCHAR(1),
  PRIMARY KEY (codigo_maestro)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Facultades`
-- -----------------------------------------------------
CREATE TABLE facultades
(
  codigo_facultad VARCHAR(5),
  nombre_facultad VARCHAR(45),
  estatus_facultad VARCHAR(1),
  PRIMARY KEY (codigo_facultad)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Carreras`
-- -----------------------------------------------------
CREATE TABLE carreras
(
  codigo_carrera VARCHAR(5),
  nombre_carrera VARCHAR(45),
  codigo_facultad VARCHAR(5),
  estatus_carrera VARCHAR(1),
  PRIMARY KEY (codigo_carrera),
  FOREIGN KEY (codigo_facultad) REFERENCES facultades(codigo_facultad)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE cursos
(
  codigo_curso VARCHAR(5),
  nombre_curso VARCHAR(45),
  estatus_curso VARCHAR(1),
  PRIMARY KEY (codigo_curso)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Secciones`
-- -----------------------------------------------------
CREATE TABLE secciones
(
  codigo_seccion VARCHAR(5),
  nombre_seccion VARCHAR(45),
  estatus_seccion VARCHAR(1),
  PRIMARY KEY (codigo_seccion)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Sedes`
-- -----------------------------------------------------
CREATE TABLE sedes
(
  codigo_sede VARCHAR(5),
  nombre_sede VARCHAR(45),
  estatus_sede VARCHAR(1),
  PRIMARY KEY (codigo_sede)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Aulas`
-- -----------------------------------------------------
CREATE TABLE aulas
(
  codigo_aula VARCHAR(5),
  nombre_aula VARCHAR(45),
  estatus_aula VARCHAR(1),
  PRIMARY KEY (codigo_aula)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE jornadas
(
	codigo_jornada VARCHAR(5),
    nombre_jornada VARCHAR(45),
    estatus_jornada VARCHAR(1),
    PRIMARY KEY (codigo_jornada)
) ENGINE=INNODB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Asignacion_cursos_alumnos`
-- -----------------------------------------------------
CREATE TABLE asignacioncursosalumnos
(
  codigo_carrera VARCHAR(5),
  codigo_sede VARCHAR(5),
  codigo_jornada VARCHAR(5),
  codigo_seccion VARCHAR(5),
  codigo_aula VARCHAR(5),
  codigo_curso VARCHAR(5),
  carnet_alumno VARCHAR(15),
  nota_asignacioncursoalumnos FLOAT(10,2), 
  PRIMARY KEY (codigo_carrera, codigo_sede, codigo_jornada, codigo_seccion, codigo_aula, codigo_curso, carnet_alumno),
  FOREIGN KEY (codigo_carrera) REFERENCES carreras(codigo_carrera),
  FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_sede),
  FOREIGN KEY (codigo_jornada) REFERENCES jornadas(codigo_jornada),
  FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_seccion),
  FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aula),
  FOREIGN KEY (codigo_curso) REFERENCES cursos(codigo_curso),
  FOREIGN KEY (carnet_alumno) REFERENCES alumnos(carnet_alumno)
  ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
-- -----------------------------------------------------
-- Table `educativo`.`Asignacion_cursos_maestros`
-- -----------------------------------------------------
CREATE TABLE asignacioncursosmastros
(
  codigo_carrera VARCHAR(5),
  codigo_sede VARCHAR(5),
  codigo_jornada VARCHAR(5),
  codigo_seccion VARCHAR(5),
  codigo_aula VARCHAR(5),
  codigo_curso VARCHAR(5),
  codigo_maestro VARCHAR(5),
  PRIMARY KEY (codigo_carrera, codigo_sede, codigo_jornada, codigo_seccion, codigo_aula, codigo_curso),
  FOREIGN KEY (codigo_carrera) REFERENCES carreras(codigo_carrera),
  FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_sede),
  FOREIGN KEY (codigo_jornada) REFERENCES jornadas(codigo_jornada),
  FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_seccion),
  FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aula),
  FOREIGN KEY (codigo_curso) REFERENCES cursos(codigo_curso),
  FOREIGN KEY (codigo_maestro) REFERENCES maestros(codigo_maestro)
  ) ENGINE = InnoDB DEFAULT CHARSET=latin1;

