SELECT id, email, first_name, last_name
FROM developers
WHERE (skill_code & 256) = 256
      OR (skill_code & 1024) = 1024
ORDER BY 1;