
SELECT k.department, k.first_name employee_name, k.salary FROM
employee K 
WHERE k.salary in (
    SELECT max (e.salary) salary FROM employee e
    GROUP BY e.department
);
