WITH truck AS (
    SELECT rh.history_id, cc.car_type, cc.daily_fee,
           DATEDIFF(rh.end_date, rh.start_date)+1 AS day
    FROM car_rental_company_car cc JOIN car_rental_company_rental_history rh
    ON cc.car_id = rh.car_id
    WHERE car_type = '트럭'
), dur AS (
    SELECT history_id, daily_fee, day,
           CASE
               WHEN day BETWEEN 1 AND 6 THEN '없음'
               WHEN day BETWEEN 7 AND 29 THEN '7일 이상'
               WHEN day BETWEEN 30 AND 89 THEN '30일 이상'
               ELSE '90일 이상'
           END AS duration_type
    FROM truck)

SELECT d.history_id,
       ROUND(d.daily_fee * d.day * COALESCE(1-(p.discount_rate/100), 1)) AS fee
FROM dur d LEFT JOIN (SELECT duration_type, discount_rate
                      FROM car_rental_company_discount_plan
                      WHERE car_type = '트럭') p
ON d.duration_type = p.duration_type
ORDER BY fee DESC, d.history_id DESC;    