	
	SELECT P1.Year, U1.Name sender, U2.Name receiver FROM 
	Users U1 INNER JOIN packages P1
	ON (U1.Id = P1.id_user_sender)
	INNER JOIN Users U2
	ON (U2.Id = P1.id_user_receiver)
	WHERE (P1.color = 'blue' OR P1.Year = 2015) AND (U1.address != 'Taiwan' AND U2.address != 'Taiwan')
	ORDER BY P1.YEAR DESC;

