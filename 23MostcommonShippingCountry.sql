SELECT ship_country, COUNT(*) AS count
FROM orders
GROUP BY ship_country
ORDER BY count DESC
LIMIT 1;
