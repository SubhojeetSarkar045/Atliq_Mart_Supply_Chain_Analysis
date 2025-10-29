SELECT 
  ROUND(SUM(delivery_qty) / NULLIF(SUM(order_qty),0) * 100, 2) AS vofr_percentage
FROM fact_order_lines;