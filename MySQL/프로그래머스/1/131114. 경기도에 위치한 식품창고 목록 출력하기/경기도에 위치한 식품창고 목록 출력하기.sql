-- 코드를 입력하세요
SELECT warehouse_id, warehouse_name, address, COALESCE(freezer_yn, 'N') AS freezer_yn
FROM food_warehouse
WHERE ADDRESS LIKE '경기도%'
ORDER BY warehouse_id;