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
-- Table structure for table `colaborador_has_questionario`
--

DROP TABLE IF EXISTS `colaborador_has_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador_has_questionario` (
  `colaborador_numeroMatricula` int(11) NOT NULL,
  `questionario_idquestionario` int(11) NOT NULL,
  `treinamentosMatriculados_idtreinamentoRealizado` int(11) NOT NULL,
  `notaPerguntaUm` int(11) DEFAULT NULL,
  `notaPerguntaDois` int(11) DEFAULT NULL,
  `notaPerguntaTres` int(11) DEFAULT NULL,
  `notaPerguntaQuatro` int(11) DEFAULT NULL,
  `notaPerguntaCinco` int(11) DEFAULT NULL,
  `notaPerguntaSeis` int(11) DEFAULT NULL,
  `notaPerguntaSete` int(11) DEFAULT NULL,
  `notaPerguntaOito` int(11) DEFAULT NULL,
  `notaPerguntaNove` int(11) DEFAULT NULL,
  `notaPerguntaDez` int(11) DEFAULT NULL,
  PRIMARY KEY (`colaborador_numeroMatricula`,`questionario_idquestionario`,`treinamentosMatriculados_idtreinamentoRealizado`),
  KEY `fk_colaborador_has_questionario_questionario1_idx` (`questionario_idquestionario`),
  KEY `fk_colaborador_has_questionario_colaborador1_idx` (`colaborador_numeroMatricula`),
  KEY `fk_colaborador_has_questionario_treinamentosMatriculados1_idx` (`treinamentosMatriculados_idtreinamentoRealizado`),
  CONSTRAINT `fk_colaborador_has_questionario_colaborador1` FOREIGN KEY (`colaborador_numeroMatricula`) REFERENCES `colaborador` (`numeroMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_colaborador_has_questionario_questionario1` FOREIGN KEY (`questionario_idquestionario`) REFERENCES `questionario` (`idquestionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_colaborador_has_questionario_treinamentosMatriculados1` FOREIGN KEY (`treinamentosMatriculados_idtreinamentoRealizado`) REFERENCES `treinamentosmatriculados` (`idtreinamentoRealizado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador_has_questionario`
--

LOCK TABLES `colaborador_has_questionario` WRITE;
/*!40000 ALTER TABLE `colaborador_has_questionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaborador_has_questionario` ENABLE KEYS */;
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
