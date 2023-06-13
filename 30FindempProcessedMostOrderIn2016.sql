SELECT employees.*, COUNT(orders.order_id) AS total_orders
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
WHERE YEAR(orders.order_date) = 2016 AND MONTH(orders.order_date) = 8
GROUP BY employees.employee_id
ORDER BY total_orders DESC
LIMIT 1;
