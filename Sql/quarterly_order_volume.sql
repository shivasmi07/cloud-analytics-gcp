#Query2: Analyze the trend of total order volume over time by aggregating order data on a quarterly basis from 2019 to 2023. The goal is to identify growth patterns, seasonal variations, and overall performance by quarter using the `created_at` timestamp from the `thelook.orders` dataset.

SELECT
  CONCAT(EXTRACT(YEAR FROM created_at), '-Q', CAST(EXTRACT(QUARTER FROM created_at) AS STRING)) AS order_quarter,
  COUNT(order_id) AS total_orders
FROM
  `thelook.orders`
WHERE created_at IS NOT NULL
GROUP BY order_quarter
ORDER BY order_quarter;
