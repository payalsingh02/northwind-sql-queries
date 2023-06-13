SELECT order_id, AVG(quantity) AS average_quantity
FROM order_details
GROUP BY order_id;
