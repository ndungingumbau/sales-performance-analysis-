# sales-performance-analysis-
SQL-only project analyzing sales and customer data to generate KPIs such as monthly revenue, customer lifetime value, and top customers. Demonstrates data validation, aggregations, joins, and SQL Server–compatible queries.

## 📖 Overview
This project demonstrates **practical SQL skills** by analyzing a transactional sales database to generate meaningful business insights.  
All analysis is performed **exclusively using SQL**, with queries written to be **SQL Server–compatible**.

The project focuses on data validation, aggregation, and KPI generation commonly required in junior data analyst roles.

## 🎯 Project Objectives
- Validate and clean transactional data  
- Analyze sales performance and customer behavior  
- Generate key performance indicators (KPIs) for reporting  
- Demonstrate strong SQL fundamentals using real-world queries

- ## 🛠 Tools & Technologies
- **SQL (Microsoft SQL Server)**
- Relational database design
- Aggregations, joins, CTE-ready queries

## 🗂 Database Schema

### Tables Used
- **customers**  
  - customer_id, name, country, signup_date

- **products**  
  - product_id, product_name, category

- **orders**  
  - order_id, customer_id, order_date, total_amount

- **order_items**  
  - order_item_id, order_id, product_id, quantity, price
 
## 🔍 Key SQL Tasks Performed

### 1️⃣ Data Validation & Integrity Checks
- Identified duplicate customer records  
- Checked for NULL values in key fields  
- Ensured valid relationships between customers, orders, and products  

### 2️⃣ Sales Performance Analysis
- Monthly revenue trends  
- Average order value (AOV)  
- Revenue by product category  

### 3️⃣ Customer Analysis
- Customer lifetime value (CLV)  
- Top customers by total spend  
- Country-level customer insights  

### 4️⃣ Query Optimization & Best Practices
- Used optimized `JOIN` operations  
- Grouped data using `GROUP BY` and aggregate functions  
- Wrote SQL Server–safe date and limit logic

## 📊 KPIs Generated
- Monthly Revenue  
- Average Order Value  
- Total Orders  
- Total Customers  
- Customer Lifetime Value  
- Top 5 Customers by Revenue



