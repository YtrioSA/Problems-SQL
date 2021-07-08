
		SELECT Name Customers FROM Customers C LEFT JOIN Orders O
		ON(O.CustomerId=C.Id)
		WHERE customerid IS NULL;
