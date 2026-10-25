
-- Which North and West customers are aged 25 to 40?
SELECT customer_id, first_name, last_name, region, age
FROM customers
WHERE region IN ('North', 'West')
  AND age BETWEEN 25 AND 40
ORDER BY age ASC, customer_id ASC;


O/P
customer_id first_name                     last_name                      region               age        
----------- ------------------------------ ------------------------------ -------------------- -----------
         24 Reena                          Kulkarni                       West                          25
          8 Divya                          Gupta                          West                          26
         17 Farhan                         Shah                           North                         27
          1 aarav                          Sharma                         North                         28
         16 Nisha                          Mishra                         West                          36
          5   Vikram                       Singh                          North                         37
         12 Pooja                          Menon                          West                          39
         21 Manoj                          Desai                          North                         40