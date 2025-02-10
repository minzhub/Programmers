-- 코드를 입력하세요
WITH RECURSIVE time AS (
    SELECT 0 hour
    UNION ALL
    SELECT hour+1 AS hour
    FROM time
    WHERE hour < 23
)

SELECT t.hour, COUNT(a.animal_id) AS count
FROM time t LEFT JOIN animal_outs a
ON t.hour = HOUR(a.datetime)
GROUP BY t.hour
ORDER BY t.hour;