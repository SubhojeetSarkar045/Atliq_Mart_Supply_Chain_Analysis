SELECT COUNT(*) AS total_orders_ot
FROM fact_orders_aggregate
WHERE on_time = 1;

