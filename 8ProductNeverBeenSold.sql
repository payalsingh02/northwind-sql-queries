SELECT products.*
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id
WHERE order_details.product_id IS NULL;
