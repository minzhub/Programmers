-- 코드를 입력하세요
SELECT mcdp_cd AS '진료과코드', COUNT(*) AS '5월예약건수'
FROM appointment
WHERE LEFT(apnt_ymd, 7) = '2022-05'
GROUP BY mcdp_cd
ORDER BY COUNT(*), mcdp_cd;