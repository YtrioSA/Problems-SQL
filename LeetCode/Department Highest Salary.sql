				Department Highest Salary
---------------------------------------------------------------------------------------
Write a SQL query to find employees who have the highest salary in each of the departments.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT
	    Department.name AS 'Department',
	    Employee.name AS 'Employee',
	    Salary
	FROM
	    Employee
		JOIN
	    Department ON Employee.DepartmentId = Department.Id
	WHERE
	    (Employee.DepartmentId , Salary) IN
	    (   SELECT
		    DepartmentId, MAX(Salary)
		FROM
		    Employee
		GROUP BY DepartmentId
	    )
	;
---------------------------------------------------------------------------------------
