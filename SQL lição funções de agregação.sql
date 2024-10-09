--Questão 1
SELECT
COUNT(SalesAmount) AS 'Qtd Vendida'
FROM
	FactSales
SELECT
COUNT(ReturnAmount) AS 'Qtd Devolvida'
FROM
	FactSales


--Questão 2
SELECT
AVG(YearlyIncome) AS 'Média Salarios'
FROM
	DimCustomer


--Questão 3
SELECT
	--MAX(EmployeeCount) AS 'Qtd Funcionários'
	MIN(EmployeeCount) AS 'Qtd Funcionários'
FROM
	DimStore
--Loja com mais funcionários
SELECT StoreName FROM DimStore
WHERE EmployeeCount = 325
--Loja com menos funcionários
SELECT StoreName FROM DimStore
WHERE EmployeeCount = 7


--Questão 4
--Quantidades de funcionários
SELECT 
	COUNT(EmployeeKey) AS 'Qtd de Homens'
FROM DimEmployee
WHERE Gender = 'M'
SELECT 
COUNT(EmployeeKey) AS 'Qtd de Mulheres'
FROM DimEmployee
WHERE Gender = 'F'

--Descobrir o primeiro funcionário
--SELECT 
--MIN(HireDate) AS 'Data de Início'
--FROM DimEmployee
--WHERE Gender = 'F'
--WHERE Gender = 'M'

--Funcionários mais velhos
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


--Questão 5
SELECT 
COUNT(DISTINCT ColorName) AS 'Qtd Cores',
COUNT(DISTINCT BrandName) AS 'Qtd Marcas',
COUNT(DISTINCT ClassName) AS 'Qtd de Classes'
FROM DimProduct