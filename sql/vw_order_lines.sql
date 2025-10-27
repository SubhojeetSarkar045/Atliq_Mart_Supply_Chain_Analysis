-- View: vw_order_lines
-- Cleans and standardizes the order line-level. 

USE atliq_db;

DROP VIEW IF EXISTS vw_order_lines;

CREATE VIEW vw_order_lines AS
SELECT
  order_id,
  customer_id,
  product_id,
  COALESCE(order_qty,0) AS order_qty,
  COALESCE(delivery_qty,0) AS delivery_qty,
  DATE(agreed_delivery_date) AS agreed_delivery_date,
  DATE(actual_delivery_date) AS actual_delivery_date,
  DATE(order_placement_date) AS order_placement_date
FROM fact_order_lines;