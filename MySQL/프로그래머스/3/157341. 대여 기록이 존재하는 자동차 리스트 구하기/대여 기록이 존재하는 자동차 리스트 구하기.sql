SELECT DISTINCT h.car_id
FROM car_rental_company_rental_history h JOIN (SELECT car_id
                                               FROM car_rental_company_car c
                                               WHERE car_type = '세단') c
ON h.car_id = c.car_id
WHERE MONTH(h.start_date) = '10'
ORDER BY 1 DESC;