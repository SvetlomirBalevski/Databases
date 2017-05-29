use TelerikAcademy
--SELECT e.EmployeeID, e.LastName,e.DepartmentID,
--		d.DepartmentID,d.Name AS DepartmentName
--FROM Employees	e
--	INNER JOIN Departments d
--		ON e.DepartmentID = d.DepartmentID

--SELECT *
--	FROM Employees e
--		INNER JOIN Employees m
--			ON e.ManagerID = m.EmployeeID

SELECT FirstName,LastName,AddressText,t.Name as [City Name] FROM Employees e
	JOIN Addresses a
		ON 
			e.AddressID = a.AddressID
	JOIN Towns t
		ON
			a.TownID = t.TownID

WHERE t.TownID >3
ORDER BY t.TownID
