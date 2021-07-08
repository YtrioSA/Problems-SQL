
SELECT name, round((salary*0.10), 2)::TEXT AS "tax" FROM people
WHERE salary > 3000;

