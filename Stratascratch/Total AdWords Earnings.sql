SELECT DISTINCT business_type, SUM (adwords_earnings) 
OVER  (PARTITION BY business_type)
FROM  google_adwords_earnings;