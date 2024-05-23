-- 코드를 작성해주세요
SELECT CASE
    WHEN MONTH(differentiation_date) BETWEEN 1 AND 3 THEN '1Q'
    WHEN MONTH(differentiation_date) BETWEEN 4 AND 6 THEN '2Q'
    WHEN MONTH(differentiation_date) BETWEEN 7 AND 9 THEN '3Q'
    ELSE '4Q'
    END AS QUARTER, COUNT(id) AS ecoli_count
FROM ecoli_data
GROUP BY 1
ORDER BY 1