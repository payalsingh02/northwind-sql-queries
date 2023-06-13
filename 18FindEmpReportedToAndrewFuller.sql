SELECT employees.*
FROM employees
INNER JOIN employees AS manager ON employees.reports_to = manager.employee_id
WHERE manager.last_name = 'Fuller' AND manager.first_name = 'Andrew';
