SELECT COUNT(id) AS fish_count, MAX(COALESCE(length, 10)) AS max_length, fish_type
FROM fish_info
GROUP BY 3
HAVING AVG(COALESCE(length, 10)) >= 33
ORDER BY 3;