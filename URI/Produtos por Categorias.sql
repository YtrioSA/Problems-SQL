				Produtos por Categorias
---------------------------------------------------------------------------------------

Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.

Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.

---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT categories.name, SUM(amount) FROM products INNER JOIN categories 
	ON (products.id_categories=categories.Id) GROUP BY categories.name;
---------------------------------------------------------------------------------------
