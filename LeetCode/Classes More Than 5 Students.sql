
		SELECT class 
		FROM (SELECT
		    class, COUNT(DISTINCT student) students
		FROM
		    courses
		GROUP BY class) s
		WHERE students >= 5;

