USE NORTHWND

--TASK 1
--CREATE TABLE Cities
--(
--	CityID INT IDENTITY PRIMARY KEY,
--	Name NVARCHAR(15)
--)


--TASK 2
--INSERT INTO Cities

--SELECT DISTINCT E.City FROM(
--SELECT DISTINCT City FROM Employees
--UNION
--SELECT DISTINCT City FROM Suppliers
--UNION
--SELECT DISTINCT City FROM Customers
----ORDER BY City
--) E


--TASK 3
--ALTER TABLE Employees
--ADD CityID INT

--ALTER TABLE Suppliers
--ADD CityID INT

--ALTER TABLE Customers
--ADD CityID INT

--ALTER TABLE Employees
--ADD CONSTRAINT FK_Employees_Cities 
--FOREIGN KEY (CityId) REFERENCES Cities(CityID)

--ALTER TABLE Customers
--ADD CONSTRAINT FK_Customers_Cities 
--FOREIGN KEY (CityId) REFERENCES Cities(CityID)

--ALTER TABLE Suppliers
--ADD CONSTRAINT FK_Suppliers_Cities 
--FOREIGN KEY (CityId) REFERENCES Cities(CityID)

--TASK 4
--UPDATE Employees SET CityID = (
--SELECT CityID
--FROM Cities 
--WHERE Cities.Name = Employees.City) 

--UPDATE Customers SET CityID = (
--SELECT CityID
--FROM Cities 
--WHERE Cities.Name = Customers.City)

--UPDATE Suppliers SET CityID = (
--SELECT CityID
--FROM Cities 
--WHERE Cities.Name = Suppliers.City)

--UPDATE Suppliers
--SET CityID = c.CityID
--FROM Suppliers s 
--	INNER JOIN Cities c ON s.CityID = c.CityID

--TASK 5
--CREATE UNIQUE INDEX UK_Unique_Name
--ON Cities(Name)

--TASK 6
--INSERT INTO Cities
--SELECT DISTINCT ShipCity FROM Orders
--WHERE shipCity NOT IN (SELECT Name FROM Cities)

--TASK 7
--ALTER TABLE Orders 
--ADD CityId INT 

--ALTER TABLE Orders
--ADD CONSTRAINT  FK_Orders_Cities FOREIGN KEY (CityID)
--REFERENCES Cities(CityID)

--TASK 8
--EXEC sys.sp_rename 'Orders.CityId','ShipCityId'

--TASK 9

--UPDATE Orders 
--SET Orders.ShipCityId = c.CityId
--FROM 
--(SELECT CityId, Name
--		FROM Cities )c
--WHERE c.Name = Orders.ShipCity


--TASK 11
--CREATE TABLE Countries
--(
--	CountryID INT PRIMARY KEY IDENTITY,
--	Name NVARCHAR(15) unique
--)

--TASK 12


--ALTER TABLE Cities
--ADD CountryId INT FOREIGN KEY REFERENCES Countries(CountryID)

--INSERT INTO Countries
--	SELECT Country FROM Employees
--		WHERE Country IS NOT NULL
--		UNION
--	SELECT Country FROM Suppliers
--		WHERE Country IS NOT NULL
--		UNION
--	SELECT Country FROM Customers 
--		WHERE Country IS NOT NULL
--		UNION
--	SELECT ShipCountry FROM orders 
--		WHERE ShipCountry IS NOT NULL


