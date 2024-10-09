--Questão 1
SELECT 
	TOP(100) *
FROM 
	FactSales
ORDER BY SalesAmount DESC


--Questão 2
SELECT TOP(10)
	*
FROM 
	DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, Size
ORDER BY UnitPrice DESC, Wight DESC, AvailableForSaleDate ASC


--Questão 3
SELECT 
	Productname AS 'Nome do Produto', 
	Weight AS 'Peso (libras)'
FROM
	DimProduct
WHERE Weight > 100
ORDER BY Weight DESC


--Questão 4
SELECT 
	StoreName AS 'Nome da Loja', 
	OpenDate AS 'Data de Abertura',
	EmployeeCount AS 'Quantidade de Funcionários'
FROM
	DimStore
WHERE 
	Status = 'On' AND 
	StoreType = 'Store' --faltou apenas o "StoreType"
--Resposta: há 294 lojas ativas


--Questão 5
SELECT 
	*
FROM
	DimProduct
WHERE 
	 ProductName LIKE '%Home Theater%' AND BrandName = 'Litware' AND AvailableForSaleDate = '2009/03/15'

--Questão 6
SELECT
	*
FROM 
	DimStore
WHERE CloseDate IS NOT NULL


--Questão 7
	--Categoria 1:
SELECT
	StoreKey,
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount <= 20

	--Categoria 2:
SELECT
	StoreKey,
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount BETWEEN 21 AND 50

	--Categoria 3:
SELECT
	StoreKey,
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount > 50


--Questão 8
SELECT
	ProductKey,
	ProductName,
	UnitPrice
FROM 
	DimProduct
WHERE ProductName LIKE '%LCD%'


--Questão 9
SELECT
	*
FROM
	DimProduct
WHERE 
	ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') 
	AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')


--Questão 10
SELECT 
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
ORDER BY 
	UnitPrice DESC