SELECT ED1.id, ED1.genotype, ED2.genotype AS PARENT_GENOTYPE
FROM ecoli_data ED1 LEFT JOIN ecoli_data AS ED2
ON ED1.parent_id = ED2.id
WHERE ED1.genotype & ED2.genotype = ED2.genotype
ORDER BY 1