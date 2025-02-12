WITH rnk AS (
    SELECT id, NTILE(4) OVER (ORDER BY size_of_colony DESC) rnk_size
    FROM ecoli_data
)

SELECT id, CASE rnk_size
               WHEN 1 THEN 'CRITICAL'
               WHEN 2 THEN 'HIGH'
               WHEN 3 THEN 'MEDIUM'
               ELSE 'LOW'
           END AS colony_name
FROM rnk
ORDER BY id;