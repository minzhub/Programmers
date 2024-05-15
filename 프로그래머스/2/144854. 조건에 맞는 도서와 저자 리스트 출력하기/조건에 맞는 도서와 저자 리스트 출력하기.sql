-- 코드를 입력하세요
SELECT book.book_id, author.author_name, DATE_FORMAT(book.published_date, '%Y-%m-%d') AS PUBLISHED_DATE
FROM book INNER JOIN author
ON book.author_id = author.author_id
WHERE book.category = '경제'
ORDER BY published_date