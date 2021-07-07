				Customers Who Never Order
---------------------------------------------------------------------------------------
	Write a SQL query to find all customers who never order anything.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
		SELECT Name Customers FROM Customers C LEFT JOIN Orders O
		ON(O.CustomerId=C.Id)
		WHERE customerid IS NULL;
---------------------------------------------------------------------------------------