
	SELECT Score, DENSE_Rank() OVER (ORDER BY Score DESC) "Rank" 
	FROM Scores;

