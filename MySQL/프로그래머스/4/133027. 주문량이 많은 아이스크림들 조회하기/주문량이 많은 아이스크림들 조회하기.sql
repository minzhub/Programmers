-- 코드를 입력하세요
WITH a AS (
    SELECT *
    FROM first_half
    UNION ALL
    SELECT *
    FROM july
)

SELECT flavor
FROM a
GROUP BY flavor
ORDER BY SUM(total_order) DESC
LIMIT 3