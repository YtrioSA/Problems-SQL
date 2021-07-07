			Valor Médio dos Produtos
---------------------------------------------------------------------------------------

Na empresa que você trabalha está sendo feito um levantamento sobre os valores dos produtos que são comercializados.

Para ajudar o setor que está fazendo esse levantamento você deve calcular e exibir o valor médio do preço dos produtos.

OBS: Mostrar o valor com dois números após o ponto.

---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
	SELECT AVG(price)::NUMERIC(10, 2) FROM products;
---------------------------------------------------------------------------------------
