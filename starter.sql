-- Active: 1695123209154@@127.0.0.1@5432@northwind@public
SELECT Category_ID, Product_Name,Product_ID 
FROM Products 
WHERE Unit_Price > 50

SELECT * 
FROM customers 
WHERE Country = 'Germany'

SELECT * 
FROM orders
WHERE customer_id = 'ALFKI'

SELECT customer_id, COUNT(order_id)
AS TotalOrders
FROM orders  
GROUP BY customer_id

SELECT product_name, Unit_Price 
FROM  Products 
ORDER BY Unit_Price 
DESC LIMIT 5

SELECT last_name , first_name, birth_date 
FROM Employees 
WHERE birth_date <'01/01/1960'

SELECT product_name, Units_in_stock 
FROM Products 
WHERE Units_in_stock = 0

SELECT AVG(Unit_Price) 
FROM products

SELECT SUM(Unit_Price* quantity) 
FROM order_details 
WHERE product_id = 7

SELECT COUNT(DISTINCT category_id) 
FROM products

SELECT * 
FROM products
WHERE Discontinued = 1

SELECT COUNT(order_id) 
FROM orders 
WHERE EXTRACT(YEAR FROM order_date) = 1997;

SELECT * 
FROM customers
WHERE contact_title IN ('CEO','Owner')  ;

SELECT max(Unit_Price)
FROM products

SELECT AVG(EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM birth_date)) AS avg_age
FROM employees;


SELECT * 
FROM customers
WHERE phone LIKE '%123%'

SELECT *
FROM products
WHERE units_in_stock < 10 AND units_in_stock > 0
-- AND Discontinued = 0

SELECT MAX(Unit_Price)
AS Highest_Price ,
MIN(Unit_Price)
AS Lowest_Price 
FROM products


SELECT *
FROM orders
WHERE order_date >= '05-05-1997'

SELECT Product_ID, units_in_stock
FROM products

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products)

SELECT city, COUNT(Employee_ID)
FROM employees
GROUP BY city


