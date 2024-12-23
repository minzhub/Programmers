-- 코드를 작성해주세요
SELECT e.dept_id, d.dept_name_en, ROUND(AVG(e.sal)) AS avg_sal
FROM hr_department d JOIN hr_employees e
ON d.dept_id = e.dept_id
GROUP BY e.dept_id
ORDER BY avg_sal DESC;