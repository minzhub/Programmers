-- 코드를 입력하세요
WITH rental_status AS (
    SELECT car_id,
           CASE
               WHEN '2022-10-16' BETWEEN start_date AND end_date THEN '대여중'
               ELSE '대여 가능'
           END AS availability
    FROM car_rental_company_rental_history
)
SELECT car_id,
       MAX(availability) AS availability -- '대여중'이 '대여가능'보다 우선순위가 높음
FROM rental_status
GROUP BY car_id
ORDER BY car_id DESC;