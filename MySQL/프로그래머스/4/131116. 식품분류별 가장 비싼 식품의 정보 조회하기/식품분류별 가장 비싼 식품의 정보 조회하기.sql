-- 코드를 입력하세요
SELECT category, price, product_name
FROM (SELECT category, price, product_name,
             RANK() OVER (PARTITION BY category ORDER BY price DESC) ranking
      FROM food_product
      WHERE category IN ('과자', '국', '김치', '식용유')) f
WHERE ranking = 1
ORDER BY 2 DESC;