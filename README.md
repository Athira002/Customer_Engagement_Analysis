# Customer Engagement & Retention Analysis

## Project Overview
Analyzed the Brazilian E-commerce (Olist) dataset to understand customer behavior, retention, and engagement patterns using **SQL and Power BI**. This project demonstrates insights that can help improve customer engagement, retention, and revenue.

## Dataset
[Olist E-commerce Kaggle Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?resource=download)

## Problem Statements
1. Which product categories bring the most engaged customers?
2. How does customer retention vary by cohort month?
3. What are the patterns in repeat purchases and revenue?
4. Recommendations for improving customer engagement and retention.

## Methodology
- Data loaded into **PostgreSQL**.
- SQL queries executed for:
  - Customer acquisition
  - Repeat purchase & retention
  - Product revenue analysis
  - Delivery and engagement metrics
- **Visualizations** built in Power BI:
  - Line chart for monthly orders & customers
  - Bar chart for orders by category
  - Cohort analysis heatmap for retention
  - Map of delivery performance by state
  - Top customers table

## Key Insights
### 1. Orders per Product Category

- Bed, Bath & Table is the most popular category with 11,115 orders, showing strong demand for household essentials.

- Indicates that home-related goods are a major driver of sales in the Brazilian e-commerce market.

### 2. Cohort Analysis – Retention by Month

- Retention steadily grew from late 2016 to mid-2018, peaking around 2017–2018 with 7k+ retained customers per month.

- Suggests Olist experienced rapid customer acquisition and repeat purchases in that period.

- Drop after Sept 2018 (only 16 retained) likely due to data coverage ending, not business decline.

### 3. Average Items per Order

- Each order contained ~1.14 items on average, meaning most customers bought a single product per transaction.

- Upselling/cross-selling strategies could increase cart size and overall revenue.

### 4. Average Delivery Days by State

- Remote northern states (RR, AP, AM) had delivery times 25–29 days on average, far higher than the national average.

- São Paulo (SP) had the fastest deliveries (8.3 days), showing strong logistics infrastructure.

- Opportunity: Optimize logistics for remote states to improve customer satisfaction and retention.

### 5. Top 10 Customers by Revenue

- The highest-spending customer generated BRL 13,440 in revenue.

- Top 10 customers contributed significantly, highlighting the importance of high-value repeat buyers.

- Indicates potential for a loyalty program or personalized offers to retain such customers.

### 6. Orders by Order Status

- Over 96% of orders were delivered successfully (96,478 orders).

- Cancellations and unavailability were relatively small (~1,200 combined), showing operational reliability.

- However, ~600 “unavailable” cases suggest inventory management could still be improved.

## Files
- `SQL/queries.sql` → All SQL queries
- `Dashboards/dashboard.pbix` → Power BI dashboard file
- `Images/` → Visual snapshots
