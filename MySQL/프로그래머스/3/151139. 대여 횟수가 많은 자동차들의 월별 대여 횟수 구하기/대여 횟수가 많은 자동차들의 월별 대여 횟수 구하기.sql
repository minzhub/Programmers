SELECT MONTH(start_date) AS month, r.car_id, COUNT(history_id) AS records
FROM car_rental_company_rental_history r
JOIN (SELECT car_id
      FROM car_rental_company_rental_history
      WHERE LEFT(start_date, 7) BETWEEN '2022-08' AND '2022-10'
      GROUP BY 1
      HAVING COUNT(history_id) >= 5) h
ON r.car_id = h.car_id
WHERE LEFT(start_date, 7) BETWEEN '2022-08' AND '2022-10'
GROUP BY 1, 2
ORDER BY 1, 2 DESC;