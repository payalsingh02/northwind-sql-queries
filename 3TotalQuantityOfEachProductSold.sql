SELECT product_id, SUM(quantity) AS total_quantity
FROM order_details
GROUP BY product_id;
