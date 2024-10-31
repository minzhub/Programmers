SELECT YEAR(sales_date) AS year, MONTH(sales_date) AS month,
       COUNT(DISTINCT o.user_id) AS purchased_users,
       ROUND((COUNT(DISTINCT o.user_id) / (SELECT COUNT(*) FROM user_info WHERE YEAR(joined) = '2021')), 1) AS puchased_ratio
FROM user_info u JOIN online_sale o
ON u.user_id = o.user_id
WHERE YEAR(joined) = '2021'
GROUP BY year, month
ORDER BY year, month;