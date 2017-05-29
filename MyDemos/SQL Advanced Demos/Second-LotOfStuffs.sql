USE TelerikAcademy

--SELECT COUNT(ManagerID) FROM Employees

--SELECT AVG(ManagerID)  Avg,
--	ROUND(SUM (ManagerID) / COUNT(*),1) Avgall
--	FROM Employees

--SELECT SUM(Salary), DepartmentID from Employees
--GROUP BY DepartmentID

--SELECT DepartmentID, JobTitle,
--	SUM(Salary) as Salaries, COUNT(*) AS Count
--from Employees
--GROUP BY DepartmentID, JobTitle
--ORDER BY DepartmentID

--SELECT Name AS [ProjectsName],
--COALESCE(Convert(nvarchar(50),EndDate), 'Not Finished') AS [Date Finished]
--	FROM Projects

--CREATE TABLE Persons(
--PersonID int IDENTITY,
--Name nvarchar(100) NOT NULL,
--CONSTRAINT PK_Persons PRIMARY KEY(PersonID)
--)
--GO
--CREATE VIEW [First 10 Persons] AS
--SELECT TOP 10 Name FROM Persons
--EXEC sp_table_types
--CREATE TABLE Cities (
--  CityID int IDENTITY,
--  Name nvarchar(100) NOT NULL,
--  CountryID int NOT NULL,
--  CONSTRAINT PF_Cities PRIMARY KEY(CityID)
--)
--GO

--CREATE TABLE Countries (
--  CountryID int IDENTITY,
--  Name nvarchar(100) NOT NULL,
--  CONSTRAINT PK_Countries PRIMARY KEY(CountryID)
--)

--GO

--ALTER TABLE CITIES
--ADD CONSTRAINT 
--	FK_CITIES_COUNTRIES FOREIGN KEY (CountryID)	
--							REFERENCES Countries
