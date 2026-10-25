
-- How are products classified by completed revenue?
SELECT
    o.item AS item,
    SUM(o.amount) AS total_revenue,
    CASE
        WHEN SUM(o.amount) >= 60000 THEN 'High'
        WHEN SUM(o.amount) >= 15000 THEN 'Medium'
        ELSE 'Low'
    END AS contribution_tier
FROM orders AS o
WHERE o.status = 'completed'
GROUP BY o.item
ORDER BY total_revenue DESC;


O/P

item                                               total_revenue contribution_tier
-------------------------------------------------- ------------- -----------------
Air Fryer                                                 104000 High             
Smart Watch                                                67500 High             
Wireless Earbuds                                           60800 High             
Running Shoes                                              43200 Medium           
Denim Jacket                                               17500 Medium           
Cotton Kurta                                               16800 Medium           
Bluetooth Speaker                                          14000 Low              
Bedsheet Set                                               11400 Low              
Table Lamp                                                 11000 Low              
Ready
L