SELECT 
date_date,
SUM (margin) AS margin, 
SUM (purchase_cost) AS purchase_cost, 
COUNT (orders_id) AS nb_transactions
FROM {{ref("int_sales_margin")}}
GROUP BY date_date
ORDER BY date_date