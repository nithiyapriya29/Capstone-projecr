
-- Which products generated more than INR 20000 in completed revenue?
SELECT
    item,
    COUNT(*) AS number_of_orders,
    SUM(amount) AS revenue
FROM orders
WHERE status = 'completed'
GROUP BY item
HAVING SUM(amount) > 20000
ORDER BY revenue DESC;


O/P

item                                               number_of_orders revenue    
-------------------------------------------------- ---------------- -----------
Air Fryer                                                         9      104000
Smart Watch                                                       9       67500
Wireless Earbuds                                                 11       60800
Running Shoes                                                     8       43200