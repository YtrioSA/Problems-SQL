SELECT P.Product_id, ROUND(SUM((U.units * P.Price))/CAST(SUM(U.units) AS DECIMAL), 2) average_price FROM Prices P JOIN UnitsSold U
ON(P.product_id=U.product_id)
WHERE U.purchase_date BETWEEN start_date AND end_date
GROUP BY P.Product_id ORDER BY P.Product_id;