SELECT employee_id, team_size FROM (SELECT * FROM Employee) 
E INNER JOIN (SELECT team_id, COUNT(*) Team_Size FROM Employee
GROUP BY team_id ORDER BY Team_Size DESC) T
ON (E.team_id=T.team_id);