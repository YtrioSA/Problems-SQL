
	SELECT "name", Investment, month_of_payback , (Dinheiro - (Investment::INTEGER)) 
	return FROM (SELECT COUNT(*) month_of_payback , O.Client_id Code, Investment, C.name "name", SUM (O.profit) Dinheiro FROM (SELECT * FROM operations O LIMIT 6) O
	JOIN clients C ON (c.Id=O.Client_id)
	GROUP BY C.name, O.Client_id, Investment ORDER BY Code ASC) x
	WHERE (Dinheiro - (Investment::INTEGER)) >= 0
	ORDER BY Investment;

