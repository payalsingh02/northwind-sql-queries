SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, SUM(order_details.quantity * products.unit_price) AS total_revenue
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY employees.employee_id;
