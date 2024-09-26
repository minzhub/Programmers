SELECT category, price, product_name
FROM (SELECT category, price, product_name,
             RANK() OVER (partition by category ORDER BY price DESC) rnk
      FROM food_product
      WHERE category IN ('과자', '국', '김치', '식용유')) ranking
WHERE rnk = 1
ORDER BY 2 DESC;