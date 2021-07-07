			Highest Salary In Department
---------------------------------------------------------------------------------------
Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT k.department, k.first_name employee_name, k.salary FROM
employee K 
WHERE k.salary in (
    SELECT max (e.salary) salary FROM employee e
    GROUP BY e.department
);
---------------------------------------------------------------------------------------