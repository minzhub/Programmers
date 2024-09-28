SELECT YEAR(sales_date) AS year, MONTH(sales_date) AS month, u.gender,
       COUNT(DISTINCT u.user_id) AS users
FROM online_sale s JOIN (SELECT user_id, gender
                         FROM user_info
                         WHERE gender IS NOT NULL) u
ON s.user_id = u.user_id
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3;