--Questão 1-a
SELECT
	ChannelKey,
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM FactSales
GROUP BY ChannelKey --Correto
--Questão 1-b
SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Quantidade Total Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Total Devolvida'
FROM FactSales
GROUP BY StoreKey
ORDER BY StoreKey --Correto
--Questão 1-c
SELECT
	ChannelKey,
	Sum(SalesQuantity) AS 'Valor Total'
FROM FactSales
WHERE DateKey BETWEEN '2007/01/01' AND '2007/12/31'
GROUP BY ChannelKey --Data no formato errado e foi usado SalesAmount


--Questão 2-A
SELECT
	ProductKey,
	SUM(SalesAmount) AS 'Valor Total Vendido'
FROM FactSales
GROUP BY Productkey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount) DESC --Correto

--Questão 2-b
SELECT TOP(10)
	ProductKey,
	SUM(SalesQuantity) AS 'Quantidade Total Vendida'
FROM FactSales
GROUP BY Productkey
ORDER BY SUM(SalesAmount) DESC


--Questão 3-a
SELECT TOP(1)
	CustomerKey,
	SUM(SalesQuantity) AS 'Qtd Vendida'
FROM FactOnlinesales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC --Usado COUNT e não SUM


--Questão 3-b
SELECT TOP(3) 
	ProductKey AS 'ID do Produto',
	SUM(SalesQuantity) AS 'total Vendida'
FROM FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY Productkey
ORDER BY SUM(SalesQuantity) DESC


--Questão 4-a
SELECT
	BrandName,
	COUNT(*) AS 'Qtd de produtos'
FROM DimProduct
GROUP BY BrandName --COUNT(BrandName)***

--Questão 4-b
SELECT 
	ClassName,
	AVG(UnitPrice) AS 'Média de Preços'
FROM DimProduct
GROUP BY ClassName --Correto

--Questão 4-c
SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM DimProduct
GROUP BY ColorName --Correto


--Questão 5
SELECT
	StockTypeName,
	SUM(Weight) AS Peso_Total
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY Peso_Total DESC --Correto


--Questão 6
SELECT 
	BrandName,
	COUNT(DISTINCT ColorId) AS Qtd_Cores
FROM DimProduct
GROUP BY BrandName --Correto
--Nenhuma marca possui 16 cores


--Questão 7
SELECT 
	Gender,
	COUNT(Gender) AS Qtd,
	AVG(YearlyIncome) AS Média_Salarial
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender --Correto


--Questão 8
SELECT
	Education,
	COUNT(Education) AS Qtd_de_Clientes,
	AVG(YearlyIncome) AS Média_Salarial
FROM DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education --Correto


--Questão 9
SELECT 
	DepartmentName,
	COUNT(DepartmentName) AS Qtd_de_Funcionários
FROM DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName



--Questão 10
SELECT
	Title,
	SUM(VacationHours) AS Tempo_de_Férias
FROM DimEmployee
WHERE EndDate IS NULL AND Gender = 'F' AND	DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '1999/01/01' AND '2000/12/31'
GROUP BY Title