SELECT i.ingredient_type, SUM(f.total_order) AS total_order
FROM first_half f JOIN icecream_info i
ON f.flavor = i.flavor
GROUP BY 1
ORDER BY 2;