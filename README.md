Global E-Commerce Customer Behavior Analysis
📌 Project Overview

This project presents an end-to-end analysis of a Global E-Commerce Customer Behavior dataset containing 100,000 records.

The objective is to understand overall business performance, customer purchasing behaviour, revenue patterns, customer satisfaction, product returns, and customer churn.

The project follows a complete data analytics workflow using Python for data cleaning and exploratory data analysis (EDA), SQL for business analysis, and Power BI for interactive dashboard development and visualization.

🎯 Problem Statement

A global e-commerce business needs to better understand its sales performance and customer behaviour across different countries, product categories, age groups, payment methods, and time periods.

The objective of this project is to analyse customer purchasing patterns, revenue performance, customer satisfaction, product returns, and churn behaviour to identify meaningful trends and support data-driven decisions for improving customer experience, retention, and overall business performance.

🛠️ Tools & Technologies
Python — Data cleaning, validation, feature engineering and EDA
Pandas & NumPy — Data manipulation and transformation
Matplotlib — Exploratory data visualization
MySQL / SQL — Business queries and data analysis
Power BI — Data modelling, DAX, interactive dashboards and business visualization
Jupyter Notebook — Python analysis and documentation
🧹 Data Preparation

The dataset was validated and prepared before analysis.

The process included:

Checking missing values and duplicate records
Validating column data types
Converting Order_Date to datetime format
Checking categorical data consistency
Validating numerical ranges
Validating Total_Spent using quantity, unit price and discount
Creating Year, Month and Year-Month features
Creating customer age groups
Creating customer rating groups
Creating return and churn indicators
Exporting the processed dataset for further analysis
🔍 Exploratory Data Analysis

EDA was performed to investigate:

Revenue by product category
Revenue by country
Revenue trends over time
Revenue and spending by age group
Customer behaviour by gender
Payment method preferences
Customer rating patterns
Return rates across product categories
Churn rates across countries and age groups
Relationship between customer ratings and churn
Relationship between discounts and returns
Monthly return and churn trends
📊 Power BI Dashboard

The final dashboard consists of three analytical pages.

Page 1 — Executive Overview

Provides a high-level view of business performance using:

Total Revenue | Total Orders | Average Order Value | Average Rating | Return Rate | Churn Rate

The page also analyses revenue trends, countries, product categories, payment methods and age groups.

Page 2 — Customer Insights

Focuses on customer demographics, purchasing behaviour and satisfaction.

It analyses customer age groups, gender, average spending, ratings, payment preferences and product-category satisfaction.

Page 3 — Returns & Churn Analysis

Investigates customer retention and product-return behaviour through return rates, churn rates, customer ratings, discounts, countries, age groups and monthly trends.

💡 Key Insights

Revenue is broadly distributed across countries and product categories, reducing dependence on a single market or category.

The 46–60 age group contributes the highest total revenue, although average order values remain relatively similar across age groups.

Payment methods are almost evenly distributed, indicating customers use multiple payment options rather than strongly favouring one.

Customer ratings average approximately 3/5, with little variation between product categories.

Return rates remain close to 50% across product categories, while churn also remains around 50% across countries and age groups. This indicates that neither product category, geography nor age alone strongly explains return or churn behaviour.

Higher customer ratings show a slight association with lower churn, although the difference is relatively small.

📈 Business Recommendations

Rather than targeting a single country or demographic segment, the business should investigate broader causes of high returns and churn.

Additional return-reason and churn-reason data should be collected to identify the underlying causes of customer dissatisfaction.

Customer experience and retention initiatives should be monitored across all major customer segments, while high-revenue groups can be prioritised for targeted loyalty and retention programmes.
