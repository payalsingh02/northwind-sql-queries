SELECT orders.*, SUM(order_details.quantity * products.unit_price) AS total_cost
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY orders.order_id
ORDER BY total_cost DESC
LIMIT 1;
