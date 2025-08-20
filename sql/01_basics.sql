-- Day 3: SQL Basics

-- 1. Select all customers
SELECT * FROM Customers;

-- 2. Select only customer name and country
SELECT CustomerName, Country FROM Customers;

-- 3. Orders placed after 2023-01-01
SELECT * FROM Orders
WHERE OrderDate > '2023-01-01';

-- 4. Count orders per customer
SELECT CustomerID, COUNT(*) AS order_count
FROM Orders
GROUP BY CustomerID;

-- 5. Total sales per product
SELECT ProductID, SUM(SalesAmount) AS total_sales
FROM Orders
GROUP BY ProductID;

-- 6. Customers with more than 5 orders
SELECT CustomerID, COUNT(*) AS order_count
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5;

-- 7. Join Customers and Orders
SELECT c.CustomerName, o.OrderID, o.SalesAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 8. Join Products and Orders
SELECT p.ProductName, SUM(o.SalesAmount) AS total_sales
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName;

-- 9. Top 5 customers by total spend
SELECT c.CustomerName, SUM(o.SalesAmount) AS spend
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY spend DESC
LIMIT 5;

-- 10. Monthly sales totals
SELECT strftime('%Y-%m', OrderDate) AS Month, SUM(SalesAmount) AS monthly_sales
FROM Orders
GROUP BY strftime('%Y-%m', OrderDate)
ORDER BY Month;
