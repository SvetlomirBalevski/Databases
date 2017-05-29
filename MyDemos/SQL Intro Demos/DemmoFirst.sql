--USE TelerikAcademy
--SELECT lastName, Salary, Salary+300 as "Salary Bonus" from Employees
use TelerikAcademy
--select LastName+' '+ LastName as [Full Name], Salary +300 as [Bonus] FROM Employees 

--SELECT FirstName as Name
--From Employees
--UNION 
--SELECT LastName AS Name
--FROM Employees

--ORDER BY Employees.FirstName

--SELECT EmployeeID,FirstName AS Name
--FROM Employees
--WHERE FirstName LIKE '%[a-z]%'
--ORDER BY FirstName
--WHERE FirstName LIKE '%or'
SELECT * FROM Employees
WHERE ManagerID IS NOT NULL AND EmployeeID <5
ORDER BY FirstName DESC