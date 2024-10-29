--Questão 1:
DECLARE @valor1 INT = 10
DECLARE @valor2 INT = 5
DECLARE @valor3 FLOAT = 34
DECLARE @valor4 FLOAT = 7
DECLARE @soma INT
DECLARE @subtracao INT
DECLARE @multiplicacao INT
DECLARE @divisao FLOAT

SET @soma = @valor1 + @valor2
SET @subtracao = @valor3 - @valor4
SET @multiplicacao = @valor1 * @valor4 
SET @divisao = @valor3 / @valor4

SELECT
	@soma,
	@subtracao,
	@multiplicacao,
	ROUND(@divisao, 2)


--Questão 2:
DECLARE @produto VARCHAR(50) = 'Celular'
DECLARE @quantidade INT = 12
DECLARE @preco FLOAT = 9.99
DECLARE @faturamento FLOAT = @quantidade * @preco

SELECT 
	@produto,
	@quantidade,
	@preco,
	@faturamento


--Questão 3:
DECLARE @nome VARCHAR(100), @data_nascimento DATE, @num_pets INT

SET @nome = 'Andre'
SET @data_nascimento = '1998-02-10'
SET @num_pets = 2

PRINT 'Meu nome é ' + @nome + ', nasci em ' + FORMAT(CAST(@data_nascimento AS DATETIME), 'dd/MM/yyyy') + ' e tenho ' + CAST(@num_pets AS VARCHAR) + ' pets.';


--Questão 4: 
DECLARE @nome_das_lojas VARCHAR(MAX)
SET @nome_das_lojas = ''

SELECT 
	@nome_das_lojas = @nome_das_lojas + StoreName + ', '
FROM DimStore
WHERE Status = 'off' AND CloseDate LIKE '%2008%'

PRINT 'As lojas fechadas no ano de 2008 foram: ' + @nome_das_lojas


--Questão 5:
DECLARE @lista_lampadas VARCHAR(MAX)
SET @lista_lampadas = ''
SELECT @lista_lampadas = @lista_lampadas + ProductName + ', ' + CHAR(10)
FROM DimProduct
WHERE ProductSubcategoryKey = 46

PRINT 'Lampadas: ' + CHAR(10) + @lista_lampadas