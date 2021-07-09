```sql
SELECT P.id, P.Name FROM Products P INNER JOIN Categories C
ON (P.Id_categories=C.Id)
WHERE C.name IN (SELECT C.Name FROM Categories C WHERE C.name LIKE 'super%');
```