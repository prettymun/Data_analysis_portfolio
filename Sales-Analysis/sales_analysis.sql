-- Create the sales table
CREATE TABLE sales (
    Order_ID INT PRIMARY KEY,
    Customer_ID VARCHAR(50),
    Product VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    Price_per_Unit DECIMAL(10,2),
    Total_Sale DECIMAL(10,2),
    Purchase_Date DATE
);

-- Insert sample data
INSERT INTO sales (Order_ID, Customer_ID, Product, Category, Quantity, Price_per_Unit, Total_Sale, Purchase_Date) VALUES
(1001, 'CUST1', 'Laptop', 'Electronics', 1, 800, 800, '2024-01-01'),
(1002, 'CUST2', 'Phone', 'Electronics', 2, 500, 1000, '2024-01-02'),
(1003, 'CUST3', 'Tablet', 'Electronics', 1, 300, 300, '2024-01-03'),
(1004, 'CUST4', 'Monitor', 'Electronics', 3, 200, 600, '2024-01-04'),
(1005, 'CUST5', 'Keyboard', 'Electronics', 2, 50, 100, '2024-01-05');

-- 1. Total Sales Revenue
SELECT SUM(Total_Sale) AS Total_Revenue
FROM sales;
-- This calculates the total revenue generated from all sales.

-- 2. Monthly Sales Trend
SELECT MONTH(Purchase_Date) AS Month, SUM(Total_Sale) AS Monthly_Sales
FROM sales
GROUP BY MONTH(Purchase_Date)
ORDER BY Month;
-- This shows total sales revenue for each month, helping identify trends.

-- 3. Average Order Value (AOV)
SELECT AVG(Total_Sale) AS Average_Order_Value
FROM sales;
-- This calculates the average revenue per order.

-- 4. Top-Selling Products (by quantity sold)
SELECT Product, SUM(Quantity) AS Total_Units_Sold
FROM sales
GROUP BY Product
ORDER BY Total_Units_Sold DESC
LIMIT 5;
-- This identifies the most frequently purchased products.

-- 5. Highest Revenue Products
SELECT Product, SUM(Total_Sale) AS Total_Revenue
FROM sales
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;
-- This identifies the products that contribute the most revenue.

-- 6. Category-Wise Sales
SELECT Category, SUM(Total_Sale) AS Category_Revenue
FROM sales
GROUP BY Category
ORDER BY Category_Revenue DESC;
-- This shows which categories generate the highest revenue.

-- 7. Total Number of Orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM sales;
-- This counts the total number of sales transactions.

-- 8. Highest & Lowest Sales
SELECT MAX(Total_Sale) AS Highest_Sale, MIN(Total_Sale) AS Lowest_Sale
FROM sales;
-- This finds the highest and lowest single transaction sales values.

-- 9. Customer-Based Analysis: Top Spending Customers
SELECT Customer_ID, SUM(Total_Sale) AS Total_Spent
FROM sales
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 5;
-- This lists the top 5 customers who have spent the most.

-- 10. Sales Growth Percentage Over Time
SELECT YEAR(Purchase_Date) AS Year, MONTH(Purchase_Date) AS Month,
       SUM(Total_Sale) AS Monthly_Sales,
       LAG(SUM(Total_Sale)) OVER (ORDER BY YEAR(Purchase_Date), MONTH(Purchase_Date)) AS Previous_Month_Sales,
       (SUM(Total_Sale) - LAG(SUM(Total_Sale)) OVER (ORDER BY YEAR(Purchase_Date), MONTH(Purchase_Date))) / 
       LAG(SUM(Total_Sale)) OVER (ORDER BY YEAR(Purchase_Date), MONTH(Purchase_Date)) * 100 AS Sales_Growth_Percentage
FROM sales
GROUP BY YEAR(Purchase_Date), MONTH(Purchase_Date)
ORDER BY Year, Month;
-- This calculates the month-over-month sales growth percentage.
