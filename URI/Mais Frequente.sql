
SELECT amount AS most_frequent_value FROM (SELECT DISTINCT amount, count (amount) 
AS Quantidade FROM value_table GROUP BY amount) AS Frequency
WHERE Quantidade = (SELECT max(Quantidade) AS most_frequent_value FROM (SELECT DISTINCT amount, count (amount) 
AS Quantidade FROM value_table GROUP BY amount) AS Frequency);

