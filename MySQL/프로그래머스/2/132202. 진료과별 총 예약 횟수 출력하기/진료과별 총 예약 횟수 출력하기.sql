SELECT mcdp_cd AS 진료과코드, COUNT(*) AS 5월계약건수
FROM appointment
WHERE DATE_FORMAT(apnt_ymd, '%Y-%m') = '2022-05'
GROUP BY 1
ORDER BY 2, 1;