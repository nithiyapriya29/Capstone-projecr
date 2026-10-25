
-- How many orders and how much recorded amount exist per status?
SELECT
    status,
    COUNT(*) AS number_of_orders,
    SUM(amount) AS total_amount
FROM orders
GROUP BY status
ORDER BY number_of_orders DESC;




O/P
status               number_of_orders total_amount
-------------------- ---------------- ------------
completed                          63       346200
pending                            19        64900
disputed                            8        73200