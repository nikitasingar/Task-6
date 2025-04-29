TASK 6: Sales Trend Analysis Using Aggregations
🧩 Objective:
To analyze monthly revenue and order volume using SQL aggregation functions and time-based grouping.

🛠️ Tools Used:
SQL (PostgreSQL / MySQL / SQLite)

📂 Dataset:
Table Name: online_sales
Columns:

order_id (INT): Unique identifier for each order

order_date (DATE): Date when the order was placed

amount (DECIMAL): Amount spent on the order

product_id (INT): Product associated with the order

Step-by-Step Tasks:
1. Create the Table
2. CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
2. Insert Sample Data
3. INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 250.00, 101),
(2, '2023-01-20', 300.00, 102),
(3, '2023-02-05', 450.00, 103),
(4, '2023-02-18', 150.00, 104),
(5, '2023-03-10', 200.00, 101),
(6, '2023-03-11', 220.00, 105),
(7, '2023-03-15', 180.00, 106),
(8, '2023-04-01', 500.00, 107),
(9, '2023-04-12', 350.00, 108),
(10, '2023-04-18', 400.00, 102);
3. Monthly Sales Trend Analysis Query
4. SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;
Output Sample:
| year | month | total_revenue | order_volume |
|------|-------|----------------|---------------|
| 2023 | 1     | 550.00         | 2             |
| 2023 | 2     | 600.00         | 2             |
| 2023 | 3     | 600.00         | 3             |
| 2023 | 4     | 1250.00        | 3             |
🎯 Learning Outcome:
Use of EXTRACT() function for time-based analysis

Grouping data by month/year

Using SUM() and COUNT(DISTINCT) for aggregation

Sorting trends chronologically using ORDER BY
