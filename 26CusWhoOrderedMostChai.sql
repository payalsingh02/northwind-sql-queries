SELECT customers.*, SUM(order_details.quantity) AS total_chai_ordered
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai'
GROUP BY customers.customer_id
ORDER BY total_chai_ordered DESC
LIMIT 1;
