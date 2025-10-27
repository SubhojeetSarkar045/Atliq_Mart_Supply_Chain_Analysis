-- View: vw_line_aggregates
-- Aggregates order line date data to compute fill rate metrics. 

USE atliq_db;

DROP VIEW IF EXISTS vw_line_aggregates;

CREATE VIEW vw_line_aggregates AS
SELECT
  order_placement_date,
  customer_id,
  product_id,
  COUNT(*) AS total_order_lines,
  SUM(CASE WHEN delivery_qty >= order_qty THEN 1 ELSE 0 END) AS lines_fulfilled_in_full,
  SUM(order_qty) AS total_order_qty,
  SUM(delivery_qty) AS total_delivery_qty
FROM vw_order_lines
GROUP BY order_placement_date, customer_id, product_id;