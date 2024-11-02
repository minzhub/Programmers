WITH RECURSIVE wr AS(
    SELECT id, parent_id, 1 AS gen
    FROM ecoli_data
    WHERE parent_id IS NULL
    UNION ALL
    SELECT e.id, e.parent_id, gen+1 AS gen
    FROM ecoli_data e JOIN wr w
    ON e.parent_id = w.id
),
notson AS (    
    SELECT w.id, w.gen
    FROM wr w LEFT JOIN ecoli_data e
    ON w.id = e.parent_id
    WHERE e.id IS NULL
)

SELECT COUNT(id) AS count, gen AS generation
FROM notson
GROUP BY 2
ORDER BY 2;