USE TelerikAcademy
--SELECT FirstName,LastName,Salary
--	--FROM Employees
--	--WHERE Salary = 
--	--(SELECT TOP 1 Salary FROM Employees ORDER BY Salary DESC)
-- FROM Employees 
--	WHERE Salary =(SELECT MAX(Salary) FROM Employees)


--SELECT FirstName, LastName, DepartmentID, Salary 
--	FROM Employees
--		WHERE DepartmentID = -- or IN 
--			(SELECT DepartmentID FROM Departments
--				WHERE Name = 'Sales')

SELECT FirstName, LastName, EmployeeID, ManagerID	
	FROM Employees e
		WHERE EXISTS
		(SELECT EmployeeID
		FROM Employees m
		WHERE m.EmployeeID = e.ManagerID
		AND m.DepartmentID=1)