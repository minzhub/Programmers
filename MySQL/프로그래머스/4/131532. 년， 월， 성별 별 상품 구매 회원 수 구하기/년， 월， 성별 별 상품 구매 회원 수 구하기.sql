-- 코드를 입력하세요
SELECT YEAR(sales_date) AS year, MONTH(sales_date) AS month, gender, COUNT(DISTINCT o.user_id) AS users
FROM user_info u JOIN online_sale o
ON u.user_id = o.user_id
WHERE u.gender IS NOT NULL
GROUP BY year, month, gender
ORDER BY year, month, gender;