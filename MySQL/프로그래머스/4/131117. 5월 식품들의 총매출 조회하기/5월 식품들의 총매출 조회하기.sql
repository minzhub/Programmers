-- 코드를 입력하세요
SELECT p.product_id, p.product_name, SUM(p.price*o.amount) TOTAL_SALES
FROM food_product p JOIN (SELECT product_id, amount
                          FROM food_order
                          WHERE DATE_FORMAT(produce_date, '%Y-%m') = '2022-05') o
ON p.product_id = o.product_id
GROUP BY 1
ORDER BY 3 DESC, 1;