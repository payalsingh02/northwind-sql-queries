SELECT categories.category_name, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name;
