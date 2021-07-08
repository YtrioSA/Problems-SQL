
SELECT CONCAT('Podium: ', team) AS name FROM league
WHERE (position >=1 AND position <= 3)
UNION ALL
SELECT CONCAT('Demoted: ', team) AS name FROM league
WHERE (position > 13 AND position <= 15);

