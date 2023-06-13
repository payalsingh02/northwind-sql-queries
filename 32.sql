SELECT employees.*
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
WHERE orders.order_id IS NULL;
