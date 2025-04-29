create database task6;
use task6;
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
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

SELECT
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

