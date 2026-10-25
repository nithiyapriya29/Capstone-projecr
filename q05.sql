
-- What are the headline KPIs for completed orders?
SELECT
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue,
    AVG(amount) AS avg_order_value,
    MIN(amount) AS min_order_value,
    MAX(amount) AS max_order_value
FROM orders
WHERE status = 'completed';




O/P

total_orders total_revenue avg_order_value min_order_value max_order_value
------------ ------------- --------------- --------------- ---------------
          63        346200            5495            1100           15600
