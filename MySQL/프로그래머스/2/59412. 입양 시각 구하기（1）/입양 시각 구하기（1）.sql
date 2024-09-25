SELECT HOUR(datetime) AS hour, COUNT(*)
FROM animal_outs
GROUP BY 1
HAVING hour>8 AND hour<20
ORDER BY 1;