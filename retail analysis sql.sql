SELECT * FROM online_retail
LIMIT 10;
SELECT COUNT(*) FROM online_retail;
SELECT MIN(InvoiceDate), MAX(InvoiceDate) FROM online_retail;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/online_retail.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT COUNT(*) FROM online_retail;
SELECT * FROM online_retail
LIMIT 10;
SELECT SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail
WHERE Quantity > 0
AND UnitPrice > 0; 
SELECT CustomerID,
       SUM(Quantity * UnitPrice) AS total_spent
FROM online_retail
WHERE Quantity > 0
AND UnitPrice > 0
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;
SELECT Description,
       SUM(Quantity) AS total_quantity_sold
FROM online_retail
WHERE Quantity > 0
GROUP BY Description
ORDER BY total_quantity_sold DESC
LIMIT 10;
SELECT Country,
       SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail
WHERE Quantity > 0
AND UnitPrice > 0
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;
SELECT DATE(InvoiceDate) AS order_date,
       SUM(Quantity * UnitPrice) AS daily_sales
FROM online_retail
WHERE Quantity > 0
AND UnitPrice > 0
GROUP BY order_date
ORDER BY order_date;
SELECT user, host, plugin 
FROM mysql.user 
WHERE user = 'root';
ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password BY 'kk150725';

FLUSH PRIVILEGES;
CREATE TABLE clean_retail AS
SELECT *
FROM online_retail
WHERE Quantity > 0
AND UnitPrice > 0
AND CustomerID IS NOT NULL;
SELECT COUNT(*) FROM clean_retail;
USE retail_project;