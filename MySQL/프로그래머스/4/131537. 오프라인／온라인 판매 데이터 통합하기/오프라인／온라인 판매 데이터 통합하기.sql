SELECT sales_date, product_id, user_id, sales_amount
FROM (SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') AS sales_date,
             product_id, user_id, sales_amount
      FROM online_sale
      UNION
      SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') AS sales_date,
             product_id, NULL as user_id, sales_amount
      FROM offline_sale) combined
WHERE LEFT(sales_date, 7) = '2022-03'
ORDER BY 1, 2, 3;