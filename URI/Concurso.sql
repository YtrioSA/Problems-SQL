					Concurso

	SELECT name, round(((math*2)+(specific*3)+(project_plan*5))/10, 2)::TEXT AS AVG FROM candidate 
	INNER JOIN score ON 
	(candidate.id=score.candidate_id)
	ORDER BY AVG DESC;
