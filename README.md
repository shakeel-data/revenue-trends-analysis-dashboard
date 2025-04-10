# 📈 Market Trends & Sales Insight | • SQL • Tableau 

Market trends and sales insights play a key role in uncovering actionable patterns within business data. By analyzing category performance, regional demand, and growth trends over time, organizations can make smarter decisions, optimize strategies, and drive sustainable revenue through predictive and data-driven planning.

## 📘 Project Overview
This interactive Revenue Trends Dashboard showcases a comprehensive analysis of sales, profit, and quantity trends across product categories and U.S. states using data-driven insights. Built using Tableau, this project demonstrates the complete data analytics lifecycle — from data sourcing and SQL-based transformation to advanced data visualization and storytelling.

## 📁 Data resources used
- Kaggle 
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.csv">csv</a>
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Hexmap.xlsx">map</a>

- SQL
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.sql">Queries</a>

- SQL exported data
  - <a href="https://github.com/Shakeel-Data/Revenue-Trends-Dashboard/blob/main/Sales.txt">csv</a>


# 🪟 Dashboard
![Dashboard overview](https://github.com/user-attachments/assets/f2732274-267e-41e1-aeaf-c48c5dd17929)

## 🎯 Project Goals
- Developed a comprehensive **Market Trends & Sales Insight dashboard** to uncover key business insights and support **strategic decision-making**.
- Utilized **Microsoft SQL Server for advanced data cleaning, exploration, and transformation** of raw sales data sourced from Kaggle.
- Executed complex SQL queries to calculate essential KPIs such as **total sales, profit margins, quantity sold, and year-over-year growth**.
- Exported refined datasets to CSV format and integrated them into **Tableau for interactive data visualization**.
- Designed and deployed an interactive Tableau dashboard with **dynamic filters and drill-down capabilities, enabling stakeholders to explore category performance, regional sales, and time-series trends**.
- Provided clear visual insights into **high-performing product segments, underperforming regions, and monthly sales fluctuations**.
- Demonstrated full-cycle data analytics skills—from raw data ingestion and SQL-based transformation to **business intelligence reporting and data storytelling**.


## 📈 Key Features
- **End-to-End Pipeline** : Full-cycle project from raw data ingestion to dashboard deployment.
- **SQL Mastery** : Leveraged T-SQL for data wrangling, KPI calculations, and creating export-ready datasets.
- **Interactive Visualization** : Drill-down analysis using Tableau’s parameters and filters.
- **Business Insights** : Uncovered high-performing product segments and top revenue-generating states, aiding in strategic decision-making.



## 🔧 Project Workflow
### 1. 📥 Data Collection & Import
Sourced a publicly available sales dataset from Kaggle, reflecting typical retail transactions. The dataset was imported into Microsoft SQL Server, setting the foundation for structured querying and analysis.

### 2. 🧹 Data Cleaning & Transformation
Using SQL, the raw data was cleaned by handling missing values, correcting inconsistent entries, formatting dates, and optimizing column structures. This ensured that the data was reliable, consistent, and ready for analysis.

```sql
                                                              --Exploration Queries--
-- Basic Record Count

SELECT COUNT(*) AS Total_Records FROM Sales;
```
![image](https://github.com/user-attachments/assets/58a9e3f4-b8eb-48cd-bffd-96d4446d2fcf)

```sql
-- Check for Null Values in Key Columns

SELECT 
     SUM(CASE WHEN [Sales] IS NULL THEN 1 ELSE 0 END) AS Null_Sales,
     SUM(CASE WHEN [Order_Id] IS NULL THEN 1 ELSE 0 END) AS Null_Order_ID
FROM Sales;


-- Total Sales

SELECT SUM(Sales) AS Total_Sales FROM Sales;

```

![image](https://github.com/user-attachments/assets/81244bb9-1a13-4383-956f-ee7f83d82b9d)





































