DECLARE @townName nvarchar(50)
DECLARE townCursor CURSOR
	FOR 
	SELECT Name FROM Towns

OPEN townCursror
FETCH NEXT FROM townCursor INTO @townName

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT(@townName)
	FETCH NEXT FROM townCursor INTO @townName
END