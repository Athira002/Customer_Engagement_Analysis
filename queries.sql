-- =========================================
-- Customer Engagement & Retention Analysis
-- Dataset: Olist Brazilian E-commerce
-- =========================================

-- 1. Monthly Orders & Unique Customers
SELECT DATE_TRUNC('month', order_purchase_timestamp) AS month,
       COUNT(DISTINCT customer_id) AS unique_customers,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- 2. Orders per Product Category
SELECT p.product_category_name_english AS category,
       COUNT(oi.order_id) AS total_orders,
       SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY category
ORDER BY total_orders DESC;

-- 3. Repeat Purchase Count per Customer
SELECT customer_id,
       COUNT(order_id) AS total_orders,
       MIN(order_purchase_timestamp) AS first_order,
       MAX(order_purchase_timestamp) AS last_order
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;

-- 4. Cohort Analysis: Retention by Month
WITH first_order AS (
    SELECT customer_id,
           MIN(DATE_TRUNC('month', order_purchase_timestamp)) AS cohort_month
    FROM orders
    GROUP BY customer_id
)
SELECT f.cohort_month,
       DATE_TRUNC('month', o.order_purchase_timestamp) AS order_month,
       COUNT(DISTINCT o.customer_id) AS active_customers
FROM orders o
JOIN first_order f ON o.customer_id = f.customer_id
GROUP BY f.cohort_month, order_month
ORDER BY f.cohort_month, order_month;

-- 5. Average Items per Order
SELECT AVG(item_count) AS avg_items_per_order
FROM (
    SELECT order_id, COUNT(*) AS item_count
    FROM order_items
    GROUP BY order_id
) AS sub;

-- 6. Average Delivery Days per State
SELECT c.customer_state,
       AVG(EXTRACT(DAY FROM (order_delivered_customer_date - order_purchase_timestamp))) AS avg_delivery_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_days DESC;

-- 7. Top 10 Customers by Revenue
SELECT o.customer_id,
       SUM(oi.price) AS total_spent
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 8. Orders by Order Status
SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;
