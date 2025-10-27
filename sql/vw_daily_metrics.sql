-- View: vw_daily_metrics
-- Combines customer, date, and performance data for analysis in Power BI.

USE atliq_db;

DROP VIEW IF EXISTS vw_daily_metrics;

CREATE VIEW vw_daily_metrics AS
SELECT
  d.ï»¿date AS date,
  d.mmm_yy,
  d.week_no,
  c.city,
  c.customer_id,
  c.customer_name,
  COALESCE(oa.total_orders,0) AS total_orders,
  COALESCE(oa.on_time_orders,0) AS on_time_orders,
  COALESCE(oa.in_full_orders,0) AS in_full_orders,
  COALESCE(oa.otif_orders,0) AS otif_orders,
  COALESCE(la.total_order_lines,0) AS total_order_lines,
  COALESCE(la.lines_fulfilled_in_full,0) AS lines_fulfilled_in_full,
  COALESCE(la.total_order_qty,0) AS total_order_qty,
  COALESCE(la.total_delivery_qty,0) AS total_delivery_qty
FROM dim_date d
CROSS JOIN dim_customers c
LEFT JOIN vw_order_aggregates oa ON oa.order_placement_date = d.ï»¿date AND oa.customer_id = c.customer_id
LEFT JOIN vw_line_aggregates la ON la.order_placement_date = d.ï»¿date AND la.customer_id = c.customer_id;
