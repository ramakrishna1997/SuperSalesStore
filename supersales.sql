CREATE DATABASE superstore;
USE superstore;
select * from sales;
-- select concat(count(*)*100/(select count(*) from sales),'%') from sales
-- where Order_Date=Ship_Date;
SELECT CONCAT(COUNT(*) * 100 / (SELECT COUNT(*) FROM sales), '%') AS percentage
FROM sales
WHERE Order_Date = Ship_Date;

SELECT Customer_Name, SUM(Sales) AS Total_Order_Value
FROM sales
GROUP BY Customer_Name
ORDER BY Total_Order_Value DESC
LIMIT 3;