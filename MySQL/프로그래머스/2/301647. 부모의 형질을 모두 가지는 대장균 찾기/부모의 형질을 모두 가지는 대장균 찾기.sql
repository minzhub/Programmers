SELECT e.id, e.genotype, d.genotype AS parent_genotype
FROM ecoli_data e JOIN ecoli_data d
ON e.parent_id = d.id
WHERE e.genotype & d.genotype = d.genotype
ORDER BY 1;