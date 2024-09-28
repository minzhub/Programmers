SELECT h.flavor
FROM first_half h JOIN (SELECT flavor, SUM(total_order) tto
                        FROM july
                        GROUP BY 1) j
ON h.flavor = j.flavor
ORDER BY h.total_order + j.tto DESC
LIMIT 3;