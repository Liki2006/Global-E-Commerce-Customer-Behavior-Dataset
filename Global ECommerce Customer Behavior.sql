CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;

SELECT *
FROM orders LIMIT 5;

-- What is the total revenue generated?
SELECT SUM(Total_Spent)
FROM orders;

-- What is the average order value?
SELECT AVG(Total_Spent)
FROM orders;

-- Which country generates the highest revenue?
SELECT Country,SUM(Total_Spent) as total_revenue
FROM orders
GROUP BY Country 
ORDER BY total_revenue DESC;

-- Which product category generates the highest revenue?
SELECT Product_Category,SUM(Total_Spent) as total_revenue
FROM orders
GROUP BY Product_Category
ORDER BY total_revenue DESC;

-- How has revenue changed month over month?
SELECT `Year_Month` ,SUM(Total_Spent) as monthly_revenue
FROM orders
GROUP BY `Year_Month`
ORDER BY `Year_Month`;

 -- Which age group generates the most revenue?
 SELECT Age_Group,SUM(Total_Spent) as total_revenue
FROM orders
GROUP BY Age_Group
ORDER BY total_revenue DESC;

-- Which payment method is used most frequently?
SELECT Payment_Method,COUNT(*) as total_orders
FROM orders
GROUP BY Payment_Method
ORDER BY  total_orders DESC;

-- Which categories receive the highest customer ratings?
SELECT Product_Category,ROUND(Avg(Customer_Rating),2) as Avg_Rating
FROM orders
GROUP BY Product_Category
ORDER BY  Avg_Rating DESC;

-- Which product category has the highest return rate?
SELECT Product_Category,AVG(Return_Flag)*100 as return_rate
FROM orders
GROUP BY Product_Category
ORDER BY return_rate DESC;

-- Which country has the highest return rate?
SELECT Country,AVG(Return_Flag)*100 as return_rate
FROM orders
GROUP BY Country
ORDER BY return_rate DESC;

-- What is the overall churn rate?
SELECT AVG(Churn_Flag)*100 as churn_rate
FROM orders;

-- Which age group has the highest churn rate?
SELECT Age_Group,AVG(Churn_Flag)*100 as churn_rate
FROM orders
GROUP BY Age_Group
ORDER BY churn_rate DESC;

-- Which country has the highest churn rate?
SELECT Country,AVG(Churn_Flag)*100 as churn_rate
FROM orders
GROUP BY Country
ORDER BY churn_rate DESC;

-- Does customer rating affect churn?
SELECT
    Customer_Rating,
    COUNT(*) AS Total_Customers,
    SUM(Churn_Flag) AS Churned_Customers,
    ROUND(
        SUM(Churn_Flag) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage
FROM orders
GROUP BY Customer_Rating
ORDER BY Customer_Rating;

-- Are returned orders associated with higher churn?
SELECT
    Returned,
    COUNT(*) AS Total_Orders,
    SUM(Churn_Flag) AS Churned_Orders,
    ROUND(AVG(Churn_Flag) * 100, 2) AS Churn_Rate
FROM orders
GROUP BY Returned
ORDER BY Churn_Rate DESC;

-- How does discount level affect revenue?
SELECT
    Discount,
    COUNT(Order_ID) AS Total_Orders,
    ROUND(SUM(Total_Spent), 2) AS Total_Revenue,
    ROUND(AVG(Total_Spent), 2) AS Avg_Order_Value
FROM orders
GROUP BY Discount
ORDER BY Discount;

-- Does a higher discount increase return rates?
SELECT
    Discount,
    COUNT(Order_ID) AS Total_Orders,
    AVG(Return_Flag)*100 as return_rate
FROM orders
GROUP BY Discount
ORDER BY Discount DESC;

-- Which country-category combinations generate the most revenue?
SELECT Country,
Product_Category,
ROUND(SUM(Total_Spent),2) as total_revrnue
FROM orders
GROUP BY Country,Product_Category
ORDER BY total_revrnue DESC;

-- Which segments have high revenue but poor ratings?
SELECT
    Age_Group,
    ROUND(SUM(Total_Spent), 2) AS Total_Revenue,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating,
    COUNT(Order_ID) AS Total_Orders
FROM orders
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;

-- Which customer segments should management prioritize for retention?
SELECT
    Age_Group,
    Country,
    Product_Category,

    COUNT(*) AS Total_Orders,

    ROUND(SUM(Total_Spent), 2) AS Total_Revenue,

    ROUND(AVG(Total_Spent), 2) AS Avg_Order_Value,

    ROUND(
        AVG(Churn_Flag) * 100,
        2
    ) AS Churn_Rate,

    ROUND(
        AVG(Customer_Rating),
        2
    ) AS Avg_Rating

FROM orders

GROUP BY
    Age_Group,
    Country,
    Product_Category

HAVING COUNT(*) >= 100

ORDER BY
    Churn_Rate DESC,
    Total_Revenue DESC;