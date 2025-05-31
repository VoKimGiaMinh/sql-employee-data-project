USE EmployeeData

SELECT * FROM Employee
SELECT * FROM Skill

--For each skill, how many people have it?
SELECT sk.SkillName, COUNT(emp.EmployeeID) AS Number_Employee
FROM Skill AS sk LEFT JOIN EmployeeSkill AS emp ON sk.SkillID = emp.SkillID
GROUP BY sk.SkillID, sk.SkillName
ORDER BY sk.SkillID ASC

--For each skill, how many people have it and which skills that more than 5 employees have?
SELECT sk.SkillName, COUNT(emp.EmployeeID) AS Number_Employee
FROM Skill AS sk LEFT JOIN EmployeeSkill AS emp ON sk.SkillID = emp.SkillID
GROUP BY sk.SkillID, sk.SkillName
HAVING COUNT(emp.EmployeeID) > 5
ORDER BY Number_Employee ASC

--Find employees have skill ID:	1,3,5,7
SELECT DISTINCT emp.EmployeeName
FROM Employee AS emp JOIN EmployeeSkill AS emps ON emp.EmployeeID = emps.EmployeeID
WHERE emps.SkillID IN (1,3,5,7)

--Find employees have name begin with letter A
SELECT EmployeeName
FROM Employee 
WHERE EmployeeName LIKE 'A%'

--Find Employees have space in the middle of their names
SELECT EmployeeName
FROM Employee 
WHERE EmployeeName LIKE '% %'


--Find male employees
SELECT employeeName
FROM Employee
WHERE gender LIKE 'Male'

--Find employees have date of birth from 15/02/1985 to 20/11/1975
SELECT EmployeeName, DateOfBirth
FROM Employee
WHERE'1985/02/15' <= DateOfBirth AND DateOfBirth >='1975/11/20' --Date format need to be similar with the database (Use SELECT to check)


--Find employees have birthday in August 
SELECT EmployeeName
FROM Employee
WHERE MONTH(DateOfBirth) = 8


--Find employee who is oldest 
SELECT employeeName
FROM Employee
WHERE DateOfBirth = (SELECT MIN(DateOfBirth) FROM Employee)


--Find employees have more than 2 skills
SELECT EmployeeName, COUNT(emps.SkillID)
FROM Employee AS emp LEFT JOIN EmployeeSkill AS emps ON emp.EmployeeID = emps.EmployeeID
GROUP BY employeeName
HAVING COUNT(emps.SkillID) > 2






