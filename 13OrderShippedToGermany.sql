SELECT orders.*
FROM orders
INNER JOIN shippers ON orders.ship_via = shippers.shipper_id
WHERE shippers.country = 'Germany';
