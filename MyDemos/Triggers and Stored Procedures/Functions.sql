CREATE FUNCTION ufn_ReturnPernik()
RETURNS TABLE
	AS
RETURN(
	SELECT *
	FROM Towns
	WHERE Name= 'Pernik'
)
GO

SELECT * FROM ufn_ReturnPernik()