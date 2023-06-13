SELECT orders.*, customers.*, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN employees ON orders.employee_id = employees.employee_id;
