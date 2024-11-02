SELECT CASE
           WHEN GROUP_CONCAT(s.name) LIKE '%Python%'
                AND GROUP_CONCAT(DISTINCT s.category) LIKE '%Front End%' THEN 'A'
           WHEN GROUP_CONCAT(s.name) LIKE '%C#%' THEN 'B'
           WHEN GROUP_CONCAT(DISTINCT s.category) LIKE '%Front End%' THEN 'C'
       END AS grade, d.id, d.email
FROM developers d JOIN skillcodes s
ON d.skill_code & s.code = s.code
GROUP BY d.id, d.email
HAVING grade IS NOT NULL
ORDER BY 1, 2;