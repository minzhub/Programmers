SELECT r1.food_type, rest_id, rest_name, favorites
FROM rest_info r1 JOIN (SELECT food_type, MAX(favorites) AS mx
                        FROM rest_info
                        GROUP BY food_type) r2
ON r1.food_type = r2.food_type
   AND r1.favorites = r2.mx
ORDER BY food_type DESC;