SELECT products.*, SUM(order_details.quantity) AS total_sold
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id
ORDER BY total_sold DESC
LIMIT 5;
