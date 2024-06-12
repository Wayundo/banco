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

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcao` (
  `idfuncao` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idfuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` VALUES (1,'Cultivo de Grãos'),(2,'Fruticultura'),(3,'Horticultura'),(4,'Suinocultura'),(5,'Viticultura'),(6,'Avicultura'),(7,'Pecuária'),(8,'Cultivo de Café'),(9,'Horticultura');
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao_has_treinamento`
--

DROP TABLE IF EXISTS `funcao_has_treinamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcao_has_treinamento` (
  `funcao_idfuncao` int(11) NOT NULL,
  `treinamento_idtreinamento` int(11) NOT NULL,
  PRIMARY KEY (`funcao_idfuncao`,`treinamento_idtreinamento`),
  KEY `fk_funcao_has_treinamento_treinamento1_idx` (`treinamento_idtreinamento`),
  KEY `fk_funcao_has_treinamento_funcao1_idx` (`funcao_idfuncao`),
  CONSTRAINT `fk_funcao_has_treinamento_funcao1` FOREIGN KEY (`funcao_idfuncao`) REFERENCES `funcao` (`idfuncao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcao_has_treinamento_treinamento1` FOREIGN KEY (`treinamento_idtreinamento`) REFERENCES `treinamento` (`idtreinamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao_has_treinamento`
--

LOCK TABLES `funcao_has_treinamento` WRITE;
/*!40000 ALTER TABLE `funcao_has_treinamento` DISABLE KEYS */;
INSERT INTO `funcao_has_treinamento` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `funcao_has_treinamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liberacao`
--

DROP TABLE IF EXISTS `liberacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liberacao` (
  `funcao_idfuncao` int(11) NOT NULL,
  `colaborador_numeroMatricula` int(11) NOT NULL,
  `tecnico_idtecnico` int(11) NOT NULL,
  PRIMARY KEY (`funcao_idfuncao`,`colaborador_numeroMatricula`),
  KEY `fk_tecnico_has_funcao_funcao1_idx` (`funcao_idfuncao`),
  KEY `fk_tecnico_has_funcao_colaborador1_idx` (`colaborador_numeroMatricula`),
  KEY `fk_tecnico_has_funcao_tecnico1_idx` (`tecnico_idtecnico`),
  CONSTRAINT `fk_tecnico_has_funcao_colaborador1` FOREIGN KEY (`colaborador_numeroMatricula`) REFERENCES `colaborador` (`numeroMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tecnico_has_funcao_funcao1` FOREIGN KEY (`funcao_idfuncao`) REFERENCES `funcao` (`idfuncao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tecnico_has_funcao_tecnico1` FOREIGN KEY (`tecnico_idtecnico`) REFERENCES `tecnico` (`idtecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liberacao`
--

LOCK TABLES `liberacao` WRITE;
/*!40000 ALTER TABLE `liberacao` DISABLE KEYS */;
INSERT INTO `liberacao` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9);
/*!40000 ALTER TABLE `liberacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionario` (
  `idquestionario` int(11) NOT NULL,
  PRIMARY KEY (`idquestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `idsetor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idsetor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'Cultivo de Grãos'),(2,'Fruticultura'),(3,'Horticultura'),(4,'Suinocultura'),(5,'Viticultura'),(6,'Avicultura'),(7,'Pecuária'),(8,'Cultivo de Café'),(9,'Horticultura');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnico`
--

DROP TABLE IF EXISTS `tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnico` (
  `idtecnico` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `rua` varchar(60) DEFAULT NULL,
  `numeroCasa` varchar(6) DEFAULT NULL,
  `CEP` varchar(8) NOT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idtecnico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnico`
--

LOCK TABLES `tecnico` WRITE;
/*!40000 ALTER TABLE `tecnico` DISABLE KEYS */;
INSERT INTO `tecnico` VALUES (1,'Alexandre','1','Nunes','123456','1111','Salvador','Salomão',NULL,'',NULL,NULL,NULL),(2,'Joshua','2','','','2222',NULL,NULL,NULL,'',NULL,NULL,NULL),(3,'Augusto','3','','','3333',NULL,NULL,NULL,'',NULL,NULL,NULL),(4,'Filipe','4','','','4444',NULL,NULL,NULL,'',NULL,NULL,NULL),(5,'Williane','5','','','5555',NULL,NULL,NULL,'',NULL,NULL,NULL),(6,'Maria','6','','','',NULL,NULL,NULL,'',NULL,NULL,NULL),(7,'Ana','7','','','',NULL,NULL,NULL,'',NULL,NULL,NULL),(8,'Paulo','8','','','',NULL,NULL,NULL,'',NULL,NULL,NULL),(9,'João','9','','','',NULL,NULL,NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `DDI` varchar(4) NOT NULL,
  `DDD` varchar(4) NOT NULL,
  `NUMERO` varchar(9) NOT NULL,
  `tecnico_idtecnico` int(11) NOT NULL,
  PRIMARY KEY (`DDI`,`DDD`,`NUMERO`),
  KEY `fk_telefone_tecnico1_idx` (`tecnico_idtecnico`),
  CONSTRAINT `fk_telefone_tecnico1` FOREIGN KEY (`tecnico_idtecnico`) REFERENCES `tecnico` (`idtecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinamento`
--

DROP TABLE IF EXISTS `treinamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinamento` (
  `idtreinamento` int(11) NOT NULL,
  `descricao` varchar(70) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `validadeMes` int(11) NOT NULL,
  PRIMARY KEY (`idtreinamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinamento`
--

LOCK TABLES `treinamento` WRITE;
/*!40000 ALTER TABLE `treinamento` DISABLE KEYS */;
INSERT INTO `treinamento` VALUES (1,'Manejo de culturas específicas, como trigo, milho, arroz, etc.','Cultivo de Grãos',12),(2,'Podas e manejo da frutificação.','Fruticultura',0),(3,'Técnicas de cultivo em estufas ou ambientes controlados.','Horticultura',0),(4,'Manejo de instalações e sistemas de criação de suínos.','Suinocultura',0),(5,'Manejo do vinhedo, incluindo poda, desbaste e manejo da folhagem.','Viticultura',0),(6,'Construção e manejo de instalações para aves.','Avicultura',0),(7,'Nutrição animal e formulação de rações.','Pecuária',0),(8,'Práticas de manejo do cafeeiro, como poda, desbaste e manejo da sombra','Cultivo de Café',0),(9,'Técnicas de cultivo em estufas ou ambientes controlados.','Horticultura',0);
/*!40000 ALTER TABLE `treinamento` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 16:46:04
