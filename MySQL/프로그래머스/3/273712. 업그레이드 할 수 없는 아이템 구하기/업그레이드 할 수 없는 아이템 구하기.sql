-- 코드를 작성해주세요
WITH ug AS (
    SELECT i1.item_id
    FROM item_tree i1 LEFT JOIN item_tree i2
    ON i1.item_id = i2.parent_item_id
    WHERE i2.item_id IS NULL
)

SELECT u.item_id, i.item_name, i.rarity
FROM ug u JOIN item_info i
ON u.item_id = i.item_id
ORDER BY u.item_id DESC;