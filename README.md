# SALES-DATA-ANALYSIS
![intro_image](https://github.com/EsabellB15/SALES-DATA-ANALYSIS/assets/123163220/6f2e6703-fe6b-4ec9-9333-b5d11553faad)

## Introduction
This is a SQL and Power BI project on Sales Analysis.  I worked on this project to practice my skills in data cleaning, analysis, and visualization. I try to answer the following set of real-world business questions to draw insights from this huge Sales dataset. 

## Problem Statement 
- Question 1: What was the best month for sales? How much was earned that month?
-	Question 2: What city has the highest sales?
-	Question 3: What time should we display advertisements to maximize the likelihood of customers buying products?
-	Question 4: What products are most often sold together?
-	Question 5: What product sold the most? Why do you think it sold the most?

## Data Sourcing
I got the data from an article called: Top 10 Business Analytics Project Ideas 2024.

The dataset contains 12 CSV files containing sales details for the 12 months of the year 2019. The naming convention is as follows:  Sales_[MONTH_NAME] _2019
- Each file contains anywhere from around 9000 to 26000 rows and 6 columns.
- The columns are as follows:
Order ID, Product, Quantity Ordered, Price Each, Order Date, Purchase Address

## Data Transformations
1.	Convert all 12 CSV files into Excel format files.
2.	Merge all 12 CSV files into one CSV file (SQL)
3.	Checked for Null Values: 898 rows were found and deleted (SQL)
4.	Check for missing values: No missing values were identified (SQL)
5.	Convert columns to the correct data type (SQL)
6.	Find duplicated rows and delete them (SQL)
7.	Create a new 'Month' column from the 'Order Date' column (SQL)
8.	Add a Sales column(SQL)
9.	Add a city column( SQL)
10.	Added a season’s column in Power BI
11.	Created an average quantity sold per month measure. ( Power BI)
12.	Added a time column. ( Power BI)

- Find the SQL code in the file above: SQLQuery sales analysis.sql
  
![SQL Merge](https://github.com/EsabellB15/SALES-DATA-ANALYSIS/assets/123163220/24bf786a-2636-4a9c-8911-913ecd8963d6)

![Sales Data cleaning ](https://github.com/EsabellB15/SALES-DATA-ANALYSIS/assets/123163220/472779e9-9254-453b-a399-f28eefb14c8c)


## Data Modelling
No modeling was required since we needed just a table for the analysis.

![Model_image](https://github.com/EsabellB15/SALES-DATA-ANALYSIS/assets/123163220/a44e9f67-02a2-4a2a-b05e-f1af91a8a438)

## Data Analysis

![Sales analysis dashboard](https://github.com/EsabellB15/SALES-DATA-ANALYSIS/assets/123163220/b51ec1c1-9647-4e9d-a9be-992ffdea8c54)

You can interact with this report [here]( https://app.powerbi.com/groups/13bfa296-3bf8-4464-86eb-f48267f0fff7/reports/1d101a5a-1272-4d48-931b-c0ca0c9259a3/ReportSection?experience=power-bi)

## Conclusions
-	From the dashboard we can see that December had the highest number of sales, amounting to $2 642 519,54.
-	Observations indicate that the peak sales hours are from noon to 9:00 PM. Advertising efforts should be strategically focused during these hours to maximize customer engagement.
-	San Francisco, CA, emerges as the top-selling location, followed closely by Los Angeles, CA, based on the dashboard insights.
-	The AAA Batteries (4 pack) stand out as the most sold product, potentially attributed to its competitive pricing.
-	From the dashboard, we can also see that the lighting charging cable and the iPhone are the most sold together, along with the USB Charging cable and Google phone.
-	The average quantity of products ordered per month is calculated at 10.72K.

## Recommendations
-	Given the peak in sales during December, consider targeted marketing strategies, promotions, and inventory management to capitalize on the holiday season.
-	Align advertising efforts with the observed peak sales hours (noon to 9:00 PM) to enhance customer reach and conversion rates.
-	Tailor marketing campaigns for San Francisco and Los Angeles to further leverage the strong sales performance in these areas.
-	Leverage insights into frequently sold product pairs to optimize cross-selling strategies and potentially introduce bundled promotions.
-	Maintain a proactive approach to inventory management, ensuring sufficient stock levels for high-demand products, especially during peak months.





