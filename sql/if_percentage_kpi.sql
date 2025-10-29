SELECT 
  ROUND(SUM(CASE WHEN in_full = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0) * 100, 2) AS if_percentage
FROM fact_orders_aggregate;

