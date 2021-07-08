
	SELECT p.product_id, SUM(quantity) total_quantity 
	FROM Sales s INNER JOIN Product p
	ON (s.product_id=p.product_id) 
	GROUP BY product_id;

