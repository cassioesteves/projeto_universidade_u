use universidade_u;

/*
1) - descrever as tabelas do banco
2) - descrever os atributos das tabelas
3) - descrever os relacionamentos entre as tabelas
*/

show tables;

show create table aluno;

aluno, CREATE TABLE `aluno` (
  `IDALUNO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(25) NOT NULL,
  `SEXO` char(1) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `DATA_NASC` date DEFAULT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `ativo_sn` int DEFAULT '1',
  PRIMARY KEY (`IDALUNO`),
  UNIQUE KEY `uc_aluno_cpf` (`CPF`),
  UNIQUE KEY `uc_aluno_email` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

show create table telefone;

telefone, CREATE TABLE `telefone` (
  `IDTELEFONE` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `tipo` enum('CEL','RES','COM') NOT NULL,
  `FK_IDALUNO` int NOT NULL,
  PRIMARY KEY (`IDTELEFONE`),
  KEY `FK_ALUNO_TELEFONE` (`FK_IDALUNO`),
  CONSTRAINT `FK_ALUNO_TELEFONE` FOREIGN KEY (`FK_IDALUNO`) REFERENCES `aluno` (`IDALUNO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
