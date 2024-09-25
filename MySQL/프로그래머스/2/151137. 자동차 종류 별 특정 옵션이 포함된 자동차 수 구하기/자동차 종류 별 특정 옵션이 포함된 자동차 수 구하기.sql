SELECT CAR_TYPE, COUNT(*) AS cars
FROM car_rental_company_car
WHERE options LIKE '%시트%'
GROUP BY 1
ORDER BY 1;