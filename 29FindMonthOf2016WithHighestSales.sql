SELECT MONTH(order_date) AS month, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)
ORDER BY total_sales DESC
LIMIT 1;
