
SELECT a.id FROM (SELECT * FROM Weather ORDER BY recordDate DESC) a
CROSS JOIN (SELECT * FROM Weather ORDER BY recordDate DESC) b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1 AND (a.temperature>b.temperature);

