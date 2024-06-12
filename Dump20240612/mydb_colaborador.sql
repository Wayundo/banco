-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `numeroMatricula` int(11) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `setor_idsetor` int(11) NOT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `rua` varchar(60) DEFAULT NULL,
  `numeroCasa` varchar(6) DEFAULT NULL,
  `CEP` varchar(8) NOT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numeroMatricula`),
  KEY `fk_colaborador_setor_idx` (`setor_idsetor`),
  CONSTRAINT `fk_colaborador_setor` FOREIGN KEY (`setor_idsetor`) REFERENCES `setor` (`idsetor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` VALUES (1,'1111','','','joao',1,NULL,NULL,NULL,'',NULL,NULL,NULL),(2,'2222','','','pedro',2,NULL,NULL,NULL,'',NULL,NULL,NULL),(3,'3333','','','maria',3,NULL,NULL,NULL,'',NULL,NULL,NULL),(4,'4444','','','joana',4,NULL,NULL,NULL,'',NULL,NULL,NULL),(5,'5555','','','paulo',5,NULL,NULL,NULL,'',NULL,NULL,NULL),(6,'6666','','','felipe',6,NULL,NULL,NULL,'',NULL,NULL,NULL),(7,'7777','','','joshua',7,NULL,NULL,NULL,'',NULL,NULL,NULL),(8,'8888','','','augusto',8,NULL,NULL,NULL,'',NULL,NULL,NULL),(9,'9999','','','williane',9,NULL,NULL,NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 16:44:52
