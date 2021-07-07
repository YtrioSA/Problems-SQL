				Product Sales Analysis I
---------------------------------------------------------------------------------------
Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT P.product_name, S.year, S.price FROM Product P JOIN Sales S
ON (S.product_id=P.product_id);
---------------------------------------------------------------------------------------