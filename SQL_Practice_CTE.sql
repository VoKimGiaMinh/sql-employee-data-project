--Calculate age of Employee and find those who older than 30 years old (using CTE)
WITH EmployeeAge(Name,age) AS (
	SELECT employeeName, DATEDIFF(YEAR,DateOfBirth,GETDATE())
	FROM Employee
	)
SELECT Name, age
FROM EmployeeAge
WHERE age > 30

--Find projects that have at least two employees working on (using CTE)
WITH HeadCount(ProjectID,EmpNumb) AS (
	SELECT ProjectID, COUNT(EmployeeID)
	FROM EmployeeProject
	GROUP BY ProjectID
	)
SELECT pro.ProjectName,count.EmpNumb AS 'Number of employees working on'
FROM HeadCount AS count LEFT JOIN Project AS pro ON count.ProjectID = pro.ProjectID
WHERE count.EmpNumb >= 2

--Calculate average Salary of each Department (using CTE)
 WITH AvgSalary (DepartmentID,Salary) AS (
	SELECT emp.DepartmentID, pos.Salary
	FROM Employee AS emp LEFT JOIN Position AS pos ON emp.PositionID = pos.PositionID
	)
SELECT d.DepartmentName,AVG(a.Salary) AS 'Average Salary'
FROM AvgSalary AS a
LEFT JOIN Department AS d ON a.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName


