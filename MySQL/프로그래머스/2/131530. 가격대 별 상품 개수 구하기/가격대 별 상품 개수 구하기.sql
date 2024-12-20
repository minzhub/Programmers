-- 코드를 입력하세요
SELECT TRUNCATE(price, -4) AS price_group,
       COUNT(*) AS products
FROM product
GROUP BY price_group
ORDER BY price_group;