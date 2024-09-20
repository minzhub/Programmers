SELECT animal_id, name
FROM animal_ins
WHERE (animal_type LIKE 'D%') AND (name LIKE '%el%')
ORDER BY 2;