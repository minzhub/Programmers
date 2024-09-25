SELECT b.category, sum(s.sales) AS total_sales
FROM book b JOIN book_sales s
ON b.book_id = s.book_id
WHERE LEFT(sales_date, 7) = '2022-01'
GROUP BY 1
ORDER BY 1;