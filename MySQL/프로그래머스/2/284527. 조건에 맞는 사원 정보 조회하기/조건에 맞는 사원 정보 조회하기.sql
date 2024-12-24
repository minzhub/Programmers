-- 코드를 작성해주세요
WITH grade AS (
    SELECT emp_no, SUM(score) AS score
    FROM hr_grade
    GROUP BY emp_no
    ORDER BY score DESC
    LIMIT 1
)

SELECT g.score, g.emp_no, e.emp_name, e.position, e.email
FROM grade g JOIN hr_employees e
ON g.emp_no = e.emp_no;