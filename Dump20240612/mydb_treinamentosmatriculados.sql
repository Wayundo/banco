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
-- Table structure for table `treinamentosmatriculados`
--

DROP TABLE IF EXISTS `treinamentosmatriculados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinamentosmatriculados` (
  `idtreinamentoRealizado` int(11) NOT NULL,
  `dataInicio` date NOT NULL,
  `cargaHoraria` varchar(10) NOT NULL,
  `dataValidade` date NOT NULL,
  `dataConclusao` date NOT NULL,
  `situacao` tinyint(4) NOT NULL,
  `certeficado` blob NOT NULL,
  `colaborador_numeroMatricula` int(11) NOT NULL,
  `treinamento_idtreinamento` int(11) NOT NULL,
  PRIMARY KEY (`idtreinamentoRealizado`),
  KEY `fk_treinamentoRealizado_colaborador1_idx` (`colaborador_numeroMatricula`),
  KEY `fk_treinamentosMatriculados_treinamento1_idx` (`treinamento_idtreinamento`),
  CONSTRAINT `fk_treinamentoRealizado_colaborador1` FOREIGN KEY (`colaborador_numeroMatricula`) REFERENCES `colaborador` (`numeroMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treinamentosMatriculados_treinamento1` FOREIGN KEY (`treinamento_idtreinamento`) REFERENCES `treinamento` (`idtreinamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinamentosmatriculados`
--

LOCK TABLES `treinamentosmatriculados` WRITE;
/*!40000 ALTER TABLE `treinamentosmatriculados` DISABLE KEYS */;
INSERT INTO `treinamentosmatriculados` VALUES (1,'2024-11-11','180h','2025-12-12','2024-12-12',1,'',1,1),(2,'2002-09-09','92h','2005-10-10','2002-09-10',1,'',2,2),(3,'0000-00-00','260h','0000-00-00','0000-00-00',0,'',3,3),(4,'0000-00-00','120h','0000-00-00','0000-00-00',1,'',4,4),(5,'0000-00-00','80h','0000-00-00','0000-00-00',0,'',5,5),(6,'0000-00-00','124h','0000-00-00','0000-00-00',1,'',6,6),(7,'0000-00-00','77h','0000-00-00','0000-00-00',1,'',7,7),(8,'0000-00-00','24h','0000-00-00','0000-00-00',1,'',8,8),(9,'0000-00-00','62h','0000-00-00','0000-00-00',0,'',9,9);
/*!40000 ALTER TABLE `treinamentosmatriculados` ENABLE KEYS */;
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
