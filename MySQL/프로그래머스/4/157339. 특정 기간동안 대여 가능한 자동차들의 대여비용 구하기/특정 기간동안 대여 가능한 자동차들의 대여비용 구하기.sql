SELECT cc.car_id, cc.car_type, FLOOR(daily_fee * 30 * (1 - discount_rate / 100)) AS fee
FROM car_rental_company_car cc
LEFT JOIN car_rental_company_rental_history rh
ON cc.car_id = rh.car_id AND start_date <= '2022-11-30' AND end_date >= '2022-11-01'
JOIN car_rental_company_discount_plan dp
ON cc.car_type = dp.car_type
AND duration_type = '30일 이상'
WHERE cc.car_type IN ('세단', 'SUV')
      AND history_id IS NULL
GROUP BY 1
HAVING fee >= 500000 AND fee < 2000000
ORDER BY 3 DESC, 2, 1 DESC;