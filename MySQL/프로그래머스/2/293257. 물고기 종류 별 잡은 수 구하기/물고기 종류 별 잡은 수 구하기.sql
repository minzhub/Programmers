SELECT COUNT(fish_name) AS fish_count, fish_name
FROM fish_info f JOIN fish_name_info n
ON f.fish_type = n.fish_type
GROUP BY 2
ORDER BY 1 DESC;