				Classes More Than 5 Students
---------------------------------------------------------------------------------------
list out all classes which have more than or equal to 5 students.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
		SELECT class 
		FROM (SELECT
		    class, COUNT(DISTINCT student) students
		FROM
		    courses
		GROUP BY class) s
		WHERE students >= 5;
---------------------------------------------------------------------------------------
