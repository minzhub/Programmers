WITH max_size AS (
    SELECT YEAR(differentiation_date) AS year, MAX(size_of_colony) AS mx
    FROM ecoli_data
    GROUP BY 1
)

SELECT m.year, (m.mx - e.size_of_colony) AS year_dev, e.id
FROM ecoli_data e JOIN max_size m
ON YEAR(e.differentiation_date) = m.year
ORDER BY 1, 2;