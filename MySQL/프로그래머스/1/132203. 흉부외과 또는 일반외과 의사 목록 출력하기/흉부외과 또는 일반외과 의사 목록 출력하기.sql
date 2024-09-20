SELECT dr_name, dr_id, mcdp_cd, DATE_FORMAT(hire_ymd, '%Y-%m-%d') AS hire_ymd
FROM doctor
WHERE mcdp_cd IN ('CS', 'GS')
ORDER BY 4 DESC, 1 ASC;