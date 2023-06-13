SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, COUNT(orders.order_id) AS total_orders
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id;
