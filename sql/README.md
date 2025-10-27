This folder contains all SQL scripts used to create, clean, and transform the AtliQ Mart dataset before importing it into Power BI.  
The purpose is to make the project **transparent, reproducible, and technically verifiable** for anyone who wants to rebuild or review the data model.

Although data cleaning was done in Power BI Power Query, I have also created SQL CREATE VIEW scripts for reproducibility.
These can be executed after importing CSVs into MySQL to replicate the same transformations.

---

## 📂 Folder Structure

| File Name | Description |
|------------|-------------|
| `create_database.sql` | Creates the `atliq_mart` database and necessary tables. |
| `vw_order_aggregates.sql` | Contains SQL views to calculate Total Orders, OT%, IF%, OTIF%, etc. |
| `vw_order_lines.sql` | SQL views for Line Fill Rate (LIFR%) and Volume Fill Rate (VOFR%). |
| `vw_line_aggregates.sql` | SQL views for On-Time, In-Full, and OTIF Target percentages. |
| `vw_daily_metrics.sql` | SQL views for On-Time, In-Full, and OTIF Target percentages. |
| `....._kpi_queries.sql` | Final queries to compute the KPI values used in the dashboard. |

---

## 🧠 How to Use These Files

1. **Open MySQL Workbench** or your preferred SQL editor.  
2. Run the scripts in this order:
   1. `create_database.sql`
   2. `vw_order_aggregates.sql`
   3. `vw_order_lines.sql`
   4. `vw_line_aggregates.sql`
   5. `vw_daily_metrics.sql`
   6. `kpi_queries.sql`
3. Verify the output using:
   ```sql
   SELECT * FROM vw_order_aggregates;

---

## 📋 Prerequisites

1. Install MySQL (8.0 or higher) and create a database:
   ```sql
   CREATE DATABASE atliq_db;
   USE atliq_db;

---

## Import CSVs to SQL

Before executing, import all raw `.csv` files (datasets) into your SQL environment (MySQL, PostgreSQL, or SQLite).
Ensure table names match those referenced in the scripts.

https://github.com/SubhojeetSarkar045/Atliq_Mart_Supply_Chain_Analysis/edit/main/data

---

## Notes

Views and queries follow consistent naming conventions:
1. `vw_` prefix → for views
2. `_kpi` suffix → for KPI metrics

--- 

Authored by Subhojeet Sarkar |
Project: AtliQ Mart Supply Chain Analysis (Power BI + SQL + DAX)








