-- 코드를 입력하세요
SELECT cart_id
FROM (SELECT cart_id, GROUP_CONCAT(name) AS names
      FROM cart_products
      GROUP BY cart_id) c
WHERE names LIKE '%Milk%'
      AND names LIKE '%Yogurt%'
ORDER BY cart_id;