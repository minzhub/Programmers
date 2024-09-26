SELECT i.food_type, i.rest_id, i.rest_name, i.favorites
FROM rest_info i JOIN (SELECT rest_id, RANK() OVER(PARTITION BY food_type ORDER BY favorites DESC) rnk
FROM rest_info) r
ON i.rest_id = r.rest_id
WHERE r.rnk = 1
ORDER BY 1 DESC;