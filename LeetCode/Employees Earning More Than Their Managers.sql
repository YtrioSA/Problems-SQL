			Employees Earning More Than Their Managers
---------------------------------------------------------------------------------------
write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT Name Employee
	FROM (SELECT id, salary FROM Employee
	WHERE id >= (SELECT MIN(ManagerId) FROM Employee)
	AND   id <= (SELECT MAX(ManagerId) FROM Employee)) M
	INNER JOIN (SELECT Name,ManagerId, salary FROM Employee
	WHERE ManagerId IS NOT NULL) E
	ON (M.Id=E.ManagerId)
	WHERE (E.salary > M.salary);
---------------------------------------------------------------------------------------