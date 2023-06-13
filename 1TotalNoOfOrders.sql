SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
