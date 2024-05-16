-- 코드를 작성해주세요
SELECT count(*) AS fish_count, fish_name
FROM fish_name_info n INNER JOIN fish_info i
ON n.fish_type = i.fish_type
GROUP BY fish_name
ORDER BY fish_count DESC