SELECT i.item_id, i.item_name
FROM item_info i JOIN item_tree t
ON i.item_id = t.item_id
WHERE parent_item_id IS NULL
ORDER BY 1;