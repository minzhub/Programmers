-- 코드를 작성해주세요
SELECT COUNT(*) AS fish_count, MONTH(time) as month
FROM fish_info
GROUP BY month(time)
ORDER BY 2