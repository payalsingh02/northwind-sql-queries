SELECT customers.customer_id, CONCAT(customers.contact_name, ' (', customers.company_name, ')') AS customer_name
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY customers.customer_id, customers.contact_name, customers.company_name
HAVING COUNT(DISTINCT products.category_id) = (SELECT COUNT(*) FROM categories);
