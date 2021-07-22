SELECT 
    o.cust_id, 
    c.first_name, 
    SUM(o.order_cost) FROM customers c JOIN orders o 
ON(c.id=o.cust_id)
GROUP BY c.first_name,o.cust_id;