SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name,
  COUNT(orders.order_id) AS number_of_orders,
  CASE
    WHEN COUNT(orders.order_id) > 100 THEN 'High Performing'
    WHEN COUNT(orders.order_id) > 50 THEN 'Medium Performing'
    ELSE 'Lower Performing'
  END AS performance_category
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id, employee_name;Classify products based on their sales volume such that TotalQuantity > 1000 is classified as 'High Sales'. If TotalQuantity > 500, it is classified as 'Medium Sales', and for all other cases, it is classified as 'Lower Sales':

SELECT products.product_id, products.product_name, SUM(order_details.quantity) AS total_quantity,
  CASE
    WHEN SUM(order_details.quantity) > 1000 THEN 'High Sales'
    WHEN SUM(order_details.quantity) > 500 THEN 'Medium Sales'
    ELSE 'Lower Sales'
  END AS sales_category
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name;
