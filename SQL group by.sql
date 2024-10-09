--Quest�o 1-a
SELECT
	ChannelKey,
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM FactSales
GROUP BY ChannelKey
--Quest�o 1-b
SELECT
	StoreKey,
	SUM(SalesQuantity) AS 'Quantidade Total Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Total Devolvida'
FROM FactSales
GROUP BY StoreKey
ORDER BY StoreKey
--Quest�o 1-c
SELECT
	ChannelKey,
	Sum(SalesAmount) AS 'Valor Total'
FROM FactSales
WHERE DateKey LIKE '%2007%'
GROUP BY ChannelKey


--Quest�o 2-A
SELECT
	ProductKey,
	SUM(SalesAmount) AS 'Valor Total Vendido'
FROM FactSales
GROUP BY Productkey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount) DESC

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
	COUNT(SalesQuantity) AS 'Qtd Vendida'
FROM FactOnlinesales
GROUP BY CustomerKey
ORDER BY COUNT(SalesQuantity) DESC


--Quest�o 3-b
SELECT TOP(3) 
	ProductKey,
	Count(SalesQuantity) AS 'Qtd Vendida'
FROM FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY Productkey
ORDER BY Count(SalesQuantity) DESC


--Quest�o 4-a
SELECT
	BrandName,
	COUNT(BrandName) AS 'Qtd de produtos'
FROM DimProduct
GROUP BY BrandName

--Quest�o 4-b
SELECT 
	ClassName,
	AVG(UnitPrice) AS 'M�dia de Pre�os'
FROM DimProduct
GROUP BY ClassName

--Quest�o 4-c
SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM DimProduct
GROUP BY ColorName


--Quest�o 5
SELECT
	StockTypeName,
	SUM(Weight) AS Peso_Total
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY Peso_Total DESC


--Quest�o 6
SELECT 
	BrandName,
	COUNT(DISTINCT ColorId) AS Qtd_Cores
FROM DimProduct
GROUP BY BrandName


--Quest�o 7
SELECT 
	Gender,
	COUNT(CustomerKey) AS Qtd
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender
SELECT
	Gender,
	AVG(YearlyIncome) AS M�dia_Salarial
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender


--Quest�o 8
SELECT
	Education,
	COUNT(Education) AS Qtd_de_Clientes,
	AVG(YearlyIncome) AS M�dia_Salarial
FROM DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education


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
	SUM(VacationHours)
FROM DimEmployee
WHERE EndDate IS NULL AND Gender = 'F' AND	DepartmentName IN ('Production', 'Marketing', 'Finance')
GROUP BY Title