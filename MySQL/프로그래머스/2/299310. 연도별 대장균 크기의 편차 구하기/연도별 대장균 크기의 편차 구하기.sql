SELECT YEAR(differentiation_date) YEAR,
       (MAX(size_of_colony) OVER (PARTITION BY YEAR(differentiation_date)) - size_of_colony) YEAR_DEV, id
FROM ecoli_data
ORDER BY 1, 2