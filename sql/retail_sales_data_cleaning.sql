-- Select database
USE retail_sales;

-- Count records
SELECT COUNT(*)
FROM superstore_sales;

-- View first 10 records
SELECT *
FROM superstore_sales
LIMIT 10;

-- Inspect table structure
DESCRIBE superstore_sales;

SELECT
    COUNT(*) AS total_records,
    SUM(`Order Date` IS NULL) AS missing_order_dates,
    SUM(Region IS NULL) AS missing_regions,
    SUM(State IS NULL) AS missing_states,
    SUM(Category IS NULL) AS missing_categories,
    SUM(Sales IS NULL) AS missing_sales,
    SUM(Profit IS NULL) AS missing_profit
FROM superstore_sales;

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT
        `Order Date`, Region, State, Category,
        `Sub-Category`, Segment, Sales, Profit, Quantity
    ) AS unique_records
FROM superstore_sales;

SELECT
    `Order Date`,
    Region,
    State,
    Category,
    `Sub-Category`,
    Segment,
    Sales,
    Profit,
    Quantity,
    COUNT(*) AS occurrences
FROM superstore_sales
GROUP BY
    `Order Date`,
    Region,
    State,
    Category,
    `Sub-Category`,
    Segment,
    Sales,
    Profit,
    Quantity
HAVING COUNT(*) > 1;

CREATE TABLE superstore_sales_clean AS
SELECT DISTINCT *
FROM superstore_sales;

SELECT COUNT(*) AS cleaned_records
FROM superstore_sales_clean;

SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity_sold
FROM superstore_sales_clean;