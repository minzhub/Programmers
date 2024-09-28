SELECT i.id, length
FROM fish_info i JOIN (SELECT id
                       FROM fish_info
                       ORDER BY length DESC
                       LIMIT 10) f
ON i.id = f.id
ORDER BY 2 DESC, 1;