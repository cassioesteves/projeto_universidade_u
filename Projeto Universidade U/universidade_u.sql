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

USE UNIVERSIDADE_U;

SELECT * FROM ALUNO;

DESC ALUNO;

ALTER TABLE ALUNO ADD DATA_NASC DATE AFTER CPF;

update aluno set data_nasc ='2001-11-25' where idaluno = 1;
update aluno set data_nasc ='1985-12-20' where idaluno = 2;
update aluno set data_nasc ='1993-07-07' where idaluno = 3;
update aluno set data_nasc ='2010-06-15' where idaluno = 4;
update aluno set data_nasc ='2005-05-05' where idaluno = 5;
update aluno set data_nasc ='1964-04-04' where idaluno = 6;
update aluno set data_nasc ='1973-03-03' where idaluno = 7;
update aluno set data_nasc ='1991-02-02' where idaluno = 8;
update aluno set data_nasc ='1989-08-08' where idaluno = 17;
update aluno set data_nasc ='1990-01-01' where idaluno = 20;

/*Manipulação de datas e horas no MySQL*/

/*
				RESUMO
curdate ou currn_date - retorno a data atual
now - retorna data e hora atuais 
date_format - formata a projeção da data
extract - extrai parte de uma determinada data
date_add - adiciona um intervalo de tempo a data
datediff - retorna o numero de dias entre duas datas
period_diff - retorna o numero de meses entre duas datas
dayofyear - retorna o dia do ano (entre 1 e 366)
*/

select curdate();

/*versao estendida*/
select current_date();

/* recuperar a data atual*/
select curdate();
select current_date();

/* recuperar a data e hora atuais */
select now();

/* formatando datas */
select date_format(curdate(), '%D/%M/%y') as data_formatada;
select date_format(curdate(), '%D-%M-%y') as data_formatada;
select date_format(curdate(), '%d-%M-%y') as data_formatada;
select date_format(curdate(), '%d-%m-%y') as data_formatada;
select date_format(curdate(), '%d-%m-%Y') as data_formatada;
/*
%d - dia do mês ( de 01 até 31)
%D - dia do mês com sufixo em inglês
%m - mês (de 01 a 12)
%M - nome do mês em inglês
%y - ano (dois dígitos)
%Y - ano (quatro dígitos)
*/

/* extrair parte de data */
select extract(day from '2023-07-01') ;
select extract(month from '2023-07-01') ;
select extract(year from '1989-07-07') ;
/* day, month ou year */


/*incluir dia, meses ou ano a uma data pre determinada*/
select date_add('2023-07-01', interval 10 day) as data_formatada;
select date_add('2023-07-01', interval 3 month) as data_formatada;
select date_add('2023-07-01', interval 50 year) as data_formatada;

/*alterar horas , minutos de hora pre determinada*/
select date_add('2023-07-01 12:00:30', interval 30 second) as hora_formatada;
select date_add('2023-07-01 12:00:30', interval 5 minute) as hora_formatada;
select date_add('2023-07-01 12:00:30', interval 3 hour) as hora_formatada;
select date_add('2023-07-01 12:00:30', interval 00003 microsecond) as hora_formatada;

/*hora negativa*/
select date_add('2023-07-01 12:00:30', interval -3 hour) as hora_formatada;

/* adicionando intervalos de tempo as datas */
select now() as data_hora_atuais, date_add(now(), interval 5 day) as data_hora_ajustada;
/* second, minute, hour, day, month, year */

/* calculo de dias entre datas */

/* calculo de dias entre datas */
select 
    '1989-08-08' as data_nascimento, 
    curdate() as data_atual, 
	datediff('1989-08-08', curdate()) as diferenca_dias, 
    floor(datediff(curdate(), '1989-08-08') / 365) as idade_aproximada;
    
/* calculo de meses entre datas */
select period_diff('199504', '199402') as diferenca_meses;
    
/* dia do ano, retorna dia do ano */
select dayofyear('2015-07-12') as dia_do_ano;
select dayofyear(now()) as dia_do_ano;

use universidade_u;

-- timestamp (marca temporal) início à partir da meia-noite do dia 01/01/1970.
/*https://pt.wikipedia.org/wiki/Marca_temporal*/

/*calcular a idade com base na data de nascimento*/

select
	timestampdiff(YEAR,'1989-08-08', curdate()) as idade;
select
	timestampdiff(YEAR,'1993-07-07', curdate()) as idade;  
    
select 
	data_nasc, 
    curdate() as data_atual,
    timestampdiff(YEAR, data_nasc, curdate()) as idade_dinamica
from 
	aluno;
    
alter table aluno drop idade;

select * from aluno;

use universidade_u;

-

update aluno set data_nasc = '2005-07-06'
where idaluno = 5;

select * from aluno where idaluno = 5;

/*Refactoring da data de inscrição no curso e valor pago*/

select * from aluno;

select * from aluno_curso;

alter table aluno_curso add DATA_INSCRICAO_CURSO date;
alter table aluno_curso add VALOR_PAGO_CURSO float(10,2);

/* pegar os dados da tabela aluno e cadastrar manualmente na tabela aluno_curso */

/* query de update com uma subquery para recuperar os dados */

select idaluno, data_inscricao_curso, valor_pago_curso 
from aluno
where idaluno = 1;

/* pegar os dados da tabela aluno e cadastrar manualmente na tabela aluno_curso */

/* query de update com uma subquery para recuperar os dados */

update
    aluno_curso
set
    data_inscricao_curso = (select data_inscricao_curso from aluno where idaluno = 3),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 3)
where
    fk_idaluno = 3;
/*1
2
5
8*/
select distinct fk_idaluno from aluno_curso;

alter table aluno drop column data_inscricao_curso;
alter table aluno drop column valor_pago_curso;

select * from aluno;

select * from aluno_curso;

/* trabalhando com valores default em uma coluna*/

alter table aluno modify column ativo_sn int default 1;

/*ATIVO_SN COMO DEFAULT 1 - SEM DEFINIR OS PARAMETROS, processo automatico pelo SGBD*/
insert into aluno(nome, sexo, cpf, data_nasc, email, telefone)
	values('DELTRANO', 'M', '123.123.123.45', '2000-01.06','DELTRANO@YMAIL.COM','95 91234-1234');
    
/*ATIVO_SN COMO DEFAULT -  DEFININDO OS PARAMETROS MANUALMENTE, subscrever O DEFAULT*/
insert into aluno(nome, sexo, cpf, data_nasc, email, telefone, ativo_sn)
	values('ZUNIQUE', 'M', '456.456.456.78', '1978-05-25','ZUNIQUE@TMAIL.COM','88 94567-4567', 0);


/* trabalhando com valores curdate em uma coluna
CONSTRAINT QUE PERMITE ADICIONAR UM VALOR PADRAO PARA UMA COLUNA CASO A INFORMAÇÃO NAO SEJA PASSADA NO INSERT

OTIMIZA AS OPERAÇÕES DE INSERT QUANDO UMA DETERMINADA COLUNA DA TABELA GERALMENTE RECEBE O MESMO VALOR

SE OS VALORES NAO FOR INFORMADO NO INSERT O SGBD DEFINE O DEFAULT, SE INFORMAR NO INSERT ELE SOBREPÕE O DEFAULT
*/

/*
current_timestamp - é uma variavel que guarda a hora atual da inserção no BD.
curdate - não pode ser usado como variavel 
*/

select * from curso;
select * from aluno_curso;
alter table aluno_curso modify column DATA_INSCRICAO_CURSO datetime default current_timestamp;
/*
insert into aluno_curso(FK_IDALUNO, FK_IDCURSO, DATA_INSCRICAO_CURSO, VALOR_PAGO_CURSO) 
	values('21', '3', curdate(), '790.50')
*/ /*NOVAS DEFINICOES SEM DEFINIR A DATA_INSCRICAO_CURSO EO curdate()*/

insert into aluno_curso(FK_IDALUNO, FK_IDCURSO, VALOR_PAGO_CURSO) 
	values('21', '3', '790.50')
    
/*
PRIMARY KEY SIMPLES E PRIMARY KEY COMPOSTA
			
            SIMPLES -> 1 COLUNA
PRIMARY KEY 
			COMPOSTA ->	2 OU MAIS COLUNAS
            
CHAVES PODE SER NATUAL OU ARTIFICIAL. 
NATURAL - TEM RELACAO COM O REGISTRO
ARTIFICIAL - NAO TEM RELACAO COM O REGISTRO
*/
/*modify column*/
alter table aluno_curso modify column FK_IDALUNO INT not null;
alter table aluno_curso modify column FK_IDCURSO INT not null;
    
select * from aluno_curso;
desc aluno_curso;

ALTER TABLE ALUNO_CURSO DROP COLUMN ID_ALUNOCURSO;

SELECT * FROM ALUNO_CURSO;

ALTER table aluno_curso	add constraint pk_aluno_curso primary key (FK_IDALUNO, FK_IDCURSO, DATA_INSCRICAO_CURSO);

/*CRIAR A TABELA PROJETO FUNCIONARIO*/

CREATE TABLE PROJETO_FUNCIONARIO (
    codigo_projeto int,
    matricula_funcionario int,
    nome_projeto varchar(100) not null,
    nome_funcionario varchar(50) not null,
    funcao_funcionario varchar(50) not null,
    telefone_funcionario varchar(20),
    data_criacao_projeto datetime default current_timestamp,
    horas_estimadas int not null,
    horas_realizadas int,
    PRIMARY KEY (codigo_projeto, matricula_funcionario)
);
 
alter table PROJETO_FUNCIONARIO add constraint PK_PROJETO_FUNCIONARIO primary key (codigo_projeto, matricula_funcionario);

desc PROJETO_FUNCIONARIO;
 
insert into PROJETO_FUNCIONARIO(codigo_projeto,matricula_funcionario,nome_projeto,nome_funcionario, 
funcao_funcionario,telefone_funcionario, horas_estimadas) 
values(1,100,'Matricula Online','Ana Maria','Analista de Atendimento','11 91234-5678', 200),
	(1,110,'Matricula Online','Fatima','Cordenador de Atendimento','11 97182-7182', 100),
	(1,30,'Matricula Online','João Olive','Gerente Comercial','11 98293-8293', 300),
	(1,80,'Matricula Online','Jimmy Dev','Desenvolvedor Full Stack','11 98293-8293', 500);
    
/*duplicar dados*/
insert into PROJETO_FUNCIONARIO(codigo_projeto,matricula_funcionario,nome_projeto,nome_funcionario, 
funcao_funcionario,telefone_funcionario, horas_estimadas) 
	values (3,80,'Nota Online','Jimmy Dev','Desenvolvedor Full Stack','11 98293-8293', 400);
    
insert into PROJETO_FUNCIONARIO(codigo_projeto,matricula_funcionario,nome_projeto,nome_funcionario, 
funcao_funcionario,telefone_funcionario, horas_estimadas) values(2,221,'Economia de Papel','Laura','Analista de Qualidade','',500);

values(3,221,'Nota Online','Carlos Patron','Analista Administrativo', '11 1020-3040',150);

insert into PROJETO_FUNCIONARIO(codigo_projeto,matricula_funcionario,nome_projeto,nome_funcionario, 
funcao_funcionario,horas_estimadas) 
values(3,180,'Nota Online','Luiz Del Silva','Analista Administrativo Junior',80),
	(3,500,'Nota Online','Julio Cezar','Jovem Aprendiz',150);
    
/* anomalia de inserção de registro*/
/*nesse modelo pode ocorrer erros de digitação e duplicação de dados, data e criação do projeto sem muda a cada insert*/
select * from PROJETO_FUNCIONARIO;

insert into PROJETO_FUNCIONARIO(codigo_projeto,matricula_funcionario,nome_projeto,nome_funcionario, 
funcao_funcionario,horas_estimadas) values(2,353,'Economia de Papel','Malaquias','Analista Financeiro',25);

/* anomalia de exclusao de registro - (perder registros importantes)*/

/*view*/
select * from PROJETO_FUNCIONARIO where codigo_projeto = 3 and matricula_funcionario = 221;
/*delete*/
delete from PROJETO_FUNCIONARIO where codigo_projeto = 3 and matricula_funcionario = 221;

update 
	PROJETO_FUNCIONARIO 
set 
	nome_projeto = 'Inscrição Online'
where 
	codigo_projeto = 1;
    
/*NORMALIZAÇÃO DE BANCO DE DADOS*/
/*REGRAS DA 2FN

-A TABELA PRECISA ESTAR NA PRIMEIRA FORMA NORMAL
TER UMA IDENTIFICACAO UNICA PARA CADA REGISTRO ATRIBUTOS COM VALORES ATOMICOS

-NAO POSSUIR DEPENDENCIAS PARCIAIS
TODOS OS ATRIBUTOS NAO CHAVE DEVEM SER TOTAL E FUNCIONAMENTE DEPENDENTES DA CHAVE PRIMARIA.alter

TABELA NORMALIZADA NA SEGUNDA FORMA NORMAL

*/
select * from PROJETO_FUNCIONARIO;

-- EX.:
/*OS ATRIBUTOS/ COLUNAS NAO CHAVES*/
nome_projeto, nome_funcionario, telefone_funcionario

/*QUAIS SAO OS ATRIBUTOS/COLUNAS CHAVES*/
codigo_projeto, matricula_funcionario

-- 2FN
-- 'Refactoring das tabelas projeto, funcionario e projeto_funcionario atendendo a 2FN'

/*REFACTORING DAS TABELAS MODELAGEM FISICA PARA ATENTER A FORMA NORMAL*/

CREATE TABLE PROJETO (
    idcodigo int auto_increment,
    data_criacao datetime default current_timestamp,
    nome varchar(100) not null,
    constraint pk_projeto primary key (idcodigo)
);

/* alterando a posicao na coluna nome antes data_criacao*/
alter table projeto modify column nome varchar(100) not null after idcodigo;

CREATE TABLE FUNCIONARIO (
    idmatricula int auto_increment,
    nome varchar(50) not null,
    funcao varchar(50) not null,
    telefone varchar(20),
    constraint pk_funcionario primary key (idmatricula)
);

CREATE TABLE PROJETO_FUNCIONARIO2 (
    fk_idcodigo int,
    fk_idmatricula int,
    horas_estimadas int not null,
    horas_realizadas int,
    constraint pk_PROJETO_FUNCIONARIO PRIMARY KEY (fk_idcodigo, fk_idmatricula)
);

-- ALTER table aluno_curso	add constraint pk_aluno_curso primary key (FK_IDALUNO, FK_IDCURSO, DATA_INSCRICAO_CURSO);

ALTER TABLE PROJETO_FUNCIONARIO2 ADD CONSTRAINT
    FOREIGN KEY (fk_idcodigo)
    REFERENCES PROJETO (idcodigo);
 
ALTER TABLE PROJETO_FUNCIONARIO2 ADD CONSTRAINT
    FOREIGN KEY (fk_idmatricula)
    REFERENCES FUNCIONARIO (idmatricula);

use universidade_u;

desc projeto;
desc funcionario;
desc projeto_funcionario2;

select * from PROJETO;
select * from FUNCIONARIO;
select * from PROJETO_FUNCIONARIO;
select * from PROJETO_FUNCIONARIO2;

select
	matricula_funcionario, nome_funcionario, funcao_funcionario,telefone_funcionario
from
	PROJETO_FUNCIONARIO;
    
    
-- selecionando apenas os dados distinto
select distinct
	matricula_funcionario, nome_funcionario, funcao_funcionario,telefone_funcionario
from
	PROJETO_FUNCIONARIO;
    
-- migrando os dados da tabla FUNCIONARIO.
-- insert com select, query para migracao de dados funcionarios.
insert into FUNCIONARIO(idmatricula, nome, funcao, telefone)
select distinct
	matricula_funcionario, nome_funcionario, funcao_funcionario,telefone_funcionario
from
	PROJETO_FUNCIONARIO;

-- migrando os dados da tabla projeto.
-- insert into projeto (idcodigo, nome, data_criacao)
select 
	codigo_projeto, nome_projeto, data_criacao_projeto
from
	PROJETO_FUNCIONARIO;
    
insert into projeto(idcodigo, nome, data_criacao)    
select distinct
	codigo_projeto, nome_projeto, data_criacao_projeto
from
	PROJETO_FUNCIONARIO;

select * from projeto_funcionario where codigo_projeto = 1 order by data_criacao_projeto limit 1;

-- update data_criacao_projeto para setar os dados de criacao mais antigo, falha para migra os dados completo.
update projeto_funcionario set data_criacao_projeto = '2023-07-11 00:31:59' where codigo_projeto = 2;
update projeto_funcionario set data_criacao_projeto = '2023-07-11 00:41:59' where codigo_projeto = 2;
update projeto_funcionario set data_criacao_projeto = '2023-07-11 19:12:28' where codigo_projeto = 3;

-- recuperar dos dados da tabela PROJETO_FUNCIONARIO, não é necessario destinção
insert into PROJETO_FUNCIONARIO2(fk_idcodigo,fk_idmatricula, horas_estimadas,horas_realizadas)
select
	codigo_projeto, matricula_funcionario, horas_estimadas,horas_realizadas
from 
	PROJETO_FUNCIONARIO;

select * from PROJETO;
select * from FUNCIONARIO;
select * from PROJETO_FUNCIONARIO2;

-- eliminar a tabela antiga
drop table PROJETO_FUNCIONARIO;

-- renomear a tabela PROJETO_FUNCIONARIO2 para PROJETO_FUNCIONARIO
rename table PROJETO_FUNCIONARIO2 to PROJETO_FUNCIONARIO;

desc PROJETO_FUNCIONARIO2;
