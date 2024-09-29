SELECT e.id, COUNT(d.parent_id) AS child_count
FROM ecoli_data e LEFT JOIN ecoli_data d
ON e.id = d.parent_id
GROUP BY 1
ORDER BY 1;