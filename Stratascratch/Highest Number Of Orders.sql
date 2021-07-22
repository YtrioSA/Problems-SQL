
SELECT o.cust_id id, 
COUNT(*) total_orders from customers c JOIN orders o
ON (c.id=o.cust_id)
GROUP BY o.cust_id
HAVING COUNT(*) in (
    (SELECT max (total_orders) FROM (SELECT o.cust_id id, 
    COUNT(*) total_orders from customers c JOIN orders o
    ON (c.id=o.cust_id)
    GROUP BY o.cust_id) k)
);


