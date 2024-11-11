SELECT food_type, rest_id, rest_name, favorites
FROM (SELECT food_type, rest_id, rest_name, favorites,
             RANK() OVER (PARTITION BY food_type ORDER BY favorites DESC) AS rnk
      FROM rest_info) r
WHERE rnk = 1
ORDER BY food_type DESC;