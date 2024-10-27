# Sales Performance Analysis for a Retail Store

## 1 Introduction
This project analyzes retail sales performance, focusing on top-selling products, regional performance, and monthly sales trends. The objective is to build an interactive Power BI dashboard to present these findings, providing actionable insights to enhance sales strategies.

## Table of Contents
- [Project Objectives](#project-objectives)
- [Tools Used](#tools-used)
- [Dataset](#dataset)
- [Google Sheets Analysis](#google-sheets-analysis)
- [SQL Queries Analysis](#sql-queries-analysis)
- [Power BI Dashboard](#power-bi-dashboard)
- [Insights](#insights)
- [Conclusion](#conclusion)

## 1.1 Project Objectives

- Identify top-selling products and underperforming items.
- Evaluate regional sales performance.
- Understand monthly sales fluctuations and trends.
- Provide actionable insights for data-driven decision-making.

## 1.2 Tools Used
- **Google Sheets**: Data exploration, pivot tables, and basic summary analysis.
- **PostgreSQL**: Query the dataset for more detailed analysis and insights.
- **Power BI**: Create an interactive dashboard to visualize key metrics and trends.

## 1.3 Dataset
You can download the sales dataset here - [Download the Sales Data Dataset](https://docs.google.com/spreadsheets/d/1uX7hdUgaS2KxBFbtkl-cvrYSC24ZxpggIzeDtGaa34w/edit?usp=sharing).





---
## Google Sheets Analysis
### 1 Objective
The analysis focused on understanding product performance, regional sales, monthly sales trends, average sales per product, and average sales per region.

### 2 Methodology
-   Loaded the sales data into Google Sheets and ensured all necessary columns were included, duplicate were removed, and the columns were properly formated and cleaned. 
-   Created pivot tables to summarize total sales by product, region, and monthly trends.
-   Applied formulas (e.g., AVERAGEIF) to calculate average sales per product and region.
-   Visualized findings using bar, pie, and line charts.
  
### 3 Key Reports

#### 3.1 Total Sales by Product

![Total Sales by Product](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Sales%20%25%20by%20Product%20-%20Chart.png?raw=true)

This report summarizes the total revenue generated by each product, helping to identify which products contribute the most to the company’s sales. 
- **Shoes** generated **$613,380** (**29.2%** of total revenue), the top-selling product.
- **Shirts** contributed **$485,600** (**23.1%**), the second highest.
- **Jackets** and **Socks** had the lowest sales, indicating potential areas for improvement.

#### 3.2 Sales by Region

![Sales Revenue by Region](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Sales%20by%20Region%20-%20Chart.png?raw=true)

This report outlines the revenue generated from each region, allowing us to understand which geographical areas are performing the best in terms of sales. 
- The **South** region generated **$927,820**, accounting for **44.15%** of sales.
- **East** and **North** contributed moderately, with **$485,925** and **$387,000**, respectively.
- **West** had the lowest sales at **$300,345**.

#### 3.3 Monthly Sales Trends

![Monthly Sales Trend](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Monthly%20Sales%20Trend%20-%20Chart.png?raw=true)

This metric analyzed the store's monthly sales trends throughout the year, helping to track how revenue fluctuated over time. 
- **February** had the highest sales, reaching **$546,300**.
- **April** and **September** were the lowest-performing months.

#### 3.4 Average Sales per Product

![Average Sales by Product](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Average%20Sales%20by%20Product%20-%20Chart.png?raw=true)

This metric calculates the average sales amount per transaction for each product, providing insights into how well each product performs on a per-sale basis. 
- **Shirts** had the highest average sales per transaction at **$326.56**, followed by **Shoes** at **$308.70**.
- **Socks** had the lowest average at **$121.82**.

#### 3.5 Average Sales by Region

![Average Sales by Region](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Average%20Sales%20by%20Region%20-%20Chart.png?raw=true)

This metric calculates the average sales amount per transaction for each region, providing insights into how well each region performs on a per-sale basis. 
- **South** has the highest average sales per transaction at **$374.12**.
- **West** had the lowest average sales at **$121.25**.

### 4 Data Sources
[View Google Sheets Document](https://docs.google.com/spreadsheets/d/1g9MBjXv4gTeMqMNstW35lRaWTOv_Q-_taJ1SeN9F0P8/edit?usp=sharing)





---
## SQL Queries Analysis
### 1 Objective
PostgreSQL was used to perform more advanced queries on the dataset, allowing us to extract insights that could not be easily calculated in Google Sheets.

### 2 Methodology
-  Loaded the sales dataset into PostgreSQL and conducted initial queries to explore its structure, ensuring all necessary columns were present.
-  Executed queries to calculate metrics such as top products, regional sales, and monthly totals.
-  Filtered and ranked data to identify trends, top customers, and underperforming areas.

### 3 Key Reports

#### 3.1 Total Units by Product
```
SELECT product, SUM(quantity) AS total_units_sales
FROM sales_data
GROUP BY product
ORDER BY total_units_sales DESC;
```

 - Identified the highest and lowest-selling products.
 - **Hat** is the top-selling product in terms of units sold, with a total of **15,929** units sold.
- **Shoes** is the second most sold product, with **14,402** units.
- **Shirt** and **Gloves** closely follow, with **12,388** units and **12,369** units, respectively.
- **Socks** and **Jacket** have the lowest sales, with **7,921** units and **5,452** units, respectively.


#### 3.2 Transaction Count by Region
```
SELECT region, COUNT(order_id) AS transaction_count
FROM sales_data
GROUP BY region;
```
- Showed geographic consistency in sales activity.
- The **East** region recorded the highest number of transactions, with **2,483** sales transactions.
- The **North** and **South** regions followed closely, with **2,481** and **2,480** transactions, respectively.
- The **West** region had slightly fewer transactions, with **2,477** sales.

#### 3.3 Top-Selling Product by Revenue
```
SELECT product, SUM(revenue) AS total_sales_value
FROM sales_data
GROUP BY product
ORDER BY total_sales_value DESC
LIMIT 1;
```
- The **Shoes** category generated the highest total sales value, with a revenue of **$613,380**.
  
#### 3.4 Total Revenue per Product
```
SELECT product, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product;
```
- **Shoes** generated the highest total revenue, bringing in **$613,380**.
- **Shirts** followed with total revenue of **$485,600**.
- **Hat** and **Gloves** generated **$316,195** and **$296,900**, respectively, making them mid-tier products in terms of revenue.
- **Socks** and **Jacket** had the lowest total revenue, with **$180,785** and **$208,230**, respectively.

#### 3.5 Monthly Sales Totals
```
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month, 
       SUM(revenue) AS monthly_total_sales
FROM sales_data
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;
```
- **February** had the highest sales, generating **$298,800**, followed by **January** with **$198,400**.
- **August 2024** also performed well with **$174,300** in sales.
- The lowest sales were recorded in **July ($37,200)** and **April ($39,440)**.

#### 3.6 Top 5 Customers
```
SELECT customer_id, SUM(revenue) AS total_purchase_amount
FROM sales_data
GROUP BY customer_id
ORDER BY total_purchase_amount DESC
LIMIT 5;
```
- Highlighted high-value customers.
- The **top 5 customers**—Cus1049, Cus1133, Cus1493, Cus1251, and Cus1257—all contributed the same total purchase amount of **$4,235**.

#### 3.7 Sales Percentage by Region
```
SELECT region, SUM(revenue) AS region_sales,
       (SUM(revenue) / (SELECT SUM(revenue) FROM sales_data) * 100) AS sales_percentage
FROM sales_data
GROUP BY region;
```
- The **South** region contributed the highest percentage of total sales, with **44.16%** of the overall revenue (**$927,820**).
- The **East** region followed with **23.13%** of total sales, generating **$485,925**.
- The **North** and **West** regions contributed **18.42%** (**$387,000**) and **14.29%** (**$300,345**) of total sales, respectively.

#### 3.8 Products with No Sales in the Last Quarter
```
SELECT DISTINCT product
FROM sales_data
WHERE product NOT IN (
    SELECT product
    FROM sales_data
    WHERE order_date >= DATE_TRUNC('quarter', CURRENT_DATE) - INTERVAL '3 months'
);
```
- Identified items needing intervention.
- The following products recorded no sales in the last quarter: **Socks**, **Gloves**, **Shirt**, **Jacket**.

### 4 SQL Scripts
[View SQL Scripts](LITA_Sales_Database_PostgreSQL.sql)





---
## Power BI Dashboard
### 1 Objectives
Create an interactive, visual summary of the analysis results.

### 2 Methodology
- Imported data from Google Sheets and PostgreSQL into Power BI.
- Cleaned and structured data with Power Query Editor.
- Designed visuals for trends, product performance, and regional sales.

### 3 Dashboard Design
- **Line Chart** for monthly sales trends.
- **Column Chart** for sales by product.
- **Donught Chart** for regional sales distribution.
- **Bar Chart** for average sales by product.

![Sales Performance Dashboard](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Sales%20Performance%20Overview%20Power%20BI%20Dashboard.png?raw=true)




---
## Analysis Results / Insights
#### 1 Product Performance:

- Shoes and Shirts are top sellers and key revenue drivers, while Jackets and Socks underperform.
- Focus marketing and inventory on high-demand products; investigate low-performance items.

#### 2 Regional Sales:

- The South region dominates sales, indicating a need to maintain this momentum.
- The West shows potential for growth through targeted strategies.

#### 3 Monthly Sales Trends:

- February and mid-year months show strong performance, likely due to seasonality or promotions.
- April and September need further analysis to address low performance.

#### 4 Average Sales Analysis:

- High transaction values in the South suggest a strong customer base; leverage this with targeted promotions.
- The West has lower transaction values, presenting an opportunity to enhance sales strategies.




---
## 5. Conclusion

- Prioritize Shoes and Shirts in inventory and marketing.
- Strengthen sales strategies in the West and low-performing months.
- Focus on high-revenue regions, especially the South.
  
Implementing these recommendations can help drive sustainable growth by aligning resources with customer demand.








