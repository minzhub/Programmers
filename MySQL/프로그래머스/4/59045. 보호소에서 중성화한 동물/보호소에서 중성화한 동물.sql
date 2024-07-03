-- 코드를 입력하세요
SELECT i.animal_id, i.animal_type, i.name
FROM animal_ins i JOIN (SELECT animal_id
                        FROM animal_outs
                        WHERE sex_upon_outcome NOT LIKE 'Intact%') o
ON i.animal_id = o.animal_id
WHERE sex_upon_intake LIKE 'Intact%'