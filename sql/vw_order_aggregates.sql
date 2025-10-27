-- View: vw_order_aggregates
-- Summarizes order-level metrics (OT, IF, OTIF).

USE atliq_db;

DROP VIEW IF EXISTS vw_order_aggregates;

CREATE VIEW vw_order_aggregates AS
SELECT
  order_placement_date,
  customer_id,
  COUNT(*) AS total_orders,
  SUM(on_time) AS on_time_orders,
  SUM(in_full) AS in_full_orders,
  SUM(otif) AS otif_orders
FROM fact_orders_aggregate
GROUP BY order_placement_date, customer_id;