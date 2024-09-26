SELECT (FLOOR(price / 10000) * 10000) AS price_group, COUNT(*)
FROM product
GROUP BY 1
ORDER BY 1;
