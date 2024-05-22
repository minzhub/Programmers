-- 가장 평가 점수가 높은 사원의 사번과 점수 추출
WITH grade AS(
    SELECT emp_no, year, SUM(score) score
    FROM HR_GRADE
    GROUP BY 1, 2
    ORDER BY 3 DESC
    LIMIT 1)

-- 평가 점수가 높은 사원의 사번, 성명, 직책, 이메일 조회
SELECT grade.score, grade.emp_no, h.emp_name, h.position, h.email
FROM grade INNER JOIN hr_employees h USING (emp_no)