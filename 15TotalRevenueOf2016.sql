SELECT SUM(order_details.quantity * products.unit_price) AS total_revenue
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
INNER JOIN orders ON order_details.order_id = orders.order_id
WHERE YEAR(orders.order_date) = 2016;
