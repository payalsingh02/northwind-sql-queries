SELECT YEAR(order_date) AS order_year, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY YEAR(order_date);
