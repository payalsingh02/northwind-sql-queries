SELECT customers.customer_id, CONCAT(customers.contact_name, ' (', customers.company_name, ')') AS customer_name, COUNT(order_details.product_id) AS total_products_ordered
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id
ORDER BY total_products_ordered DESC
LIMIT 3;
