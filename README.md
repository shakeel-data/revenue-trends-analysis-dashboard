# 📈 Market Sales and Trends Project | SQL Server + Tableau
![image](https://github.com/user-attachments/assets/8e63550a-e246-4646-a3e4-aee291188060)


Market trends and sales insights play a key role in uncovering actionable patterns within business data. By analyzing category performance, regional demand, and growth trends over time, organizations can make smarter decisions, optimize strategies, and drive sustainable revenue through predictive and data-driven planning.

## 📘 Project Overview
This interactive Revenue Trends Dashboard showcases a comprehensive analysis of sales, profit, and quantity trends across product categories and U.S. states using data-driven insights. Built using Tableau, this project demonstrates the complete data analytics lifecycle-from data sourcing and SQL-based transformation to advanced data visualization and storytelling.

## 🎯 Key Objectives
- **End-to-End Pipeline**: Full-cycle project from raw data ingestion to dashboard deployment.
- **SQL Mastery**: Leveraged T-SQL for data wrangling, KPI calculations, and creating export-ready datasets.
- **Interactive Visualization**: Drill-down analysis using Tableau’s parameters and filters.
- **Business Insights**: Uncovered high-performing product segments and top revenue-generating states, aiding in strategic decision-making.

## 📁 Data Sources
- Kaggle 
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.csv">csv</a>
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Hexmap.xlsx">Location</a>
- SQL
<a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.sql">Queries</a>
- SQL exported
<a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.txt">csv</a>

# 🪟 Dashboard
![image](https://github.com/user-attachments/assets/58ba3510-0e89-4003-ba6c-9b315e252e13)

## 🔧 Project Workflow
### 1.  Data Collection & Import
Sourced a publicly available sales dataset from Kaggle, reflecting typical retail transactions. The dataset was imported into Microsoft SQL Server, setting the foundation for structured querying and analysis.

### 2.  ETL Process in SQL Server
- Created a **database and imported CSV files** into SQL Server using the Import Wizard. 
- Using SQL, the raw data was cleaned by handling missing values, correcting inconsistent entries, formatting dates, and optimizing column structures. 
- This ensured that the data was reliable, consistent, and ready for analysis.

**Basic Record Count**
```sql

SELECT COUNT(*) AS Total_Records FROM Sales;
```
![image](https://github.com/user-attachments/assets/9dc6d1ba-360f-4573-85a3-c3d54ef143a7)

**Check for Null Values in Key Columns**

```sql
SELECT 
     SUM(CASE WHEN [Sales] IS NULL THEN 1 ELSE 0 END) AS Null_Sales,
     SUM(CASE WHEN [Order_Id] IS NULL THEN 1 ELSE 0 END) AS Null_Order_ID
FROM Sales;
```

**Total Sales**
```sql

SELECT SUM(Sales) AS Total_Sales FROM Sales;
```

![image](https://github.com/user-attachments/assets/4ba97531-cf18-4760-b8fa-55e18a615224)


**Regional Sales Distribution**
```sql

SELECT [Region], SUM(Sales) AS Region_Sales
FROM Sales
GROUP BY [Region]
ORDER BY Region_Sales DESC;
```
![image](https://github.com/user-attachments/assets/34d301e6-bfa2-4cc4-af5b-266796aa64e4)

**Monthly Sales Trend**
```sql

SELECT FORMAT([Order_Date], 'yyyy-MM') AS Month, SUM(Sales) AS Monthly_Sales
FROM Sales
GROUP BY FORMAT([Order_Date], 'yyyy-MM')
ORDER BY Month;
```

```sql
-- Top 10 Best-Selling Products

SELECT [Product_Name], SUM([Quantity]) AS Units_Sold
FROM Sales
GROUP BY [Product_Name]
ORDER BY Units_Sold DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
```
![image](https://github.com/user-attachments/assets/819fa2f5-172c-4dc5-ae62-dace5726c49e)

### 3. 🔍 Exploratory Data Analysis (EDA)
Performed in-depth data exploration using a series of SQL queries to uncover key patterns, trends, and outliers. Advanced queries were used to segment data by category, region, and time to better understand business performance from multiple perspectives.

```sql
-- Sales, Quantity, and Profit by Category

SELECT 
  [Category],
  SUM(Sales) AS Total_Sales,
  SUM([Quantity]) AS Total_Quantity,
  SUM([Profit]) AS Total_Profit
FROM Sales
GROUP BY [Category]
ORDER BY Total_Sales DESC;
```
![image](https://github.com/user-attachments/assets/2585dd2f-7d77-4f22-82b8-36e66fcc4d6f)

```sql
-- Identify Top Performing Customers

SELECT TOP 10 [Customer_Name], SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;
```

```sql
-- Yearly Performance Overview

SELECT 
  YEAR([Order_Date]) AS Year,
  COUNT(DISTINCT [Order_ID]) AS Orders,
  SUM(Sales) AS Total_Sales,
  SUM([Profit]) AS Total_Profit
FROM Sales
GROUP BY YEAR([Order_Date])
ORDER BY Year;
```
![image](https://github.com/user-attachments/assets/81adb05c-e385-4ced-af11-f59f3a290722)

```sql
-- Profit Margin by Region and Segment

SELECT 
  [Region], 
  [Segment], 
  AVG([Profit]) AS Avg_Profit_Margin
FROM Sales
GROUP BY [Region], [Segment]
ORDER BY Avg_Profit_Margin DESC;
```

![image](https://github.com/user-attachments/assets/c713a9f5-2fe3-45b5-b41d-3934a36b029e)


### 4. Data Export
Once analysis was completed, the cleaned and structured dataset was exported to CSV format for seamless integration with Tableau, maintaining data integrity during the transfer.

### 5. Data Visualization using Tableau
- The processed data was visualized using Tableau, resulting in an interactive dashboard that provides clear insights into total revenue, profit, quantity sold, and year-over-year growth. 
- Built a dynamic Revenue Trends Dashboard using Tableau Desktop.
- Incorporated key performance indicators (KPIs) including:
  - Total Sales
  - Total Profit
  - Total Quantity
- Integrated YoY comparisons (2022 vs 2021), monthly trends, and min/max month highlights.
- Added interactive filters for Category, Region, Ship Mode, and Year.
- **Designed comparative visualization of Sales & Profit by Category** : Bar and bullet charts highlighting profit/loss.
- **Geographical Visualization with Hex Maps** :
    - Used **hex maps** to represent sales and profit by state in a clean, compact layout.
    - **Bubble map** showing sales and profit with size and **color gradients.**
    - This allows for clearer regional patterns compared to traditional **choropleth maps.**

## 💼 Business Insights
- This final dashboard enables stakeholders to make **informed, data-driven decisions** by highlighting key business metrics. 
- It uncovers top-performing **regions, high-revenue categories, seasonal trends, and areas of underperformance.**
- These insights support strategic **planning, inventory optimization**, and targeted marketing initiatives.


## 🛠 Technologies and Tools
- **Kaggle** – Data Source
- **Microsoft SQL Server** – Database management and ETL operations
- **Tableau Public** – Data transformation and interactive visualization

## ✅ Conclusion
This project demonstrates the power of combining SQL and Tableau to turn raw data into valuable business intelligence. From sourcing and preparing data in SQL Server to designing a visually compelling dashboard in Tableau Public, each step was carefully crafted to **highlight key sales trends, regional performance, and product-level insights.**
This project showcases practical skills in **data wrangling, analysis, and visualization** and reflects a real-world approach to solving business problems through data.
