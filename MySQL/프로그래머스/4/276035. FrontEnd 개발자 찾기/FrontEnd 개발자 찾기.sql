SELECT id, email, first_name, last_name
FROM developers d
WHERE skill_code & (SELECT SUM(code)
                    FROM skillcodes
                    WHERE category = 'Front End')
ORDER BY 1;