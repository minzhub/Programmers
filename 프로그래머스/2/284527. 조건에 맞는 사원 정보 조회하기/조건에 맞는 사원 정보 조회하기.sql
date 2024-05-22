-- 코드를 작성해주세요
WITH grade AS(
    SELECT emp_no, year, SUM(score) score
    FROM HR_GRADE
    GROUP BY 1, 2
    ORDER BY 3 DESC
    LIMIT 1)

SELECT grade.score, grade.emp_no, h.emp_name, h.position, h.email
FROM grade INNER JOIN hr_employees h USING (emp_no)