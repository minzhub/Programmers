SELECT r.id, i.fish_name, r.length
FROM fish_name_info i
JOIN (SELECT id, fish_type, length,
             RANK() OVER (PARTITION BY fish_type ORDER BY length DESC) AS rnk
      FROM fish_info) r
ON i.fish_type = r.fish_type
WHERE rnk = 1
ORDER BY 1;