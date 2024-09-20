SELECT warehouse_id, warehouse_name, address, COALESCE(freezer_yn, "N") AS freezer_yn
FROM food_warehouse
WHERE address like '경기도%'
ORDER BY 1;