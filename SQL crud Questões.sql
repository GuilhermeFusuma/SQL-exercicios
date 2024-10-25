--Questão 1:
	--a)
	--CREATE DATABASE BD_Teste 

	--b)
	--DROP DATABASE BD_Teste

	--c)
	--CREATE DATABASE Exercícios

--Questão 2:
--CREATE TABLE dCliente(
--	ID_Cliente INT IDENTITY(1,1) PRIMARY KEY,
--	Nome_Cliente VARCHAR(100),
--	Data_de_Nascimento DATE,
--);

--CREATE TABLE dGerente(
--	ID_Gerente INT IDENTITY(1,1) PRIMARY KEY,
--	Nome_Gerente VARCHAR(100),
--	Data_de_Contratacao DATE,
--)

--CREATE TABLE fContratos(
--	ID_Contrato INT IDENTITY(1,1) PRIMARY KEY,
--	Data_de_Assinatura DATE,
--	ID_Cliente INT,
--	ID_Gerente INT,
--	Valor_do_Contrato INT
--)


SELECT *
FROM dCliente
SELECT *
FROM dGerente
SELECT *
FROM fContratos


--Questão 3:

--INSERT INTO dCliente(Nome_Cliente, Data_de_Nascimento)
--VALUES
--	('André Martins', '1989-02-12'),
--	('Bárbara Campos', '1992-05-07'),
--	('Carol Freitas', '1985-04-23'),
--	('Diego Cardoso', '1994-10-11'),
--	('Eduardo Pereira', '1988-11-09'),
--	('Fabiana Silva', '1989-09-02'),
--	('Gustavo Barbosa', '1993-06-27'),
--	('Helen Viana', '1990-02-11')

--INSERT INTO dGerente(Nome_Gerente, Data_de_Contratacao, Salario)
--VALUES
--	('Lucas Sampaio', '2015-03-21', 6700),
--	('Mariana Padilha', '2011-01-10', 9900),
--	('Nathália Santos', '2018-10-03	', 7200),
--	('Otávio Costa', '2017-04-18', 11000)

--INSERT INTO fContratos(Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
--VALUES
--	('2019-01-12', 8, 1, 23000),
--	('2019-02-10', 3, 2, 15500),
--	('2019-03-07', 7, 2, 6500),
--	('2019-03-15', 1, 3, 33000),
--	('2019-03-21', 5, 4, 1100),
--	('2019-03-23', 4, 2, 5500),
--	('2019-03-28', 9, 3, 55000),
--	('2019-04-04', 2, 1, 31000),
--	('2019-04-05', 10, 4, 3400),
--	('2019-04-05', 6, 2, 9200)


--Questão 4:
--INSERT INTO dCliente(Nome_Cliente, Data_de_Nascimento)
--VALUES
--	('Guilherme Fusuma', '2006-08-18')

--INSERT INTO dGerente(Nome_Gerente, Data_de_Contratacao, salario)
--VALUES
--	('Cristiano Ronaldo', '2024-10-25', 9000000)

--INSERT INTO fContratos(Data_de_Assinatura, ID_Cliente, ID_Gerente, valor_do_contrato) 
--VALUES
--	('2024-12-01', 9, 3, 69420)


--Questão 5:
--UPDATE fContratos
--SET 
--	Data_de_Assinatura = '2019-03-17',
--	ID_Gerente = 2,
--	Valor_do_contrato = 33500
--WHERE ID_Contrato = 4


--Questão 6:
--DELETE 
--FROM fContratos
--WHERE ID_Contrato = 12