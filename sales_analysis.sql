-- Sales Data Analysis 

-- 1. Total company revenue
SELECT SUM(sales_amount) AS total_revenue
FROM sales;

-- 2. Top 10 products generating highest revenue
SELECT product_name, SUM(sales_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- 3. Revenue by region
SELECT region, SUM(sales_amount) AS regional_revenue
FROM sales
GROUP BY region
ORDER BY regional_revenue DESC;

-- 4. Monthly sales trend
SELECT YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY year, month
ORDER BY year, month;

-- 5. Top customers by spending
SELECT customer_id, SUM(sales_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 6. Average order value
SELECT AVG(sales_amount) AS avg_order_value
FROM sales;
