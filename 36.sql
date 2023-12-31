SELECT customers.customer_id, CONCAT(customers.contact_name, ' (', customers.company_name, ')') AS customer_name,
  SUM(order_details.quantity * products.unit_price) AS total_order_amount,
  CASE
    WHEN SUM(order_details.quantity * products.unit_price) > 5000 THEN 'High Value'
    WHEN SUM(order_details.quantity * products.unit_price) > 1000 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS classification
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY customers.customer_id, customers.contact_name, customers.company_name;
