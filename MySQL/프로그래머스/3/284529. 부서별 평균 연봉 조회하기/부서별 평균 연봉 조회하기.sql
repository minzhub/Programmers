SELECT d.dept_id, d.dept_name_en, ROUND(AVG(sal)) AS avg_sal
FROM hr_department d JOIN hr_employees e
ON d.dept_id = e.dept_id
GROUP BY 1
ORDER BY 3 DESC;