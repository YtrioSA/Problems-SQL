
	SELECT P.product_id, S.year first_year, quantity, price FROM Sales S INNER JOIN Product P
	ON (S.product_id=P.product_id)
	WHERE (P.product_id, S.year) IN (
	    SELECT P.product_id, MIN(year) first_year FROM Sales S INNER JOIN Product P
	    ON (S.product_id=P.product_id)
	    GROUP BY P.product_id    
	);

