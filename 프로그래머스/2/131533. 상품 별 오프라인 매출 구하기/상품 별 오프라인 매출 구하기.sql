-- 코드를 입력하세요
SELECT product.product_code, product.price * amount.sa AS SALES
FROM product INNER JOIN (
                    SELECT product_id, SUM(sales_amount) AS sa
                    FROM offline_sale
                    GROUP BY product_id) AS amount
ON product.product_id = amount.product_id
GROUP BY product.product_code
ORDER BY product.price * amount.sa DESC, product.product_code