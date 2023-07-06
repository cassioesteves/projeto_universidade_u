CREATE DATABASE UNIVERSIDADE_U
USE UNIVERSIDADE_U

DROP DATABASE UNIVERSIDADE_U

SHOW DATABASES;
SHOW tables

SELECT * FROM ALUNO;

/* Lógico_1: */

DROP TABLE ALUNO;

CREATE TABLE ALUNO (
    NOME VARCHAR(25),
    IDADE INT,
    SEXO CHAR(1),
    ENDERECO TEXT,
    TELEFONE VARCHAR(20),
    VALOR_PAGO_CURSO FLOAT(10 , 2 ),
    DATA_INSCRICAO_CURSO DATE,
    ATIVO_SN INT
);
                             /*NOME, IDADE, SEXO, ENDERECO, TELEFONE, VALOR_PAGO_CURSO, DATA_INSCRICAO_CURSO, ATIVO_SN*/
	INSERT INTO ALUNO VALUES('FULANO', 55, 'M', 'AVENIDA PAULISTA, 1500 - BELA VISTA - SÃO PAULO-SP', '11 91234-5678', 645.22, '2018-12-01',1 );
	INSERT INTO ALUNO VALUES('ANA', 22, 'F', 'AV COPACABANA, 500 - COPACABANA - RIO DE JANEIRO - RJ', '21 91816-8040', 498.56, '2019-02-20', 0);
    INSERT INTO ALUNO VALUES('BELTRANO', 38, 'M', 'AV CAETÉ, 280 - BARREIRO - BELO HORIZONTE - MG', '31 94128-7893', 741.30, '2022-03-08', 0);
    INSERT INTO ALUNO VALUES('CICRANO', 22, 'M', 'AV NORTE SUL, 360 - JD CAMBURI - VITORIA - ES', '27 92607-3625', 955.90, '2022-08-15' , 1);
    INSERT INTO ALUNO VALUES('BIA', 31, 'F', 'AV BEIRA MAR, 155 - CENTRO - FORTALEZA - CE', '75 91816-8040', 385.50, '2019-02-20', 0);
	INSERT INTO ALUNO VALUES('MARIA', 42, 'F', 'RUA SERTANEJA, 13 - DUPLA - GOIANIA - GO', '62 94528-7854', 1200.00, '2023-01-15', 1);
    INSERT INTO ALUNO VALUES('CORINGA', 18, 'M', 'ANONIMUS', '00 92345-6789', 500.00, '2023-10-31', 1);
    INSERT INTO ALUNO VALUES('MARIO',33 , 'M', 'RUA DOS JOIN, 19 - CALIFORNIA - LA - USA', '00 92345-6789', 500.00, '2023-01-02', 1);
    
    SELECT * FROM ALUNO
    ORDER BY 1
    
    SELECT * FROM ALUNO
    ORDER BY 8
    
	SELECT NOME, ENDERECO FROM ALUNO
    ORDER BY 1
    
	SELECT * FROM ALUNO
    WHERE VALOR_PAGO_CURSO <=500
    ORDER BY 1
    
    SELECT * FROM ALUNO
    WHERE ATIVO_SN = 1 AND IDADE >30
    ORDER BY 1
    
	SELECT * FROM ALUNO
    WHERE ATIVO_SN = 1 AND IDADE >=42
    ORDER BY 1
    
	SELECT * FROM ALUNO
    WHERE IDADE BETWEEN 30 AND 40
        
	/*PADARO DE DATA NO BANCO YYYY-MM-DD*/
    
	SELECT * FROM ALUNO
    WHERE DATA_INSCRICAO_CURSO BETWEEN '2019-01-01' AND '2022-01-01'
    
    SELECT * FROM ALUNO
    WHERE NOME = 'CICRANO' OR NOME = 'FULANO' OR NOME = 'BELTRANO'    
    
    /*USANDO IN*/
    
	SELECT * FROM ALUNO
    WHERE NOME IN('CICRANO','FULANO','BELTRANO')
    
	SELECT * FROM ALUNO
    WHERE NOME NOT IN('CICRANO','FULANO','BELTRANO')
    
	SELECT * FROM ALUNO
    WHERE NOME = 'MARIA'    
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE 'MARIA'    
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE '%O'  
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE 'C%'
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE '%R%'
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE 'M%A'
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE '_ARIA'
    
    SELECT * FROM ALUNO
    WHERE NOME LIKE '_ARI_'
    
    SELECT * FROM ALUNO
    WHERE NOME LIKE 'MA__A'
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE 'M%'
    
	SELECT * FROM ALUNO
    WHERE NOME LIKE '%M___A'
    
	SELECT * FROM ALUNO
    ORDER BY 1 ASC
    
	SELECT * FROM ALUNO
    ORDER BY 6 ASC
    
    SELECT NOME, ATIVO_SN FROM ALUNO
    WHERE NOME = 'CORINGA'
    
    UPDATE ALUNO
    SET ATIVO_SN = 0, VALOR_PAGO_CURSO = 550
	WHERE NOME = 'CORINGA';
    
    DESC ALUNO;
    
    /*DDL*/
    /*ADICIONANDO UMA COLUNA NOVA A TABELA*/
    ALTER TABLE ALUNO ADD COLUMN CPF VARCHAR(11);
	/*DELETAR UMA COLUNA*/
    ALTER TABLE ALUNO DROP COLUMN CPF;
    /*ADICONAR COLUNA POSIÇÃO ESPECIFICA*/
	ALTER TABLE ALUNO ADD COLUMN CPF VARCHAR(14) AFTER SEXO;
    ALTER TABLE ALUNO ADD COLUMN EMAIL VARCHAR(150) AFTER CPF;
    /*MODIFICAR COLUNA USANDO MODIFY*/
    ALTER TABLE ALUNO MODIFY COLUMN CPF VARCHAR(14);
    
     /* INSERINDO CPF*/
    UPDATE ALUNO SET CPF = '111.111.111-11' WHERE NOME = 'ANA';
    UPDATE ALUNO SET CPF = '222.222.222-22' WHERE NOME = 'BELTRANO';
    UPDATE ALUNO SET CPF = '333.333.333-33' WHERE NOME = 'BIA';
    UPDATE ALUNO SET CPF = '444.444.444-44' WHERE NOME = 'CICRANO';
    UPDATE ALUNO SET CPF = '555.555.555-55' WHERE NOME = 'CORINGA';
    UPDATE ALUNO SET CPF = '666.666.666-66' WHERE NOME = 'FULANO';
    UPDATE ALUNO SET CPF = '777.777.777-77' WHERE NOME = 'MARIA';
    UPDATE ALUNO SET CPF = '888.888.888-88' WHERE NOME = 'MARIO';
    
    /* INSERINDO EMAIL*/
    UPDATE ALUNO SET EMAIL = 'ANA@CESTEVES.COM' WHERE NOME = 'ANA';
    UPDATE ALUNO SET EMAIL = 'BELTRANO@CESTEVES.COM' WHERE NOME = 'BELTRANO';
    UPDATE ALUNO SET EMAIL = 'BIA@CESTEVES.COM' WHERE NOME = 'BIA';
    UPDATE ALUNO SET EMAIL = 'CICRANO@CESTEVES.COM' WHERE NOME = 'CICRANO';
    UPDATE ALUNO SET EMAIL = '' WHERE NOME = 'CORINGA';
    UPDATE ALUNO SET EMAIL = 'FULANO@CESTEVES.COM' WHERE NOME = 'FULANO';
    UPDATE ALUNO SET EMAIL = 'MARIA@CESTEVES.COM' WHERE NOME = 'MARIA';
    UPDATE ALUNO SET EMAIL = 'MARIO@CESTEVES.COM' WHERE NOME = 'MARIO';
    
    SELECT * FROM ALUNO
    ORDER BY 1 ASC
    
    USE UNIVERSIDADE_U
    DESC ALUNO;
    
    /*NAO E POSSIVEL MODIFICAR UMA COLUNA APOS ELA SER PRIMARY KEY*/
    ALTER TABLE ALUNO MODIFY COLUMN CPF VARCHAR(14) PRIMARY KEY;
	ALTER TABLE ALUNO MODIFY COLUMN CPF VARCHAR(14);
    
    /*DROP COLUNA ENDERECO*/
	ALTER TABLE ALUNO DROP COLUMN ENDERECO;
    
    	ALTER TABLE ALUNO DROP COLUMN PAIS;
        
    /*ADD A COLUNA NA PRIMEIRA POSIÇÃO*/
	ALTER TABLE ALUNO ADD COLUMN IDALUNO INT AUTO_INCREMENT PRIMARY KEY FIRST;
    
    /*DECOMPONDO A COLUMAN ENDEREÇO, E ADD NOVAS COLUNAS*/
    
	ALTER TABLE ALUNO ADD COLUMN LOGRADOURO VARCHAR(100) AFTER TELEFONE;
	ALTER TABLE ALUNO ADD COLUMN NUMERO VARCHAR(10) AFTER LOGRADOURO;
	ALTER TABLE ALUNO ADD COLUMN COMPLEMENTO VARCHAR(20) AFTER NUMERO;
	ALTER TABLE ALUNO ADD COLUMN BAIRRO VARCHAR(100) AFTER COMPLEMENTO;
	ALTER TABLE ALUNO ADD COLUMN CIDADE VARCHAR(50) AFTER BAIRRO;
	ALTER TABLE ALUNO ADD COLUMN ESTADO CHAR(2) AFTER CIDADE;
	ALTER TABLE ALUNO ADD COLUMN PAIS CHAR(3) AFTER ESTADO;
    
    /*INSERINDO DADOS NA NOVAS COLUNA*/
    
	UPDATE ALUNO
    SET
		LOGRADOURO = 'AVENIDA PAULISTA', 'AV COPACABANA', 'AV CAETÉ', 'AV NORTE SUL', 'ANONIMUS','AV BEIRA MAR', 'RUA SERTANEJA', 'SUNSET BOULEVARD',
        NUMERO = '11', '21', '31', '27', 'ANONIMUS','85', '62', '01',
        COMPLEMENTO = 'COMERCIAL', 'BRONZEADO', 'PAO DE QUEIJO', 'CAPIXABA', 'ANONIMUS','POTAO','COWBOY','FILMES',
        BAIRRO = 'BELA VISTA', 'COPACABANA', 'PAMPULHA', 'JARDIM CAMBURI', 'ANONIMUS','CENTRO', 'DUPLA','HOLLYWOOD',
        CIDADE = 'SÃO PAULO', 'RIO DE JANEIRO', 'BELO HORIZONTE', 'VITORIA', 'ANONIMUS','FORTALEZA', 'GOIANIA','LOS ANGELES',
        ESTADO = 'SP','RJ', 'MG', 'ES', 'OF','CE', 'GO','CA',
        PAIS = 'BRA','BRA','BRA','BRA','ANM','BRA','BRA','USA'
	WHERE IDALUNO = 6,1,2,4,5,3,7,8)
	
    UPDATE ALUNO
    SET
		LOGRADOURO = 'SUNSET BOULEVARD',
        NUMERO = '01',
        COMPLEMENTO = 'FILMES',
        BAIRRO = 'HOLLYWOOD',
        CIDADE = 'LOS ANGELES',
        ESTADO = 'CA',
        PAIS = 'USA'
	WHERE IDALUNO = 8;
    
        	UPDATE ALUNO
    SET
		LOGRADOURO = 'RUA SERTANEJA',
        NUMERO = '62',
        COMPLEMENTO = 'COWBOY',
        BAIRRO = 'DUPLA',
        CIDADE = 'GOIANIA',
        ESTADO = 'GO',
        PAIS = 'BRA'
	WHERE IDALUNO = 7;
    
    	UPDATE ALUNO
    SET
		LOGRADOURO = 'AV BEIRA MAR', 
        NUMERO = '85',
        COMPLEMENTO = 'POTAO',
        BAIRRO = 'CENTRO',
        CIDADE = 'FORTALEZA',
        ESTADO = 'CE',
        PAIS = 'BRA'
	WHERE IDALUNO = 3;
    
	UPDATE ALUNO
    SET
		LOGRADOURO = 'AV NORTE SUL',
        NUMERO = '27',
        COMPLEMENTO = 'CAPIXABA',
        BAIRRO = 'JARDIM CAMBURI',
        CIDADE = 'VITORIA', 
        ESTADO = 'ES',
        PAIS = 'BRA'
	WHERE IDALUNO = 4;
    
        	UPDATE ALUNO
    SET
		LOGRADOURO = 'AV CAETÉ',
        NUMERO = '31',
        COMPLEMENTO = 'BRONZEADO',
        BAIRRO = 'PAMPULHA', 
        CIDADE = 'BELO HORIZONTE',
        ESTADO = 'MG',
        PAIS = 'BRA'
	WHERE IDALUNO = 2;
    
    	UPDATE ALUNO
    SET
		LOGRADOURO = 'AV COPACABANA',
        NUMERO = '21', 
        COMPLEMENTO = 'BRONZEADO',
        BAIRRO = 'COPACABANA', 
        CIDADE = 'RIO DE JANEIRO',
        ESTADO = 'RJ',
        PAIS = 'BRA'
	WHERE IDALUNO = 1;

	UPDATE ALUNO
    SET
		LOGRADOURO = 'AVENIDA PAULISTA', 
        NUMERO = '11',
        COMPLEMENTO = 'COMERCIAL', 
        BAIRRO = 'BELA VISTA',
        CIDADE = 'SÃO PAULO',
        ESTADO = 'SP',
        PAIS = 'BRA'
	WHERE IDALUNO = 6;
    
    
    
    SELECT * FROM ALUNO;
    /*EXCLUIR VARIOS REGISTRO DE UMA VEZ*/
    DELETE FROM ALUNO WHERE IDALUNO IN (9,10,11,12,13,14,15);
    
    DESC ALUNO;
    
    INSERT INTO ALUNO (IDALUNO,LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS) 
    VALUES
    (6,'AVENIDA PAULISTA','11','COMERCIAL','BELA VISTA','SÃO PAULO','SP','BRA'),
	(1,'AV COPACABANA','21','BRONZEADO','COPACABANA','RIO DE JANEIRO','RJ','BRA'),
    (2,'AV CAETÉ','31','PAO DE QUEIJO','PAMPULHA','BELO HORIZONTE','MG','BRA'),
    (4,'AV NORTE SUL','27','CAPIXABA','JARDIM CAMBURI','VITORIA','ES','BRA'),
    (3,'AV BEIRA MAR','85','POTAO','CENTRO','FORTALEZA','CE','BRA'),
	(7,'RUA SERTANEJA','62','COWBOY','DUPLA','GOIANIA','GO','BRA'),
    (8,'SUNSET BOULEVARD','01','FILMES','HOLLYWOOD','LOS ANGELES','CA','USA');

CREATE TABLE TELEFONE(
	IDTELEFONE INT AUTO_INCREMENT PRIMARY KEY,
    NUMERO VARCHAR(20),
    TIPO ENUM ('CEL','RES','COM')
);
DROP TABLE TELEFONE;

DESC TELEFONE;

INSERT INTO TELEFONE(NUMERO,TIPO)VALUES('21 98216-5258','CEL');
INSERT INTO TELEFONE(NUMERO,TIPO)VALUES('31 94131-6032','COM')

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;

/*CRIANDO CHAVE ESTRANGEIRA*/
ALTER TABLE TELEFONE ADD COLUMN FK_IDALUNO INT;

/*CRIANDO CHAVE CONSTRAINT*/
ALTER TABLE TELEFONE ADD CONSTRAINT FK_ALUNO_TELEFONE
FOREIGN KEY (FK_IDALUNO) REFERENCES ALUNO(IDALUNO);

/*PODEMOS CRIAR DESSA FORMA DEFINIR AS FK E CONSTRAINTS DENTRO
DA CRIAÇÃO DAS TABELAS, POREM O NOME CONSTRAINTS E CRIADA DE FORMA ALEATORIA*/

CREATE TABLE TELEFONE2(
	IDTELEFONE INT AUTO_INCREMENT PRIMARY KEY,
    NUMERO VARCHAR(20),
    TIPO ENUM ('CEL','RES','COM'),
    FK_IDALUNO INT,
    FOREIGN KEY (FK_IDALUNO) REFERENCES ALUNO(IDALUNO)
);
DROP TABLE TELEFONE2;

/*ATRELANDO OS NUMEROS AOS ALUNOS*/alter

UPDATE TELEFONE SET FK_IDALUNO = 1 
WHERE NUMERO = '21 98216-5258';

UPDATE TELEFONE SET FK_IDALUNO = 3
WHERE NUMERO = '31 94131-6032';

/*DESSA FORMA NAO FUNCIONA, INSERIR O NUMERO PELO UPDATE TEM Q SER ATRAVES DO INSERT ABAIXO*/
UPDATE TELEFONE SET FK_IDALUNO = 6
WHERE NUMERO = '11 95080-1102';

INSERT INTO TELEFONE(NUMERO,TIPO,FK_IDALUNO)VALUES ('11 95080-1102','RES',6);

/*ADD VARIOS TELEFONE AO UM USER*/
INSERT INTO TELEFONE(NUMERO,TIPO,FK_IDALUNO)VALUES ('01 91111-1111','CEL',5),('01 4132-6032','RES',5),('01 0800-0000','COM',5);

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;

DROP TABLE ENDERECO;
CREATE TABLE ENDERECO (
    IDENDERECO INT AUTO_INCREMENT PRIMARY KEY,
    LOGRADOURO VARCHAR(100),
    NUMERO  VARCHAR(10),
    COMPLEMENTO VARCHAR(20),
    BAIRRO VARCHAR(100),
    CIDADE VARCHAR(50),
    ESTADO CHAR(2),
    PAIS CHAR(3),
    FK_IDALUNO INT
);
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ALUNO_ENDERECO
    FOREIGN KEY (FK_IDALUNO)
    REFERENCES ALUNO (IDALUNO);

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;
SELECT * FROM ENDERECO;

DESC ENDERECO;

SELECT IDALUNO,LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS FROM ALUNO;
SELECT IDENDERECO,LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS, FK_IDALUNO FROM ENDERECO;

/*INSERT PELA CHAVE ESTRANGEIRA,MUITO TOP*/
INSERT INTO ENDERECO (LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS, FK_IDALUNO) 
SELECT LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS, IDALUNO
FROM ALUNO;

/*OU*/

INSERT INTO ENDERECO (LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS, FK_IDALUNO) 
VALUES('AVENIDA PAULISTA','11','COMERCIAL','BELA VISTA','SÃO PAULO','SP','BRA',6),
	  ('AV COPACABANA','21','BRONZEADO','COPACABANA','RIO DE JANEIRO','RJ','BRA',1),
      ('AV CAETÉ','31','PAO DE QUEIJO','PAMPULHA','BELO HORIZONTE','MG','BRA',2),
      ('AV NORTE SUL','27','CAPIXABA','JARDIM CAMBURI','VITORIA','ES','BRA',4),
      ('AV BEIRA MAR','85','POTAO','CENTRO','FORTALEZA','CE','BRA',3),
	  ('RUA SERTANEJA','62','COWBOY','DUPLA','GOIANIA','GO','BRA',7),
      ('SUNSET BOULEVARD','01','FILMES','HOLLYWOOD','LOS ANGELES','CA','USA',8);


/*APAGANDO AS COLUNAS DE ENDERECO DUPLICADO NA TABELA ALUNO*/

	ALTER TABLE ALUNO DROP COLUMN LOGRADOURO;
	ALTER TABLE ALUNO DROP COLUMN NUMERO;
	ALTER TABLE ALUNO DROP COLUMN COMPLEMENTO;
	ALTER TABLE ALUNO DROP COLUMN BAIRRO;
	ALTER TABLE ALUNO DROP COLUMN CIDADE;
	ALTER TABLE ALUNO DROP COLUMN ESTADO;
	ALTER TABLE ALUNO DROP COLUMN PAIS;

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;
SELECT * FROM ENDERECO;
SELECT * FROM CURSO;

/*COMO SABER OS ENDERECO DE UM IDALUNO*/

SELECT * FROM ENDERECO WHERE FK_IDALUNO = 1;
SELECT * FROM ENDERECO WHERE FK_IDALUNO = 8;

DROP TABLE CURSO;
CREATE TABLE CURSO (
    IDCURSO INT AUTO_INCREMENT PRIMARY KEY,
    DESCRICAO VARCHAR(50)
);

INSERT INTO CURSO (DESCRICAO)VALUES
('CURSO DB SQL SERVER'),('CURSO MONGODB'),('CURSO DB MYSQL'),('PROGRAMACAO PYTHON'),('DESENVOLVIMENTO WEB');


CREATE TABLE ALUNO_CURSO (
    ID_ALUNOCURSO INT AUTO_INCREMENT PRIMARY KEY,
    FK_IDALUNO INT,
    FK_IDCURSO INT
);
 
SELECT * FROM ALUNO_CURSO;

DESC ALUNO_CURSO

ALTER TABLE ALUNO_CURSO ADD CONSTRAINT FK_ALUNO_CURSO
    FOREIGN KEY (FK_IDALUNO) REFERENCES ALUNO (IDALUNO);
 
ALTER TABLE ALUNO_CURSO ADD CONSTRAINT FK_CURSO_ALUNO
    FOREIGN KEY (FK_IDCURSO) REFERENCES CURSO (IDCURSO);

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;
SELECT * FROM ENDERECO;
SELECT * FROM CURSO;
SELECT * FROM ALUNO_CURSO;

INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(1,5);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(2,3);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(8,5);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(5,1);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(5,2);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(5,3);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(5,4);
INSERT INTO ALUNO_CURSO(FK_IDALUNO,FK_IDCURSO)VALUES(5,5);

/*ALTERANDO A TIPAGEM DE UMA TABELA SEM DROP A TABELA TODA*/

ALTER TABLE TELEFONE DROP COLUMN TIPO;
ALTER TABLE TELEFONE ADD COLUMN TIPO ENUM('Cel','Res','Com');

SELECT * FROM TELEFONE;

UPDATE TELEFONE SET TIPO = 'COM' WHERE IDTELEFONE = 6;

CREATE TABLE TELEFONE(
	IDTELEFONE INT AUTO_INCREMENT PRIMARY KEY,
    NUMERO VARCHAR(20)not null,
    TIPO ENUM ('CEL','RES','COM') not null,
    FK_IDALUNO INT not null
 );
status
alter table telefone modify column numero varchar(20) not null;
alter table telefone modify column tipo ENUM('CEL','RES','COM') not null;
alter table telefone modify column FK_IDALUNO int not null;

SELECT * FROM TELEFONE;

DESC TELEFONE;
insert into telefone (numero, tipo, fk_idaluno)values('11 96669-5313','CEL',8 )

/*AJUSTANDO TABELAS PARA NOT NULL*/

SELECT * FROM ALUNO;
DESC ALUNO;

SELECT * FROM ALUNO;
alter table ALUNO modify column NOME varchar(25) NOT NULL;
alter table ALUNO modify column IDADE int NOT NULL;
alter table ALUNO modify column SEXO char(1) NOT NULL;
alter table ALUNO modify column CPF VARCHAR(14) NOT NULL;
alter table ALUNO modify column EMAIL VARCHAR(150) NOT NULL;

alter table ALUNO modify column VALOR_PAGO_CURSO float(10,2) NOT NULL;
alter table ALUNO modify column DATA_INSCRICAO_CURSO date NOT NULL;
alter table ALUNO modify column ATIVO_SN INT NOT NULL;

alter table ENDERECO modify column LOGRADOURO VARCHAR(100) NOT NULL;
alter table ENDERECO modify column NUMERO  VARCHAR(10) NOT NULL;
alter table ENDERECO modify column BAIRRO VARCHAR(100) NOT NULL;
alter table ENDERECO modify column CIDADE VARCHAR(50) NOT NULL;
alter table ENDERECO modify column ESTADO CHAR(2) NOT NULL;
alter table ENDERECO modify column PAIS CHAR(3) NOT NULL;
alter table ENDERECO modify column FK_IDALUNO INT NOT NULL;

DELETE FROM ENDERECO WHERE IDENDERECO = 5;

show table status

DESC ALUNO;
DESC TELEFONE;
DESC ENDERECO;

SELECT * FROM ALUNO;
SELECT * FROM TELEFONE;
SELECT * FROM ENDERECO;
SELECT * FROM CURSO;
SELECT * FROM ALUNO_CURSO;

/*adicionando uma coluna a unique */
alter table aluno add constraint uc_aluno_cpf unique(cpf);
alter table aluno add constraint uc_aluno_email unique(email);

insert into aluno (NOME, IDADE, SEXO, CPF, EMAIL, TELEFONE, VALOR_PAGO_CURSO, DATA_INSCRICAO_CURSO, ATIVO_SN)
values ('CESTEVES', '33', 'M', '999.999.999-99', 'CESTEVES@UOL.COM', '00 94210-5724', '250.00', '2021-10-15', '0');

insert into aluno (NOME, IDADE, SEXO, CPF, EMAIL, TELEFONE, VALOR_PAGO_CURSO, DATA_INSCRICAO_CURSO, ATIVO_SN)
values ('CASSIO', '33', 'M', '999.999.999-10', 'CASSIO@CESTEVES.COM', '00 94210-5724', '250.00', '2021-10-15', '0');

alter table ENDERECO add constraint uc_endereco_fkidaluno unique(FK_IDALUNO);

insert into ENDERECO(LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, ESTADO, PAIS, FK_IDALUNO)
values ('STO ANDRE', '802', NULL, 'ANDRE CARLONI', 'SERRA', 'ES', 'BRA',20);

/*count*/
select count(*)from aluno;
select count(distinct nome)from aluno;

/*max*/

select max(valor_pago_curso) from aluno;
select max(valor_pago_curso) from aluno where sexo = 'm';
select max(valor_pago_curso) from aluno where idade > 30;
select max(valor_pago_curso) from aluno where idade <=21;

/*min*/
select min(valor_pago_curso) from aluno;
select min(valor_pago_curso) from aluno where ativo_sn != 0;

!= função para usar o diferente do valor desejado

/*avg*/
select avg(valor_pago_curso) from aluno;

/*sum*/
select sum(valor_pago_curso) from aluno;


select 
max(valor_pago_curso) as maximo,
min(valor_pago_curso) as minimo,
avg(valor_pago_curso) as media,
sum(valor_pago_curso) as "soma total"
from aluno;

select 
max(valor_pago_curso) as maximo,
min(valor_pago_curso) as minimo,
avg(valor_pago_curso) as media,
sum(valor_pago_curso) as "soma total"
from aluno
where ativo_sn = 1;

select count(*) from aluno where sexo = 'f'

select count(*) from aluno where sexo = "m"

USE UNIVERSIDADE_U
SELECT * FROM ALUNO;

use universidade_u;

/* ceil (teto)- arredonda o valor para cima */ 
select ceil(17.4) as valor;
select ceil(17.0) as valor;

/* floor (chao)- arredonda o valor para baixo */
select floor(19.555) as valor;

/* truncate - trunca a fração */
/*numero apos a . define a quantida de casa apos ela*/
select truncate(22.757333, 1) as valor;
select truncate(22.757333, 2) as valor;

/* round (redonda) - arredondamento */
select round(55.752, 2) as valor;
select round(55.755, 2) as valor;
select round(55.759, 2) as valor;
select round(55.754, 2) as valor;
select round(55.744, 2) as valor;

/* < 5 = para baixo */
/* >= 5 = para cima */

select * from aluno
select 
	nome, 
    ceil(valor_pago_curso) as valor 
from 
	aluno 
where 
	idaluno in(1, 4, 5);
    
    
select 
    round(avg(valor_pago_curso), 2) as valor_pago_curso 
from 
	aluno 
where 
	idaluno in(1, 4, 5);
    
    /*media*/
select 
	avg(valor_pago_curso)
from aluno
where
	idaluno in (1,4,5);
        /*rendonda media*/
select 
	round(avg(valor_pago_curso))
from aluno
where
	idaluno in (1,4,5);

        /*rendonda media, e definindo casas decimais*/
select 
	round(avg(valor_pago_curso),2)
from aluno
where
	idaluno in (1,4,5);
    
/*54. Select - Agrupando registros (Group by)*/

use universidade_u;

select 
	nome, count(*) as repeticao_nome_agrupamento 
from 
	aluno 
group by 
	nome;
    
select mome from aluno group by nome;
	
    
select 
	ativo_sn, count(*) as repeticao_ativo_sn_agrupamento
from 
	aluno
group by
	ativo_sn;	
    
    
select 
	ativo_sn, nome, count(*) as repeticao_agrupamento
from 
	aluno
group by
	ativo_sn, nome;
    
update aluno set nome = 'Rosa' where nome = 'Maria';    

/* --------- */  
select 
	ativo_sn, 
    round(avg(valor_pago_curso), 2) as media_por_agrupamento
from 
	aluno
group by
	ativo_sn;
/* --------- */    

select 
	sexo, floor(avg(idade)) as media_idade_por_sexo
from 
	aluno
group by
	sexo;
    
/* --------- */    

select 
	sexo, 
    min(idade) as menor_idade_do_agrupamento, 
    max(idade) as maior_idade_do_agrupamento
from 
	aluno
group by
	sexo;
    
select idade from aluno where sexo = 'f'; 
select idade from aluno where sexo = 'm'; 

select 
	estado, count(*) as total_por_estado
from 
	endereco
group by 
	estado;
    
select 
	tipo, count(*) as total_por_tipo
from 
	telefone
group by 
	tipo;
    
use universidade_u;

select * from aluno;

/* estados com mais alunos - alunos por estados */

select
	estado, count(*) as total
from 
	endereco
group by
	estado
order by
	total desc
limit 
	3;
    
/* cursos mais vendidos - alunos por curso*/

select * from aluno_curso;

select
	fk_idcurso, count(*) as total
from 
	aluno_curso
group by
	fk_idcurso 
order by
	total;

/* saber os curso de forma distinta*/

select distinct(fk_idcurso)from aluno_curso;

/*
1 - 1
2 - 1
3 - 2 
4 - 1
5 - 3
*/
use universidade_u;

create table gasto(
	idgasto int primary key auto_increment,
	ano int not null,
	tipo enum('previsto','realizado') not null,
	jan float(10,2),
	fev float(10,2),
	mar float(10,2),
	abr float(10,2),
	mai float(10,2),
	jun float(10,2),
	jul float(10,2),
	ago float(10,2),
	`set` float(10,2),
	`out` float(10,2),
	nov float(10,2),
	dez float(10,2)
);

drop table gasto;
select * from gasto;

/*soma*/
select (144 + 150) as total;

/*subtracao*/
select (70 - 100) as total;

/*multiplicacao*/
select (70 * 100) as total;

/*divisao*/
select (70 / 100) as total;

/*populando as tabela gastos*/

insert into gasto(ano, tipo, jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez)values('2019', 'previsto', 18000, 17000, 19000, 20000, 17000, 18000, 18500, 18500, 1800, 17500, 18000, 17000);
insert into gasto(ano, tipo, jan)values('2019', 'realizado', 18353.20);
update gasto set fev = 17555.55 where idgasto = 2;
update gasto set mar = 19435.73 where idgasto = 2;
update gasto set abr = 22753.12 where idgasto = 2;
update gasto set mai = 16198.12 where idgasto = 2;
update gasto set jun = 17451.88 where idgasto = 2;
update gasto set jul = 18975.40 where idgasto = 2;
update gasto set ago = 19163.84 where idgasto = 2;
update gasto set `set` = 18132.56 where idgasto = 2;
update gasto set `out` = 17667.91 where idgasto = 2;
update gasto set nov = 17936.33 where idgasto = 2;
update gasto set dez = 17125.88 where idgasto = 2;

/*consulta*/
select * from gasto;

select 
	jan, fev, mar, abr, mai, jun, jul, ago,`set`,`out`, nov, dez
from 
	gasto;

select 
	jan, fev, mar, abr, mai, jun, jul, ago,`set`,`out`, nov, dez
from 
	gasto
where
	idgasto = 2;

select 
	(jan + fev + mar + abr + mai + jun + jul + ago +`set`+`out`+ nov + dez) /12 as media
from 
	gasto
where
	idgasto = 2;

select 
	truncate (((jan + fev + mar + abr + mai + jun + jul + ago +`set`+`out`+ nov + dez) /12),2) as total
from 
	gasto
where
	idgasto = 2;
    
select 
round((jan + fev + mar + abr + mai + jun + jul + ago +`set`+`out`+ nov + dez),2) as media
from 
	gasto
where
	idgasto = 2;
    
/*consulta*/
select * from gasto;

/*subquerys*/

use universidade_u;

select * from gasto;

select idgasto from gasto where ano = 2019 and tipo = 'realizado';
select idgasto from gasto where ano = 2019 and tipo = 'previsto';

select
	jan
from
	gasto
where
	idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto');

select
	jan
from
	gasto
where
	idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado');

/*realizando subquerys*/
select
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_jan;

/* resultado jan a dez*/
select
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		jan
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_jan,
        
    (select
		fev
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		fev
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_fev,
        
       (select
		mar
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		mar
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_mar,
        
	(select
		abr
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		abr
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_abr,
	        
	(select
		mai
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		mai
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_mai,
 	        
	(select
		jun
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		jun
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_jun,       
   	        
	(select
		jul
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		jul
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_jul,
       	        
	(select
		ago
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		ago
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_ago,    
      	        
	(select
		`set`
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		`set`
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_set,     
       	        
	(select
		`out`
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		`out`
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_out,            
          	        
	(select
		nov
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		nov
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_nov,         
               	        
	(select
		dez
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'previsto')) -
        
    (select
		dez
    from
        gasto
	where
        idgasto = (select idgasto from gasto where ano = 2019 and tipo = 'realizado')) as resultado_dez;
	
    /*consulta*/
select * from gasto;