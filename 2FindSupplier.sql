SELECT DISTINCT suppliers.*
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN categories ON products.category_id = categories.category_id
WHERE categories.category_name = 'Seafood';
