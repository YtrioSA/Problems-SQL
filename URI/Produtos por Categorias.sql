
	SELECT categories.name, SUM(amount) FROM products INNER JOIN categories 
	ON (products.id_categories=categories.Id) GROUP BY categories.name;

