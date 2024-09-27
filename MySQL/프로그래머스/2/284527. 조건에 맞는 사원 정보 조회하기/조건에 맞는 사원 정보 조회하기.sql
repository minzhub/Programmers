SELECT SUM(score) AS score, g.emp_no, e.emp_name, e.position, e.email
FROM hr_grade g JOIN hr_employees e
ON g.emp_no = e.emp_no
GROUP BY 2
ORDER BY 1 DESC
LIMIT 1;