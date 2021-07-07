				Second Highest Salary
---------------------------------------------------------------------------------------
       Write a SQL query to get the second highest salary from the Employee table.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT
    (SELECT DISTINCT
            Salary
        FROM
            Employee
        ORDER BY Salary DESC
        LIMIT 1 OFFSET 1) AS SecondHighestSalary;
---------------------------------------------------------------------------------------