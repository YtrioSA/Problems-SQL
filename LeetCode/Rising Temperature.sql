				Rising Temperature
---------------------------------------------------------------------------------------
Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).
Return the result table in any order.
---------------------------------------------------------------------------------------
Solution:
---------------------------------------------------------------------------------------
SELECT a.id FROM (SELECT * FROM Weather ORDER BY recordDate DESC) a
CROSS JOIN (SELECT * FROM Weather ORDER BY recordDate DESC) b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1 AND (a.temperature>b.temperature);
---------------------------------------------------------------------------------------
