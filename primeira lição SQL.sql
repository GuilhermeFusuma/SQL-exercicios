--SELECT DISTINCT ColorName
--FROM DimProduct

--SELECT
--ProductName AS 'Nome Produto',
--BrandName AS 'Nome Marca',
--ColorName AS 'Nome Cor'
--FROM DimProduct

--Quest�o 1-a
/*SELECT *
FROM DimProduct*/
--Resposta: h� 2517 produtos.

--Quest�o 1-b
/*SELECT *
FROM DimCustomer*/
--Resposta: A quantidade de clientes diminuiu.


--Quest�o 2-a e 2-b
/*SELECT CustomerKey AS 'Chave do usu�rio', FirstName AS 'Primeiro Nome', EmailAddress AS 'Email', BirthDate AS 'Data de anivers�rio'
FROM DimCustomer*/


--Quest�o 3-a
SELECT TOP(100) *
FROM DimCustomer

--Quest�o 3-b
SELECT TOP(20) PERCENT *
FROM DimCustomer

--Quest�o 3-c
/*SELECT TOP(100) FirstName, EmailAddress, BirthDate
FROM DimCustomer*/

--Quest�o 3-d
/*SELECT TOP(100)
FirstName AS 'Primeiro Nome',
EmailAddress AS 'Endere�o de Email', 
BirthDate AS 'Data de Anivers�rio'
FROM DimCustomer*/


--Quest�o 4
/*SELECT Manufacturer AS Fabricante
FROM DimProduct*/


--Quest�o 5
--SELECT DISTINCT ProductKey
--FROM FactSales
--SELECT *
--FROM DimProduct
--Resposta: h� 1 produto que n�o foi vendido			