SELECT employees.*
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai';
