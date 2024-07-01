-- 코드를 입력하세요
SELECT NAME, DATETIME
FROM animal_ins
WHERE animal_id NOT IN (SELECT animal_id
                        FROM animal_outs)
ORDER BY 2
LIMIT 3;