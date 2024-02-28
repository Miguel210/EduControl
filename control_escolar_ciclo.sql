-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: control_escolar
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,2,26,'ADF35B67',0.00),(2,55,3,'D33DJJJ6',0.00),(3,57,27,'ADF35B67',0.00),(4,1,23,'QWER56H',0.00),(5,61,25,'ADF35B67',0.00);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `alumo_materia`
--

LOCK TABLES `alumo_materia` WRITE;
/*!40000 ALTER TABLE `alumo_materia` DISABLE KEYS */;
INSERT INTO `alumo_materia` VALUES (1,1,2),(2,3,1),(3,3,3),(4,3,7),(5,3,8),(6,3,9),(7,3,10),(8,3,40),(9,4,28),(10,3,42),(11,4,42),(12,3,30),(13,4,30),(14,3,31),(15,4,31),(16,3,45),(17,4,45),(18,1,38),(19,1,39),(20,1,27),(21,1,28),(22,3,46),(23,3,47),(24,3,46),(25,3,47),(26,3,1),(27,3,2),(28,3,3),(29,5,41),(30,5,46),(31,5,47),(32,3,8),(33,3,9),(34,3,10),(35,1,3),(36,1,4),(37,3,3),(38,3,4),(39,3,5),(40,3,40);
/*!40000 ALTER TABLE `alumo_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria en Sistemas Computacional',1),(2,'Ingenieria Electromecanica ',1),(3,'Ingenieria Mecatronica',1),(4,'Ingenieria Civil',1),(5,'Ingenieria Ambiental',1),(6,'Ingenieria Informatica',1),(7,'Ingenieria Alimentarias',1),(8,'Licenciatura Matematicas',1),(9,'Licenciatura Administración',1),(10,'Licenciatura Quimica',1),(11,'Lic. Fisico Culturismo',1),(12,'Ingenieria Social',1),(13,'Licenciatura FisicoQuimica',1),(14,'Licenciatura FisicoQuimica',1),(15,'Licenciatura Arquitectonico',1),(16,'Lic. Farmaco',1),(17,'Ing. Agronomo',1),(18,'LIC. NEGOCIOS INTERNACIONALES',1);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carrera_ciclo`
--

LOCK TABLES `carrera_ciclo` WRITE;
/*!40000 ALTER TABLE `carrera_ciclo` DISABLE KEYS */;
INSERT INTO `carrera_ciclo` VALUES (1,1,4),(2,2,4),(3,3,4),(4,8,4),(5,1,5),(6,3,5),(7,6,5),(8,8,5),(9,12,5),(10,13,5),(11,17,5),(12,1,6),(13,2,6),(14,3,6),(15,1,6),(16,2,6),(17,3,6),(18,1,7),(19,2,7),(20,3,7),(21,1,8),(22,2,8),(23,3,8),(24,15,9),(25,16,9),(26,17,9),(27,10,10),(28,11,10),(29,12,10),(30,10,10),(31,11,10),(32,12,10),(33,10,10),(34,11,10),(35,12,10),(36,10,10),(37,11,10),(38,12,10),(39,10,10),(40,11,10),(41,12,10),(42,1,11),(43,2,11),(44,3,11),(45,1,12),(46,2,12),(47,1,13),(48,2,13),(49,3,13),(50,2,14),(51,3,14),(52,1,15),(53,2,15),(54,1,16),(55,2,16),(56,1,17),(57,6,17),(58,18,17),(59,1,18),(60,2,18),(61,3,18);
/*!40000 ALTER TABLE `carrera_ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ciclo`
--

LOCK TABLES `ciclo` WRITE;
/*!40000 ALTER TABLE `ciclo` DISABLE KEYS */;
INSERT INTO `ciclo` VALUES (1,'0000-00-00','0000-00-00',0,1),(2,'2023-11-01','2023-11-02',0,1),(3,'2023-11-11','2023-11-12',0,1),(4,'2023-11-13','2023-11-14',0,1),(5,'2023-11-18','2023-11-18',0,1),(6,'2023-11-21','2023-11-21',0,1),(7,'2023-11-21','2023-11-21',0,1),(8,'2023-11-21','2023-11-21',0,1),(9,'2023-11-21','2023-11-21',0,1),(10,'2023-11-22','2023-11-22',0,1),(11,'2023-11-21','2023-11-21',0,1),(12,'2023-11-21','2023-11-21',0,1),(13,'2023-11-21','2023-11-21',0,1),(14,'2023-11-21','2023-11-21',0,1),(15,'2023-11-21','2023-11-21',0,1),(16,'2023-11-24','2023-11-24',0,1),(17,'2023-11-28','2023-11-28',0,1),(18,'2023-12-01','2023-12-01',1,1);
/*!40000 ALTER TABLE `ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `colegiatura`
--

LOCK TABLES `colegiatura` WRITE;
/*!40000 ALTER TABLE `colegiatura` DISABLE KEYS */;
INSERT INTO `colegiatura` VALUES (1,'Reinscripciones','Reinscripción de ciclo escolar','2023-11-01',1000,0),(2,'Daños en la posada','Reparar los daños echos en la posada','2023-11-01',500,0),(3,'Fiesta Mexicana','Fondos para el evento de la noche Mexicana','2023-11-23',150,0),(4,'Posada','Posada organizada por la escuela','2023-12-01',200,1),(5,'Fil','Ida a la fil el 1 de Diciembre','2024-11-28',250,1),(6,'Reparacion de baños','Para arreglar los baños destrosados por algunos alumnos','2024-12-01',250,1),(7,'SOLO JUAN PEREZ','PAGA SEMESTRE O TE DAMOS DE BAJA','2023-12-01',99999,1),(8,'REINSCRIPCION','PAGO DE SEMESTRE','0000-00-00',800,1);
/*!40000 ALTER TABLE `colegiatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `colegiatura_alumnos`
--

LOCK TABLES `colegiatura_alumnos` WRITE;
/*!40000 ALTER TABLE `colegiatura_alumnos` DISABLE KEYS */;
INSERT INTO `colegiatura_alumnos` VALUES (1,1,3,0),(2,2,3,0),(3,1,2,0),(4,2,2,0),(5,1,6,0),(6,2,6,0),(7,3,6,0),(8,1,5,0),(9,2,5,0),(10,3,5,0),(11,4,5,0),(12,1,7,0),(13,2,7,0),(14,3,7,0),(15,4,7,0),(16,1,8,0),(17,2,8,0),(18,3,8,0),(19,4,8,0),(20,5,8,0);
/*!40000 ALTER TABLE `colegiatura_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dias`
--

LOCK TABLES `dias` WRITE;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
INSERT INTO `dias` VALUES (1,'Lunes'),(2,'Martes'),(3,'Miercoles'),(4,'Jueves'),(5,'Viernes');
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dias_horas`
--

LOCK TABLES `dias_horas` WRITE;
/*!40000 ALTER TABLE `dias_horas` DISABLE KEYS */;
INSERT INTO `dias_horas` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,3,1),(18,3,2),(19,3,3),(20,3,4),(21,3,5),(22,3,6),(23,3,7),(24,3,8),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,5,1),(34,5,2),(35,5,3),(36,5,4),(37,5,5),(38,5,6),(39,5,7),(40,5,8);
/*!40000 ALTER TABLE `dias_horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'Mar Caribe','Josefino','47189','Lopez Cotilla','Aldama','EN el walmaet'),(2,'Arandas','Centro','47180','Av. Cotilla','Obregon','Frente al oxxo'),(3,'Arandas','Centro','47180','Av. Cotilla','Obregon','Frente al oxxo'),(4,'dq','d','32','d','d','d'),(5,'s','s','223','s','s','s'),(6,'5','5','5','5','5','5'),(7,'holaaa','5','5','5','5','5'),(8,'5','5','5','5','55','5'),(9,'8','8','8','8','8','8'),(10,'9','9','9','9','9','9'),(11,'9','9','9','9','9','9'),(12,'4','4','4','4','4','4'),(13,'7','7','7','7','7','7'),(14,'1','1','1','1','1','1'),(15,'1','1','1','1','1','1'),(16,'Adelitas','paco el chato','78788','barajas','antonela','frente al oxxo'),(17,'Guadalajara','o','o','o','o','o'),(18,'kl','klkl','12','jkl','jkl','ghkgbn'),(19,'j','kj','k','jk','j','kjk'),(20,'j','kj','k','jk','j','kjk'),(21,'ds','jh','jh','j','hj','hj'),(22,'5','5','5','5','5','5'),(23,'6','6','66','6','6','6'),(24,'9','9','9','9','9','9'),(25,'1','21','21','2','12','12'),(26,'5','5','5','5','5','5'),(27,'5','5','5','5','5','5'),(28,'2','2','2','2','2','2'),(29,'5','5','5','5','5','5'),(30,'00','00','00','00','00','00'),(31,'00000','00','00','00','00','00'),(32,'78','78','7','87','8','78'),(33,'78','78','7','87','8','78'),(34,'88','8','88','8','8','8'),(35,'1','1','1','1','1','1'),(36,'2','2','2','2','22','2'),(37,'3','3','3','3','3','3'),(38,'6','6','6','6','6','6'),(39,'7','7','7+','7','7','7'),(40,'1','21','21','21','2','12'),(41,'1','21','21','21','2','12'),(42,'6','6','6','6','6','6'),(43,'8','8','8','8','8','8'),(44,'8','8','8','6','8','88'),(45,'9','9','9','99','9','9'),(46,'1','1','1','1','1','1'),(47,'8','8','8','8','8','8'),(48,'9','9','9','9','9','9'),(49,'9','9','9','9','9','9'),(50,'4','4','4','44','4','4'),(51,'8','8','8','8','8','8'),(52,'85','5','5','5','5','5'),(53,'3','3','3','3','33','3'),(54,'9','9','9','9','9','9'),(55,'9','9','9','9','9','99'),(56,'9','9','9','9','9','99'),(57,'9','9','9','9','9','99'),(58,'9','9','9','9','99','9'),(59,'5','5','5','5','5','5'),(60,'5','5','5','5','5','5'),(61,'5','5','5','5','5','5'),(62,'9','9','9','9','9','9'),(63,'0','0','0','0','0','0'),(64,'0','0','0','0','0','0'),(65,'1','1','1','1','11','1'),(66,'1','1','1','1','11','1'),(67,'2','2','2','2','2','2'),(68,'6','6','6','6','6','6'),(69,'5','5','5','5','5','5'),(70,'5','5','5','5','5','5'),(71,'9','9','9','9','9','9'),(72,'8','8','8','8','88','8'),(73,'8','8','8','8','88','8'),(74,'6','6','6','6','66','6'),(75,'6','6','6','6','6','6'),(76,'5','5','5','5','5','5'),(77,'2','2','2','2','2','2'),(78,'2','2','2','2','2','2'),(79,'2','2','2','2','22','1'),(80,'9','9','9','9','9','99'),(81,'5','5','5','5','5','5'),(82,'5','5','5','5','5','5'),(83,'45','4','54','54','5','45'),(84,'patilo','8','8','8','8','8'),(85,'patilo','8','8','8','8','8'),(86,'dasdas','9','9','9','9','9wwww'),(87,'adsa53','2','2','2','2','2sdadw sdf  df dfg dfg dfg df gfdg fd gdf gdf gdf df '),(88,'arandas','mexiquito','47','gomez fariaz','plaza san artin','frente al conalep jirando a la izquierda de la tienda don Pancho a 3 casa de color rojo brillante'),(89,'Guadalajara','Centro','47999','Gomez Farias','Panastro','Frente a la llantera Juan Perez casa de color rojo'),(90,'kl','k','lk','l','kl','kl'),(91,'ñ','ñ','ñ','ñ','ñ','ñ'),(92,'ñ','ñ','ñ','ñ','ñ','ñ'),(93,'ds','kmmk','86ss','kok','ok',' uibinkj'),(94,'jkljklj','klj','lj','klj','klj','klj'),(95,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(96,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(97,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(98,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(99,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(100,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(101,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(102,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(103,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(104,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(105,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(106,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(107,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(108,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(109,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(110,'Atoto','hj','47888','gh','jk','frente a Don Pancho'),(111,'Capilla','colores','47122','cotilla','Zamora','Frente a la capillita de San Marcos'),(112,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(113,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(114,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(115,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(116,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(117,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(118,'dasdasdsa','km ,','8888','sas','dsd','dsdsdsdas asasdas das as das'),(119,'dasdasdsa','h','jh','j','jj','j'),(120,'dasdasdsa','h','jh','j','jj','j'),(121,'dasdasdsa','h','jh','j','jj','j'),(122,'dasdasdsa','h','jh','j','jj','j'),(123,'dasdasdsa','h','jh','j','jj','j'),(124,'dasdasdsa','h','jh','j','jj','j'),(125,'dasdasdsa','h','jh','j','jj','j'),(126,'dasdasdsa','h','jh','j','jj','j'),(127,'dasdasdsa','h','jh','j','jj','j'),(128,'dasdasdsa','hk','k','k','k','k'),(129,'j','k','kjk','j','kj','kj'),(130,'j','k','kjk','j','kj','kj'),(131,'j','k','kjk','j','kj','kj'),(132,'Bracil','k','k','k','k','k'),(133,'Arandas','Mexiquito','47180','Av. Moreno','ramos','Frente al Aurrera '),(134,'Arandas','Mexiquito','47180','Av. Moreno','ramos','Frente al Aurrera '),(135,'Arandas','Mexiquito','47188','Av. Ramos','mortero','Frente al Conalep'),(136,'jjh','hjk','4324','rewrwe','hjghhj','hjkl'),(137,'dsads','dasdas','3232','dsadsa','dasdsa','dasdas'),(138,'ggg','ggg','333','ggg','ggg','ggg'),(139,'ppp','ppp','123','ppp','pp','ppp'),(140,'ppp','ppp','123','ppp','pp','ppp'),(141,'aaaa','aaa','12134','aaaaa','aaaa','aaaaa'),(142,'aaaa','aaa','12134','aaaaa','aaaa','aaaaa'),(143,'mmmmmmmm','mmmmm','12121','mmmmm','mmmmm','mmmmmm'),(144,'mmmmmmmm','mmmmm','12121','mmmmm','mmmmm','mmmmmm'),(145,'nnnnn','nnnnnnnn','13211','nnnnnnn','nnnnnnn','nnnnnn'),(146,'dsdsad','fghhjk','2345','wertyu','qwerty','wertyu'),(147,'Arandas','Mexiquito','18000','Hernandez','Gomez 51','Frente a la capill'),(148,'fg','hjfghjk','ghjkl','gfhjk','ghjk','vjkfghjk'),(149,'zxcvbnm','zxcvbnm,.','1234','QWERTY','WERTYw','erty'),(150,'Arandas','Centro','47180','Av. Cotilla','Obregon','Frente al oxxo'),(151,'Arandas','Centro','47180','Av. Cotilla','Obregon','Frente al oxxo'),(152,'Arandas','Centro','47180','Av. Cotilla','Obregon','Frente al oxxo'),(153,'Arandas','Centro','47180','CUAHUTEMOC','MORELOS','DEPARTAMENTOS'),(154,'Arandas','Centro','47180','CUAHUTEMOC','MORELOS','FRENTE AL OXXO');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,1,'1'),(2,1,'1'),(3,2,'1'),(4,1,'2'),(5,5,'1'),(6,5,'1'),(7,10,'1'),(8,6,'1'),(9,11,'1'),(10,18,'1'),(11,18,'1'),(12,21,'1'),(13,21,'1'),(14,24,'1'),(15,42,'1'),(16,45,'1'),(17,45,'2'),(18,47,'1'),(19,50,'1'),(20,50,'1'),(21,52,'1'),(22,54,'55'),(23,55,'12'),(24,55,'1'),(25,56,'1'),(26,57,'1'),(27,56,'1'),(28,59,'1');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,1,'A'),(2,2,'B'),(3,3,'A'),(4,4,'A'),(5,5,'A'),(6,6,'B'),(7,7,'A'),(8,8,'A'),(9,9,'A'),(10,10,'A'),(11,11,'B'),(12,12,'A'),(13,13,'B'),(14,14,'A'),(15,15,'A'),(16,16,'A'),(17,17,'A'),(18,18,'A'),(19,19,'A'),(20,20,'B'),(21,21,'A'),(22,22,'A'),(23,23,'A'),(24,24,'12'),(25,25,'A'),(26,26,'A'),(27,27,'B'),(28,28,'A');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grupo_alumno`
--

LOCK TABLES `grupo_alumno` WRITE;
/*!40000 ALTER TABLE `grupo_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `horas`
--

LOCK TABLES `horas` WRITE;
/*!40000 ALTER TABLE `horas` DISABLE KEYS */;
INSERT INTO `horas` VALUES (1,'07:00:00'),(2,'08:00:00'),(3,'09:00:00'),(4,'10:00:00'),(5,'11:00:00'),(6,'12:00:00'),(7,'13:00:00'),(8,'14:00:00');
/*!40000 ALTER TABLE `horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maestro`
--

LOCK TABLES `maestro` WRITE;
/*!40000 ALTER TABLE `maestro` DISABLE KEYS */;
INSERT INTO `maestro` VALUES (1,53,'FHG34VH',21,'Base de datos I'),(2,54,'FHG34VH',22,'Base de Datos'),(3,56,'GH2GH2H2',12,'Programacion'),(4,58,'FHG34VH',12,'Química'),(5,60,'85152161drg',6,'tics');
/*!40000 ALTER TABLE `maestro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maestro_materia`
--

LOCK TABLES `maestro_materia` WRITE;
/*!40000 ALTER TABLE `maestro_materia` DISABLE KEYS */;
INSERT INTO `maestro_materia` VALUES (1,1,1),(2,1,1),(3,1,1),(4,3,2),(5,3,2),(6,4,3),(7,1,1),(8,1,1),(9,1,1),(10,3,1),(11,4,1),(12,3,1),(13,3,3),(14,3,1),(15,1,1),(16,1,1),(17,3,1),(18,3,1),(19,3,1),(20,1,1),(21,4,1),(22,1,1),(23,3,1),(24,1,1),(25,3,1),(26,4,1),(27,1,2),(28,3,1),(29,4,4),(30,1,2),(31,1,2),(32,1,2),(33,1,1),(34,1,1),(35,1,1),(36,1,4),(37,1,1),(38,1,4),(39,1,4),(40,1,4),(41,3,4),(42,4,1),(43,3,1),(44,1,1),(45,1,1),(46,3,1),(47,4,1),(48,3,1),(49,3,1),(50,33,1),(51,8,1),(52,34,1),(53,2,1),(54,2,1),(55,2,2),(56,1,1),(57,1,4),(58,1,4),(59,39,1),(60,38,2),(61,9,1),(62,30,4),(63,39,4),(64,28,4),(65,27,4),(66,42,4),(68,31,2),(69,10,4),(70,2,5),(72,30,5),(75,46,5),(76,46,5),(77,41,5),(78,4,4),(79,47,1),(80,2,5);
/*!40000 ALTER TABLE `maestro_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maestrosmateriashoras`
--

LOCK TABLES `maestrosmateriashoras` WRITE;
/*!40000 ALTER TABLE `maestrosmateriashoras` DISABLE KEYS */;
INSERT INTO `maestrosmateriashoras` VALUES (1,1,1,5),(2,2,9,5),(3,3,8,5),(4,4,2,5),(5,5,17,5),(6,6,33,5),(7,7,3,5),(8,8,6,7),(9,9,10,9),(10,10,1,9),(11,11,1,9),(12,12,1,6),(13,13,2,8),(14,14,33,9),(15,15,1,10),(16,16,33,10),(17,17,9,10),(18,18,9,10),(19,19,1,12),(20,20,33,12),(21,21,17,12),(22,22,1,14),(23,23,25,14),(24,24,1,21),(25,25,17,21),(26,26,9,21),(27,27,4,21),(28,28,3,21),(29,29,18,21),(30,30,20,21),(31,31,20,21),(32,32,20,21),(33,33,35,21),(34,34,40,21),(35,35,39,21),(36,36,27,21),(37,37,1,21),(38,38,1,21),(39,39,1,22),(40,40,2,22),(41,41,9,22),(42,42,12,22),(43,43,17,22),(44,44,26,22),(45,45,27,22),(46,46,10,22),(47,47,28,22),(48,48,28,22),(49,49,28,22),(50,50,1,22),(51,51,1,23),(52,52,2,23),(53,53,25,23),(54,54,11,23),(55,55,1,23),(56,56,1,22),(57,57,11,22),(58,58,11,22),(59,59,1,23),(60,60,36,23),(61,61,1,22),(62,62,1,22),(63,63,1,23),(64,64,1,23),(65,65,1,23),(66,66,1,23),(67,68,1,23),(68,69,10,22),(69,70,18,23),(70,72,1,24),(71,75,17,24),(72,76,1,25),(73,77,2,25),(74,78,1,26),(75,79,1,27),(76,80,3,26);
/*!40000 ALTER TABLE `maestrosmateriashoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Ecuaciones Diferenciales',1),(2,'Matemáticas II',1),(3,'Fundamentos de Programación',1),(4,'Matemáticas I',1),(5,'Fisica I',1),(6,'Matematicas III',1),(7,'Servidores',1),(8,'Cisco I',1),(9,'Cisco II',1),(10,'Cisco III',1),(11,'Fundamentos de electronica',1),(12,'Finanazas',1),(13,'Quimica I',1),(14,'Quimica II',1),(15,'Quimica III',1),(16,'BioQuimica',1),(17,'Taller de Base de datos',1),(18,'Matematicas Discretas',1),(19,'Calculo Vectorial',1),(20,'Ingles I',1),(21,'Inlges II',1),(22,'Ingles III',1),(23,'Ingles IIII',1),(24,'Ingles V',1),(25,'Topicos Avanzados',1),(26,'Programacion Orientada a Objetos',1),(27,'Estructura de Datos',1),(28,'Pre-Calculo',1),(29,'Sistemas Operativos',1),(30,'Mantenimiento de Computadoras',1),(31,'Taller de Drones',1),(32,'Taller de Soldadura',1),(33,'Animacion I',1),(34,'Animacion II',1),(35,'Animacion III',1),(36,'Fundamentos de Investigacion',1),(37,'Investigacion',1),(38,'Ambiental I',1),(39,'Ambiental II',1),(40,'Tutorias ',1),(41,'Programacion de Base de Datos',1),(42,'Desarrollo Mobile',1),(43,'Porgramacion Web',0),(44,'Leguajes y Automatas',0),(45,'Fundamentos de Base de datos',1),(46,'ADMINISTRACION I',1),(47,'ADMINISTRACION II',1);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'Usuarios'),(2,'Ciclo-Escolar'),(3,'Finanzas'),(4,'Horario'),(5,'Materias'),(6,'Calificaciones'),(7,'Colegiaturas');
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,21,100.0,1),(12,9,98.6,2),(13,20,75.0,2),(14,21,85.0,3),(15,19,95.0,12),(16,11,74.0,2),(17,11,66.0,22),(18,21,86.0,2),(19,9,85.0,43),(20,9,85.0,2),(21,9,97.0,23),(22,19,92.0,1),(23,30,98.0,1),(24,29,85.0,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operaciones`
--

LOCK TABLES `operaciones` WRITE;
/*!40000 ALTER TABLE `operaciones` DISABLE KEYS */;
INSERT INTO `operaciones` VALUES (1,1,'crear_usuario'),(2,1,'leer_usuario'),(3,1,'actualizar_usuario'),(4,1,'eliminar_usuario'),(5,2,'leer_ciclo'),(6,2,'crear_ciclo'),(7,2,'descargar_ciclo'),(8,2,'leer_carrera'),(9,2,'agregar_carrera'),(10,2,'agregar_carreraCiclo'),(11,2,'actualizar_carrera'),(12,2,'leer_grado_grupo'),(13,2,'agregar_grado_grupo'),(14,2,'actualizar_grado_grupo'),(15,2,'eliminar_grado_grupo'),(16,2,'leer_colegiatura'),(17,2,'agregar_colegiatura'),(18,2,'actualizar_colegiatura'),(19,2,'enviar_colegiatura'),(20,2,'borrar_colegiatura'),(21,2,'leer_materias'),(22,2,'actualizar_materias'),(23,2,'borrar_materias'),(24,2,'leer_horario'),(25,2,'agregar_hoarario'),(26,2,'buscar_horario'),(27,3,'leer_finanzas'),(28,3,'agregar-finanzas'),(29,3,'descargar_finanzas'),(30,3,'agregar_alumnos_finanzas_pagados'),(31,4,'leer_horario_mtr_alumno7'),(32,5,'alta_calificaciones_materias'),(33,5,'leer_calificaciones_materias'),(34,6,'leer_calificaciones'),(35,6,'descargar_calificaciones'),(36,7,'leer_colegiatura'),(37,7,'descargar_colegiaturas');
/*!40000 ALTER TABLE `operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Alumno'),(2,'Maestro'),(3,'Secretario');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfiles_operaciones`
--

LOCK TABLES `perfiles_operaciones` WRITE;
/*!40000 ALTER TABLE `perfiles_operaciones` DISABLE KEYS */;
INSERT INTO `perfiles_operaciones` VALUES (1,1,31),(2,1,34),(3,1,35),(4,1,36),(5,1,37),(6,2,31),(7,2,32),(8,2,33),(9,3,1),(10,3,2),(11,3,3),(12,3,4),(13,3,5),(14,3,6),(15,3,7),(16,3,8),(17,3,9),(18,3,10),(19,3,11),(20,3,12),(21,3,13),(22,3,14),(23,3,15),(24,3,16),(25,3,17),(26,3,18),(27,3,19),(28,3,20),(29,3,21),(30,3,22),(31,3,23),(32,3,24),(33,3,25),(34,3,26),(35,3,27),(36,3,28),(37,3,29),(38,3,30);
/*!40000 ALTER TABLE `perfiles_operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,1,1,1,'Juancho','Lopez','Hernandez','2001-10-10','BBBBBB','2023-10-03 09:45:00','123','3481151048','juan01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwibm9tYnJlIjoiSnVhbmNobyIsImFwcF9tYXQiOiJMb3BleiIsImlhdCI6MTcwOTEzNzM5MSwiZXhwIjoxNzA5MTQwOTkxfQ.sOoUejjA50SnqfIxpJm5BYy1FGjGLZSuGKCf2tolXp0'),(2,2,2,1,'Anna','Alvarez','Perez','2002-09-04','HUIH3KIU23','2023-10-03 09:44:41','123','3481101245','anna01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Miwibm9tYnJlIjoiQW5uYSIsImFwcF9tYXQiOiJBbHZhcmV6IiwiaWF0IjoxNzA5MTM3NDIyLCJleHAiOjE3MDkxNDEwMjJ9.N0XTwSRTgbNqeoa3Kz0Dwh4Hdfe2q-596T9OzOqcKgI'),(3,3,1,2,'Oscar','Muñoz','Lozano','1999-12-08','D78DAS89H','2023-10-03 09:45:17','123','3481127878','oscar01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Mywibm9tYnJlIjoiT3NjYXIiLCJhcHBfbWF0IjoiTXXDsW96IiwiaWF'),(4,1,1,2,'Marco','Flores','Hernandez','2009-01-09','IDHJ43VG43','2023-10-03 09:45:17','123','3481151010','marco01@gmail.com',NULL),(10,15,1,3,'jaun','ñ','s','2009-09-09','HJ23BH4','2023-10-10 18:50:07','123','34815114','jaun01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsIm5vbWJyZSI6ImphdW4iLCJhcHBfbWF0Ijoiw7EiLCJpYXQiOjE'),(11,16,1,3,'Pascual','Hernandez','Hernandez','2002-09-05','GG32JN45','2023-10-10 18:53:33','123','3481151555','pascual01@gmail.com',NULL),(13,17,1,1,'Astrie','Maradona','a','2008-08-08','8888888','2023-10-10 18:54:56','123','098766','a01@gmail.com',NULL),(14,17,1,2,'a','4','4','0004-04-04','444444','2023-10-10 18:55:40','123','132123','a02@gmail.com',NULL),(15,18,2,0,'www','www','w','2005-12-12','HKJ7','2023-10-13 19:30:58','123','213','www@gmail.com',NULL),(18,111,2,2,'Julia','Perez','Hernandez','2000-09-01','HK5D8FD','2023-11-06 19:29:00','123','3481151047','julia01@gmail.com',NULL),(36,129,1,3,'Perry','Agente','P','0098-08-09','KJNKNK','2023-11-07 06:58:32','123','3213123','lala@gmail.com',NULL),(38,131,1,3,'Loro','Agente','L','0098-08-09','KJNKNK','2023-11-07 06:59:28','','3213123','loro@gmail.com',NULL),(39,132,1,1,'Carlos','k','k','0020-02-12','hJH78','2023-11-07 07:00:42','123','231312','k@gmail.com',NULL),(40,133,1,1,'Brayan ','Hernandez','Hernadez','2001-09-15','GJHJ79JRI','2023-11-07 16:38:10','123','3481151044','brayan@gmail.com',NULL),(42,135,1,1,'Armando','Lopez','Herrera','2001-02-12','G8FL30H7','2023-11-07 16:39:41','123','132131','armando01@gmail.com',NULL),(43,136,2,3,'hhh','jjj','jjj','0555-05-12','fds3','2023-11-08 15:39:03','123','432423','hfgh@gmail.com',NULL),(44,137,1,1,'dasdas','dsads','dasds','2023-11-17','das42dwwd','2023-11-17 10:18:01','123','12345678','dsada@gmail.com',NULL),(45,138,1,1,'ggg','ggg','ggg','2023-11-17','ggr4g','2023-11-17 10:22:03','123','1234567','gggg@gmail.com',NULL),(46,139,1,2,'ppp','ppp','ppp','0011-01-01','disa7','2023-11-17 10:23:07','123','12345678','ppp@gmail.com',NULL),(48,141,1,2,'aaaaaa','aaaaa','aa','0001-01-01','1s67uy67hj','2023-11-17 10:24:43','123','1234567','aaaaaa@gmail.com',NULL),(50,143,1,1,'mmmmmmmm','mmmmm','mmmmm','0001-01-01','wmmwq2','2023-11-17 10:36:19','123','1234567','mmm@gmail.com',NULL),(52,145,1,1,'nnnnnn','nnnnnnn','nnnnnnn','0001-01-01','nwn22wn2','2023-11-17 10:37:43','123','1234567','nnnnn@gmail.com',NULL),(53,146,1,2,'Oscar','Mares','xcvbn','0000-00-00','wesdfghj','2023-11-17 10:46:56','123','1234567','oscarMares@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTMsIm5vbWJyZSI6Ik9zY2FyIiwiYXBwX21hdCI6Ik1hcmVzIiwiaWF'),(54,147,1,2,'Manuel','Hernandez','Lopez','0000-00-00','JKJ23HUI89','2023-11-17 10:47:51','123','123465789','manuel123@gmail.com',NULL),(55,148,2,1,'fghjkl','ghjk','kvghbjkl','3456-02-01','dfghj','2023-11-17 19:50:02','123','123456789','asdfghjk@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTUsIm5vbWJyZSI6ImZnaGprbCIsImFwcF9tYXQiOiJnaGprIiwiaWF'),(56,149,1,2,'Panchito','yerty','erty','1222-03-12','3ertfg','2023-11-17 21:35:01','123','|1234567','qwertyui@gmailcom','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTYsIm5vbWJyZSI6IlBhbmNoaXRvIiwiYXBwX21hdCI6InllcnR5Iiw'),(57,150,1,1,'Juan','Lopez','Perez','2002-03-04','FFG5T7','2023-11-23 22:07:44','123','3481151048','alumno01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTcsIm5vbWJyZSI6Ikp1YW4iLCJhcHBfbWF0IjoiTG9wZXoiLCJpYXQ'),(58,151,1,2,'Oscar','sdfghj','Perez','2010-06-02','7d7d7d7d','2023-11-23 22:09:11','123','3481101245','maestro01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTgsIm5vbWJyZSI6Ik9zY2FyIiwiYXBwX21hdCI6InNkZmdoaiIsIml'),(59,152,2,3,'Patricia','Lopez','Lozano','1996-02-05','9K9K9K9K','2023-11-23 22:10:12','123','3481127878','secretaria01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTksIm5vbWJyZSI6IlBhdHJpY2lhIiwiYXBwX21hdCI6IkxvcGV6Iiw'),(60,153,1,2,'BRANDON','PATIÑO','SEPULVEDA','2001-01-17','581135','2023-11-28 13:57:35','1234','3781098240','patinobrandon02@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjAsIm5vbWJyZSI6IkJSQU5ET04iLCJhcHBfbWF0IjoiUEFUScORTyI'),(61,154,1,1,'JORGE LUIS','MULGADO ','VERA','2001-12-12','GGD78D8','2023-11-28 15:36:44','123','3481151048','jorgemulgado01@gmail.com','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NjEsIm5vbWJyZSI6IkpPUkdFIExVSVMiLCJhcHBfbWF0IjoiTVVMR0F');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'control_escolar'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_menu`(descripcion varchar(255)) RETURNS varchar(255) CHARSET utf8mb4
BEGIN
	RETURN REPLACE(descripcion, '-', ' ');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_alumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_alumnos`()
BEGIN
	select * from alumno;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_alumnoSNcalificacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_alumnoSNcalificacion`(IN idg INT, IN idm INT, IN idmat INT)
BEGIN
	select am.id_alumo_materia,al.id_alumno,p.nombre
    from maestro m
	join maestro_materia mm on m.id_maestro=mm.id_maestro
	join materia mat on mm.id_materia=mat.id_materia
	join maestrosmateriashoras mmh on mm.id_maestro_materia=mmh.id_maestro_materia
	join grupo g on mmh.id_grupo=g.id_grupo
    join alumno al on g.id_grupo=al.id_grupo
    join persona p on al.id_persona=p.id_persona
    join alumo_materia am on al.id_alumno=am.id_alumno
    and mat.id_materia=am.id_materia
	
	where g.id_grupo=idg and m.id_maestro=idm and mat.id_materia=idmat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_alumnosNotas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_alumnosNotas`(IN idg INT, IN idm INT, IN idmat INT)
BEGIN
	select al.id_alumno,p.nombre,n.calificacion,n.unidad
    from maestro m
	join maestro_materia mm on m.id_maestro=mm.id_maestro
	join materia mat on mm.id_materia=mat.id_materia
	join maestrosmateriashoras mmh on mm.id_maestro_materia=mmh.id_maestro_materia
	join grupo g on mmh.id_grupo=g.id_grupo
    join alumno al on g.id_grupo=al.id_grupo
    join persona p on al.id_persona=p.id_persona
    join alumo_materia am on al.id_alumno=am.id_alumno
    join notas n on am.id_alumo_materia=n.id_alumno_materia
    and mat.id_materia=am.id_materia
	
	where g.id_grupo=idg and m.id_maestro=idm and mat.id_materia=idmat 
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_alumno_materia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_alumno_materia`(IN id INT)
BEGIN
SELECT mat.id_materia,mat.nombre FROM grupo g
join alumno m on g.id_grupo=m.id_grupo 
join alumo_materia am on m.id_alumno=am.id_alumno
join materia as mat on am.id_materia=mat.id_materia
where g.id_grupo=id
group by mat.id_materia
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_boleta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_boleta`(IN idg INT, IN ida INT)
BEGIN
SELECT m.nombre, AVG(n.calificacion) promedio FROM notas n
join alumo_materia am on n.id_alumno_materia=am.id_alumo_materia
join materia m on am.id_materia=m.id_materia
join alumno a on am.id_alumno=a.id_alumno
join persona p on a.id_persona=p.id_persona
where a.id_grupo=idg and a.id_alumno=ida
group by m.id_materia;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_carreas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_carreas`(IN buscar VARCHAR(10))
BEGIN
	case
    when buscar='todos' then
		select*from carrera;
    when buscar='actual' then
		select cc.id_carrera_ciclo, ca.descripcion, ci.inicio,ci.final from carrera_ciclo cc 
		join ciclo ci on cc.id_ciclo=ci.id_ciclo
		join carrera ca on cc.id_carrera=ca.id_carrera
         where ci.status=1;
        
	else
		select*from carreras;
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_carrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_carrera`(IN id INT)
BEGIN
	select*from carrera where id_carrera=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_carreras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_carreras`(IN buscar VARCHAR(10))
BEGIN
	case
    when buscar='todos' then
		select*from carrera;
    when buscar='actual' then
		select cc.id_carrera_ciclo, ca.descripcion, ci.inicio,ci.final from carrera_ciclo cc 
		join ciclo ci on cc.id_ciclo=ci.id_ciclo
		join carrera ca on cc.id_carrera=ca.id_carrera
         where ci.status=1;
        
	else
		select*from carreras;
	end case;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_cicloExistente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_cicloExistente`()
BEGIN
	SELECT * FROM ciclo ORDER BY id_ciclo DESC limit 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_ciclos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_ciclos`()
BEGIN
	SELECT id_ciclo, inicio, final, 
    CASE 
        WHEN status = 1 THEN 'activo'
        WHEN status = 0 THEN 'terminado'
    END AS estado
	FROM ciclo
	ORDER BY id_ciclo DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_colegiaturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_colegiaturas`(IN dato VARCHAR(10),IN id INT)
BEGIN
	case
    when "todos"=dato then
	SELECT * FROM colegiatura where status=1;
    when "buscar"=dato then
	SELECT * FROM colegiatura where id_colegiatura=id and status=1;
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_colegiaturas_alumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_colegiaturas_alumnos`(IN id INT,IN idCole INT,IN buscar varchar(10))
BEGIN
	CASE
     when buscar='todos' then
		select * from colegiatura_alumnos as ac 
		join colegiatura c on ac.id_colegiatura=c.id_colegiatura 
		join alumno as a on ac.id_alumno=a.id_alumno
		where c.status=1 and a.id_persona=id;
	 when buscar='down' then
		SELECT c.nombre,c.descripcion,c.fecha_limite,c.monto,a.matricula,p.nombre as NombrePersona FROM colegiatura_alumnos as ac  
		join colegiatura c on ac.id_colegiatura=c.id_colegiatura 
		join alumno a on a.id_alumno=ac.id_alumno
		join persona p on p.id_persona=a.id_persona
		where c.status=1 and a.id_persona=id and ac.id_colegiatura_alumnos=idCole;
    end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_crear_ciclo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_crear_ciclo`(IN init DATE, IN fn DATE)
BEGIN
	DECLARE confirme INTEGER;
	SELECT status into confirme FROM ciclo ORDER BY id_ciclo DESC limit 1; 
    
    if confirme=0 then 
		INSERT INTO ciclo (inicio,final,status,statusCarreras) VALUES (init,fn,1,0);
        call pr_ciclos();
    end if;
    if confirme=1 then 
		select concat('error') as status from ciclo limit 1;
    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_datosUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_datosUsuarios`(IN pages INT, IN tipo INT,IN buscar VARCHAR(50) )
BEGIN
	DECLARE total_u INTEGER;
	DECLARE limiteXpagina INTEGER;
    DECLARE countPages INTEGER;
    SET limiteXpagina = (pages -1) * 5;
    
    case
    when 1=tipo then
		SELECT * FROM vw_datosusuarios where nombre like buscar limit limiteXpagina, 5;
	when 2=tipo then
		SELECT * FROM vw_datosusuarios where perfil='Alumno' and nombre like buscar limit limiteXpagina, 5;
	when 3=tipo then
		SELECT * FROM vw_datosusuarios where perfil='Maestro' and nombre like buscar limit limiteXpagina, 5;
	when 4=tipo then
		SELECT * FROM vw_datosusuarios where perfil='Secretario' and nombre like buscar limit limiteXpagina, 5;
	else
		SELECT * FROM vw_datosusuarios where nombre like buscar limit limiteXpagina, 5;
    end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_dias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_dias`()
BEGIN
	select*from dias;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_dias_horas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_dias_horas`()
BEGIN
	SELECT  dh.id_diasHoras, d.nombre,h.hora FROM dias_horas dh
	join dias d on dh.id_dia=d.id_dia
	join horas h on dh.id_hora=h.id_hora;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_grupos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_grupos`(IN buscar varchar(10), IN id INT)
BEGIN

	case
    when buscar='todos' then
		select g.id_grupo,g.nombre as grupo,gr.descripcion as grado,c.descripcion as carrera,ci.inicio,ci.final  from grupo as g
		join grado as gr on g.id_grado=gr.id_grado
		join carrera_ciclo as cc on gr.id_carrera_ciclo=cc.id_carrera_ciclo
		join carrera as c on cc.id_carrera=c.id_carrera
		join ciclo as ci on cc.id_ciclo=ci.id_ciclo
		where ci.status=1
		;
	when buscar="act" then
		select g.id_grupo,g.nombre as grupo,gr.descripcion as grado, gr.id_grado,c.descripcion as carrera,cc.id_carrera_ciclo,ci.inicio,ci.final  
        from grupo as g
		join grado as gr on g.id_grado=gr.id_grado
		join carrera_ciclo as cc on gr.id_carrera_ciclo=cc.id_carrera_ciclo
		join carrera as c on cc.id_carrera=c.id_carrera
		join ciclo as ci on cc.id_ciclo=ci.id_ciclo
		where ci.status=1 and g.id_grupo=id;
    end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_grupo_alumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_grupo_alumnos`(IN id INT)
BEGIN
	select * from alumno where id_grupo=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_grupo_maestro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_grupo_maestro`(IN id INT)
BEGIN
	select g.id_grupo,g.nombre as grupo,gr.descripcion as grado,c.descripcion as carrera,ci.inicio,ci.final  from grupo as g
		join grado as gr on g.id_grado=gr.id_grado
		join carrera_ciclo as cc on gr.id_carrera_ciclo=cc.id_carrera_ciclo
		join carrera as c on cc.id_carrera=c.id_carrera
		join ciclo as ci on cc.id_ciclo=ci.id_ciclo
        join maestrosmateriashoras mmh on mmh.id_grupo=g.id_grupo
        join maestro_materia ma on mmh.id_maestro_materia=ma.id_maestro_materia
        join maestro m on ma.id_maestro=m.id_maestro
		where ci.status=1 and m.id_maestro=id
        group by id_grupo
		;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_horas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_horas`()
BEGIN
	select*from horas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_maestros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_maestros`()
BEGIN
	SELECT * FROM control_escolar.maestro m join persona as p on m.id_persona=p.id_persona;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_maestrosmateriashoras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_maestrosmateriashoras`(IN buscar varchar(10),IN id INT)
BEGIN
	case
	  when buscar='todos' then
			SELECT h.hora, COALESCE( CONCAT('[', GROUP_CONCAT( JSON_OBJECT( 'materia', CASE WHEN mm.id_materia IS NULL THEN '*' ELSE ma.nombre END )), ']'),'') AS materias FROM horas AS h
			LEFT JOIN dias_horas AS dh ON h.id_hora = dh.id_hora
			LEFT JOIN dias AS d ON dh.id_dia = d.id_dia
			LEFT JOIN maestrosmateriashoras AS mmh ON dh.id_diasHoras = mmh.id_dias_Horas
			LEFT JOIN maestro_materia AS mm ON mmh.id_maestro_materia = mm.id_maestro_materia
			LEFT JOIN materia AS ma ON mm.id_materia = ma.id_materia
			GROUP BY h.hora
			ORDER BY h.hora, d.id_dia;
	  when buscar='act' then
			SELECT h.hora, COALESCE( CONCAT('[', GROUP_CONCAT( JSON_OBJECT( 'materia', CASE WHEN mm.id_materia IS NULL THEN '*' ELSE ma.nombre END )), ']'),'') AS materias FROM horas AS h
			LEFT JOIN dias_horas AS dh ON h.id_hora = dh.id_hora
			LEFT JOIN dias AS d ON dh.id_dia = d.id_dia
			LEFT JOIN maestrosmateriashoras AS mmh ON dh.id_diasHoras = mmh.id_dias_Horas
			LEFT JOIN maestro_materia AS mm ON mmh.id_maestro_materia = mm.id_maestro_materia
			LEFT JOIN materia AS ma ON mm.id_materia = ma.id_materia
			LEFT JOIN maestro as mae on mm.id_maestro=mae.id_maestro
            LEFT join persona as p on mae.id_persona=p.id_persona
            left join grupo as g on mmh.id_grupo=g.id_grupo
			LEFT join grado as ga on g.id_grado=ga.id_grado
            LEFT join carrera_ciclo cc on ga.id_carrera_ciclo=cc.id_carrera_ciclo
            LEFT join carrera as ca on cc.id_carrera=ca.id_carrera
			where mmh.id_grupo=id
			GROUP BY h.hora
			ORDER BY h.hora, d.id_dia;
		when buscar='seg' then
			SELECT h.hora, COALESCE( CONCAT('[', GROUP_CONCAT( JSON_OBJECT( 'materia', CASE WHEN mm.id_materia IS NULL THEN '*' ELSE ma.nombre END )), ']'),'') AS materias FROM horas AS h
			LEFT JOIN dias_horas AS dh ON h.id_hora = dh.id_hora
			LEFT JOIN dias AS d ON dh.id_dia = d.id_dia
			LEFT JOIN maestrosmateriashoras AS mmh ON dh.id_diasHoras = mmh.id_dias_Horas
			LEFT JOIN maestro_materia AS mm ON mmh.id_maestro_materia = mm.id_maestro_materia
			LEFT JOIN materia AS ma ON mm.id_materia = ma.id_materia
			LEFT JOIN maestro as mae on mm.id_maestro=mae.id_maestro
            LEFT join persona as p on mae.id_persona=p.id_persona
            left join grupo as g on mmh.id_grupo=g.id_grupo
			LEFT join grado as ga on g.id_grado=ga.id_grado
            LEFT join carrera_ciclo cc on ga.id_carrera_ciclo=cc.id_carrera_ciclo
            LEFT join carrera as ca on cc.id_carrera=ca.id_carrera
			where mae.id_maestro=id
			GROUP BY h.hora
			ORDER BY h.hora, d.id_dia;
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_maestro_materia_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_maestro_materia_grupo`(IN idg INT, IN idm INT)
BEGIN
	select m.id_maestro,g.id_grupo,mat.id_materia,mat.nombre from maestro m
	join maestro_materia mm on m.id_maestro=mm.id_maestro
	join materia mat on mm.id_materia=mat.id_materia
	join maestrosmateriashoras mmh on mm.id_maestro_materia=mmh.id_maestro_materia
	join grupo g on mmh.id_grupo=g.id_grupo
	where g.id_grupo=idg and m.id_maestro=idm
	group by mat.id_materia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_materias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_materias`(IN dato VARCHAR(10),IN id INT)
BEGIN
	case
    when "todos"=dato then
		SELECT * FROM materia where status=1;
	when "buscar"=dato then
		SELECT * FROM materia where id_materia=id and status=1;
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_modulos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_modulos`(IN id int)
BEGIN
SELECT LOWER(descripcion) as descripcion, fn_menu(descripcion) as ModuloMenu,id_persona FROM control_escolar.vw_modulos where id_persona=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_mostrar_calificacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_mostrar_calificacion`(in idg int, in ida int)
BEGIN
select am.id_alumo_materia, al.id_alumno,p.nombre, n.unidad,n.calificacion, mat.nombre as materia
    from maestro m
	join maestro_materia mm on m.id_maestro=mm.id_maestro
	join materia mat on mm.id_materia=mat.id_materia
	join maestrosmateriashoras mmh on mm.id_maestro_materia=mmh.id_maestro_materia
	join grupo g on mmh.id_grupo=g.id_grupo
    join alumno al on g.id_grupo=al.id_grupo
    join persona p on al.id_persona=p.id_persona
    join alumo_materia am on al.id_alumno=am.id_alumno
    and mat.id_materia=am.id_materia
	join notas n on am.id_alumo_materia=n.id_alumno_materia
	where g.id_grupo=idg and al.id_alumno=ida
	;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_operaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_operaciones`(IN id INTEGER, IN modulo varchar(255))
BEGIN
	SELECT id_persona, nombre as descripcion, descripcion as operacion  FROM vw_operaciones where id_persona=id and nombre=modulo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_paginacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_paginacion`()
BEGIN
	DECLARE total_u INTEGER;
    DECLARE countPages INTEGER;
    SELECT count(id_persona) into total_u FROM vw_datosusuarios;
	SET countPages = total_u / 3;
    SELECT countPages;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_persona`(IN id INT)
BEGIN
	SELECT p.id_persona,p.id_direccion ,p.id_genero,p.id_perfil,p.nombre,p.app_mat,p.app_pat,p.fnac,p.seguro_social,
		p.password,p.telefono,p.correo,dir.ciudad,dir.colonia,dir.cp ,dir.calle1 ,dir.calle2,dir.referencia,
		a.id_alumno,a.id_grupo,a.matricula,a.promedio,
		m.id_maestro,m.especialidad,m.cedula,m.anios_exp
    FROM
        persona p JOIN direccion dir ON p.id_direccion = dir.id_direccion
        LEFT join alumno a on p.id_persona=a.id_persona
        LEFT join maestro m on p.id_persona=m.id_persona where p.id_persona=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 11:01:33
