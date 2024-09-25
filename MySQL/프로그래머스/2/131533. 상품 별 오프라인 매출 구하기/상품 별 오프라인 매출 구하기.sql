SELECT p.product_code, SUM(price*sales_amount) AS sales
FROM product p JOIN offline_sale o
ON p.product_id = o.product_id
GROUP BY product_code
ORDER BY 2 DESC, 1;