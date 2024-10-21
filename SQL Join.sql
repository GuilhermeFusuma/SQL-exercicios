--Quest�o 1
SELECT 
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

--Quest�o 2
SELECT
	ProductSubcategoryKey,
	ProductSubcategoryName,
	DimProductCategory.ProductCategoryKey,
	ProductCategoryName
FROM DimProductCategory
LEFT JOIN DimProductSubcategory
	ON DimProductcategory.ProductcategoryKey = DimProductSubcategory.ProductcategoryKey

--Quest�o 3
SELECT
	StoreKey,
	StoreName,
	employeeCount,
	ContinentName,
	RegionCountryName
FROM DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey

--Quest�o 4
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

--Quest�o 5-a
SELECT TOP(100) *
FROM FactStrategyPlan

--Quest�o 5-b
SELECT
	StrategyPlanKey,
	Datekey,
	AccountName,
	Amount
FROM FactStrategyPlan
INNER JOIN DimAccount 
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

--Quest�o 6
SELECT
	StrategyPlanKey
	DateKey,
	ScenarioName,
	Amount
FROM FactStrategyPlan
INNER JOIN DimScenario
	ON factStrategyPlan.ScenarioKey = DimScenario.ScenarioKey

--Quest�o 7
SELECT 
	ProductKey,
	Productname,
	DimProductSubcategory.ProductSubcategoryName
FROM DimProduct
RIGHT JOIN DimProductSubcategory
	ON DimProduct.Productsubcategorykey = DimProductSubcategory.ProductSubcategoryKey
WHERE ProductName IS NULL

	--Teste
SELECT 
	ProductSubcategoryName,
	COUNT(ProductName)
FROM DimProductSubcategory
RIGHT JOIN DimProduct
	ON DimProduct.Productsubcategorykey = DimProductSubcategory.ProductSubcategoryKey
	WHERE ProductName IS NULL
GROUP BY ProductSubcategoryName

--Quest�o 8:
SELECT DISTINCT
	DimProduct.BrandName,
	DimChannel.ChannelName
FROM DimProduct
CROSS JOIN DimChannel
WHERE BrandName IN('Contoso', 'Litware', 'Fabrikam')

--Quest�o 9:
SELECT TOP(1000)
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC


--Quest�o 10:
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
	ORDER BY SalesAmount DESC
