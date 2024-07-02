-- 코드를 입력하세요
SELECT o.animal_id ANIMAL_ID, o.name NAME
FROM animal_outs o JOIN animal_ins i
ON o.animal_id = i.animal_id
ORDER BY DATEDIFF(o.datetime, i.datetime) DESC
LIMIT 2;