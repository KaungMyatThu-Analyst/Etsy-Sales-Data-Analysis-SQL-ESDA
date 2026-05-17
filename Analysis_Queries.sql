SELECT SUM(s.quantity * p.price_usd) AS total_revenue_usd
FROM sales s
JOIN products p ON s.product_id = p.product_id;

SELECT p.product_name,COUNT(s.sale_id) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;
SELECT c.country,COUNT(s.sale_id) AS total_orders,SUM(s.quantity * p.price_usd) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
WHERE c.country = 'USA'
GROUP BY c.country;

SELECT c.country,SUM(s.quantity * p.price_usd) AS revenue_by_country
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.country
ORDER BY revenue_by_country DESC;

SELECT c.country,p.product_name,SUM(s.quantity) AS units_sold 
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.country, p.product_name 
ORDER BY c.country, units_sold DESC;

SELECT c.customer_name,c.email,COUNT(s.sale_id) AS order_count
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id,c.customer_name,c.email
HAVING COUNT(s.sale_id) > 1
ORDER BY order_count DESC;
