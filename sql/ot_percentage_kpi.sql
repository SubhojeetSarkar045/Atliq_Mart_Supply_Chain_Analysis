SELECT 
  ROUND(SUM(CASE WHEN on_time = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0) * 100, 2) AS ot_percentage
FROM fact_orders_aggregate;
