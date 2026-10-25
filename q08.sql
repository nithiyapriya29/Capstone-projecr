
-- What is the customer age profile in each region?
SELECT
    region,
    COUNT(*) AS number_of_customers,
    AVG(age) AS average_age,
    MIN(age) AS min_age,
    MAX(age) AS max_age
FROM customers
GROUP BY region
ORDER BY region ASC;

O/P
region               number_of_customers average_age min_age     max_age    
-------------------- ------------------- ----------- ----------- -----------
East                                   6          34          29          41
North                                  6          37          27          48
South                                  6          36          24          52
West                                   6          28          22          39