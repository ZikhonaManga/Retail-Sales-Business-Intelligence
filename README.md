# Retail Sales & Business Intelligence Analysis

## Project Overview

This project focuses on analysing retail sales data to identify business trends, evaluate profitability, and generate insights that can support data-driven decision-making.

Using SQL, Microsoft Excel, and Power BI, I performed data cleaning, exploratory analysis, business performance analysis, and dashboard development.

The project uses the Sample Superstore dataset, which contains fictional retail transaction data.

## Objectives

- Analyse overall sales and profitability.
- Identify the best-performing product categories.
- Compare sales and profit across geographical regions.
- Evaluate customer segment performance.
- Identify products with low or negative profitability.
- Develop an interactive dashboard to communicate findings.

## Tools & Technologies

- **MySQL:** Data cleaning, querying, and business analysis.
- **Microsoft Excel:** PivotTables, PivotCharts, and business insights.
- **Power BI:** Interactive dashboard and data visualisation.

## Dataset

The dataset contains 9,994 original records and 9 columns:

- Order Date
- Region
- State
- Category
- Sub-Category
- Segment
- Sales
- Profit
- Quantity

After removing exact duplicate records, the cleaned dataset contained 9,992 records.

## Data Cleaning (MySQL)

The following activities were performed:

- Imported the original CSV dataset into MySQL.
- Examined the dataset structure and columns.
- Checked for missing values.
- Identified duplicate records.
- Removed exact duplicate records using `SELECT DISTINCT`.
- Created a separate cleaned table while preserving the original dataset.

## Exploratory Data Analysis

SQL queries were used to investigate:

- Overall sales, profit, and quantity.
- Sales and profit by product category.
- Regional sales and profitability.
- Product sub-category performance.
- Customer segment performance.

## Key Business Insights

### 1. Overall Performance

- Total Sales: $2,296,914.56
- Total Profit: $286,408.34
- Total Quantity Sold: 37,869

### 2. Product Category Performance

Technology generated the highest sales ($836,154.03) and profit ($145,454.95).

Furniture generated $741,713.50 in sales but only $18,462.59 in profit, indicating relatively weak profitability.

### 3. Regional Performance

The West region recorded the highest sales ($725,457.82) and profit ($108,418.45).

The Central region generated higher sales than the South region but lower profit.

### 4. Customer Segment Performance

The Consumer segment was the largest customer segment, generating:

- Sales: $1,161,401.34
- Profit: $134,119.21

Corporate was the second-largest segment, followed by Home Office.

### 5. Sub-Category Profitability

Tables and Bookcases recorded negative profits:

- Tables: -$17,725
- Bookcases: -$3,473

These results highlight areas where profitability could be investigated further.

## Excel Analysis

Microsoft Excel was used to create:

- PivotTables for product category performance.
- Regional sales and profit comparisons.
- Customer segment analysis.
- PivotCharts to visualise business performance.
- A Key Insights worksheet summarising findings.

## Power BI Dashboard

An interactive dashboard was developed to present the main business performance indicators.

The dashboard includes:

- Total Sales KPI.
- Total Profit KPI.
- Total Quantity KPI.
- Sales by Product Category.
- Profit by Region.
- Sales by Region.
- Sales by Customer Segment.

## Project Structure

```text
Retail-Sales-Business-Intelligence/
│
├── data/
│   └── superstore_sales_clean.csv
│
├── sql/
│   ├── retail_sales_data_cleaning.sql
│   └── retail_sales_analysis.sql
│
├──
