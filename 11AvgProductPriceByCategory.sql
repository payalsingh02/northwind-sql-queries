SELECT categories.category_name, AVG(products.unit_price) AS average_price
FROM products
INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name;
