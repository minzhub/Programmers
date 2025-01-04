-- 코드를 작성해주세요
WITH gr AS (
    SELECT emp_no,
           CASE
               WHEN AVG(score) >= 96 THEN 'S'
               WHEN AVG(score) >= 90 THEN 'A'
               WHEN AVG(score) >= 80 THEN 'B'
               ELSE 'C'
           END AS grade
    FROM hr_grade
    GROUP BY emp_no
)

SELECT g.emp_no, h.emp_name, g.grade,
       CASE g.grade
           WHEN 'S' THEN h.sal * 0.2
           WHEN 'A' THEN h.sal * 0.15
           WHEN 'B' THEN h.sal * 0.1
           ELSE 0
       END AS bonus
FROM gr g JOIN hr_employees h
ON g.emp_no = h.emp_no
ORDER BY g.emp_no;