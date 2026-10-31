# sql_cloth_sales_p
#  Retail Sales Analysis using SQL

## Project Overview

This project focuses on analyzing retail sales data using **MySQL** to gain meaningful business insights. The analysis explores customer purchasing behavior, sales performance, product categories, and transaction trends.

The main objective is to use SQL queries to extract useful information that can help businesses understand their sales performance and make data-driven decisions.

##  Project Objectives

- Analyze retail sales performance across different product categories.
- Identify customer purchasing patterns.
- Understand sales trends by date and month.
- Analyze customer demographics, including age and gender.
- Identify top customers based on total sales.
- Evaluate sales performance across different time shifts.

##  Dataset Description

The dataset contains retail transaction records with the following columns:

| Column | Description |
|---|---|
| `transactions_id` | Unique ID for each transaction |
| `sale_date` | Date of the transaction |
| `sale_time` | Time of the transaction |
| `customer_id` | Unique ID of the customer |
| `gender` | Gender of the customer |
| `age` | Age of the customer |
| `category` | Product category |
| `quantity` | Number of items purchased |
| `price_per_unit` | Price of each item |
| `cogs` | Cost of goods sold |
| `total_sale` | Total transaction amount |

##  Tools & Technologies

- **Database:** MySQL
- **SQL Concepts:** Filtering, Aggregation, Grouping, Sorting, Joins, CTEs, Window Functions
- **IDE:** MySQL Workbench
- **Version Control:** Git & GitHub

##  Business Questions Answered

This project answers the following business questions using SQL:

1. Retrieve all sales made on November 5, 2022.
2. Find clothing transactions made in November with a quantity greater than or equal to 4.
3. Calculate total sales and number of orders for each product category.
4. Find the average age of customers purchasing Beauty products.
5. Retrieve transactions where total sales are greater than 100.
6. Analyze the number of transactions by gender and product category.
7. Calculate average sales by month and rank the best-performing months.
8. Identify the top 5 customers based on total sales.
9. Calculate the number of unique customers in each product category.
10. Analyze transactions across Morning, Afternoon, and Evening shifts.

##  Key SQL Concepts Demonstrated

| SQL Concept | Application |
|---|---|
| `SELECT` | Retrieve relevant data |
| `WHERE` | Filter transactions |
| `GROUP BY` | Group sales by category, gender, and month |
| `SUM()` | Calculate total sales |
| `AVG()` | Calculate average sales and customer age |
| `COUNT()` | Count transactions |
| `COUNT(DISTINCT)` | Count unique customers |
| `ORDER BY` | Sort sales results |
| `LIMIT` | Retrieve top 5 customers |
| `CASE` | Categorize transactions by time shift |
| `CTE` | Organize complex queries |
| `RANK()` | Rank monthly sales performance |

##  How to Run the Project

### Step 1: Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/retail-sales-analysis.git
```

### Step 2: Open MySQL Workbench

Open MySQL Workbench and connect to your MySQL server.

### Step 3: Create the database

```sql
CREATE DATABASE IF NOT EXISTS retail_sales_db;

USE retail_sales_db;
```

### Step 4: Import the dataset

Import the retail sales CSV file into MySQL Workbench and ensure the table and column names match those used in the SQL queries.

### Step 5: Execute the SQL queries

Open the SQL script and execute the queries to perform the retail sales analysis.

##  Project Outcomes

Through this project, I practiced:

- Writing SQL queries to solve real-world business problems.
- Performing data aggregation and analysis.
- Working with date and time functions.
- Using window functions for ranking.
- Analyzing customer behavior and sales trends.
- Organizing SQL code for a data analytics project.

##  Repository Structure

```text
retail-sales-analysis/
│
├── README.md
├── retail_sales_analysis.sql
└── retail_sales.csv
```

##  Author

**B JITHENDRA NAIK**

Aspiring Data Analyst | SQL | MySQL | Data Analytics

 This project was created as part of my SQL and data analytics learning journey.


 If you find this project useful, feel free to star the repository!

