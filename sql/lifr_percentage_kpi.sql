SELECT 
  ROUND(SUM(CASE WHEN delivery_qty >= order_qty THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0) * 100, 2) AS lifr_percentage
FROM fact_order_lines;
