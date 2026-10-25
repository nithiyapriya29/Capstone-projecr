
-- How does each rep's monthly completed revenue compare with target?
SELECT
    r.rep_name AS rep_name,
    o.order_month AS order_month,
    r.monthly_target AS monthly_target,
    SUM(o.amount) AS revenue,
    CASE
        WHEN SUM(o.amount) < r.monthly_target
            THEN 'Below Target'
        WHEN SUM(o.amount) < 1.1 * r.monthly_target
            THEN 'On Target'
        ELSE 'Above Target'
    END AS performance_tier
FROM reps AS r
JOIN customers AS c
    ON r.rep_id = c.rep_id
JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.status = 'completed'
GROUP BY
    r.rep_name,
    o.order_month,
    r.monthly_target
ORDER BY r.rep_name ASC, o.order_month ASC;


O/P
rep_name                                           order_month monthly_target revenue     performance_tier
-------------------------------------------------- ----------- -------------- ----------- ----------------
Arjun Mehta                                        2026-09              40000       53500 Above Target    
Arjun Mehta                                        2026-10              40000       41300 On Target       
Arjun Mehta                                        2026-11              40000       24500 Below Target    
Kavya Nair                                         2026-09              20000       19800 Below Target    
Kavya Nair                                         2026-10              20000       19000 Below Target    
Kavya Nair                                         2026-11              20000       43700 Above Target    
Neha Kulkarni                                      2026-09              20000       18600 Below Target    
Neha Kulkarni                                      2026-10              20000       20600 On Target       
Neha Kulkarni                                      2026-11              20000       35700 Above Target    
Sanjay Roy                                         2026-09              12000        6400 Below Target    
Sanjay Roy                                         2026-10              12000       12200 On Target       
Sanjay Roy                                         2026-11              12000       50900 Above Target    
Ready

