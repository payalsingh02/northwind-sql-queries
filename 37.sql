SELECT products.product_id, products.product_name, SUM(order_details.quantity) AS total_quantity,
  CASE
    WHEN SUM(order_details.quantity) > 1000 THEN 'High Sales'
    WHEN SUM(order_details.quantity) > 500 THEN 'Medium Sales'
    ELSE 'Lower Sales'
  END AS sales_category
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name;
