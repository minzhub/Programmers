-- 코드를 작성해주세요
SELECT COUNT(*) AS fish_count, MAX(length) AS max_length, fish_type
FROM fish_info
WHERE fish_type IN (SELECT fish_type
                    FROM fish_info
                    GROUP BY fish_type
                    HAVING AVG(COALESCE(length, 10)) >= 33)
GROUP BY fish_type
ORDER BY fish_type;