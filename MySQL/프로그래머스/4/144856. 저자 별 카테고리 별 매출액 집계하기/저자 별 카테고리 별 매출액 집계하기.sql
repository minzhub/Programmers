SELECT b.author_id, author_name, category, SUM(price*amt) AS total_sales
FROM book b
JOIN (SELECT book_id, SUM(sales) AS amt
      FROM book_sales
      WHERE LEFT(sales_date, 7) = '2022-01'
      GROUP BY 1) s
ON b.book_id = s.book_id
JOIN author a
WHERE b.author_id = a.author_id
GROUP BY 1, 3
ORDER BY 1, 3 DESC;