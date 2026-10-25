
-- Which customers have never placed an order?
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.region
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL
ORDER BY c.customer_id ASC;

O/P

customer_id first_name                     last_name                      region              
----------- ------------------------------ ------------------------------ --------------------
          6 Ananya                         Reddy                          South               
         11 Imran                          Joshi                          East                
         17 Farhan                         Shah                           North               
         24 Reena                          Kulkarni                       West            