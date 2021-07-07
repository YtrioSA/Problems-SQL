				Locações de Setembro
---------------------------------------------------------------------------------------
A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT C.name, R.rentals_date 
	FROM customers C INNER JOIN rentals R 
	ON(R.id_customers=C.id)
	WHERE EXTRACT(MONTH FROM R.rentals_date)=9;
---------------------------------------------------------------------------------------
