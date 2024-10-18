--Questão 1
SELECT 
	ProductKey,
	ProductName,
	DimProduct.productSubcategoryKey,
	ProductSubcategoryName
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategorykey = DimProductSubcategory.ProductSubcategoryKey

--Questão 2
SELECT
	ProductSubcategoryKey,
	ProductSubcategoryName,
	DimProductCategory.ProductCategoryKey,
	ProductCategoryName
FROM DimProductCategory
LEFT JOIN DimProductSubcategory
	ON DimProductcategory.ProductcategoryKey = DimProductSubcategory.ProductcategoryKey

--Questão 3
SELECT
	StoreKey,
	StoreName,
	employeeCount,
	ContinentName,
	RegionCountryName
FROM DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey

--Questão 4
SELECT
	Productkey,
	ProductName,
	ProductDescription,
	DimproductCategory.productCategoryKey,
	ProductCategoryDescription
FROM DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategorykey

--Questão 5-a
SELECT TOP(100) *
FROM FactStrategyPlan

--Questão 5-b
SELECT
	StrategyPlanKey,
	Datekey,
	AccountName,
	Amount
FROM FactStrategyPlan
INNER JOIN DimAccount 
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

--Questão 6
SELECT
	StrategyPlanKey
	DateKey,
	ScenarioName,
	Amount
FROM FactStrategyPlan
INNER JOIN DimScenario
	ON factStrategyPlan.ScenarioKey = DimScenario.ScenarioKey

--Questão 7
SELECT *
FROM DimProductSubcategory
SELECT *
FROM DimProduct

SELECT 
	ProductKey,
	Productname,
	ProductSubcategoryName
FROM DimProduct
FULL JOIN DimProductSubcategory
	ON DimProduct.Productsubcategorykey = DimProductSubcategory.ProductSubcategoryKey

	--
SELECT 
	ProductSubcategoryName,
	COUNT(ProductName)
FROM DimProductSubcategory
FULL JOIN DimProduct
	ON DimProduct.Productsubcategorykey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName

--Questão 8:
SELECT DISTINCT
	DimProduct.BrandName,
	DimChannel.ChannelName
FROM DimProduct
CROSS JOIN DimChannel
WHERE BrandName IN('Contoso', 'Litware', 'Fabrikam')

--Questão 9:
SELECT
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE DimPromotion.PromotionName != 'No Discount'
ORDER BY DateKey ASC


--Questão 10:
SELECT
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM FactSales
INNER JOIN DimChannel
	ON FactSales.ChannelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
	ORDER BY SalesAmount ASC