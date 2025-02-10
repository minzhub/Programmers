-- 코드를 작성해주세요
WITH RECURSIVE class AS (
    SELECT id, parent_id, 1 AS gen
    FROM ecoli_data
    WHERE parent_id IS NULL
    UNION ALL
    SELECT e.id, e.parent_id, gen+1 AS gen
    FROM ecoli_data e JOIN class c
    ON e.parent_id = c.id
)

SELECT id
FROM class
WHERE gen = 3
ORDER BY id;