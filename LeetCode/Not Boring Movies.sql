				Not Boring Movies
---------------------------------------------------------------------------------------
Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table in descending order by rating.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT * FROM Cinema
	WHERE  id % 2 != 0 AND description != 'boring'
	ORDER BY rating DESC;
---------------------------------------------------------------------------------------