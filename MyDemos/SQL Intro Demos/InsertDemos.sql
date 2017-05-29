USE TelerikAcademy
--	INSERT INTO Towns VALUES ('Pernik')
--	INSERT INTO Departments (Name, ManagerID) VALUES ('Vinkel','1')
		
--INSERT INTO Towns
--	SELECT FIRSTNAME FROM Employees
--	WHERE EmployeeID = 1

INSERT INTO Towns VALUES('TOWN 1'), ('TOWN 2')

UPDATE Employees
SET JobTitle = 'Senior' + JobTitle
	FROM Employees
		JOIN Departments
			ON Employees.DepartmentID = DepartmentS.DepartmentID
				WHERE Departments.Name = 'Sales' 