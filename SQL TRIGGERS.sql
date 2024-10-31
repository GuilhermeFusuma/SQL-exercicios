USE DBClínica_TC
--EXEMPLO 1
CREATE OR ALTER TRIGGER Cliente_Adicionado --Cria ou altera o trigger
ON Clientes --Checa a tabela "Clientes"
AFTER INSERT --Ocorre depois de um dado ser inserido
AS
BEGIN
	DECLARE @ultimo_nome VARCHAR(100);
	SELECT @ultimo_nome = Nome FROM Clientes ORDER BY ID_Cliente ASC;

	PRINT @ultimo_nome + ' adicionado com sucesso'
END
GO

INSERT INTO Clientes(ID_Cliente, CPF, Nome, CEP, Telefone, EMail, Sexo, ID_Convênio)
VALUES
	(4, '123.456.789-00', 'João da Silva', 12345678, '(11) 91234-5678', 'joao.silva@email.com', 'M', 1);





DELETE FROM Clientes
WHERE ID_Cliente = 4

SELECT *
FROM Clientes


--EXEMPLO 2:
CREATE OR ALTER TRIGGER Adicionar_Adiministrador
ON Administrador
INSTEAD OF INSERT
AS
BEGIN
	PRINT 'Dados não podem ser inseridos nessa tabela'
END
GO

INSERT INTO Administrador(ID_Administrador, Nome, Telefone, EMail, Carga_Horária, Dias_Semana)
VALUES
	(2, 'João Pereira', '(21) 91234-5678', 'joao.pereira@example.com', '30 horas', 'Segunda a sexta')

SELECT *
FROM Administrador

--EXEMPLO 3
CREATE OR ALTER TRIGGER Atualizar_Ultima_Consulta
ON Consultas
AFTER INSERT
AS
BEGIN
	UPDATE Clientes
	SET Ultima_Consulta = I.Data_Consulta
	FROM Clientes C
	INNER JOIN INSERTED I ON C.ID_Cliente = I.ID_Cliente
END
GO

INSERT INTO Consultas(ID_Consulta, ID_Cliente, Hora_Consulta, Data_Consulta, Preço_Consulta, CRM_médico, ID_Sala)
VALUES
	(4, 2, '15:30:00', '2024-12-15', 500, 'CRM67890', 2)

SELECT 
	ID_Cliente,
	Ultima_Consulta
FROM Clientes
SELECT 
	ID_Consulta,
	Data_Consulta
FROM Consultas

--EXEMPLO CONTOSO
USE ContosoRetailDW

SELECT TOP(100) *
FROM FactSales
ORDER BY SalesKey

CREATE OR ALTER TRIGGER Att_Inventory
ON FactSales
INSTEAD OF DELETE
AS
BEGIN
	PRINT 'Esses dados não podem ser deletados'
END
GO

DELETE FROM FactSales
WHERE SalesKey = 1

SELECT TOP(100) *
FROM FactSales