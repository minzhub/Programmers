-- 코드를 입력하세요
SELECT i.ingredient_type, sum(f.total_order) AS total_order
FROM first_half f INNER JOIN icecream_info i
ON f.flavor = i.flavor
GROUP BY i.ingredient_type
ORDER BY f.total_order