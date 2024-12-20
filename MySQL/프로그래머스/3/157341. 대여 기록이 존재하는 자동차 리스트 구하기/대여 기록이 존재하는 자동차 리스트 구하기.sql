-- 코드를 입력하세요
SELECT DISTINCT c.car_id
FROM car_rental_company_car c JOIN car_rental_company_rental_history h
ON c.car_id = h.car_id
WHERE c.car_type = '세단'
      AND MONTH(h.start_date) = '10'
ORDER BY c.car_id DESC;