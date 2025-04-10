use db_sales_analysis

select * from sales;

                                                          --- 🟢 Beginner SQL Exploration Queries ---

-- Basic Record Count

SELECT COUNT(*) AS Total_Records FROM Sales;

-- Check for Null Values in Key Columns

SELECT 
  SUM(CASE WHEN [Sales] IS NULL THEN 1 ELSE 0 END) AS Null_Sales,
  SUM(CASE WHEN [Order_Id] IS NULL THEN 1 ELSE 0 END) AS Null_Order_ID
FROM Sales;


-- Total Sales

SELECT SUM(Sales) AS Total_Sales FROM Sales;
 


                                                         --- 🟡 Intermediate SQL Analysis Queries ---


-- Regional Sales Distribution

SELECT [Region], SUM(Sales) AS Region_Sales
FROM Sales
GROUP BY [Region]
ORDER BY Region_Sales DESC;


-- Monthly Sales Trend

SELECT FORMAT([Order_Date], 'yyyy-MM') AS Month, SUM(Sales) AS Monthly_Sales
FROM Sales
GROUP BY FORMAT([Order_Date], 'yyyy-MM')
ORDER BY Month;


-- Top 10 Best-Selling Products

SELECT [Product_Name], SUM([Quantity]) AS Units_Sold
FROM Sales
GROUP BY [Product_Name]
ORDER BY Units_Sold DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;



                                                                  --- 🔴 Advanced SQL Insights ---


-- Sales, Quantity, and Profit by Category

SELECT 
  [Category],
  SUM(Sales) AS Total_Sales,
  SUM([Quantity]) AS Total_Quantity,
  SUM([Profit]) AS Total_Profit
FROM Sales
GROUP BY [Category]
ORDER BY Total_Sales DESC;


-- Identify Top Performing Customers

SELECT TOP 10 [Customer_Name], SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;


-- Yearly Performance Overview

SELECT 
  YEAR([Order_Date]) AS Year,
  COUNT(DISTINCT [Order_ID]) AS Orders,
  SUM(Sales) AS Total_Sales,
  SUM([Profit]) AS Total_Profit
FROM Sales
GROUP BY YEAR([Order_Date])
ORDER BY Year;


-- Profit Margin by Region and Segment

SELECT 
  [Region], 
  [Segment], 
  AVG([Profit]) AS Avg_Profit_Margin
FROM Sales
GROUP BY [Region], [Segment]
ORDER BY Avg_Profit_Margin DESC;









































