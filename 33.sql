SELECT suppliers.supplier_id, suppliers.company_name, COUNT(order_details.product_id) AS total_sold_products
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY suppliers.supplier_id, suppliers.company_name
ORDER BY total_sold_products DESC
LIMIT 5;
