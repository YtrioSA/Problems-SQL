
	SELECT e.department, e.first_name, e.salary,d_avg.avg FROM
	employee e INNER JOIN (SELECT e.department, AVG(e.salary) avg FROM employee e
	GROUP BY e.department) d_avg
	ON (e.department = d_avg.department)
