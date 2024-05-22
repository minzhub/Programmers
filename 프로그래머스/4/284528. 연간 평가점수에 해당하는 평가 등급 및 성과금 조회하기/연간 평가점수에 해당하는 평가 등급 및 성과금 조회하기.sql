-- 등급과 성과금 정보 추출
WITH G AS (SELECT emp_no, CASE
    WHEN avg(score) >= 96 THEN 'S'
    WHEN avg(score) >= 90 THEN 'A'
    WHEN avg(score) >= 80 THEN 'B'
    ELSE 'C'
    END AS grade
FROM hr_grade
GROUP BY 1)

-- 사번, 성명, 평가 등급, 성과금 조회
SELECT H.emp_no, H.emp_name, G.grade, CASE
    WHEN grade = 'S' THEN H.sal*0.2
    WHEN grade = 'A' THEN H.sal*0.15
    WHEN grade = 'B' THEN H.sal*0.1
    ELSE 0
    END AS bonus
FROM hr_employees H INNER JOIN G USING (emp_no)
GROUP BY 1
ORDER BY 1