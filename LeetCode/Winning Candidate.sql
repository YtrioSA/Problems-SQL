SELECT C.Name FROM Candidate C JOIN Vote V 
ON (V.CandidateId = C.Id) GROUP BY C.name
ORDER BY COUNT(*) DESC
LIMIT 1;
