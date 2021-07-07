			Product Sales Analysis II
---------------------------------------------------------------------------------------
Write an SQL query that reports the total quantity sold for every product id.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT p.product_id, SUM(quantity) total_quantity 
	FROM Sales s INNER JOIN Product p
	ON (s.product_id=p.product_id) 
	GROUP BY product_id;
---------------------------------------------------------------------------------------
