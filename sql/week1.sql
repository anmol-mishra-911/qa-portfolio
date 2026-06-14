-- Query 1: Get all customers
SELECT * FROM customers;

-- Query 2: Get only name and city
SELECT name, city FROM customers;

-- Query 3: Get customers from India only
SELECT * FROM customers WHERE country = 'India';

-- Query 4: Sort customers by age youngest to oldest
SELECT name, age FROM customers ORDER BY age ASC;

-- Query 5: Get top 3 youngest customers
SELECT name, age FROM customers ORDER BY age ASC LIMIT 3;

-- Query 6: Get customers older than 29
SELECT name, age FROM customers WHERE age > 29;

-- Query 7: Get customers whose name starts with R
SELECT name, city FROM customers WHERE name LIKE 'R%';

-- Query 8: Get customers whose name ends with r
SELECT name, city FROM customers WHERE name LIKE '%r';

-- Query 9: Get customers aged between 25 and 30
SELECT name, age FROM customers WHERE age BETWEEN 25 AND 30;

-- Query 10: Count customers from India
SELECT COUNT(*) FROM customers WHERE country = 'India';

-- Query 11: Join customers with their orders
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

-- Query 12: Join with WHERE - orders above 10000
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE orders.amount > 10000;

-- Query 13: Join - orders less than 5000
SELECT customers.name, customers.id, orders.product
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE amount < 5000;

-- Query 14: Join - India customers with orders above 1000
SELECT customers.name, orders.product, orders.amount, customers.id
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE amount > 1000 AND country = 'India';

-- Query 15: Count orders placed by customers from India
SELECT COUNT(*)
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE country = 'India';
-- Advanced Query 1: Customer who spent the most
SELECT customers.name, SUM(orders.amount)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name
ORDER BY SUM(orders.amount) DESC
LIMIT 1;

-- Advanced Query 2: Customer with maximum number of orders
SELECT customers.name, COUNT(orders.order_id)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name
ORDER BY COUNT(orders.order_id) DESC
LIMIT 1;

-- Advanced Query 3: Customers having more than one order
SELECT customers.name, COUNT(orders.order_id)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name
HAVING COUNT(orders.order_id) > 1;

-- Advanced Query 4: Customers whose total spending exceeds 30000
SELECT customers.name, SUM(orders.amount)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name
HAVING SUM(orders.amount) > 30000;

-- Advanced Query 5: Products above average price
SELECT DISTINCT product
FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders);

-- Advanced Query 6: Customers older than average age
SELECT customers.name
FROM customers
WHERE age > (SELECT AVG(age) FROM customers);

-- Advanced Query 7: Total spending by each customer
SELECT customers.name, SUM(orders.amount)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name;

-- Advanced Query 8: Average spending by each customer
SELECT customers.name, AVG(orders.amount)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name;

-- Advanced Query 9: Highest order amount by each customer
SELECT customers.name, MAX(orders.amount)
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name;

-- Advanced Query 10: Number of customers in each country
SELECT country, COUNT(customers.id)
FROM customers
GROUP BY country
ORDER BY COUNT(customers.id) DESC;

