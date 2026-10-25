
-- Which orders have missing amounts?
SELECT order_id, customer_id, item, status
FROM orders
WHERE amount IS NULL
ORDER BY order_id ASC;


o/p
order_id    customer_id item                                               status              
----------- ----------- -------------------------------------------------- --------------------
       1001          10 Bluetooth Speaker                                  pending             
       1010          19 Wireless Earbuds                                   pending             
       1064          20 Bluetooth Speaker                                  pending             