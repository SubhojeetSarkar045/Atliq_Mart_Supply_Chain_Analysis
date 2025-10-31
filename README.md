# 🚚 AtliQ Mart Supply Chain Analysis Dashboard (Power BI + SQL)

### 📊 End-to-End Data Analytics Project | Power BI | MySQL | Excel | FMCG Domain

---

## 🧩 Project Overview

**Objective:**
AtliQ Mart, a fast-growing FMCG manufacturer in Gujarat, is facing **supply chain inefficiencies** that led to **contract non-renewals by key customers**.
The company suspects late or incomplete deliveries as the root cause and wants to track delivery performance metrics like **On Time (OT%)**, **In Full (IF%)**, and **On Time In Full (OTIF%)** to identify service-level gaps and improve customer satisfaction before expanding into Tier 1 cities.

**Goal:**
Develop a **data-driven dashboard** to:

* Track daily customer service levels across all cities.
* Analyze **delivery performance vs. target**.
* Generate actionable insights to improve **supply chain reliability**.

---

## 🧠 Problem Statement

> “How efficiently is AtliQ Mart managing its supply chain — are orders being delivered on time, in full, and as per customer expectations?”

The key challenge is to measure and monitor:

* **Delivery punctuality (On Time %)**
* **Delivery completeness (In Full %)**
* **Combined reliability (OTIF %)**

...and use this data to identify which customers, cities, or products cause the most issues.

---

## 🗂️ Dataset & Source

Dataset inspired by **Codebasics Resume Challenge #2** — FMCG Supply Chain.

| File                        | Description                             |
| --------------------------- | --------------------------------------- |
| `dim_customers.csv`         | Customer details (city, name, ID)       |
| `dim_products.csv`          | Product details (category, ID, name)    |
| `dim_date.csv`              | Date-level details (date, month, week)  |
| `dim_targets_orders.csv`    | Service-level targets for each customer |
| `fact_order_lines.csv`      | Product-wise order and delivery details |
| `fact_orders_aggregate.csv` | Aggregated On-Time/In-Full metrics      |

---

## 🧮 Tools & Technologies Used

| Tool         | Purpose                                                        |
| ------------ | -------------------------------------------------------------- |
| **Power BI** | Data cleaning (Power Query), Data modeling, Dashboard creation |
| **MySQL**    | KPI validation, SQL query-based data exploration               |
| **Excel**    | Initial data exploration & validation                          |
| **GitHub**   | Version control & documentation                                |
| **Canva**    | Presentation for Insights & Key Findings                       |

---

## ⚙️ Data Modeling

* Created **Star Schema** model connecting fact and dimension tables.
* Key relationships:

  * `customer_id` → links customer & target tables
  * `product_id` → links product details
  * `date` → links with fact tables for trend analysis
 
https://github.com/SubhojeetSarkar045/Atliq_Mart_Supply_Chain_Analysis/blob/main/powerbi/screenshot/Model%20View.png

---

## 📐 Key Measures (DAX & SQL)

### DAX Measures:

* `Total Orders`
* `On Time % (OT%)`
* `In Full % (IF%)`
* `On Time In Full % (OTIF%)`
* `Line Fill Rate (LIFR%)`
* `Volume Fill Rate (VOFR%)`
* `Customer Order Cycle Time`
* `Average Delay in Cycle Time`
...and many more.

### SQL KPIs (Validated in MySQL):

* `Total Orders`
* `OTIF Orders`
* `OT Orders`
* `IF Orders`
* `Total Ordered Quantity`
* `OTIF%`, `OT%`, `IF%`
* `LIFR%`, `VOFR%`
* `Customer Order Cycle Time (COCT)`
* `Average Delay in COCT`
...and many more.

For detailed SQL queries → [SQL Folder](./sql)

---

## 📊 Dashboard Preview

**Power BI Dashboard Highlights:**

* KPI Cards: Total Orders, OT%, IF%, OTIF%, Average Delay, Cycle Time
* Trends: Performance vs. Target over months
* Product Insights: Top delayed & delivered SKUs
* Customer Performance: Service levels vs. target
* City Comparison: OTIF%, OT%, IF% across Surat, Vadodara, and Ahmedabad

---

## 🔍 Business Insights

| Area                    | Key Finding                                                                                             |
| ----------------------- | ------------------------------------------------------------------------------------------------------- |
| **Overall Performance** | All key service-level metrics (OT%, IF%, OTIF%) are **below target** by 25–35%.                         |
| **Customer-Level**      | Lotus Mart & Acclaimed Stores show **worst service reliability**, with OTIF% < 20%.                     |
| **Product-Level**       | Dairy products like Ghee and Curd are **frequently delayed**, while Biscuits 750 has **highest LIFR%**. |
| **City-Level**          | Vadodara has the **lowest OTIF%**, indicating warehouse or delivery inefficiencies.                     |
| **Time Trend**          | No month reached target; May had highest deliveries, August lowest.                                     |

---

## 💡 Recommendations

| Action Area                 | Recommendation                           | Expected Outcome         |
| --------------------------- | ---------------------------------------- | ------------------------ |
| **Delivery Planning**       | Improve delivery scheduling & routing    | +15% OT% improvement     |
| **Inventory Management**    | Buffer stocks for top 5 delayed SKUs     | +10% IF% improvement     |
| **Customer Prioritization** | Dedicated service focus on top 6 clients | Reduce churn             |
| **Monitoring**              | Real-time OTIF tracking dashboard        | Faster corrective action |
| **Forecasting**             | Demand prediction for seasonal surges    | Fewer stock-outs         |

---

## 🎯 Key Learnings

* Hands-on experience with **data modeling & DAX** in Power BI
* Integration of **SQL + Power BI** workflow
* Application of **FMCG supply chain concepts** (OTIF, LIFR, VOFR)
* Improved business storytelling using data visualizations

---

## 📽️ Demo Video

🎥 Watch the dashboard walkthrough (2–3 min):
[Video Link or YouTube Upload Placeholder]

🎥 Watch the full presenation video (8–10 min):
[Video Link or YouTube Upload Placeholder]

---

## 👨‍💻 About Me

* **Author:** Subhojeet Sarkar
* **Background:** B.Com (Hons), aspiring Data Analyst
* **Tools:** Power BI, MySQL, Excel
* **Goal:** Building real-world business analytics projects to transition into Data Analyst roles in MNCs.
* **Connect with me on [LinkedIn](https://www.linkedin.com/in/itssubhojeetsarkar)**

---

## ⭐ License

This project is for **learning and portfolio purposes only**.
All data used here is **mock data from Codebasics** and does not represent any real company.

---

### 💬 “Analytics is not just about dashboards — it’s about driving better business decisions.”
