-- 코드를 작성해주세요
SELECT i.item_id, i.item_name
FROM item_info i INNER JOIN item_tree t USING (item_id)
WHERE parent_item_id IS NULL
ORDER BY i.item_id