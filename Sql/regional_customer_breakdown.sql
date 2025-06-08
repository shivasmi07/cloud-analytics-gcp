# Query 1: Regional Breakdown of Customer Base by Country and Top States

WITH customer_counts AS (
  SELECT
    country,
    COUNT(DISTINCT id) AS customer_count
  FROM
    `thelook.users`
  WHERE country IS NOT NULL AND TRIM(country) != ''
  GROUP BY country
),
total AS (
  SELECT SUM(customer_count) AS total_customers FROM customer_counts
),
ranked_states AS (
  SELECT
    country,
    state,
    COUNT(id) AS state_customer_count,
    RANK() OVER (PARTITION BY country ORDER BY COUNT(id) DESC) AS state_rank
  FROM
    `thelook.users`
  WHERE country IS NOT NULL AND state IS NOT NULL
  GROUP BY country, state
)
SELECT
  cc.country,
  cc.customer_count,
  ROUND((cc.customer_count / t.total_customers) * 100, 2) AS customer_percentage,
  rs.state AS top_state,
  rs.state_customer_count
FROM customer_counts cc
JOIN total t ON 1=1
LEFT JOIN ranked_states rs ON cc.country = rs.country AND rs.state_rank = 1
ORDER BY customer_count DESC;
