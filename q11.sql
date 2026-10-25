
-- How does completed revenue vary by region and month?
-- INNER JOIN keeps matched orders; DISTINCT avoids counting
-- the same customer multiple times within a region and month.
SELECT
    c.region AS region,
    o.order_month AS order_month,
    COUNT(*) AS number_of_orders,
    COUNT(DISTINCT o.customer_id) AS number_of_customers,
    SUM(o.amount) AS total_revenue,
    AVG(o.amount) AS average_revenue
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
JOIN reps AS r
    ON c.rep_id = r.rep_id
WHERE o.status = 'completed'
GROUP BY c.region, o.order_month
ORDER BY c.region ASC, o.order_month ASC;



O/P

region               order_month number_of_orders number_of_customers total_revenue average_revenue
-------------------- ----------- ---------------- ------------------- ------------- ---------------
East                 2026-09                    2                   2          6400            3200
East                 2026-10                    4                   3         12200            3050
East                 2026-11                    6                   5         50900            8483
North                2026-09                    8                   2         53500            6687
North                2026-10                    6                   4         41300            6883
North                2026-11                    5                   4         24500            4900
South                2026-09                    5                   3         19800            3960
South                2026-10                    5                   4         19000            3800
South                2026-11                    7                   4         43700            6242
West                 2026-09                    4                   3         18600            4650
West                 2026-10                    5                   4         20600            4120
West                 2026-11                    6                   3         35700            5950
Ready
