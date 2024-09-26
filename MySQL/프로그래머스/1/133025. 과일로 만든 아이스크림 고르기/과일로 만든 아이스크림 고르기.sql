SELECT i.flavor
FROM icecream_info i JOIN (SELECT flavor, total_order
                           FROM first_half
                           WHERE total_order > 3000) f
ON i.flavor = f.flavor
WHERE ingredient_type LIKE 'fruit%'
ORDER BY f.total_order DESC;