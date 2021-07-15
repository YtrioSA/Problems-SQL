SELECT * FROM (SELECT gender, DAY, (SELECT SUM(score_points) FROM (SELECT * FROM Scores S
WHERE S.gender='F') g
WHERE g.DAY BETWEEN (SELECT MIN(S.DAY) FROM Scores S
WHERE S.gender='F') AND k.DAY) total FROM (SELECT * FROM Scores S
WHERE S.gender='F') k
ORDER BY k.DAY) j

UNION ALL

SELECT * FROM (
SELECT gender, DAY, (SELECT SUM(score_points) FROM (SELECT * FROM Scores S
WHERE S.gender='M') g
WHERE g.DAY BETWEEN (SELECT MIN(S.DAY) FROM Scores S
WHERE S.gender='M') AND k.DAY) total FROM (SELECT * FROM Scores S
WHERE S.gender='M') k
ORDER BY k.DAY) h