--Quest�o 1
SELECT
COUNT(SalesAmount) AS 'Qtd Vendida'
FROM
	FactSales
SELECT
COUNT(ReturnAmount) AS 'Qtd Devolvida'
FROM
	FactSales


--Quest�o 2
SELECT
AVG(YearlyIncome) AS 'M�dia Salarios'
FROM
	DimCustomer


--Quest�o 3
SELECT
	--MAX(EmployeeCount) AS 'Qtd Funcion�rios'
	MIN(EmployeeCount) AS 'Qtd Funcion�rios'
FROM
	DimStore
--Loja com mais funcion�rios
SELECT StoreName FROM DimStore
WHERE EmployeeCount = 325
--Loja com menos funcion�rios
SELECT StoreName FROM DimStore
WHERE EmployeeCount = 7


--Quest�o 4
--Quantidades de funcion�rios
SELECT 
	COUNT(EmployeeKey) AS 'Qtd de Homens'
FROM DimEmployee
WHERE Gender = 'M'
SELECT 
COUNT(EmployeeKey) AS 'Qtd de Mulheres'
FROM DimEmployee
WHERE Gender = 'F'

--Descobrir o primeiro funcion�rio
--SELECT 
--MIN(HireDate) AS 'Data de In�cio'
--FROM DimEmployee
--WHERE Gender = 'F'
--WHERE Gender = 'M'

--Funcion�rios mais velhos
SELECT 
	FirstName,
	LastName,
	EmailAddress,
	HireDate,
	Gender
FROM DimEmployee
WHERE StartDate = '1996/07/31'
SELECT 
	FirstName,
	LastName,
	EmailAddress,
	HireDate,
	Gender
FROM DimEmployee
WHERE StartDate = '1998/01/26'


--Quest�o 5
SELECT 
COUNT(DISTINCT ColorName) AS 'Qtd Cores',
COUNT(DISTINCT BrandName) AS 'Qtd Marcas',
COUNT(DISTINCT ClassName) AS 'Qtd de Classes'
FROM DimProduct