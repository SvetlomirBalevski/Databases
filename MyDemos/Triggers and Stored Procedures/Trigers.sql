--ALTER TRIGGER utr_PrintDeletedRecord ON Towns
--AFTER UPDATE
--AS
--BEGIN 
--	SELECT * FROM deleted
--	SELECT * FROM inserted
--END

--UPDATE Towns SET Name = 'Pernik' WHERE TownID = 3

--ALTER TRIGGER utr_NotDeleteButPrintInstead ON Towns
--INSTEAD OF UPDATE
--AS
--BEGIN 
--	PRINT('Updating')
--END

--UPDATE Towns SET Name = 'Pernik' WHERE TownID = 4
