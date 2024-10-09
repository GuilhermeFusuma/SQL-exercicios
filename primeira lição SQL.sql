--SELECT DISTINCT ColorName
--FROM DimProduct

--SELECT
--ProductName AS 'Nome Produto',
--BrandName AS 'Nome Marca',
--ColorName AS 'Nome Cor'
--FROM DimProduct

--Questão 1-a
/*SELECT *
FROM DimProduct*/
--Resposta: há 2517 produtos.

--Questão 1-b
/*SELECT *
FROM DimCustomer*/
--Resposta: A quantidade de clientes diminuiu.


--Questão 2-a e 2-b
/*SELECT CustomerKey AS 'Chave do usuário', FirstName AS 'Primeiro Nome', EmailAddress AS 'Email', BirthDate AS 'Data de aniversário'
FROM DimCustomer*/


--Questão 3-a
SELECT TOP(100) *
FROM DimCustomer

--Questão 3-b
SELECT TOP(20) PERCENT *
FROM DimCustomer

--Questão 3-c
/*SELECT TOP(100) FirstName, EmailAddress, BirthDate
FROM DimCustomer*/

--Questão 3-d
/*SELECT TOP(100)
FirstName AS 'Primeiro Nome',
EmailAddress AS 'Endereço de Email', 
BirthDate AS 'Data de Aniversário'
FROM DimCustomer*/


--Questão 4
/*SELECT Manufacturer AS Fabricante
FROM DimProduct*/


--Questão 5
--SELECT DISTINCT ProductKey
--FROM FactSales
--SELECT *
--FROM DimProduct
--Resposta: há 1 produto que não foi vendido			