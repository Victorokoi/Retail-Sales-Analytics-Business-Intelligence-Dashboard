CREATE TABLE Customers (
    customer_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email VARCHAR,
    gender TEXT,
    age INT,
    city TEXT,
    country TEXT,
    signup_date DATE,
    customer_segment TEXT
	);
	CREATE TABLE Returns(
Returned TEXT,
Order_ID VARCHAR PRIMARY KEY,
Market TEXT
);

CREATE TABLE Product(
Person TEXT,
Region TEXT PRIMARY KEY

);

CREATE TABLE Orders(
Row_ID INT,
Order_ID VARCHAR,	
Order_Date DATE,	
Ship_Date  DATE,	
Ship_Mode TEXT,	
Customer_ID	VARCHAR,
Customer_Name TEXT,	
Segment	TEXT,
City TEXT,	
State TEXT,
Country	TEXT,
Postal_Code	INT,
Market TEXT,
Region TEXT,	
Product_ID VARCHAR,
Category TEXT,	
Sub_Category TEXT,	
Product_Name TEXT,	
Sales FLOAT,	
Quantity INT,	
Discount FLOAT,	
Profit FLOAT,	
Shipping_Cost FLOAT,	
Order_Priority TEXT,
FOREIGN KEY (Order_ID) REFERENCES Returns (Order_id),
FOREIGN KEY (Region) REFERENCES Product (Region)
);

SELECT* FROM Returns;

SELECT* FROM Customers;

SELECT* FROM Product;

SELECT* FROM Orders;

SELECT Product_name,category, sub_category
FROM Product;

SELECT customer_segment
FROM Customers
GROUP BY Customer_segment;

-1.	How has sales performance changed over time, and what trends or seasonality can you identify?

SELECT DATE_TRUNC('month', order_date) AS month,
SUM(revenue) AS total_revenue
FROM Orders
GROUP BY month
ORDER BY month;


-2. Which products, categories or subcategories contribute the most and least to business performance?

SELECT
    p.product_name,
    SUM(o.revenue) AS total_revenue
FROM Orders o
JOIN Product p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

SELECT
    p.category,
    SUM(o.revenue) AS total_revenue
FROM orders o
JOIN product p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

SELECT
    p.sub_category,
    SUM(o.revenue) AS total_revenue
FROM orders o
JOIN product p
    ON o.product_id = p.product_id
GROUP BY p.sub_category
ORDER BY total_revenue DESC;


--3.Which customer segments generate the highest value, and how do purchasing behaviours differ?
SELECT
    c.customer_segment,
    SUM(o.revenue) AS total_revenue,
    SUM(o.quantity) AS total_quantity,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_segment
ORDER BY total_revenue DESC;

--4. Which geographical locations contribute the most to sales and profitability?
SELECT *FROM Customers;

SELECT
    c.country,
    SUM(o.revenue) AS total_sales
FROM Orders o
JOIN Customers c
    ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_sales DESC;

--5. Which sales channels perform best in terms of revenue, order volume and profitability?

SELECT *FROM orders;
SELECT
sales_channel,
SUM(revenue) AS total_revenue,
COUNT(order_id) AS order_volume
FROM Orders
GROUP BY sales_channel
ORDER BY total_revenue DESC;

--6.What are the major drivers of profitability and where are the greatest opportunities for improvement?
SELECT
    p.product_name,
    SUM(o.revenue) AS total_revenue
FROM Orders o
JOIN Product p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

--7. What patterns exist in product returns and what impact do they have on business performance?

   SELECT
    p.product_name,
    COUNT(*) AS total_returns
FROM Returns r
JOIN Orders o
    ON r.order_id = o.order_id
JOIN Product p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_returns DESC;

--8.What key performance indicators should management monitor regularly?

SELECT COUNT(*) AS total_customers
FROM Customers;

SELECT SUM(revenue) AS total_revenue
FROM Orders;

SELECT COUNT(*) AS total_products
FROM Product;

SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM Orders;

SELECT COUNT(*) AS total_returns
FROM Returns;


SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;
