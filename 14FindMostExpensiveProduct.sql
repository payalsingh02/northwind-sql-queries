SELECT categories.category_name, products.product_name, products.unit_price
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
WHERE products.unit_price = (
  SELECT MAX(unit_price)
  FROM products AS p
  WHERE p.category_id = products.category_id
);
