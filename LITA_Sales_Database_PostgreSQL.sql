-- Create a table named sales_data to store sales information
CREATE TABLE sales_data (
    order_id INT,					-- Unique identifier for each order					
    customer_id VARCHAR(50),		-- Identifier for the customer	
    product VARCHAR(50),			-- Name of the product sold
    region VARCHAR(50),				-- Region where the product was sold
    order_date DATE,				-- Date of the order
    quantity INT,					-- Quantity of the product sold
    revenue NUMERIC(10, 2),			-- Total revenue generated from the sale
    unit_price NUMERIC(10, 2)		-- Price per unit of the product
);

-- Import data from a CSV file into the sales_data table
COPY sales_data (order_id, customer_id, product, region, order_date, quantity, revenue, unit_price)
FROM 'C:\tmp\LITA_Capstone_Dataset - SalesData.csv'
DELIMITER ','
CSV HEADER;

-- Select the first 10 records from the sales_data table
SELECT * 
FROM sales_data 
LIMIT 10;

--Total Sales for Each Product Category
SELECT product, SUM(quantity) AS total_units_sales
FROM sales_data
GROUP BY product
ORDER BY total_units_sales DESC;

--Number of Sales Transactions in Each Region
SELECT region, COUNT(order_id) AS transaction_count
FROM sales_data
GROUP BY region;

--Highest-Selling Product by Total Sales Value
SELECT product, SUM(revenue) AS total_sales_value
FROM sales_data
GROUP BY product
ORDER BY total_sales_value DESC
LIMIT 1;

--Total Revenue per Product
SELECT product, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product;

--Monthly Sales Totals for the Current Year
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month, 
       SUM(revenue) AS monthly_total_sales
FROM sales_data
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

--Top 5 Customers by Total Purchase Amount
SELECT customer_id, SUM(revenue) AS total_purchase_amount
FROM sales_data
GROUP BY customer_id
ORDER BY total_purchase_amount DESC
LIMIT 5;

--Percentage of Total Sales Contributed by Each Region
SELECT region, SUM(revenue) AS region_sales,
       (SUM(revenue) / (SELECT SUM(revenue) FROM sales_data) * 100) AS sales_percentage
FROM sales_data
GROUP BY region;

--Products with No Sales in the Last Quarter
SELECT DISTINCT product
FROM sales_data
WHERE product NOT IN (
    SELECT product
    FROM sales_data
    WHERE order_date >= DATE_TRUNC('quarter', CURRENT_DATE) - INTERVAL '3 months'
);
