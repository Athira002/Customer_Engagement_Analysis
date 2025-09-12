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
- Electronics category drives highest revenue → prioritize promotions.
- 20% of customers place repeat purchases within 3 months → launch loyalty campaigns.
- Delivery delays in certain states → optimize logistics.
- Avg items per order: 1.8 → consider bundle offers to increase cart size.

## Files
- `SQL/queries.sql` → All SQL queries
- `Dashboards/dashboard.pbix` → Power BI dashboard file
- `Images/` → Visual snapshots (charts, cohort heatmap, etc.)
