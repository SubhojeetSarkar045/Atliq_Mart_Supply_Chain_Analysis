SELECT COUNT(*) AS total_orders_if
FROM fact_orders_aggregate
WHERE in_full = 1;

