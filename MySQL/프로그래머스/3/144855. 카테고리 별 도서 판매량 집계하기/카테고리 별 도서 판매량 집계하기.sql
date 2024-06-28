-- 코드를 입력하세요
SELECT b.category, sum(bs.sales) total_sales
FROM book_sales bs INNER JOIN book b
ON bs.book_id = b.book_id
WHERE DATE_FORMAT(bs.sales_date, "%Y-%m") = "2022-01"
GROUP BY 1
ORDER BY 1