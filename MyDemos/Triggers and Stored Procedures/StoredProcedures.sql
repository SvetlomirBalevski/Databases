--USE TelerikAcademy

--CREATE PROC usp_SelectAllFromTable @table nvarchar(20)
ALTER PROC usp_SelectAllFromTable @table nvarchar(20)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @query nvarchar(100) = 'SELECT * FROM ' + @table
	EXEC (@query)
END

EXEC usp_SelectAllFromTable 'Projects'
	
--DECLARE @tableName varchar(50)
--SET @tableName = 'Employees'
--PRINT 'The table is:' + @tableName

--DECLARE @query nvarchar(50)= 'SELECT * FROM Employees WHERE USERNAME = ''Pesho'''

--EXEC(@query)

