SELECT MAX (salary) - (SELECT MAX (salary) FROM db_employee
WHERE department_id  = 1) salary_difference FROM db_employee
WHERE department_id  = 4;