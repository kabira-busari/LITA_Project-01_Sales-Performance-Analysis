## Sales Performance Analysis for a Retail Store

### 1.1 Introduction
This project involves analyzing the sales performance of a retail store to uncover key insights such as top-selling products, regional performance, and monthly sales trends. 

The objective is to create an interactive **Power BI** dashboard that highlights these findings, providing a visual representation of the store's sales data. 

The analysis was carried out in three main steps:
1. **Google Sheets**: I started by exploring the sales data using pivot tables to summarize total sales by product, region, and month. I also used formulas to calculate key metrics like average sales per product and total revenue by region.
2. **SQL**: Next, I used SQL queries to dive deeper into the data, extracting insights such as the highest-selling product, top 5 customers, and monthly sales totals.
3. **Power BI**: Finally, I visualized the findings in a Power BI dashboard, offering a user-friendly overview of sales performance, including breakdowns by product and region.

This project demonstrates how combining Google Sheets, SQL, and Power BI can provide powerful insights into business performance, making it easier to make data-driven decisions.

### 1.2 Tools Used
- **Google Sheets**: Used for data exploration, pivot tables, and basic summary analysis.
- **PostgreSQL**: Used to query the dataset for more detailed analysis and insights.
- **Power BI**: Used to create an interactive dashboard to visualize key metrics and trends.
- **Dataset**: A sales dataset containing information on sales transactions, customer details, and product information.

### 1.3 Dataset
You can download the sales dataset here - [Download the Sales Data](https://docs.google.com/spreadsheets/d/1uX7hdUgaS2KxBFbtkl-cvrYSC24ZxpggIzeDtGaa34w/edit?usp=sharing).

---

## Google Sheets Analysis
### 1.1 Objective
The Google Sheets analysis was conducted to explore sales data and generate key insights using pivot tables and formulas. The analysis focused on understanding product performance, regional sales, monthly sales trends, and average sales per product.

### 1.2 Methodology
1. **Data Loading**: Imported the sales data into Google Sheets.
2. **Pivot Tables**:
   - Created pivot tables to summarize total sales by product, region, and month.
   - Summarized total revenue by region and identified monthly sales trends.
3. **Formulas**:
   - Calculated total sales by product, total revenue by region, and average sales per product.
  
### 1.3 Key Reports
#### 1.3.1 Total Sales by Product

![Total Sales by Product](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Total%20Sales%20by%20Product.png?raw=true)

This report summarizes the total revenue generated by each product, helping to identify which products contribute the most to the company’s sales.

**Key Findings and Interpretation**:
- **Shoes** was the top-selling product with total revenue of **$613,380**, indicating its high demand and popularity among customers.
- **Shirts** followed closely with **$485,600**, also showing strong performance in sales.
- Other products, including **Gloves ($296,900)**, **Hats ($316,195)**, **Jackets ($208,230)**, and **Socks ($180,785)**, contributed to total sales, but their revenues were lower than those of Shoes and Shirts.
- The overall **Grand Total** revenue reached **$2,101,090**.
  
These findings suggest that **Shoes** and **Shirts** are the most critical products driving revenue. In contrast, the lower revenue from **Socks** and **Jackets** indicates potential areas for improvement in marketing strategies or pricing to enhance their sales performance.

#### 1.3.2 Total Sales by Region

![Sales Revenue by Region](https://github.com/kabira-busari/LITA_Project-01_Sales-Performance-Analysis/blob/main/Sales%20Revenue%20by%20Region.png?raw=true)

This report outlines the revenue generated from each region, allowing us to understand which geographical areas are performing the best in terms of sales.

4. **Monthly Sales Trends**
This report tracks the company's sales performance across different months, helping to identify periods of high and low sales activity.

5. **Average Sales per Product**
This metric calculates the average sales amount per transaction for each product, providing insights into how well each product performs on a per-sale basis.

6. **Total Revenue by Region**
This report is similar to the previous "Total Sales by Region" pivot table but is included here for completeness.

### 1.4 Insights
1. **Product Performance**: Shoes and Shirts are the top performers both in terms of total sales and average sales per transaction. This suggests that these products not only sell well but also generate significant revenue with each sale.

2. **Regional Performance**: The South region is the most profitable, contributing nearly half of the company’s total revenue. Targeted marketing or further investments in this region could be beneficial, while strategies to improve sales in the West region may also be worth considering.
   
3. **Seasonal Trends**: The early months of the year (particularly February) showed a spike in sales, while sales dropped off significantly during the middle of the year (April and September). This information could help in planning inventory or marketing campaigns for future months.

### 1.5 Conclusion
The analysis of sales data conducted using Google Sheets yielded valuable insights into product performance, contributions from different regions, and monthly sales trends. The findings revealed that Shoes and Shirts emerged as the top products, excelling in both total and average sales. Additionally, it was noted that the South region significantly outperformed others in terms of sales, whereas the West region showed a need for improvement. Furthermore, February was identified as a critical month for sales, while September recorded the lowest revenue, suggesting potential seasonal effects. These insights can inform strategic decisions regarding inventory management and marketing efforts.
