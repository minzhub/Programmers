SELECT animal_type, COUNT(animal_type) AS count
FROM animal_ins
GROUP BY 1
ORDER BY 1;