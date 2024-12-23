-- 코드를 작성해주세요
SELECT ROUND(AVG(length), 2) AS average_length
FROM (SELECT COALESCE(length, 10) AS length
      FROM fish_info) f;