
-- What are the five biggest completed orders?
SELECT order_id, customer_id, item, amount
FROM orders
WHERE status = 'completed'
ORDER BY amount DESC, order_id ASC
LIMIT 5;


O/P

Output:
+----------+-------------+-------------+--------+
| order_id | customer_id | item        | amount |
+----------+-------------+-------------+--------+
|     1061 |          16 | Air Fryer   |  15600 |
|     1065 |          22 | Air Fryer   |  15600 |
|     1069 |          15 | Air Fryer   |  15600 |
|     1077 |           3 | Air Fryer   |  15600 |
|     1006 |           5 | Smart Watch |  13500 |
+----------+-------------+-------------+--------+