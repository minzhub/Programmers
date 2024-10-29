SELECT id,
       CASE
           WHEN tile = 1 THEN 'CRITICAL'
           WHEN tile = 2 THEN 'HIGH'
           WHEN tile = 3 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS colony_name
FROM (
    SELECT id, 
           NTILE(4) OVER (ORDER BY size_of_colony DESC) AS tile
    FROM ecoli_data
) AS ranked_ecoli
ORDER BY id;