SELECT S1.sale_date, (S1.sold_num - S2.sold_num) diff FROM Sales S1 INNER JOIN Sales S2
ON(S1.sale_date = S2.sale_date)
WHERE S1.fruit='apples' AND S2.fruit='oranges';