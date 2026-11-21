USE retail_sales;

SELECT COUNT(*) AS cleaned_records
FROM superstore_sales_clean;

SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity_sold
FROM superstore_sales_clean;

SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore_sales_clean
GROUP BY Category
ORDER BY total_sales DESC;

SELECT
    Region,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore_sales_clean
GROUP BY Region
ORDER BY total_sales DESC;

SELECT
    `Sub-Category`,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore_sales_clean
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;

SELECT
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales_clean
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales_clean
GROUP BY Segment
ORDER BY total_sales DESC;
