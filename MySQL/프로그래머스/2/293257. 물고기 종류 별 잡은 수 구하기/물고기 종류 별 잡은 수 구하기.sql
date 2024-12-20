-- 코드를 작성해주세요
WITH fish AS (
    SELECT fish_type, COUNT(*) AS fish_count
    FROM fish_info
    GROUP BY fish_type
)

SELECT f.fish_count, i.fish_name
FROM fish f LEFT JOIN fish_name_info i
ON f.fish_type = i.fish_type
ORDER BY f.fish_count DESC;