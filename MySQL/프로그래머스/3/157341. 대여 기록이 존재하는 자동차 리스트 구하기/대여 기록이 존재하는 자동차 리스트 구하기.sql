-- 코드를 입력하세요
SELECT DISTINCT c.car_id CAR_ID
FROM car_rental_company_car c JOIN (SELECT car_id
                                    FROM car_rental_company_rental_history
                                    WHERE MONTH(start_date) = '10') h
ON c.car_id = h.car_id
WHERE car_type = '세단'
ORDER BY 1 DESC;