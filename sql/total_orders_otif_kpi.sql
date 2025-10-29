SELECT COUNT(*) AS total_orders_otif
FROM fact_orders_aggregate
WHERE otif = 1;

