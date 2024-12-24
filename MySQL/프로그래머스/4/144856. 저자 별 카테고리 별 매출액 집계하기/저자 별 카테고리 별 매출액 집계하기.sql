-- 코드를 입력하세요
SELECT b.author_id, a.author_name, b.category, SUM(b.price * s.sales) AS sales
FROM book b
JOIN author a ON b.author_id = a.author_id
JOIN book_sales s ON b.book_id = s.book_id
WHERE s.sales_date LIKE '2022-01%'
GROUP BY b.author_id, b.category
ORDER BY b.author_id, b.category DESC;