create database if not exists 
retail_sales_db;
SELECT 
    `sql - retail sales analysis_utf  (1)`.`ï»¿transactions_id`,
    `sql - retail sales analysis_utf  (1)`.`sale_time`,
    `sql - retail sales analysis_utf  (1)`.`customer_id`,
    `sql - retail sales analysis_utf  (1)`.`gender`,
    `sql - retail sales analysis_utf  (1)`.`age`,
    `sql - retail sales analysis_utf  (1)`.`category`,
    `sql - retail sales analysis_utf  (1)`.`quantiy`,
    `sql - retail sales analysis_utf  (1)`.`price_per_unit`,
    `sql - retail sales analysis_utf  (1)`.`cogs`,
    `sql - retail sales analysis_utf  (1)`.`total_sale`
FROM `retail_sales_db`.`sql - retail sales analysis_utf  (1)`;

use retail_sales_db; 
SHOW TABLES;

select *
FROM  customers
LIMIT 200;

ALTER TABLE `sql - retail sales analysis_utf  (1)`
RENAME COLUMN `ï»¿transactions_id` TO Transaction_ID ;

RENAME TABLE `sql - retail sales analysis_utf  (1)` TO customers;

-- 1)Sales made on 2022-11-05
SELECT *
FROM customers
WHERE sale_date = '2022-11-05';

-- 2)Clothing transactions in November and quqntiy is greater then or equal to 4
SELECT *
FROM customers
WHERE category = 'Clothing'
  AND sale_date >= '2022-11-01'
  AND sale_date < '2022-12-01'
  AND quantiy >= 4;
  
 -- 3)Total sales for each category
  SELECT
    category,
    SUM(total_sale) AS net_sales,
    COUNT(*) AS total_orders
FROM customers
GROUP BY category;

-- 4) Average age of Beauty customers
SELECT
    AVG(age) AS average_age
FROM customers
WHERE category = 'Beauty';

-- 5) Transactions where total sales > 100
SELECT *
FROM customers
WHERE total_sale > 100;

-- 6)Transactions by gender and category
SELECT
    category,
    gender,
    COUNT(*) AS total_transactions
FROM customers
GROUP BY category, gender;

-- 7)Average sales by month and best month
SELECT
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    AVG(total_sale) AS avg_sale,
    RANK() OVER (
        PARTITION BY EXTRACT(YEAR FROM sale_date)
        ORDER BY AVG(total_sale) DESC
    ) AS sale_rank
FROM customers
GROUP BY 1, 2;

-- 8)Top 5 customers by total sales
SELECT
    customer_id,
    SUM(total_sale) AS total_sales
FROM customers
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

-- 9)Unique customers in each category
SELECT
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM customers
GROUP BY category;

-- 10)Morning, Afternoon and Evening shifts
WITH hourly_sale AS (
    SELECT *,
        CASE
            WHEN EXTRACT(HOUR FROM sale_time) < 12
                THEN 'Morning'
            WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17
                THEN 'Afternoon'
            ELSE 'Evening'
        END AS shift
    FROM customers
)
SELECT
    shift,
    COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;
