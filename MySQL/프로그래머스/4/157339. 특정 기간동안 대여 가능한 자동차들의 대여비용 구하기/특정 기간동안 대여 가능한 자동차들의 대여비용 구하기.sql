WITH month_fee AS (
    SELECT r.car_id, 
           c.car_type, 
           FLOOR(c.daily_fee * 30 * (1 - COALESCE(d.discount_rate, 0) / 100)) AS fee
    FROM car_rental_company_rental_history r 
    JOIN car_rental_company_car c ON r.car_id = c.car_id
    LEFT JOIN car_rental_company_discount_plan d 
           ON c.car_type = d.car_type AND d.duration_type = '30일 이상'
    WHERE c.car_type IN ('세단', 'SUV')
          AND r.start_date < '2022-11-30' 
          AND r.end_date < '2022-11-01'
)

SELECT DISTINCT car_id, car_type, fee
FROM month_fee
WHERE fee >= 500000 AND fee < 2000000
ORDER BY fee DESC, car_type ASC, car_id DESC;