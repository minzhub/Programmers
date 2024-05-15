-- 코드를 입력하세요
SELECT FLOOR(price/10000)*10000 AS price_group, COUNT(*) AS products
FROM product
GROUP BY price_group
ORDER BY price_group

-- 코드를 입력하세요
SELECT TRUNCATE(price, -LENGTH(price)+1) AS price_group, COUNT(*) AS products
FROM product
GROUP BY price_group
ORDER BY price_group
