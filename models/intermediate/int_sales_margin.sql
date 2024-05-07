SELECT 
date_date,
orders_id,
ROUND (SUM (CAST (purchase_price as FLOAT64) * CAST (quantity as FLOAT64)),2) AS purchase_cost,
ROUND (SUM (CAST (revenue as FLOAT64)- CAST (purchase_price as FLOAT64)),2) AS margin
FROM {{ref('stg_raw__sales')}}
LEFT JOIN {{ref('stg_raw__product')}}
ON stg_raw__sales.product_id = stg_raw__product.products_id
GROUP BY date_date, orders_id