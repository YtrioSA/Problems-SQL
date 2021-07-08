
 SELECT name, CAST(DATE_PART('day', payday) AS INTEGER) AS "day" FROM loan;

