
	SELECT C.name, R.rentals_date 
	FROM customers C INNER JOIN rentals R 
	ON(R.id_customers=C.id)
	WHERE EXTRACT(MONTH FROM R.rentals_date)=9;

