WITH duration AS (
    SELECT r.history_id,
           (DATEDIFF(r.end_date, r.start_date) + 1) AS days,
           c.daily_fee,
           CASE
               WHEN (DATEDIFF(r.end_date, r.start_date) + 1) >= 90 THEN '90일 이상'
               WHEN (DATEDIFF(r.end_date, r.start_date) + 1) >= 30 THEN '30일 이상'
               WHEN (DATEDIFF(r.end_date, r.start_date) + 1) >= 7 THEN '7일 이상'
               ELSE '할인없음'
           END AS dur
    FROM car_rental_company_rental_history r
    JOIN car_rental_company_car c ON r.car_id = c.car_id
    WHERE c.car_type = '트럭'
)

SELECT d.history_id,
       ROUND(d.daily_fee * d.days * (1 - COALESCE(p.discount_rate, 0) / 100)) AS fee
FROM duration d
LEFT JOIN car_rental_company_discount_plan p
ON d.dur = p.duration_type AND p.car_type = '트럭'
ORDER BY fee DESC, d.history_id DESC;