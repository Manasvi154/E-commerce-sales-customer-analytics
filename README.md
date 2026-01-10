# E-Commerce Sales & Customer Analytics (SQL)

## Project Overview
This project focuses on analyzing an e-commerce dataset using **SQL** to derive insights related to sales performance, customer behavior, seller contribution, and time-based trends. The objective was to design a relational database, handle real-world data challenges, and perform analytical queries for business decision-making.

---

## Tools & Technologies
- SQL  
- MySQL  
- MySQL Workbench  

---

## Dataset
- Source: Kaggle E-commerce Dataset  
- Size: ~100K+ records  
- Entities: Customers, Orders, Products, Sellers, Order Items, Payments

---

## Database Design
- Designed a normalized relational schema with primary and foreign key constraints
- Tables include:
  - customers
  - orders
  - products
  - sellers
  - order_items
  - payments
- Ensured referential integrity across all tables

---

## Key SQL Analyses Performed
- Revenue analysis by product category and seller
- Monthly and yearly sales trends
- Cumulative and year-over-year growth analysis
- Customer behavior analysis (repeat purchases, average basket size)
- Ranking top customers and sellers using window functions
- Payment behavior analysis (installments vs single payments)

---

## Skills Demonstrated
- Complex JOIN operations
- Aggregations and subqueries
- Common Table Expressions (CTEs)
- Window functions (RANK, DENSE_RANK, LAG, moving averages)
- Time-based analysis using date functions
- Handling large datasets and data integrity challenges

---

## Project Structure
├── 01_schema.sql -- Database schema (CREATE TABLE statements)
├── 03_queries.sql -- Analytical SQL queries
├── README.md

---

## How to Use
1. Execute `01_schema.sql` to create the database schema  
2. Import dataset CSV files into respective tables  
3. Run queries from `03_queries.sql` to perform analysis  

