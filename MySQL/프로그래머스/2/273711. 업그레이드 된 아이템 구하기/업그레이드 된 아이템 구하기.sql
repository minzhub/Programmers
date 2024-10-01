SELECT i.item_id, i.item_name, rarity
FROM item_info i JOIN item_tree t
ON i.item_id = t.item_id
WHERE parent_item_id IN (SELECT item_id
                         FROM item_info
                         WHERE rarity = 'RARE')
ORDER BY 1 DESC;