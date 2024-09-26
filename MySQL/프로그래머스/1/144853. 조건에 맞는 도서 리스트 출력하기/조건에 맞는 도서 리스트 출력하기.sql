SELECT book_id, DATE_FORMAT(published_date, '%Y-%m-%d') AS published_date
FROM book
WHERE YEAR(published_date) = '2021' AND CATEGORY = '인문'
ORDER BY 2;