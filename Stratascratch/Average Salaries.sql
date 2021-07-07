			Average Salaries
---------------------------------------------------------------------------------------
Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.
---------------------------------------------------------------------------------------
Solution:
	SELECT e.department, e.first_name, e.salary,d_avg.avg FROM
	employee e INNER JOIN (SELECT e.department, AVG(e.salary) avg FROM employee e
	GROUP BY e.department) d_avg
	ON (e.department = d_avg.department)
	ORDER BY d_avg.avg ASC;
---------------------------------------------------------------------------------------