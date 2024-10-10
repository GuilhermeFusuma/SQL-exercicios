--Quest�o 1-a
SELECT
	ChannelKey,
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM FactSales
GROUP BY ChannelKey --Correto
--Quest�o 1-b
SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Quantidade Total Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Total Devolvida'
FROM FactSales
GROUP BY StoreKey
ORDER BY StoreKey --Correto
--Quest�o 1-c
SELECT
	ChannelKey,
	Sum(SalesQuantity) AS 'Valor Total'
FROM FactSales
WHERE DateKey BETWEEN '2007/01/01' AND '2007/12/31'
GROUP BY ChannelKey --Data no formato errado e foi usado SalesAmount


--Quest�o 2-A
SELECT
	ProductKey,
	SUM(SalesAmount) AS 'Valor Total Vendido'
FROM FactSales
GROUP BY Productkey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount) DESC --Correto

--Quest�o 2-b
SELECT TOP(10)
	ProductKey,
	SUM(SalesQuantity) AS 'Quantidade Total Vendida'
FROM FactSales
GROUP BY Productkey
ORDER BY SUM(SalesAmount) DESC


--Quest�o 3-a
SELECT TOP(1)
	CustomerKey,
	SUM(SalesQuantity) AS 'Qtd Vendida'
FROM FactOnlinesales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC --Usado COUNT e n�o SUM


--Quest�o 3-b
SELECT TOP(3) 
	ProductKey AS 'ID do Produto',
	SUM(SalesQuantity) AS 'total Vendida'
FROM FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY Productkey
ORDER BY SUM(SalesQuantity) DESC


--Quest�o 4-a
SELECT
	BrandName,
	COUNT(*) AS 'Qtd de produtos'
FROM DimProduct
GROUP BY BrandName --COUNT(BrandName)***

--Quest�o 4-b
SELECT 
	ClassName,
	AVG(UnitPrice) AS 'M�dia de Pre�os'
FROM DimProduct
GROUP BY ClassName --Correto

--Quest�o 4-c
SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM DimProduct
GROUP BY ColorName --Correto


--Quest�o 5
SELECT
	StockTypeName,
	SUM(Weight) AS Peso_Total
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY Peso_Total DESC --Correto


--Quest�o 6
SELECT 
	BrandName,
	COUNT(DISTINCT ColorId) AS Qtd_Cores
FROM DimProduct
GROUP BY BrandName --Correto
--Nenhuma marca possui 16 cores


--Quest�o 7
SELECT 
	Gender,
	COUNT(Gender) AS Qtd,
	AVG(YearlyIncome) AS M�dia_Salarial
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender --Correto


--Quest�o 8
SELECT
	Education,
	COUNT(Education) AS Qtd_de_Clientes,
	AVG(YearlyIncome) AS M�dia_Salarial
FROM DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education --Correto


--Quest�o 9
SELECT 
	DepartmentName,
	COUNT(DepartmentName) AS Qtd_de_Funcion�rios
FROM DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName



--Quest�o 10
SELECT
	Title,
	SUM(VacationHours) AS Tempo_de_F�rias
FROM DimEmployee
WHERE EndDate IS NULL AND Gender = 'F' AND	DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '1999/01/01' AND '2000/12/31'
GROUP BY Title