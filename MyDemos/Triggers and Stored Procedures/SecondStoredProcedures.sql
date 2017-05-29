
--DECLARE @n INT = 2

--WHILE(@n >1)
--	BEGIN
--		SET @n = @n+1
--		SET @n  =@n-1
--	END

--CREATE PROCEDURE dbo.usp_Addnumbers
--	@firstNumber smallint,
--	@secondNumber smallint,
--	@result int OUTPUT
--AS
--	SET @result = @firstNumber + @secondNumber
--GO

--USE TelerikAcademy
--DECLARE @answer smallint
--EXECUTE usp_Addnumbers 5,6, @answer OUTPUT
--SELECT 'The result is ', @answer

--CREATE PROCEDURE dbo.usp_AddNewTown @townName nvarchar(100)
--AS
--	BEGIN
--		INSERT INTO Towns VALUES (@townName)
--		RETURN SCOPE_IDENTITY()
--	END
--GO

DECLARE @id INT
EXEC @id = dbo.usp_AddNewTown 'Pernik'
PRINT(@id)

