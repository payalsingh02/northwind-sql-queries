SELECT categories.category_name, COUNT(*) AS order_count
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY categories.category_name
ORDER BY order_count DESC
LIMIT 3;
