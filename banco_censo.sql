DROP DATABASE CENSO
GO

CREATE DATABASE CENSO
GO

USE CENSO
GO

CREATE TABLE POPULACAO_MUNICIPIO(
	ID_POPULACAO_MUNICIPIO INT IDENTITY(1,1) PRIMARY KEY,
	CODIGO_MUNICIPIO INT NOT NULL,
	NOME_MUNICIPIO VARCHAR(40) NOT NULL,
	TOTAL_POPULACAO INT NOT NULL,
	TOTAL_HOMENS INT NOT NULL,
	TOTAL_MULHERES INT NOT NULL,
	TOTAL_BRANCOS INT NOT NULL,
	TOTAL_HOMENS_BRANCOS INT NOT NULL,
	TOTAL_MULHERES_BRANCAS INT NOT NULL,
	TOTAL_PRETOS INT NOT NULL,
	TOTAL_HOMENS_PRETOS INT NOT NULL,
	TOTAL_MULHERES_PRETAS INT NOT NULL,
	TOTAL_AMARELOS INT NOT NULL,
	TOTAL_HOMENS_AMARELOS INT NOT NULL,
	TOTAL_MULHERES_AMARELAS INT NOT NULL,
	TOTAL_PARDOS INT NOT NULL,
	TOTAL_HOMENS_PARDOS INT NOT NULL,
	TOTAL_MULHERES_PARDAS INT NOT NULL,
	TOTAL_INDIGENAS INT NOT NULL,
	TOTAL_HOMENS_INDIGENAS INT NOT NULL,
	TOTAL_MULHERES_INDIGENAS INT NOT NULL,
	TOTAL_SEM_DECLARACAO INT NOT NULL,
	TOTAL_HOMENS_SEM_DECLARACAO INT NOT NULL,
	TOTAL_MULHERES_SEM_DECLARACAO INT NOT NULL,
	TOTAL_POPULACAO_URBANA INT NOT NULL,
	TOTAL_HOMENS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_URBANAS INT NOT NULL,
	TOTAL_BRANCOS_URBANOS INT NOT NULL,
	TOTAL_HOMENS_BRANCOS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_BRANCAS_URBANAS INT NOT NULL,
	TOTAL_PRETOS_URBANOS INT NOT NULL,
	TOTAL_HOMENS_PRETOS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_PRETAS_URBANAS INT NOT NULL,
	TOTAL_AMARELOS_URBANOS INT NOT NULL,
	TOTAL_HOMENS_AMARELOS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_AMARELAS_URBANAS INT NOT NULL,
	TOTAL_PARDOS_URBANOS INT NOT NULL,
	TOTAL_HOMENS_PARDOS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_PARDAS_URBANAS INT NOT NULL,
	TOTAL_INDIGENAS_URBANOS INT NOT NULL,
	TOTAL_HOMENS_INDIGENAS_URBANOS INT NOT NULL,
	TOTAL_MULHERES_INDIGENAS_URBANAS INT NOT NULL,
	TOTAL_SEM_DECLARACAO_URBANOS INT NOT NULL,
	TOTAL_HOMENS_SEM_DECLARACAO_URBANOS INT NOT NULL,
	TOTAL_MULHERES_SEM_DECLARACAO_URBANAS INT NOT NULL,
	TOTAL_POPULACAO_RURAL INT NOT NULL,
	TOTAL_HOMENS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_RURAIS INT NOT NULL,
	TOTAL_BRANCOS_RURAIS INT NOT NULL,
	TOTAL_HOMENS_BRANCOS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_BRANCAS_RURAIS INT NOT NULL,
	TOTAL_PRETOS_RURAIS INT NOT NULL,
	TOTAL_HOMENS_PRETOS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_PRETAS_RURAIS INT NOT NULL,
	TOTAL_AMARELOS_RURAIS INT NOT NULL,
	TOTAL_HOMENS_AMARELOS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_AMARELAS_RURAIS INT NOT NULL,
	TOTAL_PARDOS_RURAIS INT NOT NULL,
	TOTAL_HOMENS_PARDOS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_PARDAS_RURAIS INT NOT NULL,
	TOTAL_INDIGENAS_RURAIS INT NOT NULL,
	TOTAL_HOMENS_INDIGENAS_RURAIS INT NOT NULL,
	TOTAL_MULHERES_INDIGENAS_RURAIS INT NOT NULL,
	TOTAL_SEM_DECLARACAO_RURAIS INT NOT NULL,
	TOTAL_HOMENS_SEM_DECLARACAO_RURAIS INT NOT NULL,
	TOTAL_MULHERES_SEM_DECLARACAO_RURAIS INT NOT NULL,
	ID_ESTADO INT NOT NULL,
	ANO INT NOT NULL)
	GO
	
CREATE TABLE REGIAO(
	ID_REGIAO INT NOT NULL,
	DESCRICAO_REGIAO VARCHAR(15) NOT NULL,
)
GO


CREATE TABLE ESTADO(
	ID_ESTADO INT NOT NULL,
	SIGLA VARCHAR(2) NOT NULL,
	DESCRICAO_ESTADO VARCHAR(20)NOT NULL,
	ID_REGIAO INT NOT NULL
)
GO

CREATE TABLE DIM_SEXO(
	ID_SEXO INT NOT NULL,
	SIGLA_SEXO CHAR(1) NOT NULL,
	DESCRICAO_SEXO VARCHAR(15) NOT NULL,
)
GO


insert into DIM_SEXO values(1,'M','Masculino');
insert into DIM_SEXO values(2,'F','Feminino');
insert into DIM_SEXO values(-1,'I','Não se aplica');
GO

CREATE TABLE DIM_TIPO_LOCAL(
	ID_TIPO_LOCAL INT NOT NULL,
	DESCRICAO_TIPO_LOCAL VARCHAR(15) NOT NULL,
)
GO

insert into DIM_TIPO_LOCAL values(1,'Urbano');
insert into DIM_TIPO_LOCAL values(2,'Rural');
insert into DIM_TIPO_LOCAL values(-1,'Não se aplica');
GO

CREATE TABLE DIM_RACA(
	ID_RACA INT PRIMARY KEY,
	DESCRICAO_RACA VARCHAR(15) NOT NULL,
)
GO

insert into DIM_RACA values(1,'Branca');
insert into DIM_RACA values(2,'Preta');
insert into DIM_RACA values(3,'Amarela');
insert into DIM_RACA values(4,'Parda');
insert into DIM_RACA values(5,'Indígena');
insert into DIM_RACA values(6,'Sem Declaração');
insert into DIM_RACA values(-1,'Não se aplica');
GO

CREATE TABLE DIM_REGIAO(
	ID_REGIAO INT PRIMARY KEY,
	DESCRICAO_REGIAO VARCHAR(15) NOT NULL,
)
GO

INSERT INTO DIM_REGIAO(ID_REGIAO,DESCRICAO_REGIAO)VALUES(1,'Norte');
INSERT INTO DIM_REGIAO(ID_REGIAO,DESCRICAO_REGIAO)VALUES(2,'Nordeste');
INSERT INTO DIM_REGIAO(ID_REGIAO,DESCRICAO_REGIAO)VALUES(3,'Centro-Sul');
INSERT INTO DIM_REGIAO(ID_REGIAO,DESCRICAO_REGIAO)VALUES(4,'Sudeste');
INSERT INTO DIM_REGIAO(ID_REGIAO,DESCRICAO_REGIAO)VALUES(5,'Sul');
GO

CREATE TABLE DIM_ESTADO(
	ID_ESTADO INT PRIMARY KEY,
	SIGLA VARCHAR(2) NOT NULL,
	DESCRICAO_ESTADO VARCHAR(20)NOT NULL,
	ID_REGIAO INT NOT NULL,
	FOREIGN KEY(ID_REGIAO)REFERENCES DIM_REGIAO(ID_REGIAO)
)
GO

INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(1,'Acre','AC',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(2,'Alagoas','AL',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(3,'Amapá','AP',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(4,'Amazonas','AM',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(5,'Bahia','BA',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(6,'Ceará','CE',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(7,'Distrito Federal','DF',3);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(8,'Espírito santo','ES',4);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(9,'Goiás','GO',3);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(10,'Maranhão','MA',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(11,'Mato Grosso','MT',3);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(12,'Mato Grosso do Sul','MS',3);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(13,'Minas Gerais','MG',4);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(14,'Pará','PA',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(15,'Paraíba','PB',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(16,'Paraná','PR',5);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(17,'Pernambuco','PE',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(18,'Piauí','PI',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(19,'Rio de Janeiro','RJ',4);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(20,'Rio Grande do Norte','RN',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(21,'Rio Grande do Sul','RS',5);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(22,'Rondônia','RO',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(23,'Roraima','RR',1);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(24,'Santa Catarina','SC',5);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(25,'São Paulo','SP',4);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(26,'Sergipe','SE',2);
INSERT INTO DIM_ESTADO(ID_ESTADO,DESCRICAO_ESTADO,SIGLA,ID_REGIAO)VALUES(27,'Tocantins','TO',1);

CREATE TABLE DIM_MUNICIPIO(
	ID_MUNICIPIO INT PRIMARY KEY,
	NOME_MUNICIPIO VARCHAR(40),
	ID_ESTADO INT NOT NULL,
	FOREIGN KEY(ID_ESTADO)REFERENCES DIM_ESTADO(ID_ESTADO)
)
GO